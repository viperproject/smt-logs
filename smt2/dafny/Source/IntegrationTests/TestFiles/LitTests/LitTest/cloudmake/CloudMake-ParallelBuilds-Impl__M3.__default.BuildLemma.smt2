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
(declare-fun Tagclass.M3.State () T@U)
(declare-fun Tagclass.M3.Path () T@U)
(declare-fun Tagclass.M3.Artifact () T@U)
(declare-fun Tagclass.M3.Env () T@U)
(declare-fun Tagclass.M3.Identifier () T@U)
(declare-fun Tagclass.M3.Expression () T@U)
(declare-fun Tagclass.M3.Literal () T@U)
(declare-fun Tagclass.M3.WFCertificate () T@U)
(declare-fun Tagclass.M3.Tuple () T@U)
(declare-fun Tagclass.M3.Primitive () T@U)
(declare-fun Tagclass.M3.Program () T@U)
(declare-fun Tagclass.M3.Statement () T@U)
(declare-fun |##M3.Artifact.ArtifactCons| () T@U)
(declare-fun |##M3.Path.InternalPath| () T@U)
(declare-fun |##M3.Path.ExternalPath| () T@U)
(declare-fun |##M3.Env.EnvCons| () T@U)
(declare-fun |##M3.WFCertificate.Cert| () T@U)
(declare-fun |##M3.State.StateCons| () T@U)
(declare-fun |##M3.Program.Program| () T@U)
(declare-fun |##M3.Statement.stmtVariable| () T@U)
(declare-fun |##M3.Statement.stmtReturn| () T@U)
(declare-fun |##M3.Expression.exprLiteral| () T@U)
(declare-fun |##M3.Expression.exprIdentifier| () T@U)
(declare-fun |##M3.Expression.exprIf| () T@U)
(declare-fun |##M3.Expression.exprAnd| () T@U)
(declare-fun |##M3.Expression.exprOr| () T@U)
(declare-fun |##M3.Expression.exprInvocation| () T@U)
(declare-fun |##M3.Expression.exprError| () T@U)
(declare-fun Tagclass.M3.Reason () T@U)
(declare-fun |##M3.Literal.litTrue| () T@U)
(declare-fun |##M3.Literal.litFalse| () T@U)
(declare-fun |##M3.Literal.litUndefined| () T@U)
(declare-fun |##M3.Literal.litNull| () T@U)
(declare-fun |##M3.Literal.litNumber| () T@U)
(declare-fun |##M3.Literal.litString| () T@U)
(declare-fun |##M3.Literal.litPrimitive| () T@U)
(declare-fun |##M3.Literal.litArrOfPaths| () T@U)
(declare-fun |##M3.Literal.litArrOfStrings| () T@U)
(declare-fun |##M3.Literal.litArray| () T@U)
(declare-fun |##M3.Primitive.primCreatePath| () T@U)
(declare-fun |##M3.Primitive.primExec| () T@U)
(declare-fun |##M3.Reason.rCompatibility| () T@U)
(declare-fun |##M3.Reason.rValidity| () T@U)
(declare-fun |##M3.Tuple.Pair| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$State () T@U)
(declare-fun tytagFamily$Path () T@U)
(declare-fun tytagFamily$Artifact () T@U)
(declare-fun tytagFamily$Env () T@U)
(declare-fun tytagFamily$Identifier () T@U)
(declare-fun tytagFamily$Expression () T@U)
(declare-fun tytagFamily$Literal () T@U)
(declare-fun tytagFamily$WFCertificate () T@U)
(declare-fun tytagFamily$Tuple () T@U)
(declare-fun tytagFamily$Primitive () T@U)
(declare-fun tytagFamily$Program () T@U)
(declare-fun tytagFamily$Statement () T@U)
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
(declare-fun M3.__default.Loc (T@U T@U T@U) T@U)
(declare-fun |M3.__default.Loc#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.M3.Path () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun M3.__default.Combine (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |M3.__default.Combine#canCall| (T@U) Bool)
(declare-fun Tclass.M3.State () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |$let#40$canCall| (T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |$let#40_st| (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |M3.__default.Union#canCall| (T@U T@U) Bool)
(declare-fun M3.__default.Union (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun M3.Env.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M3.Identifier () T@U)
(declare-fun Tclass.M3.Expression () T@U)
(declare-fun M3.Env.EnvCons_q (T@U) Bool)
(declare-fun Tclass.M3.Env () T@U)
(declare-fun M3.State.m (T@U) T@U)
(declare-fun Tclass.M3.Artifact () T@U)
(declare-fun M3.State.StateCons_q (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun M3.__default.Arity (T@U) Int)
(declare-fun |M3.__default.Arity#canCall| (T@U) Bool)
(declare-fun Tclass.M3.Primitive () T@U)
(declare-fun M3.Primitive.primCreatePath_q (T@U) Bool)
(declare-fun M3.__default.LocInv__Cmd (T@U) T@U)
(declare-fun |M3.__default.LocInv__Cmd#canCall| (T@U) Bool)
(declare-fun M3.__default.LocInv__Exp (T@U) T@U)
(declare-fun |M3.__default.LocInv__Exp#canCall| (T@U) Bool)
(declare-fun |#M3.Statement.stmtVariable| (T@U T@U) T@U)
(declare-fun Tclass.M3.Statement () T@U)
(declare-fun |#M3.Expression.exprAnd| (T@U T@U) T@U)
(declare-fun |#M3.Expression.exprOr| (T@U T@U) T@U)
(declare-fun M3.__default.ValidArgs (T@U T@U T@U) Bool)
(declare-fun |M3.__default.ValidArgs#canCall| (T@U T@U T@U) Bool)
(declare-fun M3.Primitive.primExec_q (T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun M3.Expression.exprLiteral_q (T@U) Bool)
(declare-fun M3.Literal.litString_q (T@U) Bool)
(declare-fun M3.Expression.lit (T@U) T@U)
(declare-fun M3.Literal.litArrOfPaths_q (T@U) Bool)
(declare-fun M3.Literal.litArrOfStrings_q (T@U) Bool)
(declare-fun |M3.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun M3.Literal.paths (T@U) T@U)
(declare-fun M3.__default.DomSt (T@U) T@U)
(declare-fun |M3.__default.Pre#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M3.Literal.str (T@U) T@U)
(declare-fun M3.Literal.strs (T@U) T@U)
(declare-fun M3.__default.Pre (T@U T@U T@U T@U) Bool)
(declare-fun |#M3.Path.InternalPath| (T@U T@U T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun M3.__default.Restrict (T@U T@U) T@U)
(declare-fun |M3.__default.Restrict#canCall| (T@U T@U) Bool)
(declare-fun M3.__default.GetSt (T@U T@U) T@U)
(declare-fun |M3.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#16| (T@U T@U T@U) T@U)
(declare-fun |lambda#17| (T@U) T@U)
(declare-fun |#M3.Expression.exprInvocation| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun M3.__default.PickOne (T@U T@U) T@U)
(declare-fun |M3.__default.PickOne#canCall| (T@U T@U) Bool)
(declare-fun M3.__default.execOne (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |M3.__default.execOne#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun M3.Tuple.snd (T@U) T@U)
(declare-fun |M3.__default.RunTool#canCall| (T@U T@U T@U) Bool)
(declare-fun |M3.__default.SetSt#canCall| (T@U T@U T@U) Bool)
(declare-fun M3.__default.RunTool (T@U T@U T@U) T@U)
(declare-fun |#M3.Tuple.Pair| (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun M3.Tuple.fst (T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun M3.__default.SetSt (T@U T@U T@U) T@U)
(declare-fun |#M3.Expression.exprIf| (T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |$IsA#M3.Artifact| (T@U) Bool)
(declare-fun M3.Artifact.ArtifactCons_q (T@U) Bool)
(declare-fun |$IsA#M3.State| (T@U) Bool)
(declare-fun |$IsA#M3.Program| (T@U) Bool)
(declare-fun M3.Program.Program_q (T@U) Bool)
(declare-fun |$IsA#M3.Tuple| (T@U) Bool)
(declare-fun M3.Tuple.Pair_q (T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun M3.__default.do (T@U T@U T@U T@U) T@U)
(declare-fun |M3.__default.do#canCall| (T@U T@U T@U) Bool)
(declare-fun M3.__default.Legal (T@U) Bool)
(declare-fun M3.__default.ValidEnv (T@U) Bool)
(declare-fun M3.Statement.stmtVariable_q (T@U) Bool)
(declare-fun |M3.__default.eval#canCall| (T@U T@U T@U) Bool)
(declare-fun M3.Statement.expr (T@U) T@U)
(declare-fun M3.__default.eval (T@U T@U T@U T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |M3.__default.Value#canCall| (T@U) Bool)
(declare-fun M3.__default.Value (T@U) Bool)
(declare-fun |M3.__default.SetEnv#canCall| (T@U T@U T@U) Bool)
(declare-fun M3.Statement.id (T@U) T@U)
(declare-fun M3.__default.SetEnv (T@U T@U T@U) T@U)
(declare-fun |M3.__default.Legal#canCall| (T@U) Bool)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun M3.Statement.ret (T@U) T@U)
(declare-fun |#M3.Expression.exprError| (T@U) T@U)
(declare-fun |#M3.Reason.rValidity| () T@U)
(declare-fun Tclass.M3.Tuple (T@U T@U) T@U)
(declare-fun |M3.Literal#Equal| (T@U T@U) Bool)
(declare-fun M3.Literal.litNumber_q (T@U) Bool)
(declare-fun M3.Literal.num (T@U) Int)
(declare-fun |#M3.Path.ExternalPath| (T@U) T@U)
(declare-fun |#M3.Program.Program| (T@U) T@U)
(declare-fun |#M3.Literal.litString| (T@U) T@U)
(declare-fun |#M3.Literal.litArray| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M3.Path.cmd (T@U) T@U)
(declare-fun M3.Path.deps (T@U) T@U)
(declare-fun M3.Path.exp (T@U) T@U)
(declare-fun M3.Expression.cond (T@U) T@U)
(declare-fun M3.Expression.ifTrue (T@U) T@U)
(declare-fun M3.Expression.ifFalse (T@U) T@U)
(declare-fun M3.__default.GetEnv (T@U T@U) T@U)
(declare-fun |M3.__default.GetEnv#canCall| (T@U T@U) Bool)
(declare-fun |$let#24$canCall| () Bool)
(declare-fun |$let#24_lit| () T@U)
(declare-fun |#M3.Expression.exprLiteral| (T@U) T@U)
(declare-fun |$let#27_x| (T@U T@U) T@U)
(declare-fun |$let#27$canCall| (T@U T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun M3.__default.Oracle (T@U T@U) T@U)
(declare-fun |M3.__default.Oracle#canCall| (T@U T@U) Bool)
(declare-fun M3.__default.CollectDependencies (T@U T@U T@U T@U T@U) T@U)
(declare-fun M3.__default.evalArgs (T@U T@U T@U T@U T@U) T@U)
(declare-fun |M3.__default.EmptyEnv#canCall| () Bool)
(declare-fun M3.__default.EmptyEnv () T@U)
(declare-fun |#M3.Env.EnvCons| (T@U) T@U)
(declare-fun |Map#Empty| () T@U)
(declare-fun |M3.Tuple#Equal| (T@U T@U) Bool)
(declare-fun |#M3.Literal.litTrue| () T@U)
(declare-fun |#M3.Literal.litFalse| () T@U)
(declare-fun |#M3.Literal.litUndefined| () T@U)
(declare-fun |#M3.Literal.litNull| () T@U)
(declare-fun |#M3.Primitive.primCreatePath| () T@U)
(declare-fun |#M3.Primitive.primExec| () T@U)
(declare-fun |#M3.Reason.rCompatibility| () T@U)
(declare-fun |M3.Artifact#Equal| (T@U T@U) Bool)
(declare-fun M3.__default.FindCert (T@U T@U) T@U)
(declare-fun |M3.__default.FindCert#canCall| (T@U T@U) Bool)
(declare-fun Tclass.M3.WFCertificate () T@U)
(declare-fun M3.WFCertificate.p (T@U) T@U)
(declare-fun |M3.Path#Equal| (T@U T@U) Bool)
(declare-fun |$let#36$canCall| (T@U T@U) Bool)
(declare-fun |$let#36_c| (T@U T@U) T@U)
(declare-fun M3.__default.OracleWF (T@U T@U T@U T@U) T@U)
(declare-fun |M3.__default.OracleWF#canCall| (T@U T@U T@U) Bool)
(declare-fun M3.__default.CheckWellFounded (T@U T@U T@U) Bool)
(declare-fun |M3.__default.LocInv__Deps#canCall| (T@U) Bool)
(declare-fun M3.__default.LocInv__Deps (T@U) T@U)
(declare-fun |M3.__default.CollectDependencies#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |#M3.WFCertificate.Cert| (T@U T@U) T@U)
(declare-fun M3.__default.GetCert (T@U) T@U)
(declare-fun |M3.__default.GetCert#canCall| (T@U) Bool)
(declare-fun M3.__default.WellFounded (T@U) Bool)
(declare-fun |$let#30$canCall| (T@U) Bool)
(declare-fun |$let#30_c| (T@U) T@U)
(declare-fun M3.__default.build (T@U T@U) T@U)
(declare-fun |M3.__default.build#canCall| (T@U T@U) Bool)
(declare-fun Tclass.M3.Program () T@U)
(declare-fun M3.Program.stmts (T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun M3.WFCertificate.Cert_q (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |$let#0$canCall| () Bool)
(declare-fun |$let#0_a| () T@U)
(declare-fun Tclass.M3.Literal () T@U)
(declare-fun Tclass.M3.Reason () T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |M3.__default.WellFounded#canCall| (T@U) Bool)
(declare-fun |M3.__default.CheckWellFounded#canCall| (T@U T@U) Bool)
(declare-fun M3.Path.InternalPath_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |#M3.State.StateCons| (T@U) T@U)
(declare-fun |$IsA#M3.Path| (T@U) Bool)
(declare-fun M3.WFCertificate.certs (T@U) T@U)
(declare-fun |M3.__default.evalArgs#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |M3.Primitive#Equal| (T@U T@U) Bool)
(declare-fun |M3.Reason#Equal| (T@U T@U) Bool)
(declare-fun M3.__default.OracleArbitrary (T@U) T@U)
(declare-fun |M3.__default.OracleArbitrary#canCall| (T@U) Bool)
(declare-fun |$let#33$canCall| () Bool)
(declare-fun |$let#33_a| () T@U)
(declare-fun |M3.__default.ValidEnv#canCall| (T@U) Bool)
(declare-fun M3.Path.ExternalPath_q (T@U) Bool)
(declare-fun M3.Statement.stmtReturn_q (T@U) Bool)
(declare-fun M3.Expression.exprIdentifier_q (T@U) Bool)
(declare-fun M3.Expression.exprIf_q (T@U) Bool)
(declare-fun M3.Expression.exprAnd_q (T@U) Bool)
(declare-fun M3.Expression.exprOr_q (T@U) Bool)
(declare-fun M3.Expression.exprInvocation_q (T@U) Bool)
(declare-fun M3.Expression.exprError_q (T@U) Bool)
(declare-fun M3.Literal.litTrue_q (T@U) Bool)
(declare-fun M3.Literal.litFalse_q (T@U) Bool)
(declare-fun M3.Literal.litUndefined_q (T@U) Bool)
(declare-fun M3.Literal.litNull_q (T@U) Bool)
(declare-fun M3.Literal.litPrimitive_q (T@U) Bool)
(declare-fun M3.Literal.litArray_q (T@U) Bool)
(declare-fun M3.Reason.rCompatibility_q (T@U) Bool)
(declare-fun M3.Reason.rValidity_q (T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun M3.__default.exec (T@U T@U T@U T@U) T@U)
(declare-fun |M3.__default.exec#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun M3.Expression.id (T@U) T@U)
(declare-fun |$IsA#M3.Literal| (T@U) Bool)
(declare-fun M3.Expression.conj0 (T@U) T@U)
(declare-fun M3.Expression.conj1 (T@U) T@U)
(declare-fun M3.Expression.disj0 (T@U) T@U)
(declare-fun M3.Expression.disj1 (T@U) T@U)
(declare-fun M3.Expression.fun (T@U) T@U)
(declare-fun M3.Expression.args (T@U) T@U)
(declare-fun |M3.__default.Compatible#canCall| (T@U) Bool)
(declare-fun M3.__default.Compatible (T@U) Bool)
(declare-fun M3.Literal.prim (T@U) T@U)
(declare-fun |#M3.Literal.litArrOfPaths| (T@U) T@U)
(declare-fun |#M3.Artifact.ArtifactCons| (Int) T@U)
(declare-fun |#M3.Statement.stmtReturn| (T@U) T@U)
(declare-fun |#M3.Expression.exprIdentifier| (T@U) T@U)
(declare-fun |#M3.Literal.litNumber| (Int) T@U)
(declare-fun |#M3.Literal.litPrimitive| (T@U) T@U)
(declare-fun |#M3.Literal.litArrOfStrings| (T@U) T@U)
(declare-fun M3.Artifact._h11 (T@U) Int)
(declare-fun M3.__default.ValidState (T@U) Bool)
(declare-fun |M3.__default.ValidState#canCall| (T@U) Bool)
(declare-fun |$let#3$canCall| () Bool)
(declare-fun |$let#3_cmd| () T@U)
(declare-fun |$let#10$canCall| () Bool)
(declare-fun |$let#10_deps| () T@U)
(declare-fun |$let#17$canCall| () Bool)
(declare-fun |$let#17_exp| () T@U)
(declare-fun M3.Path._h13 (T@U) T@U)
(declare-fun M3.Literal.arr (T@U) T@U)
(declare-fun |$IsA#M3.Reason| (T@U) Bool)
(declare-fun |lambda#26| (T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U) T@U)
(declare-fun charType () T@T)
(declare-fun M3.__default.Extends (T@U T@U) Bool)
(declare-fun |M3.__default.Extends#canCall| (T@U T@U) Bool)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Tclass.M3.Tuple_0 (T@U) T@U)
(declare-fun Tclass.M3.Tuple_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun M3.Expression.r (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M3.State Tagclass.M3.Path Tagclass.M3.Artifact Tagclass.M3.Env Tagclass.M3.Identifier Tagclass.M3.Expression Tagclass.M3.Literal Tagclass.M3.WFCertificate Tagclass.M3.Tuple Tagclass.M3.Primitive Tagclass.M3.Program Tagclass.M3.Statement |##M3.Artifact.ArtifactCons| |##M3.Path.InternalPath| |##M3.Path.ExternalPath| |##M3.Env.EnvCons| |##M3.WFCertificate.Cert| |##M3.State.StateCons| |##M3.Program.Program| |##M3.Statement.stmtVariable| |##M3.Statement.stmtReturn| |##M3.Expression.exprLiteral| |##M3.Expression.exprIdentifier| |##M3.Expression.exprIf| |##M3.Expression.exprAnd| |##M3.Expression.exprOr| |##M3.Expression.exprInvocation| |##M3.Expression.exprError| Tagclass.M3.Reason |##M3.Literal.litTrue| |##M3.Literal.litFalse| |##M3.Literal.litUndefined| |##M3.Literal.litNull| |##M3.Literal.litNumber| |##M3.Literal.litString| |##M3.Literal.litPrimitive| |##M3.Literal.litArrOfPaths| |##M3.Literal.litArrOfStrings| |##M3.Literal.litArray| |##M3.Primitive.primCreatePath| |##M3.Primitive.primExec| |##M3.Reason.rCompatibility| |##M3.Reason.rValidity| |##M3.Tuple.Pair| |tytagFamily$_tuple#2| tytagFamily$State tytagFamily$Path tytagFamily$Artifact tytagFamily$Env tytagFamily$Identifier tytagFamily$Expression tytagFamily$Literal tytagFamily$WFCertificate tytagFamily$Tuple tytagFamily$Primitive tytagFamily$Program tytagFamily$Statement tytagFamily$Reason)
)
(assert  (and (and (= (Ctor SeqType) 3) (= (Ctor SetType) 4)) (= (Ctor DatatypeTypeType) 5)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0| T@U) (|deps#0| T@U) (|exp#0| T@U) ) (!  (=> (or (|M3.__default.Loc#canCall| |cmd#0| |deps#0| |exp#0|) (and (< 1 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0| (TSeq TChar)) ($Is SetType |deps#0| (TSet Tclass.M3.Path))) ($Is SeqType |exp#0| (TSeq TChar))))) ($Is DatatypeTypeType (M3.__default.Loc |cmd#0| |deps#0| |exp#0|) Tclass.M3.Path))
 :qid |CloudMakeParallelBuildsdfy.154:22|
 :skolemid |5679|
 :pattern ( (M3.__default.Loc |cmd#0| |deps#0| |exp#0|))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|sts#0| T@U) ) (!  (=> (or (|M3.__default.Combine#canCall| |sts#0|) (and (< 5 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |sts#0| (TSet Tclass.M3.State))) (not (|Set#Equal| |sts#0| |Set#Empty|))))) (and (and (|$let#40$canCall| |sts#0|) (=> (not (|Set#Equal| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#40_st| |sts#0|))))) (and (|M3.__default.Combine#canCall| (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#40_st| |sts#0|))))) (|M3.__default.Union#canCall| (|$let#40_st| |sts#0|) (M3.__default.Combine $ly (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#40_st| |sts#0|))))))))) (= (M3.__default.Combine ($LS $ly) |sts#0|) (let ((|st#0| (|$let#40_st| |sts#0|)))
(ite (|Set#Equal| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0|))) |st#0| (M3.__default.Union |st#0| (M3.__default.Combine $ly (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0|))))))))))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |6522|
 :pattern ( (M3.__default.Combine ($LS $ly) |sts#0|) ($IsGoodHeap $Heap))
))))
(assert (= (Ctor MapType) 6))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M3.Env.EnvCons_q d) ($IsAlloc DatatypeTypeType d Tclass.M3.Env $h))) ($IsAlloc MapType (M3.Env.m d) (TMap Tclass.M3.Identifier Tclass.M3.Expression) $h))
 :qid |unknown.0:0|
 :skolemid |6910|
 :pattern ( ($IsAlloc MapType (M3.Env.m d) (TMap Tclass.M3.Identifier Tclass.M3.Expression) $h))
)))
(assert (forall ((d@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (M3.State.StateCons_q d@@0) ($IsAlloc DatatypeTypeType d@@0 Tclass.M3.State $h@@0))) ($IsAlloc MapType (M3.State.m d@@0) (TMap Tclass.M3.Path Tclass.M3.Artifact) $h@@0))
 :qid |unknown.0:0|
 :skolemid |6942|
 :pattern ( ($IsAlloc MapType (M3.State.m d@@0) (TMap Tclass.M3.Path Tclass.M3.Artifact) $h@@0))
)))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0| T@U) ) (!  (=> (or (|M3.__default.Arity#canCall| |prim#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0| Tclass.M3.Primitive))) (= (M3.__default.Arity |prim#0|) (ite (M3.Primitive.primCreatePath_q |prim#0|) 1 3)))
 :qid |CloudMakeParallelBuildsdfy.282:24|
 :skolemid |6743|
 :pattern ( (M3.__default.Arity |prim#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0| T@U) ) (!  (=> (or (|M3.__default.LocInv__Cmd#canCall| |p#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0| Tclass.M3.Path))) ($Is SeqType (M3.__default.LocInv__Cmd |p#0|) (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.636:29|
 :skolemid |5683|
 :pattern ( (M3.__default.LocInv__Cmd |p#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@0| T@U) ) (!  (=> (or (|M3.__default.LocInv__Exp#canCall| |p#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@0| Tclass.M3.Path))) ($Is SeqType (M3.__default.LocInv__Exp |p#0@@0|) (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.638:29|
 :skolemid |5691|
 :pattern ( (M3.__default.LocInv__Exp |p#0@@0|))
))))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Statement.stmtVariable| |a#60#0#0| |a#60#1#0|) Tclass.M3.Statement)  (and ($Is DatatypeTypeType |a#60#0#0| Tclass.M3.Identifier) ($Is DatatypeTypeType |a#60#1#0| Tclass.M3.Expression)))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |6971|
 :pattern ( ($Is DatatypeTypeType (|#M3.Statement.stmtVariable| |a#60#0#0| |a#60#1#0|) Tclass.M3.Statement))
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
(assert  (=> (<= 7 $FunctionContextHeight) (forall ((|prim#0@@0| T@U) (|args#0| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|M3.__default.ValidArgs#canCall| |prim#0@@0| |args#0| |st#0@@0|) (and (< 7 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@0| Tclass.M3.Primitive) ($Is SeqType |args#0| (TSeq Tclass.M3.Expression))) ($Is DatatypeTypeType |st#0@@0| Tclass.M3.State)) (and (=> (M3.Primitive.primExec_q |prim#0@@0|) (= (|Seq#Length| |args#0|) (LitInt 3))) (=> (M3.Primitive.primCreatePath_q |prim#0@@0|) (= (|Seq#Length| |args#0|) (LitInt 1))))))) (and (=> (not (M3.Primitive.primCreatePath_q |prim#0@@0|)) (let ((|exps#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0| (LitInt 2)))))
(let ((|deps#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0| (LitInt 1)))))
(let ((|cmd#1| ($Unbox DatatypeTypeType (|Seq#Index| |args#0| (LitInt 0)))))
 (=> (M3.Expression.exprLiteral_q |cmd#1|) (=> (M3.Literal.litString_q (M3.Expression.lit |cmd#1|)) (=> (M3.Expression.exprLiteral_q |deps#1|) (=> (M3.Literal.litArrOfPaths_q (M3.Expression.lit |deps#1|)) (=> (M3.Expression.exprLiteral_q |exps#1|) (=> (M3.Literal.litArrOfStrings_q (M3.Expression.lit |exps#1|)) (and (|M3.__default.DomSt#canCall| |st#0@@0|) (=> (|Set#Subset| (M3.Literal.paths (M3.Expression.lit |deps#1|)) (M3.__default.DomSt |st#0@@0|)) (|M3.__default.Pre#canCall| (M3.Literal.str (M3.Expression.lit |cmd#1|)) (M3.Literal.paths (M3.Expression.lit |deps#1|)) (M3.Literal.strs (M3.Expression.lit |exps#1|)) |st#0@@0|))))))))))))) (= (M3.__default.ValidArgs |prim#0@@0| |args#0| |st#0@@0|) (ite (M3.Primitive.primCreatePath_q |prim#0@@0|) false (let ((|exps#0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0| (LitInt 2)))))
(let ((|deps#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0| (LitInt 1)))))
(let ((|cmd#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |args#0| (LitInt 0)))))
 (and (and (and (and (and (and (and (M3.Expression.exprLiteral_q |cmd#0@@0|) (M3.Literal.litString_q (M3.Expression.lit |cmd#0@@0|))) (M3.Expression.exprLiteral_q |deps#0@@0|)) (M3.Literal.litArrOfPaths_q (M3.Expression.lit |deps#0@@0|))) (M3.Expression.exprLiteral_q |exps#0|)) (M3.Literal.litArrOfStrings_q (M3.Expression.lit |exps#0|))) (|Set#Subset| (M3.Literal.paths (M3.Expression.lit |deps#0@@0|)) (M3.__default.DomSt |st#0@@0|))) (M3.__default.Pre (M3.Literal.str (M3.Expression.lit |cmd#0@@0|)) (M3.Literal.paths (M3.Expression.lit |deps#0@@0|)) (M3.Literal.strs (M3.Expression.lit |exps#0|)) |st#0@@0|)))))))))
 :qid |CloudMakeParallelBuildsdfy.289:29|
 :skolemid |6747|
 :pattern ( (M3.__default.ValidArgs |prim#0@@0| |args#0| |st#0@@0|))
))))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#15#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#15#0#0| i))) (DtRank (|#M3.Path.InternalPath| |a#15#0#0| |a#15#1#0| |a#15#2#0|))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6882|
 :pattern ( (|Seq#Index| |a#15#0#0| i) (|#M3.Path.InternalPath| |a#15#0#0| |a#15#1#0| |a#15#2#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#20#2#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#20#2#0| i@@0))) (DtRank (|#M3.Path.InternalPath| |a#20#0#0| |a#20#1#0| |a#20#2#0|))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6887|
 :pattern ( (|Seq#Index| |a#20#2#0| i@@0) (|#M3.Path.InternalPath| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |5084|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|paths#0| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|M3.__default.Restrict#canCall| |paths#0| |st#0@@1|) (and (< 4 $FunctionContextHeight) (and ($Is SetType |paths#0| (TSet Tclass.M3.Path)) ($Is DatatypeTypeType |st#0@@1| Tclass.M3.State)))) (and (forall ((|p#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@1| Tclass.M3.Path) (and (=> (|Set#IsMember| |paths#0| ($Box DatatypeTypeType |p#0@@1|)) (|M3.__default.DomSt#canCall| |st#0@@1|)) (=> (and (|Set#IsMember| |paths#0| ($Box DatatypeTypeType |p#0@@1|)) (|Set#IsMember| (M3.__default.DomSt |st#0@@1|) ($Box DatatypeTypeType |p#0@@1|))) (|M3.__default.GetSt#canCall| |p#0@@1| |st#0@@1|))))
 :qid |CloudMakeParallelBuildsdfy.475:9|
 :skolemid |5734|
 :pattern ( (M3.__default.GetSt |p#0@@1| |st#0@@1|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@1|) ($Box DatatypeTypeType |p#0@@1|)))
 :pattern ( (|Set#IsMember| |paths#0| ($Box DatatypeTypeType |p#0@@1|)))
)) (= (M3.__default.Restrict |paths#0| |st#0@@1|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#16| Tclass.M3.Path |paths#0| (M3.__default.DomSt |st#0@@1|))) (|lambda#17| |st#0@@1|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.473:27|
 :skolemid |5735|
 :pattern ( (M3.__default.Restrict |paths#0| |st#0@@1|))
))))
(assert (forall ((|a#117#0#0| T@U) (|a#117#1#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#117#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#117#1#0| i@@1))) (DtRank (|#M3.Expression.exprInvocation| |a#117#0#0| |a#117#1#0|))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |7062|
 :pattern ( (|Seq#Index| |a#117#1#0| i@@1) (|#M3.Expression.exprInvocation| |a#117#0#0| |a#117#1#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (M3._default.PickOne$T T@U) (|s#0| T@U) ) (!  (=> (and (or (|M3.__default.PickOne#canCall| M3._default.PickOne$T |s#0|) (and (< 0 $FunctionContextHeight) (and (and ($Is SetType |s#0| (TSet M3._default.PickOne$T)) ($IsAlloc SetType |s#0| (TSet M3._default.PickOne$T) $Heap@@0)) (not (|Set#Equal| |s#0| |Set#Empty|))))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (M3.__default.PickOne M3._default.PickOne$T |s#0|) M3._default.PickOne$T $Heap@@0))
 :qid |CloudMakeParallelBuildsdfy.483:18|
 :skolemid |5750|
 :pattern ( ($IsAllocBox (M3.__default.PickOne M3._default.PickOne$T |s#0|) M3._default.PickOne$T $Heap@@0))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@0 T@U) (|cmd#0@@1| T@U) (|deps#0@@1| T@U) (|restrictedState#0| T@U) (|exps#0@@0| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|M3.__default.execOne#canCall| |cmd#0@@1| |deps#0@@1| |restrictedState#0| |exps#0@@0| |st#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@1| (TSeq TChar)) ($Is SetType |deps#0@@1| (TSet Tclass.M3.Path))) ($Is MapType |restrictedState#0| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SetType |exps#0@@0| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@2| Tclass.M3.State)))) (and (=> (not (|Set#Equal| |exps#0@@0| |Set#Empty|)) (and (|M3.__default.PickOne#canCall| (TSeq TChar) |exps#0@@0|) (let ((|exp#0@@0| ($Unbox SeqType (M3.__default.PickOne (TSeq TChar) |exps#0@@0|))))
 (and (|M3.__default.execOne#canCall| |cmd#0@@1| |deps#0@@1| |restrictedState#0| (|Set#Difference| |exps#0@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@0|))) |st#0@@2|) (let ((|st'#0| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.execOne $ly@@0 |cmd#0@@1| |deps#0@@1| |restrictedState#0| (|Set#Difference| |exps#0@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@0|))) |st#0@@2|)))))
 (and (|M3.__default.Loc#canCall| |cmd#0@@1| |deps#0@@1| |exp#0@@0|) (let ((|p#0@@2| (M3.__default.Loc |cmd#0@@1| |deps#0@@1| |exp#0@@0|)))
 (and (|M3.__default.DomSt#canCall| |st'#0|) (=> (not (|Set#IsMember| (M3.__default.DomSt |st'#0|) ($Box DatatypeTypeType |p#0@@2|))) (and (|M3.__default.RunTool#canCall| |cmd#0@@1| |restrictedState#0| |exp#0@@0|) (|M3.__default.SetSt#canCall| |p#0@@2| (M3.__default.RunTool |cmd#0@@1| |restrictedState#0| |exp#0@@0|) |st'#0|))))))))))) (= (M3.__default.execOne ($LS $ly@@0) |cmd#0@@1| |deps#0@@1| |restrictedState#0| |exps#0@@0| |st#0@@2|) (ite (|Set#Equal| |exps#0@@0| |Set#Empty|) (|#M3.Tuple.Pair| ($Box SetType (Lit SetType |Set#Empty|)) ($Box DatatypeTypeType |st#0@@2|)) (let ((|exp#0@@1| ($Unbox SeqType (M3.__default.PickOne (TSeq TChar) |exps#0@@0|))))
(let ((|st'#0@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.execOne $ly@@0 |cmd#0@@1| |deps#0@@1| |restrictedState#0| (|Set#Difference| |exps#0@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@1|))) |st#0@@2|)))))
(let ((|paths#0@@0| ($Unbox SetType (M3.Tuple.fst (M3.__default.execOne $ly@@0 |cmd#0@@1| |deps#0@@1| |restrictedState#0| (|Set#Difference| |exps#0@@0| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#0@@1|))) |st#0@@2|)))))
(let ((|p#0@@3| (M3.__default.Loc |cmd#0@@1| |deps#0@@1| |exp#0@@1|)))
(|#M3.Tuple.Pair| ($Box SetType (|Set#Union| |paths#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |p#0@@3|)))) ($Box DatatypeTypeType (ite (|Set#IsMember| (M3.__default.DomSt |st'#0@@0|) ($Box DatatypeTypeType |p#0@@3|)) |st'#0@@0| (M3.__default.SetSt |p#0@@3| (M3.__default.RunTool |cmd#0@@1| |restrictedState#0| |exp#0@@1|) |st'#0@@0|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |5830|
 :pattern ( (M3.__default.execOne ($LS $ly@@0) |cmd#0@@1| |deps#0@@1| |restrictedState#0| |exps#0@@0| |st#0@@2|))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |5085|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |5089|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |5090|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((|a#86#0#0| T@U) (|a#86#1#0| T@U) (|a#86#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Expression.exprIf| |a#86#0#0| |a#86#1#0| |a#86#2#0|) Tclass.M3.Expression)  (and (and ($Is DatatypeTypeType |a#86#0#0| Tclass.M3.Expression) ($Is DatatypeTypeType |a#86#1#0| Tclass.M3.Expression)) ($Is DatatypeTypeType |a#86#2#0| Tclass.M3.Expression)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7016|
 :pattern ( ($Is DatatypeTypeType (|#M3.Expression.exprIf| |a#86#0#0| |a#86#1#0| |a#86#2#0|) Tclass.M3.Expression))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@3| T@U) ) (!  (=> (or (|M3.__default.DomSt#canCall| |st#0@@3|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@3| Tclass.M3.State))) (and (M3.State.StateCons_q |st#0@@3|) (= (M3.__default.DomSt |st#0@@3|) (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Map#Domain| (M3.State.m |st#0@@3|)))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |6478|
 :pattern ( (M3.__default.DomSt |st#0@@3|))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (|$IsA#M3.Artifact| d@@1) (M3.Artifact.ArtifactCons_q d@@1))
 :qid |unknown.0:0|
 :skolemid |6855|
 :pattern ( (|$IsA#M3.Artifact| d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (|$IsA#M3.State| d@@2) (M3.State.StateCons_q d@@2))
 :qid |unknown.0:0|
 :skolemid |6948|
 :pattern ( (|$IsA#M3.State| d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#M3.Program| d@@3) (M3.Program.Program_q d@@3))
 :qid |unknown.0:0|
 :skolemid |6963|
 :pattern ( (|$IsA#M3.Program| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (|$IsA#M3.Tuple| d@@4) (M3.Tuple.Pair_q d@@4))
 :qid |unknown.0:0|
 :skolemid |7197|
 :pattern ( (|$IsA#M3.Tuple| d@@4))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |5083|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((s T@U) (v T@U) (x@@5 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@5)  (or (= v x@@5) (|Seq#Contains| s x@@5)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |5189|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@5))
)))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($ly@@1 T@U) (|stmts#0| T@U) (|st#0@@4| T@U) (|env#0| T@U) ) (!  (=> (or (|M3.__default.do#canCall| (Lit SeqType |stmts#0|) (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |env#0|)) (and (< 9 $FunctionContextHeight) (and (and (and ($Is SeqType |stmts#0| (TSeq Tclass.M3.Statement)) ($Is DatatypeTypeType |st#0@@4| Tclass.M3.State)) ($Is DatatypeTypeType |env#0| Tclass.M3.Env)) (U_2_bool (Lit boolType (bool_2_U  (and (M3.__default.Legal (Lit SeqType |stmts#0|)) (M3.__default.ValidEnv (Lit DatatypeTypeType |env#0|))))))))) (and (let ((|stmt#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |stmts#0|) (LitInt 0)))))
 (and (=> (M3.Statement.stmtVariable_q |stmt#2|) (and (|M3.__default.eval#canCall| (M3.Statement.expr |stmt#2|) (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |env#0|)) (let ((|st'#2| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $LZ) (M3.Statement.expr |stmt#2|) (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |env#0|))))))
(let ((|expr'#2| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $LZ) (M3.Statement.expr |stmt#2|) (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |env#0|))))))
 (and (|M3.__default.Value#canCall| |expr'#2|) (=> (M3.__default.Value |expr'#2|) (and (|M3.__default.SetEnv#canCall| (M3.Statement.id |stmt#2|) |expr'#2| (Lit DatatypeTypeType |env#0|)) (let ((|env'#2| (M3.__default.SetEnv (M3.Statement.id |stmt#2|) |expr'#2| (Lit DatatypeTypeType |env#0|))))
 (and (|M3.__default.Legal#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0|) (LitInt 1)))) (=> (U_2_bool (Lit boolType (bool_2_U (M3.__default.Legal (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0|) (LitInt 1))))))) (|M3.__default.do#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0|) (LitInt 1))) |st'#2| |env'#2|))))))))))) (=> (not (M3.Statement.stmtVariable_q |stmt#2|)) (|M3.__default.eval#canCall| (M3.Statement.ret |stmt#2|) (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |env#0|))))) (= (M3.__default.do ($LS $ly@@1) (Lit SeqType |stmts#0|) (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |env#0|)) (let ((|stmt#2@@0| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |stmts#0|) (LitInt 0)))))
(ite (M3.Statement.stmtVariable_q |stmt#2@@0|) (let ((|st'#2@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $LZ) (M3.Statement.expr |stmt#2@@0|) (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |env#0|))))))
(let ((|expr'#2@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $LZ) (M3.Statement.expr |stmt#2@@0|) (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |env#0|))))))
(ite (M3.__default.Value |expr'#2@@0|) (let ((|env'#2@@0| (M3.__default.SetEnv (M3.Statement.id |stmt#2@@0|) |expr'#2@@0| (Lit DatatypeTypeType |env#0|))))
(ite (M3.__default.Legal (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0|) (LitInt 1)))) (M3.__default.do ($LS $ly@@1) (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0|) (LitInt 1))) |st'#2@@0| |env'#2@@0|) (|#M3.Tuple.Pair| ($Box DatatypeTypeType |expr'#2@@0|) ($Box DatatypeTypeType |st'#2@@0|)))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@4|)))))) (M3.__default.eval ($LS $LZ) (M3.Statement.ret |stmt#2@@0|) (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |env#0|)))))))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :weight 3
 :skolemid |6685|
 :pattern ( (M3.__default.do ($LS $ly@@1) (Lit SeqType |stmts#0|) (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |env#0|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@2 T@U) (|cmd#0@@2| T@U) (|deps#0@@2| T@U) (|restrictedState#0@@0| T@U) (|exps#0@@1| T@U) (|st#0@@5| T@U) ) (!  (=> (or (|M3.__default.execOne#canCall| |cmd#0@@2| |deps#0@@2| |restrictedState#0@@0| |exps#0@@1| |st#0@@5|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@2| (TSeq TChar)) ($Is SetType |deps#0@@2| (TSet Tclass.M3.Path))) ($Is MapType |restrictedState#0@@0| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SetType |exps#0@@1| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@5| Tclass.M3.State)))) ($Is DatatypeTypeType (M3.__default.execOne $ly@@2 |cmd#0@@2| |deps#0@@2| |restrictedState#0@@0| |exps#0@@1| |st#0@@5|) (Tclass.M3.Tuple (TSet Tclass.M3.Path) Tclass.M3.State)))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |5828|
 :pattern ( (M3.__default.execOne $ly@@2 |cmd#0@@2| |deps#0@@2| |restrictedState#0@@0| |exps#0@@1| |st#0@@5|))
))))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (and (M3.Literal.litNumber_q a@@4) (M3.Literal.litNumber_q b@@1)) (= (|M3.Literal#Equal| a@@4 b@@1) (= (M3.Literal.num a@@4) (M3.Literal.num b@@1))))
 :qid |unknown.0:0|
 :skolemid |7155|
 :pattern ( (|M3.Literal#Equal| a@@4 b@@1) (M3.Literal.litNumber_q a@@4))
 :pattern ( (|M3.Literal#Equal| a@@4 b@@1) (M3.Literal.litNumber_q b@@1))
)))
(assert (forall ((|a#27#0#0| T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| |a#27#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#27#0#0| i@@2))) (DtRank (|#M3.Path.ExternalPath| |a#27#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6897|
 :pattern ( (|Seq#Index| |a#27#0#0| i@@2) (|#M3.Path.ExternalPath| |a#27#0#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| |a#56#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#56#0#0| i@@3))) (DtRank (|#M3.Program.Program| |a#56#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |6960|
 :pattern ( (|Seq#Index| |a#56#0#0| i@@3) (|#M3.Program.Program| |a#56#0#0|))
)))
(assert (forall ((|a#151#0#0| T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| |a#151#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#151#0#0| i@@4))) (DtRank (|#M3.Literal.litString| |a#151#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |7109|
 :pattern ( (|Seq#Index| |a#151#0#0| i@@4) (|#M3.Literal.litString| |a#151#0#0|))
)))
(assert (forall ((|a#176#0#0| T@U) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| |a#176#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#176#0#0| i@@5))) (DtRank (|#M3.Literal.litArray| |a#176#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |7146|
 :pattern ( (|Seq#Index| |a#176#0#0| i@@5) (|#M3.Literal.litArray| |a#176#0#0|))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |CloudMakeParallelBuildsdfy.783:12|
 :skolemid |7204|
 :pattern ( (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@5 b@@2 t)) a@@5)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |5241|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@5 b@@2 t)))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@6 b@@3 t@@0)) b@@3)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |5242|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@6 b@@3 t@@0)))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) (|a#10#2#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Path.InternalPath| |a#10#0#0| |a#10#1#0| |a#10#2#0|)) |##M3.Path.InternalPath|)
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6872|
 :pattern ( (|#M3.Path.InternalPath| |a#10#0#0| |a#10#1#0| |a#10#2#0|))
)))
(assert (forall ((|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) ) (! (= (M3.Path.cmd (|#M3.Path.InternalPath| |a#14#0#0| |a#14#1#0| |a#14#2#0|)) |a#14#0#0|)
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6881|
 :pattern ( (|#M3.Path.InternalPath| |a#14#0#0| |a#14#1#0| |a#14#2#0|))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) ) (! (= (M3.Path.deps (|#M3.Path.InternalPath| |a#17#0#0| |a#17#1#0| |a#17#2#0|)) |a#17#1#0|)
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6884|
 :pattern ( (|#M3.Path.InternalPath| |a#17#0#0| |a#17#1#0| |a#17#2#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) ) (! (= (M3.Path.exp (|#M3.Path.InternalPath| |a#19#0#0| |a#19#1#0| |a#19#2#0|)) |a#19#2#0|)
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6886|
 :pattern ( (|#M3.Path.InternalPath| |a#19#0#0| |a#19#1#0| |a#19#2#0|))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|id#0| T@U) (|env#0@@0| T@U) ) (!  (=> (or (|M3.__default.GetEnv#canCall| (Lit DatatypeTypeType |id#0|) (Lit DatatypeTypeType |env#0@@0|)) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |id#0| Tclass.M3.Identifier)) ($Is DatatypeTypeType |env#0@@0| Tclass.M3.Env)) (U_2_bool (Lit boolType (bool_2_U (M3.__default.ValidEnv (Lit DatatypeTypeType |env#0@@0|)))))))) (and (and (and (M3.Env.EnvCons_q (Lit DatatypeTypeType |env#0@@0|)) (=> (|Set#IsMember| (|Map#Domain| (M3.Env.m (Lit DatatypeTypeType |env#0@@0|))) ($Box DatatypeTypeType |id#0|)) (M3.Env.EnvCons_q (Lit DatatypeTypeType |env#0@@0|)))) (=> (not (|Set#IsMember| (|Map#Domain| (M3.Env.m (Lit DatatypeTypeType |env#0@@0|))) ($Box DatatypeTypeType |id#0|))) |$let#24$canCall|)) (= (M3.__default.GetEnv (Lit DatatypeTypeType |id#0|) (Lit DatatypeTypeType |env#0@@0|)) (ite (|Set#IsMember| (|Map#Domain| (M3.Env.m (Lit DatatypeTypeType |env#0@@0|))) ($Box DatatypeTypeType |id#0|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.Env.m (Lit DatatypeTypeType |env#0@@0|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |id#0|)))) (let ((|lit#1| |$let#24_lit|))
(|#M3.Expression.exprLiteral| |lit#1|))))))
 :qid |CloudMakeParallelBuildsdfy.824:18|
 :weight 3
 :skolemid |5704|
 :pattern ( (M3.__default.GetEnv (Lit DatatypeTypeType |id#0|) (Lit DatatypeTypeType |env#0@@0|)) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((a@@7 T@U) (b@@4 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@4 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@7 b@@4) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |5099|
 :pattern ( (|Set#Difference| a@@7 b@@4) (|Set#IsMember| b@@4 y@@2))
)))
(assert (forall ((M3._default.PickOne$T@@0 T@U) (s@@0 T@U) ) (!  (=> (|$let#27$canCall| M3._default.PickOne$T@@0 s@@0) (|Set#IsMember| s@@0 (|$let#27_x| M3._default.PickOne$T@@0 s@@0)))
 :qid |CloudMakeParallelBuildsdfy.486:5|
 :skolemid |5752|
 :pattern ( (|$let#27_x| M3._default.PickOne$T@@0 s@@0))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|$w#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#16| |l#0@@0| |l#1@@0| |l#2|) |$w#0@@0|))  (and ($IsBox |$w#0@@0| |l#0@@0|) (and (|Set#IsMember| |l#1@@0| |$w#0@@0|) (|Set#IsMember| |l#2| |$w#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.783:12|
 :skolemid |7207|
 :pattern ( (MapType0Select BoxType boolType (|lambda#16| |l#0@@0| |l#1@@0| |l#2|) |$w#0@@0|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@5 T@U) ) (!  (=> ($Is DatatypeTypeType d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@5))
 :qid |unknown.0:0|
 :skolemid |5423|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5) ($Is DatatypeTypeType d@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((M3.Tuple$A T@U) (M3.Tuple$B T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass.M3.Tuple M3.Tuple$A M3.Tuple$B)) (M3.Tuple.Pair_q d@@6))
 :qid |unknown.0:0|
 :skolemid |7198|
 :pattern ( (M3.Tuple.Pair_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass.M3.Tuple M3.Tuple$A M3.Tuple$B)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |5080|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((x@@6 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@6))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |5187|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@6))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|p#0@@4| T@U) (|st#0@@6| T@U) ) (!  (=> (or (|M3.__default.Oracle#canCall| |p#0@@4| |st#0@@6|) (and (< 5 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@4| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@6| Tclass.M3.State)))) ($Is DatatypeTypeType (M3.__default.Oracle |p#0@@4| |st#0@@6|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |6035|
 :pattern ( (M3.__default.Oracle |p#0@@4| |st#0@@6|))
))))
(assert (forall (($ly@@3 T@U) (|p#0@@5| T@U) (|cert#0| T@U) (|deps#0@@3| T@U) (|st#0@@7| T@U) ) (! (= (M3.__default.CollectDependencies ($LS $ly@@3) |p#0@@5| |cert#0| |deps#0@@3| |st#0@@7|) (M3.__default.CollectDependencies $ly@@3 |p#0@@5| |cert#0| |deps#0@@3| |st#0@@7|))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |6078|
 :pattern ( (M3.__default.CollectDependencies ($LS $ly@@3) |p#0@@5| |cert#0| |deps#0@@3| |st#0@@7|))
)))
(assert (forall (($ly@@4 T@U) (|context#0| T@U) (|args#0@@0| T@U) (|stOrig#0| T@U) (|env#0@@1| T@U) ) (! (= (M3.__default.evalArgs ($LS $ly@@4) |context#0| |args#0@@0| |stOrig#0| |env#0@@1|) (M3.__default.evalArgs $ly@@4 |context#0| |args#0@@0| |stOrig#0| |env#0@@1|))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |6724|
 :pattern ( (M3.__default.evalArgs ($LS $ly@@4) |context#0| |args#0@@0| |stOrig#0| |env#0@@1|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (=> (or |M3.__default.EmptyEnv#canCall| (< 4 $FunctionContextHeight)) (= M3.__default.EmptyEnv (Lit DatatypeTypeType (|#M3.Env.EnvCons| (Lit MapType |Map#Empty|)))))))
(assert  (=> (<= 4 $FunctionContextHeight) (=> (or |M3.__default.EmptyEnv#canCall| (< 4 $FunctionContextHeight)) (= M3.__default.EmptyEnv (Lit DatatypeTypeType (|#M3.Env.EnvCons| (Lit MapType |Map#Empty|)))))))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|M3.Tuple#Equal| a@@8 b@@5)  (and (= (M3.Tuple.fst a@@8) (M3.Tuple.fst b@@5)) (= (M3.Tuple.snd a@@8) (M3.Tuple.snd b@@5))))
 :qid |unknown.0:0|
 :skolemid |7199|
 :pattern ( (|M3.Tuple#Equal| a@@8 b@@5))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#M3.Literal.litTrue|) |##M3.Literal.litTrue|))
(assert (= (DatatypeCtorId |#M3.Literal.litFalse|) |##M3.Literal.litFalse|))
(assert (= (DatatypeCtorId |#M3.Literal.litUndefined|) |##M3.Literal.litUndefined|))
(assert (= (DatatypeCtorId |#M3.Literal.litNull|) |##M3.Literal.litNull|))
(assert (= (DatatypeCtorId |#M3.Primitive.primCreatePath|) |##M3.Primitive.primCreatePath|))
(assert (= (DatatypeCtorId |#M3.Primitive.primExec|) |##M3.Primitive.primExec|))
(assert (= (DatatypeCtorId |#M3.Reason.rCompatibility|) |##M3.Reason.rCompatibility|))
(assert (= (DatatypeCtorId |#M3.Reason.rValidity|) |##M3.Reason.rValidity|))
(assert (forall ((s@@1 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@1))) (= (|Seq#Drop| (|Seq#Build| s@@1 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@1 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |5209|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@1 v@@0) n))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|cmd#0@@3| T@U) (|deps#0@@4| T@U) (|exps#0@@2| T@U) (|st#0@@8| T@U) ) (!  (=> (or (|M3.__default.Pre#canCall| (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) (Lit SetType |exps#0@@2|) (Lit DatatypeTypeType |st#0@@8|)) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@3| (TSeq TChar)) ($Is SetType |deps#0@@4| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@2| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@8| Tclass.M3.State)))) (and (forall ((|e#2| T@U) ) (!  (=> ($Is SeqType |e#2| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@2|) ($Box SeqType |e#2|)) (and (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) |e#2|) (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@8|))) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@8|))) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) |e#2|))) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt (M3.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) |e#2|) (Lit DatatypeTypeType |st#0@@8|))) (|$IsA#M3.Artifact| (M3.__default.Oracle (M3.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) |e#2|) (Lit DatatypeTypeType |st#0@@8|)))) (and (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) |e#2|) (|M3.__default.GetSt#canCall| (M3.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) |e#2|) (Lit DatatypeTypeType |st#0@@8|))) (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) |e#2|) (|M3.__default.Oracle#canCall| (M3.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) |e#2|) (Lit DatatypeTypeType |st#0@@8|)))))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |6566|
 :pattern ( (M3.__default.Loc |cmd#0@@3| |deps#0@@4| |e#2|))
 :pattern ( (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#2|)))
)) (= (M3.__default.Pre (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) (Lit SetType |exps#0@@2|) (Lit DatatypeTypeType |st#0@@8|)) (forall ((|e#2@@0| T@U) ) (!  (=> ($Is SeqType |e#2@@0| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@2|) ($Box SeqType |e#2@@0|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@8|))) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) |e#2@@0|))) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) |e#2@@0|) (Lit DatatypeTypeType |st#0@@8|)) (M3.__default.Oracle (M3.__default.Loc (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) |e#2@@0|) (Lit DatatypeTypeType |st#0@@8|))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |6565|
 :pattern ( (M3.__default.Loc |cmd#0@@3| |deps#0@@4| |e#2@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@2| ($Box SeqType |e#2@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :weight 3
 :skolemid |6567|
 :pattern ( (M3.__default.Pre (Lit SeqType |cmd#0@@3|) (Lit SetType |deps#0@@4|) (Lit SetType |exps#0@@2|) (Lit DatatypeTypeType |st#0@@8|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|d#0| T@U) (|certs#0| T@U) ) (!  (=> (or (|M3.__default.FindCert#canCall| (Lit DatatypeTypeType |d#0|) (Lit SetType |certs#0|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |d#0| Tclass.M3.Path)) ($Is SetType |certs#0| (TSet Tclass.M3.WFCertificate))) (exists ((|c#5| T@U) ) (!  (and ($Is DatatypeTypeType |c#5| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType |certs#0|) ($Box DatatypeTypeType |c#5|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#5|) |d#0|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6113|
 :pattern ( (M3.WFCertificate.p |c#5|))
 :pattern ( (|Set#IsMember| |certs#0| ($Box DatatypeTypeType |c#5|)))
))))) (and (|$let#36$canCall| (Lit SetType |certs#0|) (Lit DatatypeTypeType |d#0|)) (= (M3.__default.FindCert (Lit DatatypeTypeType |d#0|) (Lit SetType |certs#0|)) (let ((|c#6| (|$let#36_c| (Lit SetType |certs#0|) (Lit DatatypeTypeType |d#0|))))
|c#6|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :weight 3
 :skolemid |6114|
 :pattern ( (M3.__default.FindCert (Lit DatatypeTypeType |d#0|) (Lit SetType |certs#0|)) ($IsGoodHeap $Heap@@2))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@5 T@U) (|p#0@@6| T@U) (|cert#0@@0| T@U) (|st#0@@9| T@U) ) (!  (=> (or (|M3.__default.OracleWF#canCall| |p#0@@6| |cert#0@@0| |st#0@@9|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |p#0@@6| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@0| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |st#0@@9| Tclass.M3.State)) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@6| |cert#0@@0|)))) (and (and (and (and (|M3.__default.LocInv__Cmd#canCall| |p#0@@6|) (|M3.__default.LocInv__Deps#canCall| |p#0@@6|)) (|M3.__default.LocInv__Exp#canCall| |p#0@@6|)) (let ((|e#0| (M3.__default.LocInv__Exp |p#0@@6|)))
(let ((|deps#0@@5| (M3.__default.LocInv__Deps |p#0@@6|)))
(let ((|cmd#0@@4| (M3.__default.LocInv__Cmd |p#0@@6|)))
 (and (|M3.__default.CollectDependencies#canCall| |p#0@@6| |cert#0@@0| |deps#0@@5| |st#0@@9|) (|M3.__default.RunTool#canCall| |cmd#0@@4| (M3.__default.CollectDependencies $ly@@5 |p#0@@6| |cert#0@@0| |deps#0@@5| |st#0@@9|) |e#0|)))))) (= (M3.__default.OracleWF ($LS $ly@@5) |p#0@@6| |cert#0@@0| |st#0@@9|) (let ((|e#0@@0| (M3.__default.LocInv__Exp |p#0@@6|)))
(let ((|deps#0@@6| (M3.__default.LocInv__Deps |p#0@@6|)))
(let ((|cmd#0@@5| (M3.__default.LocInv__Cmd |p#0@@6|)))
(M3.__default.RunTool |cmd#0@@5| (M3.__default.CollectDependencies $ly@@5 |p#0@@6| |cert#0@@0| |deps#0@@6| |st#0@@9|) |e#0@@0|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |6062|
 :pattern ( (M3.__default.OracleWF ($LS $ly@@5) |p#0@@6| |cert#0@@0| |st#0@@9|))
))))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.WFCertificate.Cert| |a#38#0#0| |a#38#1#0|) Tclass.M3.WFCertificate)  (and ($Is DatatypeTypeType |a#38#0#0| Tclass.M3.Path) ($Is SetType |a#38#1#0| (TSet Tclass.M3.WFCertificate))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6924|
 :pattern ( ($Is DatatypeTypeType (|#M3.WFCertificate.Cert| |a#38#0#0| |a#38#1#0|) Tclass.M3.WFCertificate))
)))
(assert (forall ((|a#112#0#0| T@U) (|a#112#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Expression.exprInvocation| |a#112#0#0| |a#112#1#0|) Tclass.M3.Expression)  (and ($Is DatatypeTypeType |a#112#0#0| Tclass.M3.Expression) ($Is SeqType |a#112#1#0| (TSeq Tclass.M3.Expression))))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |7055|
 :pattern ( ($Is DatatypeTypeType (|#M3.Expression.exprInvocation| |a#112#0#0| |a#112#1#0|) Tclass.M3.Expression))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@9 b@@6) b@@6) (|Set#Union| a@@9 b@@6))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |5093|
 :pattern ( (|Set#Union| (|Set#Union| a@@9 b@@6) b@@6))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@10 b@@7) o@@1)  (and (|Set#IsMember| a@@10 o@@1) (not (|Set#IsMember| b@@7 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |5098|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@10 b@@7) o@@1))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@3 T@U) (|p#0@@7| T@U) ) (!  (=> (or (|M3.__default.GetCert#canCall| |p#0@@7|) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@3) ($Is DatatypeTypeType |p#0@@7| Tclass.M3.Path)) (M3.__default.WellFounded |p#0@@7|)))) (and (|$let#30$canCall| |p#0@@7|) (= (M3.__default.GetCert |p#0@@7|) (let ((|c#0| (|$let#30_c| |p#0@@7|)))
|c#0|))))
 :qid |CloudMakeParallelBuildsdfy.627:18|
 :skolemid |6020|
 :pattern ( (M3.__default.GetCert |p#0@@7|) ($IsGoodHeap $Heap@@3))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall ((|prog#0| T@U) (|st#0@@10| T@U) ) (!  (=> (or (|M3.__default.build#canCall| (Lit DatatypeTypeType |prog#0|) (Lit DatatypeTypeType |st#0@@10|)) (and (< 10 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prog#0| Tclass.M3.Program) ($Is DatatypeTypeType |st#0@@10| Tclass.M3.State)) (U_2_bool (Lit boolType (bool_2_U (M3.__default.Legal (Lit SeqType (M3.Program.stmts (Lit DatatypeTypeType |prog#0|)))))))))) (and (and (and (M3.Program.Program_q (Lit DatatypeTypeType |prog#0|)) |M3.__default.EmptyEnv#canCall|) (|M3.__default.do#canCall| (Lit SeqType (M3.Program.stmts (Lit DatatypeTypeType |prog#0|))) (Lit DatatypeTypeType |st#0@@10|) (Lit DatatypeTypeType M3.__default.EmptyEnv))) (= (M3.__default.build (Lit DatatypeTypeType |prog#0|) (Lit DatatypeTypeType |st#0@@10|)) (Lit DatatypeTypeType (M3.__default.do ($LS $LZ) (Lit SeqType (M3.Program.stmts (Lit DatatypeTypeType |prog#0|))) (Lit DatatypeTypeType |st#0@@10|) (Lit DatatypeTypeType M3.__default.EmptyEnv))))))
 :qid |CloudMakeParallelBuildsdfy.170:24|
 :weight 3
 :skolemid |6674|
 :pattern ( (M3.__default.build (Lit DatatypeTypeType |prog#0|) (Lit DatatypeTypeType |st#0@@10|)))
))))
(assert (forall ((s@@2 T@U) (t@@1 T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@2)) (and (= (|Seq#Take| (|Seq#Append| s@@2 t@@1) n@@0) s@@2) (= (|Seq#Drop| (|Seq#Append| s@@2 t@@1) n@@0) t@@1)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |5204|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@2 t@@1) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@2 t@@1) n@@0))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 Tclass.M3.Artifact) (M3.Artifact.ArtifactCons_q d@@7))
 :qid |unknown.0:0|
 :skolemid |6856|
 :pattern ( (M3.Artifact.ArtifactCons_q d@@7) ($Is DatatypeTypeType d@@7 Tclass.M3.Artifact))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 Tclass.M3.Env) (M3.Env.EnvCons_q d@@8))
 :qid |unknown.0:0|
 :skolemid |6917|
 :pattern ( (M3.Env.EnvCons_q d@@8) ($Is DatatypeTypeType d@@8 Tclass.M3.Env))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 Tclass.M3.WFCertificate) (M3.WFCertificate.Cert_q d@@9))
 :qid |unknown.0:0|
 :skolemid |6934|
 :pattern ( (M3.WFCertificate.Cert_q d@@9) ($Is DatatypeTypeType d@@9 Tclass.M3.WFCertificate))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> ($Is DatatypeTypeType d@@10 Tclass.M3.State) (M3.State.StateCons_q d@@10))
 :qid |unknown.0:0|
 :skolemid |6949|
 :pattern ( (M3.State.StateCons_q d@@10) ($Is DatatypeTypeType d@@10 Tclass.M3.State))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> ($Is DatatypeTypeType d@@11 Tclass.M3.Program) (M3.Program.Program_q d@@11))
 :qid |unknown.0:0|
 :skolemid |6964|
 :pattern ( (M3.Program.Program_q d@@11) ($Is DatatypeTypeType d@@11 Tclass.M3.Program))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |5411|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((M3.Tuple$A@@0 T@U) (M3.Tuple$B@@0 T@U) (|a#196#0#0| T@U) (|a#196#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Tuple.Pair| |a#196#0#0| |a#196#1#0|) (Tclass.M3.Tuple M3.Tuple$A@@0 M3.Tuple$B@@0))  (and ($IsBox |a#196#0#0| M3.Tuple$A@@0) ($IsBox |a#196#1#0| M3.Tuple$B@@0)))
 :qid |unknown.0:0|
 :skolemid |7186|
 :pattern ( ($Is DatatypeTypeType (|#M3.Tuple.Pair| |a#196#0#0| |a#196#1#0|) (Tclass.M3.Tuple M3.Tuple$A@@0 M3.Tuple$B@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@4 T@U) (|cmd#0@@6| T@U) (|deps#0@@7| T@U) (|exp#0@@2| T@U) ) (!  (=> (or (|M3.__default.RunTool#canCall| (Lit SeqType |cmd#0@@6|) (Lit MapType |deps#0@@7|) (Lit SeqType |exp#0@@2|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@4) ($Is SeqType |cmd#0@@6| (TSeq TChar))) ($Is MapType |deps#0@@7| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SeqType |exp#0@@2| (TSeq TChar))))) (and |$let#0$canCall| (= (M3.__default.RunTool (Lit SeqType |cmd#0@@6|) (Lit MapType |deps#0@@7|) (Lit SeqType |exp#0@@2|)) (let ((|a#1| |$let#0_a|))
|a#1|))))
 :qid |CloudMakeParallelBuildsdfy.773:18|
 :weight 3
 :skolemid |5674|
 :pattern ( (M3.__default.RunTool (Lit SeqType |cmd#0@@6|) (Lit MapType |deps#0@@7|) (Lit SeqType |exp#0@@2|)) ($IsGoodHeap $Heap@@4))
))))
(assert ($Is DatatypeTypeType |#M3.Literal.litTrue| Tclass.M3.Literal))
(assert ($Is DatatypeTypeType |#M3.Literal.litFalse| Tclass.M3.Literal))
(assert ($Is DatatypeTypeType |#M3.Literal.litUndefined| Tclass.M3.Literal))
(assert ($Is DatatypeTypeType |#M3.Literal.litNull| Tclass.M3.Literal))
(assert ($Is DatatypeTypeType |#M3.Primitive.primCreatePath| Tclass.M3.Primitive))
(assert ($Is DatatypeTypeType |#M3.Primitive.primExec| Tclass.M3.Primitive))
(assert ($Is DatatypeTypeType |#M3.Reason.rCompatibility| Tclass.M3.Reason))
(assert ($Is DatatypeTypeType |#M3.Reason.rValidity| Tclass.M3.Reason))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|id#0@@0| T@U) (|expr#0| T@U) (|env#0@@2| T@U) ) (!  (=> (or (|M3.__default.SetEnv#canCall| |id#0@@0| (Lit DatatypeTypeType |expr#0|) |env#0@@2|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |id#0@@0| Tclass.M3.Identifier) ($Is DatatypeTypeType |expr#0| Tclass.M3.Expression)) ($Is DatatypeTypeType |env#0@@2| Tclass.M3.Env)) (and (M3.__default.ValidEnv |env#0@@2|) (M3.__default.Value (Lit DatatypeTypeType |expr#0|)))))) (and (M3.Env.EnvCons_q |env#0@@2|) (= (M3.__default.SetEnv |id#0@@0| (Lit DatatypeTypeType |expr#0|) |env#0@@2|) (|#M3.Env.EnvCons| (|Map#Build| (M3.Env.m |env#0@@2|) ($Box DatatypeTypeType |id#0@@0|) ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0|)))))))
 :qid |CloudMakeParallelBuildsdfy.64:25|
 :weight 3
 :skolemid |5709|
 :pattern ( (M3.__default.SetEnv |id#0@@0| (Lit DatatypeTypeType |expr#0|) |env#0@@2|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@8| T@U) ) (!  (=> (or (|M3.__default.WellFounded#canCall| |p#0@@8|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@8| Tclass.M3.Path))) (and (forall ((|cert#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |cert#0@@1| Tclass.M3.WFCertificate) (|M3.__default.CheckWellFounded#canCall| |p#0@@8| |cert#0@@1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |5760|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@8| |cert#0@@1|))
)) (= (M3.__default.WellFounded |p#0@@8|) (exists ((|cert#0@@2| T@U) ) (!  (and ($Is DatatypeTypeType |cert#0@@2| Tclass.M3.WFCertificate) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@8| |cert#0@@2|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |5759|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@8| |cert#0@@2|))
)))))
 :qid |CloudMakeParallelBuildsdfy.17:31|
 :skolemid |5761|
 :pattern ( (M3.__default.WellFounded |p#0@@8|))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (and (M3.Path.InternalPath_q a@@11) (M3.Path.InternalPath_q b@@8)) (= (|M3.Path#Equal| a@@11 b@@8)  (and (and (|Seq#Equal| (M3.Path.cmd a@@11) (M3.Path.cmd b@@8)) (|Set#Equal| (M3.Path.deps a@@11) (M3.Path.deps b@@8))) (|Seq#Equal| (M3.Path.exp a@@11) (M3.Path.exp b@@8)))))
 :qid |unknown.0:0|
 :skolemid |6902|
 :pattern ( (|M3.Path#Equal| a@@11 b@@8) (M3.Path.InternalPath_q a@@11))
 :pattern ( (|M3.Path#Equal| a@@11 b@@8) (M3.Path.InternalPath_q b@@8))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|d#0@@0| T@U) (|certs#0@@0| T@U) ) (!  (=> (or (|M3.__default.FindCert#canCall| |d#0@@0| |certs#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |d#0@@0| Tclass.M3.Path) ($Is SetType |certs#0@@0| (TSet Tclass.M3.WFCertificate))) (exists ((|c#0@@0| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@0| Tclass.M3.WFCertificate) (and (|Set#IsMember| |certs#0@@0| ($Box DatatypeTypeType |c#0@@0|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0@@0|) |d#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6105|
 :pattern ( (M3.WFCertificate.p |c#0@@0|))
 :pattern ( (|Set#IsMember| |certs#0@@0| ($Box DatatypeTypeType |c#0@@0|)))
))))) ($Is DatatypeTypeType (M3.__default.FindCert |d#0@@0| |certs#0@@0|) Tclass.M3.WFCertificate))
 :qid |CloudMakeParallelBuildsdfy.666:27|
 :skolemid |6106|
 :pattern ( (M3.__default.FindCert |d#0@@0| |certs#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0@@1| T@U) ) (!  (=> (or (|M3.__default.Arity#canCall| (Lit DatatypeTypeType |prim#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0@@1| Tclass.M3.Primitive))) (= (M3.__default.Arity (Lit DatatypeTypeType |prim#0@@1|)) (ite (M3.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@1|)) 1 3)))
 :qid |CloudMakeParallelBuildsdfy.282:24|
 :weight 3
 :skolemid |6744|
 :pattern ( (M3.__default.Arity (Lit DatatypeTypeType |prim#0@@1|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@11| T@U) ) (!  (=> (or (|M3.__default.DomSt#canCall| |st#0@@11|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@11| Tclass.M3.State))) (and (forall ((|p#0@@9| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@9| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@11|) ($Box DatatypeTypeType |p#0@@9|)) (|Set#IsMember| (|Map#Domain| (M3.State.m |st#0@@11|)) ($Box DatatypeTypeType |p#0@@9|))))
 :qid |CloudMakeParallelBuildsdfy.441:20|
 :skolemid |6475|
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.State.m |st#0@@11|)) ($Box DatatypeTypeType |p#0@@9|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@11|) ($Box DatatypeTypeType |p#0@@9|)))
)) ($Is SetType (M3.__default.DomSt |st#0@@11|) (TSet Tclass.M3.Path))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |6476|
 :pattern ( (M3.__default.DomSt |st#0@@11|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@10| T@U) (|a#0| T@U) (|st#0@@12| T@U) ) (!  (=> (or (|M3.__default.SetSt#canCall| |p#0@@10| |a#0| (Lit DatatypeTypeType |st#0@@12|)) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@10| Tclass.M3.Path) ($Is DatatypeTypeType |a#0| Tclass.M3.Artifact)) ($Is DatatypeTypeType |st#0@@12| Tclass.M3.State)))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@12|)) (= (M3.__default.SetSt |p#0@@10| |a#0| (Lit DatatypeTypeType |st#0@@12|)) (|#M3.State.StateCons| (|Map#Build| (Lit MapType (M3.State.m (Lit DatatypeTypeType |st#0@@12|))) ($Box DatatypeTypeType |p#0@@10|) ($Box DatatypeTypeType |a#0|))))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :weight 3
 :skolemid |5730|
 :pattern ( (M3.__default.SetSt |p#0@@10| |a#0| (Lit DatatypeTypeType |st#0@@12|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@6 T@U) (|p#0@@11| T@U) (|cert#0@@3| T@U) ) (!  (=> (or (|M3.__default.CheckWellFounded#canCall| |p#0@@11| |cert#0@@3|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@11| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@3| Tclass.M3.WFCertificate)))) (and (and (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |cert#0@@3|)) (|$IsA#M3.Path| |p#0@@11|)) (M3.WFCertificate.Cert_q |cert#0@@3|)) (=> (|M3.Path#Equal| (M3.WFCertificate.p |cert#0@@3|) |p#0@@11|) (and (forall ((|d#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@1| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| |p#0@@11|) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#0@@1|)) (forall ((|c#0@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#0@@1| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q |cert#0@@3|) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#0@@1|)) (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |c#0@@1|)) (|$IsA#M3.Path| |d#0@@1|)) (M3.WFCertificate.Cert_q |c#0@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5776|
 :pattern ( (M3.WFCertificate.p |c#0@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#0@@1|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5777|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#0@@1|)))
)) (=> (forall ((|d#0@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@2| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#0@@2|)) (exists ((|c#0@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@2| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#0@@2|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0@@2|) |d#0@@2|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5779|
 :pattern ( (M3.WFCertificate.p |c#0@@2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#0@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5780|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#0@@2|)))
)) (forall ((|c#1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q |cert#0@@3|) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#1|)) (and (M3.WFCertificate.Cert_q |c#1|) (|M3.__default.CheckWellFounded#canCall| (M3.WFCertificate.p |c#1|) |c#1|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5778|
 :pattern ( (M3.WFCertificate.p |c#1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#1|)))
)))))) (= (M3.__default.CheckWellFounded ($LS $ly@@6) |p#0@@11| |cert#0@@3|)  (and (and (|M3.Path#Equal| (M3.WFCertificate.p |cert#0@@3|) |p#0@@11|) (forall ((|d#0@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@3| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#0@@3|)) (exists ((|c#0@@3| T@U) ) (!  (and ($Is DatatypeTypeType |c#0@@3| Tclass.M3.WFCertificate) (and (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#0@@3|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#0@@3|) |d#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5773|
 :pattern ( (M3.WFCertificate.p |c#0@@3|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#0@@3|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5774|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@11|) ($Box DatatypeTypeType |d#0@@3|)))
))) (forall ((|c#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#1@@0| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#1@@0|)) (M3.__default.CheckWellFounded $ly@@6 (M3.WFCertificate.p |c#1@@0|) |c#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5775|
 :pattern ( (M3.WFCertificate.p |c#1@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@3|) ($Box DatatypeTypeType |c#1@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |5781|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@6) |p#0@@11| |cert#0@@3|))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($ly@@7 T@U) (|context#0@@0| T@U) (|args#0@@1| T@U) (|stOrig#0@@0| T@U) (|env#0@@3| T@U) ) (!  (=> (or (|M3.__default.evalArgs#canCall| |context#0@@0| |args#0@@1| |stOrig#0@@0| |env#0@@3|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@0| Tclass.M3.Expression) ($Is SeqType |args#0@@1| (TSeq Tclass.M3.Expression))) ($Is DatatypeTypeType |stOrig#0@@0| Tclass.M3.State)) ($Is DatatypeTypeType |env#0@@3| Tclass.M3.Env)) (and (M3.__default.ValidEnv |env#0@@3|) (forall ((|arg#0| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#0| Tclass.M3.Expression) (=> (|Seq#Contains| |args#0@@1| ($Box DatatypeTypeType |arg#0|)) (< (DtRank |arg#0|) (DtRank |context#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |6726|
 :pattern ( (|Seq#Contains| |args#0@@1| ($Box DatatypeTypeType |arg#0|)))
)))))) ($Is DatatypeTypeType (M3.__default.evalArgs $ly@@7 |context#0@@0| |args#0@@1| |stOrig#0@@0| |env#0@@3|) (Tclass.M3.Tuple (TSeq Tclass.M3.Expression) (TSet Tclass.M3.State))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |6727|
 :pattern ( (M3.__default.evalArgs $ly@@7 |context#0@@0| |args#0@@1| |stOrig#0@@0| |env#0@@3|))
))))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|M3.Artifact#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |unknown.0:0|
 :skolemid |6858|
 :pattern ( (|M3.Artifact#Equal| a@@12 b@@9))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|M3.Path#Equal| a@@13 b@@10) (= a@@13 b@@10))
 :qid |unknown.0:0|
 :skolemid |6904|
 :pattern ( (|M3.Path#Equal| a@@13 b@@10))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|M3.Literal#Equal| a@@14 b@@11) (= a@@14 b@@11))
 :qid |unknown.0:0|
 :skolemid |7161|
 :pattern ( (|M3.Literal#Equal| a@@14 b@@11))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|M3.Primitive#Equal| a@@15 b@@12) (= a@@15 b@@12))
 :qid |unknown.0:0|
 :skolemid |7171|
 :pattern ( (|M3.Primitive#Equal| a@@15 b@@12))
)))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (! (= (|M3.Reason#Equal| a@@16 b@@13) (= a@@16 b@@13))
 :qid |unknown.0:0|
 :skolemid |7181|
 :pattern ( (|M3.Reason#Equal| a@@16 b@@13))
)))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (! (= (|M3.Tuple#Equal| a@@17 b@@14) (= a@@17 b@@14))
 :qid |unknown.0:0|
 :skolemid |7200|
 :pattern ( (|M3.Tuple#Equal| a@@17 b@@14))
)))
(assert (forall ((s@@3 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@3 n@@1) s@@3))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |5210|
 :pattern ( (|Seq#Drop| s@@3 n@@1))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall ((|prim#0@@2| T@U) (|args#0@@2| T@U) (|st#0@@13| T@U) ) (!  (=> (or (|M3.__default.ValidArgs#canCall| (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@2|) (Lit DatatypeTypeType |st#0@@13|)) (and (< 7 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@2| Tclass.M3.Primitive) ($Is SeqType |args#0@@2| (TSeq Tclass.M3.Expression))) ($Is DatatypeTypeType |st#0@@13| Tclass.M3.State)) (and (=> (M3.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@2|)) (= (|Seq#Length| (Lit SeqType |args#0@@2|)) (LitInt 3))) (=> (M3.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)) (= (|Seq#Length| (Lit SeqType |args#0@@2|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)))))) (let ((|exps#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@2|) (LitInt 2)))))
(let ((|deps#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@2|) (LitInt 1)))))
(let ((|cmd#5| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@2|) (LitInt 0)))))
 (=> (M3.Expression.exprLiteral_q |cmd#5|) (=> (M3.Literal.litString_q (M3.Expression.lit |cmd#5|)) (=> (M3.Expression.exprLiteral_q |deps#5|) (=> (M3.Literal.litArrOfPaths_q (M3.Expression.lit |deps#5|)) (=> (M3.Expression.exprLiteral_q |exps#5|) (=> (M3.Literal.litArrOfStrings_q (M3.Expression.lit |exps#5|)) (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@13|)) (=> (|Set#Subset| (M3.Literal.paths (M3.Expression.lit |deps#5|)) (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@13|))) (|M3.__default.Pre#canCall| (M3.Literal.str (M3.Expression.lit |cmd#5|)) (M3.Literal.paths (M3.Expression.lit |deps#5|)) (M3.Literal.strs (M3.Expression.lit |exps#5|)) (Lit DatatypeTypeType |st#0@@13|)))))))))))))) (= (M3.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@2|) (Lit DatatypeTypeType |st#0@@13|)) (ite (M3.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@2|)) false (let ((|exps#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@2|) (LitInt 2)))))
(let ((|deps#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@2|) (LitInt 1)))))
(let ((|cmd#4| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@2|) (LitInt 0)))))
 (and (and (and (and (and (and (and (M3.Expression.exprLiteral_q |cmd#4|) (M3.Literal.litString_q (M3.Expression.lit |cmd#4|))) (M3.Expression.exprLiteral_q |deps#4|)) (M3.Literal.litArrOfPaths_q (M3.Expression.lit |deps#4|))) (M3.Expression.exprLiteral_q |exps#4|)) (M3.Literal.litArrOfStrings_q (M3.Expression.lit |exps#4|))) (|Set#Subset| (M3.Literal.paths (M3.Expression.lit |deps#4|)) (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@13|)))) (M3.__default.Pre (M3.Literal.str (M3.Expression.lit |cmd#4|)) (M3.Literal.paths (M3.Expression.lit |deps#4|)) (M3.Literal.strs (M3.Expression.lit |exps#4|)) (Lit DatatypeTypeType |st#0@@13|))))))))))
 :qid |CloudMakeParallelBuildsdfy.289:29|
 :weight 3
 :skolemid |6749|
 :pattern ( (M3.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@2|) (Lit SeqType |args#0@@2|) (Lit DatatypeTypeType |st#0@@13|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@5 T@U) (|p#0@@12| T@U) ) (!  (=> (or (|M3.__default.OracleArbitrary#canCall| |p#0@@12|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@5) ($Is DatatypeTypeType |p#0@@12| Tclass.M3.Path)))) (and |$let#33$canCall| (= (M3.__default.OracleArbitrary |p#0@@12|) (let ((|a#0@@0| |$let#33_a|))
|a#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.648:18|
 :skolemid |6056|
 :pattern ( (M3.__default.OracleArbitrary |p#0@@12|) ($IsGoodHeap $Heap@@5))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|stmts#0@@0| T@U) ) (!  (=> (or (|M3.__default.Legal#canCall| |stmts#0@@0|) (and (< 3 $FunctionContextHeight) ($Is SeqType |stmts#0@@0| (TSeq Tclass.M3.Statement)))) (= (M3.__default.Legal |stmts#0@@0|)  (or (not (= (|Seq#Length| |stmts#0@@0|) 0)) (not true))))
 :qid |CloudMakeParallelBuildsdfy.196:25|
 :skolemid |6696|
 :pattern ( (M3.__default.Legal |stmts#0@@0|))
))))
(assert (forall ((x@@7 Int) ) (! (= (LitInt x@@7) x@@7)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |4972|
 :pattern ( (LitInt x@@7))
)))
(assert (forall ((x@@8 T@U) (T T@T) ) (! (= (Lit T x@@8) x@@8)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4970|
 :pattern ( (Lit T x@@8))
)))
(assert (forall ((s@@4 T@U) (bx T@U) (t@@2 T@U) ) (!  (=> (and ($Is SeqType s@@4 (TSeq t@@2)) ($IsBox bx t@@2)) ($Is SeqType (|Seq#Build| s@@4 bx) (TSeq t@@2)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |5213|
 :pattern ( ($Is SeqType (|Seq#Build| s@@4 bx) (TSeq t@@2)))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|cmd#0@@7| T@U) (|deps#0@@8| T@U) (|exps#0@@3| T@U) (|st#0@@14| T@U) ) (!  (=> (or (|M3.__default.Pre#canCall| (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) (Lit SetType |exps#0@@3|) |st#0@@14|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@7| (TSeq TChar)) ($Is SetType |deps#0@@8| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@3| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@14| Tclass.M3.State)))) (and (forall ((|e#1| T@U) ) (!  (=> ($Is SeqType |e#1| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@3|) ($Box SeqType |e#1|)) (and (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) |e#1|) (|M3.__default.DomSt#canCall| |st#0@@14|)) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@14|) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) |e#1|))) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt (M3.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) |e#1|) |st#0@@14|)) (|$IsA#M3.Artifact| (M3.__default.Oracle (M3.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) |e#1|) |st#0@@14|))) (and (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) |e#1|) (|M3.__default.GetSt#canCall| (M3.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) |e#1|) |st#0@@14|)) (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) |e#1|) (|M3.__default.Oracle#canCall| (M3.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) |e#1|) |st#0@@14|))))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |6563|
 :pattern ( (M3.__default.Loc |cmd#0@@7| |deps#0@@8| |e#1|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#1|)))
)) (= (M3.__default.Pre (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) (Lit SetType |exps#0@@3|) |st#0@@14|) (forall ((|e#1@@0| T@U) ) (!  (=> ($Is SeqType |e#1@@0| (TSeq TChar)) (=> (|Set#IsMember| (Lit SetType |exps#0@@3|) ($Box SeqType |e#1@@0|)) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@14|) ($Box DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) |e#1@@0|))) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) |e#1@@0|) |st#0@@14|) (M3.__default.Oracle (M3.__default.Loc (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) |e#1@@0|) |st#0@@14|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |6562|
 :pattern ( (M3.__default.Loc |cmd#0@@7| |deps#0@@8| |e#1@@0|))
 :pattern ( (|Set#IsMember| |exps#0@@3| ($Box SeqType |e#1@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :weight 3
 :skolemid |6564|
 :pattern ( (M3.__default.Pre (Lit SeqType |cmd#0@@7|) (Lit SetType |deps#0@@8|) (Lit SetType |exps#0@@3|) |st#0@@14|))
))))
(assert (forall ((a@@18 T@U) (b@@15 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| a@@18 bx@@0) (and ($IsBox bx@@0 t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@15 bx@@0) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |5243|
)) ($Is MapType (|Map#Glue| a@@18 b@@15 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |5244|
 :pattern ( (|Map#Glue| a@@18 b@@15 (TMap t0@@0 t1@@0)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|env#0@@4| T@U) ) (!  (=> (or (|M3.__default.ValidEnv#canCall| (Lit DatatypeTypeType |env#0@@4|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |env#0@@4| Tclass.M3.Env))) (and (forall ((|id#1| T@U) ) (!  (=> ($Is DatatypeTypeType |id#1| Tclass.M3.Identifier) (and (M3.Env.EnvCons_q (Lit DatatypeTypeType |env#0@@4|)) (=> (|Set#IsMember| (|Map#Domain| (M3.Env.m (Lit DatatypeTypeType |env#0@@4|))) ($Box DatatypeTypeType |id#1|)) (and (M3.Env.EnvCons_q (Lit DatatypeTypeType |env#0@@4|)) (|M3.__default.Value#canCall| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.Env.m (Lit DatatypeTypeType |env#0@@4|)))) ($Box DatatypeTypeType |id#1|))))))))
 :qid |CloudMakeParallelBuildsdfy.834:12|
 :skolemid |5721|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@4|)) ($Box DatatypeTypeType |id#1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@4|)) ($Box DatatypeTypeType |id#1|)))
)) (= (M3.__default.ValidEnv (Lit DatatypeTypeType |env#0@@4|)) (forall ((|id#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |id#1@@0| Tclass.M3.Identifier) (=> (|Set#IsMember| (|Map#Domain| (M3.Env.m (Lit DatatypeTypeType |env#0@@4|))) ($Box DatatypeTypeType |id#1@@0|)) (M3.__default.Value ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.Env.m (Lit DatatypeTypeType |env#0@@4|)))) ($Box DatatypeTypeType |id#1@@0|))))))
 :qid |CloudMakeParallelBuildsdfy.834:12|
 :skolemid |5720|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@4|)) ($Box DatatypeTypeType |id#1@@0|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@4|)) ($Box DatatypeTypeType |id#1@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.58:28|
 :weight 3
 :skolemid |5722|
 :pattern ( (M3.__default.ValidEnv (Lit DatatypeTypeType |env#0@@4|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@13| T@U) (|st#0@@15| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| |p#0@@13| |st#0@@15|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@13| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@15| Tclass.M3.State)) (|Set#IsMember| (M3.__default.DomSt |st#0@@15|) ($Box DatatypeTypeType |p#0@@13|))))) ($Is DatatypeTypeType (M3.__default.GetSt |p#0@@13| |st#0@@15|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |6469|
 :pattern ( (M3.__default.GetSt |p#0@@13| |st#0@@15|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@8 T@U) (|p#0@@14| T@U) (|cert#0@@4| T@U) (|st#0@@16| T@U) ) (!  (=> (or (|M3.__default.OracleWF#canCall| |p#0@@14| |cert#0@@4| |st#0@@16|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |p#0@@14| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@4| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |st#0@@16| Tclass.M3.State)) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@14| |cert#0@@4|)))) ($Is DatatypeTypeType (M3.__default.OracleWF $ly@@8 |p#0@@14| |cert#0@@4| |st#0@@16|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |6060|
 :pattern ( (M3.__default.OracleWF $ly@@8 |p#0@@14| |cert#0@@4| |st#0@@16|))
))))
(assert (forall ((a@@19 T@U) (b@@16 T@U) ) (! (= (|Set#Subset| a@@19 b@@16) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@19 o@@2) (|Set#IsMember| b@@16 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |5101|
 :pattern ( (|Set#IsMember| a@@19 o@@2))
 :pattern ( (|Set#IsMember| b@@16 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |5102|
 :pattern ( (|Set#Subset| a@@19 b@@16))
)))
(assert (forall ((s@@5 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@5))) (= (|Seq#Index| (|Seq#Take| s@@5 n@@2) j) (|Seq#Index| s@@5 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |5200|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@5 n@@2) j))
 :pattern ( (|Seq#Index| s@@5 j) (|Seq#Take| s@@5 n@@2))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |5412|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((M3.Tuple$A@@1 T@U) (M3.Tuple$B@@1 T@U) (|a#196#0#0@@0| T@U) (|a#196#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#M3.Tuple.Pair| |a#196#0#0@@0| |a#196#1#0@@0|) (Tclass.M3.Tuple M3.Tuple$A@@1 M3.Tuple$B@@1) $h@@2)  (and ($IsAllocBox |a#196#0#0@@0| M3.Tuple$A@@1 $h@@2) ($IsAllocBox |a#196#1#0@@0| M3.Tuple$B@@1 $h@@2))))
 :qid |unknown.0:0|
 :skolemid |7187|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M3.Tuple.Pair| |a#196#0#0@@0| |a#196#1#0@@0|) (Tclass.M3.Tuple M3.Tuple$A@@1 M3.Tuple$B@@1) $h@@2))
)))
(assert (forall ((s@@6 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@6))) (= (|Seq#Length| (|Seq#Drop| s@@6 n@@3)) (- (|Seq#Length| s@@6) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |5201|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@6 n@@3)))
)))
(assert (forall ((d@@12 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@12) (= (DatatypeCtorId d@@12) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |5404|
 :pattern ( (_System.Tuple2.___hMake2_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (M3.Artifact.ArtifactCons_q d@@13) (= (DatatypeCtorId d@@13) |##M3.Artifact.ArtifactCons|))
 :qid |unknown.0:0|
 :skolemid |6847|
 :pattern ( (M3.Artifact.ArtifactCons_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (M3.Path.InternalPath_q d@@14) (= (DatatypeCtorId d@@14) |##M3.Path.InternalPath|))
 :qid |unknown.0:0|
 :skolemid |6873|
 :pattern ( (M3.Path.InternalPath_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (M3.Path.ExternalPath_q d@@15) (= (DatatypeCtorId d@@15) |##M3.Path.ExternalPath|))
 :qid |unknown.0:0|
 :skolemid |6890|
 :pattern ( (M3.Path.ExternalPath_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (M3.Env.EnvCons_q d@@16) (= (DatatypeCtorId d@@16) |##M3.Env.EnvCons|))
 :qid |unknown.0:0|
 :skolemid |6906|
 :pattern ( (M3.Env.EnvCons_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (M3.WFCertificate.Cert_q d@@17) (= (DatatypeCtorId d@@17) |##M3.WFCertificate.Cert|))
 :qid |unknown.0:0|
 :skolemid |6921|
 :pattern ( (M3.WFCertificate.Cert_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (M3.State.StateCons_q d@@18) (= (DatatypeCtorId d@@18) |##M3.State.StateCons|))
 :qid |unknown.0:0|
 :skolemid |6938|
 :pattern ( (M3.State.StateCons_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (! (= (M3.Program.Program_q d@@19) (= (DatatypeCtorId d@@19) |##M3.Program.Program|))
 :qid |unknown.0:0|
 :skolemid |6953|
 :pattern ( (M3.Program.Program_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (! (= (M3.Statement.stmtVariable_q d@@20) (= (DatatypeCtorId d@@20) |##M3.Statement.stmtVariable|))
 :qid |unknown.0:0|
 :skolemid |6968|
 :pattern ( (M3.Statement.stmtVariable_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (! (= (M3.Statement.stmtReturn_q d@@21) (= (DatatypeCtorId d@@21) |##M3.Statement.stmtReturn|))
 :qid |unknown.0:0|
 :skolemid |6980|
 :pattern ( (M3.Statement.stmtReturn_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (! (= (M3.Expression.exprLiteral_q d@@22) (= (DatatypeCtorId d@@22) |##M3.Expression.exprLiteral|))
 :qid |unknown.0:0|
 :skolemid |6995|
 :pattern ( (M3.Expression.exprLiteral_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (! (= (M3.Expression.exprIdentifier_q d@@23) (= (DatatypeCtorId d@@23) |##M3.Expression.exprIdentifier|))
 :qid |unknown.0:0|
 :skolemid |7004|
 :pattern ( (M3.Expression.exprIdentifier_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (! (= (M3.Expression.exprIf_q d@@24) (= (DatatypeCtorId d@@24) |##M3.Expression.exprIf|))
 :qid |unknown.0:0|
 :skolemid |7013|
 :pattern ( (M3.Expression.exprIf_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (! (= (M3.Expression.exprAnd_q d@@25) (= (DatatypeCtorId d@@25) |##M3.Expression.exprAnd|))
 :qid |unknown.0:0|
 :skolemid |7028|
 :pattern ( (M3.Expression.exprAnd_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (! (= (M3.Expression.exprOr_q d@@26) (= (DatatypeCtorId d@@26) |##M3.Expression.exprOr|))
 :qid |unknown.0:0|
 :skolemid |7040|
 :pattern ( (M3.Expression.exprOr_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (! (= (M3.Expression.exprInvocation_q d@@27) (= (DatatypeCtorId d@@27) |##M3.Expression.exprInvocation|))
 :qid |unknown.0:0|
 :skolemid |7052|
 :pattern ( (M3.Expression.exprInvocation_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (! (= (M3.Expression.exprError_q d@@28) (= (DatatypeCtorId d@@28) |##M3.Expression.exprError|))
 :qid |unknown.0:0|
 :skolemid |7065|
 :pattern ( (M3.Expression.exprError_q d@@28))
)))
(assert (forall ((d@@29 T@U) ) (! (= (M3.Literal.litTrue_q d@@29) (= (DatatypeCtorId d@@29) |##M3.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |7085|
 :pattern ( (M3.Literal.litTrue_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (! (= (M3.Literal.litFalse_q d@@30) (= (DatatypeCtorId d@@30) |##M3.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |7087|
 :pattern ( (M3.Literal.litFalse_q d@@30))
)))
(assert (forall ((d@@31 T@U) ) (! (= (M3.Literal.litUndefined_q d@@31) (= (DatatypeCtorId d@@31) |##M3.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |7089|
 :pattern ( (M3.Literal.litUndefined_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (! (= (M3.Literal.litNull_q d@@32) (= (DatatypeCtorId d@@32) |##M3.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |7091|
 :pattern ( (M3.Literal.litNull_q d@@32))
)))
(assert (forall ((d@@33 T@U) ) (! (= (M3.Literal.litNumber_q d@@33) (= (DatatypeCtorId d@@33) |##M3.Literal.litNumber|))
 :qid |unknown.0:0|
 :skolemid |7094|
 :pattern ( (M3.Literal.litNumber_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (! (= (M3.Literal.litString_q d@@34) (= (DatatypeCtorId d@@34) |##M3.Literal.litString|))
 :qid |unknown.0:0|
 :skolemid |7102|
 :pattern ( (M3.Literal.litString_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (! (= (M3.Literal.litPrimitive_q d@@35) (= (DatatypeCtorId d@@35) |##M3.Literal.litPrimitive|))
 :qid |unknown.0:0|
 :skolemid |7112|
 :pattern ( (M3.Literal.litPrimitive_q d@@35))
)))
(assert (forall ((d@@36 T@U) ) (! (= (M3.Literal.litArrOfPaths_q d@@36) (= (DatatypeCtorId d@@36) |##M3.Literal.litArrOfPaths|))
 :qid |unknown.0:0|
 :skolemid |7121|
 :pattern ( (M3.Literal.litArrOfPaths_q d@@36))
)))
(assert (forall ((d@@37 T@U) ) (! (= (M3.Literal.litArrOfStrings_q d@@37) (= (DatatypeCtorId d@@37) |##M3.Literal.litArrOfStrings|))
 :qid |unknown.0:0|
 :skolemid |7130|
 :pattern ( (M3.Literal.litArrOfStrings_q d@@37))
)))
(assert (forall ((d@@38 T@U) ) (! (= (M3.Literal.litArray_q d@@38) (= (DatatypeCtorId d@@38) |##M3.Literal.litArray|))
 :qid |unknown.0:0|
 :skolemid |7139|
 :pattern ( (M3.Literal.litArray_q d@@38))
)))
(assert (forall ((d@@39 T@U) ) (! (= (M3.Primitive.primCreatePath_q d@@39) (= (DatatypeCtorId d@@39) |##M3.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |7162|
 :pattern ( (M3.Primitive.primCreatePath_q d@@39))
)))
(assert (forall ((d@@40 T@U) ) (! (= (M3.Primitive.primExec_q d@@40) (= (DatatypeCtorId d@@40) |##M3.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |7164|
 :pattern ( (M3.Primitive.primExec_q d@@40))
)))
(assert (forall ((d@@41 T@U) ) (! (= (M3.Reason.rCompatibility_q d@@41) (= (DatatypeCtorId d@@41) |##M3.Reason.rCompatibility|))
 :qid |unknown.0:0|
 :skolemid |7172|
 :pattern ( (M3.Reason.rCompatibility_q d@@41))
)))
(assert (forall ((d@@42 T@U) ) (! (= (M3.Reason.rValidity_q d@@42) (= (DatatypeCtorId d@@42) |##M3.Reason.rValidity|))
 :qid |unknown.0:0|
 :skolemid |7174|
 :pattern ( (M3.Reason.rValidity_q d@@42))
)))
(assert (forall ((d@@43 T@U) ) (! (= (M3.Tuple.Pair_q d@@43) (= (DatatypeCtorId d@@43) |##M3.Tuple.Pair|))
 :qid |unknown.0:0|
 :skolemid |7183|
 :pattern ( (M3.Tuple.Pair_q d@@43))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |5194|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |5195|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@9 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@9)) x@@9)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4981|
 :pattern ( ($Unbox T@@0 x@@9))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|paths#0@@1| T@U) (|st#0@@17| T@U) ) (!  (=> (or (|M3.__default.Restrict#canCall| |paths#0@@1| |st#0@@17|) (and (< 4 $FunctionContextHeight) (and ($Is SetType |paths#0@@1| (TSet Tclass.M3.Path)) ($Is DatatypeTypeType |st#0@@17| Tclass.M3.State)))) ($Is MapType (M3.__default.Restrict |paths#0@@1| |st#0@@17|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.473:27|
 :skolemid |5732|
 :pattern ( (M3.__default.Restrict |paths#0@@1| |st#0@@17|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@9 T@U) (|cmd#0@@8| T@U) (|deps#0@@9| T@U) (|restrictedState#0@@1| T@U) (|exps#0@@4| T@U) (|st#0@@18| T@U) ) (!  (=> (or (|M3.__default.execOne#canCall| (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@4|) (Lit DatatypeTypeType |st#0@@18|)) (and (< 3 $FunctionContextHeight) (and (and (and (and ($Is SeqType |cmd#0@@8| (TSeq TChar)) ($Is SetType |deps#0@@9| (TSet Tclass.M3.Path))) ($Is MapType |restrictedState#0@@1| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SetType |exps#0@@4| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@18| Tclass.M3.State)))) (and (=> (not (|Set#Equal| |exps#0@@4| |Set#Empty|)) (and (|M3.__default.PickOne#canCall| (TSeq TChar) (Lit SetType |exps#0@@4|)) (let ((|exp#1| (Lit SeqType ($Unbox SeqType (M3.__default.PickOne (TSeq TChar) (Lit SetType |exps#0@@4|))))))
 (and (|M3.__default.execOne#canCall| (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1|))) (Lit DatatypeTypeType |st#0@@18|)) (let ((|st'#1| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.execOne ($LS $ly@@9) (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1|))) (Lit DatatypeTypeType |st#0@@18|))))))
 (and (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) |exp#1|) (let ((|p#1| (M3.__default.Loc (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) |exp#1|)))
 (and (|M3.__default.DomSt#canCall| |st'#1|) (=> (not (|Set#IsMember| (M3.__default.DomSt |st'#1|) ($Box DatatypeTypeType |p#1|))) (and (|M3.__default.RunTool#canCall| (Lit SeqType |cmd#0@@8|) (Lit MapType |restrictedState#0@@1|) |exp#1|) (|M3.__default.SetSt#canCall| |p#1| (M3.__default.RunTool (Lit SeqType |cmd#0@@8|) (Lit MapType |restrictedState#0@@1|) |exp#1|) |st'#1|))))))))))) (= (M3.__default.execOne ($LS $ly@@9) (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@4|) (Lit DatatypeTypeType |st#0@@18|)) (ite (|Set#Equal| |exps#0@@4| |Set#Empty|) (|#M3.Tuple.Pair| ($Box SetType (Lit SetType |Set#Empty|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@18|))) (let ((|exp#1@@0| (Lit SeqType ($Unbox SeqType (M3.__default.PickOne (TSeq TChar) (Lit SetType |exps#0@@4|))))))
(let ((|st'#1@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.execOne ($LS $ly@@9) (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1@@0|))) (Lit DatatypeTypeType |st#0@@18|))))))
(let ((|paths#1| ($Unbox SetType (M3.Tuple.fst (M3.__default.execOne ($LS $ly@@9) (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (|Set#Difference| |exps#0@@4| (|Set#UnionOne| |Set#Empty| ($Box SeqType |exp#1@@0|))) (Lit DatatypeTypeType |st#0@@18|))))))
(let ((|p#1@@0| (Lit DatatypeTypeType (M3.__default.Loc (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) |exp#1@@0|))))
(|#M3.Tuple.Pair| ($Box SetType (|Set#Union| |paths#1| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |p#1@@0|)))) ($Box DatatypeTypeType (ite (|Set#IsMember| (M3.__default.DomSt |st'#1@@0|) ($Box DatatypeTypeType |p#1@@0|)) |st'#1@@0| (M3.__default.SetSt |p#1@@0| (Lit DatatypeTypeType (M3.__default.RunTool (Lit SeqType |cmd#0@@8|) (Lit MapType |restrictedState#0@@1|) |exp#1@@0|)) |st'#1@@0|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :weight 3
 :skolemid |5831|
 :pattern ( (M3.__default.execOne ($LS $ly@@9) (Lit SeqType |cmd#0@@8|) (Lit SetType |deps#0@@9|) (Lit MapType |restrictedState#0@@1|) (Lit SetType |exps#0@@4|) (Lit DatatypeTypeType |st#0@@18|)))
))))
(assert (forall ((d@@44 T@U) ) (!  (=> (M3.Path.InternalPath_q d@@44) (exists ((|a#11#0#0| T@U) (|a#11#1#0| T@U) (|a#11#2#0| T@U) ) (! (= d@@44 (|#M3.Path.InternalPath| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6874|
)))
 :qid |unknown.0:0|
 :skolemid |6875|
 :pattern ( (M3.Path.InternalPath_q d@@44))
)))
(assert (forall ((d@@45 T@U) ) (!  (=> (M3.Expression.exprIf_q d@@45) (exists ((|a#85#0#0| T@U) (|a#85#1#0| T@U) (|a#85#2#0| T@U) ) (! (= d@@45 (|#M3.Expression.exprIf| |a#85#0#0| |a#85#1#0| |a#85#2#0|))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7014|
)))
 :qid |unknown.0:0|
 :skolemid |7015|
 :pattern ( (M3.Expression.exprIf_q d@@45))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|id#0@@1| T@U) (|env#0@@5| T@U) ) (!  (=> (or (|M3.__default.GetEnv#canCall| |id#0@@1| |env#0@@5|) (and (< 4 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |id#0@@1| Tclass.M3.Identifier) ($Is DatatypeTypeType |env#0@@5| Tclass.M3.Env)) (M3.__default.ValidEnv |env#0@@5|)))) (and (M3.__default.Value (M3.__default.GetEnv |id#0@@1| |env#0@@5|)) ($Is DatatypeTypeType (M3.__default.GetEnv |id#0@@1| |env#0@@5|) Tclass.M3.Expression)))
 :qid |CloudMakeParallelBuildsdfy.61:25|
 :skolemid |5700|
 :pattern ( (M3.__default.GetEnv |id#0@@1| |env#0@@5|))
))))
(assert (forall ((s@@7 T@U) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| s@@7))) (< (|Seq#Rank| (|Seq#Take| s@@7 i@@6)) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |5224|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@7 i@@6)))
)))
(assert (forall ((a@@20 T@U) (b@@17 T@U) ) (! (= (|Set#Disjoint| a@@20 b@@17) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@20 o@@3)) (not (|Set#IsMember| b@@17 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |5106|
 :pattern ( (|Set#IsMember| a@@20 o@@3))
 :pattern ( (|Set#IsMember| b@@17 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |5107|
 :pattern ( (|Set#Disjoint| a@@20 b@@17))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@9| T@U) (|deps#0@@10| T@U) (|exps#0@@5| T@U) (|st#0@@19| T@U) ) (!  (=> (or (|M3.__default.exec#canCall| (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@10|) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@19|)) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@9| (TSeq TChar)) ($Is SetType |deps#0@@10| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@5| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@19| Tclass.M3.State)))) (and (and (|M3.__default.Restrict#canCall| (Lit SetType |deps#0@@10|) (Lit DatatypeTypeType |st#0@@19|)) (|M3.__default.execOne#canCall| (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@10|) (Lit MapType (M3.__default.Restrict (Lit SetType |deps#0@@10|) (Lit DatatypeTypeType |st#0@@19|))) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@19|))) (= (M3.__default.exec (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@10|) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@19|)) (Lit DatatypeTypeType (M3.__default.execOne ($LS $LZ) (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@10|) (Lit MapType (M3.__default.Restrict (Lit SetType |deps#0@@10|) (Lit DatatypeTypeType |st#0@@19|))) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@19|))))))
 :qid |CloudMakeParallelBuildsdfy.69:23|
 :weight 3
 :skolemid |5823|
 :pattern ( (M3.__default.exec (Lit SeqType |cmd#0@@9|) (Lit SetType |deps#0@@10|) (Lit SetType |exps#0@@5|) (Lit DatatypeTypeType |st#0@@19|)))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($ly@@10 T@U) (|expr#0@@0| T@U) (|st#0@@20| T@U) (|env#0@@6| T@U) ) (!  (=> (or (|M3.__default.eval#canCall| (Lit DatatypeTypeType |expr#0@@0|) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)) (and (< 8 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@0| Tclass.M3.Expression) ($Is DatatypeTypeType |st#0@@20| Tclass.M3.State)) ($Is DatatypeTypeType |env#0@@6| Tclass.M3.Env)) (U_2_bool (Lit boolType (bool_2_U (M3.__default.ValidEnv (Lit DatatypeTypeType |env#0@@6|)))))))) (and (and (|M3.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@0|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.__default.Value (Lit DatatypeTypeType |expr#0@@0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@0|))))) (|M3.__default.GetEnv#canCall| (Lit DatatypeTypeType (M3.Expression.id (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |env#0@@6|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@0|))))) (and (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.cond (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)) (let ((|st'#8| ($Unbox DatatypeTypeType (M3.Tuple.snd (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.cond (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|cond'#2| ($Unbox DatatypeTypeType (M3.Tuple.fst (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.cond (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
 (and (and (=> (M3.Expression.exprLiteral_q |cond'#2|) (|$IsA#M3.Literal| (M3.Expression.lit |cond'#2|))) (=> (and (M3.Expression.exprLiteral_q |cond'#2|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#2|) |#M3.Literal.litTrue|)) (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@0|))) |st'#8| (Lit DatatypeTypeType |env#0@@6|)))) (=> (not (and (M3.Expression.exprLiteral_q |cond'#2|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#2|) |#M3.Literal.litTrue|))) (and (=> (M3.Expression.exprLiteral_q |cond'#2|) (|$IsA#M3.Literal| (M3.Expression.lit |cond'#2|))) (=> (and (M3.Expression.exprLiteral_q |cond'#2|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#2|) |#M3.Literal.litFalse|)) (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@0|))) |st'#8| (Lit DatatypeTypeType |env#0@@6|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@0|))))) (and (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.conj0 (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)) (let ((|st'#9| ($Unbox DatatypeTypeType (M3.Tuple.snd (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.conj0 (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|conj0'#2| ($Unbox DatatypeTypeType (M3.Tuple.fst (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.conj0 (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
 (and (and (=> (M3.Expression.exprLiteral_q |conj0'#2|) (|$IsA#M3.Literal| (M3.Expression.lit |conj0'#2|))) (=> (and (M3.Expression.exprLiteral_q |conj0'#2|) (|M3.Literal#Equal| (M3.Expression.lit |conj0'#2|) |#M3.Literal.litTrue|)) (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.conj1 (Lit DatatypeTypeType |expr#0@@0|))) |st'#9| (Lit DatatypeTypeType |env#0@@6|)))) (=> (not (and (M3.Expression.exprLiteral_q |conj0'#2|) (|M3.Literal#Equal| (M3.Expression.lit |conj0'#2|) |#M3.Literal.litTrue|))) (=> (M3.Expression.exprLiteral_q |conj0'#2|) (|$IsA#M3.Literal| (M3.Expression.lit |conj0'#2|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@0|))))) (and (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.disj0 (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)) (let ((|st'#10| ($Unbox DatatypeTypeType (M3.Tuple.snd (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.disj0 (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|disj0'#2| ($Unbox DatatypeTypeType (M3.Tuple.fst (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.disj0 (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
 (and (=> (M3.Expression.exprLiteral_q |disj0'#2|) (|$IsA#M3.Literal| (M3.Expression.lit |disj0'#2|))) (=> (not (and (M3.Expression.exprLiteral_q |disj0'#2|) (|M3.Literal#Equal| (M3.Expression.lit |disj0'#2|) |#M3.Literal.litTrue|))) (and (=> (M3.Expression.exprLiteral_q |disj0'#2|) (|$IsA#M3.Literal| (M3.Expression.lit |disj0'#2|))) (=> (and (M3.Expression.exprLiteral_q |disj0'#2|) (|M3.Literal#Equal| (M3.Expression.lit |disj0'#2|) |#M3.Literal.litFalse|)) (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.disj1 (Lit DatatypeTypeType |expr#0@@0|))) |st'#10| (Lit DatatypeTypeType |env#0@@6|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@0|)))))) (=> (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@0|))))) (and (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.fun (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)) (let ((|st'#11| ($Unbox DatatypeTypeType (M3.Tuple.snd (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.fun (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|fun'#2| ($Unbox DatatypeTypeType (M3.Tuple.fst (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.fun (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
 (and (|M3.__default.evalArgs#canCall| (Lit DatatypeTypeType |expr#0@@0|) (Lit SeqType (M3.Expression.args (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)) (let ((|sts'#2| ($Unbox SetType (M3.Tuple.snd (Lit DatatypeTypeType (M3.__default.evalArgs ($LS $ly@@10) (Lit DatatypeTypeType |expr#0@@0|) (Lit SeqType (M3.Expression.args (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|args'#2| ($Unbox SeqType (M3.Tuple.fst (Lit DatatypeTypeType (M3.__default.evalArgs ($LS $ly@@10) (Lit DatatypeTypeType |expr#0@@0|) (Lit SeqType (M3.Expression.args (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|sts''#2| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#11|)) |sts'#2|)))
 (and (|M3.__default.Compatible#canCall| |sts''#2|) (=> (M3.__default.Compatible |sts''#2|) (and (|M3.__default.Combine#canCall| |sts''#2|) (let ((|stCombined#2| (M3.__default.Combine ($LS $LZ) |sts''#2|)))
 (=> (and (M3.Expression.exprLiteral_q |fun'#2|) (M3.Literal.litPrimitive_q (M3.Expression.lit |fun'#2|))) (=> (M3.Primitive.primExec_q (M3.Literal.prim (M3.Expression.lit |fun'#2|))) (and (and (|M3.__default.Arity#canCall| (Lit DatatypeTypeType |#M3.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#2|) (LitInt (M3.__default.Arity (Lit DatatypeTypeType |#M3.Primitive.primExec|)))) (|M3.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M3.Primitive.primExec|) |args'#2| |stCombined#2|))) (=> (and (= (|Seq#Length| |args'#2|) (LitInt (M3.__default.Arity (Lit DatatypeTypeType |#M3.Primitive.primExec|)))) (M3.__default.ValidArgs (Lit DatatypeTypeType |#M3.Primitive.primExec|) |args'#2| |stCombined#2|)) (and (|M3.__default.exec#canCall| (M3.Literal.str (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 0))))) (M3.Literal.paths (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 1))))) (M3.Literal.strs (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 2))))) |stCombined#2|) (let ((|ps#2| (M3.__default.exec (M3.Literal.str (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 0))))) (M3.Literal.paths (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 1))))) (M3.Literal.strs (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2| (LitInt 2))))) |stCombined#2|)))
 (and (M3.Tuple.Pair_q |ps#2|) (M3.Tuple.Pair_q |ps#2|)))))))))))))))))))))))))))))) (= (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType |expr#0@@0|) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)) (ite (M3.__default.Value (Lit DatatypeTypeType |expr#0@@0|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0@@0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))) (ite (M3.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@0|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (M3.__default.GetEnv (Lit DatatypeTypeType (M3.Expression.id (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |env#0@@6|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))) (ite (M3.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@0|)) (let ((|st'#8@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.cond (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|cond'#2@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.cond (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(ite  (and (M3.Expression.exprLiteral_q |cond'#2@@0|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#2@@0|) |#M3.Literal.litTrue|)) (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@0|))) |st'#8@@0| (Lit DatatypeTypeType |env#0@@6|)) (ite  (and (M3.Expression.exprLiteral_q |cond'#2@@0|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#2@@0|) |#M3.Literal.litFalse|)) (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@0|))) |st'#8@@0| (Lit DatatypeTypeType |env#0@@6|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))))))) (ite (M3.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@0|)) (let ((|st'#9@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.conj0 (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|conj0'#2@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.conj0 (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(ite  (and (M3.Expression.exprLiteral_q |conj0'#2@@0|) (|M3.Literal#Equal| (M3.Expression.lit |conj0'#2@@0|) |#M3.Literal.litTrue|)) (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.conj1 (Lit DatatypeTypeType |expr#0@@0|))) |st'#9@@0| (Lit DatatypeTypeType |env#0@@6|)) (ite  (and (M3.Expression.exprLiteral_q |conj0'#2@@0|) (|M3.Literal#Equal| (M3.Expression.lit |conj0'#2@@0|) |#M3.Literal.litFalse|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprLiteral| (Lit DatatypeTypeType |#M3.Literal.litFalse|)))) ($Box DatatypeTypeType |st'#9@@0|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))))))) (ite (M3.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@0|)) (let ((|st'#10@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.disj0 (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|disj0'#2@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.disj0 (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(ite  (and (M3.Expression.exprLiteral_q |disj0'#2@@0|) (|M3.Literal#Equal| (M3.Expression.lit |disj0'#2@@0|) |#M3.Literal.litTrue|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprLiteral| (Lit DatatypeTypeType |#M3.Literal.litTrue|)))) ($Box DatatypeTypeType |st'#10@@0|)) (ite  (and (M3.Expression.exprLiteral_q |disj0'#2@@0|) (|M3.Literal#Equal| (M3.Expression.lit |disj0'#2@@0|) |#M3.Literal.litFalse|)) (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.disj1 (Lit DatatypeTypeType |expr#0@@0|))) |st'#10@@0| (Lit DatatypeTypeType |env#0@@6|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))))))) (ite (M3.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@0|)) (let ((|st'#11@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.fun (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|fun'#2@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (Lit DatatypeTypeType (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType (M3.Expression.fun (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|sts'#2@@0| ($Unbox SetType (M3.Tuple.snd (Lit DatatypeTypeType (M3.__default.evalArgs ($LS $ly@@10) (Lit DatatypeTypeType |expr#0@@0|) (Lit SeqType (M3.Expression.args (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|args'#2@@0| ($Unbox SeqType (M3.Tuple.fst (Lit DatatypeTypeType (M3.__default.evalArgs ($LS $ly@@10) (Lit DatatypeTypeType |expr#0@@0|) (Lit SeqType (M3.Expression.args (Lit DatatypeTypeType |expr#0@@0|))) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))))))
(let ((|sts''#2@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#11@@0|)) |sts'#2@@0|)))
(ite  (not (M3.__default.Compatible |sts''#2@@0|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rCompatibility|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))) (let ((|stCombined#2@@0| (M3.__default.Combine ($LS $LZ) |sts''#2@@0|)))
(ite  (and (M3.Expression.exprLiteral_q |fun'#2@@0|) (M3.Literal.litPrimitive_q (M3.Expression.lit |fun'#2@@0|))) (ite (M3.Primitive.primExec_q (M3.Literal.prim (M3.Expression.lit |fun'#2@@0|))) (ite  (and (= (|Seq#Length| |args'#2@@0|) (LitInt (M3.__default.Arity (Lit DatatypeTypeType |#M3.Primitive.primExec|)))) (M3.__default.ValidArgs (Lit DatatypeTypeType |#M3.Primitive.primExec|) |args'#2@@0| |stCombined#2@@0|)) (let ((|ps#2@@0| (M3.__default.exec (M3.Literal.str (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 0))))) (M3.Literal.paths (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 1))))) (M3.Literal.strs (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#2@@0| (LitInt 2))))) |stCombined#2@@0|)))
(|#M3.Tuple.Pair| ($Box DatatypeTypeType (|#M3.Expression.exprLiteral| (|#M3.Literal.litArrOfPaths| ($Unbox SetType (M3.Tuple.fst |ps#2@@0|))))) (M3.Tuple.snd |ps#2@@0|))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|)))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|)))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))))))))))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |st#0@@20|))))))))))))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :weight 3
 :skolemid |6704|
 :pattern ( (M3.__default.eval ($LS $ly@@10) (Lit DatatypeTypeType |expr#0@@0|) (Lit DatatypeTypeType |st#0@@20|) (Lit DatatypeTypeType |env#0@@6|)))
))))
(assert (forall ((m@@1 T@U) (bx@@1 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@1)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |5108|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|p#0@@15| T@U) (|st#0@@21| T@U) ) (!  (=> (or (|M3.__default.Oracle#canCall| |p#0@@15| |st#0@@21|) (and (< 5 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@15| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@21| Tclass.M3.State)))) (and (and (and (|M3.__default.WellFounded#canCall| |p#0@@15|) (=> (M3.__default.WellFounded |p#0@@15|) (and (|M3.__default.GetCert#canCall| |p#0@@15|) (|M3.__default.OracleWF#canCall| |p#0@@15| (M3.__default.GetCert |p#0@@15|) |st#0@@21|)))) (=> (not (M3.__default.WellFounded |p#0@@15|)) (|M3.__default.OracleArbitrary#canCall| |p#0@@15|))) (= (M3.__default.Oracle |p#0@@15| |st#0@@21|) (ite (M3.__default.WellFounded |p#0@@15|) (M3.__default.OracleWF ($LS $LZ) |p#0@@15| (M3.__default.GetCert |p#0@@15|) |st#0@@21|) (M3.__default.OracleArbitrary |p#0@@15|)))))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |6037|
 :pattern ( (M3.__default.Oracle |p#0@@15| |st#0@@21|))
))))
(assert (forall ((d@@46 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@46) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@46 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |5405|
)))
 :qid |unknown.0:0|
 :skolemid |5406|
 :pattern ( (_System.Tuple2.___hMake2_q d@@46))
)))
(assert (forall ((d@@47 T@U) ) (!  (=> (M3.WFCertificate.Cert_q d@@47) (exists ((|a#37#0#0| T@U) (|a#37#1#0| T@U) ) (! (= d@@47 (|#M3.WFCertificate.Cert| |a#37#0#0| |a#37#1#0|))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6922|
)))
 :qid |unknown.0:0|
 :skolemid |6923|
 :pattern ( (M3.WFCertificate.Cert_q d@@47))
)))
(assert (forall ((d@@48 T@U) ) (!  (=> (M3.Statement.stmtVariable_q d@@48) (exists ((|a#59#0#0| T@U) (|a#59#1#0| T@U) ) (! (= d@@48 (|#M3.Statement.stmtVariable| |a#59#0#0| |a#59#1#0|))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |6969|
)))
 :qid |unknown.0:0|
 :skolemid |6970|
 :pattern ( (M3.Statement.stmtVariable_q d@@48))
)))
(assert (forall ((d@@49 T@U) ) (!  (=> (M3.Expression.exprAnd_q d@@49) (exists ((|a#95#0#0| T@U) (|a#95#1#0| T@U) ) (! (= d@@49 (|#M3.Expression.exprAnd| |a#95#0#0| |a#95#1#0|))
 :qid |CloudMakeParallelBuildsdfy.135:33|
 :skolemid |7029|
)))
 :qid |unknown.0:0|
 :skolemid |7030|
 :pattern ( (M3.Expression.exprAnd_q d@@49))
)))
(assert (forall ((d@@50 T@U) ) (!  (=> (M3.Expression.exprOr_q d@@50) (exists ((|a#103#0#0| T@U) (|a#103#1#0| T@U) ) (! (= d@@50 (|#M3.Expression.exprOr| |a#103#0#0| |a#103#1#0|))
 :qid |CloudMakeParallelBuildsdfy.136:32|
 :skolemid |7041|
)))
 :qid |unknown.0:0|
 :skolemid |7042|
 :pattern ( (M3.Expression.exprOr_q d@@50))
)))
(assert (forall ((d@@51 T@U) ) (!  (=> (M3.Expression.exprInvocation_q d@@51) (exists ((|a#111#0#0| T@U) (|a#111#1#0| T@U) ) (! (= d@@51 (|#M3.Expression.exprInvocation| |a#111#0#0| |a#111#1#0|))
 :qid |CloudMakeParallelBuildsdfy.137:40|
 :skolemid |7053|
)))
 :qid |unknown.0:0|
 :skolemid |7054|
 :pattern ( (M3.Expression.exprInvocation_q d@@51))
)))
(assert (forall ((d@@52 T@U) ) (!  (=> (M3.Tuple.Pair_q d@@52) (exists ((|a#195#0#0| T@U) (|a#195#1#0| T@U) ) (! (= d@@52 (|#M3.Tuple.Pair| |a#195#0#0| |a#195#1#0|))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7184|
)))
 :qid |unknown.0:0|
 :skolemid |7185|
 :pattern ( (M3.Tuple.Pair_q d@@52))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@16| T@U) (|st#0@@22| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| |p#0@@16| |st#0@@22|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@16| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@22| Tclass.M3.State)) (|Set#IsMember| (M3.__default.DomSt |st#0@@22|) ($Box DatatypeTypeType |p#0@@16|))))) (and (M3.State.StateCons_q |st#0@@22|) (= (M3.__default.GetSt |p#0@@16| |st#0@@22|) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.State.m |st#0@@22|)) ($Box DatatypeTypeType |p#0@@16|))))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |6471|
 :pattern ( (M3.__default.GetSt |p#0@@16| |st#0@@22|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@23| T@U) ) (!  (=> (or (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@23|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@23| Tclass.M3.State))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@23|)) (= (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@23|)) (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Map#Domain| (M3.State.m (Lit DatatypeTypeType |st#0@@23|))))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :weight 3
 :skolemid |6479|
 :pattern ( (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@23|)))
))))
(assert (forall ((d@@53 T@U) ) (!  (=> (M3.Literal.litTrue_q d@@53) (= d@@53 |#M3.Literal.litTrue|))
 :qid |unknown.0:0|
 :skolemid |7086|
 :pattern ( (M3.Literal.litTrue_q d@@53))
)))
(assert (forall ((d@@54 T@U) ) (!  (=> (M3.Literal.litFalse_q d@@54) (= d@@54 |#M3.Literal.litFalse|))
 :qid |unknown.0:0|
 :skolemid |7088|
 :pattern ( (M3.Literal.litFalse_q d@@54))
)))
(assert (forall ((d@@55 T@U) ) (!  (=> (M3.Literal.litUndefined_q d@@55) (= d@@55 |#M3.Literal.litUndefined|))
 :qid |unknown.0:0|
 :skolemid |7090|
 :pattern ( (M3.Literal.litUndefined_q d@@55))
)))
(assert (forall ((d@@56 T@U) ) (!  (=> (M3.Literal.litNull_q d@@56) (= d@@56 |#M3.Literal.litNull|))
 :qid |unknown.0:0|
 :skolemid |7092|
 :pattern ( (M3.Literal.litNull_q d@@56))
)))
(assert (forall ((d@@57 T@U) ) (!  (=> (M3.Primitive.primCreatePath_q d@@57) (= d@@57 |#M3.Primitive.primCreatePath|))
 :qid |unknown.0:0|
 :skolemid |7163|
 :pattern ( (M3.Primitive.primCreatePath_q d@@57))
)))
(assert (forall ((d@@58 T@U) ) (!  (=> (M3.Primitive.primExec_q d@@58) (= d@@58 |#M3.Primitive.primExec|))
 :qid |unknown.0:0|
 :skolemid |7165|
 :pattern ( (M3.Primitive.primExec_q d@@58))
)))
(assert (forall ((d@@59 T@U) ) (!  (=> (M3.Reason.rCompatibility_q d@@59) (= d@@59 |#M3.Reason.rCompatibility|))
 :qid |unknown.0:0|
 :skolemid |7173|
 :pattern ( (M3.Reason.rCompatibility_q d@@59))
)))
(assert (forall ((d@@60 T@U) ) (!  (=> (M3.Reason.rValidity_q d@@60) (= d@@60 |#M3.Reason.rValidity|))
 :qid |unknown.0:0|
 :skolemid |7175|
 :pattern ( (M3.Reason.rValidity_q d@@60))
)))
(assert (forall ((v@@1 T@U) (t0@@1 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@1)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@2) ($IsBox bx@@2 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |5001|
 :pattern ( (|Set#IsMember| v@@1 bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |5002|
 :pattern ( ($Is SetType v@@1 (TSet t0@@1)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@6 T@U) (|p#0@@17| T@U) ) (!  (=> (or (|M3.__default.OracleArbitrary#canCall| (Lit DatatypeTypeType |p#0@@17|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) ($Is DatatypeTypeType |p#0@@17| Tclass.M3.Path)))) (and |$let#33$canCall| (= (M3.__default.OracleArbitrary (Lit DatatypeTypeType |p#0@@17|)) (let ((|a#1@@0| |$let#33_a|))
|a#1@@0|))))
 :qid |CloudMakeParallelBuildsdfy.648:18|
 :weight 3
 :skolemid |6057|
 :pattern ( (M3.__default.OracleArbitrary (Lit DatatypeTypeType |p#0@@17|)) ($IsGoodHeap $Heap@@6))
))))
(assert (forall ((d@@61 T@U) ) (!  (=> (|$IsA#M3.Literal| d@@61) (or (or (or (or (or (or (or (or (or (M3.Literal.litTrue_q d@@61) (M3.Literal.litFalse_q d@@61)) (M3.Literal.litUndefined_q d@@61)) (M3.Literal.litNull_q d@@61)) (M3.Literal.litNumber_q d@@61)) (M3.Literal.litString_q d@@61)) (M3.Literal.litPrimitive_q d@@61)) (M3.Literal.litArrOfPaths_q d@@61)) (M3.Literal.litArrOfStrings_q d@@61)) (M3.Literal.litArray_q d@@61)))
 :qid |unknown.0:0|
 :skolemid |7149|
 :pattern ( (|$IsA#M3.Literal| d@@61))
)))
(assert (forall ((s@@8 T@U) (i@@7 Int) ) (!  (=> (and (< 0 i@@7) (<= i@@7 (|Seq#Length| s@@8))) (< (|Seq#Rank| (|Seq#Drop| s@@8 i@@7)) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |5223|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@8 i@@7)))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|cmd#0@@10| T@U) (|deps#0@@11| T@U) (|exps#0@@6| T@U) (|st#0@@24| T@U) ) (!  (=> (or (|M3.__default.Pre#canCall| |cmd#0@@10| |deps#0@@11| |exps#0@@6| |st#0@@24|) (and (< 6 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@10| (TSeq TChar)) ($Is SetType |deps#0@@11| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@6| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@24| Tclass.M3.State)))) (and (forall ((|e#0@@1| T@U) ) (!  (=> ($Is SeqType |e#0@@1| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#0@@1|)) (and (and (|M3.__default.Loc#canCall| |cmd#0@@10| |deps#0@@11| |e#0@@1|) (|M3.__default.DomSt#canCall| |st#0@@24|)) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@24|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@10| |deps#0@@11| |e#0@@1|))) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt (M3.__default.Loc |cmd#0@@10| |deps#0@@11| |e#0@@1|) |st#0@@24|)) (|$IsA#M3.Artifact| (M3.__default.Oracle (M3.__default.Loc |cmd#0@@10| |deps#0@@11| |e#0@@1|) |st#0@@24|))) (and (and (|M3.__default.Loc#canCall| |cmd#0@@10| |deps#0@@11| |e#0@@1|) (|M3.__default.GetSt#canCall| (M3.__default.Loc |cmd#0@@10| |deps#0@@11| |e#0@@1|) |st#0@@24|)) (and (|M3.__default.Loc#canCall| |cmd#0@@10| |deps#0@@11| |e#0@@1|) (|M3.__default.Oracle#canCall| (M3.__default.Loc |cmd#0@@10| |deps#0@@11| |e#0@@1|) |st#0@@24|))))))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |6560|
 :pattern ( (M3.__default.Loc |cmd#0@@10| |deps#0@@11| |e#0@@1|))
 :pattern ( (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#0@@1|)))
)) (= (M3.__default.Pre |cmd#0@@10| |deps#0@@11| |exps#0@@6| |st#0@@24|) (forall ((|e#0@@2| T@U) ) (!  (=> ($Is SeqType |e#0@@2| (TSeq TChar)) (=> (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#0@@2|)) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@24|) ($Box DatatypeTypeType (M3.__default.Loc |cmd#0@@10| |deps#0@@11| |e#0@@2|))) (|M3.Artifact#Equal| (M3.__default.GetSt (M3.__default.Loc |cmd#0@@10| |deps#0@@11| |e#0@@2|) |st#0@@24|) (M3.__default.Oracle (M3.__default.Loc |cmd#0@@10| |deps#0@@11| |e#0@@2|) |st#0@@24|)))))
 :qid |CloudMakeParallelBuildsdfy.85:12|
 :skolemid |6559|
 :pattern ( (M3.__default.Loc |cmd#0@@10| |deps#0@@11| |e#0@@2|))
 :pattern ( (|Set#IsMember| |exps#0@@6| ($Box SeqType |e#0@@2|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.83:23|
 :skolemid |6561|
 :pattern ( (M3.__default.Pre |cmd#0@@10| |deps#0@@11| |exps#0@@6| |st#0@@24|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@11 T@U) (|p#0@@18| T@U) (|cert#0@@5| T@U) (|st#0@@25| T@U) ) (!  (=> (or (|M3.__default.OracleWF#canCall| |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|) |st#0@@25|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |p#0@@18| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@5| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |st#0@@25| Tclass.M3.State)) (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|))))) (and (and (and (and (|M3.__default.LocInv__Cmd#canCall| |p#0@@18|) (|M3.__default.LocInv__Deps#canCall| |p#0@@18|)) (|M3.__default.LocInv__Exp#canCall| |p#0@@18|)) (let ((|e#1@@1| (M3.__default.LocInv__Exp |p#0@@18|)))
(let ((|deps#1@@0| (M3.__default.LocInv__Deps |p#0@@18|)))
(let ((|cmd#1@@0| (M3.__default.LocInv__Cmd |p#0@@18|)))
 (and (|M3.__default.CollectDependencies#canCall| |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|) |deps#1@@0| |st#0@@25|) (|M3.__default.RunTool#canCall| |cmd#1@@0| (M3.__default.CollectDependencies ($LS $ly@@11) |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|) |deps#1@@0| |st#0@@25|) |e#1@@1|)))))) (= (M3.__default.OracleWF ($LS $ly@@11) |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|) |st#0@@25|) (let ((|e#1@@2| (M3.__default.LocInv__Exp |p#0@@18|)))
(let ((|deps#1@@1| (M3.__default.LocInv__Deps |p#0@@18|)))
(let ((|cmd#1@@1| (M3.__default.LocInv__Cmd |p#0@@18|)))
(M3.__default.RunTool |cmd#1@@1| (M3.__default.CollectDependencies ($LS $ly@@11) |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|) |deps#1@@1| |st#0@@25|) |e#1@@2|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :weight 3
 :skolemid |6063|
 :pattern ( (M3.__default.OracleWF ($LS $ly@@11) |p#0@@18| (Lit DatatypeTypeType |cert#0@@5|) |st#0@@25|))
))))
(assert (forall ((d@@62 T@U) ) (!  (=> (M3.Artifact.ArtifactCons_q d@@62) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@62 (|#M3.Artifact.ArtifactCons| |a#1#0#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6848|
)))
 :qid |unknown.0:0|
 :skolemid |6849|
 :pattern ( (M3.Artifact.ArtifactCons_q d@@62))
)))
(assert (forall ((d@@63 T@U) ) (!  (=> (M3.Path.ExternalPath_q d@@63) (exists ((|a#23#0#0| T@U) ) (! (= d@@63 (|#M3.Path.ExternalPath| |a#23#0#0|))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6891|
)))
 :qid |unknown.0:0|
 :skolemid |6892|
 :pattern ( (M3.Path.ExternalPath_q d@@63))
)))
(assert (forall ((d@@64 T@U) ) (!  (=> (M3.Env.EnvCons_q d@@64) (exists ((|a#30#0#0| T@U) ) (! (= d@@64 (|#M3.Env.EnvCons| |a#30#0#0|))
 :qid |CloudMakeParallelBuildsdfy.819:26|
 :skolemid |6907|
)))
 :qid |unknown.0:0|
 :skolemid |6908|
 :pattern ( (M3.Env.EnvCons_q d@@64))
)))
(assert (forall ((d@@65 T@U) ) (!  (=> (M3.State.StateCons_q d@@65) (exists ((|a#45#0#0| T@U) ) (! (= d@@65 (|#M3.State.StateCons| |a#45#0#0|))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6939|
)))
 :qid |unknown.0:0|
 :skolemid |6940|
 :pattern ( (M3.State.StateCons_q d@@65))
)))
(assert (forall ((d@@66 T@U) ) (!  (=> (M3.Program.Program_q d@@66) (exists ((|a#52#0#0| T@U) ) (! (= d@@66 (|#M3.Program.Program| |a#52#0#0|))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |6954|
)))
 :qid |unknown.0:0|
 :skolemid |6955|
 :pattern ( (M3.Program.Program_q d@@66))
)))
(assert (forall ((d@@67 T@U) ) (!  (=> (M3.Statement.stmtReturn_q d@@67) (exists ((|a#67#0#0| T@U) ) (! (= d@@67 (|#M3.Statement.stmtReturn| |a#67#0#0|))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |6981|
)))
 :qid |unknown.0:0|
 :skolemid |6982|
 :pattern ( (M3.Statement.stmtReturn_q d@@67))
)))
(assert (forall ((d@@68 T@U) ) (!  (=> (M3.Expression.exprLiteral_q d@@68) (exists ((|a#73#0#0| T@U) ) (! (= d@@68 (|#M3.Expression.exprLiteral| |a#73#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:37|
 :skolemid |6996|
)))
 :qid |unknown.0:0|
 :skolemid |6997|
 :pattern ( (M3.Expression.exprLiteral_q d@@68))
)))
(assert (forall ((d@@69 T@U) ) (!  (=> (M3.Expression.exprIdentifier_q d@@69) (exists ((|a#79#0#0| T@U) ) (! (= d@@69 (|#M3.Expression.exprIdentifier| |a#79#0#0|))
 :qid |CloudMakeParallelBuildsdfy.133:68|
 :skolemid |7005|
)))
 :qid |unknown.0:0|
 :skolemid |7006|
 :pattern ( (M3.Expression.exprIdentifier_q d@@69))
)))
(assert (forall ((d@@70 T@U) ) (!  (=> (M3.Expression.exprError_q d@@70) (exists ((|a#120#0#0| T@U) ) (! (= d@@70 (|#M3.Expression.exprError| |a#120#0#0|))
 :qid |CloudMakeParallelBuildsdfy.138:35|
 :skolemid |7066|
)))
 :qid |unknown.0:0|
 :skolemid |7067|
 :pattern ( (M3.Expression.exprError_q d@@70))
)))
(assert (forall ((d@@71 T@U) ) (!  (=> (M3.Literal.litNumber_q d@@71) (exists ((|a#142#0#0| Int) ) (! (= d@@71 (|#M3.Literal.litNumber| |a#142#0#0|))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |7095|
)))
 :qid |unknown.0:0|
 :skolemid |7096|
 :pattern ( (M3.Literal.litNumber_q d@@71))
)))
(assert (forall ((d@@72 T@U) ) (!  (=> (M3.Literal.litString_q d@@72) (exists ((|a#147#0#0| T@U) ) (! (= d@@72 (|#M3.Literal.litString| |a#147#0#0|))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |7103|
)))
 :qid |unknown.0:0|
 :skolemid |7104|
 :pattern ( (M3.Literal.litString_q d@@72))
)))
(assert (forall ((d@@73 T@U) ) (!  (=> (M3.Literal.litPrimitive_q d@@73) (exists ((|a#154#0#0| T@U) ) (! (= d@@73 (|#M3.Literal.litPrimitive| |a#154#0#0|))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |7113|
)))
 :qid |unknown.0:0|
 :skolemid |7114|
 :pattern ( (M3.Literal.litPrimitive_q d@@73))
)))
(assert (forall ((d@@74 T@U) ) (!  (=> (M3.Literal.litArrOfPaths_q d@@74) (exists ((|a#160#0#0| T@U) ) (! (= d@@74 (|#M3.Literal.litArrOfPaths| |a#160#0#0|))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |7122|
)))
 :qid |unknown.0:0|
 :skolemid |7123|
 :pattern ( (M3.Literal.litArrOfPaths_q d@@74))
)))
(assert (forall ((d@@75 T@U) ) (!  (=> (M3.Literal.litArrOfStrings_q d@@75) (exists ((|a#166#0#0| T@U) ) (! (= d@@75 (|#M3.Literal.litArrOfStrings| |a#166#0#0|))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |7131|
)))
 :qid |unknown.0:0|
 :skolemid |7132|
 :pattern ( (M3.Literal.litArrOfStrings_q d@@75))
)))
(assert (forall ((d@@76 T@U) ) (!  (=> (M3.Literal.litArray_q d@@76) (exists ((|a#172#0#0| T@U) ) (! (= d@@76 (|#M3.Literal.litArray| |a#172#0#0|))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |7140|
)))
 :qid |unknown.0:0|
 :skolemid |7141|
 :pattern ( (M3.Literal.litArray_q d@@76))
)))
(assert (forall ((d@@77 T@U) ) (!  (=> ($Is DatatypeTypeType d@@77 Tclass.M3.Expression) (or (or (or (or (or (or (M3.Expression.exprLiteral_q d@@77) (M3.Expression.exprIdentifier_q d@@77)) (M3.Expression.exprIf_q d@@77)) (M3.Expression.exprAnd_q d@@77)) (M3.Expression.exprOr_q d@@77)) (M3.Expression.exprInvocation_q d@@77)) (M3.Expression.exprError_q d@@77)))
 :qid |unknown.0:0|
 :skolemid |7076|
 :pattern ( (M3.Expression.exprError_q d@@77) ($Is DatatypeTypeType d@@77 Tclass.M3.Expression))
 :pattern ( (M3.Expression.exprInvocation_q d@@77) ($Is DatatypeTypeType d@@77 Tclass.M3.Expression))
 :pattern ( (M3.Expression.exprOr_q d@@77) ($Is DatatypeTypeType d@@77 Tclass.M3.Expression))
 :pattern ( (M3.Expression.exprAnd_q d@@77) ($Is DatatypeTypeType d@@77 Tclass.M3.Expression))
 :pattern ( (M3.Expression.exprIf_q d@@77) ($Is DatatypeTypeType d@@77 Tclass.M3.Expression))
 :pattern ( (M3.Expression.exprIdentifier_q d@@77) ($Is DatatypeTypeType d@@77 Tclass.M3.Expression))
 :pattern ( (M3.Expression.exprLiteral_q d@@77) ($Is DatatypeTypeType d@@77 Tclass.M3.Expression))
)))
(assert (forall ((p T@U) ) (!  (=> (|$let#30$canCall| p) (and ($Is DatatypeTypeType (|$let#30_c| p) Tclass.M3.WFCertificate) (M3.__default.CheckWellFounded ($LS $LZ) p (|$let#30_c| p))))
 :qid |CloudMakeParallelBuildsdfy.631:5|
 :skolemid |6019|
 :pattern ( (|$let#30_c| p))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|env#0@@7| T@U) ) (!  (=> (or (|M3.__default.ValidEnv#canCall| |env#0@@7|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |env#0@@7| Tclass.M3.Env))) (and (forall ((|id#0@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |id#0@@2| Tclass.M3.Identifier) (and (M3.Env.EnvCons_q |env#0@@7|) (=> (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@7|)) ($Box DatatypeTypeType |id#0@@2|)) (and (M3.Env.EnvCons_q |env#0@@7|) (|M3.__default.Value#canCall| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@7|)) ($Box DatatypeTypeType |id#0@@2|))))))))
 :qid |CloudMakeParallelBuildsdfy.834:12|
 :skolemid |5718|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@7|)) ($Box DatatypeTypeType |id#0@@2|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@7|)) ($Box DatatypeTypeType |id#0@@2|)))
)) (= (M3.__default.ValidEnv |env#0@@7|) (forall ((|id#0@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |id#0@@3| Tclass.M3.Identifier) (=> (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@7|)) ($Box DatatypeTypeType |id#0@@3|)) (M3.__default.Value ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@7|)) ($Box DatatypeTypeType |id#0@@3|))))))
 :qid |CloudMakeParallelBuildsdfy.834:12|
 :skolemid |5717|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@7|)) ($Box DatatypeTypeType |id#0@@3|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@7|)) ($Box DatatypeTypeType |id#0@@3|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.58:28|
 :skolemid |5719|
 :pattern ( (M3.__default.ValidEnv |env#0@@7|))
))))
(assert (forall ((a@@21 T@U) (b@@18 T@U) ) (! (= (|M3.Artifact#Equal| a@@21 b@@18) (= (M3.Artifact._h11 a@@21) (M3.Artifact._h11 b@@18)))
 :qid |unknown.0:0|
 :skolemid |6857|
 :pattern ( (|M3.Artifact#Equal| a@@21 b@@18))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@19| T@U) (|st#0@@26| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| (Lit DatatypeTypeType |p#0@@19|) (Lit DatatypeTypeType |st#0@@26|)) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@19| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@26| Tclass.M3.State)) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@26|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |p#0@@19|)))))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@26|)) (= (M3.__default.GetSt (Lit DatatypeTypeType |p#0@@19|) (Lit DatatypeTypeType |st#0@@26|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.State.m (Lit DatatypeTypeType |st#0@@26|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |p#0@@19|)))))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |6473|
 :pattern ( (M3.__default.GetSt (Lit DatatypeTypeType |p#0@@19|) (Lit DatatypeTypeType |st#0@@26|)))
))))
(assert (forall ((s@@9 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@9 v@@2)) (+ 1 (|Seq#Length| s@@9)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |5179|
 :pattern ( (|Seq#Build| s@@9 v@@2))
)))
(assert (forall ((|l#0@@1| T@U) (|$w#0@@1| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#17| |l#0@@1|) |$w#0@@1|) ($Box DatatypeTypeType (M3.__default.GetSt ($Unbox DatatypeTypeType |$w#0@@1|) |l#0@@1|)))
 :qid |CloudMakeParallelBuildsdfy.473:45|
 :skolemid |7208|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#17| |l#0@@1|) |$w#0@@1|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@20| T@U) ) (!  (=> (or (|M3.__default.WellFounded#canCall| (Lit DatatypeTypeType |p#0@@20|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@20| Tclass.M3.Path))) (and (forall ((|cert#1| T@U) ) (!  (=> ($Is DatatypeTypeType |cert#1| Tclass.M3.WFCertificate) (|M3.__default.CheckWellFounded#canCall| (Lit DatatypeTypeType |p#0@@20|) |cert#1|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |5763|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@20| |cert#1|))
)) (= (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@20|)) (exists ((|cert#1@@0| T@U) ) (!  (and ($Is DatatypeTypeType |cert#1@@0| Tclass.M3.WFCertificate) (M3.__default.CheckWellFounded ($LS $LZ) (Lit DatatypeTypeType |p#0@@20|) |cert#1@@0|))
 :qid |CloudMakeParallelBuildsdfy.491:12|
 :skolemid |5762|
 :pattern ( (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@20| |cert#1@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.17:31|
 :weight 3
 :skolemid |5764|
 :pattern ( (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@20|)))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@11| T@U) (|deps#0@@12| T@U) (|exps#0@@7| T@U) (|st#0@@27| T@U) ) (!  (=> (or (|M3.__default.exec#canCall| |cmd#0@@11| |deps#0@@12| |exps#0@@7| |st#0@@27|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@11| (TSeq TChar)) ($Is SetType |deps#0@@12| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@7| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@27| Tclass.M3.State)))) ($Is DatatypeTypeType (M3.__default.exec |cmd#0@@11| |deps#0@@12| |exps#0@@7| |st#0@@27|) (Tclass.M3.Tuple (TSet Tclass.M3.Path) Tclass.M3.State)))
 :qid |CloudMakeParallelBuildsdfy.69:23|
 :skolemid |5819|
 :pattern ( (M3.__default.exec |cmd#0@@11| |deps#0@@12| |exps#0@@7| |st#0@@27|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@28| T@U) ) (!  (=> (or (|M3.__default.ValidState#canCall| |st#0@@28|) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@28| Tclass.M3.State))) (and (forall ((|p#0@@21| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@21| Tclass.M3.Path) (and (|M3.__default.DomSt#canCall| |st#0@@28|) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@28|) ($Box DatatypeTypeType |p#0@@21|)) (|M3.__default.WellFounded#canCall| |p#0@@21|))))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6492|
 :pattern ( (M3.__default.WellFounded |p#0@@21|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@28|) ($Box DatatypeTypeType |p#0@@21|)))
)) (= (M3.__default.ValidState |st#0@@28|) (forall ((|p#0@@22| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@22| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@28|) ($Box DatatypeTypeType |p#0@@22|)) (M3.__default.WellFounded |p#0@@22|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6491|
 :pattern ( (M3.__default.WellFounded |p#0@@22|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@28|) ($Box DatatypeTypeType |p#0@@22|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.13:30|
 :skolemid |6493|
 :pattern ( (M3.__default.ValidState |st#0@@28|))
))))
(assert (forall (($ly@@12 T@U) (|p#0@@23| T@U) (|cert#0@@6| T@U) ) (! (= (M3.__default.CheckWellFounded ($LS $ly@@12) |p#0@@23| |cert#0@@6|) (M3.__default.CheckWellFounded $ly@@12 |p#0@@23| |cert#0@@6|))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :skolemid |5769|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@12) |p#0@@23| |cert#0@@6|))
)))
(assert (forall ((v@@3 T@U) (t@@3 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@3 h) ($IsAlloc T@@1 v@@3 t@@3 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4994|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@3 h))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|stmts#0@@1| T@U) ) (!  (=> (or (|M3.__default.Legal#canCall| (Lit SeqType |stmts#0@@1|)) (and (< 3 $FunctionContextHeight) ($Is SeqType |stmts#0@@1| (TSeq Tclass.M3.Statement)))) (= (M3.__default.Legal (Lit SeqType |stmts#0@@1|))  (or (not (= (|Seq#Length| (Lit SeqType |stmts#0@@1|)) 0)) (not true))))
 :qid |CloudMakeParallelBuildsdfy.196:25|
 :weight 3
 :skolemid |6697|
 :pattern ( (M3.__default.Legal (Lit SeqType |stmts#0@@1|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|id#0@@4| T@U) (|expr#0@@1| T@U) (|env#0@@8| T@U) ) (!  (=> (or (|M3.__default.SetEnv#canCall| (Lit DatatypeTypeType |id#0@@4|) (Lit DatatypeTypeType |expr#0@@1|) (Lit DatatypeTypeType |env#0@@8|)) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |id#0@@4| Tclass.M3.Identifier) ($Is DatatypeTypeType |expr#0@@1| Tclass.M3.Expression)) ($Is DatatypeTypeType |env#0@@8| Tclass.M3.Env)) (U_2_bool (Lit boolType (bool_2_U  (and (M3.__default.ValidEnv (Lit DatatypeTypeType |env#0@@8|)) (M3.__default.Value (Lit DatatypeTypeType |expr#0@@1|))))))))) (and (M3.Env.EnvCons_q (Lit DatatypeTypeType |env#0@@8|)) (= (M3.__default.SetEnv (Lit DatatypeTypeType |id#0@@4|) (Lit DatatypeTypeType |expr#0@@1|) (Lit DatatypeTypeType |env#0@@8|)) (|#M3.Env.EnvCons| (|Map#Build| (Lit MapType (M3.Env.m (Lit DatatypeTypeType |env#0@@8|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |id#0@@4|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0@@1|)))))))
 :qid |CloudMakeParallelBuildsdfy.64:25|
 :weight 3
 :skolemid |5710|
 :pattern ( (M3.__default.SetEnv (Lit DatatypeTypeType |id#0@@4|) (Lit DatatypeTypeType |expr#0@@1|) (Lit DatatypeTypeType |env#0@@8|)))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall ((|prog#0@@0| T@U) (|st#0@@29| T@U) ) (!  (=> (or (|M3.__default.build#canCall| |prog#0@@0| |st#0@@29|) (and (< 10 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prog#0@@0| Tclass.M3.Program) ($Is DatatypeTypeType |st#0@@29| Tclass.M3.State)) (M3.__default.Legal (M3.Program.stmts |prog#0@@0|))))) ($Is DatatypeTypeType (M3.__default.build |prog#0@@0| |st#0@@29|) (Tclass.M3.Tuple Tclass.M3.Expression Tclass.M3.State)))
 :qid |CloudMakeParallelBuildsdfy.170:24|
 :skolemid |6670|
 :pattern ( (M3.__default.build |prog#0@@0| |st#0@@29|))
))))
(assert (forall ((s@@10 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@10) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@10 n@@4) j@@1) (|Seq#Index| s@@10 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |5202|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@10 n@@4) j@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@12| T@U) (|deps#0@@13| T@U) (|exp#0@@3| T@U) ) (!  (=> (or (|M3.__default.RunTool#canCall| |cmd#0@@12| |deps#0@@13| |exp#0@@3|) (and (< 1 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0@@12| (TSeq TChar)) ($Is MapType |deps#0@@13| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SeqType |exp#0@@3| (TSeq TChar))))) ($Is DatatypeTypeType (M3.__default.RunTool |cmd#0@@12| |deps#0@@13| |exp#0@@3|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.507:26|
 :skolemid |5671|
 :pattern ( (M3.__default.RunTool |cmd#0@@12| |deps#0@@13| |exp#0@@3|))
))))
(assert (forall ((d@@78 T@U) ) (!  (=> ($Is DatatypeTypeType d@@78 Tclass.M3.Literal) (or (or (or (or (or (or (or (or (or (M3.Literal.litTrue_q d@@78) (M3.Literal.litFalse_q d@@78)) (M3.Literal.litUndefined_q d@@78)) (M3.Literal.litNull_q d@@78)) (M3.Literal.litNumber_q d@@78)) (M3.Literal.litString_q d@@78)) (M3.Literal.litPrimitive_q d@@78)) (M3.Literal.litArrOfPaths_q d@@78)) (M3.Literal.litArrOfStrings_q d@@78)) (M3.Literal.litArray_q d@@78)))
 :qid |unknown.0:0|
 :skolemid |7150|
 :pattern ( (M3.Literal.litArray_q d@@78) ($Is DatatypeTypeType d@@78 Tclass.M3.Literal))
 :pattern ( (M3.Literal.litArrOfStrings_q d@@78) ($Is DatatypeTypeType d@@78 Tclass.M3.Literal))
 :pattern ( (M3.Literal.litArrOfPaths_q d@@78) ($Is DatatypeTypeType d@@78 Tclass.M3.Literal))
 :pattern ( (M3.Literal.litPrimitive_q d@@78) ($Is DatatypeTypeType d@@78 Tclass.M3.Literal))
 :pattern ( (M3.Literal.litString_q d@@78) ($Is DatatypeTypeType d@@78 Tclass.M3.Literal))
 :pattern ( (M3.Literal.litNumber_q d@@78) ($Is DatatypeTypeType d@@78 Tclass.M3.Literal))
 :pattern ( (M3.Literal.litNull_q d@@78) ($Is DatatypeTypeType d@@78 Tclass.M3.Literal))
 :pattern ( (M3.Literal.litUndefined_q d@@78) ($Is DatatypeTypeType d@@78 Tclass.M3.Literal))
 :pattern ( (M3.Literal.litFalse_q d@@78) ($Is DatatypeTypeType d@@78 Tclass.M3.Literal))
 :pattern ( (M3.Literal.litTrue_q d@@78) ($Is DatatypeTypeType d@@78 Tclass.M3.Literal))
)))
(assert (forall ((sts T@U) ) (!  (=> (|$let#40$canCall| sts) (and ($Is DatatypeTypeType (|$let#40_st| sts) Tclass.M3.State) (|Set#IsMember| sts ($Box DatatypeTypeType (|$let#40_st| sts)))))
 :qid |CloudMakeParallelBuildsdfy.39:5|
 :skolemid |6521|
 :pattern ( (|$let#40_st| sts))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($ly@@13 T@U) (|context#0@@1| T@U) (|args#0@@3| T@U) (|stOrig#0@@1| T@U) (|env#0@@9| T@U) ) (!  (=> (or (|M3.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@1|) (Lit SeqType |args#0@@3|) (Lit DatatypeTypeType |stOrig#0@@1|) (Lit DatatypeTypeType |env#0@@9|)) (and (< 8 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@1| Tclass.M3.Expression) ($Is SeqType |args#0@@3| (TSeq Tclass.M3.Expression))) ($Is DatatypeTypeType |stOrig#0@@1| Tclass.M3.State)) ($Is DatatypeTypeType |env#0@@9| Tclass.M3.Env)) (and (M3.__default.ValidEnv (Lit DatatypeTypeType |env#0@@9|)) (forall ((|arg#3| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#3| Tclass.M3.Expression) (=> (|Seq#Contains| |args#0@@3| ($Box DatatypeTypeType |arg#3|)) (< (DtRank |arg#3|) (DtRank |context#0@@1|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |6733|
 :pattern ( (|Seq#Contains| |args#0@@3| ($Box DatatypeTypeType |arg#3|)))
)))))) (and (=> (not (|Seq#Equal| |args#0@@3| |Seq#Empty|)) (and (|M3.__default.eval#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0))) (Lit DatatypeTypeType |stOrig#0@@1|) (Lit DatatypeTypeType |env#0@@9|)) (let ((|r#2| (M3.__default.eval ($LS $ly@@13) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0))) (Lit DatatypeTypeType |stOrig#0@@1|) (Lit DatatypeTypeType |env#0@@9|))))
 (and (|M3.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@1|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@3|) (LitInt 1))) (Lit DatatypeTypeType |stOrig#0@@1|) (Lit DatatypeTypeType |env#0@@9|)) (let ((|rr#2| (Lit DatatypeTypeType (M3.__default.evalArgs ($LS $ly@@13) (Lit DatatypeTypeType |context#0@@1|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@3|) (LitInt 1))) (Lit DatatypeTypeType |stOrig#0@@1|) (Lit DatatypeTypeType |env#0@@9|)))))
 (and (and (M3.Tuple.Pair_q |r#2|) (M3.Tuple.Pair_q |rr#2|)) (and (M3.Tuple.Pair_q |r#2|) (M3.Tuple.Pair_q |rr#2|)))))))) (= (M3.__default.evalArgs ($LS $ly@@13) (Lit DatatypeTypeType |context#0@@1|) (Lit SeqType |args#0@@3|) (Lit DatatypeTypeType |stOrig#0@@1|) (Lit DatatypeTypeType |env#0@@9|)) (ite (|Seq#Equal| |args#0@@3| |Seq#Empty|) (|#M3.Tuple.Pair| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box SetType (Lit SetType |Set#Empty|))) (let ((|r#2@@0| (M3.__default.eval ($LS $ly@@13) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@3|) (LitInt 0))) (Lit DatatypeTypeType |stOrig#0@@1|) (Lit DatatypeTypeType |env#0@@9|))))
(let ((|rr#2@@0| (Lit DatatypeTypeType (M3.__default.evalArgs ($LS $ly@@13) (Lit DatatypeTypeType |context#0@@1|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@3|) (LitInt 1))) (Lit DatatypeTypeType |stOrig#0@@1|) (Lit DatatypeTypeType |env#0@@9|)))))
(|#M3.Tuple.Pair| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| (M3.Tuple.fst |r#2@@0|)) ($Unbox SeqType (M3.Tuple.fst |rr#2@@0|)))) ($Box SetType (|Set#Union| (|Set#UnionOne| |Set#Empty| (M3.Tuple.snd |r#2@@0|)) ($Unbox SetType (M3.Tuple.snd |rr#2@@0|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :weight 3
 :skolemid |6734|
 :pattern ( (M3.__default.evalArgs ($LS $ly@@13) (Lit DatatypeTypeType |context#0@@1|) (Lit SeqType |args#0@@3|) (Lit DatatypeTypeType |stOrig#0@@1|) (Lit DatatypeTypeType |env#0@@9|)))
))))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |5181|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@7 T@U) (|p#0@@24| T@U) ) (!  (=> (or (|M3.__default.LocInv__Cmd#canCall| |p#0@@24|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@7) ($Is DatatypeTypeType |p#0@@24| Tclass.M3.Path)))) (and (=> (not (M3.Path.InternalPath_q |p#0@@24|)) |$let#3$canCall|) (= (M3.__default.LocInv__Cmd |p#0@@24|) (ite (M3.Path.InternalPath_q |p#0@@24|) (let ((|cmd#0@@13| (M3.Path.cmd |p#0@@24|)))
|cmd#0@@13|) (let ((|cmd#1@@2| |$let#3_cmd|))
|cmd#1@@2|)))))
 :qid |CloudMakeParallelBuildsdfy.797:18|
 :skolemid |5685|
 :pattern ( (M3.__default.LocInv__Cmd |p#0@@24|) ($IsGoodHeap $Heap@@7))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@8 T@U) (|p#0@@25| T@U) ) (!  (=> (or (|M3.__default.LocInv__Deps#canCall| |p#0@@25|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@8) ($Is DatatypeTypeType |p#0@@25| Tclass.M3.Path)))) (and (=> (not (M3.Path.InternalPath_q |p#0@@25|)) |$let#10$canCall|) (= (M3.__default.LocInv__Deps |p#0@@25|) (ite (M3.Path.InternalPath_q |p#0@@25|) (let ((|deps#0@@14| (M3.Path.deps |p#0@@25|)))
|deps#0@@14|) (let ((|deps#1@@2| |$let#10_deps|))
|deps#1@@2|)))))
 :qid |CloudMakeParallelBuildsdfy.803:18|
 :skolemid |5689|
 :pattern ( (M3.__default.LocInv__Deps |p#0@@25|) ($IsGoodHeap $Heap@@8))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@9 T@U) (|p#0@@26| T@U) ) (!  (=> (or (|M3.__default.LocInv__Exp#canCall| |p#0@@26|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@9) ($Is DatatypeTypeType |p#0@@26| Tclass.M3.Path)))) (and (=> (not (M3.Path.InternalPath_q |p#0@@26|)) |$let#17$canCall|) (= (M3.__default.LocInv__Exp |p#0@@26|) (ite (M3.Path.InternalPath_q |p#0@@26|) (let ((|exp#0@@4| (M3.Path.exp |p#0@@26|)))
|exp#0@@4|) (let ((|exp#1@@1| |$let#17_exp|))
|exp#1@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.809:18|
 :skolemid |5693|
 :pattern ( (M3.__default.LocInv__Exp |p#0@@26|) ($IsGoodHeap $Heap@@9))
))))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M3.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.M3.State)))
 :qid |unknown.0:0|
 :skolemid |5654|
 :pattern ( ($IsBox bx@@3 Tclass.M3.State))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M3.Path) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.M3.Path)))
 :qid |unknown.0:0|
 :skolemid |5655|
 :pattern ( ($IsBox bx@@4 Tclass.M3.Path))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.M3.Artifact) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.M3.Artifact)))
 :qid |unknown.0:0|
 :skolemid |5659|
 :pattern ( ($IsBox bx@@5 Tclass.M3.Artifact))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.M3.Env) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.M3.Env)))
 :qid |unknown.0:0|
 :skolemid |5695|
 :pattern ( ($IsBox bx@@6 Tclass.M3.Env))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.M3.Identifier) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass.M3.Identifier)))
 :qid |unknown.0:0|
 :skolemid |5696|
 :pattern ( ($IsBox bx@@7 Tclass.M3.Identifier))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.M3.Expression) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass.M3.Expression)))
 :qid |unknown.0:0|
 :skolemid |5699|
 :pattern ( ($IsBox bx@@8 Tclass.M3.Expression))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.M3.Literal) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) Tclass.M3.Literal)))
 :qid |unknown.0:0|
 :skolemid |5702|
 :pattern ( ($IsBox bx@@9 Tclass.M3.Literal))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass.M3.WFCertificate) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) Tclass.M3.WFCertificate)))
 :qid |unknown.0:0|
 :skolemid |5758|
 :pattern ( ($IsBox bx@@10 Tclass.M3.WFCertificate))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass.M3.Primitive) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) Tclass.M3.Primitive)))
 :qid |unknown.0:0|
 :skolemid |6485|
 :pattern ( ($IsBox bx@@11 Tclass.M3.Primitive))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass.M3.Program) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) Tclass.M3.Program)))
 :qid |unknown.0:0|
 :skolemid |6488|
 :pattern ( ($IsBox bx@@12 Tclass.M3.Program))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass.M3.Statement) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@13)) bx@@13) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@13) Tclass.M3.Statement)))
 :qid |unknown.0:0|
 :skolemid |6675|
 :pattern ( ($IsBox bx@@13 Tclass.M3.Statement))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass.M3.Reason) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@14)) bx@@14) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@14) Tclass.M3.Reason)))
 :qid |unknown.0:0|
 :skolemid |7068|
 :pattern ( ($IsBox bx@@14 Tclass.M3.Reason))
)))
(assert (forall ((|a#68#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Statement.stmtReturn| |a#68#0#0|) Tclass.M3.Statement) ($Is DatatypeTypeType |a#68#0#0| Tclass.M3.Expression))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |6983|
 :pattern ( ($Is DatatypeTypeType (|#M3.Statement.stmtReturn| |a#68#0#0|) Tclass.M3.Statement))
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
(assert (forall ((|a#155#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Literal.litPrimitive| |a#155#0#0|) Tclass.M3.Literal) ($Is DatatypeTypeType |a#155#0#0| Tclass.M3.Primitive))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |7115|
 :pattern ( ($Is DatatypeTypeType (|#M3.Literal.litPrimitive| |a#155#0#0|) Tclass.M3.Literal))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@10 T@U) (|d#0@@4| T@U) (|certs#0@@1| T@U) ) (!  (=> (or (|M3.__default.FindCert#canCall| |d#0@@4| (Lit SetType |certs#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@10) ($Is DatatypeTypeType |d#0@@4| Tclass.M3.Path)) ($Is SetType |certs#0@@1| (TSet Tclass.M3.WFCertificate))) (exists ((|c#3| T@U) ) (!  (and ($Is DatatypeTypeType |c#3| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType |certs#0@@1|) ($Box DatatypeTypeType |c#3|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#3|) |d#0@@4|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6111|
 :pattern ( (M3.WFCertificate.p |c#3|))
 :pattern ( (|Set#IsMember| |certs#0@@1| ($Box DatatypeTypeType |c#3|)))
))))) (and (|$let#36$canCall| (Lit SetType |certs#0@@1|) |d#0@@4|) (= (M3.__default.FindCert |d#0@@4| (Lit SetType |certs#0@@1|)) (let ((|c#4| (|$let#36_c| (Lit SetType |certs#0@@1|) |d#0@@4|)))
|c#4|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :weight 3
 :skolemid |6112|
 :pattern ( (M3.__default.FindCert |d#0@@4| (Lit SetType |certs#0@@1|)) ($IsGoodHeap $Heap@@10))
))))
(assert (forall ((s@@11 T@U) (i@@8 Int) (v@@4 T@U) ) (!  (and (=> (= i@@8 (|Seq#Length| s@@11)) (= (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@8) v@@4)) (=> (or (not (= i@@8 (|Seq#Length| s@@11))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@8) (|Seq#Index| s@@11 i@@8))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |5180|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@8))
)))
(assert (forall ((a@@22 T@U) (b@@19 T@U) ) (!  (=> (and (M3.Path.ExternalPath_q a@@22) (M3.Path.ExternalPath_q b@@19)) (= (|M3.Path#Equal| a@@22 b@@19) (|Seq#Equal| (M3.Path._h13 a@@22) (M3.Path._h13 b@@19))))
 :qid |unknown.0:0|
 :skolemid |6903|
 :pattern ( (|M3.Path#Equal| a@@22 b@@19) (M3.Path.ExternalPath_q a@@22))
 :pattern ( (|M3.Path#Equal| a@@22 b@@19) (M3.Path.ExternalPath_q b@@19))
)))
(assert (forall ((a@@23 T@U) (b@@20 T@U) ) (!  (=> (and (M3.Literal.litString_q a@@23) (M3.Literal.litString_q b@@20)) (= (|M3.Literal#Equal| a@@23 b@@20) (|Seq#Equal| (M3.Literal.str a@@23) (M3.Literal.str b@@20))))
 :qid |unknown.0:0|
 :skolemid |7156|
 :pattern ( (|M3.Literal#Equal| a@@23 b@@20) (M3.Literal.litString_q a@@23))
 :pattern ( (|M3.Literal#Equal| a@@23 b@@20) (M3.Literal.litString_q b@@20))
)))
(assert (forall ((a@@24 T@U) (b@@21 T@U) ) (!  (=> (and (M3.Literal.litPrimitive_q a@@24) (M3.Literal.litPrimitive_q b@@21)) (= (|M3.Literal#Equal| a@@24 b@@21) (|M3.Primitive#Equal| (M3.Literal.prim a@@24) (M3.Literal.prim b@@21))))
 :qid |unknown.0:0|
 :skolemid |7157|
 :pattern ( (|M3.Literal#Equal| a@@24 b@@21) (M3.Literal.litPrimitive_q a@@24))
 :pattern ( (|M3.Literal#Equal| a@@24 b@@21) (M3.Literal.litPrimitive_q b@@21))
)))
(assert (forall ((a@@25 T@U) (b@@22 T@U) ) (!  (=> (and (M3.Literal.litArrOfPaths_q a@@25) (M3.Literal.litArrOfPaths_q b@@22)) (= (|M3.Literal#Equal| a@@25 b@@22) (|Set#Equal| (M3.Literal.paths a@@25) (M3.Literal.paths b@@22))))
 :qid |unknown.0:0|
 :skolemid |7158|
 :pattern ( (|M3.Literal#Equal| a@@25 b@@22) (M3.Literal.litArrOfPaths_q a@@25))
 :pattern ( (|M3.Literal#Equal| a@@25 b@@22) (M3.Literal.litArrOfPaths_q b@@22))
)))
(assert (forall ((a@@26 T@U) (b@@23 T@U) ) (!  (=> (and (M3.Literal.litArrOfStrings_q a@@26) (M3.Literal.litArrOfStrings_q b@@23)) (= (|M3.Literal#Equal| a@@26 b@@23) (|Set#Equal| (M3.Literal.strs a@@26) (M3.Literal.strs b@@23))))
 :qid |unknown.0:0|
 :skolemid |7159|
 :pattern ( (|M3.Literal#Equal| a@@26 b@@23) (M3.Literal.litArrOfStrings_q a@@26))
 :pattern ( (|M3.Literal#Equal| a@@26 b@@23) (M3.Literal.litArrOfStrings_q b@@23))
)))
(assert (forall ((a@@27 T@U) (b@@24 T@U) ) (!  (=> (and (M3.Literal.litArray_q a@@27) (M3.Literal.litArray_q b@@24)) (= (|M3.Literal#Equal| a@@27 b@@24) (|Seq#Equal| (M3.Literal.arr a@@27) (M3.Literal.arr b@@24))))
 :qid |unknown.0:0|
 :skolemid |7160|
 :pattern ( (|M3.Literal#Equal| a@@27 b@@24) (M3.Literal.litArray_q a@@27))
 :pattern ( (|M3.Literal#Equal| a@@27 b@@24) (M3.Literal.litArray_q b@@24))
)))
(assert (forall ((|a#35#0#0| T@U) (bx@@15 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#35#0#0|) bx@@15) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#35#0#0|) bx@@15))) (DtRank (|#M3.Env.EnvCons| |a#35#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.819:26|
 :skolemid |6914|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#35#0#0|) bx@@15) (|#M3.Env.EnvCons| |a#35#0#0|))
)))
(assert (forall ((|a#50#0#0| T@U) (bx@@16 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#50#0#0|) bx@@16) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#50#0#0|) bx@@16))) (DtRank (|#M3.State.StateCons| |a#50#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6946|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#50#0#0|) bx@@16) (|#M3.State.StateCons| |a#50#0#0|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@11 T@U) (|id#0@@5| T@U) (|env#0@@10| T@U) ) (!  (=> (or (|M3.__default.GetEnv#canCall| |id#0@@5| |env#0@@10|) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@11) ($Is DatatypeTypeType |id#0@@5| Tclass.M3.Identifier)) ($Is DatatypeTypeType |env#0@@10| Tclass.M3.Env)) (M3.__default.ValidEnv |env#0@@10|)))) (and (and (and (M3.Env.EnvCons_q |env#0@@10|) (=> (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@10|)) ($Box DatatypeTypeType |id#0@@5|)) (M3.Env.EnvCons_q |env#0@@10|))) (=> (not (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@10|)) ($Box DatatypeTypeType |id#0@@5|))) |$let#24$canCall|)) (= (M3.__default.GetEnv |id#0@@5| |env#0@@10|) (ite (|Set#IsMember| (|Map#Domain| (M3.Env.m |env#0@@10|)) ($Box DatatypeTypeType |id#0@@5|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.Env.m |env#0@@10|)) ($Box DatatypeTypeType |id#0@@5|))) (let ((|lit#0| |$let#24_lit|))
(|#M3.Expression.exprLiteral| |lit#0|))))))
 :qid |CloudMakeParallelBuildsdfy.824:18|
 :skolemid |5703|
 :pattern ( (M3.__default.GetEnv |id#0@@5| |env#0@@10|) ($IsGoodHeap $Heap@@11))
))))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Path.InternalPath| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass.M3.Path)  (and (and ($Is SeqType |a#12#0#0| (TSeq TChar)) ($Is SetType |a#12#1#0| (TSet Tclass.M3.Path))) ($Is SeqType |a#12#2#0| (TSeq TChar))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6876|
 :pattern ( ($Is DatatypeTypeType (|#M3.Path.InternalPath| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass.M3.Path))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@14 T@U) (|p#0@@27| T@U) (|cert#0@@7| T@U) ) (!  (=> (or (|M3.__default.CheckWellFounded#canCall| (Lit DatatypeTypeType |p#0@@27|) (Lit DatatypeTypeType |cert#0@@7|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@27| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@7| Tclass.M3.WFCertificate)))) (and (and (and (and (|$IsA#M3.Path| (Lit DatatypeTypeType (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@7|)))) (|$IsA#M3.Path| (Lit DatatypeTypeType |p#0@@27|))) (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@7|))) (=> (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@7|)) |p#0@@27|) (and (forall ((|d#2| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| (Lit DatatypeTypeType |p#0@@27|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@27|))) ($Box DatatypeTypeType |d#2|)) (forall ((|c#4@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#4@@0| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@7|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@7|))) ($Box DatatypeTypeType |c#4@@0|)) (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |c#4@@0|)) (|$IsA#M3.Path| |d#2|)) (M3.WFCertificate.Cert_q |c#4@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5794|
 :pattern ( (M3.WFCertificate.p |c#4@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@7|) ($Box DatatypeTypeType |c#4@@0|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5795|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@27|) ($Box DatatypeTypeType |d#2|)))
)) (=> (forall ((|d#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2@@0| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@27|))) ($Box DatatypeTypeType |d#2@@0|)) (exists ((|c#4@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@1| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@7|))) ($Box DatatypeTypeType |c#4@@1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#4@@1|) |d#2@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5797|
 :pattern ( (M3.WFCertificate.p |c#4@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@7|) ($Box DatatypeTypeType |c#4@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5798|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@27|) ($Box DatatypeTypeType |d#2@@0|)))
)) (forall ((|c#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@0| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@7|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@7|))) ($Box DatatypeTypeType |c#5@@0|)) (and (M3.WFCertificate.Cert_q |c#5@@0|) (|M3.__default.CheckWellFounded#canCall| (M3.WFCertificate.p |c#5@@0|) |c#5@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5796|
 :pattern ( (M3.WFCertificate.p |c#5@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@7|) ($Box DatatypeTypeType |c#5@@0|)))
)))))) (= (M3.__default.CheckWellFounded ($LS $ly@@14) (Lit DatatypeTypeType |p#0@@27|) (Lit DatatypeTypeType |cert#0@@7|))  (and (and (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@7|)) |p#0@@27|) (forall ((|d#2@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#2@@1| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@27|))) ($Box DatatypeTypeType |d#2@@1|)) (exists ((|c#4@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#4@@2| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@7|))) ($Box DatatypeTypeType |c#4@@2|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#4@@2|) |d#2@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5791|
 :pattern ( (M3.WFCertificate.p |c#4@@2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@7|) ($Box DatatypeTypeType |c#4@@2|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5792|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@27|) ($Box DatatypeTypeType |d#2@@1|)))
))) (forall ((|c#5@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#5@@1| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@7|))) ($Box DatatypeTypeType |c#5@@1|)) (M3.__default.CheckWellFounded ($LS $ly@@14) (M3.WFCertificate.p |c#5@@1|) |c#5@@1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5793|
 :pattern ( (M3.WFCertificate.p |c#5@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@7|) ($Box DatatypeTypeType |c#5@@1|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |5799|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@14) (Lit DatatypeTypeType |p#0@@27|) (Lit DatatypeTypeType |cert#0@@7|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (=> (or |M3.__default.EmptyEnv#canCall| (< 4 $FunctionContextHeight)) (and (U_2_bool (Lit boolType (bool_2_U (M3.__default.ValidEnv (Lit DatatypeTypeType M3.__default.EmptyEnv))))) ($Is DatatypeTypeType M3.__default.EmptyEnv Tclass.M3.Env)))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($ly@@15 T@U) (|stmts#0@@2| T@U) (|st#0@@30| T@U) (|env#0@@11| T@U) ) (!  (=> (or (|M3.__default.do#canCall| |stmts#0@@2| |st#0@@30| |env#0@@11|) (and (< 9 $FunctionContextHeight) (and (and (and ($Is SeqType |stmts#0@@2| (TSeq Tclass.M3.Statement)) ($Is DatatypeTypeType |st#0@@30| Tclass.M3.State)) ($Is DatatypeTypeType |env#0@@11| Tclass.M3.Env)) (and (M3.__default.Legal |stmts#0@@2|) (M3.__default.ValidEnv |env#0@@11|))))) (and (let ((|stmt#0| ($Unbox DatatypeTypeType (|Seq#Index| |stmts#0@@2| (LitInt 0)))))
 (and (=> (M3.Statement.stmtVariable_q |stmt#0|) (and (|M3.__default.eval#canCall| (M3.Statement.expr |stmt#0|) |st#0@@30| |env#0@@11|) (let ((|st'#0@@1| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $LZ) (M3.Statement.expr |stmt#0|) |st#0@@30| |env#0@@11|)))))
(let ((|expr'#0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $LZ) (M3.Statement.expr |stmt#0|) |st#0@@30| |env#0@@11|)))))
 (and (|M3.__default.Value#canCall| |expr'#0|) (=> (M3.__default.Value |expr'#0|) (and (|M3.__default.SetEnv#canCall| (M3.Statement.id |stmt#0|) |expr'#0| |env#0@@11|) (let ((|env'#0| (M3.__default.SetEnv (M3.Statement.id |stmt#0|) |expr'#0| |env#0@@11|)))
 (and (|M3.__default.Legal#canCall| (|Seq#Drop| |stmts#0@@2| (LitInt 1))) (=> (M3.__default.Legal (|Seq#Drop| |stmts#0@@2| (LitInt 1))) (|M3.__default.do#canCall| (|Seq#Drop| |stmts#0@@2| (LitInt 1)) |st'#0@@1| |env'#0|))))))))))) (=> (not (M3.Statement.stmtVariable_q |stmt#0|)) (|M3.__default.eval#canCall| (M3.Statement.ret |stmt#0|) |st#0@@30| |env#0@@11|)))) (= (M3.__default.do ($LS $ly@@15) |stmts#0@@2| |st#0@@30| |env#0@@11|) (let ((|stmt#0@@0| ($Unbox DatatypeTypeType (|Seq#Index| |stmts#0@@2| (LitInt 0)))))
(ite (M3.Statement.stmtVariable_q |stmt#0@@0|) (let ((|st'#0@@2| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $LZ) (M3.Statement.expr |stmt#0@@0|) |st#0@@30| |env#0@@11|)))))
(let ((|expr'#0@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $LZ) (M3.Statement.expr |stmt#0@@0|) |st#0@@30| |env#0@@11|)))))
(ite (M3.__default.Value |expr'#0@@0|) (let ((|env'#0@@0| (M3.__default.SetEnv (M3.Statement.id |stmt#0@@0|) |expr'#0@@0| |env#0@@11|)))
(ite (M3.__default.Legal (|Seq#Drop| |stmts#0@@2| (LitInt 1))) (M3.__default.do $ly@@15 (|Seq#Drop| |stmts#0@@2| (LitInt 1)) |st'#0@@2| |env'#0@@0|) (|#M3.Tuple.Pair| ($Box DatatypeTypeType |expr'#0@@0|) ($Box DatatypeTypeType |st'#0@@2|)))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@30|))))) (M3.__default.eval ($LS $LZ) (M3.Statement.ret |stmt#0@@0|) |st#0@@30| |env#0@@11|))))))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :skolemid |6683|
 :pattern ( (M3.__default.do ($LS $ly@@15) |stmts#0@@2| |st#0@@30| |env#0@@11|))
))))
(assert (forall ((a@@28 T@U) (b@@25 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@28 b@@25) o@@4)  (or (|Set#IsMember| a@@28 o@@4) (|Set#IsMember| b@@25 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |5088|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@28 b@@25) o@@4))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@10 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10)  (or (|Seq#Contains| s0@@1 x@@10) (|Seq#Contains| s1@@1 x@@10)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |5188|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10))
)))
(assert (forall ((s@@12 T@U) (n@@5 Int) (x@@11 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@12 n@@5) x@@11) (exists ((i@@9 Int) ) (!  (and (and (and (<= 0 i@@9) (< i@@9 n@@5)) (< i@@9 (|Seq#Length| s@@12))) (= (|Seq#Index| s@@12 i@@9) x@@11))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |5190|
 :pattern ( (|Seq#Index| s@@12 i@@9))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |5191|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@12 n@@5) x@@11))
)))
(assert (forall ((a@@29 T@U) (b@@26 T@U) ) (!  (=> (|Set#Disjoint| a@@29 b@@26) (and (= (|Set#Difference| (|Set#Union| a@@29 b@@26) a@@29) b@@26) (= (|Set#Difference| (|Set#Union| a@@29 b@@26) b@@26) a@@29)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |5091|
 :pattern ( (|Set#Union| a@@29 b@@26))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|id#0@@6| T@U) (|expr#0@@2| T@U) (|env#0@@12| T@U) ) (!  (=> (or (|M3.__default.SetEnv#canCall| |id#0@@6| |expr#0@@2| |env#0@@12|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |id#0@@6| Tclass.M3.Identifier) ($Is DatatypeTypeType |expr#0@@2| Tclass.M3.Expression)) ($Is DatatypeTypeType |env#0@@12| Tclass.M3.Env)) (and (M3.__default.ValidEnv |env#0@@12|) (M3.__default.Value |expr#0@@2|))))) (and (M3.Env.EnvCons_q |env#0@@12|) (= (M3.__default.SetEnv |id#0@@6| |expr#0@@2| |env#0@@12|) (|#M3.Env.EnvCons| (|Map#Build| (M3.Env.m |env#0@@12|) ($Box DatatypeTypeType |id#0@@6|) ($Box DatatypeTypeType |expr#0@@2|))))))
 :qid |CloudMakeParallelBuildsdfy.64:25|
 :skolemid |5708|
 :pattern ( (M3.__default.SetEnv |id#0@@6| |expr#0@@2| |env#0@@12|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@31| T@U) ) (!  (=> (or (|M3.__default.ValidState#canCall| (Lit DatatypeTypeType |st#0@@31|)) (and (< 4 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@31| Tclass.M3.State))) (and (forall ((|p#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@1| Tclass.M3.Path) (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@31|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@31|))) ($Box DatatypeTypeType |p#1@@1|)) (|M3.__default.WellFounded#canCall| |p#1@@1|))))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6495|
 :pattern ( (M3.__default.WellFounded |p#1@@1|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@31|) ($Box DatatypeTypeType |p#1@@1|)))
)) (= (M3.__default.ValidState (Lit DatatypeTypeType |st#0@@31|)) (forall ((|p#1@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@2| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@31|))) ($Box DatatypeTypeType |p#1@@2|)) (M3.__default.WellFounded |p#1@@2|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6494|
 :pattern ( (M3.__default.WellFounded |p#1@@2|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@31|) ($Box DatatypeTypeType |p#1@@2|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.13:30|
 :weight 3
 :skolemid |6496|
 :pattern ( (M3.__default.ValidState (Lit DatatypeTypeType |st#0@@31|)))
))))
(assert (forall ((s@@13 T@U) (x@@12 T@U) ) (! (= (|Seq#Contains| s@@13 x@@12) (exists ((i@@10 Int) ) (!  (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length| s@@13))) (= (|Seq#Index| s@@13 i@@10) x@@12))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |5185|
 :pattern ( (|Seq#Index| s@@13 i@@10))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |5186|
 :pattern ( (|Seq#Contains| s@@13 x@@12))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@3| T@U) ) (!  (=> (or (|M3.__default.Value#canCall| |expr#0@@3|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@3| Tclass.M3.Expression))) (= (M3.__default.Value |expr#0@@3|) (M3.Expression.exprLiteral_q |expr#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :skolemid |6668|
 :pattern ( (M3.__default.Value |expr#0@@3|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@12 T@U) (|p#0@@28| T@U) ) (!  (=> (or (|M3.__default.GetCert#canCall| (Lit DatatypeTypeType |p#0@@28|)) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@12) ($Is DatatypeTypeType |p#0@@28| Tclass.M3.Path)) (U_2_bool (Lit boolType (bool_2_U (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@28|)))))))) (and (|$let#30$canCall| (Lit DatatypeTypeType |p#0@@28|)) (= (M3.__default.GetCert (Lit DatatypeTypeType |p#0@@28|)) (let ((|c#1@@1| (|$let#30_c| (Lit DatatypeTypeType |p#0@@28|))))
|c#1@@1|))))
 :qid |CloudMakeParallelBuildsdfy.627:18|
 :weight 3
 :skolemid |6021|
 :pattern ( (M3.__default.GetCert (Lit DatatypeTypeType |p#0@@28|)) ($IsGoodHeap $Heap@@12))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@16 T@U) ($Heap@@13 T@U) (|sts#0@@0| T@U) ) (!  (=> (or (|M3.__default.Combine#canCall| (Lit SetType |sts#0@@0|)) (and (< 5 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@13) ($Is SetType |sts#0@@0| (TSet Tclass.M3.State))) (not (|Set#Equal| |sts#0@@0| |Set#Empty|))))) (and (and (|$let#40$canCall| (Lit SetType |sts#0@@0|)) (=> (not (|Set#Equal| |sts#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#40_st| (Lit SetType |sts#0@@0|)))))) (and (|M3.__default.Combine#canCall| (|Set#Difference| |sts#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#40_st| (Lit SetType |sts#0@@0|)))))) (|M3.__default.Union#canCall| (|$let#40_st| (Lit SetType |sts#0@@0|)) (M3.__default.Combine ($LS $ly@@16) (|Set#Difference| |sts#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#40_st| (Lit SetType |sts#0@@0|)))))))))) (= (M3.__default.Combine ($LS $ly@@16) (Lit SetType |sts#0@@0|)) (let ((|st#1| (|$let#40_st| (Lit SetType |sts#0@@0|))))
(ite (|Set#Equal| |sts#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#1|))) |st#1| (M3.__default.Union |st#1| (M3.__default.Combine ($LS $ly@@16) (|Set#Difference| |sts#0@@0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#1|))))))))))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :weight 3
 :skolemid |6523|
 :pattern ( (M3.__default.Combine ($LS $ly@@16) (Lit SetType |sts#0@@0|)) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M3._default.PickOne$T@@1 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|M3.__default.PickOne#canCall| M3._default.PickOne$T@@1 |s#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |s#0@@0| (TSet M3._default.PickOne$T@@1)) (not (|Set#Equal| |s#0@@0| |Set#Empty|))))) ($IsBox (M3.__default.PickOne M3._default.PickOne$T@@1 |s#0@@0|) M3._default.PickOne$T@@1))
 :qid |unknown.0:0|
 :skolemid |5749|
 :pattern ( (M3.__default.PickOne M3._default.PickOne$T@@1 |s#0@@0|))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($ly@@17 T@U) (|context#0@@2| T@U) (|args#0@@4| T@U) (|stOrig#0@@2| T@U) (|env#0@@13| T@U) ) (!  (=> (or (|M3.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType |args#0@@4|) |stOrig#0@@2| |env#0@@13|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@2| Tclass.M3.Expression) ($Is SeqType |args#0@@4| (TSeq Tclass.M3.Expression))) ($Is DatatypeTypeType |stOrig#0@@2| Tclass.M3.State)) ($Is DatatypeTypeType |env#0@@13| Tclass.M3.Env)) (and (M3.__default.ValidEnv |env#0@@13|) (forall ((|arg#2| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#2| Tclass.M3.Expression) (=> (|Seq#Contains| |args#0@@4| ($Box DatatypeTypeType |arg#2|)) (< (DtRank |arg#2|) (DtRank |context#0@@2|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |6731|
 :pattern ( (|Seq#Contains| |args#0@@4| ($Box DatatypeTypeType |arg#2|)))
)))))) (and (=> (not (|Seq#Equal| |args#0@@4| |Seq#Empty|)) (and (|M3.__default.eval#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0))) |stOrig#0@@2| |env#0@@13|) (let ((|r#1| (M3.__default.eval ($LS $ly@@17) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0))) |stOrig#0@@2| |env#0@@13|)))
 (and (|M3.__default.evalArgs#canCall| (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@4|) (LitInt 1))) |stOrig#0@@2| |env#0@@13|) (let ((|rr#1| (M3.__default.evalArgs ($LS $ly@@17) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@4|) (LitInt 1))) |stOrig#0@@2| |env#0@@13|)))
 (and (and (M3.Tuple.Pair_q |r#1|) (M3.Tuple.Pair_q |rr#1|)) (and (M3.Tuple.Pair_q |r#1|) (M3.Tuple.Pair_q |rr#1|)))))))) (= (M3.__default.evalArgs ($LS $ly@@17) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType |args#0@@4|) |stOrig#0@@2| |env#0@@13|) (ite (|Seq#Equal| |args#0@@4| |Seq#Empty|) (|#M3.Tuple.Pair| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box SetType (Lit SetType |Set#Empty|))) (let ((|r#1@@0| (M3.__default.eval ($LS $ly@@17) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@4|) (LitInt 0))) |stOrig#0@@2| |env#0@@13|)))
(let ((|rr#1@@0| (M3.__default.evalArgs ($LS $ly@@17) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType (|Seq#Drop| (Lit SeqType |args#0@@4|) (LitInt 1))) |stOrig#0@@2| |env#0@@13|)))
(|#M3.Tuple.Pair| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| (M3.Tuple.fst |r#1@@0|)) ($Unbox SeqType (M3.Tuple.fst |rr#1@@0|)))) ($Box SetType (|Set#Union| (|Set#UnionOne| |Set#Empty| (M3.Tuple.snd |r#1@@0|)) ($Unbox SetType (M3.Tuple.snd |rr#1@@0|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :weight 3
 :skolemid |6732|
 :pattern ( (M3.__default.evalArgs ($LS $ly@@17) (Lit DatatypeTypeType |context#0@@2|) (Lit SeqType |args#0@@4|) |stOrig#0@@2| |env#0@@13|))
))))
(assert (forall ((d@@79 T@U) ) (!  (=> (|$IsA#M3.Path| d@@79) (or (M3.Path.InternalPath_q d@@79) (M3.Path.ExternalPath_q d@@79)))
 :qid |unknown.0:0|
 :skolemid |6900|
 :pattern ( (|$IsA#M3.Path| d@@79))
)))
(assert (forall ((d@@80 T@U) ) (!  (=> (|$IsA#M3.Reason| d@@80) (or (M3.Reason.rCompatibility_q d@@80) (M3.Reason.rValidity_q d@@80)))
 :qid |unknown.0:0|
 :skolemid |7177|
 :pattern ( (|$IsA#M3.Reason| d@@80))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|p#0@@29| T@U) (|st#0@@32| T@U) ) (!  (=> (or (|M3.__default.Oracle#canCall| |p#0@@29| (Lit DatatypeTypeType |st#0@@32|)) (and (< 5 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@29| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@32| Tclass.M3.State)))) (and (and (and (|M3.__default.WellFounded#canCall| |p#0@@29|) (=> (M3.__default.WellFounded |p#0@@29|) (and (|M3.__default.GetCert#canCall| |p#0@@29|) (|M3.__default.OracleWF#canCall| |p#0@@29| (M3.__default.GetCert |p#0@@29|) (Lit DatatypeTypeType |st#0@@32|))))) (=> (not (M3.__default.WellFounded |p#0@@29|)) (|M3.__default.OracleArbitrary#canCall| |p#0@@29|))) (= (M3.__default.Oracle |p#0@@29| (Lit DatatypeTypeType |st#0@@32|)) (ite (M3.__default.WellFounded |p#0@@29|) (M3.__default.OracleWF ($LS $LZ) |p#0@@29| (M3.__default.GetCert |p#0@@29|) (Lit DatatypeTypeType |st#0@@32|)) (M3.__default.OracleArbitrary |p#0@@29|)))))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :weight 3
 :skolemid |6038|
 :pattern ( (M3.__default.Oracle |p#0@@29| (Lit DatatypeTypeType |st#0@@32|)))
))))
(assert (forall ((|a#53#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Program.Program| |a#53#0#0|) Tclass.M3.Program) ($Is SeqType |a#53#0#0| (TSeq Tclass.M3.Statement)))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |6956|
 :pattern ( ($Is DatatypeTypeType (|#M3.Program.Program| |a#53#0#0|) Tclass.M3.Program))
)))
(assert (forall ((|a#161#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Literal.litArrOfPaths| |a#161#0#0|) Tclass.M3.Literal) ($Is SetType |a#161#0#0| (TSet Tclass.M3.Path)))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |7124|
 :pattern ( ($Is DatatypeTypeType (|#M3.Literal.litArrOfPaths| |a#161#0#0|) Tclass.M3.Literal))
)))
(assert (forall ((|a#173#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Literal.litArray| |a#173#0#0|) Tclass.M3.Literal) ($Is SeqType |a#173#0#0| (TSeq Tclass.M3.Expression)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |7142|
 :pattern ( ($Is DatatypeTypeType (|#M3.Literal.litArray| |a#173#0#0|) Tclass.M3.Literal))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@18 T@U) (|p#0@@30| T@U) (|cert#0@@8| T@U) (|deps#0@@15| T@U) (|st#0@@33| T@U) ) (!  (=> (or (|M3.__default.CollectDependencies#canCall| |p#0@@30| (Lit DatatypeTypeType |cert#0@@8|) |deps#0@@15| |st#0@@33|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |p#0@@30| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@8| Tclass.M3.WFCertificate)) ($Is SetType |deps#0@@15| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |st#0@@33| Tclass.M3.State)) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@30| (Lit DatatypeTypeType |cert#0@@8|)) (|Set#Equal| |deps#0@@15| (M3.__default.LocInv__Deps |p#0@@30|)))))) (and (forall ((|d#0@@5| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@5| Tclass.M3.Path) (=> (|Set#IsMember| |deps#0@@15| ($Box DatatypeTypeType |d#0@@5|)) (and (and (|M3.__default.DomSt#canCall| |st#0@@33|) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@33|) ($Box DatatypeTypeType |d#0@@5|)) (|M3.__default.GetSt#canCall| |d#0@@5| |st#0@@33|))) (=> (not (|Set#IsMember| (M3.__default.DomSt |st#0@@33|) ($Box DatatypeTypeType |d#0@@5|))) (and (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@8|)) (|M3.__default.FindCert#canCall| |d#0@@5| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@8|))))) (|M3.__default.OracleWF#canCall| |d#0@@5| (M3.__default.FindCert |d#0@@5| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@8|)))) |st#0@@33|))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |6084|
 :pattern ( (M3.__default.FindCert |d#0@@5| (M3.WFCertificate.certs |cert#0@@8|)))
 :pattern ( (M3.__default.GetSt |d#0@@5| |st#0@@33|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@33|) ($Box DatatypeTypeType |d#0@@5|)))
 :pattern ( (|Set#IsMember| |deps#0@@15| ($Box DatatypeTypeType |d#0@@5|)))
)) (= (M3.__default.CollectDependencies ($LS $ly@@18) |p#0@@30| (Lit DatatypeTypeType |cert#0@@8|) |deps#0@@15| |st#0@@33|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path |deps#0@@15|)) (|lambda#26| (M3.__default.DomSt |st#0@@33|) |st#0@@33| ($LS $ly@@18) (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@8|))) |st#0@@33|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :weight 3
 :skolemid |6085|
 :pattern ( (M3.__default.CollectDependencies ($LS $ly@@18) |p#0@@30| (Lit DatatypeTypeType |cert#0@@8|) |deps#0@@15| |st#0@@33|))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($ly@@19 T@U) (|expr#0@@4| T@U) (|st#0@@34| T@U) (|env#0@@14| T@U) ) (!  (=> (or (|M3.__default.eval#canCall| |expr#0@@4| |st#0@@34| |env#0@@14|) (and (< 8 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@4| Tclass.M3.Expression) ($Is DatatypeTypeType |st#0@@34| Tclass.M3.State)) ($Is DatatypeTypeType |env#0@@14| Tclass.M3.Env)) (M3.__default.ValidEnv |env#0@@14|)))) (and (and (|M3.__default.Value#canCall| |expr#0@@4|) (=> (not (M3.__default.Value |expr#0@@4|)) (and (=> (M3.Expression.exprIdentifier_q |expr#0@@4|) (|M3.__default.GetEnv#canCall| (M3.Expression.id |expr#0@@4|) |env#0@@14|)) (=> (not (M3.Expression.exprIdentifier_q |expr#0@@4|)) (and (=> (M3.Expression.exprIf_q |expr#0@@4|) (and (|M3.__default.eval#canCall| (M3.Expression.cond |expr#0@@4|) |st#0@@34| |env#0@@14|) (let ((|st'#0@@3| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval $ly@@19 (M3.Expression.cond |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|cond'#0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval $ly@@19 (M3.Expression.cond |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
 (and (and (=> (M3.Expression.exprLiteral_q |cond'#0|) (|$IsA#M3.Literal| (M3.Expression.lit |cond'#0|))) (=> (and (M3.Expression.exprLiteral_q |cond'#0|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#0|) |#M3.Literal.litTrue|)) (|M3.__default.eval#canCall| (M3.Expression.ifTrue |expr#0@@4|) |st'#0@@3| |env#0@@14|))) (=> (not (and (M3.Expression.exprLiteral_q |cond'#0|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#0|) |#M3.Literal.litTrue|))) (and (=> (M3.Expression.exprLiteral_q |cond'#0|) (|$IsA#M3.Literal| (M3.Expression.lit |cond'#0|))) (=> (and (M3.Expression.exprLiteral_q |cond'#0|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#0|) |#M3.Literal.litFalse|)) (|M3.__default.eval#canCall| (M3.Expression.ifFalse |expr#0@@4|) |st'#0@@3| |env#0@@14|))))))))) (=> (not (M3.Expression.exprIf_q |expr#0@@4|)) (and (=> (M3.Expression.exprAnd_q |expr#0@@4|) (and (|M3.__default.eval#canCall| (M3.Expression.conj0 |expr#0@@4|) |st#0@@34| |env#0@@14|) (let ((|st'#1@@1| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval $ly@@19 (M3.Expression.conj0 |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|conj0'#0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval $ly@@19 (M3.Expression.conj0 |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
 (and (and (=> (M3.Expression.exprLiteral_q |conj0'#0|) (|$IsA#M3.Literal| (M3.Expression.lit |conj0'#0|))) (=> (and (M3.Expression.exprLiteral_q |conj0'#0|) (|M3.Literal#Equal| (M3.Expression.lit |conj0'#0|) |#M3.Literal.litTrue|)) (|M3.__default.eval#canCall| (M3.Expression.conj1 |expr#0@@4|) |st'#1@@1| |env#0@@14|))) (=> (not (and (M3.Expression.exprLiteral_q |conj0'#0|) (|M3.Literal#Equal| (M3.Expression.lit |conj0'#0|) |#M3.Literal.litTrue|))) (=> (M3.Expression.exprLiteral_q |conj0'#0|) (|$IsA#M3.Literal| (M3.Expression.lit |conj0'#0|))))))))) (=> (not (M3.Expression.exprAnd_q |expr#0@@4|)) (and (=> (M3.Expression.exprOr_q |expr#0@@4|) (and (|M3.__default.eval#canCall| (M3.Expression.disj0 |expr#0@@4|) |st#0@@34| |env#0@@14|) (let ((|st'#2@@1| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval $ly@@19 (M3.Expression.disj0 |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|disj0'#0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval $ly@@19 (M3.Expression.disj0 |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
 (and (=> (M3.Expression.exprLiteral_q |disj0'#0|) (|$IsA#M3.Literal| (M3.Expression.lit |disj0'#0|))) (=> (not (and (M3.Expression.exprLiteral_q |disj0'#0|) (|M3.Literal#Equal| (M3.Expression.lit |disj0'#0|) |#M3.Literal.litTrue|))) (and (=> (M3.Expression.exprLiteral_q |disj0'#0|) (|$IsA#M3.Literal| (M3.Expression.lit |disj0'#0|))) (=> (and (M3.Expression.exprLiteral_q |disj0'#0|) (|M3.Literal#Equal| (M3.Expression.lit |disj0'#0|) |#M3.Literal.litFalse|)) (|M3.__default.eval#canCall| (M3.Expression.disj1 |expr#0@@4|) |st'#2@@1| |env#0@@14|))))))))) (=> (not (M3.Expression.exprOr_q |expr#0@@4|)) (=> (M3.Expression.exprInvocation_q |expr#0@@4|) (and (|M3.__default.eval#canCall| (M3.Expression.fun |expr#0@@4|) |st#0@@34| |env#0@@14|) (let ((|st'#3| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval $ly@@19 (M3.Expression.fun |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|fun'#0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval $ly@@19 (M3.Expression.fun |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
 (and (|M3.__default.evalArgs#canCall| |expr#0@@4| (M3.Expression.args |expr#0@@4|) |st#0@@34| |env#0@@14|) (let ((|sts'#0| ($Unbox SetType (M3.Tuple.snd (M3.__default.evalArgs $ly@@19 |expr#0@@4| (M3.Expression.args |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|args'#0| ($Unbox SeqType (M3.Tuple.fst (M3.__default.evalArgs $ly@@19 |expr#0@@4| (M3.Expression.args |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|sts''#0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#3|)) |sts'#0|)))
 (and (|M3.__default.Compatible#canCall| |sts''#0|) (=> (M3.__default.Compatible |sts''#0|) (and (|M3.__default.Combine#canCall| |sts''#0|) (let ((|stCombined#0| (M3.__default.Combine ($LS $LZ) |sts''#0|)))
 (=> (and (M3.Expression.exprLiteral_q |fun'#0|) (M3.Literal.litPrimitive_q (M3.Expression.lit |fun'#0|))) (=> (M3.Primitive.primExec_q (M3.Literal.prim (M3.Expression.lit |fun'#0|))) (and (and (|M3.__default.Arity#canCall| (Lit DatatypeTypeType |#M3.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#0|) (LitInt (M3.__default.Arity (Lit DatatypeTypeType |#M3.Primitive.primExec|)))) (|M3.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M3.Primitive.primExec|) |args'#0| |stCombined#0|))) (=> (and (= (|Seq#Length| |args'#0|) (LitInt (M3.__default.Arity (Lit DatatypeTypeType |#M3.Primitive.primExec|)))) (M3.__default.ValidArgs (Lit DatatypeTypeType |#M3.Primitive.primExec|) |args'#0| |stCombined#0|)) (and (|M3.__default.exec#canCall| (M3.Literal.str (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 0))))) (M3.Literal.paths (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 1))))) (M3.Literal.strs (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 2))))) |stCombined#0|) (let ((|ps#0| (M3.__default.exec (M3.Literal.str (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 0))))) (M3.Literal.paths (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 1))))) (M3.Literal.strs (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0| (LitInt 2))))) |stCombined#0|)))
 (and (M3.Tuple.Pair_q |ps#0|) (M3.Tuple.Pair_q |ps#0|)))))))))))))))))))))))))))))) (= (M3.__default.eval ($LS $ly@@19) |expr#0@@4| |st#0@@34| |env#0@@14|) (ite (M3.__default.Value |expr#0@@4|) (|#M3.Tuple.Pair| ($Box DatatypeTypeType |expr#0@@4|) ($Box DatatypeTypeType |st#0@@34|)) (ite (M3.Expression.exprIdentifier_q |expr#0@@4|) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (M3.__default.GetEnv (M3.Expression.id |expr#0@@4|) |env#0@@14|)) ($Box DatatypeTypeType |st#0@@34|)) (ite (M3.Expression.exprIf_q |expr#0@@4|) (let ((|st'#0@@4| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval $ly@@19 (M3.Expression.cond |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|cond'#0@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval $ly@@19 (M3.Expression.cond |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(ite  (and (M3.Expression.exprLiteral_q |cond'#0@@0|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#0@@0|) |#M3.Literal.litTrue|)) (M3.__default.eval $ly@@19 (M3.Expression.ifTrue |expr#0@@4|) |st'#0@@4| |env#0@@14|) (ite  (and (M3.Expression.exprLiteral_q |cond'#0@@0|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#0@@0|) |#M3.Literal.litFalse|)) (M3.__default.eval $ly@@19 (M3.Expression.ifFalse |expr#0@@4|) |st'#0@@4| |env#0@@14|) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@34|)))))) (ite (M3.Expression.exprAnd_q |expr#0@@4|) (let ((|st'#1@@2| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval $ly@@19 (M3.Expression.conj0 |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|conj0'#0@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval $ly@@19 (M3.Expression.conj0 |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(ite  (and (M3.Expression.exprLiteral_q |conj0'#0@@0|) (|M3.Literal#Equal| (M3.Expression.lit |conj0'#0@@0|) |#M3.Literal.litTrue|)) (M3.__default.eval $ly@@19 (M3.Expression.conj1 |expr#0@@4|) |st'#1@@2| |env#0@@14|) (ite  (and (M3.Expression.exprLiteral_q |conj0'#0@@0|) (|M3.Literal#Equal| (M3.Expression.lit |conj0'#0@@0|) |#M3.Literal.litFalse|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprLiteral| (Lit DatatypeTypeType |#M3.Literal.litFalse|)))) ($Box DatatypeTypeType |st'#1@@2|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@34|)))))) (ite (M3.Expression.exprOr_q |expr#0@@4|) (let ((|st'#2@@2| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval $ly@@19 (M3.Expression.disj0 |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|disj0'#0@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval $ly@@19 (M3.Expression.disj0 |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(ite  (and (M3.Expression.exprLiteral_q |disj0'#0@@0|) (|M3.Literal#Equal| (M3.Expression.lit |disj0'#0@@0|) |#M3.Literal.litTrue|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprLiteral| (Lit DatatypeTypeType |#M3.Literal.litTrue|)))) ($Box DatatypeTypeType |st'#2@@2|)) (ite  (and (M3.Expression.exprLiteral_q |disj0'#0@@0|) (|M3.Literal#Equal| (M3.Expression.lit |disj0'#0@@0|) |#M3.Literal.litFalse|)) (M3.__default.eval $ly@@19 (M3.Expression.disj1 |expr#0@@4|) |st'#2@@2| |env#0@@14|) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@34|)))))) (ite (M3.Expression.exprInvocation_q |expr#0@@4|) (let ((|st'#3@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval $ly@@19 (M3.Expression.fun |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|fun'#0@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval $ly@@19 (M3.Expression.fun |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|sts'#0@@0| ($Unbox SetType (M3.Tuple.snd (M3.__default.evalArgs $ly@@19 |expr#0@@4| (M3.Expression.args |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|args'#0@@0| ($Unbox SeqType (M3.Tuple.fst (M3.__default.evalArgs $ly@@19 |expr#0@@4| (M3.Expression.args |expr#0@@4|) |st#0@@34| |env#0@@14|)))))
(let ((|sts''#0@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#3@@0|)) |sts'#0@@0|)))
(ite  (not (M3.__default.Compatible |sts''#0@@0|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rCompatibility|)))) ($Box DatatypeTypeType |st#0@@34|)) (let ((|stCombined#0@@0| (M3.__default.Combine ($LS $LZ) |sts''#0@@0|)))
(ite  (and (M3.Expression.exprLiteral_q |fun'#0@@0|) (M3.Literal.litPrimitive_q (M3.Expression.lit |fun'#0@@0|))) (ite (M3.Primitive.primExec_q (M3.Literal.prim (M3.Expression.lit |fun'#0@@0|))) (ite  (and (= (|Seq#Length| |args'#0@@0|) (LitInt (M3.__default.Arity (Lit DatatypeTypeType |#M3.Primitive.primExec|)))) (M3.__default.ValidArgs (Lit DatatypeTypeType |#M3.Primitive.primExec|) |args'#0@@0| |stCombined#0@@0|)) (let ((|ps#0@@0| (M3.__default.exec (M3.Literal.str (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@0| (LitInt 0))))) (M3.Literal.paths (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@0| (LitInt 1))))) (M3.Literal.strs (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#0@@0| (LitInt 2))))) |stCombined#0@@0|)))
(|#M3.Tuple.Pair| ($Box DatatypeTypeType (|#M3.Expression.exprLiteral| (|#M3.Literal.litArrOfPaths| ($Unbox SetType (M3.Tuple.fst |ps#0@@0|))))) (M3.Tuple.snd |ps#0@@0|))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@34|))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@34|))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@34|)))))))))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@34|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |6702|
 :pattern ( (M3.__default.eval ($LS $ly@@19) |expr#0@@4| |st#0@@34| |env#0@@14|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@20 T@U) (|p#0@@31| T@U) (|cert#0@@9| T@U) (|deps#0@@16| T@U) (|st#0@@35| T@U) ) (!  (=> (or (|M3.__default.CollectDependencies#canCall| |p#0@@31| |cert#0@@9| |deps#0@@16| |st#0@@35|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |p#0@@31| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@9| Tclass.M3.WFCertificate)) ($Is SetType |deps#0@@16| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |st#0@@35| Tclass.M3.State)) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@31| |cert#0@@9|) (|Set#Equal| |deps#0@@16| (M3.__default.LocInv__Deps |p#0@@31|)))))) (and (forall ((|d#0@@6| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@6| Tclass.M3.Path) (=> (|Set#IsMember| |deps#0@@16| ($Box DatatypeTypeType |d#0@@6|)) (and (and (|M3.__default.DomSt#canCall| |st#0@@35|) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@35|) ($Box DatatypeTypeType |d#0@@6|)) (|M3.__default.GetSt#canCall| |d#0@@6| |st#0@@35|))) (=> (not (|Set#IsMember| (M3.__default.DomSt |st#0@@35|) ($Box DatatypeTypeType |d#0@@6|))) (and (and (M3.WFCertificate.Cert_q |cert#0@@9|) (|M3.__default.FindCert#canCall| |d#0@@6| (M3.WFCertificate.certs |cert#0@@9|))) (|M3.__default.OracleWF#canCall| |d#0@@6| (M3.__default.FindCert |d#0@@6| (M3.WFCertificate.certs |cert#0@@9|)) |st#0@@35|))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |6082|
 :pattern ( (M3.__default.FindCert |d#0@@6| (M3.WFCertificate.certs |cert#0@@9|)))
 :pattern ( (M3.__default.GetSt |d#0@@6| |st#0@@35|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@35|) ($Box DatatypeTypeType |d#0@@6|)))
 :pattern ( (|Set#IsMember| |deps#0@@16| ($Box DatatypeTypeType |d#0@@6|)))
)) (= (M3.__default.CollectDependencies ($LS $ly@@20) |p#0@@31| |cert#0@@9| |deps#0@@16| |st#0@@35|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path |deps#0@@16|)) (|lambda#26| (M3.__default.DomSt |st#0@@35|) |st#0@@35| $ly@@20 (M3.WFCertificate.certs |cert#0@@9|) |st#0@@35|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |6083|
 :pattern ( (M3.__default.CollectDependencies ($LS $ly@@20) |p#0@@31| |cert#0@@9| |deps#0@@16| |st#0@@35|))
))))
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|$w#0@@2| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#1| |l#0@@2| |l#1@@1| |l#2@@0|) |$w#0@@2|) ($Box DatatypeTypeType (M3.__default.GetSt ($Unbox DatatypeTypeType |$w#0@@2|) (ite (|Set#IsMember| |l#0@@2| |$w#0@@2|) |l#1@@1| |l#2@@0|))))
 :qid |CloudMakeParallelBuildsdfy.770:71|
 :skolemid |7205|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#1| |l#0@@2| |l#1@@1| |l#2@@0|) |$w#0@@2|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@32| T@U) (|a#0@@1| T@U) (|st#0@@36| T@U) ) (!  (=> (or (|M3.__default.SetSt#canCall| |p#0@@32| |a#0@@1| |st#0@@36|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@32| Tclass.M3.Path) ($Is DatatypeTypeType |a#0@@1| Tclass.M3.Artifact)) ($Is DatatypeTypeType |st#0@@36| Tclass.M3.State)))) ($Is DatatypeTypeType (M3.__default.SetSt |p#0@@32| |a#0@@1| |st#0@@36|) Tclass.M3.State))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :skolemid |5727|
 :pattern ( (M3.__default.SetSt |p#0@@32| |a#0@@1| |st#0@@36|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@21 T@U) (|p#0@@33| T@U) (|cert#0@@10| T@U) (|st#0@@37| T@U) ) (!  (=> (or (|M3.__default.OracleWF#canCall| (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|) (Lit DatatypeTypeType |st#0@@37|)) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |p#0@@33| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@10| Tclass.M3.WFCertificate)) ($Is DatatypeTypeType |st#0@@37| Tclass.M3.State)) (U_2_bool (Lit boolType (bool_2_U (M3.__default.CheckWellFounded ($LS $LZ) (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|)))))))) (and (and (and (and (|M3.__default.LocInv__Cmd#canCall| (Lit DatatypeTypeType |p#0@@33|)) (|M3.__default.LocInv__Deps#canCall| (Lit DatatypeTypeType |p#0@@33|))) (|M3.__default.LocInv__Exp#canCall| (Lit DatatypeTypeType |p#0@@33|))) (let ((|e#2@@1| (Lit SeqType (M3.__default.LocInv__Exp (Lit DatatypeTypeType |p#0@@33|)))))
(let ((|deps#2| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@33|)))))
(let ((|cmd#2| (Lit SeqType (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@33|)))))
 (and (|M3.__default.CollectDependencies#canCall| (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|) |deps#2| (Lit DatatypeTypeType |st#0@@37|)) (|M3.__default.RunTool#canCall| |cmd#2| (M3.__default.CollectDependencies ($LS $ly@@21) (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|) |deps#2| (Lit DatatypeTypeType |st#0@@37|)) |e#2@@1|)))))) (= (M3.__default.OracleWF ($LS $ly@@21) (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|) (Lit DatatypeTypeType |st#0@@37|)) (let ((|e#2@@2| (Lit SeqType (M3.__default.LocInv__Exp (Lit DatatypeTypeType |p#0@@33|)))))
(let ((|deps#2@@0| (Lit SetType (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@33|)))))
(let ((|cmd#2@@0| (Lit SeqType (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@33|)))))
(M3.__default.RunTool |cmd#2@@0| (M3.__default.CollectDependencies ($LS $ly@@21) (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|) |deps#2@@0| (Lit DatatypeTypeType |st#0@@37|)) |e#2@@2|)))))))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :weight 3
 :skolemid |6064|
 :pattern ( (M3.__default.OracleWF ($LS $ly@@21) (Lit DatatypeTypeType |p#0@@33|) (Lit DatatypeTypeType |cert#0@@10|) (Lit DatatypeTypeType |st#0@@37|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|p#0@@34| T@U) ) (!  (=> (or (|M3.__default.GetCert#canCall| |p#0@@34|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@34| Tclass.M3.Path) (M3.__default.WellFounded |p#0@@34|)))) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@34| (M3.__default.GetCert |p#0@@34|)) ($Is DatatypeTypeType (M3.__default.GetCert |p#0@@34|) Tclass.M3.WFCertificate)))
 :qid |CloudMakeParallelBuildsdfy.627:26|
 :skolemid |6017|
 :pattern ( (M3.__default.GetCert |p#0@@34|))
))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($ly@@22 T@U) (|stmts#0@@3| T@U) (|st#0@@38| T@U) (|env#0@@15| T@U) ) (!  (=> (or (|M3.__default.do#canCall| (Lit SeqType |stmts#0@@3|) |st#0@@38| |env#0@@15|) (and (< 9 $FunctionContextHeight) (and (and (and ($Is SeqType |stmts#0@@3| (TSeq Tclass.M3.Statement)) ($Is DatatypeTypeType |st#0@@38| Tclass.M3.State)) ($Is DatatypeTypeType |env#0@@15| Tclass.M3.Env)) (and (M3.__default.Legal (Lit SeqType |stmts#0@@3|)) (M3.__default.ValidEnv |env#0@@15|))))) (and (let ((|stmt#1| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |stmts#0@@3|) (LitInt 0)))))
 (and (=> (M3.Statement.stmtVariable_q |stmt#1|) (and (|M3.__default.eval#canCall| (M3.Statement.expr |stmt#1|) |st#0@@38| |env#0@@15|) (let ((|st'#1@@3| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $LZ) (M3.Statement.expr |stmt#1|) |st#0@@38| |env#0@@15|)))))
(let ((|expr'#1| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $LZ) (M3.Statement.expr |stmt#1|) |st#0@@38| |env#0@@15|)))))
 (and (|M3.__default.Value#canCall| |expr'#1|) (=> (M3.__default.Value |expr'#1|) (and (|M3.__default.SetEnv#canCall| (M3.Statement.id |stmt#1|) |expr'#1| |env#0@@15|) (let ((|env'#1| (M3.__default.SetEnv (M3.Statement.id |stmt#1|) |expr'#1| |env#0@@15|)))
 (and (|M3.__default.Legal#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@3|) (LitInt 1)))) (=> (U_2_bool (Lit boolType (bool_2_U (M3.__default.Legal (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@3|) (LitInt 1))))))) (|M3.__default.do#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@3|) (LitInt 1))) |st'#1@@3| |env'#1|))))))))))) (=> (not (M3.Statement.stmtVariable_q |stmt#1|)) (|M3.__default.eval#canCall| (M3.Statement.ret |stmt#1|) |st#0@@38| |env#0@@15|)))) (= (M3.__default.do ($LS $ly@@22) (Lit SeqType |stmts#0@@3|) |st#0@@38| |env#0@@15|) (let ((|stmt#1@@0| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |stmts#0@@3|) (LitInt 0)))))
(ite (M3.Statement.stmtVariable_q |stmt#1@@0|) (let ((|st'#1@@4| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $LZ) (M3.Statement.expr |stmt#1@@0|) |st#0@@38| |env#0@@15|)))))
(let ((|expr'#1@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $LZ) (M3.Statement.expr |stmt#1@@0|) |st#0@@38| |env#0@@15|)))))
(ite (M3.__default.Value |expr'#1@@0|) (let ((|env'#1@@0| (M3.__default.SetEnv (M3.Statement.id |stmt#1@@0|) |expr'#1@@0| |env#0@@15|)))
(ite (M3.__default.Legal (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@3|) (LitInt 1)))) (M3.__default.do ($LS $ly@@22) (Lit SeqType (|Seq#Drop| (Lit SeqType |stmts#0@@3|) (LitInt 1))) |st'#1@@4| |env'#1@@0|) (|#M3.Tuple.Pair| ($Box DatatypeTypeType |expr'#1@@0|) ($Box DatatypeTypeType |st'#1@@4|)))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@38|))))) (M3.__default.eval ($LS $LZ) (M3.Statement.ret |stmt#1@@0|) |st#0@@38| |env#0@@15|))))))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :weight 3
 :skolemid |6684|
 :pattern ( (M3.__default.do ($LS $ly@@22) (Lit SeqType |stmts#0@@3|) |st#0@@38| |env#0@@15|))
))))
(assert (forall ((a@@30 T@U) (b@@27 T@U) ) (!  (=> (|Set#Equal| a@@30 b@@27) (= a@@30 b@@27))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |5105|
 :pattern ( (|Set#Equal| a@@30 b@@27))
)))
(assert (forall ((a@@31 T@U) (b@@28 T@U) ) (!  (=> (|Seq#Equal| a@@31 b@@28) (= a@@31 b@@28))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |5196|
 :pattern ( (|Seq#Equal| a@@31 b@@28))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|prim#0@@3| T@U) ) (!  (=> (or (|M3.__default.Arity#canCall| |prim#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |prim#0@@3| Tclass.M3.Primitive))) (<= (LitInt 0) (M3.__default.Arity |prim#0@@3|)))
 :qid |CloudMakeParallelBuildsdfy.282:24|
 :skolemid |6741|
 :pattern ( (M3.__default.Arity |prim#0@@3|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@14| T@U) (|deps#0@@17| T@U) (|exp#0@@5| T@U) ) (!  (=> (or (|M3.__default.Loc#canCall| (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@17|) (Lit SeqType |exp#0@@5|)) (and (< 1 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0@@14| (TSeq TChar)) ($Is SetType |deps#0@@17| (TSet Tclass.M3.Path))) ($Is SeqType |exp#0@@5| (TSeq TChar))))) (= (M3.__default.Loc (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@17|) (Lit SeqType |exp#0@@5|)) (Lit DatatypeTypeType (|#M3.Path.InternalPath| (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@17|) (Lit SeqType |exp#0@@5|)))))
 :qid |CloudMakeParallelBuildsdfy.154:22|
 :weight 3
 :skolemid |5682|
 :pattern ( (M3.__default.Loc (Lit SeqType |cmd#0@@14|) (Lit SetType |deps#0@@17|) (Lit SeqType |exp#0@@5|)))
))))
(assert (forall ((s@@14 T@U) (n@@6 Int) ) (!  (=> (and (<= 0 n@@6) (<= n@@6 (|Seq#Length| s@@14))) (= (|Seq#Length| (|Seq#Take| s@@14 n@@6)) n@@6))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |5199|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@14 n@@6)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@15| T@U) (|deps#0@@18| T@U) (|exps#0@@8| T@U) (|st#0@@39| T@U) ) (!  (=> (or (|M3.__default.exec#canCall| |cmd#0@@15| |deps#0@@18| |exps#0@@8| |st#0@@39|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@15| (TSeq TChar)) ($Is SetType |deps#0@@18| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@8| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@39| Tclass.M3.State)))) (and (and (|M3.__default.Restrict#canCall| |deps#0@@18| |st#0@@39|) (|M3.__default.execOne#canCall| |cmd#0@@15| |deps#0@@18| (M3.__default.Restrict |deps#0@@18| |st#0@@39|) |exps#0@@8| |st#0@@39|)) (= (M3.__default.exec |cmd#0@@15| |deps#0@@18| |exps#0@@8| |st#0@@39|) (M3.__default.execOne ($LS $LZ) |cmd#0@@15| |deps#0@@18| (M3.__default.Restrict |deps#0@@18| |st#0@@39|) |exps#0@@8| |st#0@@39|))))
 :qid |CloudMakeParallelBuildsdfy.69:23|
 :skolemid |5821|
 :pattern ( (M3.__default.exec |cmd#0@@15| |deps#0@@18| |exps#0@@8| |st#0@@39|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@35| T@U) ) (!  (=> (or (|M3.__default.OracleArbitrary#canCall| |p#0@@35|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@35| Tclass.M3.Path))) ($Is DatatypeTypeType (M3.__default.OracleArbitrary |p#0@@35|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.648:34|
 :skolemid |6054|
 :pattern ( (M3.__default.OracleArbitrary |p#0@@35|))
))))
(assert (forall ((|a#31#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Env.EnvCons| |a#31#0#0|) Tclass.M3.Env) ($Is MapType |a#31#0#0| (TMap Tclass.M3.Identifier Tclass.M3.Expression)))
 :qid |CloudMakeParallelBuildsdfy.819:26|
 :skolemid |6909|
 :pattern ( ($Is DatatypeTypeType (|#M3.Env.EnvCons| |a#31#0#0|) Tclass.M3.Env))
)))
(assert (forall ((|a#46#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.State.StateCons| |a#46#0#0|) Tclass.M3.State) ($Is MapType |a#46#0#0| (TMap Tclass.M3.Path Tclass.M3.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6941|
 :pattern ( ($Is DatatypeTypeType (|#M3.State.StateCons| |a#46#0#0|) Tclass.M3.State))
)))
(assert (forall ((d@@81 T@U) ) (!  (=> ($Is DatatypeTypeType d@@81 Tclass.M3.Path) (or (M3.Path.InternalPath_q d@@81) (M3.Path.ExternalPath_q d@@81)))
 :qid |unknown.0:0|
 :skolemid |6901|
 :pattern ( (M3.Path.ExternalPath_q d@@81) ($Is DatatypeTypeType d@@81 Tclass.M3.Path))
 :pattern ( (M3.Path.InternalPath_q d@@81) ($Is DatatypeTypeType d@@81 Tclass.M3.Path))
)))
(assert (forall ((d@@82 T@U) ) (!  (=> ($Is DatatypeTypeType d@@82 Tclass.M3.Statement) (or (M3.Statement.stmtVariable_q d@@82) (M3.Statement.stmtReturn_q d@@82)))
 :qid |unknown.0:0|
 :skolemid |6990|
 :pattern ( (M3.Statement.stmtReturn_q d@@82) ($Is DatatypeTypeType d@@82 Tclass.M3.Statement))
 :pattern ( (M3.Statement.stmtVariable_q d@@82) ($Is DatatypeTypeType d@@82 Tclass.M3.Statement))
)))
(assert (forall ((d@@83 T@U) ) (!  (=> ($Is DatatypeTypeType d@@83 Tclass.M3.Primitive) (or (M3.Primitive.primCreatePath_q d@@83) (M3.Primitive.primExec_q d@@83)))
 :qid |unknown.0:0|
 :skolemid |7168|
 :pattern ( (M3.Primitive.primExec_q d@@83) ($Is DatatypeTypeType d@@83 Tclass.M3.Primitive))
 :pattern ( (M3.Primitive.primCreatePath_q d@@83) ($Is DatatypeTypeType d@@83 Tclass.M3.Primitive))
)))
(assert (forall ((d@@84 T@U) ) (!  (=> ($Is DatatypeTypeType d@@84 Tclass.M3.Reason) (or (M3.Reason.rCompatibility_q d@@84) (M3.Reason.rValidity_q d@@84)))
 :qid |unknown.0:0|
 :skolemid |7178|
 :pattern ( (M3.Reason.rValidity_q d@@84) ($Is DatatypeTypeType d@@84 Tclass.M3.Reason))
 :pattern ( (M3.Reason.rCompatibility_q d@@84) ($Is DatatypeTypeType d@@84 Tclass.M3.Reason))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@36| T@U) (|a#0@@2| T@U) (|st#0@@40| T@U) ) (!  (=> (or (|M3.__default.SetSt#canCall| (Lit DatatypeTypeType |p#0@@36|) (Lit DatatypeTypeType |a#0@@2|) (Lit DatatypeTypeType |st#0@@40|)) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@36| Tclass.M3.Path) ($Is DatatypeTypeType |a#0@@2| Tclass.M3.Artifact)) ($Is DatatypeTypeType |st#0@@40| Tclass.M3.State)))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@40|)) (= (M3.__default.SetSt (Lit DatatypeTypeType |p#0@@36|) (Lit DatatypeTypeType |a#0@@2|) (Lit DatatypeTypeType |st#0@@40|)) (|#M3.State.StateCons| (|Map#Build| (Lit MapType (M3.State.m (Lit DatatypeTypeType |st#0@@40|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |p#0@@36|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |a#0@@2|)))))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :weight 3
 :skolemid |5731|
 :pattern ( (M3.__default.SetSt (Lit DatatypeTypeType |p#0@@36|) (Lit DatatypeTypeType |a#0@@2|) (Lit DatatypeTypeType |st#0@@40|)))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($ly@@23 T@U) (|expr#0@@5| T@U) (|st#0@@41| T@U) (|env#0@@16| T@U) ) (!  (=> (or (|M3.__default.eval#canCall| |expr#0@@5| |st#0@@41| |env#0@@16|) (and (< 8 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@5| Tclass.M3.Expression) ($Is DatatypeTypeType |st#0@@41| Tclass.M3.State)) ($Is DatatypeTypeType |env#0@@16| Tclass.M3.Env)) (M3.__default.ValidEnv |env#0@@16|)))) ($Is DatatypeTypeType (M3.__default.eval $ly@@23 |expr#0@@5| |st#0@@41| |env#0@@16|) (Tclass.M3.Tuple Tclass.M3.Expression Tclass.M3.State)))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |6700|
 :pattern ( (M3.__default.eval $ly@@23 |expr#0@@5| |st#0@@41| |env#0@@16|))
))))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 TInt) (and (= ($Box intType ($Unbox intType bx@@17)) bx@@17) ($Is intType ($Unbox intType bx@@17) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |4982|
 :pattern ( ($IsBox bx@@17 TInt))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 TChar) (and (= ($Box charType ($Unbox charType bx@@18)) bx@@18) ($Is charType ($Unbox charType bx@@18) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |4985|
 :pattern ( ($IsBox bx@@18 TChar))
)))
(assert (forall ((v@@5 T@U) (t@@4 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@5) t@@4) ($Is T@@2 v@@5 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4993|
 :pattern ( ($IsBox ($Box T@@2 v@@5) t@@4))
)))
(assert  (=> |$let#3$canCall| (and ($Is SeqType |$let#3_cmd| (TSeq TChar)) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert  (=> |$let#17$canCall| (and ($Is SeqType |$let#17_exp| (TSeq TChar)) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($ly@@24 T@U) (|stmts#0@@4| T@U) (|st#0@@42| T@U) (|env#0@@17| T@U) ) (!  (=> (or (|M3.__default.do#canCall| |stmts#0@@4| |st#0@@42| |env#0@@17|) (and (< 9 $FunctionContextHeight) (and (and (and ($Is SeqType |stmts#0@@4| (TSeq Tclass.M3.Statement)) ($Is DatatypeTypeType |st#0@@42| Tclass.M3.State)) ($Is DatatypeTypeType |env#0@@17| Tclass.M3.Env)) (and (M3.__default.Legal |stmts#0@@4|) (M3.__default.ValidEnv |env#0@@17|))))) ($Is DatatypeTypeType (M3.__default.do $ly@@24 |stmts#0@@4| |st#0@@42| |env#0@@17|) (Tclass.M3.Tuple Tclass.M3.Expression Tclass.M3.State)))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :skolemid |6681|
 :pattern ( (M3.__default.do $ly@@24 |stmts#0@@4| |st#0@@42| |env#0@@17|))
))))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|st#0@@43| T@U) (|st'#0@@5| T@U) ) (!  (=> (or (|M3.__default.Extends#canCall| |st#0@@43| |st'#0@@5|) (and (< 6 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@43| Tclass.M3.State) ($Is DatatypeTypeType |st'#0@@5| Tclass.M3.State)))) (and (and (and (|M3.__default.DomSt#canCall| |st#0@@43|) (|M3.__default.DomSt#canCall| |st'#0@@5|)) (=> (|Set#Subset| (M3.__default.DomSt |st#0@@43|) (M3.__default.DomSt |st'#0@@5|)) (and (forall ((|p#0@@37| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@37| Tclass.M3.Path) (and (|M3.__default.DomSt#canCall| |st#0@@43|) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@43|) ($Box DatatypeTypeType |p#0@@37|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt |p#0@@37| |st'#0@@5|)) (|$IsA#M3.Artifact| (M3.__default.GetSt |p#0@@37| |st#0@@43|))) (and (|M3.__default.GetSt#canCall| |p#0@@37| |st'#0@@5|) (|M3.__default.GetSt#canCall| |p#0@@37| |st#0@@43|))))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6613|
 :pattern ( (M3.__default.GetSt |p#0@@37| |st#0@@43|))
 :pattern ( (M3.__default.GetSt |p#0@@37| |st'#0@@5|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@43|) ($Box DatatypeTypeType |p#0@@37|)))
)) (=> (forall ((|p#0@@38| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@38| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@43|) ($Box DatatypeTypeType |p#0@@38|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#0@@38| |st'#0@@5|) (M3.__default.GetSt |p#0@@38| |st#0@@43|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6615|
 :pattern ( (M3.__default.GetSt |p#0@@38| |st#0@@43|))
 :pattern ( (M3.__default.GetSt |p#0@@38| |st'#0@@5|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@43|) ($Box DatatypeTypeType |p#0@@38|)))
)) (forall ((|p#1@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@3| Tclass.M3.Path) (and (|M3.__default.DomSt#canCall| |st#0@@43|) (=> (not (|Set#IsMember| (M3.__default.DomSt |st#0@@43|) ($Box DatatypeTypeType |p#1@@3|))) (and (|M3.__default.DomSt#canCall| |st'#0@@5|) (=> (|Set#IsMember| (M3.__default.DomSt |st'#0@@5|) ($Box DatatypeTypeType |p#1@@3|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt |p#1@@3| |st'#0@@5|)) (|$IsA#M3.Artifact| (M3.__default.Oracle |p#1@@3| |st#0@@43|))) (and (|M3.__default.GetSt#canCall| |p#1@@3| |st'#0@@5|) (|M3.__default.Oracle#canCall| |p#1@@3| |st#0@@43|))))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6614|
 :pattern ( (M3.__default.Oracle |p#1@@3| |st#0@@43|))
 :pattern ( (M3.__default.GetSt |p#1@@3| |st'#0@@5|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#0@@5|) ($Box DatatypeTypeType |p#1@@3|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@43|) ($Box DatatypeTypeType |p#1@@3|)))
)))))) (= (M3.__default.Extends |st#0@@43| |st'#0@@5|)  (and (and (|Set#Subset| (M3.__default.DomSt |st#0@@43|) (M3.__default.DomSt |st'#0@@5|)) (forall ((|p#0@@39| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@39| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@43|) ($Box DatatypeTypeType |p#0@@39|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#0@@39| |st'#0@@5|) (M3.__default.GetSt |p#0@@39| |st#0@@43|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6611|
 :pattern ( (M3.__default.GetSt |p#0@@39| |st#0@@43|))
 :pattern ( (M3.__default.GetSt |p#0@@39| |st'#0@@5|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@43|) ($Box DatatypeTypeType |p#0@@39|)))
))) (forall ((|p#1@@4| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@4| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@43|) ($Box DatatypeTypeType |p#1@@4|))) (|Set#IsMember| (M3.__default.DomSt |st'#0@@5|) ($Box DatatypeTypeType |p#1@@4|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#1@@4| |st'#0@@5|) (M3.__default.Oracle |p#1@@4| |st#0@@43|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6612|
 :pattern ( (M3.__default.Oracle |p#1@@4| |st#0@@43|))
 :pattern ( (M3.__default.GetSt |p#1@@4| |st'#0@@5|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#0@@5|) ($Box DatatypeTypeType |p#1@@4|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@43|) ($Box DatatypeTypeType |p#1@@4|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :skolemid |6616|
 :pattern ( (M3.__default.Extends |st#0@@43| |st'#0@@5|))
))))
(assert (forall ((s@@15 T@U) ) (! (<= 0 (|Seq#Length| s@@15))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |5176|
 :pattern ( (|Seq#Length| s@@15))
)))
(assert (forall ((s@@16 T@U) (i@@11 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@11) (< i@@11 j@@2)) (<= j@@2 (|Seq#Length| s@@16))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@16 i@@11) (|Seq#Drop| s@@16 j@@2))) (|Seq#Rank| s@@16)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |5225|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@16 i@@11) (|Seq#Drop| s@@16 j@@2))))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M3._default.PickOne$T@@2 T@U) ($Heap@@14 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|M3.__default.PickOne#canCall| M3._default.PickOne$T@@2 |s#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@14) ($Is SetType |s#0@@1| (TSet M3._default.PickOne$T@@2))) (not (|Set#Equal| |s#0@@1| |Set#Empty|))))) (and (|$let#27$canCall| M3._default.PickOne$T@@2 |s#0@@1|) (= (M3.__default.PickOne M3._default.PickOne$T@@2 |s#0@@1|) (let ((|x#0| (|$let#27_x| M3._default.PickOne$T@@2 |s#0@@1|)))
|x#0|))))
 :qid |unknown.0:0|
 :skolemid |5753|
 :pattern ( (M3.__default.PickOne M3._default.PickOne$T@@2 |s#0@@1|) ($IsGoodHeap $Heap@@14))
))))
(assert (forall ((a@@32 T@U) (b@@29 T@U) ) (!  (=> (and (M3.Literal.litTrue_q a@@32) (M3.Literal.litTrue_q b@@29)) (|M3.Literal#Equal| a@@32 b@@29))
 :qid |unknown.0:0|
 :skolemid |7151|
 :pattern ( (|M3.Literal#Equal| a@@32 b@@29) (M3.Literal.litTrue_q a@@32))
 :pattern ( (|M3.Literal#Equal| a@@32 b@@29) (M3.Literal.litTrue_q b@@29))
)))
(assert (forall ((a@@33 T@U) (b@@30 T@U) ) (!  (=> (and (M3.Literal.litFalse_q a@@33) (M3.Literal.litFalse_q b@@30)) (|M3.Literal#Equal| a@@33 b@@30))
 :qid |unknown.0:0|
 :skolemid |7152|
 :pattern ( (|M3.Literal#Equal| a@@33 b@@30) (M3.Literal.litFalse_q a@@33))
 :pattern ( (|M3.Literal#Equal| a@@33 b@@30) (M3.Literal.litFalse_q b@@30))
)))
(assert (forall ((a@@34 T@U) (b@@31 T@U) ) (!  (=> (and (M3.Literal.litUndefined_q a@@34) (M3.Literal.litUndefined_q b@@31)) (|M3.Literal#Equal| a@@34 b@@31))
 :qid |unknown.0:0|
 :skolemid |7153|
 :pattern ( (|M3.Literal#Equal| a@@34 b@@31) (M3.Literal.litUndefined_q a@@34))
 :pattern ( (|M3.Literal#Equal| a@@34 b@@31) (M3.Literal.litUndefined_q b@@31))
)))
(assert (forall ((a@@35 T@U) (b@@32 T@U) ) (!  (=> (and (M3.Literal.litNull_q a@@35) (M3.Literal.litNull_q b@@32)) (|M3.Literal#Equal| a@@35 b@@32))
 :qid |unknown.0:0|
 :skolemid |7154|
 :pattern ( (|M3.Literal#Equal| a@@35 b@@32) (M3.Literal.litNull_q a@@35))
 :pattern ( (|M3.Literal#Equal| a@@35 b@@32) (M3.Literal.litNull_q b@@32))
)))
(assert (forall ((a@@36 T@U) (b@@33 T@U) ) (!  (=> (and (M3.Primitive.primCreatePath_q a@@36) (M3.Primitive.primCreatePath_q b@@33)) (|M3.Primitive#Equal| a@@36 b@@33))
 :qid |unknown.0:0|
 :skolemid |7169|
 :pattern ( (|M3.Primitive#Equal| a@@36 b@@33) (M3.Primitive.primCreatePath_q a@@36))
 :pattern ( (|M3.Primitive#Equal| a@@36 b@@33) (M3.Primitive.primCreatePath_q b@@33))
)))
(assert (forall ((a@@37 T@U) (b@@34 T@U) ) (!  (=> (and (M3.Primitive.primExec_q a@@37) (M3.Primitive.primExec_q b@@34)) (|M3.Primitive#Equal| a@@37 b@@34))
 :qid |unknown.0:0|
 :skolemid |7170|
 :pattern ( (|M3.Primitive#Equal| a@@37 b@@34) (M3.Primitive.primExec_q a@@37))
 :pattern ( (|M3.Primitive#Equal| a@@37 b@@34) (M3.Primitive.primExec_q b@@34))
)))
(assert (forall ((a@@38 T@U) (b@@35 T@U) ) (!  (=> (and (M3.Reason.rCompatibility_q a@@38) (M3.Reason.rCompatibility_q b@@35)) (|M3.Reason#Equal| a@@38 b@@35))
 :qid |unknown.0:0|
 :skolemid |7179|
 :pattern ( (|M3.Reason#Equal| a@@38 b@@35) (M3.Reason.rCompatibility_q a@@38))
 :pattern ( (|M3.Reason#Equal| a@@38 b@@35) (M3.Reason.rCompatibility_q b@@35))
)))
(assert (forall ((a@@39 T@U) (b@@36 T@U) ) (!  (=> (and (M3.Reason.rValidity_q a@@39) (M3.Reason.rValidity_q b@@36)) (|M3.Reason#Equal| a@@39 b@@36))
 :qid |unknown.0:0|
 :skolemid |7180|
 :pattern ( (|M3.Reason#Equal| a@@39 b@@36) (M3.Reason.rValidity_q a@@39))
 :pattern ( (|M3.Reason#Equal| a@@39 b@@36) (M3.Reason.rValidity_q b@@36))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@2) h@@0) (forall ((bx@@19 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@19) ($IsAllocBox bx@@19 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |5022|
 :pattern ( (|Set#IsMember| v@@6 bx@@19))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |5023|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@5 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@5 u)) t@@5)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |4964|
 :pattern ( (TMap t@@5 u))
)))
(assert (forall ((t@@6 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@6 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |4965|
 :pattern ( (TMap t@@6 u@@0))
)))
(assert (forall ((t@@7 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@7 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |4966|
 :pattern ( (TMap t@@7 u@@1))
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
(assert (forall ((M3.Tuple$A@@2 T@U) (M3.Tuple$B@@2 T@U) ) (! (= (Tclass.M3.Tuple_0 (Tclass.M3.Tuple M3.Tuple$A@@2 M3.Tuple$B@@2)) M3.Tuple$A@@2)
 :qid |unknown.0:0|
 :skolemid |5816|
 :pattern ( (Tclass.M3.Tuple M3.Tuple$A@@2 M3.Tuple$B@@2))
)))
(assert (forall ((M3.Tuple$A@@3 T@U) (M3.Tuple$B@@3 T@U) ) (! (= (Tclass.M3.Tuple_1 (Tclass.M3.Tuple M3.Tuple$A@@3 M3.Tuple$B@@3)) M3.Tuple$B@@3)
 :qid |unknown.0:0|
 :skolemid |5817|
 :pattern ( (Tclass.M3.Tuple M3.Tuple$A@@3 M3.Tuple$B@@3))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) ) (! (= (DatatypeCtorId (|#M3.WFCertificate.Cert| |a#36#0#0| |a#36#1#0|)) |##M3.WFCertificate.Cert|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6920|
 :pattern ( (|#M3.WFCertificate.Cert| |a#36#0#0| |a#36#1#0|))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) ) (! (= (M3.WFCertificate.p (|#M3.WFCertificate.Cert| |a#40#0#0| |a#40#1#0|)) |a#40#0#0|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6928|
 :pattern ( (|#M3.WFCertificate.Cert| |a#40#0#0| |a#40#1#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) ) (! (= (M3.WFCertificate.certs (|#M3.WFCertificate.Cert| |a#42#0#0| |a#42#1#0|)) |a#42#1#0|)
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6930|
 :pattern ( (|#M3.WFCertificate.Cert| |a#42#0#0| |a#42#1#0|))
)))
(assert (forall ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Statement.stmtVariable| |a#58#0#0| |a#58#1#0|)) |##M3.Statement.stmtVariable|)
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |6967|
 :pattern ( (|#M3.Statement.stmtVariable| |a#58#0#0| |a#58#1#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) ) (! (= (M3.Statement.id (|#M3.Statement.stmtVariable| |a#62#0#0| |a#62#1#0|)) |a#62#0#0|)
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |6975|
 :pattern ( (|#M3.Statement.stmtVariable| |a#62#0#0| |a#62#1#0|))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) ) (! (= (M3.Statement.expr (|#M3.Statement.stmtVariable| |a#64#0#0| |a#64#1#0|)) |a#64#1#0|)
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |6977|
 :pattern ( (|#M3.Statement.stmtVariable| |a#64#0#0| |a#64#1#0|))
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
(assert (forall ((|a#194#0#0| T@U) (|a#194#1#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Tuple.Pair| |a#194#0#0| |a#194#1#0|)) |##M3.Tuple.Pair|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7182|
 :pattern ( (|#M3.Tuple.Pair| |a#194#0#0| |a#194#1#0|))
)))
(assert (forall ((|a#198#0#0| T@U) (|a#198#1#0| T@U) ) (! (= (M3.Tuple.fst (|#M3.Tuple.Pair| |a#198#0#0| |a#198#1#0|)) |a#198#0#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7193|
 :pattern ( (|#M3.Tuple.Pair| |a#198#0#0| |a#198#1#0|))
)))
(assert (forall ((|a#200#0#0| T@U) (|a#200#1#0| T@U) ) (! (= (M3.Tuple.snd (|#M3.Tuple.Pair| |a#200#0#0| |a#200#1#0|)) |a#200#1#0|)
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7195|
 :pattern ( (|#M3.Tuple.Pair| |a#200#0#0| |a#200#1#0|))
)))
(assert  (=> |$let#0$canCall| (and ($Is DatatypeTypeType |$let#0_a| Tclass.M3.Artifact) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert  (=> |$let#24$canCall| (and ($Is DatatypeTypeType |$let#24_lit| Tclass.M3.Literal) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert  (=> |$let#33$canCall| (and ($Is DatatypeTypeType |$let#33_a| Tclass.M3.Artifact) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert (forall ((v@@7 T@U) (t0@@3 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@7 (TSeq t0@@3) h@@1) (forall ((i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length| v@@7))) ($IsAllocBox (|Seq#Index| v@@7 i@@12) t0@@3 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |5028|
 :pattern ( (|Seq#Index| v@@7 i@@12))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |5029|
 :pattern ( ($IsAlloc SeqType v@@7 (TSeq t0@@3) h@@1))
)))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= (|#M3.Path.InternalPath| (Lit SeqType |a#13#0#0|) (Lit SetType |a#13#1#0|) (Lit SeqType |a#13#2#0|)) (Lit DatatypeTypeType (|#M3.Path.InternalPath| |a#13#0#0| |a#13#1#0| |a#13#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6880|
 :pattern ( (|#M3.Path.InternalPath| (Lit SeqType |a#13#0#0|) (Lit SetType |a#13#1#0|) (Lit SeqType |a#13#2#0|)))
)))
(assert (forall ((|a#87#0#0| T@U) (|a#87#1#0| T@U) (|a#87#2#0| T@U) ) (! (= (|#M3.Expression.exprIf| (Lit DatatypeTypeType |a#87#0#0|) (Lit DatatypeTypeType |a#87#1#0|) (Lit DatatypeTypeType |a#87#2#0|)) (Lit DatatypeTypeType (|#M3.Expression.exprIf| |a#87#0#0| |a#87#1#0| |a#87#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.134:32|
 :skolemid |7020|
 :pattern ( (|#M3.Expression.exprIf| (Lit DatatypeTypeType |a#87#0#0|) (Lit DatatypeTypeType |a#87#1#0|) (Lit DatatypeTypeType |a#87#2#0|)))
)))
(assert (forall (($ly@@25 T@U) (|cmd#0@@16| T@U) (|deps#0@@19| T@U) (|restrictedState#0@@2| T@U) (|exps#0@@9| T@U) (|st#0@@44| T@U) ) (! (= (M3.__default.execOne ($LS $ly@@25) |cmd#0@@16| |deps#0@@19| |restrictedState#0@@2| |exps#0@@9| |st#0@@44|) (M3.__default.execOne $ly@@25 |cmd#0@@16| |deps#0@@19| |restrictedState#0@@2| |exps#0@@9| |st#0@@44|))
 :qid |CloudMakeParallelBuildsdfy.513:18|
 :skolemid |5826|
 :pattern ( (M3.__default.execOne ($LS $ly@@25) |cmd#0@@16| |deps#0@@19| |restrictedState#0@@2| |exps#0@@9| |st#0@@44|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@45| T@U) (|st'#0@@6| T@U) ) (!  (=> (or (|M3.__default.Union#canCall| |st#0@@45| |st'#0@@6|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@45| Tclass.M3.State) ($Is DatatypeTypeType |st'#0@@6| Tclass.M3.State)))) (and (let ((|result#0| (M3.__default.Union |st#0@@45| |st'#0@@6|)))
 (and (|Set#Equal| (M3.__default.DomSt |result#0|) (|Set#Union| (M3.__default.DomSt |st#0@@45|) (M3.__default.DomSt |st'#0@@6|))) (forall ((|p#0@@40| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@40| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |result#0|) ($Box DatatypeTypeType |p#0@@40|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#0@@40| |result#0|) (M3.__default.GetSt |p#0@@40| (ite (|Set#IsMember| (M3.__default.DomSt |st#0@@45|) ($Box DatatypeTypeType |p#0@@40|)) |st#0@@45| |st'#0@@6|)))))
 :qid |CloudMakeParallelBuildsdfy.27:14|
 :skolemid |5656|
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@45|) ($Box DatatypeTypeType |p#0@@40|)))
 :pattern ( (M3.__default.GetSt |p#0@@40| |result#0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |result#0|) ($Box DatatypeTypeType |p#0@@40|)))
)))) ($Is DatatypeTypeType (M3.__default.Union |st#0@@45| |st'#0@@6|) Tclass.M3.State)))
 :qid |CloudMakeParallelBuildsdfy.23:24|
 :skolemid |5657|
 :pattern ( (M3.__default.Union |st#0@@45| |st'#0@@6|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|id#0@@7| T@U) (|expr#0@@6| T@U) (|env#0@@18| T@U) ) (!  (=> (or (|M3.__default.SetEnv#canCall| |id#0@@7| |expr#0@@6| |env#0@@18|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |id#0@@7| Tclass.M3.Identifier) ($Is DatatypeTypeType |expr#0@@6| Tclass.M3.Expression)) ($Is DatatypeTypeType |env#0@@18| Tclass.M3.Env)) (and (M3.__default.ValidEnv |env#0@@18|) (M3.__default.Value |expr#0@@6|))))) (and (M3.__default.ValidEnv (M3.__default.SetEnv |id#0@@7| |expr#0@@6| |env#0@@18|)) ($Is DatatypeTypeType (M3.__default.SetEnv |id#0@@7| |expr#0@@6| |env#0@@18|) Tclass.M3.Env)))
 :qid |CloudMakeParallelBuildsdfy.64:25|
 :skolemid |5706|
 :pattern ( (M3.__default.SetEnv |id#0@@7| |expr#0@@6| |env#0@@18|))
))))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSet (TSet t@@8)) t@@8)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |4956|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSet t@@9)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |4957|
 :pattern ( (TSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Inv0_TSeq (TSeq t@@10)) t@@10)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |4962|
 :pattern ( (TSeq t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Tag (TSeq t@@11)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |4963|
 :pattern ( (TSeq t@@11))
)))
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#M3.Artifact.ArtifactCons| |a#0#0#0@@0|)) |##M3.Artifact.ArtifactCons|)
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6846|
 :pattern ( (|#M3.Artifact.ArtifactCons| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (M3.Artifact._h11 (|#M3.Artifact.ArtifactCons| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6853|
 :pattern ( (|#M3.Artifact.ArtifactCons| |a#4#0#0@@0|))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Path.ExternalPath| |a#22#0#0|)) |##M3.Path.ExternalPath|)
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6889|
 :pattern ( (|#M3.Path.ExternalPath| |a#22#0#0|))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= (M3.Path._h13 (|#M3.Path.ExternalPath| |a#26#0#0|)) |a#26#0#0|)
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6896|
 :pattern ( (|#M3.Path.ExternalPath| |a#26#0#0|))
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
(assert (forall ((|a#44#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.State.StateCons| |a#44#0#0|)) |##M3.State.StateCons|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6937|
 :pattern ( (|#M3.State.StateCons| |a#44#0#0|))
)))
(assert (forall ((|a#48#0#0| T@U) ) (! (= (M3.State.m (|#M3.State.StateCons| |a#48#0#0|)) |a#48#0#0|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6944|
 :pattern ( (|#M3.State.StateCons| |a#48#0#0|))
)))
(assert (forall ((|a#51#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Program.Program| |a#51#0#0|)) |##M3.Program.Program|)
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |6952|
 :pattern ( (|#M3.Program.Program| |a#51#0#0|))
)))
(assert (forall ((|a#55#0#0| T@U) ) (! (= (M3.Program.stmts (|#M3.Program.Program| |a#55#0#0|)) |a#55#0#0|)
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |6959|
 :pattern ( (|#M3.Program.Program| |a#55#0#0|))
)))
(assert (forall ((|a#66#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Statement.stmtReturn| |a#66#0#0|)) |##M3.Statement.stmtReturn|)
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |6979|
 :pattern ( (|#M3.Statement.stmtReturn| |a#66#0#0|))
)))
(assert (forall ((|a#70#0#0| T@U) ) (! (= (M3.Statement.ret (|#M3.Statement.stmtReturn| |a#70#0#0|)) |a#70#0#0|)
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |6986|
 :pattern ( (|#M3.Statement.stmtReturn| |a#70#0#0|))
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
(assert (forall ((|a#141#0#0| Int) ) (! (= (DatatypeCtorId (|#M3.Literal.litNumber| |a#141#0#0|)) |##M3.Literal.litNumber|)
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |7093|
 :pattern ( (|#M3.Literal.litNumber| |a#141#0#0|))
)))
(assert (forall ((|a#145#0#0| Int) ) (! (= (M3.Literal.num (|#M3.Literal.litNumber| |a#145#0#0|)) |a#145#0#0|)
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |7100|
 :pattern ( (|#M3.Literal.litNumber| |a#145#0#0|))
)))
(assert (forall ((|a#146#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Literal.litString| |a#146#0#0|)) |##M3.Literal.litString|)
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |7101|
 :pattern ( (|#M3.Literal.litString| |a#146#0#0|))
)))
(assert (forall ((|a#150#0#0| T@U) ) (! (= (M3.Literal.str (|#M3.Literal.litString| |a#150#0#0|)) |a#150#0#0|)
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |7108|
 :pattern ( (|#M3.Literal.litString| |a#150#0#0|))
)))
(assert (forall ((|a#153#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Literal.litPrimitive| |a#153#0#0|)) |##M3.Literal.litPrimitive|)
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |7111|
 :pattern ( (|#M3.Literal.litPrimitive| |a#153#0#0|))
)))
(assert (forall ((|a#157#0#0| T@U) ) (! (= (M3.Literal.prim (|#M3.Literal.litPrimitive| |a#157#0#0|)) |a#157#0#0|)
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |7118|
 :pattern ( (|#M3.Literal.litPrimitive| |a#157#0#0|))
)))
(assert (forall ((|a#159#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Literal.litArrOfPaths| |a#159#0#0|)) |##M3.Literal.litArrOfPaths|)
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |7120|
 :pattern ( (|#M3.Literal.litArrOfPaths| |a#159#0#0|))
)))
(assert (forall ((|a#163#0#0| T@U) ) (! (= (M3.Literal.paths (|#M3.Literal.litArrOfPaths| |a#163#0#0|)) |a#163#0#0|)
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |7127|
 :pattern ( (|#M3.Literal.litArrOfPaths| |a#163#0#0|))
)))
(assert (forall ((|a#165#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Literal.litArrOfStrings| |a#165#0#0|)) |##M3.Literal.litArrOfStrings|)
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |7129|
 :pattern ( (|#M3.Literal.litArrOfStrings| |a#165#0#0|))
)))
(assert (forall ((|a#169#0#0| T@U) ) (! (= (M3.Literal.strs (|#M3.Literal.litArrOfStrings| |a#169#0#0|)) |a#169#0#0|)
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |7136|
 :pattern ( (|#M3.Literal.litArrOfStrings| |a#169#0#0|))
)))
(assert (forall ((|a#171#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Literal.litArray| |a#171#0#0|)) |##M3.Literal.litArray|)
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |7138|
 :pattern ( (|#M3.Literal.litArray| |a#171#0#0|))
)))
(assert (forall ((|a#175#0#0| T@U) ) (! (= (M3.Literal.arr (|#M3.Literal.litArray| |a#175#0#0|)) |a#175#0#0|)
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |7145|
 :pattern ( (|#M3.Literal.litArray| |a#175#0#0|))
)))
(assert (forall ((x@@13 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@13)) x@@13)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4980|
 :pattern ( ($Box T@@3 x@@13))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) (t1@@1 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@8 (TMap t0@@4 t1@@1) h@@2) (forall ((bx@@20 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@20) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@20) t1@@1 h@@2) ($IsAllocBox bx@@20 t0@@4 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |5030|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@20))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@20))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |5031|
 :pattern ( ($IsAlloc MapType v@@8 (TMap t0@@4 t1@@1) h@@2))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) ) (! (< (|Seq#Rank| |a#16#0#0|) (DtRank (|#M3.Path.InternalPath| |a#16#0#0| |a#16#1#0| |a#16#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6883|
 :pattern ( (|#M3.Path.InternalPath| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (< (|Seq#Rank| |a#21#2#0|) (DtRank (|#M3.Path.InternalPath| |a#21#0#0| |a#21#1#0| |a#21#2#0|)))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6888|
 :pattern ( (|#M3.Path.InternalPath| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@41| T@U) ) (!  (=> (or (|M3.__default.LocInv__Deps#canCall| |p#0@@41|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |p#0@@41| Tclass.M3.Path))) ($Is SetType (M3.__default.LocInv__Deps |p#0@@41|) (TSet Tclass.M3.Path)))
 :qid |CloudMakeParallelBuildsdfy.637:30|
 :skolemid |5687|
 :pattern ( (M3.__default.LocInv__Deps |p#0@@41|))
))))
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
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) ) (! (< (DtRank |a#41#0#0|) (DtRank (|#M3.WFCertificate.Cert| |a#41#0#0| |a#41#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6929|
 :pattern ( (|#M3.WFCertificate.Cert| |a#41#0#0| |a#41#1#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) ) (! (< (DtRank |a#63#0#0|) (DtRank (|#M3.Statement.stmtVariable| |a#63#0#0| |a#63#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |6976|
 :pattern ( (|#M3.Statement.stmtVariable| |a#63#0#0| |a#63#1#0|))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) ) (! (< (DtRank |a#65#1#0|) (DtRank (|#M3.Statement.stmtVariable| |a#65#0#0| |a#65#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |6978|
 :pattern ( (|#M3.Statement.stmtVariable| |a#65#0#0| |a#65#1#0|))
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
(assert (forall ((|a#199#0#0| T@U) (|a#199#1#0| T@U) ) (! (< (BoxRank |a#199#0#0|) (DtRank (|#M3.Tuple.Pair| |a#199#0#0| |a#199#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7194|
 :pattern ( (|#M3.Tuple.Pair| |a#199#0#0| |a#199#1#0|))
)))
(assert (forall ((|a#201#0#0| T@U) (|a#201#1#0| T@U) ) (! (< (BoxRank |a#201#1#0|) (DtRank (|#M3.Tuple.Pair| |a#201#0#0| |a#201#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7196|
 :pattern ( (|#M3.Tuple.Pair| |a#201#0#0| |a#201#1#0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@42| T@U) (|st#0@@46| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| |p#0@@42| (Lit DatatypeTypeType |st#0@@46|)) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@42| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@46| Tclass.M3.State)) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@46|))) ($Box DatatypeTypeType |p#0@@42|))))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@46|)) (= (M3.__default.GetSt |p#0@@42| (Lit DatatypeTypeType |st#0@@46|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.State.m (Lit DatatypeTypeType |st#0@@46|)))) ($Box DatatypeTypeType |p#0@@42|))))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |6472|
 :pattern ( (M3.__default.GetSt |p#0@@42| (Lit DatatypeTypeType |st#0@@46|)))
))))
(assert (forall (($ly@@26 T@U) (|sts#0@@1| T@U) ) (! (= (M3.__default.Combine ($LS $ly@@26) |sts#0@@1|) (M3.__default.Combine $ly@@26 |sts#0@@1|))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |6517|
 :pattern ( (M3.__default.Combine ($LS $ly@@26) |sts#0@@1|))
)))
(assert (forall ((a@@40 T@U) (b@@37 T@U) ) (! (= (|Set#Union| a@@40 (|Set#Union| a@@40 b@@37)) (|Set#Union| a@@40 b@@37))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |5094|
 :pattern ( (|Set#Union| a@@40 (|Set#Union| a@@40 b@@37)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@27 T@U) (|p#0@@43| T@U) (|cert#0@@11| T@U) (|deps#0@@20| T@U) (|st#0@@47| T@U) ) (!  (=> (or (|M3.__default.CollectDependencies#canCall| |p#0@@43| |cert#0@@11| |deps#0@@20| |st#0@@47|) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |p#0@@43| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@11| Tclass.M3.WFCertificate)) ($Is SetType |deps#0@@20| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |st#0@@47| Tclass.M3.State)) (and (M3.__default.CheckWellFounded ($LS $LZ) |p#0@@43| |cert#0@@11|) (|Set#Equal| |deps#0@@20| (M3.__default.LocInv__Deps |p#0@@43|)))))) ($Is MapType (M3.__default.CollectDependencies $ly@@27 |p#0@@43| |cert#0@@11| |deps#0@@20| |st#0@@47|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :skolemid |6080|
 :pattern ( (M3.__default.CollectDependencies $ly@@27 |p#0@@43| |cert#0@@11| |deps#0@@20| |st#0@@47|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|sts#0@@2| T@U) ) (!  (=> (or (|M3.__default.Compatible#canCall| (Lit SetType |sts#0@@2|)) (and (< 4 $FunctionContextHeight) ($Is SetType |sts#0@@2| (TSet Tclass.M3.State)))) (and (forall ((|st#1@@0| T@U) (|st'#1@@5| T@U) (|p#1@@5| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |st#1@@0| Tclass.M3.State) ($Is DatatypeTypeType |st'#1@@5| Tclass.M3.State)) ($Is DatatypeTypeType |p#1@@5| Tclass.M3.Path)) (=> (|Set#IsMember| (Lit SetType |sts#0@@2|) ($Box DatatypeTypeType |st#1@@0|)) (=> (|Set#IsMember| (Lit SetType |sts#0@@2|) ($Box DatatypeTypeType |st'#1@@5|)) (and (|M3.__default.DomSt#canCall| |st#1@@0|) (=> (|Set#IsMember| (M3.__default.DomSt |st#1@@0|) ($Box DatatypeTypeType |p#1@@5|)) (and (|M3.__default.DomSt#canCall| |st'#1@@5|) (=> (|Set#IsMember| (M3.__default.DomSt |st'#1@@5|) ($Box DatatypeTypeType |p#1@@5|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt |p#1@@5| |st#1@@0|)) (|$IsA#M3.Artifact| (M3.__default.GetSt |p#1@@5| |st'#1@@5|))) (and (|M3.__default.GetSt#canCall| |p#1@@5| |st#1@@0|) (|M3.__default.GetSt#canCall| |p#1@@5| |st'#1@@5|))))))))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |6508|
 :pattern ( (M3.__default.GetSt |p#1@@5| |st'#1@@5|) (M3.__default.GetSt |p#1@@5| |st#1@@0|))
 :pattern ( (M3.__default.GetSt |p#1@@5| |st'#1@@5|) (M3.__default.DomSt |st#1@@0|))
 :pattern ( (M3.__default.GetSt |p#1@@5| |st'#1@@5|) (|Set#IsMember| |sts#0@@2| ($Box DatatypeTypeType |st#1@@0|)))
 :pattern ( (M3.__default.GetSt |p#1@@5| |st#1@@0|) (M3.__default.DomSt |st'#1@@5|))
 :pattern ( (M3.__default.GetSt |p#1@@5| |st#1@@0|) (|Set#IsMember| |sts#0@@2| ($Box DatatypeTypeType |st'#1@@5|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#1@@5|) ($Box DatatypeTypeType |p#1@@5|)) (M3.__default.DomSt |st#1@@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#1@@5|) ($Box DatatypeTypeType |p#1@@5|)) (|Set#IsMember| |sts#0@@2| ($Box DatatypeTypeType |st#1@@0|)))
 :pattern ( (M3.__default.DomSt |st'#1@@5|) (|Set#IsMember| (M3.__default.DomSt |st#1@@0|) ($Box DatatypeTypeType |p#1@@5|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#1@@0|) ($Box DatatypeTypeType |p#1@@5|)) (|Set#IsMember| |sts#0@@2| ($Box DatatypeTypeType |st'#1@@5|)))
)) (= (M3.__default.Compatible (Lit SetType |sts#0@@2|)) (forall ((|st#1@@1| T@U) (|st'#1@@6| T@U) (|p#1@@6| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |st#1@@1| Tclass.M3.State) ($Is DatatypeTypeType |st'#1@@6| Tclass.M3.State)) ($Is DatatypeTypeType |p#1@@6| Tclass.M3.Path)) (=> (and (and (and (|Set#IsMember| (Lit SetType |sts#0@@2|) ($Box DatatypeTypeType |st#1@@1|)) (|Set#IsMember| (Lit SetType |sts#0@@2|) ($Box DatatypeTypeType |st'#1@@6|))) (|Set#IsMember| (M3.__default.DomSt |st#1@@1|) ($Box DatatypeTypeType |p#1@@6|))) (|Set#IsMember| (M3.__default.DomSt |st'#1@@6|) ($Box DatatypeTypeType |p#1@@6|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#1@@6| |st#1@@1|) (M3.__default.GetSt |p#1@@6| |st'#1@@6|))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |6507|
 :pattern ( (M3.__default.GetSt |p#1@@6| |st'#1@@6|) (M3.__default.GetSt |p#1@@6| |st#1@@1|))
 :pattern ( (M3.__default.GetSt |p#1@@6| |st'#1@@6|) (M3.__default.DomSt |st#1@@1|))
 :pattern ( (M3.__default.GetSt |p#1@@6| |st'#1@@6|) (|Set#IsMember| |sts#0@@2| ($Box DatatypeTypeType |st#1@@1|)))
 :pattern ( (M3.__default.GetSt |p#1@@6| |st#1@@1|) (M3.__default.DomSt |st'#1@@6|))
 :pattern ( (M3.__default.GetSt |p#1@@6| |st#1@@1|) (|Set#IsMember| |sts#0@@2| ($Box DatatypeTypeType |st'#1@@6|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#1@@6|) ($Box DatatypeTypeType |p#1@@6|)) (M3.__default.DomSt |st#1@@1|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#1@@6|) ($Box DatatypeTypeType |p#1@@6|)) (|Set#IsMember| |sts#0@@2| ($Box DatatypeTypeType |st#1@@1|)))
 :pattern ( (M3.__default.DomSt |st'#1@@6|) (|Set#IsMember| (M3.__default.DomSt |st#1@@1|) ($Box DatatypeTypeType |p#1@@6|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#1@@1|) ($Box DatatypeTypeType |p#1@@6|)) (|Set#IsMember| |sts#0@@2| ($Box DatatypeTypeType |st'#1@@6|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.30:30|
 :weight 3
 :skolemid |6509|
 :pattern ( (M3.__default.Compatible (Lit SetType |sts#0@@2|)))
))))
(assert  (=> (<= 10 $FunctionContextHeight) (forall ((|prog#0@@1| T@U) (|st#0@@48| T@U) ) (!  (=> (or (|M3.__default.build#canCall| |prog#0@@1| |st#0@@48|) (and (< 10 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prog#0@@1| Tclass.M3.Program) ($Is DatatypeTypeType |st#0@@48| Tclass.M3.State)) (M3.__default.Legal (M3.Program.stmts |prog#0@@1|))))) (and (and (and (M3.Program.Program_q |prog#0@@1|) |M3.__default.EmptyEnv#canCall|) (|M3.__default.do#canCall| (M3.Program.stmts |prog#0@@1|) |st#0@@48| (Lit DatatypeTypeType M3.__default.EmptyEnv))) (= (M3.__default.build |prog#0@@1| |st#0@@48|) (M3.__default.do ($LS $LZ) (M3.Program.stmts |prog#0@@1|) |st#0@@48| (Lit DatatypeTypeType M3.__default.EmptyEnv)))))
 :qid |CloudMakeParallelBuildsdfy.170:24|
 :skolemid |6672|
 :pattern ( (M3.__default.build |prog#0@@1| |st#0@@48|))
))))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |5240|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((|a#2#0#0@@1| Int) ) (! (= ($Is DatatypeTypeType (|#M3.Artifact.ArtifactCons| |a#2#0#0@@1|) Tclass.M3.Artifact) ($Is intType (int_2_U |a#2#0#0@@1|) TInt))
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6850|
 :pattern ( ($Is DatatypeTypeType (|#M3.Artifact.ArtifactCons| |a#2#0#0@@1|) Tclass.M3.Artifact))
)))
(assert (forall ((|a#143#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#M3.Literal.litNumber| |a#143#0#0|) Tclass.M3.Literal) ($Is intType (int_2_U |a#143#0#0|) TInt))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |7097|
 :pattern ( ($Is DatatypeTypeType (|#M3.Literal.litNumber| |a#143#0#0|) Tclass.M3.Literal))
)))
(assert (forall (($ly@@28 T@U) (|p#0@@44| T@U) (|cert#0@@12| T@U) (|st#0@@49| T@U) ) (! (= (M3.__default.OracleWF ($LS $ly@@28) |p#0@@44| |cert#0@@12| |st#0@@49|) (M3.__default.OracleWF $ly@@28 |p#0@@44| |cert#0@@12| |st#0@@49|))
 :qid |CloudMakeParallelBuildsdfy.653:18|
 :skolemid |6058|
 :pattern ( (M3.__default.OracleWF ($LS $ly@@28) |p#0@@44| |cert#0@@12| |st#0@@49|))
)))
(assert (forall (($ly@@29 T@U) (|stmts#0@@5| T@U) (|st#0@@50| T@U) (|env#0@@19| T@U) ) (! (= (M3.__default.do ($LS $ly@@29) |stmts#0@@5| |st#0@@50| |env#0@@19|) (M3.__default.do $ly@@29 |stmts#0@@5| |st#0@@50| |env#0@@19|))
 :qid |CloudMakeParallelBuildsdfy.177:18|
 :skolemid |6679|
 :pattern ( (M3.__default.do ($LS $ly@@29) |stmts#0@@5| |st#0@@50| |env#0@@19|))
)))
(assert (forall (($ly@@30 T@U) (|expr#0@@7| T@U) (|st#0@@51| T@U) (|env#0@@20| T@U) ) (! (= (M3.__default.eval ($LS $ly@@30) |expr#0@@7| |st#0@@51| |env#0@@20|) (M3.__default.eval $ly@@30 |expr#0@@7| |st#0@@51| |env#0@@20|))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :skolemid |6698|
 :pattern ( (M3.__default.eval ($LS $ly@@30) |expr#0@@7| |st#0@@51| |env#0@@20|))
)))
(assert  (=> |$let#10$canCall| (and ($Is SetType |$let#10_deps| (TSet Tclass.M3.Path)) (U_2_bool (Lit boolType (bool_2_U true))))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@15 T@U) (|cmd#0@@17| T@U) (|deps#0@@21| T@U) (|exp#0@@6| T@U) ) (!  (=> (or (|M3.__default.RunTool#canCall| |cmd#0@@17| |deps#0@@21| |exp#0@@6|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@15) ($Is SeqType |cmd#0@@17| (TSeq TChar))) ($Is MapType |deps#0@@21| (TMap Tclass.M3.Path Tclass.M3.Artifact))) ($Is SeqType |exp#0@@6| (TSeq TChar))))) (and |$let#0$canCall| (= (M3.__default.RunTool |cmd#0@@17| |deps#0@@21| |exp#0@@6|) (let ((|a#0@@3| |$let#0_a|))
|a#0@@3|))))
 :qid |CloudMakeParallelBuildsdfy.773:18|
 :skolemid |5673|
 :pattern ( (M3.__default.RunTool |cmd#0@@17| |deps#0@@21| |exp#0@@6|) ($IsGoodHeap $Heap@@15))
))))
(assert (forall ((bx@@21 T@U) (s@@17 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@21 (TMap s@@17 t@@12)) (and (= ($Box MapType ($Unbox MapType bx@@21)) bx@@21) ($Is MapType ($Unbox MapType bx@@21) (TMap s@@17 t@@12))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |4991|
 :pattern ( ($IsBox bx@@21 (TMap s@@17 t@@12)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@22)) bx@@22) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@22) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |5410|
 :pattern ( ($IsBox bx@@22 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((M3.Tuple$A@@4 T@U) (M3.Tuple$B@@4 T@U) (bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 (Tclass.M3.Tuple M3.Tuple$A@@4 M3.Tuple$B@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@23)) bx@@23) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@23) (Tclass.M3.Tuple M3.Tuple$A@@4 M3.Tuple$B@@4))))
 :qid |unknown.0:0|
 :skolemid |5818|
 :pattern ( ($IsBox bx@@23 (Tclass.M3.Tuple M3.Tuple$A@@4 M3.Tuple$B@@4)))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (< (|Seq#Rank| |a#28#0#0|) (DtRank (|#M3.Path.ExternalPath| |a#28#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6898|
 :pattern ( (|#M3.Path.ExternalPath| |a#28#0#0|))
)))
(assert (forall ((|a#57#0#0| T@U) ) (! (< (|Seq#Rank| |a#57#0#0|) (DtRank (|#M3.Program.Program| |a#57#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |6961|
 :pattern ( (|#M3.Program.Program| |a#57#0#0|))
)))
(assert (forall ((|a#71#0#0| T@U) ) (! (< (DtRank |a#71#0#0|) (DtRank (|#M3.Statement.stmtReturn| |a#71#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |6987|
 :pattern ( (|#M3.Statement.stmtReturn| |a#71#0#0|))
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
(assert (forall ((|a#152#0#0| T@U) ) (! (< (|Seq#Rank| |a#152#0#0|) (DtRank (|#M3.Literal.litString| |a#152#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |7110|
 :pattern ( (|#M3.Literal.litString| |a#152#0#0|))
)))
(assert (forall ((|a#158#0#0| T@U) ) (! (< (DtRank |a#158#0#0|) (DtRank (|#M3.Literal.litPrimitive| |a#158#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |7119|
 :pattern ( (|#M3.Literal.litPrimitive| |a#158#0#0|))
)))
(assert (forall ((|a#177#0#0| T@U) ) (! (< (|Seq#Rank| |a#177#0#0|) (DtRank (|#M3.Literal.litArray| |a#177#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |7147|
 :pattern ( (|#M3.Literal.litArray| |a#177#0#0|))
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
(assert (forall ((|l#0@@3| T@U) (|l#1@@2| T@U) (|l#2@@1| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@3| |l#1@@2| |l#2@@1| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@3|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@2| $o) |l#2@@1|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7206|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@3| |l#1@@2| |l#2@@1| |l#3|) $o $f))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall ((|prim#0@@4| T@U) (|args#0@@5| T@U) (|st#0@@52| T@U) ) (!  (=> (or (|M3.__default.ValidArgs#canCall| (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@5|) |st#0@@52|) (and (< 7 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |prim#0@@4| Tclass.M3.Primitive) ($Is SeqType |args#0@@5| (TSeq Tclass.M3.Expression))) ($Is DatatypeTypeType |st#0@@52| Tclass.M3.State)) (and (=> (M3.Primitive.primExec_q (Lit DatatypeTypeType |prim#0@@4|)) (= (|Seq#Length| (Lit SeqType |args#0@@5|)) (LitInt 3))) (=> (M3.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)) (= (|Seq#Length| (Lit SeqType |args#0@@5|)) (LitInt 1))))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)))))) (let ((|exps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 2)))))
(let ((|deps#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 1)))))
(let ((|cmd#3| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0)))))
 (=> (M3.Expression.exprLiteral_q |cmd#3|) (=> (M3.Literal.litString_q (M3.Expression.lit |cmd#3|)) (=> (M3.Expression.exprLiteral_q |deps#3|) (=> (M3.Literal.litArrOfPaths_q (M3.Expression.lit |deps#3|)) (=> (M3.Expression.exprLiteral_q |exps#3|) (=> (M3.Literal.litArrOfStrings_q (M3.Expression.lit |exps#3|)) (and (|M3.__default.DomSt#canCall| |st#0@@52|) (=> (|Set#Subset| (M3.Literal.paths (M3.Expression.lit |deps#3|)) (M3.__default.DomSt |st#0@@52|)) (|M3.__default.Pre#canCall| (M3.Literal.str (M3.Expression.lit |cmd#3|)) (M3.Literal.paths (M3.Expression.lit |deps#3|)) (M3.Literal.strs (M3.Expression.lit |exps#3|)) |st#0@@52|))))))))))))) (= (M3.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@5|) |st#0@@52|) (ite (M3.Primitive.primCreatePath_q (Lit DatatypeTypeType |prim#0@@4|)) false (let ((|exps#2| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 2)))))
(let ((|deps#2@@1| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 1)))))
(let ((|cmd#2@@1| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |args#0@@5|) (LitInt 0)))))
 (and (and (and (and (and (and (and (M3.Expression.exprLiteral_q |cmd#2@@1|) (M3.Literal.litString_q (M3.Expression.lit |cmd#2@@1|))) (M3.Expression.exprLiteral_q |deps#2@@1|)) (M3.Literal.litArrOfPaths_q (M3.Expression.lit |deps#2@@1|))) (M3.Expression.exprLiteral_q |exps#2|)) (M3.Literal.litArrOfStrings_q (M3.Expression.lit |exps#2|))) (|Set#Subset| (M3.Literal.paths (M3.Expression.lit |deps#2@@1|)) (M3.__default.DomSt |st#0@@52|))) (M3.__default.Pre (M3.Literal.str (M3.Expression.lit |cmd#2@@1|)) (M3.Literal.paths (M3.Expression.lit |deps#2@@1|)) (M3.Literal.strs (M3.Expression.lit |exps#2|)) |st#0@@52|)))))))))
 :qid |CloudMakeParallelBuildsdfy.289:29|
 :weight 3
 :skolemid |6748|
 :pattern ( (M3.__default.ValidArgs (Lit DatatypeTypeType |prim#0@@4|) (Lit SeqType |args#0@@5|) |st#0@@52|))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($ly@@31 T@U) (|context#0@@3| T@U) (|args#0@@6| T@U) (|stOrig#0@@3| T@U) (|env#0@@21| T@U) ) (!  (=> (or (|M3.__default.evalArgs#canCall| |context#0@@3| |args#0@@6| |stOrig#0@@3| |env#0@@21|) (and (< 8 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |context#0@@3| Tclass.M3.Expression) ($Is SeqType |args#0@@6| (TSeq Tclass.M3.Expression))) ($Is DatatypeTypeType |stOrig#0@@3| Tclass.M3.State)) ($Is DatatypeTypeType |env#0@@21| Tclass.M3.Env)) (and (M3.__default.ValidEnv |env#0@@21|) (forall ((|arg#1| T@U) ) (!  (=> ($Is DatatypeTypeType |arg#1| Tclass.M3.Expression) (=> (|Seq#Contains| |args#0@@6| ($Box DatatypeTypeType |arg#1|)) (< (DtRank |arg#1|) (DtRank |context#0@@3|))))
 :qid |CloudMakeParallelBuildsdfy.271:14|
 :skolemid |6728|
 :pattern ( (|Seq#Contains| |args#0@@6| ($Box DatatypeTypeType |arg#1|)))
)))))) (and (=> (not (|Seq#Equal| |args#0@@6| |Seq#Empty|)) (and (|M3.__default.eval#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@6| (LitInt 0))) |stOrig#0@@3| |env#0@@21|) (let ((|r#0| (M3.__default.eval $ly@@31 ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@6| (LitInt 0))) |stOrig#0@@3| |env#0@@21|)))
 (and (|M3.__default.evalArgs#canCall| |context#0@@3| (|Seq#Drop| |args#0@@6| (LitInt 1)) |stOrig#0@@3| |env#0@@21|) (let ((|rr#0| (M3.__default.evalArgs $ly@@31 |context#0@@3| (|Seq#Drop| |args#0@@6| (LitInt 1)) |stOrig#0@@3| |env#0@@21|)))
 (and (and (M3.Tuple.Pair_q |r#0|) (M3.Tuple.Pair_q |rr#0|)) (and (M3.Tuple.Pair_q |r#0|) (M3.Tuple.Pair_q |rr#0|)))))))) (= (M3.__default.evalArgs ($LS $ly@@31) |context#0@@3| |args#0@@6| |stOrig#0@@3| |env#0@@21|) (ite (|Seq#Equal| |args#0@@6| |Seq#Empty|) (|#M3.Tuple.Pair| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box SetType (Lit SetType |Set#Empty|))) (let ((|r#0@@0| (M3.__default.eval $ly@@31 ($Unbox DatatypeTypeType (|Seq#Index| |args#0@@6| (LitInt 0))) |stOrig#0@@3| |env#0@@21|)))
(let ((|rr#0@@0| (M3.__default.evalArgs $ly@@31 |context#0@@3| (|Seq#Drop| |args#0@@6| (LitInt 1)) |stOrig#0@@3| |env#0@@21|)))
(|#M3.Tuple.Pair| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| (M3.Tuple.fst |r#0@@0|)) ($Unbox SeqType (M3.Tuple.fst |rr#0@@0|)))) ($Box SetType (|Set#Union| (|Set#UnionOne| |Set#Empty| (M3.Tuple.snd |r#0@@0|)) ($Unbox SetType (M3.Tuple.snd |rr#0@@0|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.268:18|
 :skolemid |6730|
 :pattern ( (M3.__default.evalArgs ($LS $ly@@31) |context#0@@3| |args#0@@6| |stOrig#0@@3| |env#0@@21|))
))))
(assert (forall ((s@@18 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@18 val@@4)) s@@18) (= (|Seq#Build_inv1| (|Seq#Build| s@@18 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |5178|
 :pattern ( (|Seq#Build| s@@18 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |5407|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((M3.Tuple$A@@5 T@U) (M3.Tuple$B@@5 T@U) ) (!  (and (= (Tag (Tclass.M3.Tuple M3.Tuple$A@@5 M3.Tuple$B@@5)) Tagclass.M3.Tuple) (= (TagFamily (Tclass.M3.Tuple M3.Tuple$A@@5 M3.Tuple$B@@5)) tytagFamily$Tuple))
 :qid |unknown.0:0|
 :skolemid |5815|
 :pattern ( (Tclass.M3.Tuple M3.Tuple$A@@5 M3.Tuple$B@@5))
)))
(assert (forall ((d@@85 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (M3.Artifact.ArtifactCons_q d@@85) ($IsAlloc DatatypeTypeType d@@85 Tclass.M3.Artifact $h@@3))) ($IsAlloc intType (int_2_U (M3.Artifact._h11 d@@85)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |6851|
 :pattern ( ($IsAlloc intType (int_2_U (M3.Artifact._h11 d@@85)) TInt $h@@3))
)))
(assert (forall ((d@@86 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (M3.Literal.litNumber_q d@@86) ($IsAlloc DatatypeTypeType d@@86 Tclass.M3.Literal $h@@4))) ($IsAlloc intType (int_2_U (M3.Literal.num d@@86)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |7098|
 :pattern ( ($IsAlloc intType (int_2_U (M3.Literal.num d@@86)) TInt $h@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@16 T@U) (|p#0@@45| T@U) ) (!  (=> (or (|M3.__default.LocInv__Cmd#canCall| (Lit DatatypeTypeType |p#0@@45|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@16) ($Is DatatypeTypeType |p#0@@45| Tclass.M3.Path)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@45|)))))) |$let#3$canCall|) (= (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@45|)) (ite (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@45|)) (let ((|cmd#3@@0| (Lit SeqType (M3.Path.cmd (Lit DatatypeTypeType |p#0@@45|)))))
|cmd#3@@0|) (let ((|cmd#4@@0| |$let#3_cmd|))
|cmd#4@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.797:18|
 :weight 3
 :skolemid |5686|
 :pattern ( (M3.__default.LocInv__Cmd (Lit DatatypeTypeType |p#0@@45|)) ($IsGoodHeap $Heap@@16))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@17 T@U) (|p#0@@46| T@U) ) (!  (=> (or (|M3.__default.LocInv__Deps#canCall| (Lit DatatypeTypeType |p#0@@46|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@17) ($Is DatatypeTypeType |p#0@@46| Tclass.M3.Path)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@46|)))))) |$let#10$canCall|) (= (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@46|)) (ite (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@46|)) (let ((|deps#3@@0| (Lit SetType (M3.Path.deps (Lit DatatypeTypeType |p#0@@46|)))))
|deps#3@@0|) (let ((|deps#4@@0| |$let#10_deps|))
|deps#4@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.803:18|
 :weight 3
 :skolemid |5690|
 :pattern ( (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@46|)) ($IsGoodHeap $Heap@@17))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@18 T@U) (|p#0@@47| T@U) ) (!  (=> (or (|M3.__default.LocInv__Exp#canCall| (Lit DatatypeTypeType |p#0@@47|)) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@18) ($Is DatatypeTypeType |p#0@@47| Tclass.M3.Path)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@47|)))))) |$let#17$canCall|) (= (M3.__default.LocInv__Exp (Lit DatatypeTypeType |p#0@@47|)) (ite (M3.Path.InternalPath_q (Lit DatatypeTypeType |p#0@@47|)) (let ((|exp#3| (Lit SeqType (M3.Path.exp (Lit DatatypeTypeType |p#0@@47|)))))
|exp#3|) (let ((|exp#4| |$let#17_exp|))
|exp#4|)))))
 :qid |CloudMakeParallelBuildsdfy.809:18|
 :weight 3
 :skolemid |5694|
 :pattern ( (M3.__default.LocInv__Exp (Lit DatatypeTypeType |p#0@@47|)) ($IsGoodHeap $Heap@@18))
))))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($ly@@32 T@U) (|expr#0@@8| T@U) (|st#0@@53| T@U) (|env#0@@22| T@U) ) (!  (=> (or (|M3.__default.eval#canCall| (Lit DatatypeTypeType |expr#0@@8|) |st#0@@53| |env#0@@22|) (and (< 8 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |expr#0@@8| Tclass.M3.Expression) ($Is DatatypeTypeType |st#0@@53| Tclass.M3.State)) ($Is DatatypeTypeType |env#0@@22| Tclass.M3.Env)) (M3.__default.ValidEnv |env#0@@22|)))) (and (and (|M3.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@8|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.__default.Value (Lit DatatypeTypeType |expr#0@@8|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@8|))))) (|M3.__default.GetEnv#canCall| (Lit DatatypeTypeType (M3.Expression.id (Lit DatatypeTypeType |expr#0@@8|))) |env#0@@22|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@8|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@8|))))) (and (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.cond (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|) (let ((|st'#4| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.cond (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|cond'#1| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.cond (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
 (and (and (=> (M3.Expression.exprLiteral_q |cond'#1|) (|$IsA#M3.Literal| (M3.Expression.lit |cond'#1|))) (=> (and (M3.Expression.exprLiteral_q |cond'#1|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#1|) |#M3.Literal.litTrue|)) (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@8|))) |st'#4| |env#0@@22|))) (=> (not (and (M3.Expression.exprLiteral_q |cond'#1|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#1|) |#M3.Literal.litTrue|))) (and (=> (M3.Expression.exprLiteral_q |cond'#1|) (|$IsA#M3.Literal| (M3.Expression.lit |cond'#1|))) (=> (and (M3.Expression.exprLiteral_q |cond'#1|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#1|) |#M3.Literal.litFalse|)) (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@8|))) |st'#4| |env#0@@22|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@8|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@8|))))) (and (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.conj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|) (let ((|st'#5| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.conj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|conj0'#1| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.conj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
 (and (and (=> (M3.Expression.exprLiteral_q |conj0'#1|) (|$IsA#M3.Literal| (M3.Expression.lit |conj0'#1|))) (=> (and (M3.Expression.exprLiteral_q |conj0'#1|) (|M3.Literal#Equal| (M3.Expression.lit |conj0'#1|) |#M3.Literal.litTrue|)) (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.conj1 (Lit DatatypeTypeType |expr#0@@8|))) |st'#5| |env#0@@22|))) (=> (not (and (M3.Expression.exprLiteral_q |conj0'#1|) (|M3.Literal#Equal| (M3.Expression.lit |conj0'#1|) |#M3.Literal.litTrue|))) (=> (M3.Expression.exprLiteral_q |conj0'#1|) (|$IsA#M3.Literal| (M3.Expression.lit |conj0'#1|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@8|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@8|))))) (and (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.disj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|) (let ((|st'#6| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.disj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|disj0'#1| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.disj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
 (and (=> (M3.Expression.exprLiteral_q |disj0'#1|) (|$IsA#M3.Literal| (M3.Expression.lit |disj0'#1|))) (=> (not (and (M3.Expression.exprLiteral_q |disj0'#1|) (|M3.Literal#Equal| (M3.Expression.lit |disj0'#1|) |#M3.Literal.litTrue|))) (and (=> (M3.Expression.exprLiteral_q |disj0'#1|) (|$IsA#M3.Literal| (M3.Expression.lit |disj0'#1|))) (=> (and (M3.Expression.exprLiteral_q |disj0'#1|) (|M3.Literal#Equal| (M3.Expression.lit |disj0'#1|) |#M3.Literal.litFalse|)) (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.disj1 (Lit DatatypeTypeType |expr#0@@8|))) |st'#6| |env#0@@22|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@8|)))))) (=> (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@8|))))) (and (|M3.__default.eval#canCall| (Lit DatatypeTypeType (M3.Expression.fun (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|) (let ((|st'#7| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.fun (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|fun'#1| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.fun (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
 (and (|M3.__default.evalArgs#canCall| (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType (M3.Expression.args (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|) (let ((|sts'#1| ($Unbox SetType (M3.Tuple.snd (M3.__default.evalArgs ($LS $ly@@32) (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType (M3.Expression.args (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|args'#1| ($Unbox SeqType (M3.Tuple.fst (M3.__default.evalArgs ($LS $ly@@32) (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType (M3.Expression.args (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|sts''#1| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#7|)) |sts'#1|)))
 (and (|M3.__default.Compatible#canCall| |sts''#1|) (=> (M3.__default.Compatible |sts''#1|) (and (|M3.__default.Combine#canCall| |sts''#1|) (let ((|stCombined#1| (M3.__default.Combine ($LS $LZ) |sts''#1|)))
 (=> (and (M3.Expression.exprLiteral_q |fun'#1|) (M3.Literal.litPrimitive_q (M3.Expression.lit |fun'#1|))) (=> (M3.Primitive.primExec_q (M3.Literal.prim (M3.Expression.lit |fun'#1|))) (and (and (|M3.__default.Arity#canCall| (Lit DatatypeTypeType |#M3.Primitive.primExec|)) (=> (= (|Seq#Length| |args'#1|) (LitInt (M3.__default.Arity (Lit DatatypeTypeType |#M3.Primitive.primExec|)))) (|M3.__default.ValidArgs#canCall| (Lit DatatypeTypeType |#M3.Primitive.primExec|) |args'#1| |stCombined#1|))) (=> (and (= (|Seq#Length| |args'#1|) (LitInt (M3.__default.Arity (Lit DatatypeTypeType |#M3.Primitive.primExec|)))) (M3.__default.ValidArgs (Lit DatatypeTypeType |#M3.Primitive.primExec|) |args'#1| |stCombined#1|)) (and (|M3.__default.exec#canCall| (M3.Literal.str (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 0))))) (M3.Literal.paths (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 1))))) (M3.Literal.strs (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 2))))) |stCombined#1|) (let ((|ps#1| (M3.__default.exec (M3.Literal.str (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 0))))) (M3.Literal.paths (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 1))))) (M3.Literal.strs (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1| (LitInt 2))))) |stCombined#1|)))
 (and (M3.Tuple.Pair_q |ps#1|) (M3.Tuple.Pair_q |ps#1|)))))))))))))))))))))))))))))) (= (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType |expr#0@@8|) |st#0@@53| |env#0@@22|) (ite (M3.__default.Value (Lit DatatypeTypeType |expr#0@@8|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType |expr#0@@8|)) ($Box DatatypeTypeType |st#0@@53|)) (ite (M3.Expression.exprIdentifier_q (Lit DatatypeTypeType |expr#0@@8|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (M3.__default.GetEnv (Lit DatatypeTypeType (M3.Expression.id (Lit DatatypeTypeType |expr#0@@8|))) |env#0@@22|)) ($Box DatatypeTypeType |st#0@@53|)) (ite (M3.Expression.exprIf_q (Lit DatatypeTypeType |expr#0@@8|)) (let ((|st'#4@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.cond (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|cond'#1@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.cond (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(ite  (and (M3.Expression.exprLiteral_q |cond'#1@@0|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#1@@0|) |#M3.Literal.litTrue|)) (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.ifTrue (Lit DatatypeTypeType |expr#0@@8|))) |st'#4@@0| |env#0@@22|) (ite  (and (M3.Expression.exprLiteral_q |cond'#1@@0|) (|M3.Literal#Equal| (M3.Expression.lit |cond'#1@@0|) |#M3.Literal.litFalse|)) (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.ifFalse (Lit DatatypeTypeType |expr#0@@8|))) |st'#4@@0| |env#0@@22|) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@53|)))))) (ite (M3.Expression.exprAnd_q (Lit DatatypeTypeType |expr#0@@8|)) (let ((|st'#5@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.conj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|conj0'#1@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.conj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(ite  (and (M3.Expression.exprLiteral_q |conj0'#1@@0|) (|M3.Literal#Equal| (M3.Expression.lit |conj0'#1@@0|) |#M3.Literal.litTrue|)) (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.conj1 (Lit DatatypeTypeType |expr#0@@8|))) |st'#5@@0| |env#0@@22|) (ite  (and (M3.Expression.exprLiteral_q |conj0'#1@@0|) (|M3.Literal#Equal| (M3.Expression.lit |conj0'#1@@0|) |#M3.Literal.litFalse|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprLiteral| (Lit DatatypeTypeType |#M3.Literal.litFalse|)))) ($Box DatatypeTypeType |st'#5@@0|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@53|)))))) (ite (M3.Expression.exprOr_q (Lit DatatypeTypeType |expr#0@@8|)) (let ((|st'#6@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.disj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|disj0'#1@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.disj0 (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(ite  (and (M3.Expression.exprLiteral_q |disj0'#1@@0|) (|M3.Literal#Equal| (M3.Expression.lit |disj0'#1@@0|) |#M3.Literal.litTrue|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprLiteral| (Lit DatatypeTypeType |#M3.Literal.litTrue|)))) ($Box DatatypeTypeType |st'#6@@0|)) (ite  (and (M3.Expression.exprLiteral_q |disj0'#1@@0|) (|M3.Literal#Equal| (M3.Expression.lit |disj0'#1@@0|) |#M3.Literal.litFalse|)) (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.disj1 (Lit DatatypeTypeType |expr#0@@8|))) |st'#6@@0| |env#0@@22|) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@53|)))))) (ite (M3.Expression.exprInvocation_q (Lit DatatypeTypeType |expr#0@@8|)) (let ((|st'#7@@0| ($Unbox DatatypeTypeType (M3.Tuple.snd (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.fun (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|fun'#1@@0| ($Unbox DatatypeTypeType (M3.Tuple.fst (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType (M3.Expression.fun (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|sts'#1@@0| ($Unbox SetType (M3.Tuple.snd (M3.__default.evalArgs ($LS $ly@@32) (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType (M3.Expression.args (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|args'#1@@0| ($Unbox SeqType (M3.Tuple.fst (M3.__default.evalArgs ($LS $ly@@32) (Lit DatatypeTypeType |expr#0@@8|) (Lit SeqType (M3.Expression.args (Lit DatatypeTypeType |expr#0@@8|))) |st#0@@53| |env#0@@22|)))))
(let ((|sts''#1@@0| (|Set#Union| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st'#7@@0|)) |sts'#1@@0|)))
(ite  (not (M3.__default.Compatible |sts''#1@@0|)) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rCompatibility|)))) ($Box DatatypeTypeType |st#0@@53|)) (let ((|stCombined#1@@0| (M3.__default.Combine ($LS $LZ) |sts''#1@@0|)))
(ite  (and (M3.Expression.exprLiteral_q |fun'#1@@0|) (M3.Literal.litPrimitive_q (M3.Expression.lit |fun'#1@@0|))) (ite (M3.Primitive.primExec_q (M3.Literal.prim (M3.Expression.lit |fun'#1@@0|))) (ite  (and (= (|Seq#Length| |args'#1@@0|) (LitInt (M3.__default.Arity (Lit DatatypeTypeType |#M3.Primitive.primExec|)))) (M3.__default.ValidArgs (Lit DatatypeTypeType |#M3.Primitive.primExec|) |args'#1@@0| |stCombined#1@@0|)) (let ((|ps#1@@0| (M3.__default.exec (M3.Literal.str (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 0))))) (M3.Literal.paths (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 1))))) (M3.Literal.strs (M3.Expression.lit ($Unbox DatatypeTypeType (|Seq#Index| |args'#1@@0| (LitInt 2))))) |stCombined#1@@0|)))
(|#M3.Tuple.Pair| ($Box DatatypeTypeType (|#M3.Expression.exprLiteral| (|#M3.Literal.litArrOfPaths| ($Unbox SetType (M3.Tuple.fst |ps#1@@0|))))) (M3.Tuple.snd |ps#1@@0|))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@53|))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@53|))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@53|)))))))))) (|#M3.Tuple.Pair| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#M3.Expression.exprError| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))) ($Box DatatypeTypeType |st#0@@53|)))))))))))
 :qid |CloudMakeParallelBuildsdfy.202:18|
 :weight 3
 :skolemid |6703|
 :pattern ( (M3.__default.eval ($LS $ly@@32) (Lit DatatypeTypeType |expr#0@@8|) |st#0@@53| |env#0@@22|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@33 T@U) (|p#0@@48| T@U) (|cert#0@@13| T@U) ) (!  (=> (or (|M3.__default.CheckWellFounded#canCall| |p#0@@48| (Lit DatatypeTypeType |cert#0@@13|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@48| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@13| Tclass.M3.WFCertificate)))) (and (and (and (and (|$IsA#M3.Path| (Lit DatatypeTypeType (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@13|)))) (|$IsA#M3.Path| |p#0@@48|)) (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@13|))) (=> (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@13|)) |p#0@@48|) (and (forall ((|d#1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1| Tclass.M3.Path) (and (|M3.__default.LocInv__Deps#canCall| |p#0@@48|) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@48|) ($Box DatatypeTypeType |d#1|)) (forall ((|c#2| T@U) ) (!  (=> ($Is DatatypeTypeType |c#2| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@13|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@13|))) ($Box DatatypeTypeType |c#2|)) (and (and (|$IsA#M3.Path| (M3.WFCertificate.p |c#2|)) (|$IsA#M3.Path| |d#1|)) (M3.WFCertificate.Cert_q |c#2|)))))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5785|
 :pattern ( (M3.WFCertificate.p |c#2|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#2|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5786|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@48|) ($Box DatatypeTypeType |d#1|)))
)) (=> (forall ((|d#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@0| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@48|) ($Box DatatypeTypeType |d#1@@0|)) (exists ((|c#2@@0| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@0| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@13|))) ($Box DatatypeTypeType |c#2@@0|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#2@@0|) |d#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5788|
 :pattern ( (M3.WFCertificate.p |c#2@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#2@@0|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5789|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@48|) ($Box DatatypeTypeType |d#1@@0|)))
)) (forall ((|c#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@0| Tclass.M3.WFCertificate) (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@13|)) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@13|))) ($Box DatatypeTypeType |c#3@@0|)) (and (M3.WFCertificate.Cert_q |c#3@@0|) (|M3.__default.CheckWellFounded#canCall| (M3.WFCertificate.p |c#3@@0|) |c#3@@0|)))))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5787|
 :pattern ( (M3.WFCertificate.p |c#3@@0|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#3@@0|)))
)))))) (= (M3.__default.CheckWellFounded ($LS $ly@@33) |p#0@@48| (Lit DatatypeTypeType |cert#0@@13|))  (and (and (|M3.Path#Equal| (M3.WFCertificate.p (Lit DatatypeTypeType |cert#0@@13|)) |p#0@@48|) (forall ((|d#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@1| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@48|) ($Box DatatypeTypeType |d#1@@1|)) (exists ((|c#2@@1| T@U) ) (!  (and ($Is DatatypeTypeType |c#2@@1| Tclass.M3.WFCertificate) (and (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@13|))) ($Box DatatypeTypeType |c#2@@1|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#2@@1|) |d#1@@1|)))
 :qid |CloudMakeParallelBuildsdfy.497:49|
 :skolemid |5782|
 :pattern ( (M3.WFCertificate.p |c#2@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#2@@1|)))
))))
 :qid |CloudMakeParallelBuildsdfy.497:13|
 :skolemid |5783|
 :pattern ( (|Set#IsMember| (M3.__default.LocInv__Deps |p#0@@48|) ($Box DatatypeTypeType |d#1@@1|)))
))) (forall ((|c#3@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |c#3@@1| Tclass.M3.WFCertificate) (=> (|Set#IsMember| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@13|))) ($Box DatatypeTypeType |c#3@@1|)) (M3.__default.CheckWellFounded ($LS $ly@@33) (M3.WFCertificate.p |c#3@@1|) |c#3@@1|)))
 :qid |CloudMakeParallelBuildsdfy.498:13|
 :skolemid |5784|
 :pattern ( (M3.WFCertificate.p |c#3@@1|))
 :pattern ( (|Set#IsMember| (M3.WFCertificate.certs |cert#0@@13|) ($Box DatatypeTypeType |c#3@@1|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.493:19|
 :weight 3
 :skolemid |5790|
 :pattern ( (M3.__default.CheckWellFounded ($LS $ly@@33) |p#0@@48| (Lit DatatypeTypeType |cert#0@@13|)))
))))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |5228|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |5229|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@9 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@9)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |5230|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |5231|
 :pattern ( (|Map#Values| m@@6))
)))
(assert  (=> (<= 10 $FunctionContextHeight) (forall ((|prog#0@@2| T@U) (|st#0@@54| T@U) ) (!  (=> (or (|M3.__default.build#canCall| (Lit DatatypeTypeType |prog#0@@2|) |st#0@@54|) (and (< 10 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |prog#0@@2| Tclass.M3.Program) ($Is DatatypeTypeType |st#0@@54| Tclass.M3.State)) (U_2_bool (Lit boolType (bool_2_U (M3.__default.Legal (Lit SeqType (M3.Program.stmts (Lit DatatypeTypeType |prog#0@@2|)))))))))) (and (and (and (M3.Program.Program_q (Lit DatatypeTypeType |prog#0@@2|)) |M3.__default.EmptyEnv#canCall|) (|M3.__default.do#canCall| (Lit SeqType (M3.Program.stmts (Lit DatatypeTypeType |prog#0@@2|))) |st#0@@54| (Lit DatatypeTypeType M3.__default.EmptyEnv))) (= (M3.__default.build (Lit DatatypeTypeType |prog#0@@2|) |st#0@@54|) (M3.__default.do ($LS $LZ) (Lit SeqType (M3.Program.stmts (Lit DatatypeTypeType |prog#0@@2|))) |st#0@@54| (Lit DatatypeTypeType M3.__default.EmptyEnv)))))
 :qid |CloudMakeParallelBuildsdfy.170:24|
 :weight 3
 :skolemid |6673|
 :pattern ( (M3.__default.build (Lit DatatypeTypeType |prog#0@@2|) |st#0@@54|))
))))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |5239|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@10 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@10) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@10 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |5237|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |5238|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@10))
)))
(assert (forall ((m@@9 T@U) (u@@4 T@U) (|u'| T@U) (v@@11 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@11)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@11)) |u'|) v@@11))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@11)) |u'|) (|Set#IsMember| (|Map#Domain| m@@9) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@11)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@9) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |5245|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@9 u@@4 v@@11)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@9 u@@4 v@@11)) |u'|))
)))
(assert (forall ((d@@87 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@87)) (DtRank d@@87))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |5039|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@87)))
)))
(assert (forall ((s@@19 T@U) (n@@7 Int) (x@@14 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@19 n@@7) x@@14) (exists ((i@@13 Int) ) (!  (and (and (and (<= 0 n@@7) (<= n@@7 i@@13)) (< i@@13 (|Seq#Length| s@@19))) (= (|Seq#Index| s@@19 i@@13) x@@14))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |5192|
 :pattern ( (|Seq#Index| s@@19 i@@13))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |5193|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@19 n@@7) x@@14))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@34 T@U) (|p#0@@49| T@U) (|cert#0@@14| T@U) (|deps#0@@22| T@U) (|st#0@@55| T@U) ) (!  (=> (or (|M3.__default.CollectDependencies#canCall| (Lit DatatypeTypeType |p#0@@49|) (Lit DatatypeTypeType |cert#0@@14|) (Lit SetType |deps#0@@22|) (Lit DatatypeTypeType |st#0@@55|)) (and (< 4 $FunctionContextHeight) (and (and (and (and ($Is DatatypeTypeType |p#0@@49| Tclass.M3.Path) ($Is DatatypeTypeType |cert#0@@14| Tclass.M3.WFCertificate)) ($Is SetType |deps#0@@22| (TSet Tclass.M3.Path))) ($Is DatatypeTypeType |st#0@@55| Tclass.M3.State)) (and (M3.__default.CheckWellFounded ($LS $LZ) (Lit DatatypeTypeType |p#0@@49|) (Lit DatatypeTypeType |cert#0@@14|)) (|Set#Equal| |deps#0@@22| (M3.__default.LocInv__Deps (Lit DatatypeTypeType |p#0@@49|))))))) (and (forall ((|d#0@@7| T@U) ) (!  (=> ($Is DatatypeTypeType |d#0@@7| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType |deps#0@@22|) ($Box DatatypeTypeType |d#0@@7|)) (and (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@55|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@55|))) ($Box DatatypeTypeType |d#0@@7|)) (|M3.__default.GetSt#canCall| |d#0@@7| (Lit DatatypeTypeType |st#0@@55|)))) (=> (not (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@55|))) ($Box DatatypeTypeType |d#0@@7|))) (and (and (M3.WFCertificate.Cert_q (Lit DatatypeTypeType |cert#0@@14|)) (|M3.__default.FindCert#canCall| |d#0@@7| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@14|))))) (|M3.__default.OracleWF#canCall| |d#0@@7| (M3.__default.FindCert |d#0@@7| (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@14|)))) (Lit DatatypeTypeType |st#0@@55|)))))))
 :qid |CloudMakeParallelBuildsdfy.664:9|
 :skolemid |6086|
 :pattern ( (M3.__default.FindCert |d#0@@7| (M3.WFCertificate.certs |cert#0@@14|)))
 :pattern ( (M3.__default.GetSt |d#0@@7| |st#0@@55|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@55|) ($Box DatatypeTypeType |d#0@@7|)))
 :pattern ( (|Set#IsMember| |deps#0@@22| ($Box DatatypeTypeType |d#0@@7|)))
)) (= (M3.__default.CollectDependencies ($LS $ly@@34) (Lit DatatypeTypeType |p#0@@49|) (Lit DatatypeTypeType |cert#0@@14|) (Lit SetType |deps#0@@22|) (Lit DatatypeTypeType |st#0@@55|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (Lit SetType |deps#0@@22|))) (|lambda#26| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@55|))) (Lit DatatypeTypeType |st#0@@55|) ($LS $ly@@34) (Lit SetType (M3.WFCertificate.certs (Lit DatatypeTypeType |cert#0@@14|))) (Lit DatatypeTypeType |st#0@@55|)) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.660:18|
 :weight 3
 :skolemid |6087|
 :pattern ( (M3.__default.CollectDependencies ($LS $ly@@34) (Lit DatatypeTypeType |p#0@@49|) (Lit DatatypeTypeType |cert#0@@14|) (Lit SetType |deps#0@@22|) (Lit DatatypeTypeType |st#0@@55|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@19 T@U) (|d#0@@8| T@U) (|certs#0@@2| T@U) ) (!  (=> (or (|M3.__default.FindCert#canCall| |d#0@@8| |certs#0@@2|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@19) ($Is DatatypeTypeType |d#0@@8| Tclass.M3.Path)) ($Is SetType |certs#0@@2| (TSet Tclass.M3.WFCertificate))) (exists ((|c#1@@2| T@U) ) (!  (and ($Is DatatypeTypeType |c#1@@2| Tclass.M3.WFCertificate) (and (|Set#IsMember| |certs#0@@2| ($Box DatatypeTypeType |c#1@@2|)) (|M3.Path#Equal| (M3.WFCertificate.p |c#1@@2|) |d#0@@8|)))
 :qid |CloudMakeParallelBuildsdfy.667:21|
 :skolemid |6107|
 :pattern ( (M3.WFCertificate.p |c#1@@2|))
 :pattern ( (|Set#IsMember| |certs#0@@2| ($Box DatatypeTypeType |c#1@@2|)))
))))) (and (|$let#36$canCall| |certs#0@@2| |d#0@@8|) (= (M3.__default.FindCert |d#0@@8| |certs#0@@2|) (let ((|c#2@@2| (|$let#36_c| |certs#0@@2| |d#0@@8|)))
|c#2@@2|))))
 :qid |CloudMakeParallelBuildsdfy.666:18|
 :skolemid |6110|
 :pattern ( (M3.__default.FindCert |d#0@@8| |certs#0@@2|) ($IsGoodHeap $Heap@@19))
))))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) (d@@88 T@U) ) (!  (=> (|Set#IsMember| |a#18#1#0| ($Box DatatypeTypeType d@@88)) (< (DtRank d@@88) (DtRank (|#M3.Path.InternalPath| |a#18#0#0| |a#18#1#0| |a#18#2#0|))))
 :qid |CloudMakeParallelBuildsdfy.784:18|
 :skolemid |6885|
 :pattern ( (|Set#IsMember| |a#18#1#0| ($Box DatatypeTypeType d@@88)) (|#M3.Path.InternalPath| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((bx@@24 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@24 (TSet t@@13)) (and (= ($Box SetType ($Unbox SetType bx@@24)) bx@@24) ($Is SetType ($Unbox SetType bx@@24) (TSet t@@13))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |4987|
 :pattern ( ($IsBox bx@@24 (TSet t@@13)))
)))
(assert (forall ((bx@@25 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@25 (TSeq t@@14)) (and (= ($Box SeqType ($Unbox SeqType bx@@25)) bx@@25) ($Is SeqType ($Unbox SeqType bx@@25) (TSeq t@@14))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |4990|
 :pattern ( ($IsBox bx@@25 (TSeq t@@14)))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|p#0@@50| T@U) (|st#0@@56| T@U) ) (!  (=> (or (|M3.__default.Oracle#canCall| (Lit DatatypeTypeType |p#0@@50|) (Lit DatatypeTypeType |st#0@@56|)) (and (< 5 $FunctionContextHeight) (and ($Is DatatypeTypeType |p#0@@50| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@56| Tclass.M3.State)))) (and (and (and (|M3.__default.WellFounded#canCall| (Lit DatatypeTypeType |p#0@@50|)) (=> (U_2_bool (Lit boolType (bool_2_U (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@50|))))) (and (|M3.__default.GetCert#canCall| (Lit DatatypeTypeType |p#0@@50|)) (|M3.__default.OracleWF#canCall| (Lit DatatypeTypeType |p#0@@50|) (Lit DatatypeTypeType (M3.__default.GetCert (Lit DatatypeTypeType |p#0@@50|))) (Lit DatatypeTypeType |st#0@@56|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@50|)))))) (|M3.__default.OracleArbitrary#canCall| (Lit DatatypeTypeType |p#0@@50|)))) (= (M3.__default.Oracle (Lit DatatypeTypeType |p#0@@50|) (Lit DatatypeTypeType |st#0@@56|)) (ite (M3.__default.WellFounded (Lit DatatypeTypeType |p#0@@50|)) (M3.__default.OracleWF ($LS $LZ) (Lit DatatypeTypeType |p#0@@50|) (Lit DatatypeTypeType (M3.__default.GetCert (Lit DatatypeTypeType |p#0@@50|))) (Lit DatatypeTypeType |st#0@@56|)) (M3.__default.OracleArbitrary (Lit DatatypeTypeType |p#0@@50|))))))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :weight 3
 :skolemid |6039|
 :pattern ( (M3.__default.Oracle (Lit DatatypeTypeType |p#0@@50|) (Lit DatatypeTypeType |st#0@@56|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|sts#0@@3| T@U) ) (!  (=> (or (|M3.__default.Compatible#canCall| |sts#0@@3|) (and (< 4 $FunctionContextHeight) ($Is SetType |sts#0@@3| (TSet Tclass.M3.State)))) (and (forall ((|st#0@@57| T@U) (|st'#0@@7| T@U) (|p#0@@51| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |st#0@@57| Tclass.M3.State) ($Is DatatypeTypeType |st'#0@@7| Tclass.M3.State)) ($Is DatatypeTypeType |p#0@@51| Tclass.M3.Path)) (=> (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@57|)) (=> (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@7|)) (and (|M3.__default.DomSt#canCall| |st#0@@57|) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@57|) ($Box DatatypeTypeType |p#0@@51|)) (and (|M3.__default.DomSt#canCall| |st'#0@@7|) (=> (|Set#IsMember| (M3.__default.DomSt |st'#0@@7|) ($Box DatatypeTypeType |p#0@@51|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt |p#0@@51| |st#0@@57|)) (|$IsA#M3.Artifact| (M3.__default.GetSt |p#0@@51| |st'#0@@7|))) (and (|M3.__default.GetSt#canCall| |p#0@@51| |st#0@@57|) (|M3.__default.GetSt#canCall| |p#0@@51| |st'#0@@7|))))))))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |6505|
 :pattern ( (M3.__default.GetSt |p#0@@51| |st'#0@@7|) (M3.__default.GetSt |p#0@@51| |st#0@@57|))
 :pattern ( (M3.__default.GetSt |p#0@@51| |st'#0@@7|) (M3.__default.DomSt |st#0@@57|))
 :pattern ( (M3.__default.GetSt |p#0@@51| |st'#0@@7|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@57|)))
 :pattern ( (M3.__default.GetSt |p#0@@51| |st#0@@57|) (M3.__default.DomSt |st'#0@@7|))
 :pattern ( (M3.__default.GetSt |p#0@@51| |st#0@@57|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@7|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#0@@7|) ($Box DatatypeTypeType |p#0@@51|)) (M3.__default.DomSt |st#0@@57|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#0@@7|) ($Box DatatypeTypeType |p#0@@51|)) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@57|)))
 :pattern ( (M3.__default.DomSt |st'#0@@7|) (|Set#IsMember| (M3.__default.DomSt |st#0@@57|) ($Box DatatypeTypeType |p#0@@51|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@57|) ($Box DatatypeTypeType |p#0@@51|)) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@7|)))
)) (= (M3.__default.Compatible |sts#0@@3|) (forall ((|st#0@@58| T@U) (|st'#0@@8| T@U) (|p#0@@52| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |st#0@@58| Tclass.M3.State) ($Is DatatypeTypeType |st'#0@@8| Tclass.M3.State)) ($Is DatatypeTypeType |p#0@@52| Tclass.M3.Path)) (=> (and (and (and (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@58|)) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@8|))) (|Set#IsMember| (M3.__default.DomSt |st#0@@58|) ($Box DatatypeTypeType |p#0@@52|))) (|Set#IsMember| (M3.__default.DomSt |st'#0@@8|) ($Box DatatypeTypeType |p#0@@52|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#0@@52| |st#0@@58|) (M3.__default.GetSt |p#0@@52| |st'#0@@8|))))
 :qid |CloudMakeParallelBuildsdfy.32:12|
 :skolemid |6504|
 :pattern ( (M3.__default.GetSt |p#0@@52| |st'#0@@8|) (M3.__default.GetSt |p#0@@52| |st#0@@58|))
 :pattern ( (M3.__default.GetSt |p#0@@52| |st'#0@@8|) (M3.__default.DomSt |st#0@@58|))
 :pattern ( (M3.__default.GetSt |p#0@@52| |st'#0@@8|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@58|)))
 :pattern ( (M3.__default.GetSt |p#0@@52| |st#0@@58|) (M3.__default.DomSt |st'#0@@8|))
 :pattern ( (M3.__default.GetSt |p#0@@52| |st#0@@58|) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@8|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#0@@8|) ($Box DatatypeTypeType |p#0@@52|)) (M3.__default.DomSt |st#0@@58|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#0@@8|) ($Box DatatypeTypeType |p#0@@52|)) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st#0@@58|)))
 :pattern ( (M3.__default.DomSt |st'#0@@8|) (|Set#IsMember| (M3.__default.DomSt |st#0@@58|) ($Box DatatypeTypeType |p#0@@52|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@58|) ($Box DatatypeTypeType |p#0@@52|)) (|Set#IsMember| |sts#0@@3| ($Box DatatypeTypeType |st'#0@@8|)))
)))))
 :qid |CloudMakeParallelBuildsdfy.30:30|
 :skolemid |6506|
 :pattern ( (M3.__default.Compatible |sts#0@@3|))
))))
(assert (forall ((v@@12 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@12 (TMap t0@@6 t1@@3)) (forall ((bx@@26 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@12) bx@@26) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@26) t1@@3) ($IsBox bx@@26 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |5010|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@26))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@12) bx@@26))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |5011|
 :pattern ( ($Is MapType v@@12 (TMap t0@@6 t1@@3)))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (d@@89 T@U) ) (!  (=> (|Set#IsMember| |a#43#1#0| ($Box DatatypeTypeType d@@89)) (< (DtRank d@@89) (DtRank (|#M3.WFCertificate.Cert| |a#43#0#0| |a#43#1#0|))))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6931|
 :pattern ( (|Set#IsMember| |a#43#1#0| ($Box DatatypeTypeType d@@89)) (|#M3.WFCertificate.Cert| |a#43#0#0| |a#43#1#0|))
)))
(assert (forall ((d@@90 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@90 Tclass.M3.Artifact)) ($IsAlloc DatatypeTypeType d@@90 Tclass.M3.Artifact $h@@5))
 :qid |unknown.0:0|
 :skolemid |6854|
 :pattern ( ($IsAlloc DatatypeTypeType d@@90 Tclass.M3.Artifact $h@@5))
)))
(assert (forall ((d@@91 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@91 Tclass.M3.Identifier)) ($IsAlloc DatatypeTypeType d@@91 Tclass.M3.Identifier $h@@6))
 :qid |unknown.0:0|
 :skolemid |6867|
 :pattern ( ($IsAlloc DatatypeTypeType d@@91 Tclass.M3.Identifier $h@@6))
)))
(assert (forall ((d@@92 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) ($Is DatatypeTypeType d@@92 Tclass.M3.Path)) ($IsAlloc DatatypeTypeType d@@92 Tclass.M3.Path $h@@7))
 :qid |unknown.0:0|
 :skolemid |6899|
 :pattern ( ($IsAlloc DatatypeTypeType d@@92 Tclass.M3.Path $h@@7))
)))
(assert (forall ((d@@93 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) ($Is DatatypeTypeType d@@93 Tclass.M3.Env)) ($IsAlloc DatatypeTypeType d@@93 Tclass.M3.Env $h@@8))
 :qid |unknown.0:0|
 :skolemid |6915|
 :pattern ( ($IsAlloc DatatypeTypeType d@@93 Tclass.M3.Env $h@@8))
)))
(assert (forall ((d@@94 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) ($Is DatatypeTypeType d@@94 Tclass.M3.WFCertificate)) ($IsAlloc DatatypeTypeType d@@94 Tclass.M3.WFCertificate $h@@9))
 :qid |unknown.0:0|
 :skolemid |6932|
 :pattern ( ($IsAlloc DatatypeTypeType d@@94 Tclass.M3.WFCertificate $h@@9))
)))
(assert (forall ((d@@95 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) ($Is DatatypeTypeType d@@95 Tclass.M3.State)) ($IsAlloc DatatypeTypeType d@@95 Tclass.M3.State $h@@10))
 :qid |unknown.0:0|
 :skolemid |6947|
 :pattern ( ($IsAlloc DatatypeTypeType d@@95 Tclass.M3.State $h@@10))
)))
(assert (forall ((d@@96 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) ($Is DatatypeTypeType d@@96 Tclass.M3.Program)) ($IsAlloc DatatypeTypeType d@@96 Tclass.M3.Program $h@@11))
 :qid |unknown.0:0|
 :skolemid |6962|
 :pattern ( ($IsAlloc DatatypeTypeType d@@96 Tclass.M3.Program $h@@11))
)))
(assert (forall ((d@@97 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) ($Is DatatypeTypeType d@@97 Tclass.M3.Statement)) ($IsAlloc DatatypeTypeType d@@97 Tclass.M3.Statement $h@@12))
 :qid |unknown.0:0|
 :skolemid |6988|
 :pattern ( ($IsAlloc DatatypeTypeType d@@97 Tclass.M3.Statement $h@@12))
)))
(assert (forall ((d@@98 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) ($Is DatatypeTypeType d@@98 Tclass.M3.Expression)) ($IsAlloc DatatypeTypeType d@@98 Tclass.M3.Expression $h@@13))
 :qid |unknown.0:0|
 :skolemid |7074|
 :pattern ( ($IsAlloc DatatypeTypeType d@@98 Tclass.M3.Expression $h@@13))
)))
(assert (forall ((d@@99 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) ($Is DatatypeTypeType d@@99 Tclass.M3.Literal)) ($IsAlloc DatatypeTypeType d@@99 Tclass.M3.Literal $h@@14))
 :qid |unknown.0:0|
 :skolemid |7148|
 :pattern ( ($IsAlloc DatatypeTypeType d@@99 Tclass.M3.Literal $h@@14))
)))
(assert (forall ((d@@100 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) ($Is DatatypeTypeType d@@100 Tclass.M3.Primitive)) ($IsAlloc DatatypeTypeType d@@100 Tclass.M3.Primitive $h@@15))
 :qid |unknown.0:0|
 :skolemid |7166|
 :pattern ( ($IsAlloc DatatypeTypeType d@@100 Tclass.M3.Primitive $h@@15))
)))
(assert (forall ((d@@101 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) ($Is DatatypeTypeType d@@101 Tclass.M3.Reason)) ($IsAlloc DatatypeTypeType d@@101 Tclass.M3.Reason $h@@16))
 :qid |unknown.0:0|
 :skolemid |7176|
 :pattern ( ($IsAlloc DatatypeTypeType d@@101 Tclass.M3.Reason $h@@16))
)))
(assert (= (Tag Tclass.M3.State) Tagclass.M3.State))
(assert (= (TagFamily Tclass.M3.State) tytagFamily$State))
(assert (= (Tag Tclass.M3.Path) Tagclass.M3.Path))
(assert (= (TagFamily Tclass.M3.Path) tytagFamily$Path))
(assert (= (Tag Tclass.M3.Artifact) Tagclass.M3.Artifact))
(assert (= (TagFamily Tclass.M3.Artifact) tytagFamily$Artifact))
(assert (= (Tag Tclass.M3.Env) Tagclass.M3.Env))
(assert (= (TagFamily Tclass.M3.Env) tytagFamily$Env))
(assert (= (Tag Tclass.M3.Identifier) Tagclass.M3.Identifier))
(assert (= (TagFamily Tclass.M3.Identifier) tytagFamily$Identifier))
(assert (= (Tag Tclass.M3.Expression) Tagclass.M3.Expression))
(assert (= (TagFamily Tclass.M3.Expression) tytagFamily$Expression))
(assert (= (Tag Tclass.M3.Literal) Tagclass.M3.Literal))
(assert (= (TagFamily Tclass.M3.Literal) tytagFamily$Literal))
(assert (= (Tag Tclass.M3.WFCertificate) Tagclass.M3.WFCertificate))
(assert (= (TagFamily Tclass.M3.WFCertificate) tytagFamily$WFCertificate))
(assert (= (Tag Tclass.M3.Primitive) Tagclass.M3.Primitive))
(assert (= (TagFamily Tclass.M3.Primitive) tytagFamily$Primitive))
(assert (= (Tag Tclass.M3.Program) Tagclass.M3.Program))
(assert (= (TagFamily Tclass.M3.Program) tytagFamily$Program))
(assert (= (Tag Tclass.M3.Statement) Tagclass.M3.Statement))
(assert (= (TagFamily Tclass.M3.Statement) tytagFamily$Statement))
(assert (= (Tag Tclass.M3.Reason) Tagclass.M3.Reason))
(assert (= (TagFamily Tclass.M3.Reason) tytagFamily$Reason))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|expr#0@@9| T@U) ) (!  (=> (or (|M3.__default.Value#canCall| (Lit DatatypeTypeType |expr#0@@9|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |expr#0@@9| Tclass.M3.Expression))) (= (M3.__default.Value (Lit DatatypeTypeType |expr#0@@9|)) (U_2_bool (Lit boolType (bool_2_U (M3.Expression.exprLiteral_q (Lit DatatypeTypeType |expr#0@@9|)))))))
 :qid |CloudMakeParallelBuildsdfy.162:25|
 :weight 3
 :skolemid |6669|
 :pattern ( (M3.__default.Value (Lit DatatypeTypeType |expr#0@@9|)))
))))
(assert (forall ((|l#0@@4| T@U) (|l#1@@3| T@U) (|l#2@@2| T@U) (|l#3@@0| T@U) (|l#4| T@U) (|$w#0@@3| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#26| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@0| |l#4|) |$w#0@@3|) ($Box DatatypeTypeType (ite (|Set#IsMember| |l#0@@4| |$w#0@@3|) (M3.__default.GetSt ($Unbox DatatypeTypeType |$w#0@@3|) |l#1@@3|) (M3.__default.OracleWF |l#2@@2| ($Unbox DatatypeTypeType |$w#0@@3|) (M3.__default.FindCert ($Unbox DatatypeTypeType |$w#0@@3|) |l#3@@0|) |l#4|))))
 :qid |CloudMakeParallelBuildsdfy.664:34|
 :skolemid |7210|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#26| |l#0@@4| |l#1@@3| |l#2@@2| |l#3@@0| |l#4|) |$w#0@@3|))
)))
(assert (forall ((s@@20 T@U) (n@@8 Int) (k@@0 Int) ) (!  (=> (and (and (<= 0 n@@8) (<= n@@8 k@@0)) (< k@@0 (|Seq#Length| s@@20))) (= (|Seq#Index| (|Seq#Drop| s@@20 n@@8) (- k@@0 n@@8)) (|Seq#Index| s@@20 k@@0)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |5203|
 :pattern ( (|Seq#Index| s@@20 k@@0) (|Seq#Drop| s@@20 n@@8))
)))
(assert (= |#M3.Literal.litTrue| (Lit DatatypeTypeType |#M3.Literal.litTrue|)))
(assert (= |#M3.Literal.litFalse| (Lit DatatypeTypeType |#M3.Literal.litFalse|)))
(assert (= |#M3.Literal.litUndefined| (Lit DatatypeTypeType |#M3.Literal.litUndefined|)))
(assert (= |#M3.Literal.litNull| (Lit DatatypeTypeType |#M3.Literal.litNull|)))
(assert (= |#M3.Primitive.primCreatePath| (Lit DatatypeTypeType |#M3.Primitive.primCreatePath|)))
(assert (= |#M3.Primitive.primExec| (Lit DatatypeTypeType |#M3.Primitive.primExec|)))
(assert (= |#M3.Reason.rCompatibility| (Lit DatatypeTypeType |#M3.Reason.rCompatibility|)))
(assert (= |#M3.Reason.rValidity| (Lit DatatypeTypeType |#M3.Reason.rValidity|)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Path.ExternalPath| |a#24#0#0|) Tclass.M3.Path) ($Is SeqType |a#24#0#0| (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6893|
 :pattern ( ($Is DatatypeTypeType (|#M3.Path.ExternalPath| |a#24#0#0|) Tclass.M3.Path))
)))
(assert (forall ((|a#148#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Literal.litString| |a#148#0#0|) Tclass.M3.Literal) ($Is SeqType |a#148#0#0| (TSeq TChar)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |7105|
 :pattern ( ($Is DatatypeTypeType (|#M3.Literal.litString| |a#148#0#0|) Tclass.M3.Literal))
)))
(assert (forall ((d@@102 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (M3.Path.InternalPath_q d@@102) ($IsAlloc DatatypeTypeType d@@102 Tclass.M3.Path $h@@17))) ($IsAlloc SeqType (M3.Path.cmd d@@102) (TSeq TChar) $h@@17))
 :qid |unknown.0:0|
 :skolemid |6877|
 :pattern ( ($IsAlloc SeqType (M3.Path.cmd d@@102) (TSeq TChar) $h@@17))
)))
(assert (forall ((d@@103 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (M3.Path.InternalPath_q d@@103) ($IsAlloc DatatypeTypeType d@@103 Tclass.M3.Path $h@@18))) ($IsAlloc SeqType (M3.Path.exp d@@103) (TSeq TChar) $h@@18))
 :qid |unknown.0:0|
 :skolemid |6879|
 :pattern ( ($IsAlloc SeqType (M3.Path.exp d@@103) (TSeq TChar) $h@@18))
)))
(assert (forall ((d@@104 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (M3.Path.ExternalPath_q d@@104) ($IsAlloc DatatypeTypeType d@@104 Tclass.M3.Path $h@@19))) ($IsAlloc SeqType (M3.Path._h13 d@@104) (TSeq TChar) $h@@19))
 :qid |unknown.0:0|
 :skolemid |6894|
 :pattern ( ($IsAlloc SeqType (M3.Path._h13 d@@104) (TSeq TChar) $h@@19))
)))
(assert (forall ((d@@105 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (M3.Literal.litString_q d@@105) ($IsAlloc DatatypeTypeType d@@105 Tclass.M3.Literal $h@@20))) ($IsAlloc SeqType (M3.Literal.str d@@105) (TSeq TChar) $h@@20))
 :qid |unknown.0:0|
 :skolemid |7106|
 :pattern ( ($IsAlloc SeqType (M3.Literal.str d@@105) (TSeq TChar) $h@@20))
)))
(assert (forall ((|a#164#0#0| T@U) (d@@106 T@U) ) (!  (=> (|Set#IsMember| |a#164#0#0| ($Box DatatypeTypeType d@@106)) (< (DtRank d@@106) (DtRank (|#M3.Literal.litArrOfPaths| |a#164#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |7128|
 :pattern ( (|Set#IsMember| |a#164#0#0| ($Box DatatypeTypeType d@@106)) (|#M3.Literal.litArrOfPaths| |a#164#0#0|))
)))
(assert (forall ((|a#170#0#0| T@U) (d@@107 T@U) ) (!  (=> (|Set#IsMember| |a#170#0#0| ($Box DatatypeTypeType d@@107)) (< (DtRank d@@107) (DtRank (|#M3.Literal.litArrOfStrings| |a#170#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |7137|
 :pattern ( (|Set#IsMember| |a#170#0#0| ($Box DatatypeTypeType d@@107)) (|#M3.Literal.litArrOfStrings| |a#170#0#0|))
)))
(assert (forall ((a@@41 T@U) (b@@38 T@U) ) (! (= (|Set#Equal| a@@41 b@@38) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@41 o@@5) (|Set#IsMember| b@@38 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |5103|
 :pattern ( (|Set#IsMember| a@@41 o@@5))
 :pattern ( (|Set#IsMember| b@@38 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |5104|
 :pattern ( (|Set#Equal| a@@41 b@@38))
)))
(assert (forall ((s@@21 T@U) (m@@10 Int) (n@@9 Int) ) (!  (=> (and (and (<= 0 m@@10) (<= 0 n@@9)) (<= (+ m@@10 n@@9) (|Seq#Length| s@@21))) (= (|Seq#Drop| (|Seq#Drop| s@@21 m@@10) n@@9) (|Seq#Drop| s@@21 (+ m@@10 n@@9))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |5212|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@21 m@@10) n@@9))
)))
(assert  (=> (<= 6 $FunctionContextHeight) (forall ((|st#0@@59| T@U) (|st'#0@@9| T@U) ) (!  (=> (or (|M3.__default.Extends#canCall| (Lit DatatypeTypeType |st#0@@59|) (Lit DatatypeTypeType |st'#0@@9|)) (and (< 6 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@59| Tclass.M3.State) ($Is DatatypeTypeType |st'#0@@9| Tclass.M3.State)))) (and (and (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@59|)) (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@9|))) (=> (|Set#Subset| (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@59|)) (M3.__default.DomSt (Lit DatatypeTypeType |st'#0@@9|))) (and (forall ((|p#2| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2| Tclass.M3.Path) (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@59|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@59|))) ($Box DatatypeTypeType |p#2|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt |p#2| (Lit DatatypeTypeType |st'#0@@9|))) (|$IsA#M3.Artifact| (M3.__default.GetSt |p#2| (Lit DatatypeTypeType |st#0@@59|)))) (and (|M3.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st'#0@@9|)) (|M3.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st#0@@59|)))))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6619|
 :pattern ( (M3.__default.GetSt |p#2| |st#0@@59|))
 :pattern ( (M3.__default.GetSt |p#2| |st'#0@@9|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@59|) ($Box DatatypeTypeType |p#2|)))
)) (=> (forall ((|p#2@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2@@0| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@59|))) ($Box DatatypeTypeType |p#2@@0|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st'#0@@9|)) (M3.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st#0@@59|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6621|
 :pattern ( (M3.__default.GetSt |p#2@@0| |st#0@@59|))
 :pattern ( (M3.__default.GetSt |p#2@@0| |st'#0@@9|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@59|) ($Box DatatypeTypeType |p#2@@0|)))
)) (forall ((|p#3| T@U) ) (!  (=> ($Is DatatypeTypeType |p#3| Tclass.M3.Path) (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@59|)) (=> (not (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@59|))) ($Box DatatypeTypeType |p#3|))) (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@9|)) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st'#0@@9|))) ($Box DatatypeTypeType |p#3|)) (and (and (|$IsA#M3.Artifact| (M3.__default.GetSt |p#3| (Lit DatatypeTypeType |st'#0@@9|))) (|$IsA#M3.Artifact| (M3.__default.Oracle |p#3| (Lit DatatypeTypeType |st#0@@59|)))) (and (|M3.__default.GetSt#canCall| |p#3| (Lit DatatypeTypeType |st'#0@@9|)) (|M3.__default.Oracle#canCall| |p#3| (Lit DatatypeTypeType |st#0@@59|)))))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6620|
 :pattern ( (M3.__default.Oracle |p#3| |st#0@@59|))
 :pattern ( (M3.__default.GetSt |p#3| |st'#0@@9|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#0@@9|) ($Box DatatypeTypeType |p#3|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@59|) ($Box DatatypeTypeType |p#3|)))
)))))) (= (M3.__default.Extends (Lit DatatypeTypeType |st#0@@59|) (Lit DatatypeTypeType |st'#0@@9|))  (and (and (|Set#Subset| (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@59|)) (M3.__default.DomSt (Lit DatatypeTypeType |st'#0@@9|))) (forall ((|p#2@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2@@1| Tclass.M3.Path) (=> (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@59|))) ($Box DatatypeTypeType |p#2@@1|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st'#0@@9|)) (M3.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st#0@@59|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6617|
 :pattern ( (M3.__default.GetSt |p#2@@1| |st#0@@59|))
 :pattern ( (M3.__default.GetSt |p#2@@1| |st'#0@@9|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@59|) ($Box DatatypeTypeType |p#2@@1|)))
))) (forall ((|p#3@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#3@@0| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@59|))) ($Box DatatypeTypeType |p#3@@0|))) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st'#0@@9|))) ($Box DatatypeTypeType |p#3@@0|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#3@@0| (Lit DatatypeTypeType |st'#0@@9|)) (M3.__default.Oracle |p#3@@0| (Lit DatatypeTypeType |st#0@@59|)))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6618|
 :pattern ( (M3.__default.Oracle |p#3@@0| |st#0@@59|))
 :pattern ( (M3.__default.GetSt |p#3@@0| |st'#0@@9|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st'#0@@9|) ($Box DatatypeTypeType |p#3@@0|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@59|) ($Box DatatypeTypeType |p#3@@0|)))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :weight 3
 :skolemid |6622|
 :pattern ( (M3.__default.Extends (Lit DatatypeTypeType |st#0@@59|) (Lit DatatypeTypeType |st'#0@@9|)))
))))
(assert (forall ((d@@108 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (_System.Tuple2.___hMake2_q d@@108) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@108 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@21)
 :qid |unknown.0:0|
 :skolemid |5413|
 :pattern ( ($IsAlloc DatatypeTypeType d@@108 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@21))
)))) ($IsAllocBox (_System.Tuple2._0 d@@108) |_System._tuple#2$T0@@6| $h@@21))
 :qid |unknown.0:0|
 :skolemid |5414|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@108) |_System._tuple#2$T0@@6| $h@@21))
)))
(assert (forall ((d@@109 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (_System.Tuple2.___hMake2_q d@@109) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@109 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@22)
 :qid |unknown.0:0|
 :skolemid |5415|
 :pattern ( ($IsAlloc DatatypeTypeType d@@109 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@22))
)))) ($IsAllocBox (_System.Tuple2._1 d@@109) |_System._tuple#2$T1@@7| $h@@22))
 :qid |unknown.0:0|
 :skolemid |5416|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@109) |_System._tuple#2$T1@@7| $h@@22))
)))
(assert (forall ((d@@110 T@U) (M3.Tuple$A@@6 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (M3.Tuple.Pair_q d@@110) (exists ((M3.Tuple$B@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@110 (Tclass.M3.Tuple M3.Tuple$A@@6 M3.Tuple$B@@6) $h@@23)
 :qid |unknown.0:0|
 :skolemid |7188|
 :pattern ( ($IsAlloc DatatypeTypeType d@@110 (Tclass.M3.Tuple M3.Tuple$A@@6 M3.Tuple$B@@6) $h@@23))
)))) ($IsAllocBox (M3.Tuple.fst d@@110) M3.Tuple$A@@6 $h@@23))
 :qid |unknown.0:0|
 :skolemid |7189|
 :pattern ( ($IsAllocBox (M3.Tuple.fst d@@110) M3.Tuple$A@@6 $h@@23))
)))
(assert (forall ((d@@111 T@U) (M3.Tuple$B@@7 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (M3.Tuple.Pair_q d@@111) (exists ((M3.Tuple$A@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@111 (Tclass.M3.Tuple M3.Tuple$A@@7 M3.Tuple$B@@7) $h@@24)
 :qid |unknown.0:0|
 :skolemid |7190|
 :pattern ( ($IsAlloc DatatypeTypeType d@@111 (Tclass.M3.Tuple M3.Tuple$A@@7 M3.Tuple$B@@7) $h@@24))
)))) ($IsAllocBox (M3.Tuple.snd d@@111) M3.Tuple$B@@7 $h@@24))
 :qid |unknown.0:0|
 :skolemid |7191|
 :pattern ( ($IsAllocBox (M3.Tuple.snd d@@111) M3.Tuple$B@@7 $h@@24))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@10 Int) ) (!  (and (=> (< n@@10 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10) (|Seq#Index| s0@@2 n@@10))) (=> (<= (|Seq#Length| s0@@2) n@@10) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10) (|Seq#Index| s1@@2 (- n@@10 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |5182|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@10))
)))
(assert (forall ((d@@112 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (M3.WFCertificate.Cert_q d@@112) ($IsAlloc DatatypeTypeType d@@112 Tclass.M3.WFCertificate $h@@25))) ($IsAlloc DatatypeTypeType (M3.WFCertificate.p d@@112) Tclass.M3.Path $h@@25))
 :qid |unknown.0:0|
 :skolemid |6925|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.WFCertificate.p d@@112) Tclass.M3.Path $h@@25))
)))
(assert (forall ((d@@113 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (M3.Statement.stmtVariable_q d@@113) ($IsAlloc DatatypeTypeType d@@113 Tclass.M3.Statement $h@@26))) ($IsAlloc DatatypeTypeType (M3.Statement.id d@@113) Tclass.M3.Identifier $h@@26))
 :qid |unknown.0:0|
 :skolemid |6972|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Statement.id d@@113) Tclass.M3.Identifier $h@@26))
)))
(assert (forall ((d@@114 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (M3.Statement.stmtVariable_q d@@114) ($IsAlloc DatatypeTypeType d@@114 Tclass.M3.Statement $h@@27))) ($IsAlloc DatatypeTypeType (M3.Statement.expr d@@114) Tclass.M3.Expression $h@@27))
 :qid |unknown.0:0|
 :skolemid |6973|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Statement.expr d@@114) Tclass.M3.Expression $h@@27))
)))
(assert (forall ((d@@115 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (M3.Statement.stmtReturn_q d@@115) ($IsAlloc DatatypeTypeType d@@115 Tclass.M3.Statement $h@@28))) ($IsAlloc DatatypeTypeType (M3.Statement.ret d@@115) Tclass.M3.Expression $h@@28))
 :qid |unknown.0:0|
 :skolemid |6984|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Statement.ret d@@115) Tclass.M3.Expression $h@@28))
)))
(assert (forall ((d@@116 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (M3.Expression.exprLiteral_q d@@116) ($IsAlloc DatatypeTypeType d@@116 Tclass.M3.Expression $h@@29))) ($IsAlloc DatatypeTypeType (M3.Expression.lit d@@116) Tclass.M3.Literal $h@@29))
 :qid |unknown.0:0|
 :skolemid |6999|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.lit d@@116) Tclass.M3.Literal $h@@29))
)))
(assert (forall ((d@@117 T@U) ($h@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (M3.Expression.exprIdentifier_q d@@117) ($IsAlloc DatatypeTypeType d@@117 Tclass.M3.Expression $h@@30))) ($IsAlloc DatatypeTypeType (M3.Expression.id d@@117) Tclass.M3.Identifier $h@@30))
 :qid |unknown.0:0|
 :skolemid |7008|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.id d@@117) Tclass.M3.Identifier $h@@30))
)))
(assert (forall ((d@@118 T@U) ($h@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (M3.Expression.exprIf_q d@@118) ($IsAlloc DatatypeTypeType d@@118 Tclass.M3.Expression $h@@31))) ($IsAlloc DatatypeTypeType (M3.Expression.cond d@@118) Tclass.M3.Expression $h@@31))
 :qid |unknown.0:0|
 :skolemid |7017|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.cond d@@118) Tclass.M3.Expression $h@@31))
)))
(assert (forall ((d@@119 T@U) ($h@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (M3.Expression.exprIf_q d@@119) ($IsAlloc DatatypeTypeType d@@119 Tclass.M3.Expression $h@@32))) ($IsAlloc DatatypeTypeType (M3.Expression.ifTrue d@@119) Tclass.M3.Expression $h@@32))
 :qid |unknown.0:0|
 :skolemid |7018|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.ifTrue d@@119) Tclass.M3.Expression $h@@32))
)))
(assert (forall ((d@@120 T@U) ($h@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (M3.Expression.exprIf_q d@@120) ($IsAlloc DatatypeTypeType d@@120 Tclass.M3.Expression $h@@33))) ($IsAlloc DatatypeTypeType (M3.Expression.ifFalse d@@120) Tclass.M3.Expression $h@@33))
 :qid |unknown.0:0|
 :skolemid |7019|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.ifFalse d@@120) Tclass.M3.Expression $h@@33))
)))
(assert (forall ((d@@121 T@U) ($h@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (M3.Expression.exprAnd_q d@@121) ($IsAlloc DatatypeTypeType d@@121 Tclass.M3.Expression $h@@34))) ($IsAlloc DatatypeTypeType (M3.Expression.conj0 d@@121) Tclass.M3.Expression $h@@34))
 :qid |unknown.0:0|
 :skolemid |7032|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.conj0 d@@121) Tclass.M3.Expression $h@@34))
)))
(assert (forall ((d@@122 T@U) ($h@@35 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (M3.Expression.exprAnd_q d@@122) ($IsAlloc DatatypeTypeType d@@122 Tclass.M3.Expression $h@@35))) ($IsAlloc DatatypeTypeType (M3.Expression.conj1 d@@122) Tclass.M3.Expression $h@@35))
 :qid |unknown.0:0|
 :skolemid |7033|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.conj1 d@@122) Tclass.M3.Expression $h@@35))
)))
(assert (forall ((d@@123 T@U) ($h@@36 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (M3.Expression.exprOr_q d@@123) ($IsAlloc DatatypeTypeType d@@123 Tclass.M3.Expression $h@@36))) ($IsAlloc DatatypeTypeType (M3.Expression.disj0 d@@123) Tclass.M3.Expression $h@@36))
 :qid |unknown.0:0|
 :skolemid |7044|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.disj0 d@@123) Tclass.M3.Expression $h@@36))
)))
(assert (forall ((d@@124 T@U) ($h@@37 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (M3.Expression.exprOr_q d@@124) ($IsAlloc DatatypeTypeType d@@124 Tclass.M3.Expression $h@@37))) ($IsAlloc DatatypeTypeType (M3.Expression.disj1 d@@124) Tclass.M3.Expression $h@@37))
 :qid |unknown.0:0|
 :skolemid |7045|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.disj1 d@@124) Tclass.M3.Expression $h@@37))
)))
(assert (forall ((d@@125 T@U) ($h@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@38) (and (M3.Expression.exprInvocation_q d@@125) ($IsAlloc DatatypeTypeType d@@125 Tclass.M3.Expression $h@@38))) ($IsAlloc DatatypeTypeType (M3.Expression.fun d@@125) Tclass.M3.Expression $h@@38))
 :qid |unknown.0:0|
 :skolemid |7056|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.fun d@@125) Tclass.M3.Expression $h@@38))
)))
(assert (forall ((d@@126 T@U) ($h@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@39) (and (M3.Expression.exprError_q d@@126) ($IsAlloc DatatypeTypeType d@@126 Tclass.M3.Expression $h@@39))) ($IsAlloc DatatypeTypeType (M3.Expression.r d@@126) Tclass.M3.Reason $h@@39))
 :qid |unknown.0:0|
 :skolemid |7070|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Expression.r d@@126) Tclass.M3.Reason $h@@39))
)))
(assert (forall ((d@@127 T@U) ($h@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@40) (and (M3.Literal.litPrimitive_q d@@127) ($IsAlloc DatatypeTypeType d@@127 Tclass.M3.Literal $h@@40))) ($IsAlloc DatatypeTypeType (M3.Literal.prim d@@127) Tclass.M3.Primitive $h@@40))
 :qid |unknown.0:0|
 :skolemid |7116|
 :pattern ( ($IsAlloc DatatypeTypeType (M3.Literal.prim d@@127) Tclass.M3.Primitive $h@@40))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@60| T@U) (|st'#0@@10| T@U) ) (!  (=> (or (|M3.__default.Union#canCall| |st#0@@60| |st'#0@@10|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@60| Tclass.M3.State) ($Is DatatypeTypeType |st'#0@@10| Tclass.M3.State)))) (and (forall ((|p#1@@7| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@7| Tclass.M3.Path) (and (and (|M3.__default.DomSt#canCall| |st#0@@60|) (|M3.__default.DomSt#canCall| |st'#0@@10|)) (=> (|Set#IsMember| (|Set#Union| (M3.__default.DomSt |st#0@@60|) (M3.__default.DomSt |st'#0@@10|)) ($Box DatatypeTypeType |p#1@@7|)) (and (|M3.__default.DomSt#canCall| |st#0@@60|) (|M3.__default.GetSt#canCall| |p#1@@7| (ite (|Set#IsMember| (M3.__default.DomSt |st#0@@60|) ($Box DatatypeTypeType |p#1@@7|)) |st#0@@60| |st'#0@@10|))))))
 :qid |CloudMakeParallelBuildsdfy.770:19|
 :skolemid |5660|
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@60|) ($Box DatatypeTypeType |p#1@@7|)))
 :pattern ( (|Set#IsMember| (|Set#Union| (M3.__default.DomSt |st#0@@60|) (M3.__default.DomSt |st'#0@@10|)) ($Box DatatypeTypeType |p#1@@7|)))
)) (= (M3.__default.Union |st#0@@60| |st'#0@@10|) (|#M3.State.StateCons| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Set#Union| (M3.__default.DomSt |st#0@@60|) (M3.__default.DomSt |st'#0@@10|)))) (|lambda#1| (M3.__default.DomSt |st#0@@60|) |st#0@@60| |st'#0@@10|) (TMap Tclass.M3.Path Tclass.M3.Artifact))))))
 :qid |CloudMakeParallelBuildsdfy.23:24|
 :skolemid |5661|
 :pattern ( (M3.__default.Union |st#0@@60| |st'#0@@10|))
))))
(assert (forall ((certs T@U) (d@@128 T@U) ) (!  (=> (|$let#36$canCall| certs d@@128) (and ($Is DatatypeTypeType (|$let#36_c| certs d@@128) Tclass.M3.WFCertificate) (and (|Set#IsMember| certs ($Box DatatypeTypeType (|$let#36_c| certs d@@128))) (|M3.Path#Equal| (M3.WFCertificate.p (|$let#36_c| certs d@@128)) d@@128))))
 :qid |CloudMakeParallelBuildsdfy.669:5|
 :skolemid |6109|
 :pattern ( (|$let#36_c| certs d@@128))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@61| T@U) (|st'#0@@11| T@U) ) (!  (=> (or (|M3.__default.Union#canCall| (Lit DatatypeTypeType |st#0@@61|) (Lit DatatypeTypeType |st'#0@@11|)) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@61| Tclass.M3.State) ($Is DatatypeTypeType |st'#0@@11| Tclass.M3.State)))) (and (forall ((|p#1@@8| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@8| Tclass.M3.Path) (and (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@61|)) (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@11|))) (=> (|Set#IsMember| (|Set#Union| (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@61|)) (M3.__default.DomSt (Lit DatatypeTypeType |st'#0@@11|))) ($Box DatatypeTypeType |p#1@@8|)) (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@61|)) (|M3.__default.GetSt#canCall| |p#1@@8| (ite (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@61|))) ($Box DatatypeTypeType |p#1@@8|)) |st#0@@61| |st'#0@@11|))))))
 :qid |CloudMakeParallelBuildsdfy.770:19|
 :skolemid |5662|
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@61|) ($Box DatatypeTypeType |p#1@@8|)))
 :pattern ( (|Set#IsMember| (|Set#Union| (M3.__default.DomSt |st#0@@61|) (M3.__default.DomSt |st'#0@@11|)) ($Box DatatypeTypeType |p#1@@8|)))
)) (= (M3.__default.Union (Lit DatatypeTypeType |st#0@@61|) (Lit DatatypeTypeType |st'#0@@11|)) (|#M3.State.StateCons| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Set#Union| (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@61|)) (M3.__default.DomSt (Lit DatatypeTypeType |st'#0@@11|))))) (|lambda#1| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@61|))) |st#0@@61| |st'#0@@11|) (TMap Tclass.M3.Path Tclass.M3.Artifact))))))
 :qid |CloudMakeParallelBuildsdfy.23:24|
 :weight 3
 :skolemid |5663|
 :pattern ( (M3.__default.Union (Lit DatatypeTypeType |st#0@@61|) (Lit DatatypeTypeType |st'#0@@11|)))
))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |5417|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) ) (! (= (|#M3.WFCertificate.Cert| (Lit DatatypeTypeType |a#39#0#0|) (Lit SetType |a#39#1#0|)) (Lit DatatypeTypeType (|#M3.WFCertificate.Cert| |a#39#0#0| |a#39#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.500:33|
 :skolemid |6927|
 :pattern ( (|#M3.WFCertificate.Cert| (Lit DatatypeTypeType |a#39#0#0|) (Lit SetType |a#39#1#0|)))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) ) (! (= (|#M3.Statement.stmtVariable| (Lit DatatypeTypeType |a#61#0#0|) (Lit DatatypeTypeType |a#61#1#0|)) (Lit DatatypeTypeType (|#M3.Statement.stmtVariable| |a#61#0#0| |a#61#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.130:37|
 :skolemid |6974|
 :pattern ( (|#M3.Statement.stmtVariable| (Lit DatatypeTypeType |a#61#0#0|) (Lit DatatypeTypeType |a#61#1#0|)))
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
(assert (forall ((|a#197#0#0| T@U) (|a#197#1#0| T@U) ) (! (= (|#M3.Tuple.Pair| (Lit BoxType |a#197#0#0|) (Lit BoxType |a#197#1#0|)) (Lit DatatypeTypeType (|#M3.Tuple.Pair| |a#197#0#0| |a#197#1#0|)))
 :qid |CloudMakeParallelBuildsdfy.159:31|
 :skolemid |7192|
 :pattern ( (|#M3.Tuple.Pair| (Lit BoxType |a#197#0#0|) (Lit BoxType |a#197#1#0|)))
)))
(assert (forall ((x@@15 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@15))) (Lit BoxType ($Box intType (int_2_U x@@15))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |4973|
 :pattern ( ($Box intType (int_2_U (LitInt x@@15))))
)))
(assert (forall ((|a#3#0#0@@0| Int) ) (! (= (|#M3.Artifact.ArtifactCons| (LitInt |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#M3.Artifact.ArtifactCons| |a#3#0#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6852|
 :pattern ( (|#M3.Artifact.ArtifactCons| (LitInt |a#3#0#0@@0|)))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (|#M3.Path.ExternalPath| (Lit SeqType |a#25#0#0|)) (Lit DatatypeTypeType (|#M3.Path.ExternalPath| |a#25#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.785:18|
 :skolemid |6895|
 :pattern ( (|#M3.Path.ExternalPath| (Lit SeqType |a#25#0#0|)))
)))
(assert (forall ((|a#32#0#0| T@U) ) (! (= (|#M3.Env.EnvCons| (Lit MapType |a#32#0#0|)) (Lit DatatypeTypeType (|#M3.Env.EnvCons| |a#32#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.819:26|
 :skolemid |6911|
 :pattern ( (|#M3.Env.EnvCons| (Lit MapType |a#32#0#0|)))
)))
(assert (forall ((|a#47#0#0| T@U) ) (! (= (|#M3.State.StateCons| (Lit MapType |a#47#0#0|)) (Lit DatatypeTypeType (|#M3.State.StateCons| |a#47#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6943|
 :pattern ( (|#M3.State.StateCons| (Lit MapType |a#47#0#0|)))
)))
(assert (forall ((|a#54#0#0| T@U) ) (! (= (|#M3.Program.Program| (Lit SeqType |a#54#0#0|)) (Lit DatatypeTypeType (|#M3.Program.Program| |a#54#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.128:30|
 :skolemid |6958|
 :pattern ( (|#M3.Program.Program| (Lit SeqType |a#54#0#0|)))
)))
(assert (forall ((|a#69#0#0| T@U) ) (! (= (|#M3.Statement.stmtReturn| (Lit DatatypeTypeType |a#69#0#0|)) (Lit DatatypeTypeType (|#M3.Statement.stmtReturn| |a#69#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.131:35|
 :skolemid |6985|
 :pattern ( (|#M3.Statement.stmtReturn| (Lit DatatypeTypeType |a#69#0#0|)))
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
(assert (forall ((|a#144#0#0| Int) ) (! (= (|#M3.Literal.litNumber| (LitInt |a#144#0#0|)) (Lit DatatypeTypeType (|#M3.Literal.litNumber| |a#144#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.141:32|
 :skolemid |7099|
 :pattern ( (|#M3.Literal.litNumber| (LitInt |a#144#0#0|)))
)))
(assert (forall ((|a#149#0#0| T@U) ) (! (= (|#M3.Literal.litString| (Lit SeqType |a#149#0#0|)) (Lit DatatypeTypeType (|#M3.Literal.litString| |a#149#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.141:54|
 :skolemid |7107|
 :pattern ( (|#M3.Literal.litString| (Lit SeqType |a#149#0#0|)))
)))
(assert (forall ((|a#156#0#0| T@U) ) (! (= (|#M3.Literal.litPrimitive| (Lit DatatypeTypeType |a#156#0#0|)) (Lit DatatypeTypeType (|#M3.Literal.litPrimitive| |a#156#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.142:35|
 :skolemid |7117|
 :pattern ( (|#M3.Literal.litPrimitive| (Lit DatatypeTypeType |a#156#0#0|)))
)))
(assert (forall ((|a#162#0#0| T@U) ) (! (= (|#M3.Literal.litArrOfPaths| (Lit SetType |a#162#0#0|)) (Lit DatatypeTypeType (|#M3.Literal.litArrOfPaths| |a#162#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.145:36|
 :skolemid |7126|
 :pattern ( (|#M3.Literal.litArrOfPaths| (Lit SetType |a#162#0#0|)))
)))
(assert (forall ((|a#168#0#0| T@U) ) (! (= (|#M3.Literal.litArrOfStrings| (Lit SetType |a#168#0#0|)) (Lit DatatypeTypeType (|#M3.Literal.litArrOfStrings| |a#168#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |7135|
 :pattern ( (|#M3.Literal.litArrOfStrings| (Lit SetType |a#168#0#0|)))
)))
(assert (forall ((|a#174#0#0| T@U) ) (! (= (|#M3.Literal.litArray| (Lit SeqType |a#174#0#0|)) (Lit DatatypeTypeType (|#M3.Literal.litArray| |a#174#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.147:31|
 :skolemid |7144|
 :pattern ( (|#M3.Literal.litArray| (Lit SeqType |a#174#0#0|)))
)))
(assert (forall ((x@@16 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@16)) (Lit BoxType ($Box T@@4 x@@16)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4971|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@16)))
)))
(assert (forall ((|a#34#0#0| T@U) (d@@129 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#34#0#0|) ($Box DatatypeTypeType d@@129)) (< (DtRank d@@129) (DtRank (|#M3.Env.EnvCons| |a#34#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.819:26|
 :skolemid |6913|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#34#0#0|) ($Box DatatypeTypeType d@@129)) (|#M3.Env.EnvCons| |a#34#0#0|))
)))
(assert (forall ((|a#49#0#0| T@U) (d@@130 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#49#0#0|) ($Box DatatypeTypeType d@@130)) (< (DtRank d@@130) (DtRank (|#M3.State.StateCons| |a#49#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6945|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#49#0#0|) ($Box DatatypeTypeType d@@130)) (|#M3.State.StateCons| |a#49#0#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@53| T@U) (|a#0@@4| T@U) (|st#0@@62| T@U) ) (!  (=> (or (|M3.__default.SetSt#canCall| |p#0@@53| |a#0@@4| |st#0@@62|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@53| Tclass.M3.Path) ($Is DatatypeTypeType |a#0@@4| Tclass.M3.Artifact)) ($Is DatatypeTypeType |st#0@@62| Tclass.M3.State)))) (and (M3.State.StateCons_q |st#0@@62|) (= (M3.__default.SetSt |p#0@@53| |a#0@@4| |st#0@@62|) (|#M3.State.StateCons| (|Map#Build| (M3.State.m |st#0@@62|) ($Box DatatypeTypeType |p#0@@53|) ($Box DatatypeTypeType |a#0@@4|))))))
 :qid |CloudMakeParallelBuildsdfy.468:24|
 :skolemid |5729|
 :pattern ( (M3.__default.SetSt |p#0@@53| |a#0@@4| |st#0@@62|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|cmd#0@@18| T@U) (|deps#0@@23| T@U) (|exp#0@@7| T@U) ) (!  (=> (or (|M3.__default.Loc#canCall| |cmd#0@@18| |deps#0@@23| |exp#0@@7|) (and (< 1 $FunctionContextHeight) (and (and ($Is SeqType |cmd#0@@18| (TSeq TChar)) ($Is SetType |deps#0@@23| (TSet Tclass.M3.Path))) ($Is SeqType |exp#0@@7| (TSeq TChar))))) (= (M3.__default.Loc |cmd#0@@18| |deps#0@@23| |exp#0@@7|) (|#M3.Path.InternalPath| |cmd#0@@18| |deps#0@@23| |exp#0@@7|)))
 :qid |CloudMakeParallelBuildsdfy.154:22|
 :skolemid |5681|
 :pattern ( (M3.__default.Loc |cmd#0@@18| |deps#0@@23| |exp#0@@7|))
))))
(assert (forall ((d@@131 T@U) ($h@@41 T@U) ) (!  (=> (and ($IsGoodHeap $h@@41) (and (M3.Literal.litArrOfStrings_q d@@131) ($IsAlloc DatatypeTypeType d@@131 Tclass.M3.Literal $h@@41))) ($IsAlloc SetType (M3.Literal.strs d@@131) (TSet (TSeq TChar)) $h@@41))
 :qid |unknown.0:0|
 :skolemid |7134|
 :pattern ( ($IsAlloc SetType (M3.Literal.strs d@@131) (TSet (TSeq TChar)) $h@@41))
)))
(assert (forall ((s@@22 T@U) ) (!  (=> (= (|Seq#Length| s@@22) 0) (= s@@22 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |5177|
 :pattern ( (|Seq#Length| s@@22))
)))
(assert (forall ((s@@23 T@U) (n@@11 Int) ) (!  (=> (= n@@11 0) (= (|Seq#Take| s@@23 n@@11) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |5211|
 :pattern ( (|Seq#Take| s@@23 n@@11))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|paths#0@@2| T@U) (|st#0@@63| T@U) ) (!  (=> (or (|M3.__default.Restrict#canCall| (Lit SetType |paths#0@@2|) (Lit DatatypeTypeType |st#0@@63|)) (and (< 4 $FunctionContextHeight) (and ($Is SetType |paths#0@@2| (TSet Tclass.M3.Path)) ($Is DatatypeTypeType |st#0@@63| Tclass.M3.State)))) (and (forall ((|p#0@@54| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@54| Tclass.M3.Path) (and (=> (|Set#IsMember| (Lit SetType |paths#0@@2|) ($Box DatatypeTypeType |p#0@@54|)) (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@63|))) (=> (and (|Set#IsMember| (Lit SetType |paths#0@@2|) ($Box DatatypeTypeType |p#0@@54|)) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@63|))) ($Box DatatypeTypeType |p#0@@54|))) (|M3.__default.GetSt#canCall| |p#0@@54| (Lit DatatypeTypeType |st#0@@63|)))))
 :qid |CloudMakeParallelBuildsdfy.475:9|
 :skolemid |5736|
 :pattern ( (M3.__default.GetSt |p#0@@54| |st#0@@63|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@63|) ($Box DatatypeTypeType |p#0@@54|)))
 :pattern ( (|Set#IsMember| |paths#0@@2| ($Box DatatypeTypeType |p#0@@54|)))
)) (= (M3.__default.Restrict (Lit SetType |paths#0@@2|) (Lit DatatypeTypeType |st#0@@63|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#16| Tclass.M3.Path (Lit SetType |paths#0@@2|) (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@63|))))) (|lambda#17| (Lit DatatypeTypeType |st#0@@63|)) (TMap Tclass.M3.Path Tclass.M3.Artifact)))))
 :qid |CloudMakeParallelBuildsdfy.473:27|
 :weight 3
 :skolemid |5737|
 :pattern ( (M3.__default.Restrict (Lit SetType |paths#0@@2|) (Lit DatatypeTypeType |st#0@@63|)))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($ly@@35 T@U) (|sts#0@@4| T@U) ) (!  (=> (or (|M3.__default.Combine#canCall| |sts#0@@4|) (and (< 5 $FunctionContextHeight) (and ($Is SetType |sts#0@@4| (TSet Tclass.M3.State)) (not (|Set#Equal| |sts#0@@4| |Set#Empty|))))) ($Is DatatypeTypeType (M3.__default.Combine $ly@@35 |sts#0@@4|) Tclass.M3.State))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |6519|
 :pattern ( (M3.__default.Combine $ly@@35 |sts#0@@4|))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|cmd#0@@19| T@U) (|deps#0@@24| T@U) (|exps#0@@10| T@U) (|st#0@@64| T@U) ) (!  (=> (or (|M3.__default.exec#canCall| (Lit SeqType |cmd#0@@19|) (Lit SetType |deps#0@@24|) (Lit SetType |exps#0@@10|) |st#0@@64|) (and (< 5 $FunctionContextHeight) (and (and (and ($Is SeqType |cmd#0@@19| (TSeq TChar)) ($Is SetType |deps#0@@24| (TSet Tclass.M3.Path))) ($Is SetType |exps#0@@10| (TSet (TSeq TChar)))) ($Is DatatypeTypeType |st#0@@64| Tclass.M3.State)))) (and (and (|M3.__default.Restrict#canCall| (Lit SetType |deps#0@@24|) |st#0@@64|) (|M3.__default.execOne#canCall| (Lit SeqType |cmd#0@@19|) (Lit SetType |deps#0@@24|) (M3.__default.Restrict (Lit SetType |deps#0@@24|) |st#0@@64|) (Lit SetType |exps#0@@10|) |st#0@@64|)) (= (M3.__default.exec (Lit SeqType |cmd#0@@19|) (Lit SetType |deps#0@@24|) (Lit SetType |exps#0@@10|) |st#0@@64|) (M3.__default.execOne ($LS $LZ) (Lit SeqType |cmd#0@@19|) (Lit SetType |deps#0@@24|) (M3.__default.Restrict (Lit SetType |deps#0@@24|) |st#0@@64|) (Lit SetType |exps#0@@10|) |st#0@@64|))))
 :qid |CloudMakeParallelBuildsdfy.69:23|
 :weight 3
 :skolemid |5822|
 :pattern ( (M3.__default.exec (Lit SeqType |cmd#0@@19|) (Lit SetType |deps#0@@24|) (Lit SetType |exps#0@@10|) |st#0@@64|))
))))
(assert (forall ((|a#167#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Literal.litArrOfStrings| |a#167#0#0|) Tclass.M3.Literal) ($Is SetType |a#167#0#0| (TSet (TSeq TChar))))
 :qid |CloudMakeParallelBuildsdfy.146:38|
 :skolemid |7133|
 :pattern ( ($Is DatatypeTypeType (|#M3.Literal.litArrOfStrings| |a#167#0#0|) Tclass.M3.Literal))
)))
(assert (forall ((d@@132 T@U) ($h@@42 T@U) ) (!  (=> (and ($IsGoodHeap $h@@42) (and (M3.Path.InternalPath_q d@@132) ($IsAlloc DatatypeTypeType d@@132 Tclass.M3.Path $h@@42))) ($IsAlloc SetType (M3.Path.deps d@@132) (TSet Tclass.M3.Path) $h@@42))
 :qid |unknown.0:0|
 :skolemid |6878|
 :pattern ( ($IsAlloc SetType (M3.Path.deps d@@132) (TSet Tclass.M3.Path) $h@@42))
)))
(assert (forall ((d@@133 T@U) ($h@@43 T@U) ) (!  (=> (and ($IsGoodHeap $h@@43) (and (M3.WFCertificate.Cert_q d@@133) ($IsAlloc DatatypeTypeType d@@133 Tclass.M3.WFCertificate $h@@43))) ($IsAlloc SetType (M3.WFCertificate.certs d@@133) (TSet Tclass.M3.WFCertificate) $h@@43))
 :qid |unknown.0:0|
 :skolemid |6926|
 :pattern ( ($IsAlloc SetType (M3.WFCertificate.certs d@@133) (TSet Tclass.M3.WFCertificate) $h@@43))
)))
(assert (forall ((d@@134 T@U) ($h@@44 T@U) ) (!  (=> (and ($IsGoodHeap $h@@44) (and (M3.Program.Program_q d@@134) ($IsAlloc DatatypeTypeType d@@134 Tclass.M3.Program $h@@44))) ($IsAlloc SeqType (M3.Program.stmts d@@134) (TSeq Tclass.M3.Statement) $h@@44))
 :qid |unknown.0:0|
 :skolemid |6957|
 :pattern ( ($IsAlloc SeqType (M3.Program.stmts d@@134) (TSeq Tclass.M3.Statement) $h@@44))
)))
(assert (forall ((d@@135 T@U) ($h@@45 T@U) ) (!  (=> (and ($IsGoodHeap $h@@45) (and (M3.Expression.exprInvocation_q d@@135) ($IsAlloc DatatypeTypeType d@@135 Tclass.M3.Expression $h@@45))) ($IsAlloc SeqType (M3.Expression.args d@@135) (TSeq Tclass.M3.Expression) $h@@45))
 :qid |unknown.0:0|
 :skolemid |7057|
 :pattern ( ($IsAlloc SeqType (M3.Expression.args d@@135) (TSeq Tclass.M3.Expression) $h@@45))
)))
(assert (forall ((d@@136 T@U) ($h@@46 T@U) ) (!  (=> (and ($IsGoodHeap $h@@46) (and (M3.Literal.litArrOfPaths_q d@@136) ($IsAlloc DatatypeTypeType d@@136 Tclass.M3.Literal $h@@46))) ($IsAlloc SetType (M3.Literal.paths d@@136) (TSet Tclass.M3.Path) $h@@46))
 :qid |unknown.0:0|
 :skolemid |7125|
 :pattern ( ($IsAlloc SetType (M3.Literal.paths d@@136) (TSet Tclass.M3.Path) $h@@46))
)))
(assert (forall ((d@@137 T@U) ($h@@47 T@U) ) (!  (=> (and ($IsGoodHeap $h@@47) (and (M3.Literal.litArray_q d@@137) ($IsAlloc DatatypeTypeType d@@137 Tclass.M3.Literal $h@@47))) ($IsAlloc SeqType (M3.Literal.arr d@@137) (TSeq Tclass.M3.Expression) $h@@47))
 :qid |unknown.0:0|
 :skolemid |7143|
 :pattern ( ($IsAlloc SeqType (M3.Literal.arr d@@137) (TSeq Tclass.M3.Expression) $h@@47))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M3._default.PickOne$T@@3 T@U) ($Heap@@20 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|M3.__default.PickOne#canCall| M3._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@20) ($Is SetType |s#0@@2| (TSet M3._default.PickOne$T@@3))) (not (|Set#Equal| |s#0@@2| |Set#Empty|))))) (and (|$let#27$canCall| M3._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (= (M3.__default.PickOne M3._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) (let ((|x#1| (|$let#27_x| M3._default.PickOne$T@@3 (Lit SetType |s#0@@2|))))
|x#1|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |5754|
 :pattern ( (M3.__default.PickOne M3._default.PickOne$T@@3 (Lit SetType |s#0@@2|)) ($IsGoodHeap $Heap@@20))
))))
(assert (forall ((h@@3 T@U) (v@@13 T@U) ) (! ($IsAlloc intType v@@13 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |5016|
 :pattern ( ($IsAlloc intType v@@13 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@14 T@U) ) (! ($IsAlloc charType v@@14 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |5019|
 :pattern ( ($IsAlloc charType v@@14 TChar h@@4))
)))
(assert (forall ((v@@15 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@15 (TSeq t0@@7)) (forall ((i@@14 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 (|Seq#Length| v@@15))) ($IsBox (|Seq#Index| v@@15 i@@14) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |5008|
 :pattern ( (|Seq#Index| v@@15 i@@14))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |5009|
 :pattern ( ($Is SeqType v@@15 (TSeq t0@@7)))
)))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@1 T@U) (v@@16 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@1 v@@16)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |5232|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |5233|
 :pattern ( (|Map#Items| m@@11))
)))
(assert (forall ((s@@24 T@U) (i@@15 Int) ) (!  (=> (and (<= 0 i@@15) (< i@@15 (|Seq#Length| s@@24))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@24 i@@15))) (|Seq#Rank| s@@24)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |5222|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@24 i@@15))))
)))
(assert (forall ((v@@17 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@17 (TMap t0@@8 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@17) (TSet t0@@8)) ($Is SetType (|Map#Values| v@@17) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@17) (TSet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |5012|
 :pattern ( ($Is MapType v@@17 (TMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@18 T@U) ) (! ($Is intType v@@18 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4995|
 :pattern ( ($Is intType v@@18 TInt))
)))
(assert (forall ((v@@19 T@U) ) (! ($Is charType v@@19 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |4998|
 :pattern ( ($Is charType v@@19 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@21 () T@U)
(declare-fun |prog#0@@3| () T@U)
(declare-fun |st#0@@65| () T@U)
(declare-fun |result#0@0| () T@U)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |stmts##0@0| () T@U)
(declare-fun |env##0@0| () T@U)
(declare-fun |call4formal@expr'#0| () T@U)
(declare-fun |call5formal@st'#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call4formal@expr'#0@0| () T@U)
(declare-fun |call5formal@st'#0@0| () T@U)
(declare-fun |expr'#0@@1| () T@U)
(declare-fun |st'#0@@12| () T@U)
(declare-fun |result#0@@0| () T@U)
(declare-fun |_v2#0| () T@U)
(declare-fun |_v3#0| () T@U)
(set-info :boogie-vc-id Impl$$M3.__default.BuildLemma)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#4| null $Heap@@21 alloc false)) (=> (and (and (and ($IsAlloc DatatypeTypeType |prog#0@@3| Tclass.M3.Program $Heap@@21) ($IsAlloc DatatypeTypeType |st#0@@65| Tclass.M3.State $Heap@@21)) (and (M3.__default.Legal (M3.Program.stmts |prog#0@@3|)) (|M3.__default.build#canCall| |prog#0@@3| |st#0@@65|))) (and (and (M3.Tuple.Pair_q (M3.__default.build |prog#0@@3| |st#0@@65|)) (|M3.__default.build#canCall| |prog#0@@3| |st#0@@65|)) (and (= |result#0@0| (M3.__default.build |prog#0@@3| |st#0@@65|)) (M3.Tuple.Pair_q |result#0@0|)))) (=> (and (and (and (and (M3.Tuple.Pair_q |result#0@0|) (= |$rhs#0@0| ($Unbox DatatypeTypeType (M3.Tuple.fst |result#0@0|)))) (and (M3.Tuple.Pair_q |result#0@0|) (M3.Tuple.Pair_q |result#0@0|))) (and (and (= |$rhs#1@0| ($Unbox DatatypeTypeType (M3.Tuple.snd |result#0@0|))) (M3.Program.Program_q |prog#0@@3|)) (and (M3.Program.Program_q |prog#0@@3|) (= |stmts##0@0| (M3.Program.stmts |prog#0@@3|))))) (and (and (and |M3.__default.EmptyEnv#canCall| (M3.Env.EnvCons_q (Lit DatatypeTypeType M3.__default.EmptyEnv))) (and |M3.__default.EmptyEnv#canCall| (= |env##0@0| (Lit DatatypeTypeType M3.__default.EmptyEnv)))) (and (and ($Is DatatypeTypeType |call4formal@expr'#0| Tclass.M3.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0| Tclass.M3.Expression $Heap@@21)) (and ($Is DatatypeTypeType |call5formal@st'#0| Tclass.M3.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0| Tclass.M3.State $Heap@@21))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|M3.__default.Legal#canCall| |stmts##0@0|) (or (M3.__default.Legal |stmts##0@0|) (or (not (= (|Seq#Length| |stmts##0@0|) 0)) (not true))))) (=> (=> (|M3.__default.Legal#canCall| |stmts##0@0|) (or (M3.__default.Legal |stmts##0@0|) (or (not (= (|Seq#Length| |stmts##0@0|) 0)) (not true)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|M3.__default.ValidState#canCall| |st#0@@65|) (or (M3.__default.ValidState |st#0@@65|) (forall ((|p#0@@55| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@55| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#0@@55|)) (M3.__default.WellFounded |p#0@@55|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6778|
 :pattern ( (M3.__default.WellFounded |p#0@@55|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#0@@55|)))
))))) (=> (=> (|M3.__default.ValidState#canCall| |st#0@@65|) (or (M3.__default.ValidState |st#0@@65|) (forall ((|p#0@@56| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@56| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#0@@56|)) (M3.__default.WellFounded |p#0@@56|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6778|
 :pattern ( (M3.__default.WellFounded |p#0@@56|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#0@@56|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (M3.__default.ValidEnv |env##0@0|)) (=> (M3.__default.ValidEnv |env##0@0|) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and ($Is DatatypeTypeType |call4formal@expr'#0@0| Tclass.M3.Expression) ($IsAlloc DatatypeTypeType |call4formal@expr'#0@0| Tclass.M3.Expression $Heap@0)) (and ($Is DatatypeTypeType |call5formal@st'#0@0| Tclass.M3.State) ($IsAlloc DatatypeTypeType |call5formal@st'#0@0| Tclass.M3.State $Heap@0))) (=> (and (and (and (and (and (|$IsA#M3.Tuple| (M3.__default.do ($LS $LZ) |stmts##0@0| |st#0@@65| |env##0@0|)) (|M3.__default.do#canCall| |stmts##0@0| |st#0@@65| |env##0@0|)) (=> (|M3.Tuple#Equal| (|#M3.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0|) ($Box DatatypeTypeType |call5formal@st'#0@0|)) (M3.__default.do ($LS $LZ) |stmts##0@0| |st#0@@65| |env##0@0|)) (and (|M3.__default.ValidState#canCall| |call5formal@st'#0@0|) (=> (M3.__default.ValidState |call5formal@st'#0@0|) (and (|M3.__default.Extends#canCall| |st#0@@65| |call5formal@st'#0@0|) (=> (M3.__default.Extends |st#0@@65| |call5formal@st'#0@0|) (=> (M3.Expression.exprError_q |call4formal@expr'#0@0|) (|$IsA#M3.Reason| (M3.Expression.r |call4formal@expr'#0@0|))))))))) (|M3.Tuple#Equal| (|#M3.Tuple.Pair| ($Box DatatypeTypeType |call4formal@expr'#0@0|) ($Box DatatypeTypeType |call5formal@st'#0@0|)) (M3.__default.do ($LS ($LS $LZ)) |stmts##0@0| |st#0@@65| |env##0@0|))) (and (|M3.__default.ValidState#canCall| |call5formal@st'#0@0|) (and (M3.__default.ValidState |call5formal@st'#0@0|) (forall ((|p#1@@9| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@9| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |call5formal@st'#0@0|) ($Box DatatypeTypeType |p#1@@9|)) (M3.__default.WellFounded |p#1@@9|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6781|
 :pattern ( (M3.__default.WellFounded |p#1@@9|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |call5formal@st'#0@0|) ($Box DatatypeTypeType |p#1@@9|)))
))))) (and (and (|M3.__default.Extends#canCall| |st#0@@65| |call5formal@st'#0@0|) (and (M3.__default.Extends |st#0@@65| |call5formal@st'#0@0|) (and (and (|Set#Subset| (M3.__default.DomSt |st#0@@65|) (M3.__default.DomSt |call5formal@st'#0@0|)) (forall ((|p#2@@2| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2@@2| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#2@@2|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#2@@2| |call5formal@st'#0@0|) (M3.__default.GetSt |p#2@@2| |st#0@@65|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6784|
 :pattern ( (M3.__default.GetSt |p#2@@2| |st#0@@65|))
 :pattern ( (M3.__default.GetSt |p#2@@2| |call5formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#2@@2|)))
))) (forall ((|p#3@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#3@@1| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#3@@1|))) (|Set#IsMember| (M3.__default.DomSt |call5formal@st'#0@0|) ($Box DatatypeTypeType |p#3@@1|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#3@@1| |call5formal@st'#0@0|) (M3.__default.Oracle |p#3@@1| |st#0@@65|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6785|
 :pattern ( (M3.__default.Oracle |p#3@@1| |st#0@@65|))
 :pattern ( (M3.__default.GetSt |p#3@@1| |call5formal@st'#0@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |call5formal@st'#0@0|) ($Box DatatypeTypeType |p#3@@1|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#3@@1|)))
))))) (and (=> (M3.Expression.exprError_q |call4formal@expr'#0@0|) (|M3.Reason#Equal| (M3.Expression.r |call4formal@expr'#0@0|) |#M3.Reason.rValidity|)) (= $Heap@@21 $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> false (|M3.Tuple#Equal| (M3.__default.build |prog#0@@3| |st#0@@65|) (|#M3.Tuple.Pair| ($Box DatatypeTypeType |$rhs#0@0|) ($Box DatatypeTypeType |$rhs#1@0|))))) (=> (=> false (|M3.Tuple#Equal| (M3.__default.build |prog#0@@3| |st#0@@65|) (|#M3.Tuple.Pair| ($Box DatatypeTypeType |$rhs#0@0|) ($Box DatatypeTypeType |$rhs#1@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> false (=> (|M3.__default.ValidState#canCall| |$rhs#1@0|) (or (M3.__default.ValidState |$rhs#1@0|) (forall ((|p#5| T@U) ) (!  (=> ($Is DatatypeTypeType |p#5| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |$rhs#1@0|) ($Box DatatypeTypeType |p#5|)) (M3.__default.WellFounded |p#5|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6771|
 :pattern ( (M3.__default.WellFounded |p#5|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1@0|) ($Box DatatypeTypeType |p#5|)))
)))))) (=> (=> false (=> (|M3.__default.ValidState#canCall| |$rhs#1@0|) (or (M3.__default.ValidState |$rhs#1@0|) (forall ((|p#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#5@@0| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |$rhs#1@0|) ($Box DatatypeTypeType |p#5@@0|)) (M3.__default.WellFounded |p#5@@0|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6771|
 :pattern ( (M3.__default.WellFounded |p#5@@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1@0|) ($Box DatatypeTypeType |p#5@@0|)))
))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> false (=> (|M3.__default.Extends#canCall| |st#0@@65| |$rhs#1@0|) (or (M3.__default.Extends |st#0@@65| |$rhs#1@0|) (|Set#Subset| (M3.__default.DomSt |st#0@@65|) (M3.__default.DomSt |$rhs#1@0|)))))) (=> (=> false (=> (|M3.__default.Extends#canCall| |st#0@@65| |$rhs#1@0|) (or (M3.__default.Extends |st#0@@65| |$rhs#1@0|) (|Set#Subset| (M3.__default.DomSt |st#0@@65|) (M3.__default.DomSt |$rhs#1@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> false (=> (|M3.__default.Extends#canCall| |st#0@@65| |$rhs#1@0|) (or (M3.__default.Extends |st#0@@65| |$rhs#1@0|) (forall ((|p#6| T@U) ) (!  (=> ($Is DatatypeTypeType |p#6| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#6|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#6| |$rhs#1@0|) (M3.__default.GetSt |p#6| |st#0@@65|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6773|
 :pattern ( (M3.__default.GetSt |p#6| |st#0@@65|))
 :pattern ( (M3.__default.GetSt |p#6| |$rhs#1@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#6|)))
)))))) (=> (=> false (=> (|M3.__default.Extends#canCall| |st#0@@65| |$rhs#1@0|) (or (M3.__default.Extends |st#0@@65| |$rhs#1@0|) (forall ((|p#6@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#6@@0| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#6@@0|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#6@@0| |$rhs#1@0|) (M3.__default.GetSt |p#6@@0| |st#0@@65|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |6773|
 :pattern ( (M3.__default.GetSt |p#6@@0| |st#0@@65|))
 :pattern ( (M3.__default.GetSt |p#6@@0| |$rhs#1@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#6@@0|)))
))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (=> (|M3.__default.Extends#canCall| |st#0@@65| |$rhs#1@0|) (or (M3.__default.Extends |st#0@@65| |$rhs#1@0|) (forall ((|p#7| T@U) ) (!  (=> ($Is DatatypeTypeType |p#7| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#7|))) (|Set#IsMember| (M3.__default.DomSt |$rhs#1@0|) ($Box DatatypeTypeType |p#7|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#7| |$rhs#1@0|) (M3.__default.Oracle |p#7| |st#0@@65|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6774|
 :pattern ( (M3.__default.Oracle |p#7| |st#0@@65|))
 :pattern ( (M3.__default.GetSt |p#7| |$rhs#1@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1@0|) ($Box DatatypeTypeType |p#7|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#7|)))
)))))) (=> (=> false (=> (|M3.__default.Extends#canCall| |st#0@@65| |$rhs#1@0|) (or (M3.__default.Extends |st#0@@65| |$rhs#1@0|) (forall ((|p#7@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#7@@0| Tclass.M3.Path) (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#7@@0|))) (|Set#IsMember| (M3.__default.DomSt |$rhs#1@0|) ($Box DatatypeTypeType |p#7@@0|))) (|M3.Artifact#Equal| (M3.__default.GetSt |p#7@@0| |$rhs#1@0|) (M3.__default.Oracle |p#7@@0| |st#0@@65|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |6774|
 :pattern ( (M3.__default.Oracle |p#7@@0| |st#0@@65|))
 :pattern ( (M3.__default.GetSt |p#7@@0| |$rhs#1@0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |$rhs#1@0|) ($Box DatatypeTypeType |p#7@@0|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#7@@0|)))
))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (=> (M3.Expression.exprError_q |$rhs#0@0|) (|M3.Reason#Equal| (M3.Expression.r |$rhs#0@0|) |#M3.Reason.rValidity|))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@21) ($IsHeapAnchor $Heap@@21)) (=> (and (and ($Is DatatypeTypeType |prog#0@@3| Tclass.M3.Program) ($IsAlloc DatatypeTypeType |prog#0@@3| Tclass.M3.Program $Heap@@21)) (|$IsA#M3.Program| |prog#0@@3|)) (=> (and (and (and (and ($Is DatatypeTypeType |st#0@@65| Tclass.M3.State) ($IsAlloc DatatypeTypeType |st#0@@65| Tclass.M3.State $Heap@@21)) (|$IsA#M3.State| |st#0@@65|)) (and (and ($Is DatatypeTypeType |expr'#0@@1| Tclass.M3.Expression) ($IsAlloc DatatypeTypeType |expr'#0@@1| Tclass.M3.Expression $Heap@@21)) (and ($Is DatatypeTypeType |st'#0@@12| Tclass.M3.State) ($IsAlloc DatatypeTypeType |st'#0@@12| Tclass.M3.State $Heap@@21)))) (and (and (and ($Is DatatypeTypeType |result#0@@0| (Tclass.M3.Tuple Tclass.M3.Expression Tclass.M3.State)) ($IsAlloc DatatypeTypeType |result#0@@0| (Tclass.M3.Tuple Tclass.M3.Expression Tclass.M3.State) $Heap@@21)) true) (and (and ($Is DatatypeTypeType |_v2#0| Tclass.M3.Expression) ($IsAlloc DatatypeTypeType |_v2#0| Tclass.M3.Expression $Heap@@21)) true))) (=> (and (and (and (and (and ($Is DatatypeTypeType |_v3#0| Tclass.M3.State) ($IsAlloc DatatypeTypeType |_v3#0| Tclass.M3.State $Heap@@21)) true) (= 14 $FunctionContextHeight)) (and (|M3.__default.Legal#canCall| (M3.Program.stmts |prog#0@@3|)) (and (M3.__default.Legal (M3.Program.stmts |prog#0@@3|)) (or (not (= (|Seq#Length| (M3.Program.stmts |prog#0@@3|)) 0)) (not true))))) (and (and (|M3.__default.ValidState#canCall| |st#0@@65|) (and (M3.__default.ValidState |st#0@@65|) (forall ((|p#4| T@U) ) (!  (=> ($Is DatatypeTypeType |p#4| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#4|)) (M3.__default.WellFounded |p#4|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |6770|
 :pattern ( (M3.__default.WellFounded |p#4|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@65|) ($Box DatatypeTypeType |p#4|)))
)))) (= (ControlFlow 0 11) 2))) anon0_correct))))))
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
