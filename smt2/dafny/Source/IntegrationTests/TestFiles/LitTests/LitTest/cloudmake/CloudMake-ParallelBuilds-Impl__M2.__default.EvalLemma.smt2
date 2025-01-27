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
(declare-fun Tagclass.M2.State () T@U)
(declare-fun Tagclass.M2.WFCertificate () T@U)
(declare-fun Tagclass.M2.Tuple () T@U)
(declare-fun Tagclass.M2.Expression () T@U)
(declare-fun Tagclass.M2.Primitive () T@U)
(declare-fun |##M2.WFCertificate.Cert| () T@U)
(declare-fun |##M2.State.StateCons| () T@U)
(declare-fun |##M2.Expression.exprLiteral| () T@U)
(declare-fun Tagclass.M2.Literal () T@U)
(declare-fun |##M2.Expression.exprIdentifier| () T@U)
(declare-fun |##M2.Expression.exprIf| () T@U)
(declare-fun |##M2.Expression.exprAnd| () T@U)
(declare-fun |##M2.Expression.exprOr| () T@U)
(declare-fun |##M2.Expression.exprInvocation| () T@U)
(declare-fun |##M2.Expression.exprError| () T@U)
(declare-fun Tagclass.M2.Reason () T@U)
(declare-fun |##M2.Literal.litTrue| () T@U)
(declare-fun |##M2.Literal.litFalse| () T@U)
(declare-fun |##M2.Literal.litUndefined| () T@U)
(declare-fun |##M2.Literal.litNull| () T@U)
(declare-fun |##M2.Literal.litNumber| () T@U)
(declare-fun |##M2.Literal.litString| () T@U)
(declare-fun |##M2.Literal.litPrimitive| () T@U)
(declare-fun |##M2.Literal.litArrOfPaths| () T@U)
(declare-fun |##M2.Literal.litArrOfStrings| () T@U)
(declare-fun |##M2.Literal.litArray| () T@U)
(declare-fun |##M2.Primitive.primCreatePath| () T@U)
(declare-fun |##M2.Primitive.primExec| () T@U)
(declare-fun |##M2.Reason.rCompatibility| () T@U)
(declare-fun |##M2.Reason.rValidity| () T@U)
(declare-fun |##M2.Tuple.Pair| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$State () T@U)
(declare-fun tytagFamily$WFCertificate () T@U)
(declare-fun tytagFamily$Tuple () T@U)
(declare-fun tytagFamily$Expression () T@U)
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
(declare-fun M2.__default.Loc (T@U T@U T@U) T@U)
(declare-fun |M2.__default.Loc#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.M2.Path () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun M2.__default.Combine (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |M2.__default.Combine#canCall| (T@U) Bool)
(declare-fun Tclass.M2.State () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |$let#13$canCall| (T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |$let#13_st| (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |M2.__default.Union#canCall| (T@U T@U) Bool)
(declare-fun M2.__default.Union (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun M2.State.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M2.Artifact () T@U)
(declare-fun M2.State.StateCons_q (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun M2.__default.Arity (T@U) Int)
(declare-fun |M2.__default.Arity#canCall| (T@U) Bool)
(declare-fun Tclass.M2.Primitive () T@U)
(declare-fun M2.Primitive.primCreatePath_q (T@U) Bool)
(declare-fun M2.__default.evalArgs (T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass.M2.Tuple (T@U T@U) T@U)
(declare-fun Tclass.M2.Expression () T@U)
(declare-fun |M2.__default.evalArgs#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Tclass.M2.Env () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun M2.__default.ValidEnv (T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun DtRank (T@U) Int)
(declare-fun M2.__default.LocInv__Cmd (T@U) T@U)
(declare-fun |M2.__default.LocInv__Cmd#canCall| (T@U) Bool)
(declare-fun M2.__default.LocInv__Exp (T@U) T@U)
(declare-fun |M2.__default.LocInv__Exp#canCall| (T@U) Bool)
(declare-fun |#M2.Expression.exprAnd| (T@U T@U) T@U)
(declare-fun |#M2.Expression.exprOr| (T@U T@U) T@U)
(declare-fun M2.__default.ValidArgs (T@U T@U T@U) Bool)
(declare-fun |M2.__default.ValidArgs#canCall| (T@U T@U T@U) Bool)
(declare-fun M2.Primitive.primExec_q (T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun M2.Expression.exprLiteral_q (T@U) Bool)
(declare-fun M2.Literal.litString_q (T@U) Bool)
(declare-fun M2.Expression.lit (T@U) T@U)
(declare-fun M2.Literal.litArrOfPaths_q (T@U) Bool)
(declare-fun M2.Literal.litArrOfStrings_q (T@U) Bool)
(declare-fun |M2.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun M2.Literal.paths (T@U) T@U)
(declare-fun M2.__default.DomSt (T@U) T@U)
(declare-fun |M2.__default.Pre#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M2.Literal.str (T@U) T@U)
(declare-fun M2.Literal.strs (T@U) T@U)
(declare-fun M2.__default.Pre (T@U T@U T@U T@U) Bool)
(declare-fun M2.__default.SetSt (T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |M2.__default.SetSt#canCall| (T@U T@U T@U) Bool)
(declare-fun |#M2.State.StateCons| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun M2.__default.FindCert (T@U T@U) T@U)
(declare-fun |M2.__default.FindCert#canCall| (T@U T@U) Bool)
(declare-fun Tclass.M2.WFCertificate () T@U)
(declare-fun M2.WFCertificate.p (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |$let#9$canCall| (T@U T@U) Bool)
(declare-fun |$let#9_c| (T@U T@U) T@U)
(declare-fun M2.__default.Restrict (T@U T@U) T@U)
(declare-fun |M2.__default.Restrict#canCall| (T@U T@U) Bool)
(declare-fun M2.__default.GetSt (T@U T@U) T@U)
(declare-fun |M2.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U) T@U)
(declare-fun |#M2.Expression.exprInvocation| (T@U T@U) T@U)
(declare-fun M2.__default.exec (T@U T@U T@U T@U) T@U)
(declare-fun |M2.__default.exec#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M2.__default.PickOne (T@U T@U) T@U)
(declare-fun |M2.__default.PickOne#canCall| (T@U T@U) Bool)
(declare-fun M2.__default.CollectDependencies (T@U T@U T@U T@U T@U) T@U)
(declare-fun |M2.__default.CollectDependencies#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M2.__default.CheckWellFounded (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun M2.__default.LocInv__Deps (T@U) T@U)
(declare-fun M2.WFCertificate.certs (T@U) T@U)
(declare-fun M2.WFCertificate.Cert_q (T@U) Bool)
(declare-fun |M2.__default.OracleWF#canCall| (T@U T@U T@U) Bool)
(declare-fun |lambda#19| (T@U T@U) T@U)
(declare-fun |lambda#20| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |#M2.Expression.exprIf| (T@U T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |$IsA#M2.State| (T@U) Bool)
(declare-fun |$IsA#M2.Tuple| (T@U) Bool)
(declare-fun M2.Tuple.Pair_q (T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun M2.__default.execOne (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |M2.__default.execOne#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun M2.__default.Post (T@U T@U T@U T@U) Bool)
(declare-fun |M2.__default.Post#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |M2.__default.Oracle#canCall| (T@U T@U) Bool)
(declare-fun M2.__default.Oracle (T@U T@U) T@U)
(declare-fun |M2.Literal#Equal| (T@U T@U) Bool)
(declare-fun M2.Literal.litNumber_q (T@U) Bool)
(declare-fun M2.Literal.num (T@U) Int)
(declare-fun |#M2.Literal.litString| (T@U) T@U)
(declare-fun |#M2.Literal.litArray| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M2.Expression.cond (T@U) T@U)
(declare-fun M2.Expression.ifTrue (T@U) T@U)
(declare-fun M2.Expression.ifFalse (T@U) T@U)
(declare-fun |$let#0_x| (T@U T@U) T@U)
(declare-fun |$let#0$canCall| (T@U T@U) Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |M2.Tuple#Equal| (T@U T@U) Bool)
(declare-fun M2.Tuple.fst (T@U) T@U)
(declare-fun M2.Tuple.snd (T@U) T@U)
(declare-fun |#M2.Literal.litTrue| () T@U)
(declare-fun |#M2.Literal.litFalse| () T@U)
(declare-fun |#M2.Literal.litUndefined| () T@U)
(declare-fun |#M2.Literal.litNull| () T@U)
(declare-fun |#M2.Primitive.primCreatePath| () T@U)
(declare-fun |#M2.Primitive.primExec| () T@U)
(declare-fun |#M2.Reason.rCompatibility| () T@U)
(declare-fun |#M2.Reason.rValidity| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun M2.__default.OracleWF (T@U T@U T@U T@U) T@U)
(declare-fun |M2.__default.LocInv__Deps#canCall| (T@U) Bool)
(declare-fun |M2.__default.RunTool#canCall| (T@U T@U T@U) Bool)
(declare-fun M2.__default.RunTool (T@U T@U T@U) T@U)
(declare-fun |#M2.WFCertificate.Cert| (T@U T@U) T@U)
(declare-fun M2.__default.GetCert (T@U) T@U)
(declare-fun |M2.__default.GetCert#canCall| (T@U) Bool)
(declare-fun M2.__default.WellFounded (T@U) Bool)
(declare-fun |$let#3$canCall| (T@U) Bool)
(declare-fun |$let#3_c| (T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |#M2.Tuple.Pair| (T@U T@U) T@U)
(declare-fun Tclass.M2.Literal () T@U)
(declare-fun Tclass.M2.Reason () T@U)
(declare-fun |M2.__default.WellFounded#canCall| (T@U) Bool)
(declare-fun |M2.__default.CheckWellFounded#canCall| (T@U T@U) Bool)
(declare-fun M2.__default.OneToOne (T@U T@U T@U T@U) Bool)
(declare-fun |M2.__default.OneToOne#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |M2.Primitive#Equal| (T@U T@U) Bool)
(declare-fun |M2.Reason#Equal| (T@U T@U) Bool)
(declare-fun M2.__default.eval (T@U T@U T@U T@U) T@U)
(declare-fun |M2.__default.eval#canCall| (T@U T@U T@U) Bool)
(declare-fun |M2.__default.Value#canCall| (T@U) Bool)
(declare-fun M2.__default.Value (T@U) Bool)
(declare-fun M2.Expression.exprIdentifier_q (T@U) Bool)
(declare-fun |M2.__default.GetEnv#canCall| (T@U T@U) Bool)
(declare-fun M2.Expression.id (T@U) T@U)
(declare-fun M2.Expression.exprIf_q (T@U) Bool)
(declare-fun |$IsA#M2.Literal| (T@U) Bool)
(declare-fun M2.Expression.exprAnd_q (T@U) Bool)
(declare-fun M2.Expression.conj0 (T@U) T@U)
(declare-fun M2.Expression.conj1 (T@U) T@U)
(declare-fun M2.Expression.exprOr_q (T@U) Bool)
(declare-fun M2.Expression.disj0 (T@U) T@U)
(declare-fun M2.Expression.disj1 (T@U) T@U)
(declare-fun M2.Expression.exprInvocation_q (T@U) Bool)
(declare-fun M2.Expression.fun (T@U) T@U)
(declare-fun M2.Expression.args (T@U) T@U)
(declare-fun |M2.__default.Compatible#canCall| (T@U) Bool)
(declare-fun M2.__default.Compatible (T@U) Bool)
(declare-fun M2.Literal.litPrimitive_q (T@U) Bool)
(declare-fun M2.Literal.prim (T@U) T@U)
(declare-fun M2.__default.GetEnv (T@U T@U) T@U)
(declare-fun |#M2.Expression.exprError| (T@U) T@U)
(declare-fun |#M2.Expression.exprLiteral| (T@U) T@U)
(declare-fun |#M2.Literal.litArrOfPaths| (T@U) T@U)
(declare-fun M2.__default.OracleArbitrary (T@U) T@U)
(declare-fun |M2.__default.OracleArbitrary#canCall| (T@U) Bool)
(declare-fun |$let#6$canCall| () Bool)
(declare-fun |$let#6_a| () T@U)
(declare-fun |$IsA#M2.Expression| (T@U) Bool)
(declare-fun M2.Expression.exprError_q (T@U) Bool)
(declare-fun M2.__default.ValidState (T@U) Bool)
(declare-fun |M2.__default.ValidState#canCall| (T@U) Bool)
(declare-fun M2.Literal.litTrue_q (T@U) Bool)
(declare-fun M2.Literal.litFalse_q (T@U) Bool)
(declare-fun M2.Literal.litUndefined_q (T@U) Bool)
(declare-fun M2.Literal.litNull_q (T@U) Bool)
(declare-fun M2.Literal.litArray_q (T@U) Bool)
(declare-fun M2.Reason.rCompatibility_q (T@U) Bool)
(declare-fun M2.Reason.rValidity_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun Tclass.M2.Identifier () T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |#M2.Expression.exprIdentifier| (T@U) T@U)
(declare-fun |#M2.Literal.litNumber| (Int) T@U)
(declare-fun |#M2.Literal.litPrimitive| (T@U) T@U)
(declare-fun |#M2.Literal.litArrOfStrings| (T@U) T@U)
(declare-fun M2.Literal.arr (T@U) T@U)
(declare-fun |$IsA#M2.Reason| (T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Tclass.M2.Tuple_0 (T@U) T@U)
(declare-fun Tclass.M2.Tuple_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun M2.Expression.r (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun M2.__default.Extends (T@U T@U) Bool)
(declare-fun |M2.__default.Extends#canCall| (T@U T@U) Bool)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M2.State Tagclass.M2.WFCertificate Tagclass.M2.Tuple Tagclass.M2.Expression Tagclass.M2.Primitive |##M2.WFCertificate.Cert| |##M2.State.StateCons| |##M2.Expression.exprLiteral| Tagclass.M2.Literal |##M2.Expression.exprIdentifier| |##M2.Expression.exprIf| |##M2.Expression.exprAnd| |##M2.Expression.exprOr| |##M2.Expression.exprInvocation| |##M2.Expression.exprError| Tagclass.M2.Reason |##M2.Literal.litTrue| |##M2.Literal.litFalse| |##M2.Literal.litUndefined| |##M2.Literal.litNull| |##M2.Literal.litNumber| |##M2.Literal.litString| |##M2.Literal.litPrimitive| |##M2.Literal.litArrOfPaths| |##M2.Literal.litArrOfStrings| |##M2.Literal.litArray| |##M2.Primitive.primCreatePath| |##M2.Primitive.primExec| |##M2.Reason.rCompatibility| |##M2.Reason.rValidity| |##M2.Tuple.Pair| |tytagFamily$_tuple#2| tytagFamily$State tytagFamily$WFCertificate tytagFamily$Tuple tytagFamily$Expression tytagFamily$Primitive tytagFamily$Literal tytagFamily$Reason)
)
(assert  (and (= (Ctor SeqType) 3) (= (Ctor SetType) 4)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|cmd#0| T@U) (|deps#0| T@U) (|exp#0| T@U) ) (!  (=> (or (|M2.__default.Loc#canCall| |cmd#0| |deps#0| |exp#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0| (TSeq TChar)) ($Is SetType |deps#0| (TSet Tclass.M2.Path))) ($Is SeqType |exp#0| (TSeq TChar))))) ($IsBox (M2.__default.Loc |cmd#0| |deps#0| |exp#0|) Tclass.M2.Path))
 :qid |CloudMakeParallelBuildsdfy.154:22|
 :skolemid |4474|
 :pattern ( (M2.__default.Loc |cmd#0| |deps#0| |exp#0|))
))))
(assert (= (Ctor DatatypeTypeType) 5))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|sts#0| T@U) ) (!  (=> (or (|M2.__default.Combine#canCall| |sts#0|) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |sts#0| (TSet Tclass.M2.State))) (not (|Set#Equal| |sts#0| |Set#Empty|))))) (and (and (|$let#13$canCall| |sts#0|) (=> (not (|Set#Equal| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#13_st| |sts#0|))))) (and (|M2.__default.Combine#canCall| (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#13_st| |sts#0|))))) (|M2.__default.Union#canCall| (|$let#13_st| |sts#0|) (M2.__default.Combine $ly (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#13_st| |sts#0|))))))))) (= (M2.__default.Combine ($LS $ly) |sts#0|) (let ((|st#0| (|$let#13_st| |sts#0|)))
(ite (|Set#Equal| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0|))) |st#0| (M2.__default.Union |st#0| (M2.__default.Combine $ly (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0|))))))))))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |4318|
 :pattern ( (M2.__default.Combine ($LS $ly) |sts#0|) ($IsGoodHeap $Heap))
))))
(assert (= (Ctor MapType) 6))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M2.State.StateCons_q d) ($IsAlloc DatatypeTypeType d Tclass.M2.State $h))) ($IsAlloc MapType (M2.State.m d) (TMap Tclass.M2.Path Tclass.M2.Artifact) $h))
 :qid |unknown.0:0|
 :skolemid |4682|
 :pattern ( ($IsAlloc MapType (M2.State.m d) (TMap Tclass.M2.Path Tclass.M2.Artifact) $h))
)))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0| T@U) ) (!  (=> (or (|M2.__default.Arity#canCall| |prim#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0| Tclass.M2.Primitive))) (= (M2.__default.Arity |prim#0|) (ite (M2.Primitive.primCreatePath_q |prim#0|) 1 3)))
 :qid |CloudMakeParallelBuildsdfy.282:24|
 :skolemid |4557|
 :pattern ( (M2.__default.Arity |prim#0|))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@0 T@U) ($ly@@0 T@U) (|context#0| T@U) (|args#0| T@U) (|stOrig#0| T@U) (|env#0| T@U) ) (!  (=> (and (or (|M2.__default.evalArgs#canCall| |context#0| |args#0| |stOrig#0| |env#0|) (and (< 7 $FunctionContextHeight) (and (and (and (and (and ($Is DatatypeTypeType |context#0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |context#0| Tclass.M2.Expression $Heap@@0)) (and ($Is SeqType |args#0| (TSeq Tclass.M2.Expression)) ($IsAlloc SeqType |args#0| (TSeq Tclass.M2.Expression) $Heap@@0))) (and ($Is DatatypeTypeType |stOrig#0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |stOrig#0| Tclass.M2.State $Heap@@0))) (and ($IsBox |env#0| Tclass.M2.Env) ($IsAllocBox |env#0| Tclass.M2.Env $Heap@@0))) (and (M2.__default.ValidEnv |env#0|) (forall ((|arg#0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#0| Tclass.M2.Expression) (=> (|Seq#Contains| |args#0| ($Box DatatypeTypeType |arg#0|)) (< (DtRank |arg#0|) (DtRank |context#0|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |4539|
 :pattern ( (|Seq#Contains| |args#0| ($Box DatatypeTypeType |arg#0|)))
)))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (M2.__default.evalArgs $ly@@0 |context#0| |args#0| |stOrig#0| |env#0|) (Tclass.M2.Tuple (TSeq Tclass.M2.Expression) (TSet Tclass.M2.State)) $Heap@@0))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |4541|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.evalArgs $ly@@0 |context#0| |args#0| |stOrig#0| |env#0|) (Tclass.M2.Tuple (TSeq Tclass.M2.Expression) (TSet Tclass.M2.State)) $Heap@@0))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0| T@U) ) (!  (=> (or (|M2.__default.LocInv__Cmd#canCall| |p#0|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0| Tclass.M2.Path))) ($Is SeqType (M2.__default.LocInv__Cmd |p#0|) (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.636:29|
 :skolemid |3812|
 :pattern ( (M2.__default.LocInv__Cmd |p#0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0@@0| T@U) ) (!  (=> (or (|M2.__default.LocInv__Exp#canCall| |p#0@@0|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0@@0| Tclass.M2.Path))) ($Is SeqType (M2.__default.LocInv__Exp |p#0@@0|) (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.638:29|
 :skolemid |3816|
 :pattern ( (M2.__default.LocInv__Exp |p#0@@0|))
))))
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
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|prim#0@@0| T@U) (|args#0@@0| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|M2.__default.ValidArgs#canCall| |prim#0@@0| |args#0@@0| |st#0@@0|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@0| Tclass.M2.Primitive) ($Is SeqType |args#0@@0| (TSeq Tclass.M2.Expression))) ($Is DatatypeTypeType |st#0@@0| Tclass.M2.State)) (and (=> (M2.Primitive.primExec_q |prim#0@@0|) (= (|Seq#Length| |args#0@@0|) (LitInt 3))) (=> (M2.Primitive.primCreatePath_q |prim#0@@0|) (= (|Seq#Length| |args#0@@0|) (LitInt 1))))))) (and (=> (not (M2.Primitive.primCreatePath_q |prim#0@@0|)) (let ((|exps#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 2)))))
(let ((|deps#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 1)))))
(let ((|cmd#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 0)))))
 (=> (M2.Expression.exprLiteral_q |cmd#1|) (=> (M2.Literal.litString_q (M2.Expression.lit |cmd#1|)) (=> (M2.Expression.exprLiteral_q |deps#1|) (=> (M2.Literal.litArrOfPaths_q (M2.Expression.lit |deps#1|)) (=> (M2.Expression.exprLiteral_q |exps#1|) (=> (M2.Literal.litArrOfStrings_q (M2.Expression.lit |exps#1|)) (and (|M2.__default.DomSt#canCall| |st#0@@0|) (=> (|Set#Subset| (M2.Literal.paths (M2.Expression.lit |deps#1|)) (M2.__default.DomSt |st#0@@0|)) (|M2.__default.Pre#canCall| (M2.Literal.str (M2.Expression.lit |cmd#1|)) (M2.Literal.paths (M2.Expression.lit |deps#1|)) (M2.Literal.strs (M2.Expression.lit |exps#1|)) |st#0@@0|))))))))))))) (= (M2.__default.ValidArgs |prim#0@@0| |args#0@@0| |st#0@@0|) (ite (M2.Primitive.primCreatePath_q |prim#0@@0|) false (let ((|exps#0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 2)))))
(let ((|deps#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 1)))))
(let ((|cmd#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@0| (LitInt 0)))))
 (and (and (and (and (and (and (and (M2.Expression.exprLiteral_q |cmd#0@@0|) (M2.Literal.litString_q (M2.Expression.lit |cmd#0@@0|))) (M2.Expression.exprLiteral_q |deps#0@@0|)) (M2.Literal.litArrOfPaths_q (M2.Expression.lit |deps#0@@0|))) (M2.Expression.exprLiteral_q |exps#0|)) (M2.Literal.litArrOfStrings_q (M2.Expression.lit |exps#0|))) (|Set#Subset| (M2.Literal.paths (M2.Expression.lit |deps#0@@0|)) (M2.__default.DomSt |st#0@@0|))) (M2.__default.Pre (M2.Literal.str (M2.Expression.lit |cmd#0@@0|)) (M2.Literal.paths (M2.Expression.lit |deps#0@@0|)) (M2.Literal.strs (M2.Expression.lit |exps#0|)) |st#0@@0|)))))))))
 :qid |CloudMakeParallelBuildsdfy.289:29|
 :skolemid |4561|
 :pattern ( (M2.__default.ValidArgs |prim#0@@0| |args#0@@0| |st#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@1| T@U) (|a#0| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|M2.__default.SetSt#canCall| |p#0@@1| |a#0| (Lit DatatypeTypeType |st#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@1| Tclass.M2.Path) ($IsBox |a#0| Tclass.M2.Artifact)) ($Is DatatypeTypeType |st#0@@1| Tclass.M2.State)))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@1|)) (= (M2.__default.SetSt |p#0@@1| |a#0| (Lit DatatypeTypeType |st#0@@1|)) (|#M2.State.StateCons| (|Map#Build| (Lit MapType (M2.State.m (Lit DatatypeTypeType |st#0@@1|))) |p#0@@1| |a#0|)))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :weight 3
 :skolemid |3501|
 :pattern ( (M2.__default.SetSt |p#0@@1| |a#0| (Lit DatatypeTypeType |st#0@@1|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|d#0| T@U) (|certs#0| T@U) ) (!  (=> (or (|M2.__default.FindCert#canCall| |d#0| (Lit SetType |certs#0|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) ($IsBox |d#0| Tclass.M2.Path)) ($Is SetType |certs#0| (TSet Tclass.M2.WFCertificate))) (exists ((|c#3| T@U) ) (!  (and ($Is DatatypeTypeType |c#3| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType |certs#0|) ($Box DatatypeTypeType |c#3|)) (= (M2.WFCertificate.p |c#3|) |d#0|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |3898|
 :pattern ( (M2.WFCertificate.p |c#3|))
 :pattern ( (|Set#IsMember| |certs#0| ($Box DatatypeTypeType |c#3|)))
))))) (and (|$let#9$canCall| (Lit SetType |certs#0|) |d#0|) (= (M2.__default.FindCert |d#0| (Lit SetType |certs#0|)) (let ((|c#4| (|$let#9_c| (Lit SetType |certs#0|) |d#0|)))
|c#4|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :weight 3
 :skolemid |3899|
 :pattern ( (M2.__default.FindCert |d#0| (Lit SetType |certs#0|)) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|paths#0| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|M2.__default.Restrict#canCall| (Lit SetType |paths#0|) (Lit DatatypeTypeType |st#0@@2|)) (and (< 3 $FunctionContextHeight) (and ($Is SetType |paths#0| (TSet Tclass.M2.Path)) ($Is DatatypeTypeType |st#0@@2| Tclass.M2.State)))) (and (forall ((|p#0@@2| T@U) ) (!  (=> ($IsBox |p#0@@2| Tclass.M2.Path) (and (=> (|Set#IsMember| (Lit SetType |paths#0|) |p#0@@2|) (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@2|))) (=> (and (|Set#IsMember| (Lit SetType |paths#0|) |p#0@@2|) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@2|))) |p#0@@2|)) (|M2.__default.GetSt#canCall| |p#0@@2| (Lit DatatypeTypeType |st#0@@2|)))))
 :qid |CloudMakeParallelBuildsdfy.475:9|
 :skolemid |3508|
 :pattern ( (M2.__default.GetSt |p#0@@2| |st#0@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@2|) |p#0@@2|))
 :pattern ( (|Set#IsMember| |paths#0| |p#0@@2|))
)) (= (M2.__default.Restrict (Lit SetType |paths#0|) (Lit DatatypeTypeType |st#0@@2|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M2.Path (Lit SetType |paths#0|) (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@2|))))) (|lambda#1| (Lit DatatypeTypeType |st#0@@2|)) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.473:27|
 :weight 3
 :skolemid |3509|
 :pattern ( (M2.__default.Restrict (Lit SetType |paths#0|) (Lit DatatypeTypeType |st#0@@2|)))
))))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2926|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((|a#78#0#0| T@U) (|a#78#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#78#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#78#1#0| i))) (DtRank (|#M2.Expression.exprInvocation| |a#78#0#0| |a#78#1#0|))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4807|
 :pattern ( (|Seq#Index| |a#78#1#0| i) (|#M2.Expression.exprInvocation| |a#78#0#0| |a#78#1#0|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|cmd#0@@1| T@U) (|deps#0@@1| T@U) (|exps#0@@0| T@U) (|st#0@@3| T@U) ) (!  (=> (and (or (|M2.__default.exec#canCall| |cmd#0@@1| |deps#0@@1| |exps#0@@0| |st#0@@3|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@1| (TSeq TChar)) ($IsAlloc SeqType |cmd#0@@1| (TSeq TChar) $Heap@@2)) (and ($Is SetType |deps#0@@1| (TSet Tclass.M2.Path)) ($IsAlloc SetType |deps#0@@1| (TSet Tclass.M2.Path) $Heap@@2))) (and ($Is SetType |exps#0@@0| (TSet (TSeq TChar))) ($IsAlloc SetType |exps#0@@0| (TSet (TSeq TChar)) $Heap@@2))) (and ($Is DatatypeTypeType |st#0@@3| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@3| Tclass.M2.State $Heap@@2))))) ($IsGoodHeap $Heap@@2)) ($IsAlloc DatatypeTypeType (M2.__default.exec |cmd#0@@1| |deps#0@@1| |exps#0@@0| |st#0@@3|) (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State) $Heap@@2))
 :qid |CloudMakeParallelBuildsdfy.509:18|
 :skolemid |3595|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.exec |cmd#0@@1| |deps#0@@1| |exps#0@@0| |st#0@@3|) (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State) $Heap@@2))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (M2._default.PickOne$T T@U) (|s#0| T@U) ) (!  (=> (and (or (|M2.__default.PickOne#canCall| M2._default.PickOne$T |s#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SetType |s#0| (TSet M2._default.PickOne$T)) ($IsAlloc SetType |s#0| (TSet M2._default.PickOne$T) $Heap@@3)) (not (|Set#Equal| |s#0| |Set#Empty|))))) ($IsGoodHeap $Heap@@3)) ($IsAllocBox (M2.__default.PickOne M2._default.PickOne$T |s#0|) M2._default.PickOne$T $Heap@@3))
 :qid |CloudMakeParallelBuildsdfy.483:18|
 :skolemid |3522|
 :pattern ( ($IsAllocBox (M2.__default.PickOne M2._default.PickOne$T |s#0|) M2._default.PickOne$T $Heap@@3))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) (|p#0@@3| T@U) (|cert#0| T@U) (|deps#0@@2| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|M2.__default.CollectDependencies#canCall| |p#0@@3| (Lit DatatypeTypeType |cert#0|) |deps#0@@2| |st#0@@4|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@3| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0| Tclass.M2.WFCertificate)) ($Is SetType |deps#0@@2| (TSet Tclass.M2.Path))) ($Is DatatypeTypeType |st#0@@4| Tclass.M2.State)) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@3| (Lit DatatypeTypeType |cert#0|)) (|Set#Equal| |deps#0@@2| (M2.__default.LocInv__Deps |p#0@@3|)))))) (and (forall ((|d#0@@0| T@U) ) (!  (=> ($IsBox |d#0@@0| Tclass.M2.Path) (=> (|Set#IsMember| |deps#0@@2| |d#0@@0|) (and (and (|M2.__default.DomSt#canCall| |st#0@@4|) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@4|) |d#0@@0|) (|M2.__default.GetSt#canCall| |d#0@@0| |st#0@@4|))) (=> (not (|Set#IsMember| (M2.__default.DomSt |st#0@@4|) |d#0@@0|)) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0|)) (|M2.__default.FindCert#canCall| |d#0@@0| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0|))))) (|M2.__default.OracleWF#canCall| |d#0@@0| (M2.__default.FindCert |d#0@@0| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0|)))) |st#0@@4|))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |3871|
 :pattern ( (M2.__default.FindCert |d#0@@0| (M2.WFCertificate.certs |cert#0|)))
 :pattern ( (M2.__default.GetSt |d#0@@0| |st#0@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@4|) |d#0@@0|))
 :pattern ( (|Set#IsMember| |deps#0@@2| |d#0@@0|))
)) (= (M2.__default.CollectDependencies ($LS $ly@@1) |p#0@@3| (Lit DatatypeTypeType |cert#0|) |deps#0@@2| |st#0@@4|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path |deps#0@@2|)) (|lambda#20| (M2.__default.DomSt |st#0@@4|) |st#0@@4| ($LS $ly@@1) (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0|))) |st#0@@4|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :weight 3
 :skolemid |3872|
 :pattern ( (M2.__default.CollectDependencies ($LS $ly@@1) |p#0@@3| (Lit DatatypeTypeType |cert#0|) |deps#0@@2| |st#0@@4|))
))))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@4| T@U) (|st#0@@5| T@U) ) (!  (=> (or (|M2.__default.GetSt#canCall| |p#0@@4| |st#0@@5|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@4| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@5| Tclass.M2.State)) (|Set#IsMember| (M2.__default.DomSt |st#0@@5|) |p#0@@4|)))) (and (M2.State.StateCons_q |st#0@@5|) (= (M2.__default.GetSt |p#0@@4| |st#0@@5|) (MapType0Select BoxType BoxType (|Map#Elements| (M2.State.m |st#0@@5|)) |p#0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |4259|
 :pattern ( (M2.__default.GetSt |p#0@@4| |st#0@@5|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@2 T@U) (|p#0@@5| T@U) (|cert#0@@0| T@U) (|deps#0@@3| T@U) (|st#0@@6| T@U) ) (!  (=> (or (|M2.__default.CollectDependencies#canCall| |p#0@@5| |cert#0@@0| |deps#0@@3| |st#0@@6|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@5| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@0| Tclass.M2.WFCertificate)) ($Is SetType |deps#0@@3| (TSet Tclass.M2.Path))) ($Is DatatypeTypeType |st#0@@6| Tclass.M2.State)) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@5| |cert#0@@0|) (|Set#Equal| |deps#0@@3| (M2.__default.LocInv__Deps |p#0@@5|)))))) (and (forall ((|d#0@@1| T@U) ) (!  (=> ($IsBox |d#0@@1| Tclass.M2.Path) (=> (|Set#IsMember| |deps#0@@3| |d#0@@1|) (and (and (|M2.__default.DomSt#canCall| |st#0@@6|) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@6|) |d#0@@1|) (|M2.__default.GetSt#canCall| |d#0@@1| |st#0@@6|))) (=> (not (|Set#IsMember| (M2.__default.DomSt |st#0@@6|) |d#0@@1|)) (and (and (M2.WFCertificate.Cert_q |cert#0@@0|) (|M2.__default.FindCert#canCall| |d#0@@1| (M2.WFCertificate.certs |cert#0@@0|))) (|M2.__default.OracleWF#canCall| |d#0@@1| (M2.__default.FindCert |d#0@@1| (M2.WFCertificate.certs |cert#0@@0|)) |st#0@@6|))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |3869|
 :pattern ( (M2.__default.FindCert |d#0@@1| (M2.WFCertificate.certs |cert#0@@0|)))
 :pattern ( (M2.__default.GetSt |d#0@@1| |st#0@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@6|) |d#0@@1|))
 :pattern ( (|Set#IsMember| |deps#0@@3| |d#0@@1|))
)) (= (M2.__default.CollectDependencies ($LS $ly@@2) |p#0@@5| |cert#0@@0| |deps#0@@3| |st#0@@6|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path |deps#0@@3|)) (|lambda#20| (M2.__default.DomSt |st#0@@6|) |st#0@@6| $ly@@2 (M2.WFCertificate.certs |cert#0@@0|) |st#0@@6|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |3870|
 :pattern ( (M2.__default.CollectDependencies ($LS $ly@@2) |p#0@@5| |cert#0@@0| |deps#0@@3| |st#0@@6|))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2927|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |2931|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |2932|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) (|a#47#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Expression.exprIf| |a#47#0#0| |a#47#1#0| |a#47#2#0|) Tclass.M2.Expression)  (and (and ($Is DatatypeTypeType |a#47#0#0| Tclass.M2.Expression) ($Is DatatypeTypeType |a#47#1#0| Tclass.M2.Expression)) ($Is DatatypeTypeType |a#47#2#0| Tclass.M2.Expression)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4757|
 :pattern ( ($Is DatatypeTypeType (|#M2.Expression.exprIf| |a#47#0#0| |a#47#1#0| |a#47#2#0|) Tclass.M2.Expression))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@7| T@U) ) (!  (=> (or (|M2.__default.DomSt#canCall| |st#0@@7|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@7| Tclass.M2.State))) (and (forall ((|p#0@@6| T@U) ) (!  (=> ($IsBox |p#0@@6| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@7|) |p#0@@6|) (|Set#IsMember| (|Map#Domain| (M2.State.m |st#0@@7|)) |p#0@@6|)))
 :qid |CloudMakeParallelBuildsdfy.441:20|
 :skolemid |4263|
 :pattern ( (|Set#IsMember| (|Map#Domain| (M2.State.m |st#0@@7|)) |p#0@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@7|) |p#0@@6|))
)) ($Is SetType (M2.__default.DomSt |st#0@@7|) (TSet Tclass.M2.Path))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |4264|
 :pattern ( (M2.__default.DomSt |st#0@@7|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@8| T@U) ) (!  (=> (or (|M2.__default.DomSt#canCall| |st#0@@8|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@8| Tclass.M2.State))) (and (M2.State.StateCons_q |st#0@@8|) (= (M2.__default.DomSt |st#0@@8|) (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path (|Map#Domain| (M2.State.m |st#0@@8|)))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |4266|
 :pattern ( (M2.__default.DomSt |st#0@@8|))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#M2.State| d@@0) (M2.State.StateCons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |4687|
 :pattern ( (|$IsA#M2.State| d@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (|$IsA#M2.Tuple| d@@1) (M2.Tuple.Pair_q d@@1))
 :qid |unknown.0:0|
 :skolemid |4951|
 :pattern ( (|$IsA#M2.Tuple| d@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2925|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((s T@U) (v T@U) (x@@5 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@5)  (or (= v x@@5) (|Seq#Contains| s x@@5)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |3031|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@5))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@4 T@U) ($ly@@3 T@U) (|sts#0@@0| T@U) ) (!  (=> (and (or (|M2.__default.Combine#canCall| |sts#0@@0|) (and (< 4 $FunctionContextHeight) (and (and ($Is SetType |sts#0@@0| (TSet Tclass.M2.State)) ($IsAlloc SetType |sts#0@@0| (TSet Tclass.M2.State) $Heap@@4)) (not (|Set#Equal| |sts#0@@0| |Set#Empty|))))) ($IsGoodHeap $Heap@@4)) ($IsAlloc DatatypeTypeType (M2.__default.Combine $ly@@3 |sts#0@@0|) Tclass.M2.State $Heap@@4))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |4315|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.Combine $ly@@3 |sts#0@@0|) Tclass.M2.State $Heap@@4))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@4 T@U) (|cmd#0@@2| T@U) (|deps#0@@4| T@U) (|restrictedState#0| T@U) (|exps#0@@1| T@U) (|st#0@@9| T@U) ) (!  (=> (or (|M2.__default.execOne#canCall| |cmd#0@@2| |deps#0@@4| |restrictedState#0| |exps#0@@1| |st#0@@9|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@2| (TSeq TChar)) ($Is SetType |deps#0@@4| (TSet Tclass.M2.Path))) ($Is MapType |restrictedState#0| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SetType |exps#0@@1| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@9| Tclass.M2.State)))) ($Is DatatypeTypeType (M2.__default.execOne $ly@@4 |cmd#0@@2| |deps#0@@4| |restrictedState#0| |exps#0@@1| |st#0@@9|) (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State)))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |3604|
 :pattern ( (M2.__default.execOne $ly@@4 |cmd#0@@2| |deps#0@@4| |restrictedState#0| |exps#0@@1| |st#0@@9|))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@3| T@U) (|deps#0@@5| T@U) (|exps#0@@2| T@U) (|st#0@@10| T@U) ) (!  (=> (or (|M2.__default.Post#canCall| |cmd#0@@3| |deps#0@@5| |exps#0@@2| |st#0@@10|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@3| (TSeq TChar)) ($Is SetType |deps#0@@5| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@2| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@10| Tclass.M2.State)))) (and (forall ((|e#0| T@U) ) (!  (=> ($Is SeqType |e#0| (TSeq TChar)) (and (=> (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#0|)) (and (|M2.__default.Loc#canCall| |cmd#0@@3| |deps#0@@5| |e#0|) (|M2.__default.DomSt#canCall| |st#0@@10|))) (=> (=> (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#0|)) (|Set#IsMember| (M2.__default.DomSt |st#0@@10|) (M2.__default.Loc |cmd#0@@3| |deps#0@@5| |e#0|))) (=> (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#0|)) (and (and (|M2.__default.Loc#canCall| |cmd#0@@3| |deps#0@@5| |e#0|) (|M2.__default.GetSt#canCall| (M2.__default.Loc |cmd#0@@3| |deps#0@@5| |e#0|) |st#0@@10|)) (and (|M2.__default.Loc#canCall| |cmd#0@@3| |deps#0@@5| |e#0|) (|M2.__default.Oracle#canCall| (M2.__default.Loc |cmd#0@@3| |deps#0@@5| |e#0|) |st#0@@10|)))))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |4400|
 :pattern ( (M2.__default.Loc |cmd#0@@3| |deps#0@@5| |e#0|))
 :pattern ( (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#0|)))
)) (= (M2.__default.Post |cmd#0@@3| |deps#0@@5| |exps#0@@2| |st#0@@10|) (forall ((|e#0@@0| T@U) ) (!  (=> ($Is SeqType |e#0@@0| (TSeq TChar)) (and (=> (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#0@@0|)) (|Set#IsMember| (M2.__default.DomSt |st#0@@10|) (M2.__default.Loc |cmd#0@@3| |deps#0@@5| |e#0@@0|))) (=> (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#0@@0|)) (= (M2.__default.GetSt (M2.__default.Loc |cmd#0@@3| |deps#0@@5| |e#0@@0|) |st#0@@10|) (M2.__default.Oracle (M2.__default.Loc |cmd#0@@3| |deps#0@@5| |e#0@@0|) |st#0@@10|)))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |4399|
 :pattern ( (M2.__default.Loc |cmd#0@@3| |deps#0@@5| |e#0@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#0@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.94:24|
 :skolemid |4401|
 :pattern ( (M2.__default.Post |cmd#0@@3| |deps#0@@5| |exps#0@@2| |st#0@@10|))
))))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (and (M2.Literal.litNumber_q a@@4) (M2.Literal.litNumber_q b@@1)) (= (|M2.Literal#Equal| a@@4 b@@1) (= (M2.Literal.num a@@4) (M2.Literal.num b@@1))))
 :qid |unknown.0:0|
 :skolemid |4909|
 :pattern ( (|M2.Literal#Equal| a@@4 b@@1) (M2.Literal.litNumber_q a@@4))
 :pattern ( (|M2.Literal#Equal| a@@4 b@@1) (M2.Literal.litNumber_q b@@1))
)))
(assert (forall ((|a#112#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#112#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#112#0#0| i@@0))) (DtRank (|#M2.Literal.litString| |a#112#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |4860|
 :pattern ( (|Seq#Index| |a#112#0#0| i@@0) (|#M2.Literal.litString| |a#112#0#0|))
)))
(assert (forall ((|a#137#0#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#137#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#137#0#0| i@@1))) (DtRank (|#M2.Literal.litArray| |a#137#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |4901|
 :pattern ( (|Seq#Index| |a#137#0#0| i@@1) (|#M2.Literal.litArray| |a#137#0#0|))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#19| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |CloudMakeParallelBuildsdfy.153:8|
 :skolemid |7208|
 :pattern ( (MapType0Select BoxType boolType (|lambda#19| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@5 b@@2 t)) a@@5)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |3083|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@5 b@@2 t)))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@6 b@@3 t@@0)) b@@3)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |3084|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@6 b@@3 t@@0)))
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
(assert (forall ((a@@7 T@U) (b@@4 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@4 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@7 b@@4) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |2941|
 :pattern ( (|Set#Difference| a@@7 b@@4) (|Set#IsMember| b@@4 y@@2))
)))
(assert (forall ((M2._default.PickOne$T@@0 T@U) (s@@0 T@U) ) (!  (=> (|$let#0$canCall| M2._default.PickOne$T@@0 s@@0) (|Set#IsMember| s@@0 (|$let#0_x| M2._default.PickOne$T@@0 s@@0)))
 :qid |CloudMakeParallelBuildsdfy.486:5|
 :skolemid |3524|
 :pattern ( (|$let#0_x| M2._default.PickOne$T@@0 s@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@5 T@U) (|p#0@@7| T@U) (|a#0@@0| T@U) (|st#0@@11| T@U) ) (!  (=> (and (or (|M2.__default.SetSt#canCall| |p#0@@7| |a#0@@0| |st#0@@11|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@7| Tclass.M2.Path) ($IsAllocBox |p#0@@7| Tclass.M2.Path $Heap@@5)) (and ($IsBox |a#0@@0| Tclass.M2.Artifact) ($IsAllocBox |a#0@@0| Tclass.M2.Artifact $Heap@@5))) (and ($Is DatatypeTypeType |st#0@@11| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@11| Tclass.M2.State $Heap@@5))))) ($IsGoodHeap $Heap@@5)) ($IsAlloc DatatypeTypeType (M2.__default.SetSt |p#0@@7| |a#0@@0| |st#0@@11|) Tclass.M2.State $Heap@@5))
 :qid |CloudMakeParallelBuildsdfy.468:18|
 :skolemid |3498|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.SetSt |p#0@@7| |a#0@@0| |st#0@@11|) Tclass.M2.State $Heap@@5))
))))
(assert (forall ((|a#57#0#0@@0| T@U) (|a#57#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprAnd| |a#57#0#0@@0| |a#57#1#0@@0|) Tclass.M2.Expression $h@@0)  (and ($IsAlloc DatatypeTypeType |a#57#0#0@@0| Tclass.M2.Expression $h@@0) ($IsAlloc DatatypeTypeType |a#57#1#0@@0| Tclass.M2.Expression $h@@0))))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |4774|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprAnd| |a#57#0#0@@0| |a#57#1#0@@0|) Tclass.M2.Expression $h@@0))
)))
(assert (forall ((|a#65#0#0@@0| T@U) (|a#65#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprOr| |a#65#0#0@@0| |a#65#1#0@@0|) Tclass.M2.Expression $h@@1)  (and ($IsAlloc DatatypeTypeType |a#65#0#0@@0| Tclass.M2.Expression $h@@1) ($IsAlloc DatatypeTypeType |a#65#1#0@@0| Tclass.M2.Expression $h@@1))))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |4787|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprOr| |a#65#0#0@@0| |a#65#1#0@@0|) Tclass.M2.Expression $h@@1))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|$w#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2|) |$w#0@@0|))  (and ($IsBox |$w#0@@0| |l#0@@0|) (and (|Set#IsMember| |l#1@@0| |$w#0@@0|) (|Set#IsMember| |l#2| |$w#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.153:8|
 :skolemid |7204|
 :pattern ( (MapType0Select BoxType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2|) |$w#0@@0|))
)))
(assert ($AlwaysAllocated Tclass.M2.Path))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@2))
 :qid |unknown.0:0|
 :skolemid |3265|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2) ($Is DatatypeTypeType d@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((M2.Tuple$A T@U) (M2.Tuple$B T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.M2.Tuple M2.Tuple$A M2.Tuple$B)) (M2.Tuple.Pair_q d@@3))
 :qid |unknown.0:0|
 :skolemid |4952|
 :pattern ( (M2.Tuple.Pair_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.M2.Tuple M2.Tuple$A M2.Tuple$B)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@8| T@U) (|st#0@@12| T@U) ) (!  (=> (or (|M2.__default.GetSt#canCall| (Lit BoxType |p#0@@8|) (Lit DatatypeTypeType |st#0@@12|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@8| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@12| Tclass.M2.State)) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@12|))) (Lit BoxType |p#0@@8|))))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@12|)) (= (M2.__default.GetSt (Lit BoxType |p#0@@8|) (Lit DatatypeTypeType |st#0@@12|)) (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M2.State.m (Lit DatatypeTypeType |st#0@@12|)))) (Lit BoxType |p#0@@8|)))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |4261|
 :pattern ( (M2.__default.GetSt (Lit BoxType |p#0@@8|) (Lit DatatypeTypeType |st#0@@12|)))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2922|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((x@@6 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@6))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |3029|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@6))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|p#0@@9| T@U) (|st#0@@13| T@U) ) (!  (=> (or (|M2.__default.Oracle#canCall| |p#0@@9| |st#0@@13|) (and (< 4 $FunctionContextHeight) (and ($IsBox |p#0@@9| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@13| Tclass.M2.State)))) ($IsBox (M2.__default.Oracle |p#0@@9| |st#0@@13|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |3818|
 :pattern ( (M2.__default.Oracle |p#0@@9| |st#0@@13|))
))))
(assert (forall (($ly@@5 T@U) (|p#0@@10| T@U) (|cert#0@@1| T@U) (|deps#0@@6| T@U) (|st#0@@14| T@U) ) (! (= (M2.__default.CollectDependencies ($LS $ly@@5) |p#0@@10| |cert#0@@1| |deps#0@@6| |st#0@@14|) (M2.__default.CollectDependencies $ly@@5 |p#0@@10| |cert#0@@1| |deps#0@@6| |st#0@@14|))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |3864|
 :pattern ( (M2.__default.CollectDependencies ($LS $ly@@5) |p#0@@10| |cert#0@@1| |deps#0@@6| |st#0@@14|))
)))
(assert (forall (($ly@@6 T@U) (|context#0@@0| T@U) (|args#0@@1| T@U) (|stOrig#0@@0| T@U) (|env#0@@0| T@U) ) (! (= (M2.__default.evalArgs ($LS $ly@@6) |context#0@@0| |args#0@@1| |stOrig#0@@0| |env#0@@0|) (M2.__default.evalArgs $ly@@6 |context#0@@0| |args#0@@1| |stOrig#0@@0| |env#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |4537|
 :pattern ( (M2.__default.evalArgs ($LS $ly@@6) |context#0@@0| |args#0@@1| |stOrig#0@@0| |env#0@@0|))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|M2.Tuple#Equal| a@@8 b@@5)  (and (= (M2.Tuple.fst a@@8) (M2.Tuple.fst b@@5)) (= (M2.Tuple.snd a@@8) (M2.Tuple.snd b@@5))))
 :qid |unknown.0:0|
 :skolemid |4953|
 :pattern ( (|M2.Tuple#Equal| a@@8 b@@5))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#M2.Literal.litTrue|) |##M2.Literal.litTrue|))
(assert (= (DatatypeCtorId |#M2.Literal.litFalse|) |##M2.Literal.litFalse|))
(assert (= (DatatypeCtorId |#M2.Literal.litUndefined|) |##M2.Literal.litUndefined|))
(assert (= (DatatypeCtorId |#M2.Literal.litNull|) |##M2.Literal.litNull|))
(assert (= (DatatypeCtorId |#M2.Primitive.primCreatePath|) |##M2.Primitive.primCreatePath|))
(assert (= (DatatypeCtorId |#M2.Primitive.primExec|) |##M2.Primitive.primExec|))
(assert (= (DatatypeCtorId |#M2.Reason.rCompatibility|) |##M2.Reason.rCompatibility|))
(assert (= (DatatypeCtorId |#M2.Reason.rValidity|) |##M2.Reason.rValidity|))
(assert (forall ((s@@1 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@1))) (= (|Seq#Drop| (|Seq#Build| s@@1 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@1 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |3051|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@1 v@@0) n))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@7 T@U) (|p#0@@11| T@U) (|cert#0@@2| T@U) (|st#0@@15| T@U) ) (!  (=> (or (|M2.__default.OracleWF#canCall| |p#0@@11| |cert#0@@2| |st#0@@15|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@11| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@2| Tclass.M2.WFCertificate)) ($Is DatatypeTypeType |st#0@@15| Tclass.M2.State)) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@11| |cert#0@@2|)))) (and (and (and (and (|M2.__default.LocInv__Cmd#canCall| |p#0@@11|) (|M2.__default.LocInv__Deps#canCall| |p#0@@11|)) (|M2.__default.LocInv__Exp#canCall| |p#0@@11|)) (let ((|e#0@@1| (M2.__default.LocInv__Exp |p#0@@11|)))
(let ((|deps#0@@7| (M2.__default.LocInv__Deps |p#0@@11|)))
(let ((|cmd#0@@4| (M2.__default.LocInv__Cmd |p#0@@11|)))
 (and (|M2.__default.CollectDependencies#canCall| |p#0@@11| |cert#0@@2| |deps#0@@7| |st#0@@15|) (|M2.__default.RunTool#canCall| |cmd#0@@4| (M2.__default.CollectDependencies $ly@@7 |p#0@@11| |cert#0@@2| |deps#0@@7| |st#0@@15|) |e#0@@1|)))))) (= (M2.__default.OracleWF ($LS $ly@@7) |p#0@@11| |cert#0@@2| |st#0@@15|) (let ((|e#0@@2| (M2.__default.LocInv__Exp |p#0@@11|)))
(let ((|deps#0@@8| (M2.__default.LocInv__Deps |p#0@@11|)))
(let ((|cmd#0@@5| (M2.__default.LocInv__Cmd |p#0@@11|)))
(M2.__default.RunTool |cmd#0@@5| (M2.__default.CollectDependencies $ly@@7 |p#0@@11| |cert#0@@2| |deps#0@@8| |st#0@@15|) |e#0@@2|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |3848|
 :pattern ( (M2.__default.OracleWF ($LS $ly@@7) |p#0@@11| |cert#0@@2| |st#0@@15|))
))))
(assert (forall ((|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.WFCertificate.Cert| |a#2#0#0| |a#2#1#0|) Tclass.M2.WFCertificate)  (and ($IsBox |a#2#0#0| Tclass.M2.Path) ($Is SetType |a#2#1#0| (TSet Tclass.M2.WFCertificate))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4664|
 :pattern ( ($Is DatatypeTypeType (|#M2.WFCertificate.Cert| |a#2#0#0| |a#2#1#0|) Tclass.M2.WFCertificate))
)))
(assert (forall ((|a#73#0#0| T@U) (|a#73#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Expression.exprInvocation| |a#73#0#0| |a#73#1#0|) Tclass.M2.Expression)  (and ($Is DatatypeTypeType |a#73#0#0| Tclass.M2.Expression) ($Is SeqType |a#73#1#0| (TSeq Tclass.M2.Expression))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4799|
 :pattern ( ($Is DatatypeTypeType (|#M2.Expression.exprInvocation| |a#73#0#0| |a#73#1#0|) Tclass.M2.Expression))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@9 b@@6) b@@6) (|Set#Union| a@@9 b@@6))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |2935|
 :pattern ( (|Set#Union| (|Set#Union| a@@9 b@@6) b@@6))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|paths#0@@0| T@U) (|st#0@@16| T@U) ) (!  (=> (or (|M2.__default.Restrict#canCall| |paths#0@@0| |st#0@@16|) (and (< 3 $FunctionContextHeight) (and ($Is SetType |paths#0@@0| (TSet Tclass.M2.Path)) ($Is DatatypeTypeType |st#0@@16| Tclass.M2.State)))) (and (forall ((|p#0@@12| T@U) ) (!  (=> ($IsBox |p#0@@12| Tclass.M2.Path) (and (=> (|Set#IsMember| |paths#0@@0| |p#0@@12|) (|M2.__default.DomSt#canCall| |st#0@@16|)) (=> (and (|Set#IsMember| |paths#0@@0| |p#0@@12|) (|Set#IsMember| (M2.__default.DomSt |st#0@@16|) |p#0@@12|)) (|M2.__default.GetSt#canCall| |p#0@@12| |st#0@@16|))))
 :qid |CloudMakeParallelBuildsdfy.475:9|
 :skolemid |3506|
 :pattern ( (M2.__default.GetSt |p#0@@12| |st#0@@16|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@16|) |p#0@@12|))
 :pattern ( (|Set#IsMember| |paths#0@@0| |p#0@@12|))
)) (= (M2.__default.Restrict |paths#0@@0| |st#0@@16|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M2.Path |paths#0@@0| (M2.__default.DomSt |st#0@@16|))) (|lambda#1| |st#0@@16|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.473:27|
 :skolemid |3507|
 :pattern ( (M2.__default.Restrict |paths#0@@0| |st#0@@16|))
))))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@10 b@@7) o@@1)  (and (|Set#IsMember| a@@10 o@@1) (not (|Set#IsMember| b@@7 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |2940|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@10 b@@7) o@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@6 T@U) (|p#0@@13| T@U) ) (!  (=> (or (|M2.__default.GetCert#canCall| |p#0@@13|) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@6) ($IsBox |p#0@@13| Tclass.M2.Path)) (M2.__default.WellFounded |p#0@@13|)))) (and (|$let#3$canCall| |p#0@@13|) (= (M2.__default.GetCert |p#0@@13|) (let ((|c#0| (|$let#3_c| |p#0@@13|)))
|c#0|))))
 :qid |CloudMakeParallelBuildsdfy.627:18|
 :skolemid |3797|
 :pattern ( (M2.__default.GetCert |p#0@@13|) ($IsGoodHeap $Heap@@6))
))))
(assert (forall ((s@@2 T@U) (t@@1 T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@2)) (and (= (|Seq#Take| (|Seq#Append| s@@2 t@@1) n@@0) s@@2) (= (|Seq#Drop| (|Seq#Append| s@@2 t@@1) n@@0) t@@1)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |3046|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@2 t@@1) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@2 t@@1) n@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@7 T@U) (|cmd#0@@6| T@U) (|deps#0@@9| T@U) (|exp#0@@0| T@U) ) (!  (=> (and (or (|M2.__default.RunTool#canCall| |cmd#0@@6| |deps#0@@9| |exp#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@6| (TSeq TChar)) ($IsAlloc SeqType |cmd#0@@6| (TSeq TChar) $Heap@@7)) (and ($Is MapType |deps#0@@9| (TMap Tclass.M2.Path Tclass.M2.Artifact)) ($IsAlloc MapType |deps#0@@9| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@7))) (and ($Is SeqType |exp#0@@0| (TSeq TChar)) ($IsAlloc SeqType |exp#0@@0| (TSeq TChar) $Heap@@7))))) ($IsGoodHeap $Heap@@7)) ($IsAllocBox (M2.__default.RunTool |cmd#0@@6| |deps#0@@9| |exp#0@@0|) Tclass.M2.Artifact $Heap@@7))
 :qid |CloudMakeParallelBuildsdfy.507:18|
 :skolemid |3588|
 :pattern ( ($IsAllocBox (M2.__default.RunTool |cmd#0@@6| |deps#0@@9| |exp#0@@0|) Tclass.M2.Artifact $Heap@@7))
))))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass.M2.WFCertificate) (M2.WFCertificate.Cert_q d@@4))
 :qid |unknown.0:0|
 :skolemid |4673|
 :pattern ( (M2.WFCertificate.Cert_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.M2.WFCertificate))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> ($Is DatatypeTypeType d@@5 Tclass.M2.State) (M2.State.StateCons_q d@@5))
 :qid |unknown.0:0|
 :skolemid |4688|
 :pattern ( (M2.State.StateCons_q d@@5) ($Is DatatypeTypeType d@@5 Tclass.M2.State))
)))
(assert (forall ((|a#73#0#0@@0| T@U) (|a#73#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprInvocation| |a#73#0#0@@0| |a#73#1#0@@0|) Tclass.M2.Expression $h@@2)  (and ($IsAlloc DatatypeTypeType |a#73#0#0@@0| Tclass.M2.Expression $h@@2) ($IsAlloc SeqType |a#73#1#0@@0| (TSeq Tclass.M2.Expression) $h@@2))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4800|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprInvocation| |a#73#0#0@@0| |a#73#1#0@@0|) Tclass.M2.Expression $h@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@17| T@U) (|st'#0| T@U) ) (!  (=> (or (|M2.__default.Union#canCall| |st#0@@17| |st'#0|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@17| Tclass.M2.State) ($Is DatatypeTypeType |st'#0| Tclass.M2.State)))) (and (let ((|result#0| (M2.__default.Union |st#0@@17| |st'#0|)))
 (and (|Set#Equal| (M2.__default.DomSt |result#0|) (|Set#Union| (M2.__default.DomSt |st#0@@17|) (M2.__default.DomSt |st'#0|))) (forall ((|p#0@@14| T@U) ) (!  (=> ($IsBox |p#0@@14| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |result#0|) |p#0@@14|) (= (M2.__default.GetSt |p#0@@14| |result#0|) (M2.__default.GetSt |p#0@@14| (ite (|Set#IsMember| (M2.__default.DomSt |st#0@@17|) |p#0@@14|) |st#0@@17| |st'#0|)))))
 :qid |CloudMakeParallelBuildsdfy.27:14|
 :skolemid |4291|
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@17|) |p#0@@14|))
 :pattern ( (M2.__default.GetSt |p#0@@14| |result#0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |result#0|) |p#0@@14|))
)))) ($Is DatatypeTypeType (M2.__default.Union |st#0@@17| |st'#0|) Tclass.M2.State)))
 :qid |CloudMakeParallelBuildsdfy.23:24|
 :skolemid |4292|
 :pattern ( (M2.__default.Union |st#0@@17| |st'#0|))
))))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0@@0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0@@0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |3253|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((M2.Tuple$A@@0 T@U) (M2.Tuple$B@@0 T@U) (|a#157#0#0| T@U) (|a#157#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Tuple.Pair| |a#157#0#0| |a#157#1#0|) (Tclass.M2.Tuple M2.Tuple$A@@0 M2.Tuple$B@@0))  (and ($IsBox |a#157#0#0| M2.Tuple$A@@0) ($IsBox |a#157#1#0| M2.Tuple$B@@0)))
 :qid |unknown.0:0|
 :skolemid |4940|
 :pattern ( ($Is DatatypeTypeType (|#M2.Tuple.Pair| |a#157#0#0| |a#157#1#0|) (Tclass.M2.Tuple M2.Tuple$A@@0 M2.Tuple$B@@0)))
)))
(assert ($Is DatatypeTypeType |#M2.Literal.litTrue| Tclass.M2.Literal))
(assert ($Is DatatypeTypeType |#M2.Literal.litFalse| Tclass.M2.Literal))
(assert ($Is DatatypeTypeType |#M2.Literal.litUndefined| Tclass.M2.Literal))
(assert ($Is DatatypeTypeType |#M2.Literal.litNull| Tclass.M2.Literal))
(assert ($Is DatatypeTypeType |#M2.Primitive.primCreatePath| Tclass.M2.Primitive))
(assert ($Is DatatypeTypeType |#M2.Primitive.primExec| Tclass.M2.Primitive))
(assert ($Is DatatypeTypeType |#M2.Reason.rCompatibility| Tclass.M2.Reason))
(assert ($Is DatatypeTypeType |#M2.Reason.rValidity| Tclass.M2.Reason))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@15| T@U) ) (!  (=> (or (|M2.__default.WellFounded#canCall| |p#0@@15|) (and (< 2 $FunctionContextHeight) ($IsBox |p#0@@15| Tclass.M2.Path))) (and (forall ((|cert#0@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |cert#0@@3| Tclass.M2.WFCertificate) (|M2.__default.CheckWellFounded#canCall| |p#0@@15| |cert#0@@3|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3532|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@15| |cert#0@@3|))
)) (= (M2.__default.WellFounded |p#0@@15|) (exists ((|cert#0@@4| T@U) ) (!  (and ($Is DatatypeTypeType |cert#0@@4| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@15| |cert#0@@4|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3531|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@15| |cert#0@@4|))
)))))
 :qid |CloudMakeParallelBuildsdfy.17:31|
 :skolemid |3533|
 :pattern ( (M2.__default.WellFounded |p#0@@15|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0@@1| T@U) ) (!  (=> (or (|M2.__default.Arity#canCall| (Lit DatatypeTypeType |prim#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0@@1| Tclass.M2.Primitive))) (= (M2.__default.Arity (Lit DatatypeTypeType |prim#0@@1|)) (ite (M2.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@1|)) 1 3)))
 :qid |CloudMakeParallelBuildsdfy.282:24|
 :weight 3
 :skolemid |4558|
 :pattern ( (M2.__default.Arity (Lit DatatypeTypeType |prim#0@@1|)))
))))
(assert (forall (($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc DatatypeTypeType |#M2.Literal.litTrue| Tclass.M2.Literal $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4832|
 :pattern ( ($IsAlloc DatatypeTypeType |#M2.Literal.litTrue| Tclass.M2.Literal $h@@3))
)))
(assert (forall (($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc DatatypeTypeType |#M2.Literal.litFalse| Tclass.M2.Literal $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4835|
 :pattern ( ($IsAlloc DatatypeTypeType |#M2.Literal.litFalse| Tclass.M2.Literal $h@@4))
)))
(assert (forall (($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) ($IsAlloc DatatypeTypeType |#M2.Literal.litUndefined| Tclass.M2.Literal $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4838|
 :pattern ( ($IsAlloc DatatypeTypeType |#M2.Literal.litUndefined| Tclass.M2.Literal $h@@5))
)))
(assert (forall (($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) ($IsAlloc DatatypeTypeType |#M2.Literal.litNull| Tclass.M2.Literal $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4841|
 :pattern ( ($IsAlloc DatatypeTypeType |#M2.Literal.litNull| Tclass.M2.Literal $h@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@7| T@U) (|deps#0@@10| T@U) (|exps#0@@3| T@U) (|paths#0@@1| T@U) ) (!  (=> (or (|M2.__default.OneToOne#canCall| |cmd#0@@7| |deps#0@@10| |exps#0@@3| |paths#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@7| (TSeq TChar)) ($Is SetType |deps#0@@10| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@3| (TSet (TSeq TChar)))) ($Is SetType |paths#0@@1| (TSet Tclass.M2.Path))))) (and (forall ((|e#0@@3| T@U) ) (!  (=> ($Is SeqType |e#0@@3| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0@@3|)) (|M2.__default.Loc#canCall| |cmd#0@@7| |deps#0@@10| |e#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |4388|
 :pattern ( (M2.__default.Loc |cmd#0@@7| |deps#0@@10| |e#0@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0@@3|)))
)) (= (M2.__default.OneToOne |cmd#0@@7| |deps#0@@10| |exps#0@@3| |paths#0@@1|) (forall ((|e#0@@4| T@U) ) (!  (=> ($Is SeqType |e#0@@4| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0@@4|)) (|Set#IsMember| |paths#0@@1| (M2.__default.Loc |cmd#0@@7| |deps#0@@10| |e#0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |4387|
 :pattern ( (M2.__default.Loc |cmd#0@@7| |deps#0@@10| |e#0@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#0@@4|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.89:28|
 :skolemid |4389|
 :pattern ( (M2.__default.OneToOne |cmd#0@@7| |deps#0@@10| |exps#0@@3| |paths#0@@1|))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($ly@@8 T@U) (|context#0@@1| T@U) (|args#0@@2| T@U) (|stOrig#0@@1| T@U) (|env#0@@1| T@U) ) (!  (=> (or (|M2.__default.evalArgs#canCall| |context#0@@1| |args#0@@2| |stOrig#0@@1| |env#0@@1|) (and (< 7 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@1| Tclass.M2.Expression) ($Is SeqType |args#0@@2| (TSeq Tclass.M2.Expression))) ($Is DatatypeTypeType |stOrig#0@@1| Tclass.M2.State)) ($IsBox |env#0@@1| Tclass.M2.Env)) (and (M2.__default.ValidEnv |env#0@@1|) (forall ((|arg#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#0@@0| Tclass.M2.Expression) (=> (|Seq#Contains| |args#0@@2| ($Box DatatypeTypeType |arg#0@@0|)) (< (DtRank |arg#0@@0|) (DtRank |context#0@@1|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |4539|
 :pattern ( (|Seq#Contains| |args#0@@2| ($Box DatatypeTypeType |arg#0@@0|)))
)))))) ($Is DatatypeTypeType (M2.__default.evalArgs $ly@@8 |context#0@@1| |args#0@@2| |stOrig#0@@1| |env#0@@1|) (Tclass.M2.Tuple (TSeq Tclass.M2.Expression) (TSet Tclass.M2.State))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |4540|
 :pattern ( (M2.__default.evalArgs $ly@@8 |context#0@@1| |args#0@@2| |stOrig#0@@1| |env#0@@1|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@16| T@U) (|st#0@@18| T@U) ) (!  (=> (or (|M2.__default.GetSt#canCall| |p#0@@16| |st#0@@18|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@16| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@18| Tclass.M2.State)) (|Set#IsMember| (M2.__default.DomSt |st#0@@18|) |p#0@@16|)))) ($IsBox (M2.__default.GetSt |p#0@@16| |st#0@@18|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |4256|
 :pattern ( (M2.__default.GetSt |p#0@@16| |st#0@@18|))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|M2.Literal#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |unknown.0:0|
 :skolemid |4915|
 :pattern ( (|M2.Literal#Equal| a@@11 b@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|M2.Primitive#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |unknown.0:0|
 :skolemid |4925|
 :pattern ( (|M2.Primitive#Equal| a@@12 b@@9))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|M2.Reason#Equal| a@@13 b@@10) (= a@@13 b@@10))
 :qid |unknown.0:0|
 :skolemid |4935|
 :pattern ( (|M2.Reason#Equal| a@@13 b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|M2.Tuple#Equal| a@@14 b@@11) (= a@@14 b@@11))
 :qid |unknown.0:0|
 :skolemid |4954|
 :pattern ( (|M2.Tuple#Equal| a@@14 b@@11))
)))
(assert (forall ((s@@3 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@3 n@@1) s@@3))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |3052|
 :pattern ( (|Seq#Drop| s@@3 n@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@8 T@U) (|p#0@@17| T@U) (|st#0@@19| T@U) ) (!  (=> (and (or (|M2.__default.GetSt#canCall| |p#0@@17| |st#0@@19|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@17| Tclass.M2.Path) ($IsAllocBox |p#0@@17| Tclass.M2.Path $Heap@@8)) (and ($Is DatatypeTypeType |st#0@@19| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@19| Tclass.M2.State $Heap@@8))) (|Set#IsMember| (M2.__default.DomSt |st#0@@19|) |p#0@@17|)))) ($IsGoodHeap $Heap@@8)) ($IsAllocBox (M2.__default.GetSt |p#0@@17| |st#0@@19|) Tclass.M2.Artifact $Heap@@8))
 :qid |CloudMakeParallelBuildsdfy.435:18|
 :skolemid |4257|
 :pattern ( ($IsAllocBox (M2.__default.GetSt |p#0@@17| |st#0@@19|) Tclass.M2.Artifact $Heap@@8))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($ly@@9 T@U) (|expr#0| T@U) (|st#0@@20| T@U) (|env#0@@2| T@U) ) (!  (=> (or (|M2.__default.eval#canCall| (Lit DatatypeTypeType |expr#0|) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)) (and (< 7 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0| Tclass.M2.Expression) ($Is DatatypeTypeType |st#0@@20| Tclass.M2.State)) ($IsBox |env#0@@2| Tclass.M2.Env)) (M2.__default.ValidEnv (Lit BoxType |env#0@@2|))))) (and (and (|M2.__default.Value#canCall| (Lit DatatypeTypeType |expr#0|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.__default.Value (Lit DatatypeTypeType |expr#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0|))))) (|M2.__default.GetEnv#canCall| (Lit BoxType (M2.Expression.id (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |env#0@@2|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprIf_q (Lit DatatypeTypeType |expr#0|))))) (and (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)) (let ((|st'#8| ($Unbox DatatypeTypeType (M2.Tuple.snd (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|cond'#2| ($Unbox DatatypeTypeType (M2.Tuple.fst (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
 (and (and (=> (M2.Expression.exprLiteral_q |cond'#2|) (|$IsA#M2.Literal| (M2.Expression.lit |cond'#2|))) (=> (and (M2.Expression.exprLiteral_q |cond'#2|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#2|) |#M2.Literal.litTrue|)) (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.ifTrue (Lit DatatypeTypeType |expr#0|))) |st'#8| (Lit BoxType |env#0@@2|)))) (=> (not (and (M2.Expression.exprLiteral_q |cond'#2|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#2|) |#M2.Literal.litTrue|))) (and (=> (M2.Expression.exprLiteral_q |cond'#2|) (|$IsA#M2.Literal| (M2.Expression.lit |cond'#2|))) (=> (and (M2.Expression.exprLiteral_q |cond'#2|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#2|) |#M2.Literal.litFalse|)) (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.ifFalse (Lit DatatypeTypeType |expr#0|))) |st'#8| (Lit BoxType |env#0@@2|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprIf_q (Lit DatatypeTypeType |expr#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0|))))) (and (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)) (let ((|st'#9| ($Unbox DatatypeTypeType (M2.Tuple.snd (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|conj0'#2| ($Unbox DatatypeTypeType (M2.Tuple.fst (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
 (and (and (=> (M2.Expression.exprLiteral_q |conj0'#2|) (|$IsA#M2.Literal| (M2.Expression.lit |conj0'#2|))) (=> (and (M2.Expression.exprLiteral_q |conj0'#2|) (|M2.Literal#Equal| (M2.Expression.lit |conj0'#2|) |#M2.Literal.litTrue|)) (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.conj1 (Lit DatatypeTypeType |expr#0|))) |st'#9| (Lit BoxType |env#0@@2|)))) (=> (not (and (M2.Expression.exprLiteral_q |conj0'#2|) (|M2.Literal#Equal| (M2.Expression.lit |conj0'#2|) |#M2.Literal.litTrue|))) (=> (M2.Expression.exprLiteral_q |conj0'#2|) (|$IsA#M2.Literal| (M2.Expression.lit |conj0'#2|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprOr_q (Lit DatatypeTypeType |expr#0|))))) (and (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)) (let ((|st'#10| ($Unbox DatatypeTypeType (M2.Tuple.snd (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|disj0'#2| ($Unbox DatatypeTypeType (M2.Tuple.fst (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
 (and (=> (M2.Expression.exprLiteral_q |disj0'#2|) (|$IsA#M2.Literal| (M2.Expression.lit |disj0'#2|))) (=> (not (and (M2.Expression.exprLiteral_q |disj0'#2|) (|M2.Literal#Equal| (M2.Expression.lit |disj0'#2|) |#M2.Literal.litTrue|))) (and (=> (M2.Expression.exprLiteral_q |disj0'#2|) (|$IsA#M2.Literal| (M2.Expression.lit |disj0'#2|))) (=> (and (M2.Expression.exprLiteral_q |disj0'#2|) (|M2.Literal#Equal| (M2.Expression.lit |disj0'#2|) |#M2.Literal.litFalse|)) (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.disj1 (Lit DatatypeTypeType |expr#0|))) |st'#10| (Lit BoxType |env#0@@2|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprOr_q (Lit DatatypeTypeType |expr#0|)))))) (=> (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0|))))) (and (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)) (let ((|st'#11| ($Unbox DatatypeTypeType (M2.Tuple.snd (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|fun'#2| ($Unbox DatatypeTypeType (M2.Tuple.fst (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
 (and (|M2.__default.evalArgs#canCall| (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M2.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)) (let ((|sts'#2| ($Unbox SetType (M2.Tuple.snd (Lit DatatypeTypeType (M2.__default.evalArgs ($LS $ly@@9) (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M2.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|args'#2| ($Unbox SeqType (M2.Tuple.fst (Lit DatatypeTypeType (M2.__default.evalArgs ($LS $ly@@9) (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M2.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|sts''#2| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#11|)) |sts'#2|)))
 (and (|M2.__default.Compatible#canCall| |sts''#2|) (=> (M2.__default.Compatible |sts''#2|) (and (|M2.__default.Combine#canCall| |sts''#2|) (let ((|stCombined#2| (M2.__default.Combine ($LS $LZ) |sts''#2|)))
 (=> (and (M2.Expression.exprLiteral_q |fun'#2|) (M2.Literal.litPrimitive_q (M2.Expression.lit |fun'#2|))) (=> (M2.Primitive.primExec_q (M2.Literal.prim (M2.Expression.lit |fun'#2|))) (and (and (|M2.__default.Arity#canCall| (Lit DatatypeTypeType |#M2.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#2|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (|M2.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M2.Primitive.primExec|) |args'#2| |stCombined#2|))) (=> (and (= (|Seq#Length| |args'#2|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (M2.__default.ValidArgs (Lit DatatypeTypeType |#M2.Primitive.primExec|) |args'#2| |stCombined#2|)) (and (|M2.__default.exec#canCall| (M2.Literal.str (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 0))))) (M2.Literal.paths (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 1))))) (M2.Literal.strs (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 2))))) |stCombined#2|) (let ((|ps#2| (M2.__default.exec (M2.Literal.str (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 0))))) (M2.Literal.paths (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 1))))) (M2.Literal.strs (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 2))))) |stCombined#2|)))
 (and (M2.Tuple.Pair_q |ps#2|) (M2.Tuple.Pair_q |ps#2|)))))))))))))))))))))))))))))) (= (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType |expr#0|) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)) (ite (M2.__default.Value (Lit DatatypeTypeType |expr#0|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))) (ite (M2.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (M2.__default.GetEnv (Lit BoxType (M2.Expression.id (Lit DatatypeTypeType |expr#0|))) (Lit BoxType |env#0@@2|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))) (ite (M2.Expression.exprIf_q (Lit DatatypeTypeType |expr#0|)) (let ((|st'#8@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|cond'#2@@0| ($Unbox DatatypeTypeType (M2.Tuple.fst (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.cond (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(ite  (and (M2.Expression.exprLiteral_q |cond'#2@@0|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#2@@0|) |#M2.Literal.litTrue|)) (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.ifTrue (Lit DatatypeTypeType |expr#0|))) |st'#8@@0| (Lit BoxType |env#0@@2|)) (ite  (and (M2.Expression.exprLiteral_q |cond'#2@@0|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#2@@0|) |#M2.Literal.litFalse|)) (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.ifFalse (Lit DatatypeTypeType |expr#0|))) |st'#8@@0| (Lit BoxType |env#0@@2|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))))))) (ite (M2.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0|)) (let ((|st'#9@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|conj0'#2@@0| ($Unbox DatatypeTypeType (M2.Tuple.fst (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.conj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(ite  (and (M2.Expression.exprLiteral_q |conj0'#2@@0|) (|M2.Literal#Equal| (M2.Expression.lit |conj0'#2@@0|) |#M2.Literal.litTrue|)) (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.conj1 (Lit DatatypeTypeType |expr#0|))) |st'#9@@0| (Lit BoxType |env#0@@2|)) (ite  (and (M2.Expression.exprLiteral_q |conj0'#2@@0|) (|M2.Literal#Equal| (M2.Expression.lit |conj0'#2@@0|) |#M2.Literal.litFalse|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprLiteral| (Lit DatatypeTypeType |#M2.Literal.litFalse|)))) ($Box DatatypeTypeType |st'#9@@0|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))))))) (ite (M2.Expression.exprOr_q (Lit DatatypeTypeType |expr#0|)) (let ((|st'#10@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|disj0'#2@@0| ($Unbox DatatypeTypeType (M2.Tuple.fst (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.disj0 (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(ite  (and (M2.Expression.exprLiteral_q |disj0'#2@@0|) (|M2.Literal#Equal| (M2.Expression.lit |disj0'#2@@0|) |#M2.Literal.litTrue|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprLiteral| (Lit DatatypeTypeType |#M2.Literal.litTrue|)))) ($Box DatatypeTypeType |st'#10@@0|)) (ite  (and (M2.Expression.exprLiteral_q |disj0'#2@@0|) (|M2.Literal#Equal| (M2.Expression.lit |disj0'#2@@0|) |#M2.Literal.litFalse|)) (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.disj1 (Lit DatatypeTypeType |expr#0|))) |st'#10@@0| (Lit BoxType |env#0@@2|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))))))) (ite (M2.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0|)) (let ((|st'#11@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|fun'#2@@0| ($Unbox DatatypeTypeType (M2.Tuple.fst (Lit DatatypeTypeType (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType (M2.Expression.fun (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|sts'#2@@0| ($Unbox SetType (M2.Tuple.snd (Lit DatatypeTypeType (M2.__default.evalArgs ($LS $ly@@9) (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M2.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|args'#2@@0| ($Unbox SeqType (M2.Tuple.fst (Lit DatatypeTypeType (M2.__default.evalArgs ($LS $ly@@9) (Lit DatatypeTypeType |expr#0|) (Lit SeqType (M2.Expression.args (Lit DatatypeTypeType |expr#0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))))))
(let ((|sts''#2@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#11@@0|)) |sts'#2@@0|)))
(ite  (not (M2.__default.Compatible |sts''#2@@0|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rCompatibility|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))) (let ((|stCombined#2@@0| (M2.__default.Combine ($LS $LZ) |sts''#2@@0|)))
(ite  (and (M2.Expression.exprLiteral_q |fun'#2@@0|) (M2.Literal.litPrimitive_q (M2.Expression.lit |fun'#2@@0|))) (ite (M2.Primitive.primExec_q (M2.Literal.prim (M2.Expression.lit |fun'#2@@0|))) (ite  (and (= (|Seq#Length| |args'#2@@0|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (M2.__default.ValidArgs (Lit DatatypeTypeType |#M2.Primitive.primExec|) |args'#2@@0| |stCombined#2@@0|)) (let ((|ps#2@@0| (M2.__default.exec (M2.Literal.str (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 0))))) (M2.Literal.paths (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 1))))) (M2.Literal.strs (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 2))))) |stCombined#2@@0|)))
(|#M2.Tuple.Pair| ($Box DatatypeTypeType (|#M2.Expression.exprLiteral| (|#M2.Literal.litArrOfPaths| ($Unbox SetType (M2.Tuple.fst |ps#2@@0|))))) (M2.Tuple.snd |ps#2@@0|))) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|)))) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|)))) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))))))))))) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :weight 3
 :skolemid |4517|
 :pattern ( (M2.__default.eval ($LS $ly@@9) (Lit DatatypeTypeType |expr#0|) (Lit DatatypeTypeType |st#0@@20|) (Lit BoxType |env#0@@2|)))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|prim#0@@2| T@U) (|args#0@@3| T@U) (|st#0@@21| T@U) ) (!  (=> (or (|M2.__default.ValidArgs#canCall| (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@3|) (Lit DatatypeTypeType |st#0@@21|)) (and (< 6 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@2| Tclass.M2.Primitive) ($Is SeqType |args#0@@3| (TSeq Tclass.M2.Expression))) ($Is DatatypeTypeType |st#0@@21| Tclass.M2.State)) (and (=> (M2.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@2|)) (= (|Seq#Length| (Lit SeqType |args#0@@3|)) (LitInt 3))) (=> (M2.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)) (= (|Seq#Length| (Lit SeqType |args#0@@3|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)))))) (let ((|exps#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 2)))))
(let ((|deps#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 1)))))
(let ((|cmd#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0)))))
 (=> (M2.Expression.exprLiteral_q |cmd#5|) (=> (M2.Literal.litString_q (M2.Expression.lit |cmd#5|)) (=> (M2.Expression.exprLiteral_q |deps#5|) (=> (M2.Literal.litArrOfPaths_q (M2.Expression.lit |deps#5|)) (=> (M2.Expression.exprLiteral_q |exps#5|) (=> (M2.Literal.litArrOfStrings_q (M2.Expression.lit |exps#5|)) (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@21|)) (=> (|Set#Subset| (M2.Literal.paths (M2.Expression.lit |deps#5|)) (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@21|))) (|M2.__default.Pre#canCall| (M2.Literal.str (M2.Expression.lit |cmd#5|)) (M2.Literal.paths (M2.Expression.lit |deps#5|)) (M2.Literal.strs (M2.Expression.lit |exps#5|)) (Lit DatatypeTypeType |st#0@@21|)))))))))))))) (= (M2.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@3|) (Lit DatatypeTypeType |st#0@@21|)) (ite (M2.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)) false (let ((|exps#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 2)))))
(let ((|deps#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 1)))))
(let ((|cmd#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0)))))
 (and (and (and (and (and (and (and (M2.Expression.exprLiteral_q |cmd#4|) (M2.Literal.litString_q (M2.Expression.lit |cmd#4|))) (M2.Expression.exprLiteral_q |deps#4|)) (M2.Literal.litArrOfPaths_q (M2.Expression.lit |deps#4|))) (M2.Expression.exprLiteral_q |exps#4|)) (M2.Literal.litArrOfStrings_q (M2.Expression.lit |exps#4|))) (|Set#Subset| (M2.Literal.paths (M2.Expression.lit |deps#4|)) (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@21|)))) (M2.__default.Pre (M2.Literal.str (M2.Expression.lit |cmd#4|)) (M2.Literal.paths (M2.Expression.lit |deps#4|)) (M2.Literal.strs (M2.Expression.lit |exps#4|)) (Lit DatatypeTypeType |st#0@@21|))))))))))
 :qid |CloudMakeParallelBuildsdfy.289:29|
 :weight 3
 :skolemid |4563|
 :pattern ( (M2.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@3|) (Lit DatatypeTypeType |st#0@@21|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@9 T@U) (|p#0@@18| T@U) ) (!  (=> (or (|M2.__default.OracleArbitrary#canCall| |p#0@@18|) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@9) ($IsBox |p#0@@18| Tclass.M2.Path)))) (and |$let#6$canCall| (= (M2.__default.OracleArbitrary |p#0@@18|) (let ((|a#0@@1| |$let#6_a|))
|a#0@@1|))))
 :qid |CloudMakeParallelBuildsdfy.648:18|
 :skolemid |3841|
 :pattern ( (M2.__default.OracleArbitrary |p#0@@18|) ($IsGoodHeap $Heap@@9))
))))
(assert (forall ((x@@7 Int) ) (! (= (LitInt x@@7) x@@7)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2814|
 :pattern ( (LitInt x@@7))
)))
(assert (forall ((x@@8 T@U) (T T@T) ) (! (= (Lit T x@@8) x@@8)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2812|
 :pattern ( (Lit T x@@8))
)))
(assert (forall ((s@@4 T@U) (bx T@U) (t@@2 T@U) ) (!  (=> (and ($Is SeqType s@@4 (TSeq t@@2)) ($IsBox bx t@@2)) ($Is SeqType (|Seq#Build| s@@4 bx) (TSeq t@@2)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |3055|
 :pattern ( ($Is SeqType (|Seq#Build| s@@4 bx) (TSeq t@@2)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@10 T@U) (|cmd#0@@8| T@U) (|deps#0@@11| T@U) (|restrictedState#0@@0| T@U) (|exps#0@@4| T@U) (|st#0@@22| T@U) ) (!  (=> (or (|M2.__default.execOne#canCall| |cmd#0@@8| |deps#0@@11| |restrictedState#0@@0| |exps#0@@4| |st#0@@22|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@8| (TSeq TChar)) ($Is SetType |deps#0@@11| (TSet Tclass.M2.Path))) ($Is MapType |restrictedState#0@@0| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SetType |exps#0@@4| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@22| Tclass.M2.State)))) (and (=> (not (|Set#Equal| |exps#0@@4| |Set#Empty|)) (and (|M2.__default.PickOne#canCall| (TSeq TChar) |exps#0@@4|) (let ((|exp#0@@1| ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) |exps#0@@4|))))
 (and (|M2.__default.execOne#canCall| |cmd#0@@8| |deps#0@@11| |restrictedState#0@@0| (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@1|))) |st#0@@22|) (let ((|st'#0@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne $ly@@10 |cmd#0@@8| |deps#0@@11| |restrictedState#0@@0| (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@1|))) |st#0@@22|)))))
 (and (|M2.__default.Loc#canCall| |cmd#0@@8| |deps#0@@11| |exp#0@@1|) (let ((|p#0@@19| (M2.__default.Loc |cmd#0@@8| |deps#0@@11| |exp#0@@1|)))
 (and (|M2.__default.DomSt#canCall| |st'#0@@0|) (=> (not (|Set#IsMember| (M2.__default.DomSt |st'#0@@0|) |p#0@@19|)) (and (|M2.__default.RunTool#canCall| |cmd#0@@8| |restrictedState#0@@0| |exp#0@@1|) (|M2.__default.SetSt#canCall| |p#0@@19| (M2.__default.RunTool |cmd#0@@8| |restrictedState#0@@0| |exp#0@@1|) |st'#0@@0|))))))))))) (= (M2.__default.execOne ($LS $ly@@10) |cmd#0@@8| |deps#0@@11| |restrictedState#0@@0| |exps#0@@4| |st#0@@22|) (ite (|Set#Equal| |exps#0@@4| |Set#Empty|) (|#M2.Tuple.Pair| ($Box SetType (Lit SetType |Set#Empty|)) ($Box DatatypeTypeType |st#0@@22|)) (let ((|exp#0@@2| ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) |exps#0@@4|))))
(let ((|st'#0@@1| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne $ly@@10 |cmd#0@@8| |deps#0@@11| |restrictedState#0@@0| (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@2|))) |st#0@@22|)))))
(let ((|paths#0@@2| ($Unbox SetType (M2.Tuple.fst (M2.__default.execOne $ly@@10 |cmd#0@@8| |deps#0@@11| |restrictedState#0@@0| (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@2|))) |st#0@@22|)))))
(let ((|p#0@@20| (M2.__default.Loc |cmd#0@@8| |deps#0@@11| |exp#0@@2|)))
(|#M2.Tuple.Pair| ($Box SetType (|Set#Union| |paths#0@@2| (|Set#UnionOne| |Set#Empty| |p#0@@20|))) ($Box DatatypeTypeType (ite (|Set#IsMember| (M2.__default.DomSt |st'#0@@1|) |p#0@@20|) |st'#0@@1| (M2.__default.SetSt |p#0@@20| (M2.__default.RunTool |cmd#0@@8| |restrictedState#0@@0| |exp#0@@2|) |st'#0@@1|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |3607|
 :pattern ( (M2.__default.execOne ($LS $ly@@10) |cmd#0@@8| |deps#0@@11| |restrictedState#0@@0| |exps#0@@4| |st#0@@22|))
))))
(assert (forall ((a@@15 T@U) (b@@12 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| a@@15 bx@@0) (and ($IsBox bx@@0 t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@12 bx@@0) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |3085|
)) ($Is MapType (|Map#Glue| a@@15 b@@12 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |3086|
 :pattern ( (|Map#Glue| a@@15 b@@12 (TMap t0@@0 t1@@0)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@11 T@U) (|p#0@@21| T@U) (|cert#0@@5| T@U) (|st#0@@23| T@U) ) (!  (=> (or (|M2.__default.OracleWF#canCall| |p#0@@21| |cert#0@@5| |st#0@@23|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@21| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@5| Tclass.M2.WFCertificate)) ($Is DatatypeTypeType |st#0@@23| Tclass.M2.State)) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@21| |cert#0@@5|)))) ($IsBox (M2.__default.OracleWF $ly@@11 |p#0@@21| |cert#0@@5| |st#0@@23|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |3845|
 :pattern ( (M2.__default.OracleWF $ly@@11 |p#0@@21| |cert#0@@5| |st#0@@23|))
))))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (! (= (|Set#Subset| a@@16 b@@13) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@16 o@@2) (|Set#IsMember| b@@13 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |2943|
 :pattern ( (|Set#IsMember| a@@16 o@@2))
 :pattern ( (|Set#IsMember| b@@13 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |2944|
 :pattern ( (|Set#Subset| a@@16 b@@13))
)))
(assert (forall ((s@@5 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@5))) (= (|Seq#Index| (|Seq#Take| s@@5 n@@2) j) (|Seq#Index| s@@5 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |3042|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@5 n@@2) j))
 :pattern ( (|Seq#Index| s@@5 j) (|Seq#Take| s@@5 n@@2))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@7)  (and ($IsAllocBox |a#2#0#0@@1| |_System._tuple#2$T0@@1| $h@@7) ($IsAllocBox |a#2#1#0@@1| |_System._tuple#2$T1@@1| $h@@7))))
 :qid |unknown.0:0|
 :skolemid |3254|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@7))
)))
(assert (forall ((M2.Tuple$A@@1 T@U) (M2.Tuple$B@@1 T@U) (|a#157#0#0@@0| T@U) (|a#157#1#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#M2.Tuple.Pair| |a#157#0#0@@0| |a#157#1#0@@0|) (Tclass.M2.Tuple M2.Tuple$A@@1 M2.Tuple$B@@1) $h@@8)  (and ($IsAllocBox |a#157#0#0@@0| M2.Tuple$A@@1 $h@@8) ($IsAllocBox |a#157#1#0@@0| M2.Tuple$B@@1 $h@@8))))
 :qid |unknown.0:0|
 :skolemid |4941|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Tuple.Pair| |a#157#0#0@@0| |a#157#1#0@@0|) (Tclass.M2.Tuple M2.Tuple$A@@1 M2.Tuple$B@@1) $h@@8))
)))
(assert (forall ((s@@6 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@6))) (= (|Seq#Length| (|Seq#Drop| s@@6 n@@3)) (- (|Seq#Length| s@@6) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |3043|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@6 n@@3)))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#M2.Expression| d@@6) (or (or (or (or (or (or (M2.Expression.exprLiteral_q d@@6) (M2.Expression.exprIdentifier_q d@@6)) (M2.Expression.exprIf_q d@@6)) (M2.Expression.exprAnd_q d@@6)) (M2.Expression.exprOr_q d@@6)) (M2.Expression.exprInvocation_q d@@6)) (M2.Expression.exprError_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |4820|
 :pattern ( (|$IsA#M2.Expression| d@@6))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@12 T@U) (|p#0@@22| T@U) (|cert#0@@6| T@U) (|deps#0@@12| T@U) (|st#0@@24| T@U) ) (!  (=> (or (|M2.__default.CollectDependencies#canCall| (Lit BoxType |p#0@@22|) (Lit DatatypeTypeType |cert#0@@6|) (Lit SetType |deps#0@@12|) (Lit DatatypeTypeType |st#0@@24|)) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@22| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@6| Tclass.M2.WFCertificate)) ($Is SetType |deps#0@@12| (TSet Tclass.M2.Path))) ($Is DatatypeTypeType |st#0@@24| Tclass.M2.State)) (and (M2.__default.CheckWellFounded ($LS $LZ) (Lit BoxType |p#0@@22|) (Lit DatatypeTypeType |cert#0@@6|)) (|Set#Equal| |deps#0@@12| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@22|))))))) (and (forall ((|d#0@@2| T@U) ) (!  (=> ($IsBox |d#0@@2| Tclass.M2.Path) (=> (|Set#IsMember| (Lit SetType |deps#0@@12|) |d#0@@2|) (and (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@24|)) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@24|))) |d#0@@2|) (|M2.__default.GetSt#canCall| |d#0@@2| (Lit DatatypeTypeType |st#0@@24|)))) (=> (not (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@24|))) |d#0@@2|)) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@6|)) (|M2.__default.FindCert#canCall| |d#0@@2| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@6|))))) (|M2.__default.OracleWF#canCall| |d#0@@2| (M2.__default.FindCert |d#0@@2| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@6|)))) (Lit DatatypeTypeType |st#0@@24|)))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |3873|
 :pattern ( (M2.__default.FindCert |d#0@@2| (M2.WFCertificate.certs |cert#0@@6|)))
 :pattern ( (M2.__default.GetSt |d#0@@2| |st#0@@24|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@24|) |d#0@@2|))
 :pattern ( (|Set#IsMember| |deps#0@@12| |d#0@@2|))
)) (= (M2.__default.CollectDependencies ($LS $ly@@12) (Lit BoxType |p#0@@22|) (Lit DatatypeTypeType |cert#0@@6|) (Lit SetType |deps#0@@12|) (Lit DatatypeTypeType |st#0@@24|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path (Lit SetType |deps#0@@12|))) (|lambda#20| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@24|))) (Lit DatatypeTypeType |st#0@@24|) ($LS $ly@@12) (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@6|))) (Lit DatatypeTypeType |st#0@@24|)) (TMap Tclass.M2.Path Tclass.M2.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :weight 3
 :skolemid |3874|
 :pattern ( (M2.__default.CollectDependencies ($LS $ly@@12) (Lit BoxType |p#0@@22|) (Lit DatatypeTypeType |cert#0@@6|) (Lit SetType |deps#0@@12|) (Lit DatatypeTypeType |st#0@@24|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@25| T@U) ) (!  (=> (or (|M2.__default.ValidState#canCall| |st#0@@25|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@25| Tclass.M2.State))) (and (forall ((|p#0@@23| T@U) ) (!  (=> ($IsBox |p#0@@23| Tclass.M2.Path) (and (|M2.__default.DomSt#canCall| |st#0@@25|) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@25|) |p#0@@23|) (|M2.__default.WellFounded#canCall| |p#0@@23|))))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4281|
 :pattern ( (M2.__default.WellFounded |p#0@@23|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@25|) |p#0@@23|))
)) (= (M2.__default.ValidState |st#0@@25|) (forall ((|p#0@@24| T@U) ) (!  (=> ($IsBox |p#0@@24| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@25|) |p#0@@24|) (M2.__default.WellFounded |p#0@@24|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4280|
 :pattern ( (M2.__default.WellFounded |p#0@@24|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@25|) |p#0@@24|))
)))))
 :qid |CloudMakeParallelBuildsdfy.13:30|
 :skolemid |4282|
 :pattern ( (M2.__default.ValidState |st#0@@25|))
))))
(assert (forall ((d@@7 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@7) (= (DatatypeCtorId d@@7) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |3246|
 :pattern ( (_System.Tuple2.___hMake2_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (M2.WFCertificate.Cert_q d@@8) (= (DatatypeCtorId d@@8) |##M2.WFCertificate.Cert|))
 :qid |unknown.0:0|
 :skolemid |4661|
 :pattern ( (M2.WFCertificate.Cert_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (M2.State.StateCons_q d@@9) (= (DatatypeCtorId d@@9) |##M2.State.StateCons|))
 :qid |unknown.0:0|
 :skolemid |4677|
 :pattern ( (M2.State.StateCons_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (M2.Expression.exprLiteral_q d@@10) (= (DatatypeCtorId d@@10) |##M2.Expression.exprLiteral|))
 :qid |unknown.0:0|
 :skolemid |4734|
 :pattern ( (M2.Expression.exprLiteral_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (M2.Expression.exprIdentifier_q d@@11) (= (DatatypeCtorId d@@11) |##M2.Expression.exprIdentifier|))
 :qid |unknown.0:0|
 :skolemid |4745|
 :pattern ( (M2.Expression.exprIdentifier_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (M2.Expression.exprIf_q d@@12) (= (DatatypeCtorId d@@12) |##M2.Expression.exprIf|))
 :qid |unknown.0:0|
 :skolemid |4754|
 :pattern ( (M2.Expression.exprIf_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (M2.Expression.exprAnd_q d@@13) (= (DatatypeCtorId d@@13) |##M2.Expression.exprAnd|))
 :qid |unknown.0:0|
 :skolemid |4770|
 :pattern ( (M2.Expression.exprAnd_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (M2.Expression.exprOr_q d@@14) (= (DatatypeCtorId d@@14) |##M2.Expression.exprOr|))
 :qid |unknown.0:0|
 :skolemid |4783|
 :pattern ( (M2.Expression.exprOr_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (M2.Expression.exprInvocation_q d@@15) (= (DatatypeCtorId d@@15) |##M2.Expression.exprInvocation|))
 :qid |unknown.0:0|
 :skolemid |4796|
 :pattern ( (M2.Expression.exprInvocation_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (M2.Expression.exprError_q d@@16) (= (DatatypeCtorId d@@16) |##M2.Expression.exprError|))
 :qid |unknown.0:0|
 :skolemid |4810|
 :pattern ( (M2.Expression.exprError_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (M2.Literal.litTrue_q d@@17) (= (DatatypeCtorId d@@17) |##M2.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |4830|
 :pattern ( (M2.Literal.litTrue_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (M2.Literal.litFalse_q d@@18) (= (DatatypeCtorId d@@18) |##M2.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |4833|
 :pattern ( (M2.Literal.litFalse_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (! (= (M2.Literal.litUndefined_q d@@19) (= (DatatypeCtorId d@@19) |##M2.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |4836|
 :pattern ( (M2.Literal.litUndefined_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (! (= (M2.Literal.litNull_q d@@20) (= (DatatypeCtorId d@@20) |##M2.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |4839|
 :pattern ( (M2.Literal.litNull_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (! (= (M2.Literal.litNumber_q d@@21) (= (DatatypeCtorId d@@21) |##M2.Literal.litNumber|))
 :qid |unknown.0:0|
 :skolemid |4843|
 :pattern ( (M2.Literal.litNumber_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (! (= (M2.Literal.litString_q d@@22) (= (DatatypeCtorId d@@22) |##M2.Literal.litString|))
 :qid |unknown.0:0|
 :skolemid |4852|
 :pattern ( (M2.Literal.litString_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (! (= (M2.Literal.litPrimitive_q d@@23) (= (DatatypeCtorId d@@23) |##M2.Literal.litPrimitive|))
 :qid |unknown.0:0|
 :skolemid |4863|
 :pattern ( (M2.Literal.litPrimitive_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (! (= (M2.Literal.litArrOfPaths_q d@@24) (= (DatatypeCtorId d@@24) |##M2.Literal.litArrOfPaths|))
 :qid |unknown.0:0|
 :skolemid |4873|
 :pattern ( (M2.Literal.litArrOfPaths_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (! (= (M2.Literal.litArrOfStrings_q d@@25) (= (DatatypeCtorId d@@25) |##M2.Literal.litArrOfStrings|))
 :qid |unknown.0:0|
 :skolemid |4883|
 :pattern ( (M2.Literal.litArrOfStrings_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (! (= (M2.Literal.litArray_q d@@26) (= (DatatypeCtorId d@@26) |##M2.Literal.litArray|))
 :qid |unknown.0:0|
 :skolemid |4893|
 :pattern ( (M2.Literal.litArray_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (! (= (M2.Primitive.primCreatePath_q d@@27) (= (DatatypeCtorId d@@27) |##M2.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |4916|
 :pattern ( (M2.Primitive.primCreatePath_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (! (= (M2.Primitive.primExec_q d@@28) (= (DatatypeCtorId d@@28) |##M2.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |4918|
 :pattern ( (M2.Primitive.primExec_q d@@28))
)))
(assert (forall ((d@@29 T@U) ) (! (= (M2.Reason.rCompatibility_q d@@29) (= (DatatypeCtorId d@@29) |##M2.Reason.rCompatibility|))
 :qid |unknown.0:0|
 :skolemid |4926|
 :pattern ( (M2.Reason.rCompatibility_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (! (= (M2.Reason.rValidity_q d@@30) (= (DatatypeCtorId d@@30) |##M2.Reason.rValidity|))
 :qid |unknown.0:0|
 :skolemid |4928|
 :pattern ( (M2.Reason.rValidity_q d@@30))
)))
(assert (forall ((d@@31 T@U) ) (! (= (M2.Tuple.Pair_q d@@31) (= (DatatypeCtorId d@@31) |##M2.Tuple.Pair|))
 :qid |unknown.0:0|
 :skolemid |4937|
 :pattern ( (M2.Tuple.Pair_q d@@31))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |3036|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |3037|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@9 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@9)) x@@9)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2823|
 :pattern ( ($Unbox T@@0 x@@9))
)))
(assert (forall ((|a#47#0#0@@0| T@U) (|a#47#1#0@@0| T@U) (|a#47#2#0@@0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprIf| |a#47#0#0@@0| |a#47#1#0@@0| |a#47#2#0@@0|) Tclass.M2.Expression $h@@9)  (and (and ($IsAlloc DatatypeTypeType |a#47#0#0@@0| Tclass.M2.Expression $h@@9) ($IsAlloc DatatypeTypeType |a#47#1#0@@0| Tclass.M2.Expression $h@@9)) ($IsAlloc DatatypeTypeType |a#47#2#0@@0| Tclass.M2.Expression $h@@9))))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4758|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprIf| |a#47#0#0@@0| |a#47#1#0@@0| |a#47#2#0@@0|) Tclass.M2.Expression $h@@9))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|paths#0@@3| T@U) (|st#0@@26| T@U) ) (!  (=> (or (|M2.__default.Restrict#canCall| |paths#0@@3| |st#0@@26|) (and (< 3 $FunctionContextHeight) (and ($Is SetType |paths#0@@3| (TSet Tclass.M2.Path)) ($Is DatatypeTypeType |st#0@@26| Tclass.M2.State)))) ($Is MapType (M2.__default.Restrict |paths#0@@3| |st#0@@26|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.473:27|
 :skolemid |3503|
 :pattern ( (M2.__default.Restrict |paths#0@@3| |st#0@@26|))
))))
(assert (forall ((d@@32 T@U) ) (!  (=> (M2.Expression.exprIf_q d@@32) (exists ((|a#46#0#0| T@U) (|a#46#1#0| T@U) (|a#46#2#0| T@U) ) (! (= d@@32 (|#M2.Expression.exprIf| |a#46#0#0| |a#46#1#0| |a#46#2#0|))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4755|
)))
 :qid |unknown.0:0|
 :skolemid |4756|
 :pattern ( (M2.Expression.exprIf_q d@@32))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|id#0| T@U) (|env#0@@3| T@U) ) (!  (=> (or (|M2.__default.GetEnv#canCall| |id#0| |env#0@@3|) (and (< 3 $FunctionContextHeight) (and (and ($IsBox |id#0| Tclass.M2.Identifier) ($IsBox |env#0@@3| Tclass.M2.Env)) (M2.__default.ValidEnv |env#0@@3|)))) (and (M2.__default.Value (M2.__default.GetEnv |id#0| |env#0@@3|)) ($Is DatatypeTypeType (M2.__default.GetEnv |id#0| |env#0@@3|) Tclass.M2.Expression)))
 :qid |CloudMakeParallelBuildsdfy.61:25|
 :skolemid |4356|
 :pattern ( (M2.__default.GetEnv |id#0| |env#0@@3|))
))))
(assert (forall ((s@@7 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@7))) (< (|Seq#Rank| (|Seq#Take| s@@7 i@@2)) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |3066|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@7 i@@2)))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|Set#Disjoint| a@@17 b@@14) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@17 o@@3)) (not (|Set#IsMember| b@@14 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |2948|
 :pattern ( (|Set#IsMember| a@@17 o@@3))
 :pattern ( (|Set#IsMember| b@@14 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |2949|
 :pattern ( (|Set#Disjoint| a@@17 b@@14))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|cmd#0@@9| T@U) (|deps#0@@13| T@U) (|exps#0@@5| T@U) (|st#0@@27| T@U) ) (!  (=> (or (|M2.__default.exec#canCall| (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@27|)) (and (< 4 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@9| (TSeq TChar)) ($Is SetType |deps#0@@13| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@5| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@27| Tclass.M2.State)))) (and (and (|M2.__default.Restrict#canCall| (Lit SetType |deps#0@@13|) (Lit DatatypeTypeType |st#0@@27|)) (|M2.__default.execOne#canCall| (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) (Lit MapType (M2.__default.Restrict (Lit SetType |deps#0@@13|) (Lit DatatypeTypeType |st#0@@27|))) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@27|))) (= (M2.__default.exec (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@27|)) (Lit DatatypeTypeType (M2.__default.execOne ($LS $LZ) (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) (Lit MapType (M2.__default.Restrict (Lit SetType |deps#0@@13|) (Lit DatatypeTypeType |st#0@@27|))) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@27|))))))
 :qid |CloudMakeParallelBuildsdfy.69:23|
 :weight 3
 :skolemid |3599|
 :pattern ( (M2.__default.exec (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@13|) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@27|)))
))))
(assert (forall ((m@@1 T@U) (bx@@1 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@1)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |2950|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|p#0@@25| T@U) (|st#0@@28| T@U) ) (!  (=> (or (|M2.__default.Oracle#canCall| |p#0@@25| |st#0@@28|) (and (< 4 $FunctionContextHeight) (and ($IsBox |p#0@@25| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@28| Tclass.M2.State)))) (and (and (and (|M2.__default.WellFounded#canCall| |p#0@@25|) (=> (M2.__default.WellFounded |p#0@@25|) (and (|M2.__default.GetCert#canCall| |p#0@@25|) (|M2.__default.OracleWF#canCall| |p#0@@25| (M2.__default.GetCert |p#0@@25|) |st#0@@28|)))) (=> (not (M2.__default.WellFounded |p#0@@25|)) (|M2.__default.OracleArbitrary#canCall| |p#0@@25|))) (= (M2.__default.Oracle |p#0@@25| |st#0@@28|) (ite (M2.__default.WellFounded |p#0@@25|) (M2.__default.OracleWF ($LS $LZ) |p#0@@25| (M2.__default.GetCert |p#0@@25|) |st#0@@28|) (M2.__default.OracleArbitrary |p#0@@25|)))))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |3821|
 :pattern ( (M2.__default.Oracle |p#0@@25| |st#0@@28|))
))))
(assert (forall ((d@@33 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@33) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@33 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |3247|
)))
 :qid |unknown.0:0|
 :skolemid |3248|
 :pattern ( (_System.Tuple2.___hMake2_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (M2.WFCertificate.Cert_q d@@34) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@34 (|#M2.WFCertificate.Cert| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4662|
)))
 :qid |unknown.0:0|
 :skolemid |4663|
 :pattern ( (M2.WFCertificate.Cert_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> (M2.Expression.exprAnd_q d@@35) (exists ((|a#56#0#0| T@U) (|a#56#1#0| T@U) ) (! (= d@@35 (|#M2.Expression.exprAnd| |a#56#0#0| |a#56#1#0|))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |4771|
)))
 :qid |unknown.0:0|
 :skolemid |4772|
 :pattern ( (M2.Expression.exprAnd_q d@@35))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (M2.Expression.exprOr_q d@@36) (exists ((|a#64#0#0| T@U) (|a#64#1#0| T@U) ) (! (= d@@36 (|#M2.Expression.exprOr| |a#64#0#0| |a#64#1#0|))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |4784|
)))
 :qid |unknown.0:0|
 :skolemid |4785|
 :pattern ( (M2.Expression.exprOr_q d@@36))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> (M2.Expression.exprInvocation_q d@@37) (exists ((|a#72#0#0| T@U) (|a#72#1#0| T@U) ) (! (= d@@37 (|#M2.Expression.exprInvocation| |a#72#0#0| |a#72#1#0|))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |4797|
)))
 :qid |unknown.0:0|
 :skolemid |4798|
 :pattern ( (M2.Expression.exprInvocation_q d@@37))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> (M2.Tuple.Pair_q d@@38) (exists ((|a#156#0#0| T@U) (|a#156#1#0| T@U) ) (! (= d@@38 (|#M2.Tuple.Pair| |a#156#0#0| |a#156#1#0|))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4938|
)))
 :qid |unknown.0:0|
 :skolemid |4939|
 :pattern ( (M2.Tuple.Pair_q d@@38))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@29| T@U) ) (!  (=> (or (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@29|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@29| Tclass.M2.State))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@29|)) (= (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@29|)) (|Set#FromBoogieMap| (|lambda#19| Tclass.M2.Path (|Map#Domain| (M2.State.m (Lit DatatypeTypeType |st#0@@29|))))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :weight 3
 :skolemid |4267|
 :pattern ( (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@29|)))
))))
(assert (forall ((d@@39 T@U) ) (!  (=> (M2.Literal.litTrue_q d@@39) (= d@@39 |#M2.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |4831|
 :pattern ( (M2.Literal.litTrue_q d@@39))
)))
(assert (forall ((d@@40 T@U) ) (!  (=> (M2.Literal.litFalse_q d@@40) (= d@@40 |#M2.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |4834|
 :pattern ( (M2.Literal.litFalse_q d@@40))
)))
(assert (forall ((d@@41 T@U) ) (!  (=> (M2.Literal.litUndefined_q d@@41) (= d@@41 |#M2.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |4837|
 :pattern ( (M2.Literal.litUndefined_q d@@41))
)))
(assert (forall ((d@@42 T@U) ) (!  (=> (M2.Literal.litNull_q d@@42) (= d@@42 |#M2.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |4840|
 :pattern ( (M2.Literal.litNull_q d@@42))
)))
(assert (forall ((d@@43 T@U) ) (!  (=> (M2.Primitive.primCreatePath_q d@@43) (= d@@43 |#M2.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |4917|
 :pattern ( (M2.Primitive.primCreatePath_q d@@43))
)))
(assert (forall ((d@@44 T@U) ) (!  (=> (M2.Primitive.primExec_q d@@44) (= d@@44 |#M2.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |4919|
 :pattern ( (M2.Primitive.primExec_q d@@44))
)))
(assert (forall ((d@@45 T@U) ) (!  (=> (M2.Reason.rCompatibility_q d@@45) (= d@@45 |#M2.Reason.rCompatibility|))
 :qid |unknown.0:0|
 :skolemid |4927|
 :pattern ( (M2.Reason.rCompatibility_q d@@45))
)))
(assert (forall ((d@@46 T@U) ) (!  (=> (M2.Reason.rValidity_q d@@46) (= d@@46 |#M2.Reason.rValidity|))
 :qid |unknown.0:0|
 :skolemid |4929|
 :pattern ( (M2.Reason.rValidity_q d@@46))
)))
(assert (forall ((v@@1 T@U) (t0@@1 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@1)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@2) ($IsBox bx@@2 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2843|
 :pattern ( (|Set#IsMember| v@@1 bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2844|
 :pattern ( ($Is SetType v@@1 (TSet t0@@1)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@10 T@U) (|p#0@@26| T@U) ) (!  (=> (or (|M2.__default.OracleArbitrary#canCall| (Lit BoxType |p#0@@26|)) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@10) ($IsBox |p#0@@26| Tclass.M2.Path)))) (and |$let#6$canCall| (= (M2.__default.OracleArbitrary (Lit BoxType |p#0@@26|)) (let ((|a#1| |$let#6_a|))
|a#1|))))
 :qid |CloudMakeParallelBuildsdfy.648:18|
 :weight 3
 :skolemid |3842|
 :pattern ( (M2.__default.OracleArbitrary (Lit BoxType |p#0@@26|)) ($IsGoodHeap $Heap@@10))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@10| T@U) (|deps#0@@14| T@U) (|exps#0@@6| T@U) (|st#0@@30| T@U) ) (!  (=> (or (|M2.__default.Post#canCall| (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) (Lit SetType |exps#0@@6|) (Lit DatatypeTypeType |st#0@@30|)) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@10| (TSeq TChar)) ($Is SetType |deps#0@@14| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@6| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@30| Tclass.M2.State)))) (and (forall ((|e#2| T@U) ) (!  (=> ($Is SeqType |e#2| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@6|) ($Box SeqType |e#2|)) (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) |e#2|) (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@30|)))) (=> (=> (|Set#IsMember| (Lit SetType |exps#0@@6|) ($Box SeqType |e#2|)) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@30|))) (M2.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) |e#2|))) (=> (|Set#IsMember| (Lit SetType |exps#0@@6|) ($Box SeqType |e#2|)) (and (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) |e#2|) (|M2.__default.GetSt#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) |e#2|) (Lit DatatypeTypeType |st#0@@30|))) (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) |e#2|) (|M2.__default.Oracle#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) |e#2|) (Lit DatatypeTypeType |st#0@@30|))))))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |4406|
 :pattern ( (M2.__default.Loc |cmd#0@@10| |deps#0@@14| |e#2|))
 :pattern ( (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#2|)))
)) (= (M2.__default.Post (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) (Lit SetType |exps#0@@6|) (Lit DatatypeTypeType |st#0@@30|)) (forall ((|e#2@@0| T@U) ) (!  (=> ($Is SeqType |e#2@@0| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@6|) ($Box SeqType |e#2@@0|)) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@30|))) (M2.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) |e#2@@0|))) (=> (|Set#IsMember| (Lit SetType |exps#0@@6|) ($Box SeqType |e#2@@0|)) (= (M2.__default.GetSt (M2.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) |e#2@@0|) (Lit DatatypeTypeType |st#0@@30|)) (M2.__default.Oracle (M2.__default.Loc (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) |e#2@@0|) (Lit DatatypeTypeType |st#0@@30|))))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |4405|
 :pattern ( (M2.__default.Loc |cmd#0@@10| |deps#0@@14| |e#2@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#2@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.94:24|
 :weight 3
 :skolemid |4407|
 :pattern ( (M2.__default.Post (Lit SeqType |cmd#0@@10|) (Lit SetType |deps#0@@14|) (Lit SetType |exps#0@@6|) (Lit DatatypeTypeType |st#0@@30|)))
))))
(assert (forall ((d@@47 T@U) ) (!  (=> (|$IsA#M2.Literal| d@@47) (or (or (or (or (or (or (or (or (or (M2.Literal.litTrue_q d@@47) (M2.Literal.litFalse_q d@@47)) (M2.Literal.litUndefined_q d@@47)) (M2.Literal.litNull_q d@@47)) (M2.Literal.litNumber_q d@@47)) (M2.Literal.litString_q d@@47)) (M2.Literal.litPrimitive_q d@@47)) (M2.Literal.litArrOfPaths_q d@@47)) (M2.Literal.litArrOfStrings_q d@@47)) (M2.Literal.litArray_q d@@47)))
 :qid |unknown.0:0|
 :skolemid |4903|
 :pattern ( (|$IsA#M2.Literal| d@@47))
)))
(assert (forall ((s@@8 T@U) (i@@3 Int) ) (!  (=> (and (< 0 i@@3) (<= i@@3 (|Seq#Length| s@@8))) (< (|Seq#Rank| (|Seq#Drop| s@@8 i@@3)) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |3065|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@8 i@@3)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@13 T@U) (|p#0@@27| T@U) (|cert#0@@7| T@U) (|st#0@@31| T@U) ) (!  (=> (or (|M2.__default.OracleWF#canCall| |p#0@@27| (Lit DatatypeTypeType |cert#0@@7|) |st#0@@31|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@27| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@7| Tclass.M2.WFCertificate)) ($Is DatatypeTypeType |st#0@@31| Tclass.M2.State)) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@27| (Lit DatatypeTypeType |cert#0@@7|))))) (and (and (and (and (|M2.__default.LocInv__Cmd#canCall| |p#0@@27|) (|M2.__default.LocInv__Deps#canCall| |p#0@@27|)) (|M2.__default.LocInv__Exp#canCall| |p#0@@27|)) (let ((|e#1| (M2.__default.LocInv__Exp |p#0@@27|)))
(let ((|deps#1@@0| (M2.__default.LocInv__Deps |p#0@@27|)))
(let ((|cmd#1@@0| (M2.__default.LocInv__Cmd |p#0@@27|)))
 (and (|M2.__default.CollectDependencies#canCall| |p#0@@27| (Lit DatatypeTypeType |cert#0@@7|) |deps#1@@0| |st#0@@31|) (|M2.__default.RunTool#canCall| |cmd#1@@0| (M2.__default.CollectDependencies ($LS $ly@@13) |p#0@@27| (Lit DatatypeTypeType |cert#0@@7|) |deps#1@@0| |st#0@@31|) |e#1|)))))) (= (M2.__default.OracleWF ($LS $ly@@13) |p#0@@27| (Lit DatatypeTypeType |cert#0@@7|) |st#0@@31|) (let ((|e#1@@0| (M2.__default.LocInv__Exp |p#0@@27|)))
(let ((|deps#1@@1| (M2.__default.LocInv__Deps |p#0@@27|)))
(let ((|cmd#1@@1| (M2.__default.LocInv__Cmd |p#0@@27|)))
(M2.__default.RunTool |cmd#1@@1| (M2.__default.CollectDependencies ($LS $ly@@13) |p#0@@27| (Lit DatatypeTypeType |cert#0@@7|) |deps#1@@1| |st#0@@31|) |e#1@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :weight 3
 :skolemid |3849|
 :pattern ( (M2.__default.OracleWF ($LS $ly@@13) |p#0@@27| (Lit DatatypeTypeType |cert#0@@7|) |st#0@@31|))
))))
(assert (forall ((d@@48 T@U) ) (!  (=> (M2.State.StateCons_q d@@48) (exists ((|a#8#0#0| T@U) ) (! (= d@@48 (|#M2.State.StateCons| |a#8#0#0|))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4678|
)))
 :qid |unknown.0:0|
 :skolemid |4679|
 :pattern ( (M2.State.StateCons_q d@@48))
)))
(assert (forall ((d@@49 T@U) ) (!  (=> (M2.Expression.exprLiteral_q d@@49) (exists ((|a#35#0#0| T@U) ) (! (= d@@49 (|#M2.Expression.exprLiteral| |a#35#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |4735|
)))
 :qid |unknown.0:0|
 :skolemid |4736|
 :pattern ( (M2.Expression.exprLiteral_q d@@49))
)))
(assert (forall ((d@@50 T@U) ) (!  (=> (M2.Expression.exprIdentifier_q d@@50) (exists ((|a#41#0#0| T@U) ) (! (= d@@50 (|#M2.Expression.exprIdentifier| |a#41#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |4746|
)))
 :qid |unknown.0:0|
 :skolemid |4747|
 :pattern ( (M2.Expression.exprIdentifier_q d@@50))
)))
(assert (forall ((d@@51 T@U) ) (!  (=> (M2.Expression.exprError_q d@@51) (exists ((|a#81#0#0| T@U) ) (! (= d@@51 (|#M2.Expression.exprError| |a#81#0#0|))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |4811|
)))
 :qid |unknown.0:0|
 :skolemid |4812|
 :pattern ( (M2.Expression.exprError_q d@@51))
)))
(assert (forall ((d@@52 T@U) ) (!  (=> (M2.Literal.litNumber_q d@@52) (exists ((|a#103#0#0| Int) ) (! (= d@@52 (|#M2.Literal.litNumber| |a#103#0#0|))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |4844|
)))
 :qid |unknown.0:0|
 :skolemid |4845|
 :pattern ( (M2.Literal.litNumber_q d@@52))
)))
(assert (forall ((d@@53 T@U) ) (!  (=> (M2.Literal.litString_q d@@53) (exists ((|a#108#0#0| T@U) ) (! (= d@@53 (|#M2.Literal.litString| |a#108#0#0|))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |4853|
)))
 :qid |unknown.0:0|
 :skolemid |4854|
 :pattern ( (M2.Literal.litString_q d@@53))
)))
(assert (forall ((d@@54 T@U) ) (!  (=> (M2.Literal.litPrimitive_q d@@54) (exists ((|a#115#0#0| T@U) ) (! (= d@@54 (|#M2.Literal.litPrimitive| |a#115#0#0|))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |4864|
)))
 :qid |unknown.0:0|
 :skolemid |4865|
 :pattern ( (M2.Literal.litPrimitive_q d@@54))
)))
(assert (forall ((d@@55 T@U) ) (!  (=> (M2.Literal.litArrOfPaths_q d@@55) (exists ((|a#121#0#0| T@U) ) (! (= d@@55 (|#M2.Literal.litArrOfPaths| |a#121#0#0|))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |4874|
)))
 :qid |unknown.0:0|
 :skolemid |4875|
 :pattern ( (M2.Literal.litArrOfPaths_q d@@55))
)))
(assert (forall ((d@@56 T@U) ) (!  (=> (M2.Literal.litArrOfStrings_q d@@56) (exists ((|a#127#0#0| T@U) ) (! (= d@@56 (|#M2.Literal.litArrOfStrings| |a#127#0#0|))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |4884|
)))
 :qid |unknown.0:0|
 :skolemid |4885|
 :pattern ( (M2.Literal.litArrOfStrings_q d@@56))
)))
(assert (forall ((d@@57 T@U) ) (!  (=> (M2.Literal.litArray_q d@@57) (exists ((|a#133#0#0| T@U) ) (! (= d@@57 (|#M2.Literal.litArray| |a#133#0#0|))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |4894|
)))
 :qid |unknown.0:0|
 :skolemid |4895|
 :pattern ( (M2.Literal.litArray_q d@@57))
)))
(assert (forall ((d@@58 T@U) ) (!  (=> ($Is DatatypeTypeType d@@58 Tclass.M2.Expression) (or (or (or (or (or (or (M2.Expression.exprLiteral_q d@@58) (M2.Expression.exprIdentifier_q d@@58)) (M2.Expression.exprIf_q d@@58)) (M2.Expression.exprAnd_q d@@58)) (M2.Expression.exprOr_q d@@58)) (M2.Expression.exprInvocation_q d@@58)) (M2.Expression.exprError_q d@@58)))
 :qid |unknown.0:0|
 :skolemid |4821|
 :pattern ( (M2.Expression.exprError_q d@@58) ($Is DatatypeTypeType d@@58 Tclass.M2.Expression))
 :pattern ( (M2.Expression.exprInvocation_q d@@58) ($Is DatatypeTypeType d@@58 Tclass.M2.Expression))
 :pattern ( (M2.Expression.exprOr_q d@@58) ($Is DatatypeTypeType d@@58 Tclass.M2.Expression))
 :pattern ( (M2.Expression.exprAnd_q d@@58) ($Is DatatypeTypeType d@@58 Tclass.M2.Expression))
 :pattern ( (M2.Expression.exprIf_q d@@58) ($Is DatatypeTypeType d@@58 Tclass.M2.Expression))
 :pattern ( (M2.Expression.exprIdentifier_q d@@58) ($Is DatatypeTypeType d@@58 Tclass.M2.Expression))
 :pattern ( (M2.Expression.exprLiteral_q d@@58) ($Is DatatypeTypeType d@@58 Tclass.M2.Expression))
)))
(assert (forall ((p T@U) ) (!  (=> (|$let#3$canCall| p) (and ($Is DatatypeTypeType (|$let#3_c| p) Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) p (|$let#3_c| p))))
 :qid |CloudMakeParallelBuildsdfy.631:5|
 :skolemid |3796|
 :pattern ( (|$let#3_c| p))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@11 T@U) (|d#0@@3| T@U) (|certs#0@@0| T@U) ) (!  (=> (or (|M2.__default.FindCert#canCall| |d#0@@3| |certs#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@11) ($IsBox |d#0@@3| Tclass.M2.Path)) ($Is SetType |certs#0@@0| (TSet Tclass.M2.WFCertificate))) (exists ((|c#1| T@U) ) (!  (and ($Is DatatypeTypeType |c#1| Tclass.M2.WFCertificate) (and (|Set#IsMember| |certs#0@@0| ($Box DatatypeTypeType |c#1|)) (= (M2.WFCertificate.p |c#1|) |d#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |3894|
 :pattern ( (M2.WFCertificate.p |c#1|))
 :pattern ( (|Set#IsMember| |certs#0@@0| ($Box DatatypeTypeType |c#1|)))
))))) (and (|$let#9$canCall| |certs#0@@0| |d#0@@3|) (= (M2.__default.FindCert |d#0@@3| |certs#0@@0|) (let ((|c#2| (|$let#9_c| |certs#0@@0| |d#0@@3|)))
|c#2|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :skolemid |3897|
 :pattern ( (M2.__default.FindCert |d#0@@3| |certs#0@@0|) ($IsGoodHeap $Heap@@11))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@12 T@U) ($ly@@14 T@U) (|p#0@@28| T@U) (|cert#0@@8| T@U) (|st#0@@32| T@U) ) (!  (=> (and (or (|M2.__default.OracleWF#canCall| |p#0@@28| |cert#0@@8| |st#0@@32|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@28| Tclass.M2.Path) ($IsAllocBox |p#0@@28| Tclass.M2.Path $Heap@@12)) (and ($Is DatatypeTypeType |cert#0@@8| Tclass.M2.WFCertificate) ($IsAlloc DatatypeTypeType |cert#0@@8| Tclass.M2.WFCertificate $Heap@@12))) (and ($Is DatatypeTypeType |st#0@@32| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@32| Tclass.M2.State $Heap@@12))) (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@28| |cert#0@@8|)))) ($IsGoodHeap $Heap@@12)) ($IsAllocBox (M2.__default.OracleWF $ly@@14 |p#0@@28| |cert#0@@8| |st#0@@32|) Tclass.M2.Artifact $Heap@@12))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |3846|
 :pattern ( ($IsAllocBox (M2.__default.OracleWF $ly@@14 |p#0@@28| |cert#0@@8| |st#0@@32|) Tclass.M2.Artifact $Heap@@12))
))))
(assert (forall ((s@@9 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@9 v@@2)) (+ 1 (|Seq#Length| s@@9)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |3021|
 :pattern ( (|Seq#Build| s@@9 v@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@29| T@U) ) (!  (=> (or (|M2.__default.WellFounded#canCall| (Lit BoxType |p#0@@29|)) (and (< 2 $FunctionContextHeight) ($IsBox |p#0@@29| Tclass.M2.Path))) (and (forall ((|cert#1| T@U) ) (!  (=> ($Is DatatypeTypeType |cert#1| Tclass.M2.WFCertificate) (|M2.__default.CheckWellFounded#canCall| (Lit BoxType |p#0@@29|) |cert#1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3535|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@29| |cert#1|))
)) (= (M2.__default.WellFounded (Lit BoxType |p#0@@29|)) (exists ((|cert#1@@0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1@@0| Tclass.M2.WFCertificate) (M2.__default.CheckWellFounded ($LS $LZ) (Lit BoxType |p#0@@29|) |cert#1@@0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |3534|
 :pattern ( (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@29| |cert#1@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.17:31|
 :weight 3
 :skolemid |3536|
 :pattern ( (M2.__default.WellFounded (Lit BoxType |p#0@@29|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|cmd#0@@11| T@U) (|deps#0@@15| T@U) (|exps#0@@7| T@U) (|st#0@@33| T@U) ) (!  (=> (or (|M2.__default.exec#canCall| |cmd#0@@11| |deps#0@@15| |exps#0@@7| |st#0@@33|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@11| (TSeq TChar)) ($Is SetType |deps#0@@15| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@7| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@33| Tclass.M2.State)))) ($Is DatatypeTypeType (M2.__default.exec |cmd#0@@11| |deps#0@@15| |exps#0@@7| |st#0@@33|) (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State)))
 :qid |CloudMakeParallelBuildsdfy.69:23|
 :skolemid |3594|
 :pattern ( (M2.__default.exec |cmd#0@@11| |deps#0@@15| |exps#0@@7| |st#0@@33|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@13 T@U) (|id#0@@0| T@U) (|env#0@@4| T@U) ) (!  (=> (and (or (|M2.__default.GetEnv#canCall| |id#0@@0| |env#0@@4|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |id#0@@0| Tclass.M2.Identifier) ($IsAllocBox |id#0@@0| Tclass.M2.Identifier $Heap@@13)) (and ($IsBox |env#0@@4| Tclass.M2.Env) ($IsAllocBox |env#0@@4| Tclass.M2.Env $Heap@@13))) (M2.__default.ValidEnv |env#0@@4|)))) ($IsGoodHeap $Heap@@13)) ($IsAlloc DatatypeTypeType (M2.__default.GetEnv |id#0@@0| |env#0@@4|) Tclass.M2.Expression $Heap@@13))
 :qid |CloudMakeParallelBuildsdfy.61:18|
 :skolemid |4357|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.GetEnv |id#0@@0| |env#0@@4|) Tclass.M2.Expression $Heap@@13))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@34| T@U) ) (!  (=> (or (|M2.__default.ValidState#canCall| (Lit DatatypeTypeType |st#0@@34|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@34| Tclass.M2.State))) (and (forall ((|p#1| T@U) ) (!  (=> ($IsBox |p#1| Tclass.M2.Path) (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@34|)) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@34|))) |p#1|) (|M2.__default.WellFounded#canCall| |p#1|))))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4284|
 :pattern ( (M2.__default.WellFounded |p#1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@34|) |p#1|))
)) (= (M2.__default.ValidState (Lit DatatypeTypeType |st#0@@34|)) (forall ((|p#1@@0| T@U) ) (!  (=> ($IsBox |p#1@@0| Tclass.M2.Path) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@34|))) |p#1@@0|) (M2.__default.WellFounded |p#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4283|
 :pattern ( (M2.__default.WellFounded |p#1@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@34|) |p#1@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.13:30|
 :weight 3
 :skolemid |4285|
 :pattern ( (M2.__default.ValidState (Lit DatatypeTypeType |st#0@@34|)))
))))
(assert (forall (($ly@@15 T@U) (|p#0@@30| T@U) (|cert#0@@9| T@U) ) (! (= (M2.__default.CheckWellFounded ($LS $ly@@15) |p#0@@30| |cert#0@@9|) (M2.__default.CheckWellFounded $ly@@15 |p#0@@30| |cert#0@@9|))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |3541|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@15) |p#0@@30| |cert#0@@9|))
)))
(assert (forall ((v@@3 T@U) (t@@3 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@3 h) ($IsAlloc T@@1 v@@3 t@@3 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2836|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@3 h))
)))
(assert (forall ((s@@10 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@10) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@10 n@@4) j@@1) (|Seq#Index| s@@10 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |3044|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@10 n@@4) j@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|cmd#0@@12| T@U) (|deps#0@@16| T@U) (|exp#0@@3| T@U) ) (!  (=> (or (|M2.__default.RunTool#canCall| |cmd#0@@12| |deps#0@@16| |exp#0@@3|) (and (< 0 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0@@12| (TSeq TChar)) ($Is MapType |deps#0@@16| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SeqType |exp#0@@3| (TSeq TChar))))) ($IsBox (M2.__default.RunTool |cmd#0@@12| |deps#0@@16| |exp#0@@3|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.507:26|
 :skolemid |3587|
 :pattern ( (M2.__default.RunTool |cmd#0@@12| |deps#0@@16| |exp#0@@3|))
))))
(assert (forall ((d@@59 T@U) ) (!  (=> ($Is DatatypeTypeType d@@59 Tclass.M2.Literal) (or (or (or (or (or (or (or (or (or (M2.Literal.litTrue_q d@@59) (M2.Literal.litFalse_q d@@59)) (M2.Literal.litUndefined_q d@@59)) (M2.Literal.litNull_q d@@59)) (M2.Literal.litNumber_q d@@59)) (M2.Literal.litString_q d@@59)) (M2.Literal.litPrimitive_q d@@59)) (M2.Literal.litArrOfPaths_q d@@59)) (M2.Literal.litArrOfStrings_q d@@59)) (M2.Literal.litArray_q d@@59)))
 :qid |unknown.0:0|
 :skolemid |4904|
 :pattern ( (M2.Literal.litArray_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.M2.Literal))
 :pattern ( (M2.Literal.litArrOfStrings_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.M2.Literal))
 :pattern ( (M2.Literal.litArrOfPaths_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.M2.Literal))
 :pattern ( (M2.Literal.litPrimitive_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.M2.Literal))
 :pattern ( (M2.Literal.litString_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.M2.Literal))
 :pattern ( (M2.Literal.litNumber_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.M2.Literal))
 :pattern ( (M2.Literal.litNull_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.M2.Literal))
 :pattern ( (M2.Literal.litUndefined_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.M2.Literal))
 :pattern ( (M2.Literal.litFalse_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.M2.Literal))
 :pattern ( (M2.Literal.litTrue_q d@@59) ($Is DatatypeTypeType d@@59 Tclass.M2.Literal))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@16 T@U) (|p#0@@31| T@U) (|cert#0@@10| T@U) ) (!  (=> (or (|M2.__default.CheckWellFounded#canCall| |p#0@@31| (Lit DatatypeTypeType |cert#0@@10|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@31| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@10| Tclass.M2.WFCertificate)))) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@10|)) (=> (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@10|))) |p#0@@31|) (and (forall ((|d#1| T@U) ) (!  (=> ($IsBox |d#1| Tclass.M2.Path) (and (|M2.__default.LocInv__Deps#canCall| |p#0@@31|) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@31|) |d#1|) (forall ((|c#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#2@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@10|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#2@@0|)) (M2.WFCertificate.Cert_q |c#2@@0|))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3557|
 :pattern ( (M2.WFCertificate.p |c#2@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#2@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3558|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@31|) |d#1|))
)) (=> (forall ((|d#1@@0| T@U) ) (!  (=> ($IsBox |d#1@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@31|) |d#1@@0|) (exists ((|c#2@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#2@@1|)) (= (M2.WFCertificate.p |c#2@@1|) |d#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3560|
 :pattern ( (M2.WFCertificate.p |c#2@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#2@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3561|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@31|) |d#1@@0|))
)) (forall ((|c#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@10|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#3@@0|)) (and (M2.WFCertificate.Cert_q |c#3@@0|) (|M2.__default.CheckWellFounded#canCall| (M2.WFCertificate.p |c#3@@0|) |c#3@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3559|
 :pattern ( (M2.WFCertificate.p |c#3@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#3@@0|)))
)))))) (= (M2.__default.CheckWellFounded ($LS $ly@@16) |p#0@@31| (Lit DatatypeTypeType |cert#0@@10|))  (and (and (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@10|))) |p#0@@31|) (forall ((|d#1@@1| T@U) ) (!  (=> ($IsBox |d#1@@1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@31|) |d#1@@1|) (exists ((|c#2@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@2| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#2@@2|)) (= (M2.WFCertificate.p |c#2@@2|) |d#1@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3554|
 :pattern ( (M2.WFCertificate.p |c#2@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#2@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3555|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@31|) |d#1@@1|))
))) (forall ((|c#3@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@1| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@10|))) ($Box DatatypeTypeType |c#3@@1|)) (M2.__default.CheckWellFounded ($LS $ly@@16) (M2.WFCertificate.p |c#3@@1|) |c#3@@1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3556|
 :pattern ( (M2.WFCertificate.p |c#3@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@10|) ($Box DatatypeTypeType |c#3@@1|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |3562|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@16) |p#0@@31| (Lit DatatypeTypeType |cert#0@@10|)))
))))
(assert (forall ((sts T@U) ) (!  (=> (|$let#13$canCall| sts) (and ($Is DatatypeTypeType (|$let#13_st| sts) Tclass.M2.State) (|Set#IsMember| sts ($Box DatatypeTypeType (|$let#13_st| sts)))))
 :qid |CloudMakeParallelBuildsdfy.39:5|
 :skolemid |4317|
 :pattern ( (|$let#13_st| sts))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($ly@@17 T@U) (|context#0@@2| T@U) (|args#0@@4| T@U) (|stOrig#0@@2| T@U) (|env#0@@5| T@U) ) (!  (=> (or (|M2.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType |args#0@@4|) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@5|)) (and (< 7 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@2| Tclass.M2.Expression) ($Is SeqType |args#0@@4| (TSeq Tclass.M2.Expression))) ($Is DatatypeTypeType |stOrig#0@@2| Tclass.M2.State)) ($IsBox |env#0@@5| Tclass.M2.Env)) (and (M2.__default.ValidEnv (Lit BoxType |env#0@@5|)) (forall ((|arg#3| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#3| Tclass.M2.Expression) (=> (|Seq#Contains| |args#0@@4| ($Box DatatypeTypeType |arg#3|)) (< (DtRank |arg#3|) (DtRank |context#0@@2|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |4547|
 :pattern ( (|Seq#Contains| |args#0@@4| ($Box DatatypeTypeType |arg#3|)))
)))))) (and (=> (not (|Seq#Equal| |args#0@@4| |Seq#Empty|)) (and (|M2.__default.eval#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0))) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@5|)) (let ((|r#2| (M2.__default.eval ($LS $ly@@17) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0))) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@5|))))
 (and (|M2.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@4|) (LitInt 1))) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@5|)) (let ((|rr#2| (Lit DatatypeTypeType (M2.__default.evalArgs ($LS $ly@@17) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@4|) (LitInt 1))) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@5|)))))
 (and (and (M2.Tuple.Pair_q |r#2|) (M2.Tuple.Pair_q |rr#2|)) (and (M2.Tuple.Pair_q |r#2|) (M2.Tuple.Pair_q |rr#2|)))))))) (= (M2.__default.evalArgs ($LS $ly@@17) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType |args#0@@4|) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@5|)) (ite (|Seq#Equal| |args#0@@4| |Seq#Empty|) (|#M2.Tuple.Pair| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box SetType (Lit SetType |Set#Empty|))) (let ((|r#2@@0| (M2.__default.eval ($LS $ly@@17) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0))) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@5|))))
(let ((|rr#2@@0| (Lit DatatypeTypeType (M2.__default.evalArgs ($LS $ly@@17) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@4|) (LitInt 1))) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@5|)))))
(|#M2.Tuple.Pair| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| (M2.Tuple.fst |r#2@@0|)) ($Unbox SeqType (M2.Tuple.fst |rr#2@@0|)))) ($Box SetType (|Set#Union| (|Set#UnionOne| |Set#Empty| (M2.Tuple.snd |r#2@@0|)) ($Unbox SetType (M2.Tuple.snd |rr#2@@0|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :weight 3
 :skolemid |4548|
 :pattern ( (M2.__default.evalArgs ($LS $ly@@17) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType |args#0@@4|) (Lit DatatypeTypeType |stOrig#0@@2|) (Lit BoxType |env#0@@5|)))
))))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |3023|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@32| T@U) (|st#0@@35| T@U) ) (!  (=> (or (|M2.__default.GetSt#canCall| |p#0@@32| (Lit DatatypeTypeType |st#0@@35|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@32| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@35| Tclass.M2.State)) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@35|))) |p#0@@32|)))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@35|)) (= (M2.__default.GetSt |p#0@@32| (Lit DatatypeTypeType |st#0@@35|)) (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M2.State.m (Lit DatatypeTypeType |st#0@@35|)))) |p#0@@32|))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |4260|
 :pattern ( (M2.__default.GetSt |p#0@@32| (Lit DatatypeTypeType |st#0@@35|)))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@13| T@U) (|deps#0@@17| T@U) (|exps#0@@8| T@U) (|st#0@@36| T@U) ) (!  (=> (or (|M2.__default.Pre#canCall| (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@17|) (Lit SetType |exps#0@@8|) |st#0@@36|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@13| (TSeq TChar)) ($Is SetType |deps#0@@17| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@8| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@36| Tclass.M2.State)))) (and (forall ((|e#1@@1| T@U) ) (!  (=> ($Is SeqType |e#1@@1| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@8|) ($Box SeqType |e#1@@1|)) (and (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@17|) |e#1@@1|) (|M2.__default.DomSt#canCall| |st#0@@36|)) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@36|) (M2.__default.Loc (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@17|) |e#1@@1|)) (and (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@17|) |e#1@@1|) (|M2.__default.GetSt#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@17|) |e#1@@1|) |st#0@@36|)) (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@17|) |e#1@@1|) (|M2.__default.Oracle#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@17|) |e#1@@1|) |st#0@@36|)))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |4371|
 :pattern ( (M2.__default.Loc |cmd#0@@13| |deps#0@@17| |e#1@@1|))
 :pattern ( (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#1@@1|)))
)) (= (M2.__default.Pre (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@17|) (Lit SetType |exps#0@@8|) |st#0@@36|) (forall ((|e#1@@2| T@U) ) (!  (=> ($Is SeqType |e#1@@2| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@8|) ($Box SeqType |e#1@@2|)) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@36|) (M2.__default.Loc (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@17|) |e#1@@2|)) (= (M2.__default.GetSt (M2.__default.Loc (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@17|) |e#1@@2|) |st#0@@36|) (M2.__default.Oracle (M2.__default.Loc (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@17|) |e#1@@2|) |st#0@@36|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |4370|
 :pattern ( (M2.__default.Loc |cmd#0@@13| |deps#0@@17| |e#1@@2|))
 :pattern ( (|Set#IsMember| |exps#0@@8| ($Box SeqType |e#1@@2|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :weight 3
 :skolemid |4372|
 :pattern ( (M2.__default.Pre (Lit SeqType |cmd#0@@13|) (Lit SetType |deps#0@@17|) (Lit SetType |exps#0@@8|) |st#0@@36|))
))))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M2.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.M2.State)))
 :qid |unknown.0:0|
 :skolemid |3496|
 :pattern ( ($IsBox bx@@3 Tclass.M2.State))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M2.WFCertificate) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.M2.WFCertificate)))
 :qid |unknown.0:0|
 :skolemid |3530|
 :pattern ( ($IsBox bx@@4 Tclass.M2.WFCertificate))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.M2.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.M2.Expression)))
 :qid |unknown.0:0|
 :skolemid |4273|
 :pattern ( ($IsBox bx@@5 Tclass.M2.Expression))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.M2.Primitive) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.M2.Primitive)))
 :qid |unknown.0:0|
 :skolemid |4274|
 :pattern ( ($IsBox bx@@6 Tclass.M2.Primitive))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.M2.Literal) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass.M2.Literal)))
 :qid |unknown.0:0|
 :skolemid |4737|
 :pattern ( ($IsBox bx@@7 Tclass.M2.Literal))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.M2.Reason) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass.M2.Reason)))
 :qid |unknown.0:0|
 :skolemid |4813|
 :pattern ( ($IsBox bx@@8 Tclass.M2.Reason))
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
(assert (forall ((|a#116#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Literal.litPrimitive| |a#116#0#0|) Tclass.M2.Literal) ($Is DatatypeTypeType |a#116#0#0| Tclass.M2.Primitive))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |4866|
 :pattern ( ($Is DatatypeTypeType (|#M2.Literal.litPrimitive| |a#116#0#0|) Tclass.M2.Literal))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@33| T@U) (|a#0@@2| T@U) (|st#0@@37| T@U) ) (!  (=> (or (|M2.__default.SetSt#canCall| (Lit BoxType |p#0@@33|) (Lit BoxType |a#0@@2|) (Lit DatatypeTypeType |st#0@@37|)) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@33| Tclass.M2.Path) ($IsBox |a#0@@2| Tclass.M2.Artifact)) ($Is DatatypeTypeType |st#0@@37| Tclass.M2.State)))) (and (M2.State.StateCons_q (Lit DatatypeTypeType |st#0@@37|)) (= (M2.__default.SetSt (Lit BoxType |p#0@@33|) (Lit BoxType |a#0@@2|) (Lit DatatypeTypeType |st#0@@37|)) (|#M2.State.StateCons| (|Map#Build| (Lit MapType (M2.State.m (Lit DatatypeTypeType |st#0@@37|))) (Lit BoxType |p#0@@33|) (Lit BoxType |a#0@@2|))))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :weight 3
 :skolemid |3502|
 :pattern ( (M2.__default.SetSt (Lit BoxType |p#0@@33|) (Lit BoxType |a#0@@2|) (Lit DatatypeTypeType |st#0@@37|)))
))))
(assert (forall ((s@@11 T@U) (i@@4 Int) (v@@4 T@U) ) (!  (and (=> (= i@@4 (|Seq#Length| s@@11)) (= (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@4) v@@4)) (=> (or (not (= i@@4 (|Seq#Length| s@@11))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@4) (|Seq#Index| s@@11 i@@4))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |3022|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@4))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (!  (=> (and (M2.Literal.litString_q a@@18) (M2.Literal.litString_q b@@15)) (= (|M2.Literal#Equal| a@@18 b@@15) (|Seq#Equal| (M2.Literal.str a@@18) (M2.Literal.str b@@15))))
 :qid |unknown.0:0|
 :skolemid |4910|
 :pattern ( (|M2.Literal#Equal| a@@18 b@@15) (M2.Literal.litString_q a@@18))
 :pattern ( (|M2.Literal#Equal| a@@18 b@@15) (M2.Literal.litString_q b@@15))
)))
(assert (forall ((a@@19 T@U) (b@@16 T@U) ) (!  (=> (and (M2.Literal.litPrimitive_q a@@19) (M2.Literal.litPrimitive_q b@@16)) (= (|M2.Literal#Equal| a@@19 b@@16) (|M2.Primitive#Equal| (M2.Literal.prim a@@19) (M2.Literal.prim b@@16))))
 :qid |unknown.0:0|
 :skolemid |4911|
 :pattern ( (|M2.Literal#Equal| a@@19 b@@16) (M2.Literal.litPrimitive_q a@@19))
 :pattern ( (|M2.Literal#Equal| a@@19 b@@16) (M2.Literal.litPrimitive_q b@@16))
)))
(assert (forall ((a@@20 T@U) (b@@17 T@U) ) (!  (=> (and (M2.Literal.litArrOfPaths_q a@@20) (M2.Literal.litArrOfPaths_q b@@17)) (= (|M2.Literal#Equal| a@@20 b@@17) (|Set#Equal| (M2.Literal.paths a@@20) (M2.Literal.paths b@@17))))
 :qid |unknown.0:0|
 :skolemid |4912|
 :pattern ( (|M2.Literal#Equal| a@@20 b@@17) (M2.Literal.litArrOfPaths_q a@@20))
 :pattern ( (|M2.Literal#Equal| a@@20 b@@17) (M2.Literal.litArrOfPaths_q b@@17))
)))
(assert (forall ((a@@21 T@U) (b@@18 T@U) ) (!  (=> (and (M2.Literal.litArrOfStrings_q a@@21) (M2.Literal.litArrOfStrings_q b@@18)) (= (|M2.Literal#Equal| a@@21 b@@18) (|Set#Equal| (M2.Literal.strs a@@21) (M2.Literal.strs b@@18))))
 :qid |unknown.0:0|
 :skolemid |4913|
 :pattern ( (|M2.Literal#Equal| a@@21 b@@18) (M2.Literal.litArrOfStrings_q a@@21))
 :pattern ( (|M2.Literal#Equal| a@@21 b@@18) (M2.Literal.litArrOfStrings_q b@@18))
)))
(assert (forall ((a@@22 T@U) (b@@19 T@U) ) (!  (=> (and (M2.Literal.litArray_q a@@22) (M2.Literal.litArray_q b@@19)) (= (|M2.Literal#Equal| a@@22 b@@19) (|Seq#Equal| (M2.Literal.arr a@@22) (M2.Literal.arr b@@19))))
 :qid |unknown.0:0|
 :skolemid |4914|
 :pattern ( (|M2.Literal#Equal| a@@22 b@@19) (M2.Literal.litArray_q a@@22))
 :pattern ( (|M2.Literal#Equal| a@@22 b@@19) (M2.Literal.litArray_q b@@19))
)))
(assert (forall ((|a#13#0#0| T@U) (bx@@9 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#13#0#0|) bx@@9) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#13#0#0|) bx@@9))) (DtRank (|#M2.State.StateCons| |a#13#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4686|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#13#0#0|) bx@@9) (|#M2.State.StateCons| |a#13#0#0|))
)))
(assert (forall ((certs T@U) (d@@60 T@U) ) (!  (=> (|$let#9$canCall| certs d@@60) (and ($Is DatatypeTypeType (|$let#9_c| certs d@@60) Tclass.M2.WFCertificate) (and (|Set#IsMember| certs ($Box DatatypeTypeType (|$let#9_c| certs d@@60))) (= (M2.WFCertificate.p (|$let#9_c| certs d@@60)) d@@60))))
 :qid |CloudMakeParallelBuildsdfy.669:5|
 :skolemid |3896|
 :pattern ( (|$let#9_c| certs d@@60))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@18 T@U) (|cmd#0@@14| T@U) (|deps#0@@18| T@U) (|restrictedState#0@@1| T@U) (|exps#0@@9| T@U) (|st#0@@38| T@U) ) (!  (=> (or (|M2.__default.execOne#canCall| (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@18|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@9|) (Lit DatatypeTypeType |st#0@@38|)) (and (< 2 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@14| (TSeq TChar)) ($Is SetType |deps#0@@18| (TSet Tclass.M2.Path))) ($Is MapType |restrictedState#0@@1| (TMap Tclass.M2.Path Tclass.M2.Artifact))) ($Is SetType |exps#0@@9| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@38| Tclass.M2.State)))) (and (=> (not (|Set#Equal| |exps#0@@9| |Set#Empty|)) (and (|M2.__default.PickOne#canCall| (TSeq TChar) (Lit SetType |exps#0@@9|)) (let ((|exp#1| (Lit SeqType ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) (Lit SetType |exps#0@@9|))))))
 (and (|M2.__default.execOne#canCall| (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@18|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@9| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1|))) (Lit DatatypeTypeType |st#0@@38|)) (let ((|st'#1| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne ($LS $ly@@18) (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@18|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@9| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1|))) (Lit DatatypeTypeType |st#0@@38|))))))
 (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@18|) |exp#1|) (let ((|p#1@@1| (M2.__default.Loc (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@18|) |exp#1|)))
 (and (|M2.__default.DomSt#canCall| |st'#1|) (=> (not (|Set#IsMember| (M2.__default.DomSt |st'#1|) |p#1@@1|)) (and (|M2.__default.RunTool#canCall| (Lit SeqType |cmd#0@@14|) (Lit MapType |restrictedState#0@@1|) |exp#1|) (|M2.__default.SetSt#canCall| |p#1@@1| (M2.__default.RunTool (Lit SeqType |cmd#0@@14|) (Lit MapType |restrictedState#0@@1|) |exp#1|) |st'#1|))))))))))) (= (M2.__default.execOne ($LS $ly@@18) (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@18|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@9|) (Lit DatatypeTypeType |st#0@@38|)) (ite (|Set#Equal| |exps#0@@9| |Set#Empty|) (|#M2.Tuple.Pair| ($Box SetType (Lit SetType |Set#Empty|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@38|))) (let ((|exp#1@@0| (Lit SeqType ($Unbox SeqType (M2.__default.PickOne (TSeq TChar) (Lit SetType |exps#0@@9|))))))
(let ((|st'#1@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.execOne ($LS $ly@@18) (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@18|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@9| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1@@0|))) (Lit DatatypeTypeType |st#0@@38|))))))
(let ((|paths#1| ($Unbox SetType (M2.Tuple.fst (M2.__default.execOne ($LS $ly@@18) (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@18|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@9| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1@@0|))) (Lit DatatypeTypeType |st#0@@38|))))))
(let ((|p#1@@2| (M2.__default.Loc (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@18|) |exp#1@@0|)))
(|#M2.Tuple.Pair| ($Box SetType (|Set#Union| |paths#1| (|Set#UnionOne| |Set#Empty| |p#1@@2|))) ($Box DatatypeTypeType (ite (|Set#IsMember| (M2.__default.DomSt |st'#1@@0|) |p#1@@2|) |st'#1@@0| (M2.__default.SetSt |p#1@@2| (M2.__default.RunTool (Lit SeqType |cmd#0@@14|) (Lit MapType |restrictedState#0@@1|) |exp#1@@0|) |st'#1@@0|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :weight 3
 :skolemid |3608|
 :pattern ( (M2.__default.execOne ($LS $ly@@18) (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@18|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@9|) (Lit DatatypeTypeType |st#0@@38|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|sts#0@@1| T@U) ) (!  (=> (or (|M2.__default.Compatible#canCall| (Lit SetType |sts#0@@1|)) (and (< 3 $FunctionContextHeight) ($Is SetType |sts#0@@1| (TSet Tclass.M2.State)))) (and (forall ((|st#1| T@U) (|st'#1@@1| T@U) (|p#1@@3| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |st#1| Tclass.M2.State) ($Is DatatypeTypeType |st'#1@@1| Tclass.M2.State)) ($IsBox |p#1@@3| Tclass.M2.Path)) (=> (|Set#IsMember| (Lit SetType |sts#0@@1|) ($Box DatatypeTypeType |st#1|)) (=> (|Set#IsMember| (Lit SetType |sts#0@@1|) ($Box DatatypeTypeType |st'#1@@1|)) (and (|M2.__default.DomSt#canCall| |st#1|) (=> (|Set#IsMember| (M2.__default.DomSt |st#1|) |p#1@@3|) (and (|M2.__default.DomSt#canCall| |st'#1@@1|) (=> (|Set#IsMember| (M2.__default.DomSt |st'#1@@1|) |p#1@@3|) (and (|M2.__default.GetSt#canCall| |p#1@@3| |st#1|) (|M2.__default.GetSt#canCall| |p#1@@3| |st'#1@@1|)))))))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |4303|
 :pattern ( (M2.__default.GetSt |p#1@@3| |st'#1@@1|) (M2.__default.GetSt |p#1@@3| |st#1|))
 :pattern ( (M2.__default.GetSt |p#1@@3| |st'#1@@1|) (M2.__default.DomSt |st#1|))
 :pattern ( (M2.__default.GetSt |p#1@@3| |st'#1@@1|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st#1|)))
 :pattern ( (M2.__default.GetSt |p#1@@3| |st#1|) (M2.__default.DomSt |st'#1@@1|))
 :pattern ( (M2.__default.GetSt |p#1@@3| |st#1|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st'#1@@1|)))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#1@@1|) |p#1@@3|) (M2.__default.DomSt |st#1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#1@@1|) |p#1@@3|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st#1|)))
 :pattern ( (M2.__default.DomSt |st'#1@@1|) (|Set#IsMember| (M2.__default.DomSt |st#1|) |p#1@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#1|) |p#1@@3|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st'#1@@1|)))
)) (= (M2.__default.Compatible (Lit SetType |sts#0@@1|)) (forall ((|st#1@@0| T@U) (|st'#1@@2| T@U) (|p#1@@4| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |st#1@@0| Tclass.M2.State) ($Is DatatypeTypeType |st'#1@@2| Tclass.M2.State)) ($IsBox |p#1@@4| Tclass.M2.Path)) (=> (and (and (and (|Set#IsMember| (Lit SetType |sts#0@@1|) ($Box DatatypeTypeType |st#1@@0|)) (|Set#IsMember| (Lit SetType |sts#0@@1|) ($Box DatatypeTypeType |st'#1@@2|))) (|Set#IsMember| (M2.__default.DomSt |st#1@@0|) |p#1@@4|)) (|Set#IsMember| (M2.__default.DomSt |st'#1@@2|) |p#1@@4|)) (= (M2.__default.GetSt |p#1@@4| |st#1@@0|) (M2.__default.GetSt |p#1@@4| |st'#1@@2|))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |4302|
 :pattern ( (M2.__default.GetSt |p#1@@4| |st'#1@@2|) (M2.__default.GetSt |p#1@@4| |st#1@@0|))
 :pattern ( (M2.__default.GetSt |p#1@@4| |st'#1@@2|) (M2.__default.DomSt |st#1@@0|))
 :pattern ( (M2.__default.GetSt |p#1@@4| |st'#1@@2|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st#1@@0|)))
 :pattern ( (M2.__default.GetSt |p#1@@4| |st#1@@0|) (M2.__default.DomSt |st'#1@@2|))
 :pattern ( (M2.__default.GetSt |p#1@@4| |st#1@@0|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st'#1@@2|)))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#1@@2|) |p#1@@4|) (M2.__default.DomSt |st#1@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#1@@2|) |p#1@@4|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st#1@@0|)))
 :pattern ( (M2.__default.DomSt |st'#1@@2|) (|Set#IsMember| (M2.__default.DomSt |st#1@@0|) |p#1@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#1@@0|) |p#1@@4|) (|Set#IsMember| |sts#0@@1| ($Box DatatypeTypeType |st'#1@@2|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.30:30|
 :weight 3
 :skolemid |4304|
 :pattern ( (M2.__default.Compatible (Lit SetType |sts#0@@1|)))
))))
(assert (forall ((a@@23 T@U) (b@@20 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@23 b@@20) o@@4)  (or (|Set#IsMember| a@@23 o@@4) (|Set#IsMember| b@@20 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |2930|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@23 b@@20) o@@4))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@10 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10)  (or (|Seq#Contains| s0@@1 x@@10) (|Seq#Contains| s1@@1 x@@10)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |3030|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10))
)))
(assert (forall ((s@@12 T@U) (n@@5 Int) (x@@11 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@12 n@@5) x@@11) (exists ((i@@5 Int) ) (!  (and (and (and (<= 0 i@@5) (< i@@5 n@@5)) (< i@@5 (|Seq#Length| s@@12))) (= (|Seq#Index| s@@12 i@@5) x@@11))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |3032|
 :pattern ( (|Seq#Index| s@@12 i@@5))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |3033|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@12 n@@5) x@@11))
)))
(assert (forall ((a@@24 T@U) (b@@21 T@U) ) (!  (=> (|Set#Disjoint| a@@24 b@@21) (and (= (|Set#Difference| (|Set#Union| a@@24 b@@21) a@@24) b@@21) (= (|Set#Difference| (|Set#Union| a@@24 b@@21) b@@21) a@@24)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |2933|
 :pattern ( (|Set#Union| a@@24 b@@21))
)))
(assert (forall ((|a#104#0#0| Int) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#M2.Literal.litNumber| |a#104#0#0|) Tclass.M2.Literal $h@@10) ($IsAlloc intType (int_2_U |a#104#0#0|) TInt $h@@10)))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |4847|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Literal.litNumber| |a#104#0#0|) Tclass.M2.Literal $h@@10))
)))
(assert (forall ((s@@13 T@U) (x@@12 T@U) ) (! (= (|Seq#Contains| s@@13 x@@12) (exists ((i@@6 Int) ) (!  (and (and (<= 0 i@@6) (< i@@6 (|Seq#Length| s@@13))) (= (|Seq#Index| s@@13 i@@6) x@@12))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |3027|
 :pattern ( (|Seq#Index| s@@13 i@@6))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |3028|
 :pattern ( (|Seq#Contains| s@@13 x@@12))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@0| T@U) ) (!  (=> (or (|M2.__default.Value#canCall| |expr#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@0| Tclass.M2.Expression))) (= (M2.__default.Value |expr#0@@0|) (M2.Expression.exprLiteral_q |expr#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :skolemid |4478|
 :pattern ( (M2.__default.Value |expr#0@@0|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@14 T@U) ($ly@@19 T@U) (|p#0@@34| T@U) (|cert#0@@11| T@U) (|deps#0@@19| T@U) (|st#0@@39| T@U) ) (!  (=> (and (or (|M2.__default.CollectDependencies#canCall| |p#0@@34| |cert#0@@11| |deps#0@@19| |st#0@@39|) (and (< 3 $FunctionContextHeight) (and (and (and (and (and ($IsBox |p#0@@34| Tclass.M2.Path) ($IsAllocBox |p#0@@34| Tclass.M2.Path $Heap@@14)) (and ($Is DatatypeTypeType |cert#0@@11| Tclass.M2.WFCertificate) ($IsAlloc DatatypeTypeType |cert#0@@11| Tclass.M2.WFCertificate $Heap@@14))) (and ($Is SetType |deps#0@@19| (TSet Tclass.M2.Path)) ($IsAlloc SetType |deps#0@@19| (TSet Tclass.M2.Path) $Heap@@14))) (and ($Is DatatypeTypeType |st#0@@39| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@39| Tclass.M2.State $Heap@@14))) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@34| |cert#0@@11|) (|Set#Equal| |deps#0@@19| (M2.__default.LocInv__Deps |p#0@@34|)))))) ($IsGoodHeap $Heap@@14)) ($IsAlloc MapType (M2.__default.CollectDependencies $ly@@19 |p#0@@34| |cert#0@@11| |deps#0@@19| |st#0@@39|) (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@14))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |3867|
 :pattern ( ($IsAlloc MapType (M2.__default.CollectDependencies $ly@@19 |p#0@@34| |cert#0@@11| |deps#0@@19| |st#0@@39|) (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@14))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@15 T@U) (|p#0@@35| T@U) ) (!  (=> (or (|M2.__default.GetCert#canCall| (Lit BoxType |p#0@@35|)) (and (< 3 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@15) ($IsBox |p#0@@35| Tclass.M2.Path)) (U_2_bool (Lit boolType (bool_2_U (M2.__default.WellFounded (Lit BoxType |p#0@@35|)))))))) (and (|$let#3$canCall| (Lit BoxType |p#0@@35|)) (= (M2.__default.GetCert (Lit BoxType |p#0@@35|)) (let ((|c#1@@0| (|$let#3_c| (Lit BoxType |p#0@@35|))))
|c#1@@0|))))
 :qid |CloudMakeParallelBuildsdfy.627:18|
 :weight 3
 :skolemid |3798|
 :pattern ( (M2.__default.GetCert (Lit BoxType |p#0@@35|)) ($IsGoodHeap $Heap@@15))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@20 T@U) ($Heap@@16 T@U) (|sts#0@@2| T@U) ) (!  (=> (or (|M2.__default.Combine#canCall| (Lit SetType |sts#0@@2|)) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@16) ($Is SetType |sts#0@@2| (TSet Tclass.M2.State))) (not (|Set#Equal| |sts#0@@2| |Set#Empty|))))) (and (and (|$let#13$canCall| (Lit SetType |sts#0@@2|)) (=> (not (|Set#Equal| |sts#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#13_st| (Lit SetType |sts#0@@2|)))))) (and (|M2.__default.Combine#canCall| (|Set#Difference| |sts#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#13_st| (Lit SetType |sts#0@@2|)))))) (|M2.__default.Union#canCall| (|$let#13_st| (Lit SetType |sts#0@@2|)) (M2.__default.Combine ($LS $ly@@20) (|Set#Difference| |sts#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#13_st| (Lit SetType |sts#0@@2|)))))))))) (= (M2.__default.Combine ($LS $ly@@20) (Lit SetType |sts#0@@2|)) (let ((|st#1@@1| (|$let#13_st| (Lit SetType |sts#0@@2|))))
(ite (|Set#Equal| |sts#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#1@@1|))) |st#1@@1| (M2.__default.Union |st#1@@1| (M2.__default.Combine ($LS $ly@@20) (|Set#Difference| |sts#0@@2| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#1@@1|))))))))))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :weight 3
 :skolemid |4319|
 :pattern ( (M2.__default.Combine ($LS $ly@@20) (Lit SetType |sts#0@@2|)) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M2._default.PickOne$T@@1 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|M2.__default.PickOne#canCall| M2._default.PickOne$T@@1 |s#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |s#0@@0| (TSet M2._default.PickOne$T@@1)) (not (|Set#Equal| |s#0@@0| |Set#Empty|))))) ($IsBox (M2.__default.PickOne M2._default.PickOne$T@@1 |s#0@@0|) M2._default.PickOne$T@@1))
 :qid |unknown.0:0|
 :skolemid |3521|
 :pattern ( (M2.__default.PickOne M2._default.PickOne$T@@1 |s#0@@0|))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($ly@@21 T@U) (|context#0@@3| T@U) (|args#0@@5| T@U) (|stOrig#0@@3| T@U) (|env#0@@6| T@U) ) (!  (=> (or (|M2.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType |args#0@@5|) |stOrig#0@@3| |env#0@@6|) (and (< 7 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@3| Tclass.M2.Expression) ($Is SeqType |args#0@@5| (TSeq Tclass.M2.Expression))) ($Is DatatypeTypeType |stOrig#0@@3| Tclass.M2.State)) ($IsBox |env#0@@6| Tclass.M2.Env)) (and (M2.__default.ValidEnv |env#0@@6|) (forall ((|arg#2| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#2| Tclass.M2.Expression) (=> (|Seq#Contains| |args#0@@5| ($Box DatatypeTypeType |arg#2|)) (< (DtRank |arg#2|) (DtRank |context#0@@3|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |4545|
 :pattern ( (|Seq#Contains| |args#0@@5| ($Box DatatypeTypeType |arg#2|)))
)))))) (and (=> (not (|Seq#Equal| |args#0@@5| |Seq#Empty|)) (and (|M2.__default.eval#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0))) |stOrig#0@@3| |env#0@@6|) (let ((|r#1| (M2.__default.eval ($LS $ly@@21) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0))) |stOrig#0@@3| |env#0@@6|)))
 (and (|M2.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@5|) (LitInt 1))) |stOrig#0@@3| |env#0@@6|) (let ((|rr#1| (M2.__default.evalArgs ($LS $ly@@21) (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@5|) (LitInt 1))) |stOrig#0@@3| |env#0@@6|)))
 (and (and (M2.Tuple.Pair_q |r#1|) (M2.Tuple.Pair_q |rr#1|)) (and (M2.Tuple.Pair_q |r#1|) (M2.Tuple.Pair_q |rr#1|)))))))) (= (M2.__default.evalArgs ($LS $ly@@21) (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType |args#0@@5|) |stOrig#0@@3| |env#0@@6|) (ite (|Seq#Equal| |args#0@@5| |Seq#Empty|) (|#M2.Tuple.Pair| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box SetType (Lit SetType |Set#Empty|))) (let ((|r#1@@0| (M2.__default.eval ($LS $ly@@21) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0))) |stOrig#0@@3| |env#0@@6|)))
(let ((|rr#1@@0| (M2.__default.evalArgs ($LS $ly@@21) (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@5|) (LitInt 1))) |stOrig#0@@3| |env#0@@6|)))
(|#M2.Tuple.Pair| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| (M2.Tuple.fst |r#1@@0|)) ($Unbox SeqType (M2.Tuple.fst |rr#1@@0|)))) ($Box SetType (|Set#Union| (|Set#UnionOne| |Set#Empty| (M2.Tuple.snd |r#1@@0|)) ($Unbox SetType (M2.Tuple.snd |rr#1@@0|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :weight 3
 :skolemid |4546|
 :pattern ( (M2.__default.evalArgs ($LS $ly@@21) (Lit DatatypeTypeType |context#0@@3|) (Lit SeqType |args#0@@5|) |stOrig#0@@3| |env#0@@6|))
))))
(assert (forall ((d@@61 T@U) ) (!  (=> (|$IsA#M2.Reason| d@@61) (or (M2.Reason.rCompatibility_q d@@61) (M2.Reason.rValidity_q d@@61)))
 :qid |unknown.0:0|
 :skolemid |4931|
 :pattern ( (|$IsA#M2.Reason| d@@61))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|p#0@@36| T@U) (|st#0@@40| T@U) ) (!  (=> (or (|M2.__default.Oracle#canCall| |p#0@@36| (Lit DatatypeTypeType |st#0@@40|)) (and (< 4 $FunctionContextHeight) (and ($IsBox |p#0@@36| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@40| Tclass.M2.State)))) (and (and (and (|M2.__default.WellFounded#canCall| |p#0@@36|) (=> (M2.__default.WellFounded |p#0@@36|) (and (|M2.__default.GetCert#canCall| |p#0@@36|) (|M2.__default.OracleWF#canCall| |p#0@@36| (M2.__default.GetCert |p#0@@36|) (Lit DatatypeTypeType |st#0@@40|))))) (=> (not (M2.__default.WellFounded |p#0@@36|)) (|M2.__default.OracleArbitrary#canCall| |p#0@@36|))) (= (M2.__default.Oracle |p#0@@36| (Lit DatatypeTypeType |st#0@@40|)) (ite (M2.__default.WellFounded |p#0@@36|) (M2.__default.OracleWF ($LS $LZ) |p#0@@36| (M2.__default.GetCert |p#0@@36|) (Lit DatatypeTypeType |st#0@@40|)) (M2.__default.OracleArbitrary |p#0@@36|)))))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :weight 3
 :skolemid |3822|
 :pattern ( (M2.__default.Oracle |p#0@@36| (Lit DatatypeTypeType |st#0@@40|)))
))))
(assert (forall ((|a#122#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Literal.litArrOfPaths| |a#122#0#0|) Tclass.M2.Literal) ($Is SetType |a#122#0#0| (TSet Tclass.M2.Path)))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |4876|
 :pattern ( ($Is DatatypeTypeType (|#M2.Literal.litArrOfPaths| |a#122#0#0|) Tclass.M2.Literal))
)))
(assert (forall ((|a#134#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Literal.litArray| |a#134#0#0|) Tclass.M2.Literal) ($Is SeqType |a#134#0#0| (TSeq Tclass.M2.Expression)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |4896|
 :pattern ( ($Is DatatypeTypeType (|#M2.Literal.litArray| |a#134#0#0|) Tclass.M2.Literal))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($ly@@22 T@U) (|expr#0@@1| T@U) (|st#0@@41| T@U) (|env#0@@7| T@U) ) (!  (=> (or (|M2.__default.eval#canCall| |expr#0@@1| |st#0@@41| |env#0@@7|) (and (< 7 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@1| Tclass.M2.Expression) ($Is DatatypeTypeType |st#0@@41| Tclass.M2.State)) ($IsBox |env#0@@7| Tclass.M2.Env)) (M2.__default.ValidEnv |env#0@@7|)))) (and (and (|M2.__default.Value#canCall| |expr#0@@1|) (=> (not (M2.__default.Value |expr#0@@1|)) (and (=> (M2.Expression.exprIdentifier_q |expr#0@@1|) (|M2.__default.GetEnv#canCall| (M2.Expression.id |expr#0@@1|) |env#0@@7|)) (=> (not (M2.Expression.exprIdentifier_q |expr#0@@1|)) (and (=> (M2.Expression.exprIf_q |expr#0@@1|) (and (|M2.__default.eval#canCall| (M2.Expression.cond |expr#0@@1|) |st#0@@41| |env#0@@7|) (let ((|st'#0@@2| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval $ly@@22 (M2.Expression.cond |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|cond'#0| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval $ly@@22 (M2.Expression.cond |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
 (and (and (=> (M2.Expression.exprLiteral_q |cond'#0|) (|$IsA#M2.Literal| (M2.Expression.lit |cond'#0|))) (=> (and (M2.Expression.exprLiteral_q |cond'#0|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#0|) |#M2.Literal.litTrue|)) (|M2.__default.eval#canCall| (M2.Expression.ifTrue |expr#0@@1|) |st'#0@@2| |env#0@@7|))) (=> (not (and (M2.Expression.exprLiteral_q |cond'#0|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#0|) |#M2.Literal.litTrue|))) (and (=> (M2.Expression.exprLiteral_q |cond'#0|) (|$IsA#M2.Literal| (M2.Expression.lit |cond'#0|))) (=> (and (M2.Expression.exprLiteral_q |cond'#0|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#0|) |#M2.Literal.litFalse|)) (|M2.__default.eval#canCall| (M2.Expression.ifFalse |expr#0@@1|) |st'#0@@2| |env#0@@7|))))))))) (=> (not (M2.Expression.exprIf_q |expr#0@@1|)) (and (=> (M2.Expression.exprAnd_q |expr#0@@1|) (and (|M2.__default.eval#canCall| (M2.Expression.conj0 |expr#0@@1|) |st#0@@41| |env#0@@7|) (let ((|st'#1@@3| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval $ly@@22 (M2.Expression.conj0 |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|conj0'#0| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval $ly@@22 (M2.Expression.conj0 |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
 (and (and (=> (M2.Expression.exprLiteral_q |conj0'#0|) (|$IsA#M2.Literal| (M2.Expression.lit |conj0'#0|))) (=> (and (M2.Expression.exprLiteral_q |conj0'#0|) (|M2.Literal#Equal| (M2.Expression.lit |conj0'#0|) |#M2.Literal.litTrue|)) (|M2.__default.eval#canCall| (M2.Expression.conj1 |expr#0@@1|) |st'#1@@3| |env#0@@7|))) (=> (not (and (M2.Expression.exprLiteral_q |conj0'#0|) (|M2.Literal#Equal| (M2.Expression.lit |conj0'#0|) |#M2.Literal.litTrue|))) (=> (M2.Expression.exprLiteral_q |conj0'#0|) (|$IsA#M2.Literal| (M2.Expression.lit |conj0'#0|))))))))) (=> (not (M2.Expression.exprAnd_q |expr#0@@1|)) (and (=> (M2.Expression.exprOr_q |expr#0@@1|) (and (|M2.__default.eval#canCall| (M2.Expression.disj0 |expr#0@@1|) |st#0@@41| |env#0@@7|) (let ((|st'#2| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval $ly@@22 (M2.Expression.disj0 |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|disj0'#0| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval $ly@@22 (M2.Expression.disj0 |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
 (and (=> (M2.Expression.exprLiteral_q |disj0'#0|) (|$IsA#M2.Literal| (M2.Expression.lit |disj0'#0|))) (=> (not (and (M2.Expression.exprLiteral_q |disj0'#0|) (|M2.Literal#Equal| (M2.Expression.lit |disj0'#0|) |#M2.Literal.litTrue|))) (and (=> (M2.Expression.exprLiteral_q |disj0'#0|) (|$IsA#M2.Literal| (M2.Expression.lit |disj0'#0|))) (=> (and (M2.Expression.exprLiteral_q |disj0'#0|) (|M2.Literal#Equal| (M2.Expression.lit |disj0'#0|) |#M2.Literal.litFalse|)) (|M2.__default.eval#canCall| (M2.Expression.disj1 |expr#0@@1|) |st'#2| |env#0@@7|))))))))) (=> (not (M2.Expression.exprOr_q |expr#0@@1|)) (=> (M2.Expression.exprInvocation_q |expr#0@@1|) (and (|M2.__default.eval#canCall| (M2.Expression.fun |expr#0@@1|) |st#0@@41| |env#0@@7|) (let ((|st'#3| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval $ly@@22 (M2.Expression.fun |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|fun'#0| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval $ly@@22 (M2.Expression.fun |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
 (and (|M2.__default.evalArgs#canCall| |expr#0@@1| (M2.Expression.args |expr#0@@1|) |st#0@@41| |env#0@@7|) (let ((|sts'#0| ($Unbox SetType (M2.Tuple.snd (M2.__default.evalArgs $ly@@22 |expr#0@@1| (M2.Expression.args |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|args'#0| ($Unbox SeqType (M2.Tuple.fst (M2.__default.evalArgs $ly@@22 |expr#0@@1| (M2.Expression.args |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|sts''#0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#3|)) |sts'#0|)))
 (and (|M2.__default.Compatible#canCall| |sts''#0|) (=> (M2.__default.Compatible |sts''#0|) (and (|M2.__default.Combine#canCall| |sts''#0|) (let ((|stCombined#0| (M2.__default.Combine ($LS $LZ) |sts''#0|)))
 (=> (and (M2.Expression.exprLiteral_q |fun'#0|) (M2.Literal.litPrimitive_q (M2.Expression.lit |fun'#0|))) (=> (M2.Primitive.primExec_q (M2.Literal.prim (M2.Expression.lit |fun'#0|))) (and (and (|M2.__default.Arity#canCall| (Lit DatatypeTypeType |#M2.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#0|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (|M2.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M2.Primitive.primExec|) |args'#0| |stCombined#0|))) (=> (and (= (|Seq#Length| |args'#0|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (M2.__default.ValidArgs (Lit DatatypeTypeType |#M2.Primitive.primExec|) |args'#0| |stCombined#0|)) (and (|M2.__default.exec#canCall| (M2.Literal.str (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 0))))) (M2.Literal.paths (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 1))))) (M2.Literal.strs (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 2))))) |stCombined#0|) (let ((|ps#0| (M2.__default.exec (M2.Literal.str (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 0))))) (M2.Literal.paths (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 1))))) (M2.Literal.strs (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 2))))) |stCombined#0|)))
 (and (M2.Tuple.Pair_q |ps#0|) (M2.Tuple.Pair_q |ps#0|)))))))))))))))))))))))))))))) (= (M2.__default.eval ($LS $ly@@22) |expr#0@@1| |st#0@@41| |env#0@@7|) (ite (M2.__default.Value |expr#0@@1|) (|#M2.Tuple.Pair| ($Box DatatypeTypeType |expr#0@@1|) ($Box DatatypeTypeType |st#0@@41|)) (ite (M2.Expression.exprIdentifier_q |expr#0@@1|) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (M2.__default.GetEnv (M2.Expression.id |expr#0@@1|) |env#0@@7|)) ($Box DatatypeTypeType |st#0@@41|)) (ite (M2.Expression.exprIf_q |expr#0@@1|) (let ((|st'#0@@3| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval $ly@@22 (M2.Expression.cond |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|cond'#0@@0| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval $ly@@22 (M2.Expression.cond |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(ite  (and (M2.Expression.exprLiteral_q |cond'#0@@0|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#0@@0|) |#M2.Literal.litTrue|)) (M2.__default.eval $ly@@22 (M2.Expression.ifTrue |expr#0@@1|) |st'#0@@3| |env#0@@7|) (ite  (and (M2.Expression.exprLiteral_q |cond'#0@@0|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#0@@0|) |#M2.Literal.litFalse|)) (M2.__default.eval $ly@@22 (M2.Expression.ifFalse |expr#0@@1|) |st'#0@@3| |env#0@@7|) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@41|)))))) (ite (M2.Expression.exprAnd_q |expr#0@@1|) (let ((|st'#1@@4| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval $ly@@22 (M2.Expression.conj0 |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|conj0'#0@@0| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval $ly@@22 (M2.Expression.conj0 |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(ite  (and (M2.Expression.exprLiteral_q |conj0'#0@@0|) (|M2.Literal#Equal| (M2.Expression.lit |conj0'#0@@0|) |#M2.Literal.litTrue|)) (M2.__default.eval $ly@@22 (M2.Expression.conj1 |expr#0@@1|) |st'#1@@4| |env#0@@7|) (ite  (and (M2.Expression.exprLiteral_q |conj0'#0@@0|) (|M2.Literal#Equal| (M2.Expression.lit |conj0'#0@@0|) |#M2.Literal.litFalse|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprLiteral| (Lit DatatypeTypeType |#M2.Literal.litFalse|)))) ($Box DatatypeTypeType |st'#1@@4|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@41|)))))) (ite (M2.Expression.exprOr_q |expr#0@@1|) (let ((|st'#2@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval $ly@@22 (M2.Expression.disj0 |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|disj0'#0@@0| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval $ly@@22 (M2.Expression.disj0 |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(ite  (and (M2.Expression.exprLiteral_q |disj0'#0@@0|) (|M2.Literal#Equal| (M2.Expression.lit |disj0'#0@@0|) |#M2.Literal.litTrue|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprLiteral| (Lit DatatypeTypeType |#M2.Literal.litTrue|)))) ($Box DatatypeTypeType |st'#2@@0|)) (ite  (and (M2.Expression.exprLiteral_q |disj0'#0@@0|) (|M2.Literal#Equal| (M2.Expression.lit |disj0'#0@@0|) |#M2.Literal.litFalse|)) (M2.__default.eval $ly@@22 (M2.Expression.disj1 |expr#0@@1|) |st'#2@@0| |env#0@@7|) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@41|)))))) (ite (M2.Expression.exprInvocation_q |expr#0@@1|) (let ((|st'#3@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval $ly@@22 (M2.Expression.fun |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|fun'#0@@0| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval $ly@@22 (M2.Expression.fun |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|sts'#0@@0| ($Unbox SetType (M2.Tuple.snd (M2.__default.evalArgs $ly@@22 |expr#0@@1| (M2.Expression.args |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|args'#0@@0| ($Unbox SeqType (M2.Tuple.fst (M2.__default.evalArgs $ly@@22 |expr#0@@1| (M2.Expression.args |expr#0@@1|) |st#0@@41| |env#0@@7|)))))
(let ((|sts''#0@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#3@@0|)) |sts'#0@@0|)))
(ite  (not (M2.__default.Compatible |sts''#0@@0|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rCompatibility|)))) ($Box DatatypeTypeType |st#0@@41|)) (let ((|stCombined#0@@0| (M2.__default.Combine ($LS $LZ) |sts''#0@@0|)))
(ite  (and (M2.Expression.exprLiteral_q |fun'#0@@0|) (M2.Literal.litPrimitive_q (M2.Expression.lit |fun'#0@@0|))) (ite (M2.Primitive.primExec_q (M2.Literal.prim (M2.Expression.lit |fun'#0@@0|))) (ite  (and (= (|Seq#Length| |args'#0@@0|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (M2.__default.ValidArgs (Lit DatatypeTypeType |#M2.Primitive.primExec|) |args'#0@@0| |stCombined#0@@0|)) (let ((|ps#0@@0| (M2.__default.exec (M2.Literal.str (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@0| (LitInt 0))))) (M2.Literal.paths (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@0| (LitInt 1))))) (M2.Literal.strs (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@0| (LitInt 2))))) |stCombined#0@@0|)))
(|#M2.Tuple.Pair| ($Box DatatypeTypeType (|#M2.Expression.exprLiteral| (|#M2.Literal.litArrOfPaths| ($Unbox SetType (M2.Tuple.fst |ps#0@@0|))))) (M2.Tuple.snd |ps#0@@0|))) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@41|))) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@41|))) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@41|)))))))))) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@41|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |4515|
 :pattern ( (M2.__default.eval ($LS $ly@@22) |expr#0@@1| |st#0@@41| |env#0@@7|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|sts#0@@3| T@U) ) (!  (=> (or (|M2.__default.Compatible#canCall| |sts#0@@3|) (and (< 3 $FunctionContextHeight) ($Is SetType |sts#0@@3| (TSet Tclass.M2.State)))) (and (forall ((|st#0@@42| T@U) (|st'#0@@4| T@U) (|p#0@@37| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |st#0@@42| Tclass.M2.State) ($Is DatatypeTypeType |st'#0@@4| Tclass.M2.State)) ($IsBox |p#0@@37| Tclass.M2.Path)) (=> (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@42|)) (=> (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@4|)) (and (|M2.__default.DomSt#canCall| |st#0@@42|) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@42|) |p#0@@37|) (and (|M2.__default.DomSt#canCall| |st'#0@@4|) (=> (|Set#IsMember| (M2.__default.DomSt |st'#0@@4|) |p#0@@37|) (and (|M2.__default.GetSt#canCall| |p#0@@37| |st#0@@42|) (|M2.__default.GetSt#canCall| |p#0@@37| |st'#0@@4|)))))))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |4300|
 :pattern ( (M2.__default.GetSt |p#0@@37| |st'#0@@4|) (M2.__default.GetSt |p#0@@37| |st#0@@42|))
 :pattern ( (M2.__default.GetSt |p#0@@37| |st'#0@@4|) (M2.__default.DomSt |st#0@@42|))
 :pattern ( (M2.__default.GetSt |p#0@@37| |st'#0@@4|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@42|)))
 :pattern ( (M2.__default.GetSt |p#0@@37| |st#0@@42|) (M2.__default.DomSt |st'#0@@4|))
 :pattern ( (M2.__default.GetSt |p#0@@37| |st#0@@42|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@4|)))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@4|) |p#0@@37|) (M2.__default.DomSt |st#0@@42|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@4|) |p#0@@37|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@42|)))
 :pattern ( (M2.__default.DomSt |st'#0@@4|) (|Set#IsMember| (M2.__default.DomSt |st#0@@42|) |p#0@@37|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@42|) |p#0@@37|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@4|)))
)) (= (M2.__default.Compatible |sts#0@@3|) (forall ((|st#0@@43| T@U) (|st'#0@@5| T@U) (|p#0@@38| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |st#0@@43| Tclass.M2.State) ($Is DatatypeTypeType |st'#0@@5| Tclass.M2.State)) ($IsBox |p#0@@38| Tclass.M2.Path)) (=> (and (and (and (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@43|)) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@5|))) (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#0@@38|)) (|Set#IsMember| (M2.__default.DomSt |st'#0@@5|) |p#0@@38|)) (= (M2.__default.GetSt |p#0@@38| |st#0@@43|) (M2.__default.GetSt |p#0@@38| |st'#0@@5|))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |4299|
 :pattern ( (M2.__default.GetSt |p#0@@38| |st'#0@@5|) (M2.__default.GetSt |p#0@@38| |st#0@@43|))
 :pattern ( (M2.__default.GetSt |p#0@@38| |st'#0@@5|) (M2.__default.DomSt |st#0@@43|))
 :pattern ( (M2.__default.GetSt |p#0@@38| |st'#0@@5|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@43|)))
 :pattern ( (M2.__default.GetSt |p#0@@38| |st#0@@43|) (M2.__default.DomSt |st'#0@@5|))
 :pattern ( (M2.__default.GetSt |p#0@@38| |st#0@@43|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@5|)))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@5|) |p#0@@38|) (M2.__default.DomSt |st#0@@43|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@5|) |p#0@@38|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@43|)))
 :pattern ( (M2.__default.DomSt |st'#0@@5|) (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#0@@38|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@43|) |p#0@@38|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@5|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.30:30|
 :skolemid |4301|
 :pattern ( (M2.__default.Compatible |sts#0@@3|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@39| T@U) (|a#0@@3| T@U) (|st#0@@44| T@U) ) (!  (=> (or (|M2.__default.SetSt#canCall| |p#0@@39| |a#0@@3| |st#0@@44|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@39| Tclass.M2.Path) ($IsBox |a#0@@3| Tclass.M2.Artifact)) ($Is DatatypeTypeType |st#0@@44| Tclass.M2.State)))) ($Is DatatypeTypeType (M2.__default.SetSt |p#0@@39| |a#0@@3| |st#0@@44|) Tclass.M2.State))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :skolemid |3497|
 :pattern ( (M2.__default.SetSt |p#0@@39| |a#0@@3| |st#0@@44|))
))))
(assert (forall ((|a#109#0#0| T@U) ($h@@11 T@U) ) (!  (=> ($IsGoodHeap $h@@11) (= ($IsAlloc DatatypeTypeType (|#M2.Literal.litString| |a#109#0#0|) Tclass.M2.Literal $h@@11) ($IsAlloc SeqType |a#109#0#0| (TSeq TChar) $h@@11)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |4856|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Literal.litString| |a#109#0#0|) Tclass.M2.Literal $h@@11))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@40| T@U) ) (!  (=> (or (|M2.__default.GetCert#canCall| |p#0@@40|) (and (< 3 $FunctionContextHeight) (and ($IsBox |p#0@@40| Tclass.M2.Path) (M2.__default.WellFounded |p#0@@40|)))) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@40| (M2.__default.GetCert |p#0@@40|)) ($Is DatatypeTypeType (M2.__default.GetCert |p#0@@40|) Tclass.M2.WFCertificate)))
 :qid |CloudMakeParallelBuildsdfy.627:26|
 :skolemid |3794|
 :pattern ( (M2.__default.GetCert |p#0@@40|))
))))
(assert (forall ((a@@25 T@U) (b@@22 T@U) ) (!  (=> (|Set#Equal| a@@25 b@@22) (= a@@25 b@@22))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2947|
 :pattern ( (|Set#Equal| a@@25 b@@22))
)))
(assert (forall ((a@@26 T@U) (b@@23 T@U) ) (!  (=> (|Seq#Equal| a@@26 b@@23) (= a@@26 b@@23))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |3038|
 :pattern ( (|Seq#Equal| a@@26 b@@23))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@23 T@U) (|p#0@@41| T@U) (|cert#0@@12| T@U) ) (!  (=> (or (|M2.__default.CheckWellFounded#canCall| (Lit BoxType |p#0@@41|) (Lit DatatypeTypeType |cert#0@@12|)) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@41| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@12| Tclass.M2.WFCertificate)))) (and (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@12|)) (=> (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@12|))) (Lit BoxType |p#0@@41|)) (and (forall ((|d#2| T@U) ) (!  (=> ($IsBox |d#2| Tclass.M2.Path) (and (|M2.__default.LocInv__Deps#canCall| (Lit BoxType |p#0@@41|)) (=> (|Set#IsMember| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@41|)) |d#2|) (forall ((|c#4@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#4@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@12|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|))) ($Box DatatypeTypeType |c#4@@0|)) (M2.WFCertificate.Cert_q |c#4@@0|))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3566|
 :pattern ( (M2.WFCertificate.p |c#4@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@12|) ($Box DatatypeTypeType |c#4@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3567|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@41|) |d#2|))
)) (=> (forall ((|d#2@@0| T@U) ) (!  (=> ($IsBox |d#2@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@41|)) |d#2@@0|) (exists ((|c#4@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|))) ($Box DatatypeTypeType |c#4@@1|)) (= (M2.WFCertificate.p |c#4@@1|) |d#2@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3569|
 :pattern ( (M2.WFCertificate.p |c#4@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@12|) ($Box DatatypeTypeType |c#4@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3570|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@41|) |d#2@@0|))
)) (forall ((|c#5| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@12|)) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|))) ($Box DatatypeTypeType |c#5|)) (and (M2.WFCertificate.Cert_q |c#5|) (|M2.__default.CheckWellFounded#canCall| (M2.WFCertificate.p |c#5|) |c#5|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3568|
 :pattern ( (M2.WFCertificate.p |c#5|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@12|) ($Box DatatypeTypeType |c#5|)))
)))))) (= (M2.__default.CheckWellFounded ($LS $ly@@23) (Lit BoxType |p#0@@41|) (Lit DatatypeTypeType |cert#0@@12|))  (and (and (= (Lit BoxType (M2.WFCertificate.p (Lit DatatypeTypeType |cert#0@@12|))) (Lit BoxType |p#0@@41|)) (forall ((|d#2@@1| T@U) ) (!  (=> ($IsBox |d#2@@1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@41|)) |d#2@@1|) (exists ((|c#4@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@2| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|))) ($Box DatatypeTypeType |c#4@@2|)) (= (M2.WFCertificate.p |c#4@@2|) |d#2@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3563|
 :pattern ( (M2.WFCertificate.p |c#4@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@12|) ($Box DatatypeTypeType |c#4@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3564|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@41|) |d#2@@1|))
))) (forall ((|c#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@0| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M2.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@12|))) ($Box DatatypeTypeType |c#5@@0|)) (M2.__default.CheckWellFounded ($LS $ly@@23) (M2.WFCertificate.p |c#5@@0|) |c#5@@0|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3565|
 :pattern ( (M2.WFCertificate.p |c#5@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@12|) ($Box DatatypeTypeType |c#5@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |3571|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@23) (Lit BoxType |p#0@@41|) (Lit DatatypeTypeType |cert#0@@12|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0@@3| T@U) ) (!  (=> (or (|M2.__default.Arity#canCall| |prim#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0@@3| Tclass.M2.Primitive))) (<= (LitInt 0) (M2.__default.Arity |prim#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.282:24|
 :skolemid |4555|
 :pattern ( (M2.__default.Arity |prim#0@@3|))
))))
(assert (forall ((|a#36#0#0@@0| T@U) ($h@@12 T@U) ) (!  (=> ($IsGoodHeap $h@@12) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprLiteral| |a#36#0#0@@0|) Tclass.M2.Expression $h@@12) ($IsAlloc DatatypeTypeType |a#36#0#0@@0| Tclass.M2.Literal $h@@12)))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |4739|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprLiteral| |a#36#0#0@@0|) Tclass.M2.Expression $h@@12))
)))
(assert (forall ((|a#42#0#0@@0| T@U) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprIdentifier| |a#42#0#0@@0|) Tclass.M2.Expression $h@@13) ($IsAllocBox |a#42#0#0@@0| Tclass.M2.Identifier $h@@13)))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |4749|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprIdentifier| |a#42#0#0@@0|) Tclass.M2.Expression $h@@13))
)))
(assert (forall ((|a#82#0#0@@0| T@U) ($h@@14 T@U) ) (!  (=> ($IsGoodHeap $h@@14) (= ($IsAlloc DatatypeTypeType (|#M2.Expression.exprError| |a#82#0#0@@0|) Tclass.M2.Expression $h@@14) ($IsAlloc DatatypeTypeType |a#82#0#0@@0| Tclass.M2.Reason $h@@14)))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |4815|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Expression.exprError| |a#82#0#0@@0|) Tclass.M2.Expression $h@@14))
)))
(assert (forall ((|a#116#0#0@@0| T@U) ($h@@15 T@U) ) (!  (=> ($IsGoodHeap $h@@15) (= ($IsAlloc DatatypeTypeType (|#M2.Literal.litPrimitive| |a#116#0#0@@0|) Tclass.M2.Literal $h@@15) ($IsAlloc DatatypeTypeType |a#116#0#0@@0| Tclass.M2.Primitive $h@@15)))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |4867|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Literal.litPrimitive| |a#116#0#0@@0|) Tclass.M2.Literal $h@@15))
)))
(assert (forall ((|l#0@@1| T@U) (|$w#0@@1| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#1| |l#0@@1|) |$w#0@@1|) (M2.__default.GetSt |$w#0@@1| |l#0@@1|))
 :qid |CloudMakeParallelBuildsdfy.473:45|
 :skolemid |7205|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#1| |l#0@@1|) |$w#0@@1|))
)))
(assert (forall ((s@@14 T@U) (n@@6 Int) ) (!  (=> (and (<= 0 n@@6) (<= n@@6 (|Seq#Length| s@@14))) (= (|Seq#Length| (|Seq#Take| s@@14 n@@6)) n@@6))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |3041|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@14 n@@6)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|cmd#0@@15| T@U) (|deps#0@@20| T@U) (|exps#0@@10| T@U) (|st#0@@45| T@U) ) (!  (=> (or (|M2.__default.exec#canCall| |cmd#0@@15| |deps#0@@20| |exps#0@@10| |st#0@@45|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@15| (TSeq TChar)) ($Is SetType |deps#0@@20| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@10| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@45| Tclass.M2.State)))) (and (and (|M2.__default.Restrict#canCall| |deps#0@@20| |st#0@@45|) (|M2.__default.execOne#canCall| |cmd#0@@15| |deps#0@@20| (M2.__default.Restrict |deps#0@@20| |st#0@@45|) |exps#0@@10| |st#0@@45|)) (= (M2.__default.exec |cmd#0@@15| |deps#0@@20| |exps#0@@10| |st#0@@45|) (M2.__default.execOne ($LS $LZ) |cmd#0@@15| |deps#0@@20| (M2.__default.Restrict |deps#0@@20| |st#0@@45|) |exps#0@@10| |st#0@@45|))))
 :qid |CloudMakeParallelBuildsdfy.69:23|
 :skolemid |3597|
 :pattern ( (M2.__default.exec |cmd#0@@15| |deps#0@@20| |exps#0@@10| |st#0@@45|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0@@42| T@U) ) (!  (=> (or (|M2.__default.OracleArbitrary#canCall| |p#0@@42|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0@@42| Tclass.M2.Path))) ($IsBox (M2.__default.OracleArbitrary |p#0@@42|) Tclass.M2.Artifact))
 :qid |CloudMakeParallelBuildsdfy.648:34|
 :skolemid |3838|
 :pattern ( (M2.__default.OracleArbitrary |p#0@@42|))
))))
(assert (forall ((|a#9#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0|) Tclass.M2.State) ($Is MapType |a#9#0#0| (TMap Tclass.M2.Path Tclass.M2.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4680|
 :pattern ( ($Is DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0|) Tclass.M2.State))
)))
(assert (forall ((d@@62 T@U) ) (!  (=> ($Is DatatypeTypeType d@@62 Tclass.M2.Primitive) (or (M2.Primitive.primCreatePath_q d@@62) (M2.Primitive.primExec_q d@@62)))
 :qid |unknown.0:0|
 :skolemid |4922|
 :pattern ( (M2.Primitive.primExec_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.M2.Primitive))
 :pattern ( (M2.Primitive.primCreatePath_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.M2.Primitive))
)))
(assert (forall ((d@@63 T@U) ) (!  (=> ($Is DatatypeTypeType d@@63 Tclass.M2.Reason) (or (M2.Reason.rCompatibility_q d@@63) (M2.Reason.rValidity_q d@@63)))
 :qid |unknown.0:0|
 :skolemid |4932|
 :pattern ( (M2.Reason.rValidity_q d@@63) ($Is DatatypeTypeType d@@63 Tclass.M2.Reason))
 :pattern ( (M2.Reason.rCompatibility_q d@@63) ($Is DatatypeTypeType d@@63 Tclass.M2.Reason))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($ly@@24 T@U) (|expr#0@@2| T@U) (|st#0@@46| T@U) (|env#0@@8| T@U) ) (!  (=> (or (|M2.__default.eval#canCall| |expr#0@@2| |st#0@@46| |env#0@@8|) (and (< 7 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@2| Tclass.M2.Expression) ($Is DatatypeTypeType |st#0@@46| Tclass.M2.State)) ($IsBox |env#0@@8| Tclass.M2.Env)) (M2.__default.ValidEnv |env#0@@8|)))) ($Is DatatypeTypeType (M2.__default.eval $ly@@24 |expr#0@@2| |st#0@@46| |env#0@@8|) (Tclass.M2.Tuple Tclass.M2.Expression Tclass.M2.State)))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |4512|
 :pattern ( (M2.__default.eval $ly@@24 |expr#0@@2| |st#0@@46| |env#0@@8|))
))))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TInt) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2824|
 :pattern ( ($IsBox bx@@10 TInt))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TChar) (and (= ($Box charType ($Unbox charType bx@@11)) bx@@11) ($Is charType ($Unbox charType bx@@11) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |2827|
 :pattern ( ($IsBox bx@@11 TChar))
)))
(assert (forall ((|a#128#0#0| T@U) ($h@@16 T@U) ) (!  (=> ($IsGoodHeap $h@@16) (= ($IsAlloc DatatypeTypeType (|#M2.Literal.litArrOfStrings| |a#128#0#0|) Tclass.M2.Literal $h@@16) ($IsAlloc SetType |a#128#0#0| (TSet (TSeq TChar)) $h@@16)))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |4887|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Literal.litArrOfStrings| |a#128#0#0|) Tclass.M2.Literal $h@@16))
)))
(assert (forall ((v@@5 T@U) (t@@4 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@5) t@@4) ($Is T@@2 v@@5 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2835|
 :pattern ( ($IsBox ($Box T@@2 v@@5) t@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@17 T@U) (|paths#0@@4| T@U) (|st#0@@47| T@U) ) (!  (=> (and (or (|M2.__default.Restrict#canCall| |paths#0@@4| |st#0@@47|) (and (< 3 $FunctionContextHeight) (and (and ($Is SetType |paths#0@@4| (TSet Tclass.M2.Path)) ($IsAlloc SetType |paths#0@@4| (TSet Tclass.M2.Path) $Heap@@17)) (and ($Is DatatypeTypeType |st#0@@47| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@47| Tclass.M2.State $Heap@@17))))) ($IsGoodHeap $Heap@@17)) ($IsAlloc MapType (M2.__default.Restrict |paths#0@@4| |st#0@@47|) (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@17))
 :qid |CloudMakeParallelBuildsdfy.473:18|
 :skolemid |3504|
 :pattern ( ($IsAlloc MapType (M2.__default.Restrict |paths#0@@4| |st#0@@47|) (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@17))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@16| T@U) (|deps#0@@21| T@U) (|exps#0@@11| T@U) (|paths#0@@5| T@U) ) (!  (=> (or (|M2.__default.OneToOne#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@21|) (Lit SetType |exps#0@@11|) (Lit SetType |paths#0@@5|)) (and (< 1 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@16| (TSeq TChar)) ($Is SetType |deps#0@@21| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@11| (TSet (TSeq TChar)))) ($Is SetType |paths#0@@5| (TSet Tclass.M2.Path))))) (and (forall ((|e#1@@3| T@U) ) (!  (=> ($Is SeqType |e#1@@3| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@11|) ($Box SeqType |e#1@@3|)) (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@21|) |e#1@@3|)))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |4391|
 :pattern ( (M2.__default.Loc |cmd#0@@16| |deps#0@@21| |e#1@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#1@@3|)))
)) (= (M2.__default.OneToOne (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@21|) (Lit SetType |exps#0@@11|) (Lit SetType |paths#0@@5|)) (forall ((|e#1@@4| T@U) ) (!  (=> ($Is SeqType |e#1@@4| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@11|) ($Box SeqType |e#1@@4|)) (|Set#IsMember| (Lit SetType |paths#0@@5|) (M2.__default.Loc (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@21|) |e#1@@4|))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |4390|
 :pattern ( (M2.__default.Loc |cmd#0@@16| |deps#0@@21| |e#1@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@11| ($Box SeqType |e#1@@4|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.89:28|
 :weight 3
 :skolemid |4392|
 :pattern ( (M2.__default.OneToOne (Lit SeqType |cmd#0@@16|) (Lit SetType |deps#0@@21|) (Lit SetType |exps#0@@11|) (Lit SetType |paths#0@@5|)))
))))
(assert (forall ((s@@15 T@U) ) (! (<= 0 (|Seq#Length| s@@15))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3018|
 :pattern ( (|Seq#Length| s@@15))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@6 T@U) ) (!  (=> ($IsBox v@@6 ty) ($IsAllocBox v@@6 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |2876|
 :pattern ( ($IsAllocBox v@@6 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |2877|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((s@@16 T@U) (i@@7 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@7) (< i@@7 j@@2)) (<= j@@2 (|Seq#Length| s@@16))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@16 i@@7) (|Seq#Drop| s@@16 j@@2))) (|Seq#Rank| s@@16)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |3067|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@16 i@@7) (|Seq#Drop| s@@16 j@@2))))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M2._default.PickOne$T@@2 T@U) ($Heap@@18 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|M2.__default.PickOne#canCall| M2._default.PickOne$T@@2 |s#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@18) ($Is SetType |s#0@@1| (TSet M2._default.PickOne$T@@2))) (not (|Set#Equal| |s#0@@1| |Set#Empty|))))) (and (|$let#0$canCall| M2._default.PickOne$T@@2 |s#0@@1|) (= (M2.__default.PickOne M2._default.PickOne$T@@2 |s#0@@1|) (let ((|x#0| (|$let#0_x| M2._default.PickOne$T@@2 |s#0@@1|)))
|x#0|))))
 :qid |unknown.0:0|
 :skolemid |3525|
 :pattern ( (M2.__default.PickOne M2._default.PickOne$T@@2 |s#0@@1|) ($IsGoodHeap $Heap@@18))
))))
(assert (forall ((a@@27 T@U) (b@@24 T@U) ) (!  (=> (and (M2.Literal.litTrue_q a@@27) (M2.Literal.litTrue_q b@@24)) (|M2.Literal#Equal| a@@27 b@@24))
 :qid |unknown.0:0|
 :skolemid |4905|
 :pattern ( (|M2.Literal#Equal| a@@27 b@@24) (M2.Literal.litTrue_q a@@27))
 :pattern ( (|M2.Literal#Equal| a@@27 b@@24) (M2.Literal.litTrue_q b@@24))
)))
(assert (forall ((a@@28 T@U) (b@@25 T@U) ) (!  (=> (and (M2.Literal.litFalse_q a@@28) (M2.Literal.litFalse_q b@@25)) (|M2.Literal#Equal| a@@28 b@@25))
 :qid |unknown.0:0|
 :skolemid |4906|
 :pattern ( (|M2.Literal#Equal| a@@28 b@@25) (M2.Literal.litFalse_q a@@28))
 :pattern ( (|M2.Literal#Equal| a@@28 b@@25) (M2.Literal.litFalse_q b@@25))
)))
(assert (forall ((a@@29 T@U) (b@@26 T@U) ) (!  (=> (and (M2.Literal.litUndefined_q a@@29) (M2.Literal.litUndefined_q b@@26)) (|M2.Literal#Equal| a@@29 b@@26))
 :qid |unknown.0:0|
 :skolemid |4907|
 :pattern ( (|M2.Literal#Equal| a@@29 b@@26) (M2.Literal.litUndefined_q a@@29))
 :pattern ( (|M2.Literal#Equal| a@@29 b@@26) (M2.Literal.litUndefined_q b@@26))
)))
(assert (forall ((a@@30 T@U) (b@@27 T@U) ) (!  (=> (and (M2.Literal.litNull_q a@@30) (M2.Literal.litNull_q b@@27)) (|M2.Literal#Equal| a@@30 b@@27))
 :qid |unknown.0:0|
 :skolemid |4908|
 :pattern ( (|M2.Literal#Equal| a@@30 b@@27) (M2.Literal.litNull_q a@@30))
 :pattern ( (|M2.Literal#Equal| a@@30 b@@27) (M2.Literal.litNull_q b@@27))
)))
(assert (forall ((a@@31 T@U) (b@@28 T@U) ) (!  (=> (and (M2.Primitive.primCreatePath_q a@@31) (M2.Primitive.primCreatePath_q b@@28)) (|M2.Primitive#Equal| a@@31 b@@28))
 :qid |unknown.0:0|
 :skolemid |4923|
 :pattern ( (|M2.Primitive#Equal| a@@31 b@@28) (M2.Primitive.primCreatePath_q a@@31))
 :pattern ( (|M2.Primitive#Equal| a@@31 b@@28) (M2.Primitive.primCreatePath_q b@@28))
)))
(assert (forall ((a@@32 T@U) (b@@29 T@U) ) (!  (=> (and (M2.Primitive.primExec_q a@@32) (M2.Primitive.primExec_q b@@29)) (|M2.Primitive#Equal| a@@32 b@@29))
 :qid |unknown.0:0|
 :skolemid |4924|
 :pattern ( (|M2.Primitive#Equal| a@@32 b@@29) (M2.Primitive.primExec_q a@@32))
 :pattern ( (|M2.Primitive#Equal| a@@32 b@@29) (M2.Primitive.primExec_q b@@29))
)))
(assert (forall ((a@@33 T@U) (b@@30 T@U) ) (!  (=> (and (M2.Reason.rCompatibility_q a@@33) (M2.Reason.rCompatibility_q b@@30)) (|M2.Reason#Equal| a@@33 b@@30))
 :qid |unknown.0:0|
 :skolemid |4933|
 :pattern ( (|M2.Reason#Equal| a@@33 b@@30) (M2.Reason.rCompatibility_q a@@33))
 :pattern ( (|M2.Reason#Equal| a@@33 b@@30) (M2.Reason.rCompatibility_q b@@30))
)))
(assert (forall ((a@@34 T@U) (b@@31 T@U) ) (!  (=> (and (M2.Reason.rValidity_q a@@34) (M2.Reason.rValidity_q b@@31)) (|M2.Reason#Equal| a@@34 b@@31))
 :qid |unknown.0:0|
 :skolemid |4934|
 :pattern ( (|M2.Reason#Equal| a@@34 b@@31) (M2.Reason.rValidity_q a@@34))
 :pattern ( (|M2.Reason#Equal| a@@34 b@@31) (M2.Reason.rValidity_q b@@31))
)))
(assert (forall ((|a#122#0#0@@0| T@U) ($h@@17 T@U) ) (!  (=> ($IsGoodHeap $h@@17) (= ($IsAlloc DatatypeTypeType (|#M2.Literal.litArrOfPaths| |a#122#0#0@@0|) Tclass.M2.Literal $h@@17) ($IsAlloc SetType |a#122#0#0@@0| (TSet Tclass.M2.Path) $h@@17)))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |4877|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Literal.litArrOfPaths| |a#122#0#0@@0|) Tclass.M2.Literal $h@@17))
)))
(assert (forall ((|a#134#0#0@@0| T@U) ($h@@18 T@U) ) (!  (=> ($IsGoodHeap $h@@18) (= ($IsAlloc DatatypeTypeType (|#M2.Literal.litArray| |a#134#0#0@@0|) Tclass.M2.Literal $h@@18) ($IsAlloc SeqType |a#134#0#0@@0| (TSeq Tclass.M2.Expression) $h@@18)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |4897|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.Literal.litArray| |a#134#0#0@@0|) Tclass.M2.Literal $h@@18))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@2) h@@1) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@12) ($IsAllocBox bx@@12 t0@@2 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2864|
 :pattern ( (|Set#IsMember| v@@7 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2865|
 :pattern ( ($IsAlloc SetType v@@7 (TSet t0@@2) h@@1))
)))
(assert (forall ((t@@5 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@5 u)) t@@5)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |2806|
 :pattern ( (TMap t@@5 u))
)))
(assert (forall ((t@@6 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@6 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |2807|
 :pattern ( (TMap t@@6 u@@0))
)))
(assert (forall ((t@@7 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@7 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |2808|
 :pattern ( (TMap t@@7 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |3245|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |3250|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |3251|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |3260|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |3262|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((M2.Tuple$A@@2 T@U) (M2.Tuple$B@@2 T@U) ) (! (= (Tclass.M2.Tuple_0 (Tclass.M2.Tuple M2.Tuple$A@@2 M2.Tuple$B@@2)) M2.Tuple$A@@2)
 :qid |unknown.0:0|
 :skolemid |3591|
 :pattern ( (Tclass.M2.Tuple M2.Tuple$A@@2 M2.Tuple$B@@2))
)))
(assert (forall ((M2.Tuple$A@@3 T@U) (M2.Tuple$B@@3 T@U) ) (! (= (Tclass.M2.Tuple_1 (Tclass.M2.Tuple M2.Tuple$A@@3 M2.Tuple$B@@3)) M2.Tuple$B@@3)
 :qid |unknown.0:0|
 :skolemid |3592|
 :pattern ( (Tclass.M2.Tuple M2.Tuple$A@@3 M2.Tuple$B@@3))
)))
(assert (forall ((|a#0#0#0@@0| T@U) (|a#0#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#M2.WFCertificate.Cert| |a#0#0#0@@0| |a#0#1#0@@0|)) |##M2.WFCertificate.Cert|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4660|
 :pattern ( (|#M2.WFCertificate.Cert| |a#0#0#0@@0| |a#0#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (M2.WFCertificate.p (|#M2.WFCertificate.Cert| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#0#0@@0|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4668|
 :pattern ( (|#M2.WFCertificate.Cert| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= (M2.WFCertificate.certs (|#M2.WFCertificate.Cert| |a#5#0#0| |a#5#1#0|)) |a#5#1#0|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4669|
 :pattern ( (|#M2.WFCertificate.Cert| |a#5#0#0| |a#5#1#0|))
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
(assert (forall ((|a#155#0#0| T@U) (|a#155#1#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Tuple.Pair| |a#155#0#0| |a#155#1#0|)) |##M2.Tuple.Pair|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4936|
 :pattern ( (|#M2.Tuple.Pair| |a#155#0#0| |a#155#1#0|))
)))
(assert (forall ((|a#159#0#0| T@U) (|a#159#1#0| T@U) ) (! (= (M2.Tuple.fst (|#M2.Tuple.Pair| |a#159#0#0| |a#159#1#0|)) |a#159#0#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4947|
 :pattern ( (|#M2.Tuple.Pair| |a#159#0#0| |a#159#1#0|))
)))
(assert (forall ((|a#161#0#0| T@U) (|a#161#1#0| T@U) ) (! (= (M2.Tuple.snd (|#M2.Tuple.Pair| |a#161#0#0| |a#161#1#0|)) |a#161#1#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4949|
 :pattern ( (|#M2.Tuple.Pair| |a#161#0#0| |a#161#1#0|))
)))
(assert  (=> |$let#6$canCall| (and ($IsBox |$let#6_a| Tclass.M2.Artifact) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert (forall ((v@@8 T@U) (t0@@3 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@8 (TSeq t0@@3) h@@2) (forall ((i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| v@@8))) ($IsAllocBox (|Seq#Index| v@@8 i@@8) t0@@3 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2870|
 :pattern ( (|Seq#Index| v@@8 i@@8))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2871|
 :pattern ( ($IsAlloc SeqType v@@8 (TSeq t0@@3) h@@2))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) (|a#48#2#0| T@U) ) (! (= (|#M2.Expression.exprIf| (Lit DatatypeTypeType |a#48#0#0|) (Lit DatatypeTypeType |a#48#1#0|) (Lit DatatypeTypeType |a#48#2#0|)) (Lit DatatypeTypeType (|#M2.Expression.exprIf| |a#48#0#0| |a#48#1#0| |a#48#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |4762|
 :pattern ( (|#M2.Expression.exprIf| (Lit DatatypeTypeType |a#48#0#0|) (Lit DatatypeTypeType |a#48#1#0|) (Lit DatatypeTypeType |a#48#2#0|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@19 T@U) (|p#0@@43| T@U) ) (!  (=> (and (or (|M2.__default.OracleArbitrary#canCall| |p#0@@43|) (and (< 0 $FunctionContextHeight) (and ($IsBox |p#0@@43| Tclass.M2.Path) ($IsAllocBox |p#0@@43| Tclass.M2.Path $Heap@@19)))) ($IsGoodHeap $Heap@@19)) ($IsAllocBox (M2.__default.OracleArbitrary |p#0@@43|) Tclass.M2.Artifact $Heap@@19))
 :qid |CloudMakeParallelBuildsdfy.648:18|
 :skolemid |3839|
 :pattern ( ($IsAllocBox (M2.__default.OracleArbitrary |p#0@@43|) Tclass.M2.Artifact $Heap@@19))
))))
(assert (forall (($ly@@25 T@U) (|cmd#0@@17| T@U) (|deps#0@@22| T@U) (|restrictedState#0@@2| T@U) (|exps#0@@12| T@U) (|st#0@@48| T@U) ) (! (= (M2.__default.execOne ($LS $ly@@25) |cmd#0@@17| |deps#0@@22| |restrictedState#0@@2| |exps#0@@12| |st#0@@48|) (M2.__default.execOne $ly@@25 |cmd#0@@17| |deps#0@@22| |restrictedState#0@@2| |exps#0@@12| |st#0@@48|))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |3602|
 :pattern ( (M2.__default.execOne ($LS $ly@@25) |cmd#0@@17| |deps#0@@22| |restrictedState#0@@2| |exps#0@@12| |st#0@@48|))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSet (TSet t@@8)) t@@8)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2798|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSet t@@9)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2799|
 :pattern ( (TSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Inv0_TSeq (TSeq t@@10)) t@@10)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2804|
 :pattern ( (TSeq t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Tag (TSeq t@@11)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2805|
 :pattern ( (TSeq t@@11))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (DatatypeCtorId (|#M2.State.StateCons| |a#7#0#0|)) |##M2.State.StateCons|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4676|
 :pattern ( (|#M2.State.StateCons| |a#7#0#0|))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (= (M2.State.m (|#M2.State.StateCons| |a#11#0#0|)) |a#11#0#0|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4684|
 :pattern ( (|#M2.State.StateCons| |a#11#0#0|))
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
(assert (forall ((|a#102#0#0| Int) ) (! (= (DatatypeCtorId (|#M2.Literal.litNumber| |a#102#0#0|)) |##M2.Literal.litNumber|)
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |4842|
 :pattern ( (|#M2.Literal.litNumber| |a#102#0#0|))
)))
(assert (forall ((|a#106#0#0| Int) ) (! (= (M2.Literal.num (|#M2.Literal.litNumber| |a#106#0#0|)) |a#106#0#0|)
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |4850|
 :pattern ( (|#M2.Literal.litNumber| |a#106#0#0|))
)))
(assert (forall ((|a#107#0#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Literal.litString| |a#107#0#0|)) |##M2.Literal.litString|)
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |4851|
 :pattern ( (|#M2.Literal.litString| |a#107#0#0|))
)))
(assert (forall ((|a#111#0#0| T@U) ) (! (= (M2.Literal.str (|#M2.Literal.litString| |a#111#0#0|)) |a#111#0#0|)
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |4859|
 :pattern ( (|#M2.Literal.litString| |a#111#0#0|))
)))
(assert (forall ((|a#114#0#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Literal.litPrimitive| |a#114#0#0|)) |##M2.Literal.litPrimitive|)
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |4862|
 :pattern ( (|#M2.Literal.litPrimitive| |a#114#0#0|))
)))
(assert (forall ((|a#118#0#0| T@U) ) (! (= (M2.Literal.prim (|#M2.Literal.litPrimitive| |a#118#0#0|)) |a#118#0#0|)
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |4870|
 :pattern ( (|#M2.Literal.litPrimitive| |a#118#0#0|))
)))
(assert (forall ((|a#120#0#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Literal.litArrOfPaths| |a#120#0#0|)) |##M2.Literal.litArrOfPaths|)
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |4872|
 :pattern ( (|#M2.Literal.litArrOfPaths| |a#120#0#0|))
)))
(assert (forall ((|a#124#0#0| T@U) ) (! (= (M2.Literal.paths (|#M2.Literal.litArrOfPaths| |a#124#0#0|)) |a#124#0#0|)
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |4880|
 :pattern ( (|#M2.Literal.litArrOfPaths| |a#124#0#0|))
)))
(assert (forall ((|a#126#0#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Literal.litArrOfStrings| |a#126#0#0|)) |##M2.Literal.litArrOfStrings|)
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |4882|
 :pattern ( (|#M2.Literal.litArrOfStrings| |a#126#0#0|))
)))
(assert (forall ((|a#130#0#0| T@U) ) (! (= (M2.Literal.strs (|#M2.Literal.litArrOfStrings| |a#130#0#0|)) |a#130#0#0|)
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |4890|
 :pattern ( (|#M2.Literal.litArrOfStrings| |a#130#0#0|))
)))
(assert (forall ((|a#132#0#0| T@U) ) (! (= (DatatypeCtorId (|#M2.Literal.litArray| |a#132#0#0|)) |##M2.Literal.litArray|)
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |4892|
 :pattern ( (|#M2.Literal.litArray| |a#132#0#0|))
)))
(assert (forall ((|a#136#0#0| T@U) ) (! (= (M2.Literal.arr (|#M2.Literal.litArray| |a#136#0#0|)) |a#136#0#0|)
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |4900|
 :pattern ( (|#M2.Literal.litArray| |a#136#0#0|))
)))
(assert (forall ((x@@13 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@13)) x@@13)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2822|
 :pattern ( ($Box T@@3 x@@13))
)))
(assert (forall ((v@@9 T@U) (t0@@4 T@U) (t1@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc MapType v@@9 (TMap t0@@4 t1@@1) h@@3) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@13) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@13) t1@@1 h@@3) ($IsAllocBox bx@@13 t0@@4 h@@3)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |2872|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@13))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@13))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |2873|
 :pattern ( ($IsAlloc MapType v@@9 (TMap t0@@4 t1@@1) h@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@26 T@U) (|p#0@@44| T@U) (|cert#0@@13| T@U) ) (!  (=> (or (|M2.__default.CheckWellFounded#canCall| |p#0@@44| |cert#0@@13|) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@44| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@13| Tclass.M2.WFCertificate)))) (and (and (M2.WFCertificate.Cert_q |cert#0@@13|) (=> (= (M2.WFCertificate.p |cert#0@@13|) |p#0@@44|) (and (forall ((|d#0@@4| T@U) ) (!  (=> ($IsBox |d#0@@4| Tclass.M2.Path) (and (|M2.__default.LocInv__Deps#canCall| |p#0@@44|) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@44|) |d#0@@4|) (forall ((|c#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#0@@0| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q |cert#0@@13|) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#0@@0|)) (M2.WFCertificate.Cert_q |c#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3548|
 :pattern ( (M2.WFCertificate.p |c#0@@0|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#0@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3549|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@44|) |d#0@@4|))
)) (=> (forall ((|d#0@@5| T@U) ) (!  (=> ($IsBox |d#0@@5| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@44|) |d#0@@5|) (exists ((|c#0@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#0@@1|)) (= (M2.WFCertificate.p |c#0@@1|) |d#0@@5|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3551|
 :pattern ( (M2.WFCertificate.p |c#0@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#0@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3552|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@44|) |d#0@@5|))
)) (forall ((|c#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@1| Tclass.M2.WFCertificate) (and (M2.WFCertificate.Cert_q |cert#0@@13|) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#1@@1|)) (and (M2.WFCertificate.Cert_q |c#1@@1|) (|M2.__default.CheckWellFounded#canCall| (M2.WFCertificate.p |c#1@@1|) |c#1@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3550|
 :pattern ( (M2.WFCertificate.p |c#1@@1|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#1@@1|)))
)))))) (= (M2.__default.CheckWellFounded ($LS $ly@@26) |p#0@@44| |cert#0@@13|)  (and (and (= (M2.WFCertificate.p |cert#0@@13|) |p#0@@44|) (forall ((|d#0@@6| T@U) ) (!  (=> ($IsBox |d#0@@6| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@44|) |d#0@@6|) (exists ((|c#0@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@2| Tclass.M2.WFCertificate) (and (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#0@@2|)) (= (M2.WFCertificate.p |c#0@@2|) |d#0@@6|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |3545|
 :pattern ( (M2.WFCertificate.p |c#0@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#0@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |3546|
 :pattern ( (|Set#IsMember| (M2.__default.LocInv__Deps |p#0@@44|) |d#0@@6|))
))) (forall ((|c#1@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@2| Tclass.M2.WFCertificate) (=> (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#1@@2|)) (M2.__default.CheckWellFounded $ly@@26 (M2.WFCertificate.p |c#1@@2|) |c#1@@2|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |3547|
 :pattern ( (M2.WFCertificate.p |c#1@@2|))
 :pattern ( (|Set#IsMember| (M2.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#1@@2|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |3553|
 :pattern ( (M2.__default.CheckWellFounded ($LS $ly@@26) |p#0@@44| |cert#0@@13|))
))))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|d#0@@7| T@U) (|certs#0@@1| T@U) ) (!  (=> (or (|M2.__default.FindCert#canCall| |d#0@@7| |certs#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |d#0@@7| Tclass.M2.Path) ($Is SetType |certs#0@@1| (TSet Tclass.M2.WFCertificate))) (exists ((|c#0@@3| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@3| Tclass.M2.WFCertificate) (and (|Set#IsMember| |certs#0@@1| ($Box DatatypeTypeType |c#0@@3|)) (= (M2.WFCertificate.p |c#0@@3|) |d#0@@7|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |3892|
 :pattern ( (M2.WFCertificate.p |c#0@@3|))
 :pattern ( (|Set#IsMember| |certs#0@@1| ($Box DatatypeTypeType |c#0@@3|)))
))))) ($Is DatatypeTypeType (M2.__default.FindCert |d#0@@7| |certs#0@@1|) Tclass.M2.WFCertificate))
 :qid |CloudMakeParallelBuildsdfy.666:27|
 :skolemid |3893|
 :pattern ( (M2.__default.FindCert |d#0@@7| |certs#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|p#0@@45| T@U) ) (!  (=> (or (|M2.__default.LocInv__Deps#canCall| |p#0@@45|) (and (< 0 $FunctionContextHeight) ($IsBox |p#0@@45| Tclass.M2.Path))) ($Is SetType (M2.__default.LocInv__Deps |p#0@@45|) (TSet Tclass.M2.Path)))
 :qid |CloudMakeParallelBuildsdfy.637:30|
 :skolemid |3814|
 :pattern ( (M2.__default.LocInv__Deps |p#0@@45|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@20 T@U) (|d#0@@8| T@U) (|certs#0@@2| T@U) ) (!  (=> (or (|M2.__default.FindCert#canCall| (Lit BoxType |d#0@@8|) (Lit SetType |certs#0@@2|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@20) ($IsBox |d#0@@8| Tclass.M2.Path)) ($Is SetType |certs#0@@2| (TSet Tclass.M2.WFCertificate))) (exists ((|c#5@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#5@@1| Tclass.M2.WFCertificate) (and (|Set#IsMember| (Lit SetType |certs#0@@2|) ($Box DatatypeTypeType |c#5@@1|)) (= (M2.WFCertificate.p |c#5@@1|) (Lit BoxType |d#0@@8|))))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |3900|
 :pattern ( (M2.WFCertificate.p |c#5@@1|))
 :pattern ( (|Set#IsMember| |certs#0@@2| ($Box DatatypeTypeType |c#5@@1|)))
))))) (and (|$let#9$canCall| (Lit SetType |certs#0@@2|) (Lit BoxType |d#0@@8|)) (= (M2.__default.FindCert (Lit BoxType |d#0@@8|) (Lit SetType |certs#0@@2|)) (let ((|c#6| (|$let#9_c| (Lit SetType |certs#0@@2|) (Lit BoxType |d#0@@8|))))
|c#6|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :weight 3
 :skolemid |3901|
 :pattern ( (M2.__default.FindCert (Lit BoxType |d#0@@8|) (Lit SetType |certs#0@@2|)) ($IsGoodHeap $Heap@@20))
))))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |3261|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3263|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0|))
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
(assert (forall ((|a#160#0#0| T@U) (|a#160#1#0| T@U) ) (! (< (BoxRank |a#160#0#0|) (DtRank (|#M2.Tuple.Pair| |a#160#0#0| |a#160#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4948|
 :pattern ( (|#M2.Tuple.Pair| |a#160#0#0| |a#160#1#0|))
)))
(assert (forall ((|a#162#0#0| T@U) (|a#162#1#0| T@U) ) (! (< (BoxRank |a#162#1#0|) (DtRank (|#M2.Tuple.Pair| |a#162#0#0| |a#162#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4950|
 :pattern ( (|#M2.Tuple.Pair| |a#162#0#0| |a#162#1#0|))
)))
(assert (forall ((|a#9#0#0@@0| T@U) ($h@@19 T@U) ) (!  (=> ($IsGoodHeap $h@@19) (= ($IsAlloc DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0@@0|) Tclass.M2.State $h@@19) ($IsAlloc MapType |a#9#0#0@@0| (TMap Tclass.M2.Path Tclass.M2.Artifact) $h@@19)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4681|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M2.State.StateCons| |a#9#0#0@@0|) Tclass.M2.State $h@@19))
)))
(assert (forall (($ly@@27 T@U) (|sts#0@@4| T@U) ) (! (= (M2.__default.Combine ($LS $ly@@27) |sts#0@@4|) (M2.__default.Combine $ly@@27 |sts#0@@4|))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |4312|
 :pattern ( (M2.__default.Combine ($LS $ly@@27) |sts#0@@4|))
)))
(assert (forall ((a@@35 T@U) (b@@32 T@U) ) (! (= (|Set#Union| a@@35 (|Set#Union| a@@35 b@@32)) (|Set#Union| a@@35 b@@32))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |2936|
 :pattern ( (|Set#Union| a@@35 (|Set#Union| a@@35 b@@32)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@28 T@U) (|p#0@@46| T@U) (|cert#0@@14| T@U) (|deps#0@@23| T@U) (|st#0@@49| T@U) ) (!  (=> (or (|M2.__default.CollectDependencies#canCall| |p#0@@46| |cert#0@@14| |deps#0@@23| |st#0@@49|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsBox |p#0@@46| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@14| Tclass.M2.WFCertificate)) ($Is SetType |deps#0@@23| (TSet Tclass.M2.Path))) ($Is DatatypeTypeType |st#0@@49| Tclass.M2.State)) (and (M2.__default.CheckWellFounded ($LS $LZ) |p#0@@46| |cert#0@@14|) (|Set#Equal| |deps#0@@23| (M2.__default.LocInv__Deps |p#0@@46|)))))) ($Is MapType (M2.__default.CollectDependencies $ly@@28 |p#0@@46| |cert#0@@14| |deps#0@@23| |st#0@@49|) (TMap Tclass.M2.Path Tclass.M2.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |3866|
 :pattern ( (M2.__default.CollectDependencies $ly@@28 |p#0@@46| |cert#0@@14| |deps#0@@23| |st#0@@49|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@21 T@U) ($ly@@29 T@U) (|cmd#0@@18| T@U) (|deps#0@@24| T@U) (|restrictedState#0@@3| T@U) (|exps#0@@13| T@U) (|st#0@@50| T@U) ) (!  (=> (and (or (|M2.__default.execOne#canCall| |cmd#0@@18| |deps#0@@24| |restrictedState#0@@3| |exps#0@@13| |st#0@@50|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and ($Is SeqType |cmd#0@@18| (TSeq TChar)) ($IsAlloc SeqType |cmd#0@@18| (TSeq TChar) $Heap@@21)) (and ($Is SetType |deps#0@@24| (TSet Tclass.M2.Path)) ($IsAlloc SetType |deps#0@@24| (TSet Tclass.M2.Path) $Heap@@21))) (and ($Is MapType |restrictedState#0@@3| (TMap Tclass.M2.Path Tclass.M2.Artifact)) ($IsAlloc MapType |restrictedState#0@@3| (TMap Tclass.M2.Path Tclass.M2.Artifact) $Heap@@21))) (and ($Is SetType |exps#0@@13| (TSet (TSeq TChar))) ($IsAlloc SetType |exps#0@@13| (TSet (TSeq TChar)) $Heap@@21))) (and ($Is DatatypeTypeType |st#0@@50| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@50| Tclass.M2.State $Heap@@21))))) ($IsGoodHeap $Heap@@21)) ($IsAlloc DatatypeTypeType (M2.__default.execOne $ly@@29 |cmd#0@@18| |deps#0@@24| |restrictedState#0@@3| |exps#0@@13| |st#0@@50|) (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State) $Heap@@21))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |3605|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.execOne $ly@@29 |cmd#0@@18| |deps#0@@24| |restrictedState#0@@3| |exps#0@@13| |st#0@@50|) (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State) $Heap@@21))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|st#0@@51| T@U) (|st'#0@@6| T@U) ) (!  (=> (or (|M2.__default.Extends#canCall| (Lit DatatypeTypeType |st#0@@51|) (Lit DatatypeTypeType |st'#0@@6|)) (and (< 5 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@51| Tclass.M2.State) ($Is DatatypeTypeType |st'#0@@6| Tclass.M2.State)))) (and (and (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@51|)) (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@6|))) (=> (|Set#Subset| (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@51|)) (M2.__default.DomSt (Lit DatatypeTypeType |st'#0@@6|))) (and (forall ((|p#2| T@U) ) (!  (=> ($IsBox |p#2| Tclass.M2.Path) (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@51|)) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@51|))) |p#2|) (and (|M2.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st'#0@@6|)) (|M2.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st#0@@51|))))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4427|
 :pattern ( (M2.__default.GetSt |p#2| |st#0@@51|))
 :pattern ( (M2.__default.GetSt |p#2| |st'#0@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@51|) |p#2|))
)) (=> (forall ((|p#2@@0| T@U) ) (!  (=> ($IsBox |p#2@@0| Tclass.M2.Path) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@51|))) |p#2@@0|) (= (M2.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st'#0@@6|)) (M2.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st#0@@51|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4429|
 :pattern ( (M2.__default.GetSt |p#2@@0| |st#0@@51|))
 :pattern ( (M2.__default.GetSt |p#2@@0| |st'#0@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@51|) |p#2@@0|))
)) (forall ((|p#3| T@U) ) (!  (=> ($IsBox |p#3| Tclass.M2.Path) (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@51|)) (=> (not (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@51|))) |p#3|)) (and (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@6|)) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st'#0@@6|))) |p#3|) (and (|M2.__default.GetSt#canCall| |p#3| (Lit DatatypeTypeType |st'#0@@6|)) (|M2.__default.Oracle#canCall| |p#3| (Lit DatatypeTypeType |st#0@@51|))))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4428|
 :pattern ( (M2.__default.Oracle |p#3| |st#0@@51|))
 :pattern ( (M2.__default.GetSt |p#3| |st'#0@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@6|) |p#3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@51|) |p#3|))
)))))) (= (M2.__default.Extends (Lit DatatypeTypeType |st#0@@51|) (Lit DatatypeTypeType |st'#0@@6|))  (and (and (|Set#Subset| (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@51|)) (M2.__default.DomSt (Lit DatatypeTypeType |st'#0@@6|))) (forall ((|p#2@@1| T@U) ) (!  (=> ($IsBox |p#2@@1| Tclass.M2.Path) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@51|))) |p#2@@1|) (= (M2.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st'#0@@6|)) (M2.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st#0@@51|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4425|
 :pattern ( (M2.__default.GetSt |p#2@@1| |st#0@@51|))
 :pattern ( (M2.__default.GetSt |p#2@@1| |st'#0@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@51|) |p#2@@1|))
))) (forall ((|p#3@@0| T@U) ) (!  (=> ($IsBox |p#3@@0| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@51|))) |p#3@@0|)) (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st'#0@@6|))) |p#3@@0|)) (= (M2.__default.GetSt |p#3@@0| (Lit DatatypeTypeType |st'#0@@6|)) (M2.__default.Oracle |p#3@@0| (Lit DatatypeTypeType |st#0@@51|)))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4426|
 :pattern ( (M2.__default.Oracle |p#3@@0| |st#0@@51|))
 :pattern ( (M2.__default.GetSt |p#3@@0| |st'#0@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@6|) |p#3@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@51|) |p#3@@0|))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :weight 3
 :skolemid |4430|
 :pattern ( (M2.__default.Extends (Lit DatatypeTypeType |st#0@@51|) (Lit DatatypeTypeType |st'#0@@6|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@47| T@U) (|a#0@@4| T@U) (|st#0@@52| T@U) ) (!  (=> (or (|M2.__default.SetSt#canCall| |p#0@@47| |a#0@@4| |st#0@@52|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@47| Tclass.M2.Path) ($IsBox |a#0@@4| Tclass.M2.Artifact)) ($Is DatatypeTypeType |st#0@@52| Tclass.M2.State)))) (and (M2.State.StateCons_q |st#0@@52|) (= (M2.__default.SetSt |p#0@@47| |a#0@@4| |st#0@@52|) (|#M2.State.StateCons| (|Map#Build| (M2.State.m |st#0@@52|) |p#0@@47| |a#0@@4|)))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :skolemid |3500|
 :pattern ( (M2.__default.SetSt |p#0@@47| |a#0@@4| |st#0@@52|))
))))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |3082|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((|a#104#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#M2.Literal.litNumber| |a#104#0#0@@0|) Tclass.M2.Literal) ($Is intType (int_2_U |a#104#0#0@@0|) TInt))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |4846|
 :pattern ( ($Is DatatypeTypeType (|#M2.Literal.litNumber| |a#104#0#0@@0|) Tclass.M2.Literal))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@19| T@U) (|deps#0@@25| T@U) (|exps#0@@14| T@U) (|st#0@@53| T@U) ) (!  (=> (or (|M2.__default.Pre#canCall| |cmd#0@@19| |deps#0@@25| |exps#0@@14| |st#0@@53|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@19| (TSeq TChar)) ($Is SetType |deps#0@@25| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@14| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@53| Tclass.M2.State)))) (and (forall ((|e#0@@5| T@U) ) (!  (=> ($Is SeqType |e#0@@5| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@14| ($Box SeqType |e#0@@5|)) (and (and (|M2.__default.Loc#canCall| |cmd#0@@19| |deps#0@@25| |e#0@@5|) (|M2.__default.DomSt#canCall| |st#0@@53|)) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@53|) (M2.__default.Loc |cmd#0@@19| |deps#0@@25| |e#0@@5|)) (and (and (|M2.__default.Loc#canCall| |cmd#0@@19| |deps#0@@25| |e#0@@5|) (|M2.__default.GetSt#canCall| (M2.__default.Loc |cmd#0@@19| |deps#0@@25| |e#0@@5|) |st#0@@53|)) (and (|M2.__default.Loc#canCall| |cmd#0@@19| |deps#0@@25| |e#0@@5|) (|M2.__default.Oracle#canCall| (M2.__default.Loc |cmd#0@@19| |deps#0@@25| |e#0@@5|) |st#0@@53|)))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |4368|
 :pattern ( (M2.__default.Loc |cmd#0@@19| |deps#0@@25| |e#0@@5|))
 :pattern ( (|Set#IsMember| |exps#0@@14| ($Box SeqType |e#0@@5|)))
)) (= (M2.__default.Pre |cmd#0@@19| |deps#0@@25| |exps#0@@14| |st#0@@53|) (forall ((|e#0@@6| T@U) ) (!  (=> ($Is SeqType |e#0@@6| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@14| ($Box SeqType |e#0@@6|)) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@53|) (M2.__default.Loc |cmd#0@@19| |deps#0@@25| |e#0@@6|)) (= (M2.__default.GetSt (M2.__default.Loc |cmd#0@@19| |deps#0@@25| |e#0@@6|) |st#0@@53|) (M2.__default.Oracle (M2.__default.Loc |cmd#0@@19| |deps#0@@25| |e#0@@6|) |st#0@@53|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |4367|
 :pattern ( (M2.__default.Loc |cmd#0@@19| |deps#0@@25| |e#0@@6|))
 :pattern ( (|Set#IsMember| |exps#0@@14| ($Box SeqType |e#0@@6|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :skolemid |4369|
 :pattern ( (M2.__default.Pre |cmd#0@@19| |deps#0@@25| |exps#0@@14| |st#0@@53|))
))))
(assert (forall (($ly@@30 T@U) (|p#0@@48| T@U) (|cert#0@@15| T@U) (|st#0@@54| T@U) ) (! (= (M2.__default.OracleWF ($LS $ly@@30) |p#0@@48| |cert#0@@15| |st#0@@54|) (M2.__default.OracleWF $ly@@30 |p#0@@48| |cert#0@@15| |st#0@@54|))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |3843|
 :pattern ( (M2.__default.OracleWF ($LS $ly@@30) |p#0@@48| |cert#0@@15| |st#0@@54|))
)))
(assert (forall (($ly@@31 T@U) (|expr#0@@3| T@U) (|st#0@@55| T@U) (|env#0@@9| T@U) ) (! (= (M2.__default.eval ($LS $ly@@31) |expr#0@@3| |st#0@@55| |env#0@@9|) (M2.__default.eval $ly@@31 |expr#0@@3| |st#0@@55| |env#0@@9|))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |4510|
 :pattern ( (M2.__default.eval ($LS $ly@@31) |expr#0@@3| |st#0@@55| |env#0@@9|))
)))
(assert (forall ((bx@@14 T@U) (s@@17 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@14 (TMap s@@17 t@@12)) (and (= ($Box MapType ($Unbox MapType bx@@14)) bx@@14) ($Is MapType ($Unbox MapType bx@@14) (TMap s@@17 t@@12))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |2833|
 :pattern ( ($IsBox bx@@14 (TMap s@@17 t@@12)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@15)) bx@@15) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@15) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |3252|
 :pattern ( ($IsBox bx@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((M2.Tuple$A@@4 T@U) (M2.Tuple$B@@4 T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass.M2.Tuple M2.Tuple$A@@4 M2.Tuple$B@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@16)) bx@@16) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@16) (Tclass.M2.Tuple M2.Tuple$A@@4 M2.Tuple$B@@4))))
 :qid |unknown.0:0|
 :skolemid |3593|
 :pattern ( ($IsBox bx@@16 (Tclass.M2.Tuple M2.Tuple$A@@4 M2.Tuple$B@@4)))
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
(assert (forall ((|a#113#0#0| T@U) ) (! (< (|Seq#Rank| |a#113#0#0|) (DtRank (|#M2.Literal.litString| |a#113#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |4861|
 :pattern ( (|#M2.Literal.litString| |a#113#0#0|))
)))
(assert (forall ((|a#119#0#0| T@U) ) (! (< (DtRank |a#119#0#0|) (DtRank (|#M2.Literal.litPrimitive| |a#119#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |4871|
 :pattern ( (|#M2.Literal.litPrimitive| |a#119#0#0|))
)))
(assert (forall ((|a#138#0#0| T@U) ) (! (< (|Seq#Rank| |a#138#0#0|) (DtRank (|#M2.Literal.litArray| |a#138#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |4902|
 :pattern ( (|#M2.Literal.litArray| |a#138#0#0|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@5 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@2 t2 (MapType1Store t0@@5 t1@@2 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7206|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@2| |l#1@@1| |l#2@@0| |l#3|) $o $f))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@22 T@U) ($ly@@32 T@U) (|expr#0@@4| T@U) (|st#0@@56| T@U) (|env#0@@10| T@U) ) (!  (=> (and (or (|M2.__default.eval#canCall| |expr#0@@4| |st#0@@56| |env#0@@10|) (and (< 7 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |expr#0@@4| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |expr#0@@4| Tclass.M2.Expression $Heap@@22)) (and ($Is DatatypeTypeType |st#0@@56| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@56| Tclass.M2.State $Heap@@22))) (and ($IsBox |env#0@@10| Tclass.M2.Env) ($IsAllocBox |env#0@@10| Tclass.M2.Env $Heap@@22))) (M2.__default.ValidEnv |env#0@@10|)))) ($IsGoodHeap $Heap@@22)) ($IsAlloc DatatypeTypeType (M2.__default.eval $ly@@32 |expr#0@@4| |st#0@@56| |env#0@@10|) (Tclass.M2.Tuple Tclass.M2.Expression Tclass.M2.State) $Heap@@22))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |4513|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.eval $ly@@32 |expr#0@@4| |st#0@@56| |env#0@@10|) (Tclass.M2.Tuple Tclass.M2.Expression Tclass.M2.State) $Heap@@22))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|prim#0@@4| T@U) (|args#0@@6| T@U) (|st#0@@57| T@U) ) (!  (=> (or (|M2.__default.ValidArgs#canCall| (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@6|) |st#0@@57|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@4| Tclass.M2.Primitive) ($Is SeqType |args#0@@6| (TSeq Tclass.M2.Expression))) ($Is DatatypeTypeType |st#0@@57| Tclass.M2.State)) (and (=> (M2.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@4|)) (= (|Seq#Length| (Lit SeqType |args#0@@6|)) (LitInt 3))) (=> (M2.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)) (= (|Seq#Length| (Lit SeqType |args#0@@6|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)))))) (let ((|exps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 2)))))
(let ((|deps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 1)))))
(let ((|cmd#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 0)))))
 (=> (M2.Expression.exprLiteral_q |cmd#3|) (=> (M2.Literal.litString_q (M2.Expression.lit |cmd#3|)) (=> (M2.Expression.exprLiteral_q |deps#3|) (=> (M2.Literal.litArrOfPaths_q (M2.Expression.lit |deps#3|)) (=> (M2.Expression.exprLiteral_q |exps#3|) (=> (M2.Literal.litArrOfStrings_q (M2.Expression.lit |exps#3|)) (and (|M2.__default.DomSt#canCall| |st#0@@57|) (=> (|Set#Subset| (M2.Literal.paths (M2.Expression.lit |deps#3|)) (M2.__default.DomSt |st#0@@57|)) (|M2.__default.Pre#canCall| (M2.Literal.str (M2.Expression.lit |cmd#3|)) (M2.Literal.paths (M2.Expression.lit |deps#3|)) (M2.Literal.strs (M2.Expression.lit |exps#3|)) |st#0@@57|))))))))))))) (= (M2.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@6|) |st#0@@57|) (ite (M2.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)) false (let ((|exps#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 2)))))
(let ((|deps#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 1)))))
(let ((|cmd#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@6|) (LitInt 0)))))
 (and (and (and (and (and (and (and (M2.Expression.exprLiteral_q |cmd#2|) (M2.Literal.litString_q (M2.Expression.lit |cmd#2|))) (M2.Expression.exprLiteral_q |deps#2|)) (M2.Literal.litArrOfPaths_q (M2.Expression.lit |deps#2|))) (M2.Expression.exprLiteral_q |exps#2|)) (M2.Literal.litArrOfStrings_q (M2.Expression.lit |exps#2|))) (|Set#Subset| (M2.Literal.paths (M2.Expression.lit |deps#2|)) (M2.__default.DomSt |st#0@@57|))) (M2.__default.Pre (M2.Literal.str (M2.Expression.lit |cmd#2|)) (M2.Literal.paths (M2.Expression.lit |deps#2|)) (M2.Literal.strs (M2.Expression.lit |exps#2|)) |st#0@@57|)))))))))
 :qid |CloudMakeParallelBuildsdfy.289:29|
 :weight 3
 :skolemid |4562|
 :pattern ( (M2.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@6|) |st#0@@57|))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($ly@@33 T@U) (|context#0@@4| T@U) (|args#0@@7| T@U) (|stOrig#0@@4| T@U) (|env#0@@11| T@U) ) (!  (=> (or (|M2.__default.evalArgs#canCall| |context#0@@4| |args#0@@7| |stOrig#0@@4| |env#0@@11|) (and (< 7 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@4| Tclass.M2.Expression) ($Is SeqType |args#0@@7| (TSeq Tclass.M2.Expression))) ($Is DatatypeTypeType |stOrig#0@@4| Tclass.M2.State)) ($IsBox |env#0@@11| Tclass.M2.Env)) (and (M2.__default.ValidEnv |env#0@@11|) (forall ((|arg#1| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#1| Tclass.M2.Expression) (=> (|Seq#Contains| |args#0@@7| ($Box DatatypeTypeType |arg#1|)) (< (DtRank |arg#1|) (DtRank |context#0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |4542|
 :pattern ( (|Seq#Contains| |args#0@@7| ($Box DatatypeTypeType |arg#1|)))
)))))) (and (=> (not (|Seq#Equal| |args#0@@7| |Seq#Empty|)) (and (|M2.__default.eval#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0))) |stOrig#0@@4| |env#0@@11|) (let ((|r#0| (M2.__default.eval $ly@@33 ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0))) |stOrig#0@@4| |env#0@@11|)))
 (and (|M2.__default.evalArgs#canCall| |context#0@@4| (|Seq#Drop| |args#0@@7| (LitInt 1)) |stOrig#0@@4| |env#0@@11|) (let ((|rr#0| (M2.__default.evalArgs $ly@@33 |context#0@@4| (|Seq#Drop| |args#0@@7| (LitInt 1)) |stOrig#0@@4| |env#0@@11|)))
 (and (and (M2.Tuple.Pair_q |r#0|) (M2.Tuple.Pair_q |rr#0|)) (and (M2.Tuple.Pair_q |r#0|) (M2.Tuple.Pair_q |rr#0|)))))))) (= (M2.__default.evalArgs ($LS $ly@@33) |context#0@@4| |args#0@@7| |stOrig#0@@4| |env#0@@11|) (ite (|Seq#Equal| |args#0@@7| |Seq#Empty|) (|#M2.Tuple.Pair| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box SetType (Lit SetType |Set#Empty|))) (let ((|r#0@@0| (M2.__default.eval $ly@@33 ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@7| (LitInt 0))) |stOrig#0@@4| |env#0@@11|)))
(let ((|rr#0@@0| (M2.__default.evalArgs $ly@@33 |context#0@@4| (|Seq#Drop| |args#0@@7| (LitInt 1)) |stOrig#0@@4| |env#0@@11|)))
(|#M2.Tuple.Pair| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| (M2.Tuple.fst |r#0@@0|)) ($Unbox SeqType (M2.Tuple.fst |rr#0@@0|)))) ($Box SetType (|Set#Union| (|Set#UnionOne| |Set#Empty| (M2.Tuple.snd |r#0@@0|)) ($Unbox SetType (M2.Tuple.snd |rr#0@@0|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |4544|
 :pattern ( (M2.__default.evalArgs ($LS $ly@@33) |context#0@@4| |args#0@@7| |stOrig#0@@4| |env#0@@11|))
))))
(assert (forall ((s@@18 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@18 val@@4)) s@@18) (= (|Seq#Build_inv1| (|Seq#Build| s@@18 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |3020|
 :pattern ( (|Seq#Build| s@@18 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |3249|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((M2.Tuple$A@@5 T@U) (M2.Tuple$B@@5 T@U) ) (!  (and (= (Tag (Tclass.M2.Tuple M2.Tuple$A@@5 M2.Tuple$B@@5)) Tagclass.M2.Tuple) (= (TagFamily (Tclass.M2.Tuple M2.Tuple$A@@5 M2.Tuple$B@@5)) tytagFamily$Tuple))
 :qid |unknown.0:0|
 :skolemid |3590|
 :pattern ( (Tclass.M2.Tuple M2.Tuple$A@@5 M2.Tuple$B@@5))
)))
(assert (forall ((d@@64 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (M2.Literal.litNumber_q d@@64) ($IsAlloc DatatypeTypeType d@@64 Tclass.M2.Literal $h@@20))) ($IsAlloc intType (int_2_U (M2.Literal.num d@@64)) TInt $h@@20))
 :qid |unknown.0:0|
 :skolemid |4848|
 :pattern ( ($IsAlloc intType (int_2_U (M2.Literal.num d@@64)) TInt $h@@20))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@2| T@U) (|l#2@@1| T@U) (|l#3@@0| T@U) (|l#4| T@U) (|$w#0@@2| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#20| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@0| |l#4|) |$w#0@@2|) (ite (|Set#IsMember| |l#0@@3| |$w#0@@2|) (M2.__default.GetSt |$w#0@@2| |l#1@@2|) (M2.__default.OracleWF |l#2@@1| |$w#0@@2| (M2.__default.FindCert |$w#0@@2| |l#3@@0|) |l#4|)))
 :qid |CloudMakeParallelBuildsdfy.664:34|
 :skolemid |7209|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#20| |l#0@@3| |l#1@@2| |l#2@@1| |l#3@@0| |l#4|) |$w#0@@2|))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($ly@@34 T@U) (|expr#0@@5| T@U) (|st#0@@58| T@U) (|env#0@@12| T@U) ) (!  (=> (or (|M2.__default.eval#canCall| (Lit DatatypeTypeType |expr#0@@5|) |st#0@@58| |env#0@@12|) (and (< 7 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@5| Tclass.M2.Expression) ($Is DatatypeTypeType |st#0@@58| Tclass.M2.State)) ($IsBox |env#0@@12| Tclass.M2.Env)) (M2.__default.ValidEnv |env#0@@12|)))) (and (and (|M2.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@5|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.__default.Value (Lit DatatypeTypeType |expr#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@5|))))) (|M2.__default.GetEnv#canCall| (Lit BoxType (M2.Expression.id (Lit DatatypeTypeType |expr#0@@5|))) |env#0@@12|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@5|))))) (and (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.cond (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|) (let ((|st'#4| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.cond (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|cond'#1| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.cond (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
 (and (and (=> (M2.Expression.exprLiteral_q |cond'#1|) (|$IsA#M2.Literal| (M2.Expression.lit |cond'#1|))) (=> (and (M2.Expression.exprLiteral_q |cond'#1|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#1|) |#M2.Literal.litTrue|)) (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@5|))) |st'#4| |env#0@@12|))) (=> (not (and (M2.Expression.exprLiteral_q |cond'#1|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#1|) |#M2.Literal.litTrue|))) (and (=> (M2.Expression.exprLiteral_q |cond'#1|) (|$IsA#M2.Literal| (M2.Expression.lit |cond'#1|))) (=> (and (M2.Expression.exprLiteral_q |cond'#1|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#1|) |#M2.Literal.litFalse|)) (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@5|))) |st'#4| |env#0@@12|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@5|))))) (and (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.conj0 (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|) (let ((|st'#5| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.conj0 (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|conj0'#1| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.conj0 (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
 (and (and (=> (M2.Expression.exprLiteral_q |conj0'#1|) (|$IsA#M2.Literal| (M2.Expression.lit |conj0'#1|))) (=> (and (M2.Expression.exprLiteral_q |conj0'#1|) (|M2.Literal#Equal| (M2.Expression.lit |conj0'#1|) |#M2.Literal.litTrue|)) (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.conj1 (Lit DatatypeTypeType |expr#0@@5|))) |st'#5| |env#0@@12|))) (=> (not (and (M2.Expression.exprLiteral_q |conj0'#1|) (|M2.Literal#Equal| (M2.Expression.lit |conj0'#1|) |#M2.Literal.litTrue|))) (=> (M2.Expression.exprLiteral_q |conj0'#1|) (|$IsA#M2.Literal| (M2.Expression.lit |conj0'#1|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@5|))))) (and (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.disj0 (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|) (let ((|st'#6| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.disj0 (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|disj0'#1| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.disj0 (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
 (and (=> (M2.Expression.exprLiteral_q |disj0'#1|) (|$IsA#M2.Literal| (M2.Expression.lit |disj0'#1|))) (=> (not (and (M2.Expression.exprLiteral_q |disj0'#1|) (|M2.Literal#Equal| (M2.Expression.lit |disj0'#1|) |#M2.Literal.litTrue|))) (and (=> (M2.Expression.exprLiteral_q |disj0'#1|) (|$IsA#M2.Literal| (M2.Expression.lit |disj0'#1|))) (=> (and (M2.Expression.exprLiteral_q |disj0'#1|) (|M2.Literal#Equal| (M2.Expression.lit |disj0'#1|) |#M2.Literal.litFalse|)) (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.disj1 (Lit DatatypeTypeType |expr#0@@5|))) |st'#6| |env#0@@12|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@5|)))))) (=> (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@5|))))) (and (|M2.__default.eval#canCall| (Lit DatatypeTypeType (M2.Expression.fun (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|) (let ((|st'#7| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.fun (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|fun'#1| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.fun (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
 (and (|M2.__default.evalArgs#canCall| (Lit DatatypeTypeType |expr#0@@5|) (Lit SeqType (M2.Expression.args (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|) (let ((|sts'#1| ($Unbox SetType (M2.Tuple.snd (M2.__default.evalArgs ($LS $ly@@34) (Lit DatatypeTypeType |expr#0@@5|) (Lit SeqType (M2.Expression.args (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|args'#1| ($Unbox SeqType (M2.Tuple.fst (M2.__default.evalArgs ($LS $ly@@34) (Lit DatatypeTypeType |expr#0@@5|) (Lit SeqType (M2.Expression.args (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|sts''#1| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#7|)) |sts'#1|)))
 (and (|M2.__default.Compatible#canCall| |sts''#1|) (=> (M2.__default.Compatible |sts''#1|) (and (|M2.__default.Combine#canCall| |sts''#1|) (let ((|stCombined#1| (M2.__default.Combine ($LS $LZ) |sts''#1|)))
 (=> (and (M2.Expression.exprLiteral_q |fun'#1|) (M2.Literal.litPrimitive_q (M2.Expression.lit |fun'#1|))) (=> (M2.Primitive.primExec_q (M2.Literal.prim (M2.Expression.lit |fun'#1|))) (and (and (|M2.__default.Arity#canCall| (Lit DatatypeTypeType |#M2.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#1|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (|M2.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M2.Primitive.primExec|) |args'#1| |stCombined#1|))) (=> (and (= (|Seq#Length| |args'#1|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (M2.__default.ValidArgs (Lit DatatypeTypeType |#M2.Primitive.primExec|) |args'#1| |stCombined#1|)) (and (|M2.__default.exec#canCall| (M2.Literal.str (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 0))))) (M2.Literal.paths (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 1))))) (M2.Literal.strs (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 2))))) |stCombined#1|) (let ((|ps#1| (M2.__default.exec (M2.Literal.str (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 0))))) (M2.Literal.paths (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 1))))) (M2.Literal.strs (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 2))))) |stCombined#1|)))
 (and (M2.Tuple.Pair_q |ps#1|) (M2.Tuple.Pair_q |ps#1|)))))))))))))))))))))))))))))) (= (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType |expr#0@@5|) |st#0@@58| |env#0@@12|) (ite (M2.__default.Value (Lit DatatypeTypeType |expr#0@@5|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0@@5|)) ($Box DatatypeTypeType |st#0@@58|)) (ite (M2.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@5|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (M2.__default.GetEnv (Lit BoxType (M2.Expression.id (Lit DatatypeTypeType |expr#0@@5|))) |env#0@@12|)) ($Box DatatypeTypeType |st#0@@58|)) (ite (M2.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@5|)) (let ((|st'#4@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.cond (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|cond'#1@@0| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.cond (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(ite  (and (M2.Expression.exprLiteral_q |cond'#1@@0|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#1@@0|) |#M2.Literal.litTrue|)) (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@5|))) |st'#4@@0| |env#0@@12|) (ite  (and (M2.Expression.exprLiteral_q |cond'#1@@0|) (|M2.Literal#Equal| (M2.Expression.lit |cond'#1@@0|) |#M2.Literal.litFalse|)) (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@5|))) |st'#4@@0| |env#0@@12|) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@58|)))))) (ite (M2.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@5|)) (let ((|st'#5@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.conj0 (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|conj0'#1@@0| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.conj0 (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(ite  (and (M2.Expression.exprLiteral_q |conj0'#1@@0|) (|M2.Literal#Equal| (M2.Expression.lit |conj0'#1@@0|) |#M2.Literal.litTrue|)) (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.conj1 (Lit DatatypeTypeType |expr#0@@5|))) |st'#5@@0| |env#0@@12|) (ite  (and (M2.Expression.exprLiteral_q |conj0'#1@@0|) (|M2.Literal#Equal| (M2.Expression.lit |conj0'#1@@0|) |#M2.Literal.litFalse|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprLiteral| (Lit DatatypeTypeType |#M2.Literal.litFalse|)))) ($Box DatatypeTypeType |st'#5@@0|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@58|)))))) (ite (M2.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@5|)) (let ((|st'#6@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.disj0 (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|disj0'#1@@0| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.disj0 (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(ite  (and (M2.Expression.exprLiteral_q |disj0'#1@@0|) (|M2.Literal#Equal| (M2.Expression.lit |disj0'#1@@0|) |#M2.Literal.litTrue|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprLiteral| (Lit DatatypeTypeType |#M2.Literal.litTrue|)))) ($Box DatatypeTypeType |st'#6@@0|)) (ite  (and (M2.Expression.exprLiteral_q |disj0'#1@@0|) (|M2.Literal#Equal| (M2.Expression.lit |disj0'#1@@0|) |#M2.Literal.litFalse|)) (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.disj1 (Lit DatatypeTypeType |expr#0@@5|))) |st'#6@@0| |env#0@@12|) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@58|)))))) (ite (M2.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@5|)) (let ((|st'#7@@0| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.fun (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|fun'#1@@0| ($Unbox DatatypeTypeType (M2.Tuple.fst (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType (M2.Expression.fun (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|sts'#1@@0| ($Unbox SetType (M2.Tuple.snd (M2.__default.evalArgs ($LS $ly@@34) (Lit DatatypeTypeType |expr#0@@5|) (Lit SeqType (M2.Expression.args (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|args'#1@@0| ($Unbox SeqType (M2.Tuple.fst (M2.__default.evalArgs ($LS $ly@@34) (Lit DatatypeTypeType |expr#0@@5|) (Lit SeqType (M2.Expression.args (Lit DatatypeTypeType |expr#0@@5|))) |st#0@@58| |env#0@@12|)))))
(let ((|sts''#1@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#7@@0|)) |sts'#1@@0|)))
(ite  (not (M2.__default.Compatible |sts''#1@@0|)) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rCompatibility|)))) ($Box DatatypeTypeType |st#0@@58|)) (let ((|stCombined#1@@0| (M2.__default.Combine ($LS $LZ) |sts''#1@@0|)))
(ite  (and (M2.Expression.exprLiteral_q |fun'#1@@0|) (M2.Literal.litPrimitive_q (M2.Expression.lit |fun'#1@@0|))) (ite (M2.Primitive.primExec_q (M2.Literal.prim (M2.Expression.lit |fun'#1@@0|))) (ite  (and (= (|Seq#Length| |args'#1@@0|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (M2.__default.ValidArgs (Lit DatatypeTypeType |#M2.Primitive.primExec|) |args'#1@@0| |stCombined#1@@0|)) (let ((|ps#1@@0| (M2.__default.exec (M2.Literal.str (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 0))))) (M2.Literal.paths (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 1))))) (M2.Literal.strs (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 2))))) |stCombined#1@@0|)))
(|#M2.Tuple.Pair| ($Box DatatypeTypeType (|#M2.Expression.exprLiteral| (|#M2.Literal.litArrOfPaths| ($Unbox SetType (M2.Tuple.fst |ps#1@@0|))))) (M2.Tuple.snd |ps#1@@0|))) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@58|))) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@58|))) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@58|)))))))))) (|#M2.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M2.Expression.exprError| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@58|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :weight 3
 :skolemid |4516|
 :pattern ( (M2.__default.eval ($LS $ly@@34) (Lit DatatypeTypeType |expr#0@@5|) |st#0@@58| |env#0@@12|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@23 T@U) (|st#0@@59| T@U) (|st'#0@@7| T@U) ) (!  (=> (and (or (|M2.__default.Union#canCall| |st#0@@59| |st'#0@@7|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@59| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@59| Tclass.M2.State $Heap@@23)) (and ($Is DatatypeTypeType |st'#0@@7| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st'#0@@7| Tclass.M2.State $Heap@@23))))) ($IsGoodHeap $Heap@@23)) ($IsAlloc DatatypeTypeType (M2.__default.Union |st#0@@59| |st'#0@@7|) Tclass.M2.State $Heap@@23))
 :qid |CloudMakeParallelBuildsdfy.23:18|
 :skolemid |4293|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.__default.Union |st#0@@59| |st'#0@@7|) Tclass.M2.State $Heap@@23))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@24 T@U) (|p#0@@49| T@U) (|st#0@@60| T@U) ) (!  (=> (and (or (|M2.__default.Oracle#canCall| |p#0@@49| |st#0@@60|) (and (< 4 $FunctionContextHeight) (and (and ($IsBox |p#0@@49| Tclass.M2.Path) ($IsAllocBox |p#0@@49| Tclass.M2.Path $Heap@@24)) (and ($Is DatatypeTypeType |st#0@@60| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@60| Tclass.M2.State $Heap@@24))))) ($IsGoodHeap $Heap@@24)) ($IsAllocBox (M2.__default.Oracle |p#0@@49| |st#0@@60|) Tclass.M2.Artifact $Heap@@24))
 :qid |CloudMakeParallelBuildsdfy.644:18|
 :skolemid |3819|
 :pattern ( ($IsAllocBox (M2.__default.Oracle |p#0@@49| |st#0@@60|) Tclass.M2.Artifact $Heap@@24))
))))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |3070|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |3071|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@10 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@10)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |3072|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |3073|
 :pattern ( (|Map#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |3081|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@11 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@11) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@11 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |3079|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |3080|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@11))
)))
(assert (forall ((m@@9 T@U) (u@@4 T@U) (|u'| T@U) (v@@12 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@12)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@12)) |u'|) v@@12))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@12)) |u'|) (|Set#IsMember| (|Map#Domain| m@@9) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@12)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@9) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |3087|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@12)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@12)) |u'|))
)))
(assert (forall ((d@@65 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@65)) (DtRank d@@65))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2881|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@65)))
)))
(assert (forall ((s@@19 T@U) (n@@7 Int) (x@@14 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@19 n@@7) x@@14) (exists ((i@@9 Int) ) (!  (and (and (and (<= 0 n@@7) (<= n@@7 i@@9)) (< i@@9 (|Seq#Length| s@@19))) (= (|Seq#Index| s@@19 i@@9) x@@14))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |3034|
 :pattern ( (|Seq#Index| s@@19 i@@9))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |3035|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@19 n@@7) x@@14))
)))
(assert (forall ((bx@@17 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@17 (TSet t@@13)) (and (= ($Box SetType ($Unbox SetType bx@@17)) bx@@17) ($Is SetType ($Unbox SetType bx@@17) (TSet t@@13))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2829|
 :pattern ( ($IsBox bx@@17 (TSet t@@13)))
)))
(assert (forall ((bx@@18 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@18 (TSeq t@@14)) (and (= ($Box SeqType ($Unbox SeqType bx@@18)) bx@@18) ($Is SeqType ($Unbox SeqType bx@@18) (TSeq t@@14))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2832|
 :pattern ( ($IsBox bx@@18 (TSeq t@@14)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|st#0@@61| T@U) (|st'#0@@8| T@U) ) (!  (=> (or (|M2.__default.Extends#canCall| |st#0@@61| |st'#0@@8|) (and (< 5 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@61| Tclass.M2.State) ($Is DatatypeTypeType |st'#0@@8| Tclass.M2.State)))) (and (and (and (|M2.__default.DomSt#canCall| |st#0@@61|) (|M2.__default.DomSt#canCall| |st'#0@@8|)) (=> (|Set#Subset| (M2.__default.DomSt |st#0@@61|) (M2.__default.DomSt |st'#0@@8|)) (and (forall ((|p#0@@50| T@U) ) (!  (=> ($IsBox |p#0@@50| Tclass.M2.Path) (and (|M2.__default.DomSt#canCall| |st#0@@61|) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@61|) |p#0@@50|) (and (|M2.__default.GetSt#canCall| |p#0@@50| |st'#0@@8|) (|M2.__default.GetSt#canCall| |p#0@@50| |st#0@@61|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4421|
 :pattern ( (M2.__default.GetSt |p#0@@50| |st#0@@61|))
 :pattern ( (M2.__default.GetSt |p#0@@50| |st'#0@@8|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@61|) |p#0@@50|))
)) (=> (forall ((|p#0@@51| T@U) ) (!  (=> ($IsBox |p#0@@51| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@61|) |p#0@@51|) (= (M2.__default.GetSt |p#0@@51| |st'#0@@8|) (M2.__default.GetSt |p#0@@51| |st#0@@61|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4423|
 :pattern ( (M2.__default.GetSt |p#0@@51| |st#0@@61|))
 :pattern ( (M2.__default.GetSt |p#0@@51| |st'#0@@8|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@61|) |p#0@@51|))
)) (forall ((|p#1@@5| T@U) ) (!  (=> ($IsBox |p#1@@5| Tclass.M2.Path) (and (|M2.__default.DomSt#canCall| |st#0@@61|) (=> (not (|Set#IsMember| (M2.__default.DomSt |st#0@@61|) |p#1@@5|)) (and (|M2.__default.DomSt#canCall| |st'#0@@8|) (=> (|Set#IsMember| (M2.__default.DomSt |st'#0@@8|) |p#1@@5|) (and (|M2.__default.GetSt#canCall| |p#1@@5| |st'#0@@8|) (|M2.__default.Oracle#canCall| |p#1@@5| |st#0@@61|)))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4422|
 :pattern ( (M2.__default.Oracle |p#1@@5| |st#0@@61|))
 :pattern ( (M2.__default.GetSt |p#1@@5| |st'#0@@8|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@8|) |p#1@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@61|) |p#1@@5|))
)))))) (= (M2.__default.Extends |st#0@@61| |st'#0@@8|)  (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@61|) (M2.__default.DomSt |st'#0@@8|)) (forall ((|p#0@@52| T@U) ) (!  (=> ($IsBox |p#0@@52| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@61|) |p#0@@52|) (= (M2.__default.GetSt |p#0@@52| |st'#0@@8|) (M2.__default.GetSt |p#0@@52| |st#0@@61|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4419|
 :pattern ( (M2.__default.GetSt |p#0@@52| |st#0@@61|))
 :pattern ( (M2.__default.GetSt |p#0@@52| |st'#0@@8|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@61|) |p#0@@52|))
))) (forall ((|p#1@@6| T@U) ) (!  (=> ($IsBox |p#1@@6| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@61|) |p#1@@6|)) (|Set#IsMember| (M2.__default.DomSt |st'#0@@8|) |p#1@@6|)) (= (M2.__default.GetSt |p#1@@6| |st'#0@@8|) (M2.__default.Oracle |p#1@@6| |st#0@@61|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4420|
 :pattern ( (M2.__default.Oracle |p#1@@6| |st#0@@61|))
 :pattern ( (M2.__default.GetSt |p#1@@6| |st'#0@@8|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@8|) |p#1@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@61|) |p#1@@6|))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :skolemid |4424|
 :pattern ( (M2.__default.Extends |st#0@@61| |st'#0@@8|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|p#0@@53| T@U) (|st#0@@62| T@U) ) (!  (=> (or (|M2.__default.Oracle#canCall| (Lit BoxType |p#0@@53|) (Lit DatatypeTypeType |st#0@@62|)) (and (< 4 $FunctionContextHeight) (and ($IsBox |p#0@@53| Tclass.M2.Path) ($Is DatatypeTypeType |st#0@@62| Tclass.M2.State)))) (and (and (and (|M2.__default.WellFounded#canCall| (Lit BoxType |p#0@@53|)) (=> (U_2_bool (Lit boolType (bool_2_U (M2.__default.WellFounded (Lit BoxType |p#0@@53|))))) (and (|M2.__default.GetCert#canCall| (Lit BoxType |p#0@@53|)) (|M2.__default.OracleWF#canCall| (Lit BoxType |p#0@@53|) (Lit DatatypeTypeType (M2.__default.GetCert (Lit BoxType |p#0@@53|))) (Lit DatatypeTypeType |st#0@@62|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M2.__default.WellFounded (Lit BoxType |p#0@@53|)))))) (|M2.__default.OracleArbitrary#canCall| (Lit BoxType |p#0@@53|)))) (= (M2.__default.Oracle (Lit BoxType |p#0@@53|) (Lit DatatypeTypeType |st#0@@62|)) (ite (M2.__default.WellFounded (Lit BoxType |p#0@@53|)) (M2.__default.OracleWF ($LS $LZ) (Lit BoxType |p#0@@53|) (Lit DatatypeTypeType (M2.__default.GetCert (Lit BoxType |p#0@@53|))) (Lit DatatypeTypeType |st#0@@62|)) (M2.__default.OracleArbitrary (Lit BoxType |p#0@@53|))))))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :weight 3
 :skolemid |3823|
 :pattern ( (M2.__default.Oracle (Lit BoxType |p#0@@53|) (Lit DatatypeTypeType |st#0@@62|)))
))))
(assert (forall ((v@@13 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@13 (TMap t0@@6 t1@@3)) (forall ((bx@@19 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@13) bx@@19) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@13) bx@@19) t1@@3) ($IsBox bx@@19 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |2852|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@13) bx@@19))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@13) bx@@19))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |2853|
 :pattern ( ($Is MapType v@@13 (TMap t0@@6 t1@@3)))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) (d@@66 T@U) ) (!  (=> (|Set#IsMember| |a#6#1#0@@0| ($Box DatatypeTypeType d@@66)) (< (DtRank d@@66) (DtRank (|#M2.WFCertificate.Cert| |a#6#0#0@@0| |a#6#1#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4670|
 :pattern ( (|Set#IsMember| |a#6#1#0@@0| ($Box DatatypeTypeType d@@66)) (|#M2.WFCertificate.Cert| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((d@@67 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) ($Is DatatypeTypeType d@@67 Tclass.M2.WFCertificate)) ($IsAlloc DatatypeTypeType d@@67 Tclass.M2.WFCertificate $h@@21))
 :qid |unknown.0:0|
 :skolemid |4671|
 :pattern ( ($IsAlloc DatatypeTypeType d@@67 Tclass.M2.WFCertificate $h@@21))
)))
(assert (forall ((d@@68 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) ($Is DatatypeTypeType d@@68 Tclass.M2.Primitive)) ($IsAlloc DatatypeTypeType d@@68 Tclass.M2.Primitive $h@@22))
 :qid |unknown.0:0|
 :skolemid |4920|
 :pattern ( ($IsAlloc DatatypeTypeType d@@68 Tclass.M2.Primitive $h@@22))
)))
(assert (forall ((d@@69 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) ($Is DatatypeTypeType d@@69 Tclass.M2.Reason)) ($IsAlloc DatatypeTypeType d@@69 Tclass.M2.Reason $h@@23))
 :qid |unknown.0:0|
 :skolemid |4930|
 :pattern ( ($IsAlloc DatatypeTypeType d@@69 Tclass.M2.Reason $h@@23))
)))
(assert (= (Tag Tclass.M2.State) Tagclass.M2.State))
(assert (= (TagFamily Tclass.M2.State) tytagFamily$State))
(assert (= (Tag Tclass.M2.WFCertificate) Tagclass.M2.WFCertificate))
(assert (= (TagFamily Tclass.M2.WFCertificate) tytagFamily$WFCertificate))
(assert (= (Tag Tclass.M2.Expression) Tagclass.M2.Expression))
(assert (= (TagFamily Tclass.M2.Expression) tytagFamily$Expression))
(assert (= (Tag Tclass.M2.Primitive) Tagclass.M2.Primitive))
(assert (= (TagFamily Tclass.M2.Primitive) tytagFamily$Primitive))
(assert (= (Tag Tclass.M2.Literal) Tagclass.M2.Literal))
(assert (= (TagFamily Tclass.M2.Literal) tytagFamily$Literal))
(assert (= (Tag Tclass.M2.Reason) Tagclass.M2.Reason))
(assert (= (TagFamily Tclass.M2.Reason) tytagFamily$Reason))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@6| T@U) ) (!  (=> (or (|M2.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@6|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@6| Tclass.M2.Expression))) (= (M2.__default.Value (Lit DatatypeTypeType |expr#0@@6|)) (U_2_bool (Lit boolType (bool_2_U (M2.Expression.exprLiteral_q (Lit DatatypeTypeType |expr#0@@6|)))))))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :weight 3
 :skolemid |4479|
 :pattern ( (M2.__default.Value (Lit DatatypeTypeType |expr#0@@6|)))
))))
(assert (forall ((s@@20 T@U) (n@@8 Int) (k@@0 Int) ) (!  (=> (and (and (<= 0 n@@8) (<= n@@8 k@@0)) (< k@@0 (|Seq#Length| s@@20))) (= (|Seq#Index| (|Seq#Drop| s@@20 n@@8) (- k@@0 n@@8)) (|Seq#Index| s@@20 k@@0)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |3045|
 :pattern ( (|Seq#Index| s@@20 k@@0) (|Seq#Drop| s@@20 n@@8))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@35 T@U) (|p#0@@54| T@U) (|cert#0@@16| T@U) (|st#0@@63| T@U) ) (!  (=> (or (|M2.__default.OracleWF#canCall| (Lit BoxType |p#0@@54|) (Lit DatatypeTypeType |cert#0@@16|) (Lit DatatypeTypeType |st#0@@63|)) (and (< 3 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@54| Tclass.M2.Path) ($Is DatatypeTypeType |cert#0@@16| Tclass.M2.WFCertificate)) ($Is DatatypeTypeType |st#0@@63| Tclass.M2.State)) (U_2_bool (Lit boolType (bool_2_U (M2.__default.CheckWellFounded ($LS $LZ) (Lit BoxType |p#0@@54|) (Lit DatatypeTypeType |cert#0@@16|)))))))) (and (and (and (and (|M2.__default.LocInv__Cmd#canCall| (Lit BoxType |p#0@@54|)) (|M2.__default.LocInv__Deps#canCall| (Lit BoxType |p#0@@54|))) (|M2.__default.LocInv__Exp#canCall| (Lit BoxType |p#0@@54|))) (let ((|e#2@@1| (M2.__default.LocInv__Exp (Lit BoxType |p#0@@54|))))
(let ((|deps#2@@0| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@54|))))
(let ((|cmd#2@@0| (M2.__default.LocInv__Cmd (Lit BoxType |p#0@@54|))))
 (and (|M2.__default.CollectDependencies#canCall| (Lit BoxType |p#0@@54|) (Lit DatatypeTypeType |cert#0@@16|) |deps#2@@0| (Lit DatatypeTypeType |st#0@@63|)) (|M2.__default.RunTool#canCall| |cmd#2@@0| (M2.__default.CollectDependencies ($LS $ly@@35) (Lit BoxType |p#0@@54|) (Lit DatatypeTypeType |cert#0@@16|) |deps#2@@0| (Lit DatatypeTypeType |st#0@@63|)) |e#2@@1|)))))) (= (M2.__default.OracleWF ($LS $ly@@35) (Lit BoxType |p#0@@54|) (Lit DatatypeTypeType |cert#0@@16|) (Lit DatatypeTypeType |st#0@@63|)) (let ((|e#2@@2| (M2.__default.LocInv__Exp (Lit BoxType |p#0@@54|))))
(let ((|deps#2@@1| (M2.__default.LocInv__Deps (Lit BoxType |p#0@@54|))))
(let ((|cmd#2@@1| (M2.__default.LocInv__Cmd (Lit BoxType |p#0@@54|))))
(M2.__default.RunTool |cmd#2@@1| (M2.__default.CollectDependencies ($LS $ly@@35) (Lit BoxType |p#0@@54|) (Lit DatatypeTypeType |cert#0@@16|) |deps#2@@1| (Lit DatatypeTypeType |st#0@@63|)) |e#2@@2|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :weight 3
 :skolemid |3850|
 :pattern ( (M2.__default.OracleWF ($LS $ly@@35) (Lit BoxType |p#0@@54|) (Lit DatatypeTypeType |cert#0@@16|) (Lit DatatypeTypeType |st#0@@63|)))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@20| T@U) (|deps#0@@26| T@U) (|exps#0@@15| T@U) (|st#0@@64| T@U) ) (!  (=> (or (|M2.__default.Pre#canCall| (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@26|) (Lit SetType |exps#0@@15|) (Lit DatatypeTypeType |st#0@@64|)) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@20| (TSeq TChar)) ($Is SetType |deps#0@@26| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@15| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@64| Tclass.M2.State)))) (and (forall ((|e#2@@3| T@U) ) (!  (=> ($Is SeqType |e#2@@3| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@15|) ($Box SeqType |e#2@@3|)) (and (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@26|) |e#2@@3|) (|M2.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@64|))) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@64|))) (M2.__default.Loc (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@26|) |e#2@@3|)) (and (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@26|) |e#2@@3|) (|M2.__default.GetSt#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@26|) |e#2@@3|) (Lit DatatypeTypeType |st#0@@64|))) (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@26|) |e#2@@3|) (|M2.__default.Oracle#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@26|) |e#2@@3|) (Lit DatatypeTypeType |st#0@@64|))))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |4374|
 :pattern ( (M2.__default.Loc |cmd#0@@20| |deps#0@@26| |e#2@@3|))
 :pattern ( (|Set#IsMember| |exps#0@@15| ($Box SeqType |e#2@@3|)))
)) (= (M2.__default.Pre (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@26|) (Lit SetType |exps#0@@15|) (Lit DatatypeTypeType |st#0@@64|)) (forall ((|e#2@@4| T@U) ) (!  (=> ($Is SeqType |e#2@@4| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@15|) ($Box SeqType |e#2@@4|)) (=> (|Set#IsMember| (Lit SetType (M2.__default.DomSt (Lit DatatypeTypeType |st#0@@64|))) (M2.__default.Loc (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@26|) |e#2@@4|)) (= (M2.__default.GetSt (M2.__default.Loc (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@26|) |e#2@@4|) (Lit DatatypeTypeType |st#0@@64|)) (M2.__default.Oracle (M2.__default.Loc (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@26|) |e#2@@4|) (Lit DatatypeTypeType |st#0@@64|))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |4373|
 :pattern ( (M2.__default.Loc |cmd#0@@20| |deps#0@@26| |e#2@@4|))
 :pattern ( (|Set#IsMember| |exps#0@@15| ($Box SeqType |e#2@@4|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :weight 3
 :skolemid |4375|
 :pattern ( (M2.__default.Pre (Lit SeqType |cmd#0@@20|) (Lit SetType |deps#0@@26|) (Lit SetType |exps#0@@15|) (Lit DatatypeTypeType |st#0@@64|)))
))))
(assert (= |#M2.Literal.litTrue| (Lit DatatypeTypeType |#M2.Literal.litTrue|)))
(assert (= |#M2.Literal.litFalse| (Lit DatatypeTypeType |#M2.Literal.litFalse|)))
(assert (= |#M2.Literal.litUndefined| (Lit DatatypeTypeType |#M2.Literal.litUndefined|)))
(assert (= |#M2.Literal.litNull| (Lit DatatypeTypeType |#M2.Literal.litNull|)))
(assert (= |#M2.Primitive.primCreatePath| (Lit DatatypeTypeType |#M2.Primitive.primCreatePath|)))
(assert (= |#M2.Primitive.primExec| (Lit DatatypeTypeType |#M2.Primitive.primExec|)))
(assert (= |#M2.Reason.rCompatibility| (Lit DatatypeTypeType |#M2.Reason.rCompatibility|)))
(assert (= |#M2.Reason.rValidity| (Lit DatatypeTypeType |#M2.Reason.rValidity|)))
(assert (forall ((|a#109#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Literal.litString| |a#109#0#0@@0|) Tclass.M2.Literal) ($Is SeqType |a#109#0#0@@0| (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |4855|
 :pattern ( ($Is DatatypeTypeType (|#M2.Literal.litString| |a#109#0#0@@0|) Tclass.M2.Literal))
)))
(assert (forall ((d@@70 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (M2.Literal.litString_q d@@70) ($IsAlloc DatatypeTypeType d@@70 Tclass.M2.Literal $h@@24))) ($IsAlloc SeqType (M2.Literal.str d@@70) (TSeq TChar) $h@@24))
 :qid |unknown.0:0|
 :skolemid |4857|
 :pattern ( ($IsAlloc SeqType (M2.Literal.str d@@70) (TSeq TChar) $h@@24))
)))
(assert (forall ((|a#125#0#0| T@U) (d@@71 T@U) ) (!  (=> (|Set#IsMember| |a#125#0#0| ($Box DatatypeTypeType d@@71)) (< (DtRank d@@71) (DtRank (|#M2.Literal.litArrOfPaths| |a#125#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |4881|
 :pattern ( (|Set#IsMember| |a#125#0#0| ($Box DatatypeTypeType d@@71)) (|#M2.Literal.litArrOfPaths| |a#125#0#0|))
)))
(assert (forall ((|a#131#0#0| T@U) (d@@72 T@U) ) (!  (=> (|Set#IsMember| |a#131#0#0| ($Box DatatypeTypeType d@@72)) (< (DtRank d@@72) (DtRank (|#M2.Literal.litArrOfStrings| |a#131#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |4891|
 :pattern ( (|Set#IsMember| |a#131#0#0| ($Box DatatypeTypeType d@@72)) (|#M2.Literal.litArrOfStrings| |a#131#0#0|))
)))
(assert (forall ((a@@36 T@U) (b@@33 T@U) ) (! (= (|Set#Equal| a@@36 b@@33) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@36 o@@5) (|Set#IsMember| b@@33 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2945|
 :pattern ( (|Set#IsMember| a@@36 o@@5))
 :pattern ( (|Set#IsMember| b@@33 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2946|
 :pattern ( (|Set#Equal| a@@36 b@@33))
)))
(assert (forall ((s@@21 T@U) (m@@10 Int) (n@@9 Int) ) (!  (=> (and (and (<= 0 m@@10) (<= 0 n@@9)) (<= (+ m@@10 n@@9) (|Seq#Length| s@@21))) (= (|Seq#Drop| (|Seq#Drop| s@@21 m@@10) n@@9) (|Seq#Drop| s@@21 (+ m@@10 n@@9))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |3054|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@21 m@@10) n@@9))
)))
(assert (forall ((d@@73 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (_System.Tuple2.___hMake2_q d@@73) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@73 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@25)
 :qid |unknown.0:0|
 :skolemid |3255|
 :pattern ( ($IsAlloc DatatypeTypeType d@@73 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@25))
)))) ($IsAllocBox (_System.Tuple2._0 d@@73) |_System._tuple#2$T0@@6| $h@@25))
 :qid |unknown.0:0|
 :skolemid |3256|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@73) |_System._tuple#2$T0@@6| $h@@25))
)))
(assert (forall ((d@@74 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (_System.Tuple2.___hMake2_q d@@74) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@74 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@26)
 :qid |unknown.0:0|
 :skolemid |3257|
 :pattern ( ($IsAlloc DatatypeTypeType d@@74 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@26))
)))) ($IsAllocBox (_System.Tuple2._1 d@@74) |_System._tuple#2$T1@@7| $h@@26))
 :qid |unknown.0:0|
 :skolemid |3258|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@74) |_System._tuple#2$T1@@7| $h@@26))
)))
(assert (forall ((d@@75 T@U) (M2.Tuple$A@@6 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (M2.Tuple.Pair_q d@@75) (exists ((M2.Tuple$B@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@75 (Tclass.M2.Tuple M2.Tuple$A@@6 M2.Tuple$B@@6) $h@@27)
 :qid |unknown.0:0|
 :skolemid |4942|
 :pattern ( ($IsAlloc DatatypeTypeType d@@75 (Tclass.M2.Tuple M2.Tuple$A@@6 M2.Tuple$B@@6) $h@@27))
)))) ($IsAllocBox (M2.Tuple.fst d@@75) M2.Tuple$A@@6 $h@@27))
 :qid |unknown.0:0|
 :skolemid |4943|
 :pattern ( ($IsAllocBox (M2.Tuple.fst d@@75) M2.Tuple$A@@6 $h@@27))
)))
(assert (forall ((d@@76 T@U) (M2.Tuple$B@@7 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (M2.Tuple.Pair_q d@@76) (exists ((M2.Tuple$A@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@76 (Tclass.M2.Tuple M2.Tuple$A@@7 M2.Tuple$B@@7) $h@@28)
 :qid |unknown.0:0|
 :skolemid |4944|
 :pattern ( ($IsAlloc DatatypeTypeType d@@76 (Tclass.M2.Tuple M2.Tuple$A@@7 M2.Tuple$B@@7) $h@@28))
)))) ($IsAllocBox (M2.Tuple.snd d@@76) M2.Tuple$B@@7 $h@@28))
 :qid |unknown.0:0|
 :skolemid |4945|
 :pattern ( ($IsAllocBox (M2.Tuple.snd d@@76) M2.Tuple$B@@7 $h@@28))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@10 Int) ) (!  (and (=> (< n@@10 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10) (|Seq#Index| s0@@2 n@@10))) (=> (<= (|Seq#Length| s0@@2) n@@10) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10) (|Seq#Index| s1@@2 (- n@@10 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |3024|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10))
)))
(assert (forall ((d@@77 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (M2.WFCertificate.Cert_q d@@77) ($IsAlloc DatatypeTypeType d@@77 Tclass.M2.WFCertificate $h@@29))) ($IsAllocBox (M2.WFCertificate.p d@@77) Tclass.M2.Path $h@@29))
 :qid |unknown.0:0|
 :skolemid |4665|
 :pattern ( ($IsAllocBox (M2.WFCertificate.p d@@77) Tclass.M2.Path $h@@29))
)))
(assert (forall ((d@@78 T@U) ($h@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (M2.Expression.exprLiteral_q d@@78) ($IsAlloc DatatypeTypeType d@@78 Tclass.M2.Expression $h@@30))) ($IsAlloc DatatypeTypeType (M2.Expression.lit d@@78) Tclass.M2.Literal $h@@30))
 :qid |unknown.0:0|
 :skolemid |4740|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.lit d@@78) Tclass.M2.Literal $h@@30))
)))
(assert (forall ((d@@79 T@U) ($h@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (M2.Expression.exprIdentifier_q d@@79) ($IsAlloc DatatypeTypeType d@@79 Tclass.M2.Expression $h@@31))) ($IsAllocBox (M2.Expression.id d@@79) Tclass.M2.Identifier $h@@31))
 :qid |unknown.0:0|
 :skolemid |4750|
 :pattern ( ($IsAllocBox (M2.Expression.id d@@79) Tclass.M2.Identifier $h@@31))
)))
(assert (forall ((d@@80 T@U) ($h@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (M2.Expression.exprIf_q d@@80) ($IsAlloc DatatypeTypeType d@@80 Tclass.M2.Expression $h@@32))) ($IsAlloc DatatypeTypeType (M2.Expression.cond d@@80) Tclass.M2.Expression $h@@32))
 :qid |unknown.0:0|
 :skolemid |4759|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.cond d@@80) Tclass.M2.Expression $h@@32))
)))
(assert (forall ((d@@81 T@U) ($h@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (M2.Expression.exprIf_q d@@81) ($IsAlloc DatatypeTypeType d@@81 Tclass.M2.Expression $h@@33))) ($IsAlloc DatatypeTypeType (M2.Expression.ifTrue d@@81) Tclass.M2.Expression $h@@33))
 :qid |unknown.0:0|
 :skolemid |4760|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.ifTrue d@@81) Tclass.M2.Expression $h@@33))
)))
(assert (forall ((d@@82 T@U) ($h@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (M2.Expression.exprIf_q d@@82) ($IsAlloc DatatypeTypeType d@@82 Tclass.M2.Expression $h@@34))) ($IsAlloc DatatypeTypeType (M2.Expression.ifFalse d@@82) Tclass.M2.Expression $h@@34))
 :qid |unknown.0:0|
 :skolemid |4761|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.ifFalse d@@82) Tclass.M2.Expression $h@@34))
)))
(assert (forall ((d@@83 T@U) ($h@@35 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (M2.Expression.exprAnd_q d@@83) ($IsAlloc DatatypeTypeType d@@83 Tclass.M2.Expression $h@@35))) ($IsAlloc DatatypeTypeType (M2.Expression.conj0 d@@83) Tclass.M2.Expression $h@@35))
 :qid |unknown.0:0|
 :skolemid |4775|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.conj0 d@@83) Tclass.M2.Expression $h@@35))
)))
(assert (forall ((d@@84 T@U) ($h@@36 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (M2.Expression.exprAnd_q d@@84) ($IsAlloc DatatypeTypeType d@@84 Tclass.M2.Expression $h@@36))) ($IsAlloc DatatypeTypeType (M2.Expression.conj1 d@@84) Tclass.M2.Expression $h@@36))
 :qid |unknown.0:0|
 :skolemid |4776|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.conj1 d@@84) Tclass.M2.Expression $h@@36))
)))
(assert (forall ((d@@85 T@U) ($h@@37 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (M2.Expression.exprOr_q d@@85) ($IsAlloc DatatypeTypeType d@@85 Tclass.M2.Expression $h@@37))) ($IsAlloc DatatypeTypeType (M2.Expression.disj0 d@@85) Tclass.M2.Expression $h@@37))
 :qid |unknown.0:0|
 :skolemid |4788|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.disj0 d@@85) Tclass.M2.Expression $h@@37))
)))
(assert (forall ((d@@86 T@U) ($h@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@38) (and (M2.Expression.exprOr_q d@@86) ($IsAlloc DatatypeTypeType d@@86 Tclass.M2.Expression $h@@38))) ($IsAlloc DatatypeTypeType (M2.Expression.disj1 d@@86) Tclass.M2.Expression $h@@38))
 :qid |unknown.0:0|
 :skolemid |4789|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.disj1 d@@86) Tclass.M2.Expression $h@@38))
)))
(assert (forall ((d@@87 T@U) ($h@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@39) (and (M2.Expression.exprInvocation_q d@@87) ($IsAlloc DatatypeTypeType d@@87 Tclass.M2.Expression $h@@39))) ($IsAlloc DatatypeTypeType (M2.Expression.fun d@@87) Tclass.M2.Expression $h@@39))
 :qid |unknown.0:0|
 :skolemid |4801|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.fun d@@87) Tclass.M2.Expression $h@@39))
)))
(assert (forall ((d@@88 T@U) ($h@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@40) (and (M2.Expression.exprError_q d@@88) ($IsAlloc DatatypeTypeType d@@88 Tclass.M2.Expression $h@@40))) ($IsAlloc DatatypeTypeType (M2.Expression.r d@@88) Tclass.M2.Reason $h@@40))
 :qid |unknown.0:0|
 :skolemid |4816|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Expression.r d@@88) Tclass.M2.Reason $h@@40))
)))
(assert (forall ((d@@89 T@U) ($h@@41 T@U) ) (!  (=> (and ($IsGoodHeap $h@@41) (and (M2.Literal.litPrimitive_q d@@89) ($IsAlloc DatatypeTypeType d@@89 Tclass.M2.Literal $h@@41))) ($IsAlloc DatatypeTypeType (M2.Literal.prim d@@89) Tclass.M2.Primitive $h@@41))
 :qid |unknown.0:0|
 :skolemid |4868|
 :pattern ( ($IsAlloc DatatypeTypeType (M2.Literal.prim d@@89) Tclass.M2.Primitive $h@@41))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3259|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#M2.WFCertificate.Cert| (Lit BoxType |a#3#0#0@@0|) (Lit SetType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#M2.WFCertificate.Cert| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |4667|
 :pattern ( (|#M2.WFCertificate.Cert| (Lit BoxType |a#3#0#0@@0|) (Lit SetType |a#3#1#0@@0|)))
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
(assert (forall ((|a#158#0#0| T@U) (|a#158#1#0| T@U) ) (! (= (|#M2.Tuple.Pair| (Lit BoxType |a#158#0#0|) (Lit BoxType |a#158#1#0|)) (Lit DatatypeTypeType (|#M2.Tuple.Pair| |a#158#0#0| |a#158#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |4946|
 :pattern ( (|#M2.Tuple.Pair| (Lit BoxType |a#158#0#0|) (Lit BoxType |a#158#1#0|)))
)))
(assert (forall ((x@@15 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@15))) (Lit BoxType ($Box intType (int_2_U x@@15))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2815|
 :pattern ( ($Box intType (int_2_U (LitInt x@@15))))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (|#M2.State.StateCons| (Lit MapType |a#10#0#0|)) (Lit DatatypeTypeType (|#M2.State.StateCons| |a#10#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4683|
 :pattern ( (|#M2.State.StateCons| (Lit MapType |a#10#0#0|)))
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
(assert (forall ((|a#105#0#0| Int) ) (! (= (|#M2.Literal.litNumber| (LitInt |a#105#0#0|)) (Lit DatatypeTypeType (|#M2.Literal.litNumber| |a#105#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |4849|
 :pattern ( (|#M2.Literal.litNumber| (LitInt |a#105#0#0|)))
)))
(assert (forall ((|a#110#0#0| T@U) ) (! (= (|#M2.Literal.litString| (Lit SeqType |a#110#0#0|)) (Lit DatatypeTypeType (|#M2.Literal.litString| |a#110#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |4858|
 :pattern ( (|#M2.Literal.litString| (Lit SeqType |a#110#0#0|)))
)))
(assert (forall ((|a#117#0#0| T@U) ) (! (= (|#M2.Literal.litPrimitive| (Lit DatatypeTypeType |a#117#0#0|)) (Lit DatatypeTypeType (|#M2.Literal.litPrimitive| |a#117#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |4869|
 :pattern ( (|#M2.Literal.litPrimitive| (Lit DatatypeTypeType |a#117#0#0|)))
)))
(assert (forall ((|a#123#0#0| T@U) ) (! (= (|#M2.Literal.litArrOfPaths| (Lit SetType |a#123#0#0|)) (Lit DatatypeTypeType (|#M2.Literal.litArrOfPaths| |a#123#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |4879|
 :pattern ( (|#M2.Literal.litArrOfPaths| (Lit SetType |a#123#0#0|)))
)))
(assert (forall ((|a#129#0#0| T@U) ) (! (= (|#M2.Literal.litArrOfStrings| (Lit SetType |a#129#0#0|)) (Lit DatatypeTypeType (|#M2.Literal.litArrOfStrings| |a#129#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |4889|
 :pattern ( (|#M2.Literal.litArrOfStrings| (Lit SetType |a#129#0#0|)))
)))
(assert (forall ((|a#135#0#0| T@U) ) (! (= (|#M2.Literal.litArray| (Lit SeqType |a#135#0#0|)) (Lit DatatypeTypeType (|#M2.Literal.litArray| |a#135#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |4899|
 :pattern ( (|#M2.Literal.litArray| (Lit SeqType |a#135#0#0|)))
)))
(assert (forall ((x@@16 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@16)) (Lit BoxType ($Box T@@4 x@@16)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2813|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@16)))
)))
(assert (forall ((|a#12#0#0| T@U) (d@@90 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#12#0#0|) ($Box DatatypeTypeType d@@90)) (< (DtRank d@@90) (DtRank (|#M2.State.StateCons| |a#12#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |4685|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#12#0#0|) ($Box DatatypeTypeType d@@90)) (|#M2.State.StateCons| |a#12#0#0|))
)))
(assert (forall ((d@@91 T@U) ($h@@42 T@U) ) (!  (=> (and ($IsGoodHeap $h@@42) (and (M2.Literal.litArrOfStrings_q d@@91) ($IsAlloc DatatypeTypeType d@@91 Tclass.M2.Literal $h@@42))) ($IsAlloc SetType (M2.Literal.strs d@@91) (TSet (TSeq TChar)) $h@@42))
 :qid |unknown.0:0|
 :skolemid |4888|
 :pattern ( ($IsAlloc SetType (M2.Literal.strs d@@91) (TSet (TSeq TChar)) $h@@42))
)))
(assert (forall ((s@@22 T@U) ) (!  (=> (= (|Seq#Length| s@@22) 0) (= s@@22 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3019|
 :pattern ( (|Seq#Length| s@@22))
)))
(assert (forall ((s@@23 T@U) (n@@11 Int) ) (!  (=> (= n@@11 0) (= (|Seq#Take| s@@23 n@@11) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |3053|
 :pattern ( (|Seq#Take| s@@23 n@@11))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@36 T@U) (|sts#0@@5| T@U) ) (!  (=> (or (|M2.__default.Combine#canCall| |sts#0@@5|) (and (< 4 $FunctionContextHeight) (and ($Is SetType |sts#0@@5| (TSet Tclass.M2.State)) (not (|Set#Equal| |sts#0@@5| |Set#Empty|))))) ($Is DatatypeTypeType (M2.__default.Combine $ly@@36 |sts#0@@5|) Tclass.M2.State))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |4314|
 :pattern ( (M2.__default.Combine $ly@@36 |sts#0@@5|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|cmd#0@@21| T@U) (|deps#0@@27| T@U) (|exps#0@@16| T@U) (|st#0@@65| T@U) ) (!  (=> (or (|M2.__default.exec#canCall| (Lit SeqType |cmd#0@@21|) (Lit SetType |deps#0@@27|) (Lit SetType |exps#0@@16|) |st#0@@65|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@21| (TSeq TChar)) ($Is SetType |deps#0@@27| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@16| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@65| Tclass.M2.State)))) (and (and (|M2.__default.Restrict#canCall| (Lit SetType |deps#0@@27|) |st#0@@65|) (|M2.__default.execOne#canCall| (Lit SeqType |cmd#0@@21|) (Lit SetType |deps#0@@27|) (M2.__default.Restrict (Lit SetType |deps#0@@27|) |st#0@@65|) (Lit SetType |exps#0@@16|) |st#0@@65|)) (= (M2.__default.exec (Lit SeqType |cmd#0@@21|) (Lit SetType |deps#0@@27|) (Lit SetType |exps#0@@16|) |st#0@@65|) (M2.__default.execOne ($LS $LZ) (Lit SeqType |cmd#0@@21|) (Lit SetType |deps#0@@27|) (M2.__default.Restrict (Lit SetType |deps#0@@27|) |st#0@@65|) (Lit SetType |exps#0@@16|) |st#0@@65|))))
 :qid |CloudMakeParallelBuildsdfy.69:23|
 :weight 3
 :skolemid |3598|
 :pattern ( (M2.__default.exec (Lit SeqType |cmd#0@@21|) (Lit SetType |deps#0@@27|) (Lit SetType |exps#0@@16|) |st#0@@65|))
))))
(assert (forall ((|a#128#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#M2.Literal.litArrOfStrings| |a#128#0#0@@0|) Tclass.M2.Literal) ($Is SetType |a#128#0#0@@0| (TSet (TSeq TChar))))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |4886|
 :pattern ( ($Is DatatypeTypeType (|#M2.Literal.litArrOfStrings| |a#128#0#0@@0|) Tclass.M2.Literal))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@22| T@U) (|deps#0@@28| T@U) (|exps#0@@17| T@U) (|st#0@@66| T@U) ) (!  (=> (or (|M2.__default.Post#canCall| (Lit SeqType |cmd#0@@22|) (Lit SetType |deps#0@@28|) (Lit SetType |exps#0@@17|) |st#0@@66|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@22| (TSeq TChar)) ($Is SetType |deps#0@@28| (TSet Tclass.M2.Path))) ($Is SetType |exps#0@@17| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@66| Tclass.M2.State)))) (and (forall ((|e#1@@5| T@U) ) (!  (=> ($Is SeqType |e#1@@5| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@17|) ($Box SeqType |e#1@@5|)) (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@22|) (Lit SetType |deps#0@@28|) |e#1@@5|) (|M2.__default.DomSt#canCall| |st#0@@66|))) (=> (=> (|Set#IsMember| (Lit SetType |exps#0@@17|) ($Box SeqType |e#1@@5|)) (|Set#IsMember| (M2.__default.DomSt |st#0@@66|) (M2.__default.Loc (Lit SeqType |cmd#0@@22|) (Lit SetType |deps#0@@28|) |e#1@@5|))) (=> (|Set#IsMember| (Lit SetType |exps#0@@17|) ($Box SeqType |e#1@@5|)) (and (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@22|) (Lit SetType |deps#0@@28|) |e#1@@5|) (|M2.__default.GetSt#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@22|) (Lit SetType |deps#0@@28|) |e#1@@5|) |st#0@@66|)) (and (|M2.__default.Loc#canCall| (Lit SeqType |cmd#0@@22|) (Lit SetType |deps#0@@28|) |e#1@@5|) (|M2.__default.Oracle#canCall| (M2.__default.Loc (Lit SeqType |cmd#0@@22|) (Lit SetType |deps#0@@28|) |e#1@@5|) |st#0@@66|)))))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |4403|
 :pattern ( (M2.__default.Loc |cmd#0@@22| |deps#0@@28| |e#1@@5|))
 :pattern ( (|Set#IsMember| |exps#0@@17| ($Box SeqType |e#1@@5|)))
)) (= (M2.__default.Post (Lit SeqType |cmd#0@@22|) (Lit SetType |deps#0@@28|) (Lit SetType |exps#0@@17|) |st#0@@66|) (forall ((|e#1@@6| T@U) ) (!  (=> ($Is SeqType |e#1@@6| (TSeq TChar)) (and (=> (|Set#IsMember| (Lit SetType |exps#0@@17|) ($Box SeqType |e#1@@6|)) (|Set#IsMember| (M2.__default.DomSt |st#0@@66|) (M2.__default.Loc (Lit SeqType |cmd#0@@22|) (Lit SetType |deps#0@@28|) |e#1@@6|))) (=> (|Set#IsMember| (Lit SetType |exps#0@@17|) ($Box SeqType |e#1@@6|)) (= (M2.__default.GetSt (M2.__default.Loc (Lit SeqType |cmd#0@@22|) (Lit SetType |deps#0@@28|) |e#1@@6|) |st#0@@66|) (M2.__default.Oracle (M2.__default.Loc (Lit SeqType |cmd#0@@22|) (Lit SetType |deps#0@@28|) |e#1@@6|) |st#0@@66|)))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |4402|
 :pattern ( (M2.__default.Loc |cmd#0@@22| |deps#0@@28| |e#1@@6|))
 :pattern ( (|Set#IsMember| |exps#0@@17| ($Box SeqType |e#1@@6|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.94:24|
 :weight 3
 :skolemid |4404|
 :pattern ( (M2.__default.Post (Lit SeqType |cmd#0@@22|) (Lit SetType |deps#0@@28|) (Lit SetType |exps#0@@17|) |st#0@@66|))
))))
(assert (forall ((d@@92 T@U) ($h@@43 T@U) ) (!  (=> (and ($IsGoodHeap $h@@43) (and (M2.WFCertificate.Cert_q d@@92) ($IsAlloc DatatypeTypeType d@@92 Tclass.M2.WFCertificate $h@@43))) ($IsAlloc SetType (M2.WFCertificate.certs d@@92) (TSet Tclass.M2.WFCertificate) $h@@43))
 :qid |unknown.0:0|
 :skolemid |4666|
 :pattern ( ($IsAlloc SetType (M2.WFCertificate.certs d@@92) (TSet Tclass.M2.WFCertificate) $h@@43))
)))
(assert (forall ((d@@93 T@U) ($h@@44 T@U) ) (!  (=> (and ($IsGoodHeap $h@@44) (and (M2.Expression.exprInvocation_q d@@93) ($IsAlloc DatatypeTypeType d@@93 Tclass.M2.Expression $h@@44))) ($IsAlloc SeqType (M2.Expression.args d@@93) (TSeq Tclass.M2.Expression) $h@@44))
 :qid |unknown.0:0|
 :skolemid |4802|
 :pattern ( ($IsAlloc SeqType (M2.Expression.args d@@93) (TSeq Tclass.M2.Expression) $h@@44))
)))
(assert (forall ((d@@94 T@U) ($h@@45 T@U) ) (!  (=> (and ($IsGoodHeap $h@@45) (and (M2.Literal.litArrOfPaths_q d@@94) ($IsAlloc DatatypeTypeType d@@94 Tclass.M2.Literal $h@@45))) ($IsAlloc SetType (M2.Literal.paths d@@94) (TSet Tclass.M2.Path) $h@@45))
 :qid |unknown.0:0|
 :skolemid |4878|
 :pattern ( ($IsAlloc SetType (M2.Literal.paths d@@94) (TSet Tclass.M2.Path) $h@@45))
)))
(assert (forall ((d@@95 T@U) ($h@@46 T@U) ) (!  (=> (and ($IsGoodHeap $h@@46) (and (M2.Literal.litArray_q d@@95) ($IsAlloc DatatypeTypeType d@@95 Tclass.M2.Literal $h@@46))) ($IsAlloc SeqType (M2.Literal.arr d@@95) (TSeq Tclass.M2.Expression) $h@@46))
 :qid |unknown.0:0|
 :skolemid |4898|
 :pattern ( ($IsAlloc SeqType (M2.Literal.arr d@@95) (TSeq Tclass.M2.Expression) $h@@46))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M2._default.PickOne$T@@3 T@U) ($Heap@@25 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|M2.__default.PickOne#canCall| M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@25) ($Is SetType |s#0@@2| (TSet M2._default.PickOne$T@@3))) (not (|Set#Equal| |s#0@@2| |Set#Empty|))))) (and (|$let#0$canCall| M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (= (M2.__default.PickOne M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (let ((|x#1| (|$let#0_x| M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|))))
|x#1|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |3526|
 :pattern ( (M2.__default.PickOne M2._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) ($IsGoodHeap $Heap@@25))
))))
(assert (forall ((h@@4 T@U) (v@@14 T@U) ) (! ($IsAlloc intType v@@14 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2858|
 :pattern ( ($IsAlloc intType v@@14 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@15 T@U) ) (! ($IsAlloc charType v@@15 TChar h@@5)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |2861|
 :pattern ( ($IsAlloc charType v@@15 TChar h@@5))
)))
(assert (forall ((v@@16 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@16 (TSeq t0@@7)) (forall ((i@@10 Int) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length| v@@16))) ($IsBox (|Seq#Index| v@@16 i@@10) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2850|
 :pattern ( (|Seq#Index| v@@16 i@@10))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2851|
 :pattern ( ($Is SeqType v@@16 (TSeq t0@@7)))
)))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@1 T@U) (v@@17 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@1 v@@17)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |3074|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |3075|
 :pattern ( (|Map#Items| m@@11))
)))
(assert (forall ((s@@24 T@U) (i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length| s@@24))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@24 i@@11))) (|Seq#Rank| s@@24)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |3064|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@24 i@@11))))
)))
(assert (forall ((v@@18 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@18 (TMap t0@@8 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@18) (TSet t0@@8)) ($Is SetType (|Map#Values| v@@18) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@18) (TSet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |2854|
 :pattern ( ($Is MapType v@@18 (TMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@19 T@U) ) (! ($Is intType v@@19 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2837|
 :pattern ( ($Is intType v@@19 TInt))
)))
(assert (forall ((v@@20 T@U) ) (! ($Is charType v@@20 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |2840|
 :pattern ( ($Is charType v@@20 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |expr#0@@7| () T@U)
(declare-fun |st#0@@67| () T@U)
(declare-fun |env#0@@13| () T@U)
(declare-fun |call4formal@expr'#0@0| () T@U)
(declare-fun |expr##1_1_0_1_0_0@0| () T@U)
(declare-fun |call4formal@expr'#0| () T@U)
(declare-fun $Heap@@26 () T@U)
(declare-fun |call5formal@st'#0| () T@U)
(declare-fun |call5formal@st'#0@0| () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call4formal@expr'#0@0@@0| () T@U)
(declare-fun |call5formal@st'#0@0@@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun |expr##1_1_0_0_0@0| () T@U)
(declare-fun |call4formal@expr'#0@@0| () T@U)
(declare-fun |call5formal@st'#0@@0| () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |call4formal@expr'#0@0@@1| () T@U)
(declare-fun |call5formal@st'#0@0@@1| () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun |expr##1_1_0_0@0| () T@U)
(declare-fun |call4formal@expr'#0@@1| () T@U)
(declare-fun |call5formal@st'#0@@1| () T@U)
(declare-fun |call4formal@expr'#0@0@@2| () T@U)
(declare-fun |expr##1_1_1_0_0_0@0| () T@U)
(declare-fun |call4formal@expr'#0@@2| () T@U)
(declare-fun |call5formal@st'#0@@2| () T@U)
(declare-fun |call5formal@st'#0@0@@2| () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |call4formal@expr'#0@0@@3| () T@U)
(declare-fun |call5formal@st'#0@0@@3| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun |expr##1_1_1_0_0@0| () T@U)
(declare-fun |call4formal@expr'#0@@3| () T@U)
(declare-fun |call5formal@st'#0@@3| () T@U)
(declare-fun |call4formal@expr'#0@0@@4| () T@U)
(declare-fun |expr##1_1_1_1_0_1_0_0@0| () T@U)
(declare-fun |call4formal@expr'#0@@4| () T@U)
(declare-fun |call5formal@st'#0@@4| () T@U)
(declare-fun |call5formal@st'#0@0@@4| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |call4formal@expr'#0@0@@5| () T@U)
(declare-fun |call5formal@st'#0@0@@5| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |expr##1_1_1_1_0_0@0| () T@U)
(declare-fun |call4formal@expr'#0@@5| () T@U)
(declare-fun |call5formal@st'#0@@5| () T@U)
(declare-fun |call5formal@args'#0@0| () T@U)
(declare-fun |stCombined#1_1_1_1_1_0_0_0@0| () T@U)
(declare-fun |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| () T@U)
(declare-fun |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| () T@U)
(declare-fun |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |resultExec#1_1_1_1_1_0_0_0_0_0_0@0| () T@U)
(declare-fun |stExec#1_1_1_1_1_0_0_0_0_0_0@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |##prim#1_1_1_1_1_0_0_0_0_1@0| () T@U)
(declare-fun |call4formal@expr'#0@0@@6| () T@U)
(declare-fun |##prim#1_1_1_1_1_0_0_0_0_0@0| () T@U)
(declare-fun |sts''#1_1_1_1_1_0_0@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |expr##1_1_1_1_1_0_0@0| () T@U)
(declare-fun |call4formal@expr'#0@@6| () T@U)
(declare-fun |call5formal@st'#0@@6| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call5formal@st'#0@0@@6| () T@U)
(declare-fun |args##1_1_1_1_1_0_0@0| () T@U)
(declare-fun |call5formal@args'#0| () T@U)
(declare-fun |call6formal@sts'#0| () T@U)
(declare-fun |call6formal@sts'#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |result#0@0| () T@U)
(declare-fun |expr'#0| () T@U)
(declare-fun |st'#0@@9| () T@U)
(declare-fun |result#0@@0| () T@U)
(declare-fun |cond'#1_1_0_0| () T@U)
(declare-fun |st'#1_1_0_0| () T@U)
(declare-fun |_v7#1_1_0_0_0| () T@U)
(declare-fun |st''#1_1_0_0_0| () T@U)
(declare-fun |_v8#1_1_0_1_0_0| () T@U)
(declare-fun |st''#1_1_0_1_0_0| () T@U)
(declare-fun |conj0'#1_1_1_0_0| () T@U)
(declare-fun |st'#1_1_1_0_0| () T@U)
(declare-fun |_v9#1_1_1_0_0_0| () T@U)
(declare-fun |st''#1_1_1_0_0_0| () T@U)
(declare-fun |disj0'#1_1_1_1_0_0| () T@U)
(declare-fun |st'#1_1_1_1_0_0| () T@U)
(declare-fun |_v10#1_1_1_1_0_1_0_0| () T@U)
(declare-fun |st''#1_1_1_1_0_1_0_0| () T@U)
(declare-fun |fun'#1_1_1_1_1_0_0| () T@U)
(declare-fun |st'#1_1_1_1_1_0_0| () T@U)
(declare-fun |args'#1_1_1_1_1_0_0| () T@U)
(declare-fun |sts'#1_1_1_1_1_0_0| () T@U)
(declare-fun |sts''#1_1_1_1_1_0_0| () T@U)
(declare-fun |stCombined#1_1_1_1_1_0_0_0| () T@U)
(declare-fun |cmd#1_1_1_1_1_0_0_0_0_0_0| () T@U)
(declare-fun |deps#1_1_1_1_1_0_0_0_0_0_0| () T@U)
(declare-fun |exp#1_1_1_1_1_0_0_0_0_0_0| () T@U)
(declare-fun |resultExec#1_1_1_1_1_0_0_0_0_0_0| () T@U)
(declare-fun |stExec#1_1_1_1_1_0_0_0_0_0_0| () T@U)
(set-info :boogie-vc-id Impl$$M2.__default.EvalLemma)
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
 (=> (= (ControlFlow 0 0) 119) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> false (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |$rhs#0@0|) ($Box DatatypeTypeType |$rhs#1@0|)) (M2.__default.eval ($LS ($LS $LZ)) |expr#0@@7| |st#0@@67| |env#0@@13|)))) (=> (=> false (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |$rhs#0@0|) ($Box DatatypeTypeType |$rhs#1@0|)) (M2.__default.eval ($LS ($LS $LZ)) |expr#0@@7| |st#0@@67| |env#0@@13|))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> false (=> (|M2.__default.ValidState#canCall| |$rhs#1@0|) (or (M2.__default.ValidState |$rhs#1@0|) (forall ((|p#5| T@U) ) (!  (=> ($IsBox |p#5| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1@0|) |p#5|) (M2.__default.WellFounded |p#5|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4622|
 :pattern ( (M2.__default.WellFounded |p#5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1@0|) |p#5|))
)))))) (=> (=> false (=> (|M2.__default.ValidState#canCall| |$rhs#1@0|) (or (M2.__default.ValidState |$rhs#1@0|) (forall ((|p#5@@0| T@U) ) (!  (=> ($IsBox |p#5@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |$rhs#1@0|) |p#5@@0|) (M2.__default.WellFounded |p#5@@0|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4622|
 :pattern ( (M2.__default.WellFounded |p#5@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1@0|) |p#5@@0|))
))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> false (=> (|M2.__default.Extends#canCall| |st#0@@67| |$rhs#1@0|) (or (M2.__default.Extends |st#0@@67| |$rhs#1@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |$rhs#1@0|)))))) (=> (=> false (=> (|M2.__default.Extends#canCall| |st#0@@67| |$rhs#1@0|) (or (M2.__default.Extends |st#0@@67| |$rhs#1@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |$rhs#1@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> false (=> (|M2.__default.Extends#canCall| |st#0@@67| |$rhs#1@0|) (or (M2.__default.Extends |st#0@@67| |$rhs#1@0|) (forall ((|p#6| T@U) ) (!  (=> ($IsBox |p#6| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#6|) (= (M2.__default.GetSt |p#6| |$rhs#1@0|) (M2.__default.GetSt |p#6| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4624|
 :pattern ( (M2.__default.GetSt |p#6| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#6| |$rhs#1@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#6|))
)))))) (=> (=> false (=> (|M2.__default.Extends#canCall| |st#0@@67| |$rhs#1@0|) (or (M2.__default.Extends |st#0@@67| |$rhs#1@0|) (forall ((|p#6@@0| T@U) ) (!  (=> ($IsBox |p#6@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#6@@0|) (= (M2.__default.GetSt |p#6@@0| |$rhs#1@0|) (M2.__default.GetSt |p#6@@0| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4624|
 :pattern ( (M2.__default.GetSt |p#6@@0| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#6@@0| |$rhs#1@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#6@@0|))
))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (=> (|M2.__default.Extends#canCall| |st#0@@67| |$rhs#1@0|) (or (M2.__default.Extends |st#0@@67| |$rhs#1@0|) (forall ((|p#7| T@U) ) (!  (=> ($IsBox |p#7| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#7|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1@0|) |p#7|)) (= (M2.__default.GetSt |p#7| |$rhs#1@0|) (M2.__default.Oracle |p#7| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4625|
 :pattern ( (M2.__default.Oracle |p#7| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#7| |$rhs#1@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1@0|) |p#7|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#7|))
)))))) (=> (=> false (=> (|M2.__default.Extends#canCall| |st#0@@67| |$rhs#1@0|) (or (M2.__default.Extends |st#0@@67| |$rhs#1@0|) (forall ((|p#7@@0| T@U) ) (!  (=> ($IsBox |p#7@@0| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#7@@0|)) (|Set#IsMember| (M2.__default.DomSt |$rhs#1@0|) |p#7@@0|)) (= (M2.__default.GetSt |p#7@@0| |$rhs#1@0|) (M2.__default.Oracle |p#7@@0| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4625|
 :pattern ( (M2.__default.Oracle |p#7@@0| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#7@@0| |$rhs#1@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |$rhs#1@0|) |p#7@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#7@@0|))
))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (=> (M2.Expression.exprError_q |$rhs#0@0|) (|M2.Reason#Equal| (M2.Expression.r |$rhs#0@0|) |#M2.Reason.rValidity|))))))))))))))))
(let ((anon55_Else_correct  (=> (and (not (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0|) (|M2.Literal#Equal| (M2.Expression.lit |call4formal@expr'#0@0|) |#M2.Literal.litFalse|))) (= (ControlFlow 0 105) 2)) GeneratedUnifiedExit_correct)))
(let ((anon55_Then_correct  (=> (and (and (and (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0|) (|M2.Literal#Equal| (M2.Expression.lit |call4formal@expr'#0@0|) |#M2.Literal.litFalse|)) (M2.Expression.exprIf_q |expr#0@@7|)) (and (= |expr##1_1_0_1_0_0@0| (M2.Expression.ifFalse |expr#0@@7|)) (< (DtRank |expr##1_1_0_1_0_0@0|) (DtRank |expr#0@@7|)))) (and (and ($Is DatatypeTypeType |call4formal@expr'#0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0| Tclass.M2.Expression $Heap@@26)) (and ($Is DatatypeTypeType |call5formal@st'#0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0| Tclass.M2.State $Heap@@26)))) (and (=> (= (ControlFlow 0 96) (- 0 104)) (=> (|M2.__default.ValidState#canCall| |call5formal@st'#0@0|) (or (M2.__default.ValidState |call5formal@st'#0@0|) (forall ((|p#0@@55| T@U) ) (!  (=> ($IsBox |p#0@@55| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#0@@55|) (M2.__default.WellFounded |p#0@@55|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@55|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#0@@55|))
))))) (=> (=> (|M2.__default.ValidState#canCall| |call5formal@st'#0@0|) (or (M2.__default.ValidState |call5formal@st'#0@0|) (forall ((|p#0@@56| T@U) ) (!  (=> ($IsBox |p#0@@56| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#0@@56|) (M2.__default.WellFounded |p#0@@56|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@56|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#0@@56|))
)))) (and (=> (= (ControlFlow 0 96) (- 0 103)) (M2.__default.ValidEnv |env#0@@13|)) (=> (M2.__default.ValidEnv |env#0@@13|) (=> (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)) (=> (and (and ($Is DatatypeTypeType |call4formal@expr'#0@0@@0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@0@@0| Tclass.M2.Expression $Heap@14)) (and ($Is DatatypeTypeType |call5formal@st'#0@0@@0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@0@@0| Tclass.M2.State $Heap@14))) (=> (and (and (and (and (and (|$IsA#M2.Tuple| (M2.__default.eval ($LS $LZ) |expr##1_1_0_1_0_0@0| |call5formal@st'#0@0| |env#0@@13|)) (|M2.__default.eval#canCall| |expr##1_1_0_1_0_0@0| |call5formal@st'#0@0| |env#0@@13|)) (=> (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@0|) ($Box DatatypeTypeType |call5formal@st'#0@0@@0|)) (M2.__default.eval ($LS $LZ) |expr##1_1_0_1_0_0@0| |call5formal@st'#0@0| |env#0@@13|)) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@0|) (=> (M2.__default.ValidState |call5formal@st'#0@0@@0|) (and (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (=> (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@0|) (|$IsA#M2.Reason| (M2.Expression.r |call4formal@expr'#0@0@@0|))))))))) (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@0|) ($Box DatatypeTypeType |call5formal@st'#0@0@@0|)) (M2.__default.eval ($LS ($LS $LZ)) |expr##1_1_0_1_0_0@0| |call5formal@st'#0@0| |env#0@@13|))) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@0|) (and (M2.__default.ValidState |call5formal@st'#0@0@@0|) (forall ((|p#1@@7| T@U) ) (!  (=> ($IsBox |p#1@@7| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@0|) |p#1@@7|) (M2.__default.WellFounded |p#1@@7|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4615|
 :pattern ( (M2.__default.WellFounded |p#1@@7|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@0|) |p#1@@7|))
))))) (and (and (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (and (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (and (and (|Set#Subset| (M2.__default.DomSt |call5formal@st'#0@0|) (M2.__default.DomSt |call5formal@st'#0@0@@0|)) (forall ((|p#2@@2| T@U) ) (!  (=> ($IsBox |p#2@@2| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#2@@2|) (= (M2.__default.GetSt |p#2@@2| |call5formal@st'#0@0@@0|) (M2.__default.GetSt |p#2@@2| |call5formal@st'#0@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4618|
 :pattern ( (M2.__default.GetSt |p#2@@2| |call5formal@st'#0@0|))
 :pattern ( (M2.__default.GetSt |p#2@@2| |call5formal@st'#0@0@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#2@@2|))
))) (forall ((|p#3@@1| T@U) ) (!  (=> ($IsBox |p#3@@1| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@1|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@0|) |p#3@@1|)) (= (M2.__default.GetSt |p#3@@1| |call5formal@st'#0@0@@0|) (M2.__default.Oracle |p#3@@1| |call5formal@st'#0@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4619|
 :pattern ( (M2.__default.Oracle |p#3@@1| |call5formal@st'#0@0|))
 :pattern ( (M2.__default.GetSt |p#3@@1| |call5formal@st'#0@0@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@0|) |p#3@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@1|))
))))) (and (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@0|) (|M2.Reason#Equal| (M2.Expression.r |call4formal@expr'#0@0@@0|) |#M2.Reason.rValidity|)) (= $Heap@0 $Heap@14)))) (and (=> (= (ControlFlow 0 96) (- 0 102)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0|))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0|)))) (and (=> (= (ControlFlow 0 96) (- 0 101)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (forall ((|p#0@@57| T@U) ) (!  (=> ($IsBox |p#0@@57| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@57|) (= (M2.__default.GetSt |p#0@@57| |call5formal@st'#0@0|) (M2.__default.GetSt |p#0@@57| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4448|
 :pattern ( (M2.__default.GetSt |p#0@@57| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#0@@57| |call5formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@57|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (forall ((|p#0@@58| T@U) ) (!  (=> ($IsBox |p#0@@58| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@58|) (= (M2.__default.GetSt |p#0@@58| |call5formal@st'#0@0|) (M2.__default.GetSt |p#0@@58| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4448|
 :pattern ( (M2.__default.GetSt |p#0@@58| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#0@@58| |call5formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@58|))
)))) (and (=> (= (ControlFlow 0 96) (- 0 100)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (forall ((|p#1@@8| T@U) ) (!  (=> ($IsBox |p#1@@8| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@8|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#1@@8|)) (= (M2.__default.GetSt |p#1@@8| |call5formal@st'#0@0|) (M2.__default.Oracle |p#1@@8| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4449|
 :pattern ( (M2.__default.Oracle |p#1@@8| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#1@@8| |call5formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#1@@8|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@8|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (forall ((|p#1@@9| T@U) ) (!  (=> ($IsBox |p#1@@9| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@9|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#1@@9|)) (= (M2.__default.GetSt |p#1@@9| |call5formal@st'#0@0|) (M2.__default.Oracle |p#1@@9| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4449|
 :pattern ( (M2.__default.Oracle |p#1@@9| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#1@@9| |call5formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#1@@9|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@9|))
)))) (and (=> (= (ControlFlow 0 96) (- 0 99)) (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (or (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (|Set#Subset| (M2.__default.DomSt |call5formal@st'#0@0|) (M2.__default.DomSt |call5formal@st'#0@0@@0|))))) (=> (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (or (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (|Set#Subset| (M2.__default.DomSt |call5formal@st'#0@0|) (M2.__default.DomSt |call5formal@st'#0@0@@0|)))) (and (=> (= (ControlFlow 0 96) (- 0 98)) (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (or (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (forall ((|p#2@@3| T@U) ) (!  (=> ($IsBox |p#2@@3| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#2@@3|) (= (M2.__default.GetSt |p#2@@3| |call5formal@st'#0@0@@0|) (M2.__default.GetSt |p#2@@3| |call5formal@st'#0@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4452|
 :pattern ( (M2.__default.GetSt |p#2@@3| |call5formal@st'#0@0|))
 :pattern ( (M2.__default.GetSt |p#2@@3| |call5formal@st'#0@0@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#2@@3|))
))))) (=> (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (or (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (forall ((|p#2@@4| T@U) ) (!  (=> ($IsBox |p#2@@4| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#2@@4|) (= (M2.__default.GetSt |p#2@@4| |call5formal@st'#0@0@@0|) (M2.__default.GetSt |p#2@@4| |call5formal@st'#0@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4452|
 :pattern ( (M2.__default.GetSt |p#2@@4| |call5formal@st'#0@0|))
 :pattern ( (M2.__default.GetSt |p#2@@4| |call5formal@st'#0@0@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#2@@4|))
)))) (and (=> (= (ControlFlow 0 96) (- 0 97)) (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (or (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (forall ((|p#3@@2| T@U) ) (!  (=> ($IsBox |p#3@@2| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@2|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@0|) |p#3@@2|)) (= (M2.__default.GetSt |p#3@@2| |call5formal@st'#0@0@@0|) (M2.__default.Oracle |p#3@@2| |call5formal@st'#0@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4453|
 :pattern ( (M2.__default.Oracle |p#3@@2| |call5formal@st'#0@0|))
 :pattern ( (M2.__default.GetSt |p#3@@2| |call5formal@st'#0@0@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@0|) |p#3@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@2|))
))))) (=> (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (or (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@0|) (forall ((|p#3@@3| T@U) ) (!  (=> ($IsBox |p#3@@3| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@3|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@0|) |p#3@@3|)) (= (M2.__default.GetSt |p#3@@3| |call5formal@st'#0@0@@0|) (M2.__default.Oracle |p#3@@3| |call5formal@st'#0@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4453|
 :pattern ( (M2.__default.Oracle |p#3@@3| |call5formal@st'#0@0|))
 :pattern ( (M2.__default.GetSt |p#3@@3| |call5formal@st'#0@0@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@0|) |p#3@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@3|))
)))) (=> (and (and (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15)) (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@0|)) (and (and (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@0|) (and (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@0|) (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0@@0|)) (forall ((|p#4| T@U) ) (!  (=> ($IsBox |p#4| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#4|) (= (M2.__default.GetSt |p#4| |call5formal@st'#0@0@@0|) (M2.__default.GetSt |p#4| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4458|
 :pattern ( (M2.__default.GetSt |p#4| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#4| |call5formal@st'#0@0@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#4|))
))) (forall ((|p#5@@1| T@U) ) (!  (=> ($IsBox |p#5@@1| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#5@@1|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@0|) |p#5@@1|)) (= (M2.__default.GetSt |p#5@@1| |call5formal@st'#0@0@@0|) (M2.__default.Oracle |p#5@@1| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4459|
 :pattern ( (M2.__default.Oracle |p#5@@1| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#5@@1| |call5formal@st'#0@0@@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@0|) |p#5@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#5@@1|))
))))) (and (= $Heap@14 $Heap@15) (= (ControlFlow 0 96) 2)))) GeneratedUnifiedExit_correct)))))))))))))))))))))))
(let ((anon11_correct  (=> (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0|) (|$IsA#M2.Literal| (M2.Expression.lit |call4formal@expr'#0@0|))) (and (=> (= (ControlFlow 0 106) 96) anon55_Then_correct) (=> (= (ControlFlow 0 106) 105) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (not (M2.Expression.exprLiteral_q |call4formal@expr'#0@0|)) (= (ControlFlow 0 108) 106)) anon11_correct)))
(let ((anon54_Then_correct  (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0|) (=> (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0|) (= (ControlFlow 0 107) 106)) anon11_correct))))
(let ((anon53_Else_correct  (=> (not (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0|) (|M2.Literal#Equal| (M2.Expression.lit |call4formal@expr'#0@0|) |#M2.Literal.litTrue|))) (and (=> (= (ControlFlow 0 109) 107) anon54_Then_correct) (=> (= (ControlFlow 0 109) 108) anon54_Else_correct)))))
(let ((anon53_Then_correct  (=> (and (and (and (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0|) (|M2.Literal#Equal| (M2.Expression.lit |call4formal@expr'#0@0|) |#M2.Literal.litTrue|)) (M2.Expression.exprIf_q |expr#0@@7|)) (and (= |expr##1_1_0_0_0@0| (M2.Expression.ifTrue |expr#0@@7|)) (< (DtRank |expr##1_1_0_0_0@0|) (DtRank |expr#0@@7|)))) (and (and ($Is DatatypeTypeType |call4formal@expr'#0@@0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@@0| Tclass.M2.Expression $Heap@@26)) (and ($Is DatatypeTypeType |call5formal@st'#0@@0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@@0| Tclass.M2.State $Heap@@26)))) (and (=> (= (ControlFlow 0 87) (- 0 95)) (=> (|M2.__default.ValidState#canCall| |call5formal@st'#0@0|) (or (M2.__default.ValidState |call5formal@st'#0@0|) (forall ((|p#0@@59| T@U) ) (!  (=> ($IsBox |p#0@@59| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#0@@59|) (M2.__default.WellFounded |p#0@@59|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@59|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#0@@59|))
))))) (=> (=> (|M2.__default.ValidState#canCall| |call5formal@st'#0@0|) (or (M2.__default.ValidState |call5formal@st'#0@0|) (forall ((|p#0@@60| T@U) ) (!  (=> ($IsBox |p#0@@60| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#0@@60|) (M2.__default.WellFounded |p#0@@60|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@60|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#0@@60|))
)))) (and (=> (= (ControlFlow 0 87) (- 0 94)) (M2.__default.ValidEnv |env#0@@13|)) (=> (M2.__default.ValidEnv |env#0@@13|) (=> (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (=> (and (and ($Is DatatypeTypeType |call4formal@expr'#0@0@@1| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@0@@1| Tclass.M2.Expression $Heap@12)) (and ($Is DatatypeTypeType |call5formal@st'#0@0@@1| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@0@@1| Tclass.M2.State $Heap@12))) (=> (and (and (and (and (and (|$IsA#M2.Tuple| (M2.__default.eval ($LS $LZ) |expr##1_1_0_0_0@0| |call5formal@st'#0@0| |env#0@@13|)) (|M2.__default.eval#canCall| |expr##1_1_0_0_0@0| |call5formal@st'#0@0| |env#0@@13|)) (=> (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@1|) ($Box DatatypeTypeType |call5formal@st'#0@0@@1|)) (M2.__default.eval ($LS $LZ) |expr##1_1_0_0_0@0| |call5formal@st'#0@0| |env#0@@13|)) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@1|) (=> (M2.__default.ValidState |call5formal@st'#0@0@@1|) (and (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (=> (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@1|) (|$IsA#M2.Reason| (M2.Expression.r |call4formal@expr'#0@0@@1|))))))))) (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@1|) ($Box DatatypeTypeType |call5formal@st'#0@0@@1|)) (M2.__default.eval ($LS ($LS $LZ)) |expr##1_1_0_0_0@0| |call5formal@st'#0@0| |env#0@@13|))) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@1|) (and (M2.__default.ValidState |call5formal@st'#0@0@@1|) (forall ((|p#1@@10| T@U) ) (!  (=> ($IsBox |p#1@@10| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@1|) |p#1@@10|) (M2.__default.WellFounded |p#1@@10|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4615|
 :pattern ( (M2.__default.WellFounded |p#1@@10|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@1|) |p#1@@10|))
))))) (and (and (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (and (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (and (and (|Set#Subset| (M2.__default.DomSt |call5formal@st'#0@0|) (M2.__default.DomSt |call5formal@st'#0@0@@1|)) (forall ((|p#2@@5| T@U) ) (!  (=> ($IsBox |p#2@@5| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#2@@5|) (= (M2.__default.GetSt |p#2@@5| |call5formal@st'#0@0@@1|) (M2.__default.GetSt |p#2@@5| |call5formal@st'#0@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4618|
 :pattern ( (M2.__default.GetSt |p#2@@5| |call5formal@st'#0@0|))
 :pattern ( (M2.__default.GetSt |p#2@@5| |call5formal@st'#0@0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#2@@5|))
))) (forall ((|p#3@@4| T@U) ) (!  (=> ($IsBox |p#3@@4| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@4|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@1|) |p#3@@4|)) (= (M2.__default.GetSt |p#3@@4| |call5formal@st'#0@0@@1|) (M2.__default.Oracle |p#3@@4| |call5formal@st'#0@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4619|
 :pattern ( (M2.__default.Oracle |p#3@@4| |call5formal@st'#0@0|))
 :pattern ( (M2.__default.GetSt |p#3@@4| |call5formal@st'#0@0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@1|) |p#3@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@4|))
))))) (and (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@1|) (|M2.Reason#Equal| (M2.Expression.r |call4formal@expr'#0@0@@1|) |#M2.Reason.rValidity|)) (= $Heap@0 $Heap@12)))) (and (=> (= (ControlFlow 0 87) (- 0 93)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0|))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0|)))) (and (=> (= (ControlFlow 0 87) (- 0 92)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (forall ((|p#0@@61| T@U) ) (!  (=> ($IsBox |p#0@@61| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@61|) (= (M2.__default.GetSt |p#0@@61| |call5formal@st'#0@0|) (M2.__default.GetSt |p#0@@61| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4448|
 :pattern ( (M2.__default.GetSt |p#0@@61| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#0@@61| |call5formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@61|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (forall ((|p#0@@62| T@U) ) (!  (=> ($IsBox |p#0@@62| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@62|) (= (M2.__default.GetSt |p#0@@62| |call5formal@st'#0@0|) (M2.__default.GetSt |p#0@@62| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4448|
 :pattern ( (M2.__default.GetSt |p#0@@62| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#0@@62| |call5formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@62|))
)))) (and (=> (= (ControlFlow 0 87) (- 0 91)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (forall ((|p#1@@11| T@U) ) (!  (=> ($IsBox |p#1@@11| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@11|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#1@@11|)) (= (M2.__default.GetSt |p#1@@11| |call5formal@st'#0@0|) (M2.__default.Oracle |p#1@@11| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4449|
 :pattern ( (M2.__default.Oracle |p#1@@11| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#1@@11| |call5formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#1@@11|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@11|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (forall ((|p#1@@12| T@U) ) (!  (=> ($IsBox |p#1@@12| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@12|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#1@@12|)) (= (M2.__default.GetSt |p#1@@12| |call5formal@st'#0@0|) (M2.__default.Oracle |p#1@@12| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4449|
 :pattern ( (M2.__default.Oracle |p#1@@12| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#1@@12| |call5formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#1@@12|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@12|))
)))) (and (=> (= (ControlFlow 0 87) (- 0 90)) (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (or (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (|Set#Subset| (M2.__default.DomSt |call5formal@st'#0@0|) (M2.__default.DomSt |call5formal@st'#0@0@@1|))))) (=> (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (or (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (|Set#Subset| (M2.__default.DomSt |call5formal@st'#0@0|) (M2.__default.DomSt |call5formal@st'#0@0@@1|)))) (and (=> (= (ControlFlow 0 87) (- 0 89)) (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (or (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (forall ((|p#2@@6| T@U) ) (!  (=> ($IsBox |p#2@@6| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#2@@6|) (= (M2.__default.GetSt |p#2@@6| |call5formal@st'#0@0@@1|) (M2.__default.GetSt |p#2@@6| |call5formal@st'#0@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4452|
 :pattern ( (M2.__default.GetSt |p#2@@6| |call5formal@st'#0@0|))
 :pattern ( (M2.__default.GetSt |p#2@@6| |call5formal@st'#0@0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#2@@6|))
))))) (=> (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (or (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (forall ((|p#2@@7| T@U) ) (!  (=> ($IsBox |p#2@@7| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#2@@7|) (= (M2.__default.GetSt |p#2@@7| |call5formal@st'#0@0@@1|) (M2.__default.GetSt |p#2@@7| |call5formal@st'#0@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4452|
 :pattern ( (M2.__default.GetSt |p#2@@7| |call5formal@st'#0@0|))
 :pattern ( (M2.__default.GetSt |p#2@@7| |call5formal@st'#0@0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#2@@7|))
)))) (and (=> (= (ControlFlow 0 87) (- 0 88)) (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (or (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (forall ((|p#3@@5| T@U) ) (!  (=> ($IsBox |p#3@@5| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@5|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@1|) |p#3@@5|)) (= (M2.__default.GetSt |p#3@@5| |call5formal@st'#0@0@@1|) (M2.__default.Oracle |p#3@@5| |call5formal@st'#0@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4453|
 :pattern ( (M2.__default.Oracle |p#3@@5| |call5formal@st'#0@0|))
 :pattern ( (M2.__default.GetSt |p#3@@5| |call5formal@st'#0@0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@1|) |p#3@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@5|))
))))) (=> (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (or (M2.__default.Extends |call5formal@st'#0@0| |call5formal@st'#0@0@@1|) (forall ((|p#3@@6| T@U) ) (!  (=> ($IsBox |p#3@@6| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@6|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@1|) |p#3@@6|)) (= (M2.__default.GetSt |p#3@@6| |call5formal@st'#0@0@@1|) (M2.__default.Oracle |p#3@@6| |call5formal@st'#0@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4453|
 :pattern ( (M2.__default.Oracle |p#3@@6| |call5formal@st'#0@0|))
 :pattern ( (M2.__default.GetSt |p#3@@6| |call5formal@st'#0@0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@1|) |p#3@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@6|))
)))) (=> (and (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@1|)) (and (and (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@1|) (and (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@1|) (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0@@1|)) (forall ((|p#4@@0| T@U) ) (!  (=> ($IsBox |p#4@@0| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#4@@0|) (= (M2.__default.GetSt |p#4@@0| |call5formal@st'#0@0@@1|) (M2.__default.GetSt |p#4@@0| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4458|
 :pattern ( (M2.__default.GetSt |p#4@@0| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#4@@0| |call5formal@st'#0@0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#4@@0|))
))) (forall ((|p#5@@2| T@U) ) (!  (=> ($IsBox |p#5@@2| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#5@@2|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@1|) |p#5@@2|)) (= (M2.__default.GetSt |p#5@@2| |call5formal@st'#0@0@@1|) (M2.__default.Oracle |p#5@@2| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4459|
 :pattern ( (M2.__default.Oracle |p#5@@2| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#5@@2| |call5formal@st'#0@0@@1|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@1|) |p#5@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#5@@2|))
))))) (and (= $Heap@12 $Heap@13) (= (ControlFlow 0 87) 2)))) GeneratedUnifiedExit_correct)))))))))))))))))))))))
(let ((anon7_correct  (=> (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0|) (|$IsA#M2.Literal| (M2.Expression.lit |call4formal@expr'#0@0|))) (and (=> (= (ControlFlow 0 110) 87) anon53_Then_correct) (=> (= (ControlFlow 0 110) 109) anon53_Else_correct)))))
(let ((anon52_Else_correct  (=> (and (not (M2.Expression.exprLiteral_q |call4formal@expr'#0@0|)) (= (ControlFlow 0 112) 110)) anon7_correct)))
(let ((anon52_Then_correct  (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0|) (=> (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0|) (= (ControlFlow 0 111) 110)) anon7_correct))))
(let ((anon51_Then_correct  (=> (and (and (and (M2.Expression.exprIf_q |expr#0@@7|) (M2.Expression.exprIf_q |expr#0@@7|)) (and (= |expr##1_1_0_0@0| (M2.Expression.cond |expr#0@@7|)) (< (DtRank |expr##1_1_0_0@0|) (DtRank |expr#0@@7|)))) (and (and ($Is DatatypeTypeType |call4formal@expr'#0@@1| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@@1| Tclass.M2.Expression $Heap@@26)) (and ($Is DatatypeTypeType |call5formal@st'#0@@1| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@@1| Tclass.M2.State $Heap@@26)))) (and (=> (= (ControlFlow 0 113) (- 0 115)) (=> (|M2.__default.ValidState#canCall| |st#0@@67|) (or (M2.__default.ValidState |st#0@@67|) (forall ((|p#0@@63| T@U) ) (!  (=> ($IsBox |p#0@@63| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@63|) (M2.__default.WellFounded |p#0@@63|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@63|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@63|))
))))) (=> (=> (|M2.__default.ValidState#canCall| |st#0@@67|) (or (M2.__default.ValidState |st#0@@67|) (forall ((|p#0@@64| T@U) ) (!  (=> ($IsBox |p#0@@64| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@64|) (M2.__default.WellFounded |p#0@@64|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@64|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@64|))
)))) (and (=> (= (ControlFlow 0 113) (- 0 114)) (M2.__default.ValidEnv |env#0@@13|)) (=> (M2.__default.ValidEnv |env#0@@13|) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and ($Is DatatypeTypeType |call4formal@expr'#0@0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@0| Tclass.M2.Expression $Heap@0)) (and ($Is DatatypeTypeType |call5formal@st'#0@0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@0| Tclass.M2.State $Heap@0))) (=> (and (and (and (and (and (|$IsA#M2.Tuple| (M2.__default.eval ($LS $LZ) |expr##1_1_0_0@0| |st#0@@67| |env#0@@13|)) (|M2.__default.eval#canCall| |expr##1_1_0_0@0| |st#0@@67| |env#0@@13|)) (=> (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0|) ($Box DatatypeTypeType |call5formal@st'#0@0|)) (M2.__default.eval ($LS $LZ) |expr##1_1_0_0@0| |st#0@@67| |env#0@@13|)) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0|) (=> (M2.__default.ValidState |call5formal@st'#0@0|) (and (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (=> (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (=> (M2.Expression.exprError_q |call4formal@expr'#0@0|) (|$IsA#M2.Reason| (M2.Expression.r |call4formal@expr'#0@0|))))))))) (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0|) ($Box DatatypeTypeType |call5formal@st'#0@0|)) (M2.__default.eval ($LS ($LS $LZ)) |expr##1_1_0_0@0| |st#0@@67| |env#0@@13|))) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0|) (and (M2.__default.ValidState |call5formal@st'#0@0|) (forall ((|p#1@@13| T@U) ) (!  (=> ($IsBox |p#1@@13| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#1@@13|) (M2.__default.WellFounded |p#1@@13|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4615|
 :pattern ( (M2.__default.WellFounded |p#1@@13|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#1@@13|))
))))) (and (and (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0|) (and (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0|) (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0|)) (forall ((|p#2@@8| T@U) ) (!  (=> ($IsBox |p#2@@8| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#2@@8|) (= (M2.__default.GetSt |p#2@@8| |call5formal@st'#0@0|) (M2.__default.GetSt |p#2@@8| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4618|
 :pattern ( (M2.__default.GetSt |p#2@@8| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#2@@8| |call5formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#2@@8|))
))) (forall ((|p#3@@7| T@U) ) (!  (=> ($IsBox |p#3@@7| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#3@@7|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@7|)) (= (M2.__default.GetSt |p#3@@7| |call5formal@st'#0@0|) (M2.__default.Oracle |p#3@@7| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4619|
 :pattern ( (M2.__default.Oracle |p#3@@7| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#3@@7| |call5formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0|) |p#3@@7|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#3@@7|))
))))) (and (=> (M2.Expression.exprError_q |call4formal@expr'#0@0|) (|M2.Reason#Equal| (M2.Expression.r |call4formal@expr'#0@0|) |#M2.Reason.rValidity|)) (= $Heap@@26 $Heap@0)))) (and (=> (= (ControlFlow 0 113) 111) anon52_Then_correct) (=> (= (ControlFlow 0 113) 112) anon52_Else_correct))))))))))))
(let ((anon60_Else_correct  (=> (and (not (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@2|) (|M2.Literal#Equal| (M2.Expression.lit |call4formal@expr'#0@0@@2|) |#M2.Literal.litFalse|))) (= (ControlFlow 0 75) 2)) GeneratedUnifiedExit_correct)))
(let ((anon60_Then_correct  (=> (and (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@2|) (|M2.Literal#Equal| (M2.Expression.lit |call4formal@expr'#0@0@@2|) |#M2.Literal.litFalse|)) (= (ControlFlow 0 74) 2)) GeneratedUnifiedExit_correct)))
(let ((anon21_correct  (=> (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@2|) (|$IsA#M2.Literal| (M2.Expression.lit |call4formal@expr'#0@0@@2|))) (and (=> (= (ControlFlow 0 76) 74) anon60_Then_correct) (=> (= (ControlFlow 0 76) 75) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (and (not (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@2|)) (= (ControlFlow 0 78) 76)) anon21_correct)))
(let ((anon59_Then_correct  (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@2|) (=> (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@2|) (= (ControlFlow 0 77) 76)) anon21_correct))))
(let ((anon58_Else_correct  (=> (not (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@2|) (|M2.Literal#Equal| (M2.Expression.lit |call4formal@expr'#0@0@@2|) |#M2.Literal.litTrue|))) (and (=> (= (ControlFlow 0 79) 77) anon59_Then_correct) (=> (= (ControlFlow 0 79) 78) anon59_Else_correct)))))
(let ((anon58_Then_correct  (=> (and (and (and (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@2|) (|M2.Literal#Equal| (M2.Expression.lit |call4formal@expr'#0@0@@2|) |#M2.Literal.litTrue|)) (M2.Expression.exprAnd_q |expr#0@@7|)) (and (= |expr##1_1_1_0_0_0@0| (M2.Expression.conj1 |expr#0@@7|)) (< (DtRank |expr##1_1_1_0_0_0@0|) (DtRank |expr#0@@7|)))) (and (and ($Is DatatypeTypeType |call4formal@expr'#0@@2| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@@2| Tclass.M2.Expression $Heap@@26)) (and ($Is DatatypeTypeType |call5formal@st'#0@@2| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@@2| Tclass.M2.State $Heap@@26)))) (and (=> (= (ControlFlow 0 65) (- 0 73)) (=> (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@2|) (or (M2.__default.ValidState |call5formal@st'#0@0@@2|) (forall ((|p#0@@65| T@U) ) (!  (=> ($IsBox |p#0@@65| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#0@@65|) (M2.__default.WellFounded |p#0@@65|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@65|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#0@@65|))
))))) (=> (=> (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@2|) (or (M2.__default.ValidState |call5formal@st'#0@0@@2|) (forall ((|p#0@@66| T@U) ) (!  (=> ($IsBox |p#0@@66| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#0@@66|) (M2.__default.WellFounded |p#0@@66|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@66|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#0@@66|))
)))) (and (=> (= (ControlFlow 0 65) (- 0 72)) (M2.__default.ValidEnv |env#0@@13|)) (=> (M2.__default.ValidEnv |env#0@@13|) (=> (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (=> (and (and ($Is DatatypeTypeType |call4formal@expr'#0@0@@3| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@0@@3| Tclass.M2.Expression $Heap@10)) (and ($Is DatatypeTypeType |call5formal@st'#0@0@@3| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@0@@3| Tclass.M2.State $Heap@10))) (=> (and (and (and (and (and (|$IsA#M2.Tuple| (M2.__default.eval ($LS $LZ) |expr##1_1_1_0_0_0@0| |call5formal@st'#0@0@@2| |env#0@@13|)) (|M2.__default.eval#canCall| |expr##1_1_1_0_0_0@0| |call5formal@st'#0@0@@2| |env#0@@13|)) (=> (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@3|) ($Box DatatypeTypeType |call5formal@st'#0@0@@3|)) (M2.__default.eval ($LS $LZ) |expr##1_1_1_0_0_0@0| |call5formal@st'#0@0@@2| |env#0@@13|)) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@3|) (=> (M2.__default.ValidState |call5formal@st'#0@0@@3|) (and (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (=> (M2.__default.Extends |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@3|) (|$IsA#M2.Reason| (M2.Expression.r |call4formal@expr'#0@0@@3|))))))))) (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@3|) ($Box DatatypeTypeType |call5formal@st'#0@0@@3|)) (M2.__default.eval ($LS ($LS $LZ)) |expr##1_1_1_0_0_0@0| |call5formal@st'#0@0@@2| |env#0@@13|))) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@3|) (and (M2.__default.ValidState |call5formal@st'#0@0@@3|) (forall ((|p#1@@14| T@U) ) (!  (=> ($IsBox |p#1@@14| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@3|) |p#1@@14|) (M2.__default.WellFounded |p#1@@14|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4615|
 :pattern ( (M2.__default.WellFounded |p#1@@14|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@3|) |p#1@@14|))
))))) (and (and (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (and (M2.__default.Extends |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (and (and (|Set#Subset| (M2.__default.DomSt |call5formal@st'#0@0@@2|) (M2.__default.DomSt |call5formal@st'#0@0@@3|)) (forall ((|p#2@@9| T@U) ) (!  (=> ($IsBox |p#2@@9| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#2@@9|) (= (M2.__default.GetSt |p#2@@9| |call5formal@st'#0@0@@3|) (M2.__default.GetSt |p#2@@9| |call5formal@st'#0@0@@2|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4618|
 :pattern ( (M2.__default.GetSt |p#2@@9| |call5formal@st'#0@0@@2|))
 :pattern ( (M2.__default.GetSt |p#2@@9| |call5formal@st'#0@0@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#2@@9|))
))) (forall ((|p#3@@8| T@U) ) (!  (=> ($IsBox |p#3@@8| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#3@@8|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@3|) |p#3@@8|)) (= (M2.__default.GetSt |p#3@@8| |call5formal@st'#0@0@@3|) (M2.__default.Oracle |p#3@@8| |call5formal@st'#0@0@@2|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4619|
 :pattern ( (M2.__default.Oracle |p#3@@8| |call5formal@st'#0@0@@2|))
 :pattern ( (M2.__default.GetSt |p#3@@8| |call5formal@st'#0@0@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@3|) |p#3@@8|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#3@@8|))
))))) (and (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@3|) (|M2.Reason#Equal| (M2.Expression.r |call4formal@expr'#0@0@@3|) |#M2.Reason.rValidity|)) (= $Heap@1 $Heap@10)))) (and (=> (= (ControlFlow 0 65) (- 0 71)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@2|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@2|) (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0@@2|))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@2|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@2|) (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0@@2|)))) (and (=> (= (ControlFlow 0 65) (- 0 70)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@2|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@2|) (forall ((|p#0@@67| T@U) ) (!  (=> ($IsBox |p#0@@67| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@67|) (= (M2.__default.GetSt |p#0@@67| |call5formal@st'#0@0@@2|) (M2.__default.GetSt |p#0@@67| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4448|
 :pattern ( (M2.__default.GetSt |p#0@@67| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#0@@67| |call5formal@st'#0@0@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@67|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@2|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@2|) (forall ((|p#0@@68| T@U) ) (!  (=> ($IsBox |p#0@@68| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@68|) (= (M2.__default.GetSt |p#0@@68| |call5formal@st'#0@0@@2|) (M2.__default.GetSt |p#0@@68| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4448|
 :pattern ( (M2.__default.GetSt |p#0@@68| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#0@@68| |call5formal@st'#0@0@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@68|))
)))) (and (=> (= (ControlFlow 0 65) (- 0 69)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@2|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@2|) (forall ((|p#1@@15| T@U) ) (!  (=> ($IsBox |p#1@@15| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@15|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#1@@15|)) (= (M2.__default.GetSt |p#1@@15| |call5formal@st'#0@0@@2|) (M2.__default.Oracle |p#1@@15| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4449|
 :pattern ( (M2.__default.Oracle |p#1@@15| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#1@@15| |call5formal@st'#0@0@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#1@@15|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@15|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@2|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@2|) (forall ((|p#1@@16| T@U) ) (!  (=> ($IsBox |p#1@@16| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@16|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#1@@16|)) (= (M2.__default.GetSt |p#1@@16| |call5formal@st'#0@0@@2|) (M2.__default.Oracle |p#1@@16| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4449|
 :pattern ( (M2.__default.Oracle |p#1@@16| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#1@@16| |call5formal@st'#0@0@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#1@@16|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@16|))
)))) (and (=> (= (ControlFlow 0 65) (- 0 68)) (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (or (M2.__default.Extends |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (|Set#Subset| (M2.__default.DomSt |call5formal@st'#0@0@@2|) (M2.__default.DomSt |call5formal@st'#0@0@@3|))))) (=> (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (or (M2.__default.Extends |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (|Set#Subset| (M2.__default.DomSt |call5formal@st'#0@0@@2|) (M2.__default.DomSt |call5formal@st'#0@0@@3|)))) (and (=> (= (ControlFlow 0 65) (- 0 67)) (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (or (M2.__default.Extends |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (forall ((|p#2@@10| T@U) ) (!  (=> ($IsBox |p#2@@10| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#2@@10|) (= (M2.__default.GetSt |p#2@@10| |call5formal@st'#0@0@@3|) (M2.__default.GetSt |p#2@@10| |call5formal@st'#0@0@@2|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4452|
 :pattern ( (M2.__default.GetSt |p#2@@10| |call5formal@st'#0@0@@2|))
 :pattern ( (M2.__default.GetSt |p#2@@10| |call5formal@st'#0@0@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#2@@10|))
))))) (=> (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (or (M2.__default.Extends |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (forall ((|p#2@@11| T@U) ) (!  (=> ($IsBox |p#2@@11| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#2@@11|) (= (M2.__default.GetSt |p#2@@11| |call5formal@st'#0@0@@3|) (M2.__default.GetSt |p#2@@11| |call5formal@st'#0@0@@2|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4452|
 :pattern ( (M2.__default.GetSt |p#2@@11| |call5formal@st'#0@0@@2|))
 :pattern ( (M2.__default.GetSt |p#2@@11| |call5formal@st'#0@0@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#2@@11|))
)))) (and (=> (= (ControlFlow 0 65) (- 0 66)) (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (or (M2.__default.Extends |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (forall ((|p#3@@9| T@U) ) (!  (=> ($IsBox |p#3@@9| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#3@@9|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@3|) |p#3@@9|)) (= (M2.__default.GetSt |p#3@@9| |call5formal@st'#0@0@@3|) (M2.__default.Oracle |p#3@@9| |call5formal@st'#0@0@@2|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4453|
 :pattern ( (M2.__default.Oracle |p#3@@9| |call5formal@st'#0@0@@2|))
 :pattern ( (M2.__default.GetSt |p#3@@9| |call5formal@st'#0@0@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@3|) |p#3@@9|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#3@@9|))
))))) (=> (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (or (M2.__default.Extends |call5formal@st'#0@0@@2| |call5formal@st'#0@0@@3|) (forall ((|p#3@@10| T@U) ) (!  (=> ($IsBox |p#3@@10| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#3@@10|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@3|) |p#3@@10|)) (= (M2.__default.GetSt |p#3@@10| |call5formal@st'#0@0@@3|) (M2.__default.Oracle |p#3@@10| |call5formal@st'#0@0@@2|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4453|
 :pattern ( (M2.__default.Oracle |p#3@@10| |call5formal@st'#0@0@@2|))
 :pattern ( (M2.__default.GetSt |p#3@@10| |call5formal@st'#0@0@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@3|) |p#3@@10|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#3@@10|))
)))) (=> (and (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@3|)) (and (and (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@3|) (and (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@3|) (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0@@3|)) (forall ((|p#4@@1| T@U) ) (!  (=> ($IsBox |p#4@@1| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#4@@1|) (= (M2.__default.GetSt |p#4@@1| |call5formal@st'#0@0@@3|) (M2.__default.GetSt |p#4@@1| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4458|
 :pattern ( (M2.__default.GetSt |p#4@@1| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#4@@1| |call5formal@st'#0@0@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#4@@1|))
))) (forall ((|p#5@@3| T@U) ) (!  (=> ($IsBox |p#5@@3| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#5@@3|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@3|) |p#5@@3|)) (= (M2.__default.GetSt |p#5@@3| |call5formal@st'#0@0@@3|) (M2.__default.Oracle |p#5@@3| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4459|
 :pattern ( (M2.__default.Oracle |p#5@@3| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#5@@3| |call5formal@st'#0@0@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@3|) |p#5@@3|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#5@@3|))
))))) (and (= $Heap@10 $Heap@11) (= (ControlFlow 0 65) 2)))) GeneratedUnifiedExit_correct)))))))))))))))))))))))
(let ((anon17_correct  (=> (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@2|) (|$IsA#M2.Literal| (M2.Expression.lit |call4formal@expr'#0@0@@2|))) (and (=> (= (ControlFlow 0 80) 65) anon58_Then_correct) (=> (= (ControlFlow 0 80) 79) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (not (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@2|)) (= (ControlFlow 0 82) 80)) anon17_correct)))
(let ((anon57_Then_correct  (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@2|) (=> (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@2|) (= (ControlFlow 0 81) 80)) anon17_correct))))
(let ((anon56_Then_correct  (=> (and (and (and (M2.Expression.exprAnd_q |expr#0@@7|) (M2.Expression.exprAnd_q |expr#0@@7|)) (and (= |expr##1_1_1_0_0@0| (M2.Expression.conj0 |expr#0@@7|)) (< (DtRank |expr##1_1_1_0_0@0|) (DtRank |expr#0@@7|)))) (and (and ($Is DatatypeTypeType |call4formal@expr'#0@@3| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@@3| Tclass.M2.Expression $Heap@@26)) (and ($Is DatatypeTypeType |call5formal@st'#0@@3| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@@3| Tclass.M2.State $Heap@@26)))) (and (=> (= (ControlFlow 0 83) (- 0 85)) (=> (|M2.__default.ValidState#canCall| |st#0@@67|) (or (M2.__default.ValidState |st#0@@67|) (forall ((|p#0@@69| T@U) ) (!  (=> ($IsBox |p#0@@69| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@69|) (M2.__default.WellFounded |p#0@@69|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@69|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@69|))
))))) (=> (=> (|M2.__default.ValidState#canCall| |st#0@@67|) (or (M2.__default.ValidState |st#0@@67|) (forall ((|p#0@@70| T@U) ) (!  (=> ($IsBox |p#0@@70| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@70|) (M2.__default.WellFounded |p#0@@70|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@70|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@70|))
)))) (and (=> (= (ControlFlow 0 83) (- 0 84)) (M2.__default.ValidEnv |env#0@@13|)) (=> (M2.__default.ValidEnv |env#0@@13|) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and ($Is DatatypeTypeType |call4formal@expr'#0@0@@2| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@0@@2| Tclass.M2.Expression $Heap@1)) (and ($Is DatatypeTypeType |call5formal@st'#0@0@@2| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@0@@2| Tclass.M2.State $Heap@1))) (=> (and (and (and (and (and (|$IsA#M2.Tuple| (M2.__default.eval ($LS $LZ) |expr##1_1_1_0_0@0| |st#0@@67| |env#0@@13|)) (|M2.__default.eval#canCall| |expr##1_1_1_0_0@0| |st#0@@67| |env#0@@13|)) (=> (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@2|) ($Box DatatypeTypeType |call5formal@st'#0@0@@2|)) (M2.__default.eval ($LS $LZ) |expr##1_1_1_0_0@0| |st#0@@67| |env#0@@13|)) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@2|) (=> (M2.__default.ValidState |call5formal@st'#0@0@@2|) (and (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@2|) (=> (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@2|) (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@2|) (|$IsA#M2.Reason| (M2.Expression.r |call4formal@expr'#0@0@@2|))))))))) (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@2|) ($Box DatatypeTypeType |call5formal@st'#0@0@@2|)) (M2.__default.eval ($LS ($LS $LZ)) |expr##1_1_1_0_0@0| |st#0@@67| |env#0@@13|))) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@2|) (and (M2.__default.ValidState |call5formal@st'#0@0@@2|) (forall ((|p#1@@17| T@U) ) (!  (=> ($IsBox |p#1@@17| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#1@@17|) (M2.__default.WellFounded |p#1@@17|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4615|
 :pattern ( (M2.__default.WellFounded |p#1@@17|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#1@@17|))
))))) (and (and (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@2|) (and (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@2|) (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0@@2|)) (forall ((|p#2@@12| T@U) ) (!  (=> ($IsBox |p#2@@12| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#2@@12|) (= (M2.__default.GetSt |p#2@@12| |call5formal@st'#0@0@@2|) (M2.__default.GetSt |p#2@@12| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4618|
 :pattern ( (M2.__default.GetSt |p#2@@12| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#2@@12| |call5formal@st'#0@0@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#2@@12|))
))) (forall ((|p#3@@11| T@U) ) (!  (=> ($IsBox |p#3@@11| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#3@@11|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#3@@11|)) (= (M2.__default.GetSt |p#3@@11| |call5formal@st'#0@0@@2|) (M2.__default.Oracle |p#3@@11| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4619|
 :pattern ( (M2.__default.Oracle |p#3@@11| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#3@@11| |call5formal@st'#0@0@@2|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@2|) |p#3@@11|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#3@@11|))
))))) (and (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@2|) (|M2.Reason#Equal| (M2.Expression.r |call4formal@expr'#0@0@@2|) |#M2.Reason.rValidity|)) (= $Heap@@26 $Heap@1)))) (and (=> (= (ControlFlow 0 83) 81) anon57_Then_correct) (=> (= (ControlFlow 0 83) 82) anon57_Else_correct))))))))))))
(let ((anon65_Else_correct  (=> (and (not (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@4|) (|M2.Literal#Equal| (M2.Expression.lit |call4formal@expr'#0@0@@4|) |#M2.Literal.litFalse|))) (= (ControlFlow 0 53) 2)) GeneratedUnifiedExit_correct)))
(let ((anon65_Then_correct  (=> (and (and (and (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@4|) (|M2.Literal#Equal| (M2.Expression.lit |call4formal@expr'#0@0@@4|) |#M2.Literal.litFalse|)) (M2.Expression.exprOr_q |expr#0@@7|)) (and (= |expr##1_1_1_1_0_1_0_0@0| (M2.Expression.disj1 |expr#0@@7|)) (< (DtRank |expr##1_1_1_1_0_1_0_0@0|) (DtRank |expr#0@@7|)))) (and (and ($Is DatatypeTypeType |call4formal@expr'#0@@4| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@@4| Tclass.M2.Expression $Heap@@26)) (and ($Is DatatypeTypeType |call5formal@st'#0@@4| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@@4| Tclass.M2.State $Heap@@26)))) (and (=> (= (ControlFlow 0 44) (- 0 52)) (=> (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@4|) (or (M2.__default.ValidState |call5formal@st'#0@0@@4|) (forall ((|p#0@@71| T@U) ) (!  (=> ($IsBox |p#0@@71| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#0@@71|) (M2.__default.WellFounded |p#0@@71|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@71|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#0@@71|))
))))) (=> (=> (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@4|) (or (M2.__default.ValidState |call5formal@st'#0@0@@4|) (forall ((|p#0@@72| T@U) ) (!  (=> ($IsBox |p#0@@72| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#0@@72|) (M2.__default.WellFounded |p#0@@72|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@72|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#0@@72|))
)))) (and (=> (= (ControlFlow 0 44) (- 0 51)) (M2.__default.ValidEnv |env#0@@13|)) (=> (M2.__default.ValidEnv |env#0@@13|) (=> (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (=> (and (and ($Is DatatypeTypeType |call4formal@expr'#0@0@@5| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@0@@5| Tclass.M2.Expression $Heap@8)) (and ($Is DatatypeTypeType |call5formal@st'#0@0@@5| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@0@@5| Tclass.M2.State $Heap@8))) (=> (and (and (and (and (and (|$IsA#M2.Tuple| (M2.__default.eval ($LS $LZ) |expr##1_1_1_1_0_1_0_0@0| |call5formal@st'#0@0@@4| |env#0@@13|)) (|M2.__default.eval#canCall| |expr##1_1_1_1_0_1_0_0@0| |call5formal@st'#0@0@@4| |env#0@@13|)) (=> (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@5|) ($Box DatatypeTypeType |call5formal@st'#0@0@@5|)) (M2.__default.eval ($LS $LZ) |expr##1_1_1_1_0_1_0_0@0| |call5formal@st'#0@0@@4| |env#0@@13|)) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@5|) (=> (M2.__default.ValidState |call5formal@st'#0@0@@5|) (and (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (=> (M2.__default.Extends |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@5|) (|$IsA#M2.Reason| (M2.Expression.r |call4formal@expr'#0@0@@5|))))))))) (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@5|) ($Box DatatypeTypeType |call5formal@st'#0@0@@5|)) (M2.__default.eval ($LS ($LS $LZ)) |expr##1_1_1_1_0_1_0_0@0| |call5formal@st'#0@0@@4| |env#0@@13|))) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@5|) (and (M2.__default.ValidState |call5formal@st'#0@0@@5|) (forall ((|p#1@@18| T@U) ) (!  (=> ($IsBox |p#1@@18| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@5|) |p#1@@18|) (M2.__default.WellFounded |p#1@@18|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4615|
 :pattern ( (M2.__default.WellFounded |p#1@@18|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@5|) |p#1@@18|))
))))) (and (and (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (and (M2.__default.Extends |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (and (and (|Set#Subset| (M2.__default.DomSt |call5formal@st'#0@0@@4|) (M2.__default.DomSt |call5formal@st'#0@0@@5|)) (forall ((|p#2@@13| T@U) ) (!  (=> ($IsBox |p#2@@13| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#2@@13|) (= (M2.__default.GetSt |p#2@@13| |call5formal@st'#0@0@@5|) (M2.__default.GetSt |p#2@@13| |call5formal@st'#0@0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4618|
 :pattern ( (M2.__default.GetSt |p#2@@13| |call5formal@st'#0@0@@4|))
 :pattern ( (M2.__default.GetSt |p#2@@13| |call5formal@st'#0@0@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#2@@13|))
))) (forall ((|p#3@@12| T@U) ) (!  (=> ($IsBox |p#3@@12| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#3@@12|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@5|) |p#3@@12|)) (= (M2.__default.GetSt |p#3@@12| |call5formal@st'#0@0@@5|) (M2.__default.Oracle |p#3@@12| |call5formal@st'#0@0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4619|
 :pattern ( (M2.__default.Oracle |p#3@@12| |call5formal@st'#0@0@@4|))
 :pattern ( (M2.__default.GetSt |p#3@@12| |call5formal@st'#0@0@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@5|) |p#3@@12|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#3@@12|))
))))) (and (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@5|) (|M2.Reason#Equal| (M2.Expression.r |call4formal@expr'#0@0@@5|) |#M2.Reason.rValidity|)) (= $Heap@2 $Heap@8)))) (and (=> (= (ControlFlow 0 44) (- 0 50)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@4|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@4|) (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0@@4|))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@4|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@4|) (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0@@4|)))) (and (=> (= (ControlFlow 0 44) (- 0 49)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@4|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@4|) (forall ((|p#0@@73| T@U) ) (!  (=> ($IsBox |p#0@@73| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@73|) (= (M2.__default.GetSt |p#0@@73| |call5formal@st'#0@0@@4|) (M2.__default.GetSt |p#0@@73| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4448|
 :pattern ( (M2.__default.GetSt |p#0@@73| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#0@@73| |call5formal@st'#0@0@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@73|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@4|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@4|) (forall ((|p#0@@74| T@U) ) (!  (=> ($IsBox |p#0@@74| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@74|) (= (M2.__default.GetSt |p#0@@74| |call5formal@st'#0@0@@4|) (M2.__default.GetSt |p#0@@74| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4448|
 :pattern ( (M2.__default.GetSt |p#0@@74| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#0@@74| |call5formal@st'#0@0@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@74|))
)))) (and (=> (= (ControlFlow 0 44) (- 0 48)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@4|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@4|) (forall ((|p#1@@19| T@U) ) (!  (=> ($IsBox |p#1@@19| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@19|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#1@@19|)) (= (M2.__default.GetSt |p#1@@19| |call5formal@st'#0@0@@4|) (M2.__default.Oracle |p#1@@19| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4449|
 :pattern ( (M2.__default.Oracle |p#1@@19| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#1@@19| |call5formal@st'#0@0@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#1@@19|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@19|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@4|) (or (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@4|) (forall ((|p#1@@20| T@U) ) (!  (=> ($IsBox |p#1@@20| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@20|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#1@@20|)) (= (M2.__default.GetSt |p#1@@20| |call5formal@st'#0@0@@4|) (M2.__default.Oracle |p#1@@20| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4449|
 :pattern ( (M2.__default.Oracle |p#1@@20| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#1@@20| |call5formal@st'#0@0@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#1@@20|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@20|))
)))) (and (=> (= (ControlFlow 0 44) (- 0 47)) (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (or (M2.__default.Extends |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (|Set#Subset| (M2.__default.DomSt |call5formal@st'#0@0@@4|) (M2.__default.DomSt |call5formal@st'#0@0@@5|))))) (=> (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (or (M2.__default.Extends |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (|Set#Subset| (M2.__default.DomSt |call5formal@st'#0@0@@4|) (M2.__default.DomSt |call5formal@st'#0@0@@5|)))) (and (=> (= (ControlFlow 0 44) (- 0 46)) (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (or (M2.__default.Extends |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (forall ((|p#2@@14| T@U) ) (!  (=> ($IsBox |p#2@@14| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#2@@14|) (= (M2.__default.GetSt |p#2@@14| |call5formal@st'#0@0@@5|) (M2.__default.GetSt |p#2@@14| |call5formal@st'#0@0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4452|
 :pattern ( (M2.__default.GetSt |p#2@@14| |call5formal@st'#0@0@@4|))
 :pattern ( (M2.__default.GetSt |p#2@@14| |call5formal@st'#0@0@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#2@@14|))
))))) (=> (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (or (M2.__default.Extends |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (forall ((|p#2@@15| T@U) ) (!  (=> ($IsBox |p#2@@15| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#2@@15|) (= (M2.__default.GetSt |p#2@@15| |call5formal@st'#0@0@@5|) (M2.__default.GetSt |p#2@@15| |call5formal@st'#0@0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4452|
 :pattern ( (M2.__default.GetSt |p#2@@15| |call5formal@st'#0@0@@4|))
 :pattern ( (M2.__default.GetSt |p#2@@15| |call5formal@st'#0@0@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#2@@15|))
)))) (and (=> (= (ControlFlow 0 44) (- 0 45)) (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (or (M2.__default.Extends |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (forall ((|p#3@@13| T@U) ) (!  (=> ($IsBox |p#3@@13| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#3@@13|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@5|) |p#3@@13|)) (= (M2.__default.GetSt |p#3@@13| |call5formal@st'#0@0@@5|) (M2.__default.Oracle |p#3@@13| |call5formal@st'#0@0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4453|
 :pattern ( (M2.__default.Oracle |p#3@@13| |call5formal@st'#0@0@@4|))
 :pattern ( (M2.__default.GetSt |p#3@@13| |call5formal@st'#0@0@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@5|) |p#3@@13|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#3@@13|))
))))) (=> (=> (|M2.__default.Extends#canCall| |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (or (M2.__default.Extends |call5formal@st'#0@0@@4| |call5formal@st'#0@0@@5|) (forall ((|p#3@@14| T@U) ) (!  (=> ($IsBox |p#3@@14| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#3@@14|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@5|) |p#3@@14|)) (= (M2.__default.GetSt |p#3@@14| |call5formal@st'#0@0@@5|) (M2.__default.Oracle |p#3@@14| |call5formal@st'#0@0@@4|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4453|
 :pattern ( (M2.__default.Oracle |p#3@@14| |call5formal@st'#0@0@@4|))
 :pattern ( (M2.__default.GetSt |p#3@@14| |call5formal@st'#0@0@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@5|) |p#3@@14|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#3@@14|))
)))) (=> (and (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@5|)) (and (and (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@5|) (and (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@5|) (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0@@5|)) (forall ((|p#4@@2| T@U) ) (!  (=> ($IsBox |p#4@@2| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#4@@2|) (= (M2.__default.GetSt |p#4@@2| |call5formal@st'#0@0@@5|) (M2.__default.GetSt |p#4@@2| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4458|
 :pattern ( (M2.__default.GetSt |p#4@@2| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#4@@2| |call5formal@st'#0@0@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#4@@2|))
))) (forall ((|p#5@@4| T@U) ) (!  (=> ($IsBox |p#5@@4| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#5@@4|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@5|) |p#5@@4|)) (= (M2.__default.GetSt |p#5@@4| |call5formal@st'#0@0@@5|) (M2.__default.Oracle |p#5@@4| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4459|
 :pattern ( (M2.__default.Oracle |p#5@@4| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#5@@4| |call5formal@st'#0@0@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@5|) |p#5@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#5@@4|))
))))) (and (= $Heap@8 $Heap@9) (= (ControlFlow 0 44) 2)))) GeneratedUnifiedExit_correct)))))))))))))))))))))))
(let ((anon31_correct  (=> (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@4|) (|$IsA#M2.Literal| (M2.Expression.lit |call4formal@expr'#0@0@@4|))) (and (=> (= (ControlFlow 0 54) 44) anon65_Then_correct) (=> (= (ControlFlow 0 54) 53) anon65_Else_correct)))))
(let ((anon64_Else_correct  (=> (and (not (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@4|)) (= (ControlFlow 0 56) 54)) anon31_correct)))
(let ((anon64_Then_correct  (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@4|) (=> (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@4|) (= (ControlFlow 0 55) 54)) anon31_correct))))
(let ((anon63_Else_correct  (=> (not (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@4|) (|M2.Literal#Equal| (M2.Expression.lit |call4formal@expr'#0@0@@4|) |#M2.Literal.litTrue|))) (and (=> (= (ControlFlow 0 57) 55) anon64_Then_correct) (=> (= (ControlFlow 0 57) 56) anon64_Else_correct)))))
(let ((anon63_Then_correct  (=> (and (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@4|) (|M2.Literal#Equal| (M2.Expression.lit |call4formal@expr'#0@0@@4|) |#M2.Literal.litTrue|)) (= (ControlFlow 0 43) 2)) GeneratedUnifiedExit_correct)))
(let ((anon27_correct  (=> (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@4|) (|$IsA#M2.Literal| (M2.Expression.lit |call4formal@expr'#0@0@@4|))) (and (=> (= (ControlFlow 0 58) 43) anon63_Then_correct) (=> (= (ControlFlow 0 58) 57) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (and (not (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@4|)) (= (ControlFlow 0 60) 58)) anon27_correct)))
(let ((anon62_Then_correct  (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@4|) (=> (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@4|) (= (ControlFlow 0 59) 58)) anon27_correct))))
(let ((anon61_Then_correct  (=> (and (and (and (M2.Expression.exprOr_q |expr#0@@7|) (M2.Expression.exprOr_q |expr#0@@7|)) (and (= |expr##1_1_1_1_0_0@0| (M2.Expression.disj0 |expr#0@@7|)) (< (DtRank |expr##1_1_1_1_0_0@0|) (DtRank |expr#0@@7|)))) (and (and ($Is DatatypeTypeType |call4formal@expr'#0@@5| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@@5| Tclass.M2.Expression $Heap@@26)) (and ($Is DatatypeTypeType |call5formal@st'#0@@5| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@@5| Tclass.M2.State $Heap@@26)))) (and (=> (= (ControlFlow 0 61) (- 0 63)) (=> (|M2.__default.ValidState#canCall| |st#0@@67|) (or (M2.__default.ValidState |st#0@@67|) (forall ((|p#0@@75| T@U) ) (!  (=> ($IsBox |p#0@@75| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@75|) (M2.__default.WellFounded |p#0@@75|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@75|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@75|))
))))) (=> (=> (|M2.__default.ValidState#canCall| |st#0@@67|) (or (M2.__default.ValidState |st#0@@67|) (forall ((|p#0@@76| T@U) ) (!  (=> ($IsBox |p#0@@76| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@76|) (M2.__default.WellFounded |p#0@@76|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@76|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@76|))
)))) (and (=> (= (ControlFlow 0 61) (- 0 62)) (M2.__default.ValidEnv |env#0@@13|)) (=> (M2.__default.ValidEnv |env#0@@13|) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and ($Is DatatypeTypeType |call4formal@expr'#0@0@@4| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@0@@4| Tclass.M2.Expression $Heap@2)) (and ($Is DatatypeTypeType |call5formal@st'#0@0@@4| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@0@@4| Tclass.M2.State $Heap@2))) (=> (and (and (and (and (and (|$IsA#M2.Tuple| (M2.__default.eval ($LS $LZ) |expr##1_1_1_1_0_0@0| |st#0@@67| |env#0@@13|)) (|M2.__default.eval#canCall| |expr##1_1_1_1_0_0@0| |st#0@@67| |env#0@@13|)) (=> (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@4|) ($Box DatatypeTypeType |call5formal@st'#0@0@@4|)) (M2.__default.eval ($LS $LZ) |expr##1_1_1_1_0_0@0| |st#0@@67| |env#0@@13|)) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@4|) (=> (M2.__default.ValidState |call5formal@st'#0@0@@4|) (and (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@4|) (=> (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@4|) (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@4|) (|$IsA#M2.Reason| (M2.Expression.r |call4formal@expr'#0@0@@4|))))))))) (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@4|) ($Box DatatypeTypeType |call5formal@st'#0@0@@4|)) (M2.__default.eval ($LS ($LS $LZ)) |expr##1_1_1_1_0_0@0| |st#0@@67| |env#0@@13|))) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@4|) (and (M2.__default.ValidState |call5formal@st'#0@0@@4|) (forall ((|p#1@@21| T@U) ) (!  (=> ($IsBox |p#1@@21| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#1@@21|) (M2.__default.WellFounded |p#1@@21|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4615|
 :pattern ( (M2.__default.WellFounded |p#1@@21|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#1@@21|))
))))) (and (and (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@4|) (and (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@4|) (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0@@4|)) (forall ((|p#2@@16| T@U) ) (!  (=> ($IsBox |p#2@@16| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#2@@16|) (= (M2.__default.GetSt |p#2@@16| |call5formal@st'#0@0@@4|) (M2.__default.GetSt |p#2@@16| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4618|
 :pattern ( (M2.__default.GetSt |p#2@@16| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#2@@16| |call5formal@st'#0@0@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#2@@16|))
))) (forall ((|p#3@@15| T@U) ) (!  (=> ($IsBox |p#3@@15| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#3@@15|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#3@@15|)) (= (M2.__default.GetSt |p#3@@15| |call5formal@st'#0@0@@4|) (M2.__default.Oracle |p#3@@15| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4619|
 :pattern ( (M2.__default.Oracle |p#3@@15| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#3@@15| |call5formal@st'#0@0@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@4|) |p#3@@15|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#3@@15|))
))))) (and (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@4|) (|M2.Reason#Equal| (M2.Expression.r |call4formal@expr'#0@0@@4|) |#M2.Reason.rValidity|)) (= $Heap@@26 $Heap@2)))) (and (=> (= (ControlFlow 0 61) 59) anon62_Then_correct) (=> (= (ControlFlow 0 61) 60) anon62_Else_correct))))))))))))
(let ((anon72_Else_correct  (=> (and (not (and (= (|Seq#Length| |call5formal@args'#0@0|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (M2.__default.ValidArgs (Lit DatatypeTypeType |#M2.Primitive.primExec|) |call5formal@args'#0@0| |stCombined#1_1_1_1_1_0_0_0@0|))) (= (ControlFlow 0 24) 2)) GeneratedUnifiedExit_correct)))
(let ((anon72_Then_correct  (=> (and (= (|Seq#Length| |call5formal@args'#0@0|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (M2.__default.ValidArgs (Lit DatatypeTypeType |#M2.Primitive.primExec|) |call5formal@args'#0@0| |stCombined#1_1_1_1_1_0_0_0@0|)) (=> (and (and (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |call5formal@args'#0@0|))) (M2.Expression.exprLiteral_q ($Unbox DatatypeTypeType (|Seq#Index| |call5formal@args'#0@0| (LitInt 0))))) (and (M2.Literal.litString_q (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |call5formal@args'#0@0| (LitInt 0))))) (= |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| (M2.Literal.str (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |call5formal@args'#0@0| (LitInt 0)))))))) (=> (and (and (and (and (<= 0 (LitInt 1)) (< (LitInt 1) (|Seq#Length| |call5formal@args'#0@0|))) (M2.Expression.exprLiteral_q ($Unbox DatatypeTypeType (|Seq#Index| |call5formal@args'#0@0| (LitInt 1))))) (and (M2.Literal.litArrOfPaths_q (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |call5formal@args'#0@0| (LitInt 1))))) (= |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| (M2.Literal.paths (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |call5formal@args'#0@0| (LitInt 1)))))))) (and (and (and (<= 0 (LitInt 2)) (< (LitInt 2) (|Seq#Length| |call5formal@args'#0@0|))) (M2.Expression.exprLiteral_q ($Unbox DatatypeTypeType (|Seq#Index| |call5formal@args'#0@0| (LitInt 2))))) (and (M2.Literal.litArrOfStrings_q (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |call5formal@args'#0@0| (LitInt 2))))) (= |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| (M2.Literal.strs (M2.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |call5formal@args'#0@0| (LitInt 2))))))))) (and (=> (= (ControlFlow 0 14) (- 0 23)) (=> (|M2.__default.ValidState#canCall| |stCombined#1_1_1_1_1_0_0_0@0|) (or (M2.__default.ValidState |stCombined#1_1_1_1_1_0_0_0@0|) (forall ((|p#0@@77| T@U) ) (!  (=> ($IsBox |p#0@@77| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#0@@77|) (M2.__default.WellFounded |p#0@@77|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |3615|
 :pattern ( (M2.__default.WellFounded |p#0@@77|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#0@@77|))
))))) (=> (=> (|M2.__default.ValidState#canCall| |stCombined#1_1_1_1_1_0_0_0@0|) (or (M2.__default.ValidState |stCombined#1_1_1_1_1_0_0_0@0|) (forall ((|p#0@@78| T@U) ) (!  (=> ($IsBox |p#0@@78| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#0@@78|) (M2.__default.WellFounded |p#0@@78|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |3615|
 :pattern ( (M2.__default.WellFounded |p#0@@78|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#0@@78|))
)))) (and (=> (= (ControlFlow 0 14) (- 0 22)) (|Set#Subset| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|))) (=> (|Set#Subset| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|)) (and (=> (= (ControlFlow 0 14) (- 0 21)) (=> (|M2.__default.Pre#canCall| |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|) (or (M2.__default.Pre |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|) (forall ((|e#0@@7| T@U) ) (!  (=> ($Is SeqType |e#0@@7| (TSeq TChar)) (=> (|Set#IsMember| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| ($Box SeqType |e#0@@7|)) (=> (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#0@@7|)) (= (M2.__default.GetSt (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#0@@7|) |stCombined#1_1_1_1_1_0_0_0@0|) (M2.__default.Oracle (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#0@@7|) |stCombined#1_1_1_1_1_0_0_0@0|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |3617|
 :pattern ( (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#0@@7|))
 :pattern ( (|Set#IsMember| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| ($Box SeqType |e#0@@7|)))
))))) (=> (=> (|M2.__default.Pre#canCall| |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|) (or (M2.__default.Pre |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|) (forall ((|e#0@@8| T@U) ) (!  (=> ($Is SeqType |e#0@@8| (TSeq TChar)) (=> (|Set#IsMember| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| ($Box SeqType |e#0@@8|)) (=> (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#0@@8|)) (= (M2.__default.GetSt (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#0@@8|) |stCombined#1_1_1_1_1_0_0_0@0|) (M2.__default.Oracle (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#0@@8|) |stCombined#1_1_1_1_1_0_0_0@0|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |3617|
 :pattern ( (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#0@@8|))
 :pattern ( (|Set#IsMember| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| ($Box SeqType |e#0@@8|)))
)))) (=> (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (|M2.__default.exec#canCall| |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|) (let ((|st'#0@@10| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.exec |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|)))))
(let ((|paths#0@@6| ($Unbox SetType (M2.Tuple.fst (M2.__default.exec |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|)))))
 (and (|M2.__default.ValidState#canCall| |st'#0@@10|) (=> (M2.__default.ValidState |st'#0@@10|) (and (|M2.__default.Extends#canCall| |stCombined#1_1_1_1_1_0_0_0@0| |st'#0@@10|) (=> (M2.__default.Extends |stCombined#1_1_1_1_1_0_0_0@0| |st'#0@@10|) (and (|M2.__default.OneToOne#canCall| |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |paths#0@@6|) (=> (M2.__default.OneToOne |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |paths#0@@6|) (|M2.__default.Post#canCall| |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |st'#0@@10|))))))))))) (=> (and (and (and (and (let ((|st'#0@@11| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.exec |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|)))))
 (and (|M2.__default.ValidState#canCall| |st'#0@@11|) (and (M2.__default.ValidState |st'#0@@11|) (forall ((|p#1@@22| T@U) ) (!  (=> ($IsBox |p#1@@22| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st'#0@@11|) |p#1@@22|) (M2.__default.WellFounded |p#1@@22|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |3620|
 :pattern ( (M2.__default.WellFounded |p#1@@22|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@11|) |p#1@@22|))
))))) (let ((|st'#0@@12| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.exec |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|)))))
 (and (|M2.__default.Extends#canCall| |stCombined#1_1_1_1_1_0_0_0@0| |st'#0@@12|) (and (M2.__default.Extends |stCombined#1_1_1_1_1_0_0_0@0| |st'#0@@12|) (and (and (|Set#Subset| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) (M2.__default.DomSt |st'#0@@12|)) (forall ((|p#2@@17| T@U) ) (!  (=> ($IsBox |p#2@@17| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#2@@17|) (= (M2.__default.GetSt |p#2@@17| |st'#0@@12|) (M2.__default.GetSt |p#2@@17| |stCombined#1_1_1_1_1_0_0_0@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |3623|
 :pattern ( (M2.__default.GetSt |p#2@@17| |stCombined#1_1_1_1_1_0_0_0@0|))
 :pattern ( (M2.__default.GetSt |p#2@@17| |st'#0@@12|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#2@@17|))
))) (forall ((|p#3@@16| T@U) ) (!  (=> ($IsBox |p#3@@16| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#3@@16|)) (|Set#IsMember| (M2.__default.DomSt |st'#0@@12|) |p#3@@16|)) (= (M2.__default.GetSt |p#3@@16| |st'#0@@12|) (M2.__default.Oracle |p#3@@16| |stCombined#1_1_1_1_1_0_0_0@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |3624|
 :pattern ( (M2.__default.Oracle |p#3@@16| |stCombined#1_1_1_1_1_0_0_0@0|))
 :pattern ( (M2.__default.GetSt |p#3@@16| |st'#0@@12|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st'#0@@12|) |p#3@@16|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#3@@16|))
))))))) (and (let ((|paths#0@@7| ($Unbox SetType (M2.Tuple.fst (M2.__default.exec |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|)))))
 (and (|M2.__default.OneToOne#canCall| |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |paths#0@@7|) (and (M2.__default.OneToOne |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |paths#0@@7|) (forall ((|e#1@@7| T@U) ) (!  (=> ($Is SeqType |e#1@@7| (TSeq TChar)) (=> (|Set#IsMember| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| ($Box SeqType |e#1@@7|)) (|Set#IsMember| |paths#0@@7| (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#1@@7|))))
 :qid |CloudMakeParallelBuildsdfy.91:12|
 :skolemid |3626|
 :pattern ( (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#1@@7|))
 :pattern ( (|Set#IsMember| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| ($Box SeqType |e#1@@7|)))
))))) (let ((|st'#0@@13| ($Unbox DatatypeTypeType (M2.Tuple.snd (M2.__default.exec |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|)))))
 (and (|M2.__default.Post#canCall| |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |st'#0@@13|) (and (M2.__default.Post |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |st'#0@@13|) (forall ((|e#2@@5| T@U) ) (!  (=> ($Is SeqType |e#2@@5| (TSeq TChar)) (and (=> (|Set#IsMember| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| ($Box SeqType |e#2@@5|)) (|Set#IsMember| (M2.__default.DomSt |st'#0@@13|) (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#2@@5|))) (=> (|Set#IsMember| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| ($Box SeqType |e#2@@5|)) (= (M2.__default.GetSt (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#2@@5|) |st'#0@@13|) (M2.__default.Oracle (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#2@@5|) |st'#0@@13|)))))
 :qid |CloudMakeParallelBuildsdfy.96:12|
 :skolemid |3628|
 :pattern ( (M2.__default.Loc |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |e#2@@5|))
 :pattern ( (|Set#IsMember| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| ($Box SeqType |e#2@@5|)))
))))))) (and (and (= $Heap@5 $Heap@6) ($IsAlloc SeqType |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| (TSeq TChar) $Heap@6)) (and ($IsAlloc SetType |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| (TSet Tclass.M2.Path) $Heap@6) ($IsAlloc SetType |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| (TSet (TSeq TChar)) $Heap@6)))) (and (and (and ($IsAlloc DatatypeTypeType |stCombined#1_1_1_1_1_0_0_0@0| Tclass.M2.State $Heap@6) (|M2.__default.exec#canCall| |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|)) (and (M2.Tuple.Pair_q (M2.__default.exec |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|)) (|M2.__default.exec#canCall| |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|))) (and (and (= |resultExec#1_1_1_1_1_0_0_0_0_0_0@0| (M2.__default.exec |$rhs#1_1_1_1_1_0_0_0_0_0_0@0| |$rhs#1_1_1_1_1_0_0_0_0_0_1@0| |$rhs#1_1_1_1_1_0_0_0_0_0_2@0| |stCombined#1_1_1_1_1_0_0_0@0|)) (M2.Tuple.Pair_q |resultExec#1_1_1_1_1_0_0_0_0_0_0@0|)) (and (M2.Tuple.Pair_q |resultExec#1_1_1_1_1_0_0_0_0_0_0@0|) (= |stExec#1_1_1_1_1_0_0_0_0_0_0@0| ($Unbox DatatypeTypeType (M2.Tuple.snd |resultExec#1_1_1_1_1_0_0_0_0_0_0@0|))))))) (and (=> (= (ControlFlow 0 14) (- 0 20)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |stCombined#1_1_1_1_1_0_0_0@0|) (or (M2.__default.Extends |st#0@@67| |stCombined#1_1_1_1_1_0_0_0@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |stCombined#1_1_1_1_1_0_0_0@0|) (or (M2.__default.Extends |st#0@@67| |stCombined#1_1_1_1_1_0_0_0@0|) (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|)))) (and (=> (= (ControlFlow 0 14) (- 0 19)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |stCombined#1_1_1_1_1_0_0_0@0|) (or (M2.__default.Extends |st#0@@67| |stCombined#1_1_1_1_1_0_0_0@0|) (forall ((|p#0@@79| T@U) ) (!  (=> ($IsBox |p#0@@79| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@79|) (= (M2.__default.GetSt |p#0@@79| |stCombined#1_1_1_1_1_0_0_0@0|) (M2.__default.GetSt |p#0@@79| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4448|
 :pattern ( (M2.__default.GetSt |p#0@@79| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#0@@79| |stCombined#1_1_1_1_1_0_0_0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@79|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |stCombined#1_1_1_1_1_0_0_0@0|) (or (M2.__default.Extends |st#0@@67| |stCombined#1_1_1_1_1_0_0_0@0|) (forall ((|p#0@@80| T@U) ) (!  (=> ($IsBox |p#0@@80| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@80|) (= (M2.__default.GetSt |p#0@@80| |stCombined#1_1_1_1_1_0_0_0@0|) (M2.__default.GetSt |p#0@@80| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4448|
 :pattern ( (M2.__default.GetSt |p#0@@80| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#0@@80| |stCombined#1_1_1_1_1_0_0_0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@80|))
)))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (=> (|M2.__default.Extends#canCall| |st#0@@67| |stCombined#1_1_1_1_1_0_0_0@0|) (or (M2.__default.Extends |st#0@@67| |stCombined#1_1_1_1_1_0_0_0@0|) (forall ((|p#1@@23| T@U) ) (!  (=> ($IsBox |p#1@@23| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@23|)) (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#1@@23|)) (= (M2.__default.GetSt |p#1@@23| |stCombined#1_1_1_1_1_0_0_0@0|) (M2.__default.Oracle |p#1@@23| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4449|
 :pattern ( (M2.__default.Oracle |p#1@@23| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#1@@23| |stCombined#1_1_1_1_1_0_0_0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#1@@23|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@23|))
))))) (=> (=> (|M2.__default.Extends#canCall| |st#0@@67| |stCombined#1_1_1_1_1_0_0_0@0|) (or (M2.__default.Extends |st#0@@67| |stCombined#1_1_1_1_1_0_0_0@0|) (forall ((|p#1@@24| T@U) ) (!  (=> ($IsBox |p#1@@24| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@24|)) (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#1@@24|)) (= (M2.__default.GetSt |p#1@@24| |stCombined#1_1_1_1_1_0_0_0@0|) (M2.__default.Oracle |p#1@@24| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4449|
 :pattern ( (M2.__default.Oracle |p#1@@24| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#1@@24| |stCombined#1_1_1_1_1_0_0_0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#1@@24|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@24|))
)))) (and (=> (= (ControlFlow 0 14) (- 0 17)) (=> (|M2.__default.Extends#canCall| |stCombined#1_1_1_1_1_0_0_0@0| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (or (M2.__default.Extends |stCombined#1_1_1_1_1_0_0_0@0| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (|Set#Subset| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) (M2.__default.DomSt |stExec#1_1_1_1_1_0_0_0_0_0_0@0|))))) (=> (=> (|M2.__default.Extends#canCall| |stCombined#1_1_1_1_1_0_0_0@0| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (or (M2.__default.Extends |stCombined#1_1_1_1_1_0_0_0@0| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (|Set#Subset| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) (M2.__default.DomSt |stExec#1_1_1_1_1_0_0_0_0_0_0@0|)))) (and (=> (= (ControlFlow 0 14) (- 0 16)) (=> (|M2.__default.Extends#canCall| |stCombined#1_1_1_1_1_0_0_0@0| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (or (M2.__default.Extends |stCombined#1_1_1_1_1_0_0_0@0| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (forall ((|p#2@@18| T@U) ) (!  (=> ($IsBox |p#2@@18| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#2@@18|) (= (M2.__default.GetSt |p#2@@18| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (M2.__default.GetSt |p#2@@18| |stCombined#1_1_1_1_1_0_0_0@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4452|
 :pattern ( (M2.__default.GetSt |p#2@@18| |stCombined#1_1_1_1_1_0_0_0@0|))
 :pattern ( (M2.__default.GetSt |p#2@@18| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#2@@18|))
))))) (=> (=> (|M2.__default.Extends#canCall| |stCombined#1_1_1_1_1_0_0_0@0| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (or (M2.__default.Extends |stCombined#1_1_1_1_1_0_0_0@0| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (forall ((|p#2@@19| T@U) ) (!  (=> ($IsBox |p#2@@19| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#2@@19|) (= (M2.__default.GetSt |p#2@@19| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (M2.__default.GetSt |p#2@@19| |stCombined#1_1_1_1_1_0_0_0@0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4452|
 :pattern ( (M2.__default.GetSt |p#2@@19| |stCombined#1_1_1_1_1_0_0_0@0|))
 :pattern ( (M2.__default.GetSt |p#2@@19| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#2@@19|))
)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (=> (|M2.__default.Extends#canCall| |stCombined#1_1_1_1_1_0_0_0@0| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (or (M2.__default.Extends |stCombined#1_1_1_1_1_0_0_0@0| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (forall ((|p#3@@17| T@U) ) (!  (=> ($IsBox |p#3@@17| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#3@@17|)) (|Set#IsMember| (M2.__default.DomSt |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) |p#3@@17|)) (= (M2.__default.GetSt |p#3@@17| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (M2.__default.Oracle |p#3@@17| |stCombined#1_1_1_1_1_0_0_0@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4453|
 :pattern ( (M2.__default.Oracle |p#3@@17| |stCombined#1_1_1_1_1_0_0_0@0|))
 :pattern ( (M2.__default.GetSt |p#3@@17| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) |p#3@@17|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#3@@17|))
))))) (=> (=> (|M2.__default.Extends#canCall| |stCombined#1_1_1_1_1_0_0_0@0| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (or (M2.__default.Extends |stCombined#1_1_1_1_1_0_0_0@0| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (forall ((|p#3@@18| T@U) ) (!  (=> ($IsBox |p#3@@18| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#3@@18|)) (|Set#IsMember| (M2.__default.DomSt |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) |p#3@@18|)) (= (M2.__default.GetSt |p#3@@18| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (M2.__default.Oracle |p#3@@18| |stCombined#1_1_1_1_1_0_0_0@0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4453|
 :pattern ( (M2.__default.Oracle |p#3@@18| |stCombined#1_1_1_1_1_0_0_0@0|))
 :pattern ( (M2.__default.GetSt |p#3@@18| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) |p#3@@18|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stCombined#1_1_1_1_1_0_0_0@0|) |p#3@@18|))
)))) (=> (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (|M2.__default.Extends#canCall| |st#0@@67| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|)) (and (and (|M2.__default.Extends#canCall| |st#0@@67| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (and (M2.__default.Extends |st#0@@67| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |stExec#1_1_1_1_1_0_0_0_0_0_0@0|)) (forall ((|p#4@@3| T@U) ) (!  (=> ($IsBox |p#4@@3| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#4@@3|) (= (M2.__default.GetSt |p#4@@3| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (M2.__default.GetSt |p#4@@3| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4458|
 :pattern ( (M2.__default.GetSt |p#4@@3| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#4@@3| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#4@@3|))
))) (forall ((|p#5@@5| T@U) ) (!  (=> ($IsBox |p#5@@5| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#5@@5|)) (|Set#IsMember| (M2.__default.DomSt |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) |p#5@@5|)) (= (M2.__default.GetSt |p#5@@5| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) (M2.__default.Oracle |p#5@@5| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4459|
 :pattern ( (M2.__default.Oracle |p#5@@5| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#5@@5| |stExec#1_1_1_1_1_0_0_0_0_0_0@0|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |stExec#1_1_1_1_1_0_0_0_0_0_0@0|) |p#5@@5|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#5@@5|))
))))) (and (= $Heap@6 $Heap@7) (= (ControlFlow 0 14) 2)))) GeneratedUnifiedExit_correct))))))))))))))))))))))))))
(let ((anon42_correct  (=> (and (|M2.__default.Arity#canCall| (Lit DatatypeTypeType |#M2.Primitive.primExec|)) (=> (= (|Seq#Length| |call5formal@args'#0@0|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (|M2.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M2.Primitive.primExec|) |call5formal@args'#0@0| |stCombined#1_1_1_1_1_0_0_0@0|))) (and (=> (= (ControlFlow 0 25) 14) anon72_Then_correct) (=> (= (ControlFlow 0 25) 24) anon72_Else_correct)))))
(let ((anon71_Else_correct  (=> (and (or (not (= (|Seq#Length| |call5formal@args'#0@0|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|))))) (not true)) (= (ControlFlow 0 27) 25)) anon42_correct)))
(let ((anon71_Then_correct  (=> (= (|Seq#Length| |call5formal@args'#0@0|) (LitInt (M2.__default.Arity (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (=> (and (and (and (= |##prim#1_1_1_1_1_0_0_0_0_1@0| (Lit DatatypeTypeType |#M2.Primitive.primExec|)) ($IsAlloc DatatypeTypeType |##prim#1_1_1_1_1_0_0_0_0_1@0| Tclass.M2.Primitive $Heap@5)) (and ($IsAlloc SeqType |call5formal@args'#0@0| (TSeq Tclass.M2.Expression) $Heap@5) ($IsAlloc DatatypeTypeType |stCombined#1_1_1_1_1_0_0_0@0| Tclass.M2.State $Heap@5))) (and (and (=> (M2.Primitive.primExec_q |##prim#1_1_1_1_1_0_0_0_0_1@0|) (= (|Seq#Length| |call5formal@args'#0@0|) (LitInt 3))) (=> (M2.Primitive.primCreatePath_q |##prim#1_1_1_1_1_0_0_0_0_1@0|) (= (|Seq#Length| |call5formal@args'#0@0|) (LitInt 1)))) (and (|M2.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M2.Primitive.primExec|) |call5formal@args'#0@0| |stCombined#1_1_1_1_1_0_0_0@0|) (= (ControlFlow 0 26) 25)))) anon42_correct))))
(let ((anon70_Then_correct  (=> (and (and (M2.Primitive.primExec_q (M2.Literal.prim (M2.Expression.lit |call4formal@expr'#0@0@@6|))) (= |##prim#1_1_1_1_1_0_0_0_0_0@0| (Lit DatatypeTypeType |#M2.Primitive.primExec|))) (and ($IsAlloc DatatypeTypeType |##prim#1_1_1_1_1_0_0_0_0_0@0| Tclass.M2.Primitive $Heap@5) (|M2.__default.Arity#canCall| (Lit DatatypeTypeType |#M2.Primitive.primExec|)))) (and (=> (= (ControlFlow 0 28) 26) anon71_Then_correct) (=> (= (ControlFlow 0 28) 27) anon71_Else_correct)))))
(let ((anon70_Else_correct  (=> (and (not (M2.Primitive.primExec_q (M2.Literal.prim (M2.Expression.lit |call4formal@expr'#0@0@@6|)))) (= (ControlFlow 0 13) 2)) GeneratedUnifiedExit_correct)))
(let ((anon69_Then_correct  (=> (and (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@6|) (M2.Literal.litPrimitive_q (M2.Expression.lit |call4formal@expr'#0@0@@6|))) (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@6|) (M2.Literal.litPrimitive_q (M2.Expression.lit |call4formal@expr'#0@0@@6|)))) (and (=> (= (ControlFlow 0 29) 28) anon70_Then_correct) (=> (= (ControlFlow 0 29) 13) anon70_Else_correct)))))
(let ((anon69_Else_correct  (=> (and (not (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@6|) (M2.Literal.litPrimitive_q (M2.Expression.lit |call4formal@expr'#0@0@@6|)))) (= (ControlFlow 0 12) 2)) GeneratedUnifiedExit_correct)))
(let ((anon38_correct  (and (=> (= (ControlFlow 0 30) 29) anon69_Then_correct) (=> (= (ControlFlow 0 30) 12) anon69_Else_correct))))
(let ((anon68_Else_correct  (=> (and (not (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@6|)) (= (ControlFlow 0 32) 30)) anon38_correct)))
(let ((anon68_Then_correct  (=> (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@6|) (=> (and (M2.Expression.exprLiteral_q |call4formal@expr'#0@0@@6|) (= (ControlFlow 0 31) 30)) anon38_correct))))
(let ((anon67_Then_correct  (=> (M2.__default.Compatible |sts''#1_1_1_1_1_0_0@0|) (=> (and ($IsAlloc SetType |sts''#1_1_1_1_1_0_0@0| (TSet Tclass.M2.State) $Heap@4) (not (|Set#Equal| |sts''#1_1_1_1_1_0_0@0| |Set#Empty|))) (=> (and (and (|M2.__default.Combine#canCall| |sts''#1_1_1_1_1_0_0@0|) (M2.State.StateCons_q (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|))) (and (|M2.__default.Combine#canCall| |sts''#1_1_1_1_1_0_0@0|) (= |stCombined#1_1_1_1_1_0_0_0@0| (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)))) (and (=> (= (ControlFlow 0 33) (- 0 35)) (not (|Set#Equal| |sts''#1_1_1_1_1_0_0@0| |Set#Empty|))) (=> (not (|Set#Equal| |sts''#1_1_1_1_1_0_0@0| |Set#Empty|)) (and (=> (= (ControlFlow 0 33) (- 0 34)) (forall ((|st#1@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |st#1@@2| Tclass.M2.State) (and (=> (|Set#IsMember| |sts''#1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |st#1@@2|)) (M2.__default.ValidState |st#1@@2|)) (=> (|Set#IsMember| |sts''#1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |st#1@@2|)) (M2.__default.Extends |st#0@@67| |st#1@@2|))))
 :qid |CloudMakeParallelBuildsdfy.47:21|
 :skolemid |4324|
 :pattern ( (M2.__default.Extends |st#0@@67| |st#1@@2|))
 :pattern ( (M2.__default.ValidState |st#1@@2|))
 :pattern ( (|Set#IsMember| |sts''#1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |st#1@@2|)))
))) (=> (forall ((|st#1@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |st#1@@3| Tclass.M2.State) (and (=> (|Set#IsMember| |sts''#1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |st#1@@3|)) (M2.__default.ValidState |st#1@@3|)) (=> (|Set#IsMember| |sts''#1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |st#1@@3|)) (M2.__default.Extends |st#0@@67| |st#1@@3|))))
 :qid |CloudMakeParallelBuildsdfy.47:21|
 :skolemid |4324|
 :pattern ( (M2.__default.Extends |st#0@@67| |st#1@@3|))
 :pattern ( (M2.__default.ValidState |st#1@@3|))
 :pattern ( (|Set#IsMember| |sts''#1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |st#1@@3|)))
)) (=> (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (=> (and (and (and (and (|M2.__default.Combine#canCall| |sts''#1_1_1_1_1_0_0@0|) (|M2.__default.ValidState#canCall| (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|))) (=> (M2.__default.ValidState (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)) (and (|M2.__default.Combine#canCall| |sts''#1_1_1_1_1_0_0@0|) (|M2.__default.Extends#canCall| |st#0@@67| (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|))))) (and (|M2.__default.ValidState#canCall| (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)) (and (M2.__default.ValidState (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)) (forall ((|p#0@@81| T@U) ) (!  (=> ($IsBox |p#0@@81| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)) |p#0@@81|) (M2.__default.WellFounded |p#0@@81|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4327|
 :pattern ( (M2.__default.WellFounded |p#0@@81|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)) |p#0@@81|))
))))) (and (and (|M2.__default.Extends#canCall| |st#0@@67| (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)) (and (M2.__default.Extends |st#0@@67| (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)) (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|))) (forall ((|p#1@@25| T@U) ) (!  (=> ($IsBox |p#1@@25| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@25|) (= (M2.__default.GetSt |p#1@@25| (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)) (M2.__default.GetSt |p#1@@25| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4332|
 :pattern ( (M2.__default.GetSt |p#1@@25| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#1@@25| (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#1@@25|))
))) (forall ((|p#2@@20| T@U) ) (!  (=> ($IsBox |p#2@@20| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#2@@20|)) (|Set#IsMember| (M2.__default.DomSt (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)) |p#2@@20|)) (= (M2.__default.GetSt |p#2@@20| (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)) (M2.__default.Oracle |p#2@@20| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4333|
 :pattern ( (M2.__default.Oracle |p#2@@20| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#2@@20| (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt (M2.__default.Combine ($LS $LZ) |sts''#1_1_1_1_1_0_0@0|)) |p#2@@20|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#2@@20|))
))))) (= $Heap@4 $Heap@5))) (and (=> (= (ControlFlow 0 33) 31) anon68_Then_correct) (=> (= (ControlFlow 0 33) 32) anon68_Else_correct)))))))))))))
(let ((anon67_Else_correct  (=> (and (not (M2.__default.Compatible |sts''#1_1_1_1_1_0_0@0|)) (= (ControlFlow 0 11) 2)) GeneratedUnifiedExit_correct)))
(let ((anon66_Then_correct  (=> (and (and (and (M2.Expression.exprInvocation_q |expr#0@@7|) (M2.Expression.exprInvocation_q |expr#0@@7|)) (and (= |expr##1_1_1_1_1_0_0@0| (M2.Expression.fun |expr#0@@7|)) (< (DtRank |expr##1_1_1_1_1_0_0@0|) (DtRank |expr#0@@7|)))) (and (and ($Is DatatypeTypeType |call4formal@expr'#0@@6| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@@6| Tclass.M2.Expression $Heap@@26)) (and ($Is DatatypeTypeType |call5formal@st'#0@@6| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@@6| Tclass.M2.State $Heap@@26)))) (and (=> (= (ControlFlow 0 36) (- 0 41)) (=> (|M2.__default.ValidState#canCall| |st#0@@67|) (or (M2.__default.ValidState |st#0@@67|) (forall ((|p#0@@82| T@U) ) (!  (=> ($IsBox |p#0@@82| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@82|) (M2.__default.WellFounded |p#0@@82|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@82|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@82|))
))))) (=> (=> (|M2.__default.ValidState#canCall| |st#0@@67|) (or (M2.__default.ValidState |st#0@@67|) (forall ((|p#0@@83| T@U) ) (!  (=> ($IsBox |p#0@@83| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@83|) (M2.__default.WellFounded |p#0@@83|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4612|
 :pattern ( (M2.__default.WellFounded |p#0@@83|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@83|))
)))) (and (=> (= (ControlFlow 0 36) (- 0 40)) (M2.__default.ValidEnv |env#0@@13|)) (=> (M2.__default.ValidEnv |env#0@@13|) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and ($Is DatatypeTypeType |call4formal@expr'#0@0@@6| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@0@@6| Tclass.M2.Expression $Heap@3)) (and ($Is DatatypeTypeType |call5formal@st'#0@0@@6| Tclass.M2.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@0@@6| Tclass.M2.State $Heap@3))) (=> (and (and (and (and (and (and (|$IsA#M2.Tuple| (M2.__default.eval ($LS $LZ) |expr##1_1_1_1_1_0_0@0| |st#0@@67| |env#0@@13|)) (|M2.__default.eval#canCall| |expr##1_1_1_1_1_0_0@0| |st#0@@67| |env#0@@13|)) (=> (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@6|) ($Box DatatypeTypeType |call5formal@st'#0@0@@6|)) (M2.__default.eval ($LS $LZ) |expr##1_1_1_1_1_0_0@0| |st#0@@67| |env#0@@13|)) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@6|) (=> (M2.__default.ValidState |call5formal@st'#0@0@@6|) (and (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@6|) (=> (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@6|) (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@6|) (|$IsA#M2.Reason| (M2.Expression.r |call4formal@expr'#0@0@@6|))))))))) (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0@@6|) ($Box DatatypeTypeType |call5formal@st'#0@0@@6|)) (M2.__default.eval ($LS ($LS $LZ)) |expr##1_1_1_1_1_0_0@0| |st#0@@67| |env#0@@13|))) (and (|M2.__default.ValidState#canCall| |call5formal@st'#0@0@@6|) (and (M2.__default.ValidState |call5formal@st'#0@0@@6|) (forall ((|p#1@@26| T@U) ) (!  (=> ($IsBox |p#1@@26| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@6|) |p#1@@26|) (M2.__default.WellFounded |p#1@@26|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4615|
 :pattern ( (M2.__default.WellFounded |p#1@@26|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@6|) |p#1@@26|))
))))) (and (and (|M2.__default.Extends#canCall| |st#0@@67| |call5formal@st'#0@0@@6|) (and (M2.__default.Extends |st#0@@67| |call5formal@st'#0@0@@6|) (and (and (|Set#Subset| (M2.__default.DomSt |st#0@@67|) (M2.__default.DomSt |call5formal@st'#0@0@@6|)) (forall ((|p#2@@21| T@U) ) (!  (=> ($IsBox |p#2@@21| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#2@@21|) (= (M2.__default.GetSt |p#2@@21| |call5formal@st'#0@0@@6|) (M2.__default.GetSt |p#2@@21| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |4618|
 :pattern ( (M2.__default.GetSt |p#2@@21| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#2@@21| |call5formal@st'#0@0@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#2@@21|))
))) (forall ((|p#3@@19| T@U) ) (!  (=> ($IsBox |p#3@@19| Tclass.M2.Path) (=> (and (not (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#3@@19|)) (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@6|) |p#3@@19|)) (= (M2.__default.GetSt |p#3@@19| |call5formal@st'#0@0@@6|) (M2.__default.Oracle |p#3@@19| |st#0@@67|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |4619|
 :pattern ( (M2.__default.Oracle |p#3@@19| |st#0@@67|))
 :pattern ( (M2.__default.GetSt |p#3@@19| |call5formal@st'#0@0@@6|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |call5formal@st'#0@0@@6|) |p#3@@19|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#3@@19|))
))))) (=> (M2.Expression.exprError_q |call4formal@expr'#0@0@@6|) (|M2.Reason#Equal| (M2.Expression.r |call4formal@expr'#0@0@@6|) |#M2.Reason.rValidity|)))) (and (and (and (= $Heap@@26 $Heap@3) (M2.Expression.exprInvocation_q |expr#0@@7|)) (and (= |args##1_1_1_1_1_0_0@0| (M2.Expression.args |expr#0@@7|)) (<= (DtRank |expr#0@@7|) (DtRank |expr#0@@7|)))) (and (and ($Is SeqType |call5formal@args'#0| (TSeq Tclass.M2.Expression)) ($IsAlloc SeqType |call5formal@args'#0| (TSeq Tclass.M2.Expression) $Heap@@26)) (and ($Is SetType |call6formal@sts'#0| (TSet Tclass.M2.State)) ($IsAlloc SetType |call6formal@sts'#0| (TSet Tclass.M2.State) $Heap@@26))))) (and (=> (= (ControlFlow 0 36) (- 0 39)) (=> (|M2.__default.ValidState#canCall| |st#0@@67|) (or (M2.__default.ValidState |st#0@@67|) (forall ((|p#0@@84| T@U) ) (!  (=> ($IsBox |p#0@@84| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@84|) (M2.__default.WellFounded |p#0@@84|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4648|
 :pattern ( (M2.__default.WellFounded |p#0@@84|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@84|))
))))) (=> (=> (|M2.__default.ValidState#canCall| |st#0@@67|) (or (M2.__default.ValidState |st#0@@67|) (forall ((|p#0@@85| T@U) ) (!  (=> ($IsBox |p#0@@85| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@85|) (M2.__default.WellFounded |p#0@@85|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4648|
 :pattern ( (M2.__default.WellFounded |p#0@@85|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#0@@85|))
)))) (and (=> (= (ControlFlow 0 36) (- 0 38)) (M2.__default.ValidEnv |env#0@@13|)) (=> (M2.__default.ValidEnv |env#0@@13|) (and (=> (= (ControlFlow 0 36) (- 0 37)) (forall ((|arg#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#1@@0| Tclass.M2.Expression) (=> (|Seq#Contains| |args##1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |arg#1@@0|)) (< (DtRank |arg#1@@0|) (DtRank |expr#0@@7|))))
 :qid |CloudMakeParallelBuildsdfy.416:14|
 :skolemid |4650|
 :pattern ( (|Seq#Contains| |args##1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |arg#1@@0|)))
))) (=> (forall ((|arg#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#1@@1| Tclass.M2.Expression) (=> (|Seq#Contains| |args##1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |arg#1@@1|)) (< (DtRank |arg#1@@1|) (DtRank |expr#0@@7|))))
 :qid |CloudMakeParallelBuildsdfy.416:14|
 :skolemid |4650|
 :pattern ( (|Seq#Contains| |args##1_1_1_1_1_0_0@0| ($Box DatatypeTypeType |arg#1@@1|)))
)) (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and ($Is SeqType |call5formal@args'#0@0| (TSeq Tclass.M2.Expression)) ($IsAlloc SeqType |call5formal@args'#0@0| (TSeq Tclass.M2.Expression) $Heap@4)) (and ($Is SetType |call6formal@sts'#0@0| (TSet Tclass.M2.State)) ($IsAlloc SetType |call6formal@sts'#0@0| (TSet Tclass.M2.State) $Heap@4))) (=> (and (and (and (and (and (|$IsA#M2.Tuple| (M2.__default.evalArgs ($LS $LZ) |expr#0@@7| |args##1_1_1_1_1_0_0@0| |st#0@@67| |env#0@@13|)) (|M2.__default.evalArgs#canCall| |expr#0@@7| |args##1_1_1_1_1_0_0@0| |st#0@@67| |env#0@@13|)) (=> (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box SeqType |call5formal@args'#0@0|) ($Box SetType |call6formal@sts'#0@0|)) (M2.__default.evalArgs ($LS $LZ) |expr#0@@7| |args##1_1_1_1_1_0_0@0| |st#0@@67| |env#0@@13|)) (forall ((|st'#1@@5| T@U) ) (!  (=> ($Is DatatypeTypeType |st'#1@@5| Tclass.M2.State) (and (=> (|Set#IsMember| |call6formal@sts'#0@0| ($Box DatatypeTypeType |st'#1@@5|)) (|M2.__default.ValidState#canCall| |st'#1@@5|)) (=> (=> (|Set#IsMember| |call6formal@sts'#0@0| ($Box DatatypeTypeType |st'#1@@5|)) (M2.__default.ValidState |st'#1@@5|)) (=> (|Set#IsMember| |call6formal@sts'#0@0| ($Box DatatypeTypeType |st'#1@@5|)) (|M2.__default.Extends#canCall| |st#0@@67| |st'#1@@5|)))))
 :qid |CloudMakeParallelBuildsdfy.419:14|
 :skolemid |4651|
 :pattern ( (M2.__default.Extends |st#0@@67| |st'#1@@5|))
 :pattern ( (M2.__default.ValidState |st'#1@@5|))
 :pattern ( (|Set#IsMember| |call6formal@sts'#0@0| ($Box DatatypeTypeType |st'#1@@5|)))
)))) (|M2.Tuple#Equal| (|#M2.Tuple.Pair| ($Box SeqType |call5formal@args'#0@0|) ($Box SetType |call6formal@sts'#0@0|)) (M2.__default.evalArgs ($LS ($LS $LZ)) |expr#0@@7| |args##1_1_1_1_1_0_0@0| |st#0@@67| |env#0@@13|))) (and (forall ((|st'#1@@6| T@U) ) (!  (=> ($Is DatatypeTypeType |st'#1@@6| Tclass.M2.State) (and (=> (|Set#IsMember| |call6formal@sts'#0@0| ($Box DatatypeTypeType |st'#1@@6|)) (M2.__default.ValidState |st'#1@@6|)) (=> (|Set#IsMember| |call6formal@sts'#0@0| ($Box DatatypeTypeType |st'#1@@6|)) (M2.__default.Extends |st#0@@67| |st'#1@@6|))))
 :qid |CloudMakeParallelBuildsdfy.419:14|
 :skolemid |4652|
 :pattern ( (M2.__default.Extends |st#0@@67| |st'#1@@6|))
 :pattern ( (M2.__default.ValidState |st'#1@@6|))
 :pattern ( (|Set#IsMember| |call6formal@sts'#0@0| ($Box DatatypeTypeType |st'#1@@6|)))
)) (= $Heap@3 $Heap@4))) (and (and (= |sts''#1_1_1_1_1_0_0@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |call5formal@st'#0@0@@6|)) |call6formal@sts'#0@0|)) ($IsAlloc SetType |sts''#1_1_1_1_1_0_0@0| (TSet Tclass.M2.State) $Heap@4)) (and (|M2.__default.Compatible#canCall| |sts''#1_1_1_1_1_0_0@0|) (|M2.__default.Compatible#canCall| |sts''#1_1_1_1_1_0_0@0|)))) (and (=> (= (ControlFlow 0 36) 33) anon67_Then_correct) (=> (= (ControlFlow 0 36) 11) anon67_Else_correct)))))))))))))))))))))
(let ((anon66_Else_correct  (=> (and (not (M2.Expression.exprInvocation_q |expr#0@@7|)) (= (ControlFlow 0 10) 2)) GeneratedUnifiedExit_correct)))
(let ((anon61_Else_correct  (=> (not (M2.Expression.exprOr_q |expr#0@@7|)) (and (=> (= (ControlFlow 0 42) 36) anon66_Then_correct) (=> (= (ControlFlow 0 42) 10) anon66_Else_correct)))))
(let ((anon56_Else_correct  (=> (not (M2.Expression.exprAnd_q |expr#0@@7|)) (and (=> (= (ControlFlow 0 64) 61) anon61_Then_correct) (=> (= (ControlFlow 0 64) 42) anon61_Else_correct)))))
(let ((anon51_Else_correct  (=> (not (M2.Expression.exprIf_q |expr#0@@7|)) (and (=> (= (ControlFlow 0 86) 83) anon56_Then_correct) (=> (= (ControlFlow 0 86) 64) anon56_Else_correct)))))
(let ((anon50_Else_correct  (=> (not (M2.Expression.exprIdentifier_q |expr#0@@7|)) (and (=> (= (ControlFlow 0 116) 113) anon51_Then_correct) (=> (= (ControlFlow 0 116) 86) anon51_Else_correct)))))
(let ((anon50_Then_correct  (=> (and (M2.Expression.exprIdentifier_q |expr#0@@7|) (= (ControlFlow 0 9) 2)) GeneratedUnifiedExit_correct)))
(let ((anon49_Else_correct  (=> (not (M2.__default.Value |expr#0@@7|)) (and (=> (= (ControlFlow 0 117) 9) anon50_Then_correct) (=> (= (ControlFlow 0 117) 116) anon50_Else_correct)))))
(let ((anon49_Then_correct  (=> (and (M2.__default.Value |expr#0@@7|) (= (ControlFlow 0 8) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#4| null $Heap@@26 alloc false)) ($IsAlloc DatatypeTypeType |expr#0@@7| Tclass.M2.Expression $Heap@@26)) (=> (and (and (and (and ($IsAlloc DatatypeTypeType |st#0@@67| Tclass.M2.State $Heap@@26) ($IsAllocBox |env#0@@13| Tclass.M2.Env $Heap@@26)) (and (M2.__default.ValidEnv |env#0@@13|) (|M2.__default.eval#canCall| |expr#0@@7| |st#0@@67| |env#0@@13|))) (and (and (M2.Tuple.Pair_q (M2.__default.eval ($LS $LZ) |expr#0@@7| |st#0@@67| |env#0@@13|)) (|M2.__default.eval#canCall| |expr#0@@7| |st#0@@67| |env#0@@13|)) (and (= |result#0@0| (M2.__default.eval ($LS $LZ) |expr#0@@7| |st#0@@67| |env#0@@13|)) (M2.Tuple.Pair_q |result#0@0|)))) (and (and (and (M2.Tuple.Pair_q |result#0@0|) (= |$rhs#0@0| ($Unbox DatatypeTypeType (M2.Tuple.fst |result#0@0|)))) (and (M2.Tuple.Pair_q |result#0@0|) (M2.Tuple.Pair_q |result#0@0|))) (and (and (= |$rhs#1@0| ($Unbox DatatypeTypeType (M2.Tuple.snd |result#0@0|))) ($IsAlloc DatatypeTypeType |expr#0@@7| Tclass.M2.Expression $Heap@@26)) (and (|M2.__default.Value#canCall| |expr#0@@7|) (|M2.__default.Value#canCall| |expr#0@@7|))))) (and (=> (= (ControlFlow 0 118) 8) anon49_Then_correct) (=> (= (ControlFlow 0 118) 117) anon49_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@26) ($IsHeapAnchor $Heap@@26)) (=> (and (and ($Is DatatypeTypeType |expr#0@@7| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |expr#0@@7| Tclass.M2.Expression $Heap@@26)) (|$IsA#M2.Expression| |expr#0@@7|)) (=> (and (and (and (and (and (and (and ($Is DatatypeTypeType |st#0@@67| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st#0@@67| Tclass.M2.State $Heap@@26)) (|$IsA#M2.State| |st#0@@67|)) (and ($IsBox |env#0@@13| Tclass.M2.Env) ($IsAllocBox |env#0@@13| Tclass.M2.Env $Heap@@26))) (and (and (and ($Is DatatypeTypeType |expr'#0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |expr'#0| Tclass.M2.Expression $Heap@@26)) (and ($Is DatatypeTypeType |st'#0@@9| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st'#0@@9| Tclass.M2.State $Heap@@26))) (and (and ($Is DatatypeTypeType |result#0@@0| (Tclass.M2.Tuple Tclass.M2.Expression Tclass.M2.State)) ($IsAlloc DatatypeTypeType |result#0@@0| (Tclass.M2.Tuple Tclass.M2.Expression Tclass.M2.State) $Heap@@26)) true))) (and (and (and (and ($Is DatatypeTypeType |cond'#1_1_0_0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |cond'#1_1_0_0| Tclass.M2.Expression $Heap@@26)) true) (and (and ($Is DatatypeTypeType |st'#1_1_0_0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st'#1_1_0_0| Tclass.M2.State $Heap@@26)) true)) (and (and (and ($Is DatatypeTypeType |_v7#1_1_0_0_0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |_v7#1_1_0_0_0| Tclass.M2.Expression $Heap@@26)) true) (and (and ($Is DatatypeTypeType |st''#1_1_0_0_0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st''#1_1_0_0_0| Tclass.M2.State $Heap@@26)) true)))) (and (and (and (and (and ($Is DatatypeTypeType |_v8#1_1_0_1_0_0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |_v8#1_1_0_1_0_0| Tclass.M2.Expression $Heap@@26)) true) (and (and ($Is DatatypeTypeType |st''#1_1_0_1_0_0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st''#1_1_0_1_0_0| Tclass.M2.State $Heap@@26)) true)) (and (and (and ($Is DatatypeTypeType |conj0'#1_1_1_0_0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |conj0'#1_1_1_0_0| Tclass.M2.Expression $Heap@@26)) true) (and (and ($Is DatatypeTypeType |st'#1_1_1_0_0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st'#1_1_1_0_0| Tclass.M2.State $Heap@@26)) true))) (and (and (and (and ($Is DatatypeTypeType |_v9#1_1_1_0_0_0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |_v9#1_1_1_0_0_0| Tclass.M2.Expression $Heap@@26)) true) (and (and ($Is DatatypeTypeType |st''#1_1_1_0_0_0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st''#1_1_1_0_0_0| Tclass.M2.State $Heap@@26)) true)) (and (and (and ($Is DatatypeTypeType |disj0'#1_1_1_1_0_0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |disj0'#1_1_1_1_0_0| Tclass.M2.Expression $Heap@@26)) true) (and (and ($Is DatatypeTypeType |st'#1_1_1_1_0_0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st'#1_1_1_1_0_0| Tclass.M2.State $Heap@@26)) true))))) (and (and (and (and (and (and ($Is DatatypeTypeType |_v10#1_1_1_1_0_1_0_0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |_v10#1_1_1_1_0_1_0_0| Tclass.M2.Expression $Heap@@26)) true) (and (and ($Is DatatypeTypeType |st''#1_1_1_1_0_1_0_0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st''#1_1_1_1_0_1_0_0| Tclass.M2.State $Heap@@26)) true)) (and (and (and ($Is DatatypeTypeType |fun'#1_1_1_1_1_0_0| Tclass.M2.Expression) ($IsAlloc DatatypeTypeType |fun'#1_1_1_1_1_0_0| Tclass.M2.Expression $Heap@@26)) true) (and (and ($Is DatatypeTypeType |st'#1_1_1_1_1_0_0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |st'#1_1_1_1_1_0_0| Tclass.M2.State $Heap@@26)) true))) (and (and (and (and ($Is SeqType |args'#1_1_1_1_1_0_0| (TSeq Tclass.M2.Expression)) ($IsAlloc SeqType |args'#1_1_1_1_1_0_0| (TSeq Tclass.M2.Expression) $Heap@@26)) true) (and (and ($Is SetType |sts'#1_1_1_1_1_0_0| (TSet Tclass.M2.State)) ($IsAlloc SetType |sts'#1_1_1_1_1_0_0| (TSet Tclass.M2.State) $Heap@@26)) true)) (and (and (and ($Is SetType |sts''#1_1_1_1_1_0_0| (TSet Tclass.M2.State)) ($IsAlloc SetType |sts''#1_1_1_1_1_0_0| (TSet Tclass.M2.State) $Heap@@26)) true) (and (and ($Is DatatypeTypeType |stCombined#1_1_1_1_1_0_0_0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |stCombined#1_1_1_1_1_0_0_0| Tclass.M2.State $Heap@@26)) true)))) (and (and (and (and (and ($Is SeqType |cmd#1_1_1_1_1_0_0_0_0_0_0| (TSeq TChar)) ($IsAlloc SeqType |cmd#1_1_1_1_1_0_0_0_0_0_0| (TSeq TChar) $Heap@@26)) true) (and (and ($Is SetType |deps#1_1_1_1_1_0_0_0_0_0_0| (TSet Tclass.M2.Path)) ($IsAlloc SetType |deps#1_1_1_1_1_0_0_0_0_0_0| (TSet Tclass.M2.Path) $Heap@@26)) true)) (and (and (and ($Is SetType |exp#1_1_1_1_1_0_0_0_0_0_0| (TSet (TSeq TChar))) ($IsAlloc SetType |exp#1_1_1_1_1_0_0_0_0_0_0| (TSet (TSeq TChar)) $Heap@@26)) true) (and (and ($Is DatatypeTypeType |resultExec#1_1_1_1_1_0_0_0_0_0_0| (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State)) ($IsAlloc DatatypeTypeType |resultExec#1_1_1_1_1_0_0_0_0_0_0| (Tclass.M2.Tuple (TSet Tclass.M2.Path) Tclass.M2.State) $Heap@@26)) true))) (and (and (and (and ($Is DatatypeTypeType |stExec#1_1_1_1_1_0_0_0_0_0_0| Tclass.M2.State) ($IsAlloc DatatypeTypeType |stExec#1_1_1_1_1_0_0_0_0_0_0| Tclass.M2.State $Heap@@26)) true) (= 11 $FunctionContextHeight)) (and (and (|M2.__default.ValidState#canCall| |st#0@@67|) (and (M2.__default.ValidState |st#0@@67|) (forall ((|p#4@@4| T@U) ) (!  (=> ($IsBox |p#4@@4| Tclass.M2.Path) (=> (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#4@@4|) (M2.__default.WellFounded |p#4@@4|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |4621|
 :pattern ( (M2.__default.WellFounded |p#4@@4|))
 :pattern ( (|Set#IsMember| (M2.__default.DomSt |st#0@@67|) |p#4@@4|))
)))) (and (M2.__default.ValidEnv |env#0@@13|) (= (ControlFlow 0 119) 118))))))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
