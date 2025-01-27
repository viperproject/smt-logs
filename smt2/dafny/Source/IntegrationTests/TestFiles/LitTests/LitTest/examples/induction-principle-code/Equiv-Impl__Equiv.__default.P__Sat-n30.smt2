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
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.Utils.Result () T@U)
(declare-fun Tagclass.Equiv.MValue () T@U)
(declare-fun Tagclass.Equiv.MState () T@U)
(declare-fun Tagclass.AST.Expr () T@U)
(declare-fun Tagclass.Equiv.VS () T@U)
(declare-fun Tagclass.AST.BinOp () T@U)
(declare-fun Tagclass.AST.Expr__Raw () T@U)
(declare-fun |##Equiv.MState.MState| () T@U)
(declare-fun |##Equiv.MValue.MValue| () T@U)
(declare-fun |##Equiv.MSeqValue.MSeqValue| () T@U)
(declare-fun Tagclass.Equiv.MSeqValue () T@U)
(declare-fun |##Utils.Result.Success| () T@U)
(declare-fun |##Utils.Result.Failure| () T@U)
(declare-fun |##AST.BinOp.Add| () T@U)
(declare-fun |##AST.BinOp.Sub| () T@U)
(declare-fun |##AST.BinOp.Mul| () T@U)
(declare-fun |##AST.Expr_Raw.Var| () T@U)
(declare-fun |##AST.Expr_Raw.Literal| () T@U)
(declare-fun |##AST.Expr_Raw.Bind| () T@U)
(declare-fun |##AST.Expr_Raw.Assign| () T@U)
(declare-fun |##AST.Expr_Raw.If| () T@U)
(declare-fun |##AST.Expr_Raw.Op| () T@U)
(declare-fun |##AST.Expr_Raw.Seq| () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Result () T@U)
(declare-fun tytagFamily$MValue () T@U)
(declare-fun tytagFamily$MState () T@U)
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$VS () T@U)
(declare-fun tytagFamily$BinOp () T@U)
(declare-fun tytagFamily$Expr_Raw () T@U)
(declare-fun tytagFamily$MSeqValue () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun Equiv.__default.EqResultSeq (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |Equiv.__default.EqResultSeq#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.Utils.Result (T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Utils.Result.Success_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Utils.Result.value (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun SeqType () T@T)
(declare-fun |Equiv.__default.EqSeqValue#canCall| (T@U T@U) Bool)
(declare-fun Equiv.__default.EqSeqValue (T@U T@U) Bool)
(declare-fun |Equiv.__default.EqCtx#canCall| (T@U T@U) Bool)
(declare-fun Equiv.__default.EqCtx (Bool T@U T@U) Bool)
(declare-fun reveal_Equiv._default.EqCtx () Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#AST.Expr_Raw.Bind| (T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |#Equiv.MSeqValue.MSeqValue| (T@U T@U) T@U)
(declare-fun |#AST.Expr_Raw.Assign| (T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |#AST.Expr_Raw.If| (T@U T@U T@U) T@U)
(declare-fun Tclass.AST.Expr__Raw () T@U)
(declare-fun |#AST.Expr_Raw.Op| (T@U T@U T@U) T@U)
(declare-fun Tclass.AST.BinOp () T@U)
(declare-fun |$IsA#Equiv.MState| (T@U) Bool)
(declare-fun Equiv.MState.MState_q (T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun Equiv.__default.AssignState (T@U T@U T@U) T@U)
(declare-fun |Equiv.__default.AssignState#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass.Equiv.MState () T@U)
(declare-fun Tclass.Equiv.VS () T@U)
(declare-fun Equiv.__default.UpdateState__Pre (T@U T@U T@U) Bool)
(declare-fun Equiv.MSeqValue.MSeqValue_q (T@U) Bool)
(declare-fun |Interp.__default.VarsAndValuesToContext#canCall| (T@U T@U) Bool)
(declare-fun Equiv.MSeqValue.vs (T@U) T@U)
(declare-fun Equiv.MSeqValue.vs_k (T@U) T@U)
(declare-fun Equiv.MState.ctx_k (T@U) T@U)
(declare-fun Equiv.MState.ctx (T@U) T@U)
(declare-fun Interp.__default.VarsAndValuesToContext (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |Map#Merge| (T@U T@U) T@U)
(declare-fun |#Equiv.MState.MState| (T@U T@U) T@U)
(declare-fun Interp.__default.InterpExprs (T@U T@U T@U) T@U)
(declare-fun |Interp.__default.InterpExprs#canCall| (T@U T@U) Bool)
(declare-fun Tclass.AST.Expr () T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Interp.__default.InterpExpr#canCall| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Interp.__default.InterpExpr (T@U T@U T@U) T@U)
(declare-fun |Utils.Result.IsFailure#canCall| (T@U T@U) Bool)
(declare-fun Utils.Result.IsFailure (T@U T@U) Bool)
(declare-fun |Utils.Result.PropagateFailure#canCall| (T@U T@U T@U) Bool)
(declare-fun |Utils.Result.Extract#canCall| (T@U T@U) Bool)
(declare-fun Utils.Result.Extract (T@U T@U) T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |#Utils.Result.Success| (T@U) T@U)
(declare-fun Utils.Result.PropagateFailure (T@U T@U T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Utils.Result#Equal| (T@U T@U) Bool)
(declare-fun |AST.Expr__Raw#Equal| (T@U T@U) Bool)
(declare-fun AST.Expr__Raw.Literal_q (T@U) Bool)
(declare-fun AST.Expr__Raw.n (T@U) Int)
(declare-fun |#AST.Expr_Raw.Var| (T@U) T@U)
(declare-fun |#AST.Expr_Raw.Seq| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#9| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun AST.Expr__Raw.bvars (T@U) T@U)
(declare-fun AST.Expr__Raw.bvals (T@U) T@U)
(declare-fun AST.Expr__Raw.body (T@U) T@U)
(declare-fun AST.Expr__Raw.cond (T@U) T@U)
(declare-fun AST.Expr__Raw.thn (T@U) T@U)
(declare-fun AST.Expr__Raw.els (T@U) T@U)
(declare-fun AST.Expr__Raw.op (T@U) T@U)
(declare-fun AST.Expr__Raw.oe1 (T@U) T@U)
(declare-fun AST.Expr__Raw.oe2 (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun Equiv.__default.P__Succ (T@U T@U T@U T@U) Bool)
(declare-fun |Equiv.__default.P__Succ#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Tclass.Equiv.MValue () T@U)
(declare-fun |Equiv.__default.Inv#canCall| (T@U) Bool)
(declare-fun Equiv.__default.Inv (T@U) Bool)
(declare-fun |Equiv.__default.EqResult#canCall| (T@U T@U) Bool)
(declare-fun Equiv.__default.EqResult (T@U T@U) Bool)
(declare-fun |$IsA#Utils.Result| (T@U) Bool)
(declare-fun Equiv.MValue.MValue_q (T@U) Bool)
(declare-fun Equiv.MValue.v (T@U) Int)
(declare-fun Equiv.MValue.v_k (T@U) Int)
(declare-fun AST.Expr__Raw.WellFormed__Single (T@U) Bool)
(declare-fun |AST.Expr__Raw.WellFormed__Single#canCall| (T@U) Bool)
(declare-fun AST.Expr__Raw.Var_q (T@U) Bool)
(declare-fun AST.Expr__Raw.Bind_q (T@U) Bool)
(declare-fun AST.Expr__Raw.Assign_q (T@U) Bool)
(declare-fun AST.Expr__Raw.avals (T@U) T@U)
(declare-fun AST.Expr__Raw.avars (T@U) T@U)
(declare-fun AST.Expr__Raw.If_q (T@U) Bool)
(declare-fun AST.Expr__Raw.Op_q (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Utils.Result.Failure_q (T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun Equiv.__default.BindStartScope (T@U T@U T@U) T@U)
(declare-fun |Equiv.__default.BindStartScope#canCall| (T@U T@U T@U) Bool)
(declare-fun |#Utils.Result.Failure| () T@U)
(declare-fun |#AST.BinOp.Add| () T@U)
(declare-fun |#AST.BinOp.Sub| () T@U)
(declare-fun |#AST.BinOp.Mul| () T@U)
(declare-fun Equiv.__default.P__Step (T@U T@U) T@U)
(declare-fun |Equiv.__default.P__Step#canCall| (T@U T@U) Bool)
(declare-fun Equiv.__default.P (T@U T@U) Bool)
(declare-fun Equiv.__default.P__Fail (T@U T@U) Bool)
(declare-fun |#Equiv.MValue.MValue| (Int Int) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun Tclass.Equiv.MSeqValue () T@U)
(declare-fun AST.Expr__Raw.WellFormed (T@U) Bool)
(declare-fun |AST.Expr__Raw.WellFormed#canCall| (T@U) Bool)
(declare-fun |AST.Expr__Raw.All#canCall| (T@U T@U) Bool)
(declare-fun |AST.Expr__Raw.WellFormed__Single#Handle| () T@U)
(declare-fun AST.Expr__Raw.All (T@U T@U T@U) Bool)
(declare-fun |AST.BinOp#Equal| (T@U T@U) Bool)
(declare-fun Equiv.__default.Pes__Step (T@U T@U) T@U)
(declare-fun |Equiv.__default.Pes__Step#canCall| (T@U T@U) Bool)
(declare-fun Equiv.__default.Pes (T@U T@U) Bool)
(declare-fun Equiv.__default.Pes__Fail (T@U T@U) Bool)
(declare-fun |Equiv.__default.P#canCall| (T@U T@U) Bool)
(declare-fun |Equiv.__default.EqValue#canCall| (Int Int) Bool)
(declare-fun Equiv.__default.EqValue (Int Int) Bool)
(declare-fun |Equiv.MState#Equal| (T@U T@U) Bool)
(declare-fun Interp.__default.InterpBinOp (T@U Int Int) Int)
(declare-fun |Interp.__default.InterpBinOp#canCall| (T@U Int Int) Bool)
(declare-fun AST.BinOp.Add_q (T@U) Bool)
(declare-fun AST.BinOp.Sub_q (T@U) Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun AST.Expr__Raw.es (T@U) T@U)
(declare-fun AST.Expr__Raw.name (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Subtract| (T@U T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |Equiv.__default.Pes#canCall| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Equiv.__default.BindEndScope (T@U T@U T@U) T@U)
(declare-fun |Equiv.__default.BindEndScope#canCall| (T@U T@U T@U) Bool)
(declare-fun |Equiv.__default.P__Fail#canCall| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |$IsA#AST.Expr__Raw| (T@U) Bool)
(declare-fun AST.Expr__Raw.Seq_q (T@U) Bool)
(declare-fun AST.BinOp.Mul_q (T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Equiv.__default.Pes__Fail#canCall| (T@U T@U) Bool)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#AST.Expr_Raw.Literal| (Int) T@U)
(declare-fun Equiv.__default.Zero () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun Equiv.__default.Pes__Succ (T@U T@U T@U T@U) Bool)
(declare-fun |Equiv.__default.Pes__Succ#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |Equiv.__default.UpdateState__Pre#canCall| (T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun |AST.Expr__Raw.WellFormed__Single#requires| (T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.Utils.Result_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSet TagSeq TagMap alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.Utils.Result Tagclass.Equiv.MValue Tagclass.Equiv.MState Tagclass.AST.Expr Tagclass.Equiv.VS Tagclass.AST.BinOp Tagclass.AST.Expr__Raw |##Equiv.MState.MState| |##Equiv.MValue.MValue| |##Equiv.MSeqValue.MSeqValue| Tagclass.Equiv.MSeqValue |##Utils.Result.Success| |##Utils.Result.Failure| |##AST.BinOp.Add| |##AST.BinOp.Sub| |##AST.BinOp.Mul| |##AST.Expr_Raw.Var| |##AST.Expr_Raw.Literal| |##AST.Expr_Raw.Bind| |##AST.Expr_Raw.Assign| |##AST.Expr_Raw.If| |##AST.Expr_Raw.Op| |##AST.Expr_Raw.Seq| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| |tytagFamily$_tuple#2| tytagFamily$Result tytagFamily$MValue tytagFamily$MState tytagFamily$Expr tytagFamily$VS tytagFamily$BinOp tytagFamily$Expr_Raw tytagFamily$MSeqValue)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert  (and (and (= (Ctor DatatypeTypeType) 3) (= (Ctor MapType) 4)) (= (Ctor SeqType) 5)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|res#0| T@U) (|res'#0| T@U) ) (!  (=> (or (|Equiv.__default.EqResultSeq#canCall| (Lit DatatypeTypeType |res#0|) (Lit DatatypeTypeType |res'#0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |res#0| (Tclass.Utils.Result (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)))) ($Is DatatypeTypeType |res'#0| (Tclass.Utils.Result (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt))))))) (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|))))) (=> (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Success_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|))))))))))) (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|))))) (=> (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Success_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|))))))))))) (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|))))) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))))))) (let ((|ctx'#3| (Lit MapType ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))))))))))
 (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|))))) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))))))) (let ((|vs'#3| (Lit SeqType ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))))))))))
 (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|))))) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))))))) (let ((|ctx#3| (Lit MapType ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))))))))))
 (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|))))) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))))))) (let ((|vs#3| (Lit SeqType ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))))))))))
 (and (|Equiv.__default.EqSeqValue#canCall| |vs#3| |vs'#3|) (=> (Equiv.__default.EqSeqValue |vs#3| |vs'#3|) (|Equiv.__default.EqCtx#canCall| |ctx#3| |ctx'#3|))))))))))))))) (= (Equiv.__default.EqResultSeq (Lit DatatypeTypeType |res#0|) (Lit DatatypeTypeType |res'#0|)) (ite (Utils.Result.Success_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))) (ite (Utils.Result.Success_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))) (let ((|ctx'#2| (Lit MapType ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))))))))))
(let ((|vs'#2| (Lit SeqType ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))))))))))
(let ((|ctx#2| (Lit MapType ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))))))))))
(let ((|vs#2| (Lit SeqType ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0|)))))))))))))))
 (and (Equiv.__default.EqSeqValue |vs#2| |vs'#2|) (Equiv.__default.EqCtx reveal_Equiv._default.EqCtx |ctx#2| |ctx'#2|)))))) false) true))))
 :qid |Equivdfy.45:31|
 :weight 3
 :skolemid |674|
 :pattern ( (Equiv.__default.EqResultSeq (Lit DatatypeTypeType |res#0|) (Lit DatatypeTypeType |res'#0|)))
))))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#39#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#39#0#0| i))) (DtRank (|#AST.Expr_Raw.Bind| |a#39#0#0| |a#39#1#0| |a#39#2#0|))))
 :qid |ASTdfy.17:12|
 :skolemid |1055|
 :pattern ( (|Seq#Index| |a#39#0#0| i) (|#AST.Expr_Raw.Bind| |a#39#0#0| |a#39#1#0| |a#39#2#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) (|a#42#2#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#42#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#42#1#0| i@@0))) (DtRank (|#AST.Expr_Raw.Bind| |a#42#0#0| |a#42#1#0| |a#42#2#0|))))
 :qid |ASTdfy.17:12|
 :skolemid |1058|
 :pattern ( (|Seq#Index| |a#42#1#0| i@@0) (|#AST.Expr_Raw.Bind| |a#42#0#0| |a#42#1#0| |a#42#2#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#21#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#21#0#0| i@@1))) (DtRank (|#Equiv.MSeqValue.MSeqValue| |a#21#0#0| |a#21#1#0|))))
 :qid |Equivdfy.64:34|
 :skolemid |929|
 :pattern ( (|Seq#Index| |a#21#0#0| i@@1) (|#Equiv.MSeqValue.MSeqValue| |a#21#0#0| |a#21#1#0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| |a#24#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#24#1#0| i@@2))) (DtRank (|#Equiv.MSeqValue.MSeqValue| |a#24#0#0| |a#24#1#0|))))
 :qid |Equivdfy.64:34|
 :skolemid |932|
 :pattern ( (|Seq#Index| |a#24#1#0| i@@2) (|#Equiv.MSeqValue.MSeqValue| |a#24#0#0| |a#24#1#0|))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| |a#51#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#51#0#0| i@@3))) (DtRank (|#AST.Expr_Raw.Assign| |a#51#0#0| |a#51#1#0|))))
 :qid |ASTdfy.18:14|
 :skolemid |1071|
 :pattern ( (|Seq#Index| |a#51#0#0| i@@3) (|#AST.Expr_Raw.Assign| |a#51#0#0| |a#51#1#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| |a#54#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#54#1#0| i@@4))) (DtRank (|#AST.Expr_Raw.Assign| |a#54#0#0| |a#54#1#0|))))
 :qid |ASTdfy.18:14|
 :skolemid |1074|
 :pattern ( (|Seq#Index| |a#54#1#0| i@@4) (|#AST.Expr_Raw.Assign| |a#54#0#0| |a#54#1#0|))
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
(assert (forall ((|a#58#0#0| T@U) (|a#58#1#0| T@U) (|a#58#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.If| |a#58#0#0| |a#58#1#0| |a#58#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is DatatypeTypeType |a#58#0#0| Tclass.AST.Expr__Raw) ($Is DatatypeTypeType |a#58#1#0| Tclass.AST.Expr__Raw)) ($Is DatatypeTypeType |a#58#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.19:10|
 :skolemid |1080|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.If| |a#58#0#0| |a#58#1#0| |a#58#2#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((|a#68#0#0| T@U) (|a#68#1#0| T@U) (|a#68#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Op| |a#68#0#0| |a#68#1#0| |a#68#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is DatatypeTypeType |a#68#0#0| Tclass.AST.BinOp) ($Is DatatypeTypeType |a#68#1#0| Tclass.AST.Expr__Raw)) ($Is DatatypeTypeType |a#68#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.20:10|
 :skolemid |1095|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Op| |a#68#0#0| |a#68#1#0| |a#68#2#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#Equiv.MState| d) (Equiv.MState.MState_q d))
 :qid |unknown.0:0|
 :skolemid |900|
 :pattern ( (|$IsA#Equiv.MState| d))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0| T@U) (|vars#0| T@U) (|vals#0| T@U) ) (!  (=> (or (|Equiv.__default.AssignState#canCall| |st#0| |vars#0| |vals#0|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0| Tclass.Equiv.MState) ($Is SeqType |vars#0| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0| Tclass.Equiv.VS)) (Equiv.__default.UpdateState__Pre |st#0| |vars#0| |vals#0|)))) (and (and (and (Equiv.MSeqValue.MSeqValue_q |vals#0|) (|Interp.__default.VarsAndValuesToContext#canCall| |vars#0| (Equiv.MSeqValue.vs |vals#0|))) (and (Equiv.MSeqValue.MSeqValue_q |vals#0|) (|Interp.__default.VarsAndValuesToContext#canCall| |vars#0| (Equiv.MSeqValue.vs_k |vals#0|)))) (= (Equiv.__default.AssignState |st#0| |vars#0| |vals#0|) (let ((|ctx'#0| (Equiv.MState.ctx_k |st#0|)))
(let ((|ctx#0| (Equiv.MState.ctx |st#0|)))
(let ((|bindings#0| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |vars#0| (Equiv.MSeqValue.vs |vals#0|))))
(let ((|bindings'#0| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |vars#0| (Equiv.MSeqValue.vs_k |vals#0|))))
(let ((|ctx1#0| (|Map#Merge| |ctx#0| |bindings#0|)))
(let ((|ctx1'#0| (|Map#Merge| |ctx'#0| |bindings'#0|)))
(let ((|st'#0| (|#Equiv.MState.MState| |ctx1#0| |ctx1'#0|)))
|st'#0|))))))))))
 :qid |Inductiondfy.54:30|
 :skolemid |762|
 :pattern ( (Equiv.__default.AssignState |st#0| |vars#0| |vals#0|))
))))
(assert (forall (($ly T@U) (|es#0| T@U) (|ctx#0@@0| T@U) ) (!  (=> (or (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0|) (Lit MapType |ctx#0@@0|)) (and ($Is SeqType |es#0| (TSeq Tclass.AST.Expr)) ($Is MapType |ctx#0@@0| (TMap (TSeq TChar) TInt)))) (and (=> (not (|Seq#Equal| |es#0| |Seq#Empty|)) (and (|Interp.__default.InterpExpr#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0|) (LitInt 0))) (Lit MapType |ctx#0@@0|)) (let ((|valueOrError0#2| (Interp.__default.InterpExpr ($LS $ly) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0|) (LitInt 0))) (Lit MapType |ctx#0@@0|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2|) (let ((|ctx1#2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2|))))))
 (and (|Interp.__default.InterpExprs#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0|) (LitInt 1))) |ctx1#2|) (let ((|valueOrError1#2| (Interp.__default.InterpExprs ($LS $ly) (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0|) (LitInt 1))) |ctx1#2|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2|)))))))))))) (= (Interp.__default.InterpExprs ($LS $ly) (Lit SeqType |es#0|) (Lit MapType |ctx#0@@0|)) (ite (|Seq#Equal| |es#0| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box MapType (Lit MapType |ctx#0@@0|)))))) (let ((|valueOrError0#2@@0| (Interp.__default.InterpExpr ($LS $ly) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0|) (LitInt 0))) (Lit MapType |ctx#0@@0|))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2@@0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2@@0|) (let ((|ctx1#2@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2@@0|))))))
(let ((|v#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2@@0|)))))))
(let ((|valueOrError1#2@@0| (Interp.__default.InterpExprs ($LS $ly) (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0|) (LitInt 1))) |ctx1#2@@0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2@@0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2@@0|) (let ((|ctx2#2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2@@0|))))))
(let ((|vs#2@@0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2@@0|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |v#2|))) |vs#2@@0|)) ($Box MapType |ctx2#2|))))))))))))))))
 :qid |Interpdfy.69:12|
 :weight 3
 :skolemid |1209|
 :pattern ( (Interp.__default.InterpExprs ($LS $ly) (Lit SeqType |es#0|) (Lit MapType |ctx#0@@0|)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (Utils.Result.Success_q a@@1) (Utils.Result.Success_q b@@1)) (= (|Utils.Result#Equal| a@@1 b@@1) (= (Utils.Result.value a@@1) (Utils.Result.value b@@1))))
 :qid |unknown.0:0|
 :skolemid |975|
 :pattern ( (|Utils.Result#Equal| a@@1 b@@1) (Utils.Result.Success_q a@@1))
 :pattern ( (|Utils.Result#Equal| a@@1 b@@1) (Utils.Result.Success_q b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (AST.Expr__Raw.Literal_q a@@2) (AST.Expr__Raw.Literal_q b@@2)) (= (|AST.Expr__Raw#Equal| a@@2 b@@2) (= (AST.Expr__Raw.n a@@2) (AST.Expr__Raw.n b@@2))))
 :qid |unknown.0:0|
 :skolemid |1120|
 :pattern ( (|AST.Expr__Raw#Equal| a@@2 b@@2) (AST.Expr__Raw.Literal_q a@@2))
 :pattern ( (|AST.Expr__Raw#Equal| a@@2 b@@2) (AST.Expr__Raw.Literal_q b@@2))
)))
(assert (forall ((|a#27#0#0| T@U) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| |a#27#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#27#0#0| i@@5))) (DtRank (|#AST.Expr_Raw.Var| |a#27#0#0|))))
 :qid |ASTdfy.15:11|
 :skolemid |1035|
 :pattern ( (|Seq#Index| |a#27#0#0| i@@5) (|#AST.Expr_Raw.Var| |a#27#0#0|))
)))
(assert (forall ((|a#81#0#0| T@U) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| |a#81#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#81#0#0| i@@6))) (DtRank (|#AST.Expr_Raw.Seq| |a#81#0#0|))))
 :qid |ASTdfy.21:11|
 :skolemid |1114|
 :pattern ( (|Seq#Index| |a#81#0#0| i@@6) (|#AST.Expr_Raw.Seq| |a#81#0#0|))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#9| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Seq#Contains| |l#1| |$y#0|)))
 :qid |unknown.0:0|
 :skolemid |1217|
 :pattern ( (MapType0Select BoxType boolType (|lambda#9| |l#0| |l#1|) |$y#0|))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Bind| |a#34#0#0| |a#34#1#0| |a#34#2#0|)) |##AST.Expr_Raw.Bind|)
 :qid |ASTdfy.17:12|
 :skolemid |1045|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#34#0#0| |a#34#1#0| |a#34#2#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) ) (! (= (AST.Expr__Raw.bvars (|#AST.Expr_Raw.Bind| |a#38#0#0| |a#38#1#0| |a#38#2#0|)) |a#38#0#0|)
 :qid |ASTdfy.17:12|
 :skolemid |1054|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#38#0#0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) ) (! (= (AST.Expr__Raw.bvals (|#AST.Expr_Raw.Bind| |a#41#0#0| |a#41#1#0| |a#41#2#0|)) |a#41#1#0|)
 :qid |ASTdfy.17:12|
 :skolemid |1057|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#41#0#0| |a#41#1#0| |a#41#2#0|))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) (|a#44#2#0| T@U) ) (! (= (AST.Expr__Raw.body (|#AST.Expr_Raw.Bind| |a#44#0#0| |a#44#1#0| |a#44#2#0|)) |a#44#2#0|)
 :qid |ASTdfy.17:12|
 :skolemid |1060|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#44#0#0| |a#44#1#0| |a#44#2#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) (|a#56#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.If| |a#56#0#0| |a#56#1#0| |a#56#2#0|)) |##AST.Expr_Raw.If|)
 :qid |ASTdfy.19:10|
 :skolemid |1076|
 :pattern ( (|#AST.Expr_Raw.If| |a#56#0#0| |a#56#1#0| |a#56#2#0|))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) (|a#60#2#0| T@U) ) (! (= (AST.Expr__Raw.cond (|#AST.Expr_Raw.If| |a#60#0#0| |a#60#1#0| |a#60#2#0|)) |a#60#0#0|)
 :qid |ASTdfy.19:10|
 :skolemid |1085|
 :pattern ( (|#AST.Expr_Raw.If| |a#60#0#0| |a#60#1#0| |a#60#2#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) (|a#62#2#0| T@U) ) (! (= (AST.Expr__Raw.thn (|#AST.Expr_Raw.If| |a#62#0#0| |a#62#1#0| |a#62#2#0|)) |a#62#1#0|)
 :qid |ASTdfy.19:10|
 :skolemid |1087|
 :pattern ( (|#AST.Expr_Raw.If| |a#62#0#0| |a#62#1#0| |a#62#2#0|))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) (|a#64#2#0| T@U) ) (! (= (AST.Expr__Raw.els (|#AST.Expr_Raw.If| |a#64#0#0| |a#64#1#0| |a#64#2#0|)) |a#64#2#0|)
 :qid |ASTdfy.19:10|
 :skolemid |1089|
 :pattern ( (|#AST.Expr_Raw.If| |a#64#0#0| |a#64#1#0| |a#64#2#0|))
)))
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) (|a#66#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Op| |a#66#0#0| |a#66#1#0| |a#66#2#0|)) |##AST.Expr_Raw.Op|)
 :qid |ASTdfy.20:10|
 :skolemid |1091|
 :pattern ( (|#AST.Expr_Raw.Op| |a#66#0#0| |a#66#1#0| |a#66#2#0|))
)))
(assert (forall ((|a#70#0#0| T@U) (|a#70#1#0| T@U) (|a#70#2#0| T@U) ) (! (= (AST.Expr__Raw.op (|#AST.Expr_Raw.Op| |a#70#0#0| |a#70#1#0| |a#70#2#0|)) |a#70#0#0|)
 :qid |ASTdfy.20:10|
 :skolemid |1100|
 :pattern ( (|#AST.Expr_Raw.Op| |a#70#0#0| |a#70#1#0| |a#70#2#0|))
)))
(assert (forall ((|a#72#0#0| T@U) (|a#72#1#0| T@U) (|a#72#2#0| T@U) ) (! (= (AST.Expr__Raw.oe1 (|#AST.Expr_Raw.Op| |a#72#0#0| |a#72#1#0| |a#72#2#0|)) |a#72#1#0|)
 :qid |ASTdfy.20:10|
 :skolemid |1102|
 :pattern ( (|#AST.Expr_Raw.Op| |a#72#0#0| |a#72#1#0| |a#72#2#0|))
)))
(assert (forall ((|a#74#0#0| T@U) (|a#74#1#0| T@U) (|a#74#2#0| T@U) ) (! (= (AST.Expr__Raw.oe2 (|#AST.Expr_Raw.Op| |a#74#0#0| |a#74#1#0| |a#74#2#0|)) |a#74#2#0|)
 :qid |ASTdfy.20:10|
 :skolemid |1104|
 :pattern ( (|#AST.Expr_Raw.Op| |a#74#0#0| |a#74#1#0| |a#74#2#0|))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@3 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@3 b@@3) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@3 b@@3) (|Set#IsMember| b@@3 y@@1))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@0| T@U) (|e#0| T@U) (|st'#0@@0| T@U) (|v#0| T@U) ) (!  (=> (or (|Equiv.__default.P__Succ#canCall| |st#0@@0| |e#0| |st'#0@@0| |v#0|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@0| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0| Tclass.AST.Expr)) ($Is DatatypeTypeType |st'#0@@0| Tclass.Equiv.MState)) ($Is DatatypeTypeType |v#0| Tclass.Equiv.MValue)))) (and (and (and (Equiv.MState.MState_q |st#0@@0|) (|Interp.__default.InterpExpr#canCall| |e#0| (Equiv.MState.ctx |st#0@@0|))) (let ((|res#0@@0| (Interp.__default.InterpExpr ($LS $LZ) |e#0| (Equiv.MState.ctx |st#0@@0|))))
 (and (and (Equiv.MState.MState_q |st#0@@0|) (|Interp.__default.InterpExpr#canCall| |e#0| (Equiv.MState.ctx_k |st#0@@0|))) (let ((|res'#0@@0| (Interp.__default.InterpExpr ($LS $LZ) |e#0| (Equiv.MState.ctx_k |st#0@@0|))))
 (and (|Equiv.__default.Inv#canCall| |st#0@@0|) (=> (Equiv.__default.Inv |st#0@@0|) (and (|Equiv.__default.EqResult#canCall| |res#0@@0| |res'#0@@0|) (=> (Equiv.__default.EqResult |res#0@@0| |res'#0@@0|) (and (and (|$IsA#Utils.Result| |res#0@@0|) (and (Equiv.MValue.MValue_q |v#0|) (Equiv.MState.MState_q |st'#0@@0|))) (=> (|Utils.Result#Equal| |res#0@@0| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Equiv.MValue.v |v#0|))) ($Box MapType (Equiv.MState.ctx |st'#0@@0|)))))) (and (|$IsA#Utils.Result| |res'#0@@0|) (and (Equiv.MValue.MValue_q |v#0|) (Equiv.MState.MState_q |st'#0@@0|))))))))))))) (= (Equiv.__default.P__Succ |st#0@@0| |e#0| |st'#0@@0| |v#0|) (let ((|res#0@@1| (Interp.__default.InterpExpr ($LS $LZ) |e#0| (Equiv.MState.ctx |st#0@@0|))))
(let ((|res'#0@@1| (Interp.__default.InterpExpr ($LS $LZ) |e#0| (Equiv.MState.ctx_k |st#0@@0|))))
 (and (and (and (Equiv.__default.Inv |st#0@@0|) (Equiv.__default.EqResult |res#0@@1| |res'#0@@1|)) (|Utils.Result#Equal| |res#0@@1| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Equiv.MValue.v |v#0|))) ($Box MapType (Equiv.MState.ctx |st'#0@@0|))))))) (|Utils.Result#Equal| |res'#0@@1| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Equiv.MValue.v_k |v#0|))) ($Box MapType (Equiv.MState.ctx_k |st'#0@@0|))))))))))))
 :qid |Inductiondfy.35:26|
 :skolemid |697|
 :pattern ( (Equiv.__default.P__Succ |st#0@@0| |e#0| |st'#0@@0| |v#0|))
))))
(assert (forall ((|e#0@@0| T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed__Single#canCall| |e#0@@0|) ($Is DatatypeTypeType |e#0@@0| Tclass.AST.Expr__Raw)) (= (AST.Expr__Raw.WellFormed__Single |e#0@@0|) (ite (AST.Expr__Raw.Var_q |e#0@@0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q |e#0@@0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q |e#0@@0|) (let ((|bvals#0| (AST.Expr__Raw.bvals |e#0@@0|)))
(let ((|bvars#0| (AST.Expr__Raw.bvars |e#0@@0|)))
(= (|Seq#Length| |bvars#0|) (|Seq#Length| |bvals#0|)))) (ite (AST.Expr__Raw.Assign_q |e#0@@0|) (let ((|avals#0| (AST.Expr__Raw.avals |e#0@@0|)))
(let ((|avars#0| (AST.Expr__Raw.avars |e#0@@0|)))
(= (|Seq#Length| |avars#0|) (|Seq#Length| |avals#0|)))) (ite (AST.Expr__Raw.If_q |e#0@@0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Op_q |e#0@@0|) (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
 :qid |ASTdfy.71:46|
 :skolemid |1180|
 :pattern ( (AST.Expr__Raw.WellFormed__Single |e#0@@0|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@0))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall (($Heap T@U) (Utils.Result$T T@U) (Utils.Result.PropagateFailure$U T@U) (this T@U) ) (!  (=> (and (or (|Utils.Result.PropagateFailure#canCall| Utils.Result$T Utils.Result.PropagateFailure$U this) (and ($IsAlloc DatatypeTypeType this (Tclass.Utils.Result Utils.Result$T) $Heap) (Utils.Result.Failure_q this))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (Utils.Result.PropagateFailure Utils.Result$T Utils.Result.PropagateFailure$U this) (Tclass.Utils.Result Utils.Result.PropagateFailure$U) $Heap))
 :qid |Utilsdfy.29:14|
 :skolemid |983|
 :pattern ( ($IsAlloc DatatypeTypeType (Utils.Result.PropagateFailure Utils.Result$T Utils.Result.PropagateFailure$U this) (Tclass.Utils.Result Utils.Result.PropagateFailure$U) $Heap))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@1| T@U) (|vars#0@@0| T@U) (|vals#0@@0| T@U) ) (!  (=> (or (|Equiv.__default.BindStartScope#canCall| |st#0@@1| |vars#0@@0| |vals#0@@0|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@1| Tclass.Equiv.MState) ($Is SeqType |vars#0@@0| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@0| Tclass.Equiv.VS)) (Equiv.__default.UpdateState__Pre |st#0@@1| |vars#0@@0| |vals#0@@0|)))) (and (|Equiv.__default.AssignState#canCall| |st#0@@1| |vars#0@@0| |vals#0@@0|) (= (Equiv.__default.BindStartScope |st#0@@1| |vars#0@@0| |vals#0@@0|) (Equiv.__default.AssignState |st#0@@1| |vars#0@@0| |vals#0@@0|))))
 :qid |Inductiondfy.58:33|
 :skolemid |775|
 :pattern ( (Equiv.__default.BindStartScope |st#0@@1| |vars#0@@0| |vals#0@@0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#Utils.Result.Failure|) |##Utils.Result.Failure|))
(assert (= (DatatypeCtorId |#AST.BinOp.Add|) |##AST.BinOp.Add|))
(assert (= (DatatypeCtorId |#AST.BinOp.Sub|) |##AST.BinOp.Sub|))
(assert (= (DatatypeCtorId |#AST.BinOp.Mul|) |##AST.BinOp.Mul|))
(assert (forall ((s@@0 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@0 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@4 b@@4) b@@4) (|Set#Union| a@@4 b@@4))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@4 b@@4) b@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (o@@0 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@5 b@@5) o@@0)  (and (|Set#IsMember| a@@5 o@@0) (not (|Set#IsMember| b@@5 o@@0))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@5 b@@5) o@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@2| T@U) (|e#0@@1| T@U) ) (!  (=> (or (|Equiv.__default.P__Step#canCall| |st#0@@2| |e#0@@1|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@2| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0@@1| Tclass.AST.Expr)) (and (Equiv.__default.P |st#0@@2| |e#0@@1|) (not (Equiv.__default.P__Fail |st#0@@2| |e#0@@1|)))))) (and (and (and (Equiv.MState.MState_q |st#0@@2|) (|Interp.__default.InterpExpr#canCall| |e#0@@1| (Equiv.MState.ctx |st#0@@2|))) (and (Equiv.MState.MState_q |st#0@@2|) (|Interp.__default.InterpExpr#canCall| |e#0@@1| (Equiv.MState.ctx_k |st#0@@2|)))) (= (Equiv.__default.P__Step |st#0@@2| |e#0@@1|) (let ((|ctx1#0@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExpr ($LS $LZ) |e#0@@1| (Equiv.MState.ctx |st#0@@2|))))))))
(let ((|v#0@@0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExpr ($LS $LZ) |e#0@@1| (Equiv.MState.ctx |st#0@@2|)))))))))
(let ((|ctx1'#0@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExpr ($LS $LZ) |e#0@@1| (Equiv.MState.ctx_k |st#0@@2|))))))))
(let ((|v'#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExpr ($LS $LZ) |e#0@@1| (Equiv.MState.ctx_k |st#0@@2|)))))))))
(|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#Equiv.MState.MState| |ctx1#0@@0| |ctx1'#0@@0|)) ($Box DatatypeTypeType (|#Equiv.MValue.MValue| |v#0@@0| |v'#0|))))))))))
 :qid |Inductiondfy.66:25|
 :skolemid |792|
 :pattern ( (Equiv.__default.P__Step |st#0@@2| |e#0@@1|))
))))
(assert (= (Ctor HandleTypeType) 7))
(assert (forall ((f T@U) (t0@@0 T@U) (t1@@0 T@U) (u0@@0 T@U) (u1@@0 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@0 t1@@0)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0@@0) ($IsBox bx t0@@0))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx u0@@0))
 :pattern ( ($IsBox bx t0@@0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1@@0) ($IsBox bx@@0 u1@@0))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@0 t1@@0))
 :pattern ( ($IsBox bx@@0 u1@@0))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@0 u1@@0)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@0 t1@@0)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@0 u1@@0)))
)))
(assert (forall ((s@@1 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@1)) (and (= (|Seq#Take| (|Seq#Append| s@@1 t) n@@0) s@@1) (= (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@1 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0))
)))
(assert (forall ((Utils.Result$T@@0 T@U) (Utils.Result.PropagateFailure$U@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|Utils.Result.PropagateFailure#canCall| Utils.Result$T@@0 Utils.Result.PropagateFailure$U@@0 this@@0) (and ($Is DatatypeTypeType this@@0 (Tclass.Utils.Result Utils.Result$T@@0)) (Utils.Result.Failure_q this@@0))) ($Is DatatypeTypeType (Utils.Result.PropagateFailure Utils.Result$T@@0 Utils.Result.PropagateFailure$U@@0 this@@0) (Tclass.Utils.Result Utils.Result.PropagateFailure$U@@0)))
 :qid |unknown.0:0|
 :skolemid |982|
 :pattern ( (Utils.Result.PropagateFailure Utils.Result$T@@0 Utils.Result.PropagateFailure$U@@0 this@@0))
)))
(assert (forall ((|vs#0| T@U) ($h T@U) ) (! (= ($IsAlloc DatatypeTypeType |vs#0| Tclass.Equiv.VS $h) ($IsAlloc DatatypeTypeType |vs#0| Tclass.Equiv.MSeqValue $h))
 :qid |unknown.0:0|
 :skolemid |940|
 :pattern ( ($IsAlloc DatatypeTypeType |vs#0| Tclass.Equiv.VS $h))
)))
(assert (forall ((|e#0@@2| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc DatatypeTypeType |e#0@@2| Tclass.AST.Expr $h@@0) ($IsAlloc DatatypeTypeType |e#0@@2| Tclass.AST.Expr__Raw $h@@0))
 :qid |unknown.0:0|
 :skolemid |1191|
 :pattern ( ($IsAlloc DatatypeTypeType |e#0@@2| Tclass.AST.Expr $h@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@3| T@U) (|e#0@@3| T@U) (|st'#0@@1| T@U) (|v#0@@1| T@U) ) (!  (=> (or (|Equiv.__default.P__Succ#canCall| (Lit DatatypeTypeType |st#0@@3|) (Lit DatatypeTypeType |e#0@@3|) (Lit DatatypeTypeType |st'#0@@1|) (Lit DatatypeTypeType |v#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@3| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0@@3| Tclass.AST.Expr)) ($Is DatatypeTypeType |st'#0@@1| Tclass.Equiv.MState)) ($Is DatatypeTypeType |v#0@@1| Tclass.Equiv.MValue)))) (and (and (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@3|)) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@3|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@3|))))) (let ((|res#2| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@3|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@3|)))))))
 (and (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@3|)) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@3|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@3|))))) (let ((|res'#2| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@3|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@3|)))))))
 (and (|Equiv.__default.Inv#canCall| (Lit DatatypeTypeType |st#0@@3|)) (=> (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@3|))))) (and (|Equiv.__default.EqResult#canCall| |res#2| |res'#2|) (=> (Equiv.__default.EqResult |res#2| |res'#2|) (and (and (|$IsA#Utils.Result| |res#2|) (and (Equiv.MValue.MValue_q (Lit DatatypeTypeType |v#0@@1|)) (Equiv.MState.MState_q (Lit DatatypeTypeType |st'#0@@1|)))) (=> (|Utils.Result#Equal| |res#2| (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt (Equiv.MValue.v (Lit DatatypeTypeType |v#0@@1|))))) ($Box MapType (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st'#0@@1|))))))))) (and (|$IsA#Utils.Result| |res'#2|) (and (Equiv.MValue.MValue_q (Lit DatatypeTypeType |v#0@@1|)) (Equiv.MState.MState_q (Lit DatatypeTypeType |st'#0@@1|)))))))))))))) (= (Equiv.__default.P__Succ (Lit DatatypeTypeType |st#0@@3|) (Lit DatatypeTypeType |e#0@@3|) (Lit DatatypeTypeType |st'#0@@1|) (Lit DatatypeTypeType |v#0@@1|)) (let ((|res#2@@0| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@3|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@3|)))))))
(let ((|res'#2@@0| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@3|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@3|)))))))
 (and (and (and (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@3|)) (Equiv.__default.EqResult |res#2@@0| |res'#2@@0|)) (|Utils.Result#Equal| |res#2@@0| (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt (Equiv.MValue.v (Lit DatatypeTypeType |v#0@@1|))))) ($Box MapType (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st'#0@@1|)))))))))) (|Utils.Result#Equal| |res'#2@@0| (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt (Equiv.MValue.v_k (Lit DatatypeTypeType |v#0@@1|))))) ($Box MapType (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st'#0@@1|)))))))))))))))
 :qid |Inductiondfy.35:26|
 :weight 3
 :skolemid |699|
 :pattern ( (Equiv.__default.P__Succ (Lit DatatypeTypeType |st#0@@3|) (Lit DatatypeTypeType |e#0@@3|) (Lit DatatypeTypeType |st'#0@@1|) (Lit DatatypeTypeType |v#0@@1|)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass.Equiv.MState) (Equiv.MState.MState_q d@@1))
 :qid |unknown.0:0|
 :skolemid |901|
 :pattern ( (Equiv.MState.MState_q d@@1) ($Is DatatypeTypeType d@@1 Tclass.Equiv.MState))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass.Equiv.MValue) (Equiv.MValue.MValue_q d@@2))
 :qid |unknown.0:0|
 :skolemid |916|
 :pattern ( (Equiv.MValue.MValue_q d@@2) ($Is DatatypeTypeType d@@2 Tclass.Equiv.MValue))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.Equiv.MSeqValue) (Equiv.MSeqValue.MSeqValue_q d@@3))
 :qid |unknown.0:0|
 :skolemid |936|
 :pattern ( (Equiv.MSeqValue.MSeqValue_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.Equiv.MSeqValue))
)))
(assert (forall ((Utils.Result$T@@1 T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#Utils.Result.Failure| (Tclass.Utils.Result Utils.Result$T@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |972|
 :pattern ( ($IsAlloc DatatypeTypeType |#Utils.Result.Failure| (Tclass.Utils.Result Utils.Result$T@@1) $h@@1))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#48#0#0| |a#48#1#0|) Tclass.AST.Expr__Raw)  (and ($Is SeqType |a#48#0#0| (TSeq (TSeq TChar))) ($Is SeqType |a#48#1#0| (TSeq Tclass.AST.Expr__Raw))))
 :qid |ASTdfy.18:14|
 :skolemid |1066|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#48#0#0| |a#48#1#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#36#0#0| |a#36#1#0| |a#36#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is SeqType |a#36#0#0| (TSeq (TSeq TChar))) ($Is SeqType |a#36#1#0| (TSeq Tclass.AST.Expr__Raw))) ($Is DatatypeTypeType |a#36#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.17:12|
 :skolemid |1049|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#36#0#0| |a#36#1#0| |a#36#2#0|) Tclass.AST.Expr__Raw))
)))
(assert ($Is DatatypeTypeType |#AST.BinOp.Add| Tclass.AST.BinOp))
(assert ($Is DatatypeTypeType |#AST.BinOp.Sub| Tclass.AST.BinOp))
(assert ($Is DatatypeTypeType |#AST.BinOp.Mul| Tclass.AST.BinOp))
(assert (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed#canCall| (Lit DatatypeTypeType this@@1)) (and ($IsGoodHeap $Heap@@0) (and ($Is DatatypeTypeType this@@1 Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType this@@1 Tclass.AST.Expr__Raw $Heap@@0)))) (and (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType this@@1) |AST.Expr__Raw.WellFormed__Single#Handle|) (= (AST.Expr__Raw.WellFormed (Lit DatatypeTypeType this@@1)) (AST.Expr__Raw.All ($LS $LZ) (Lit DatatypeTypeType this@@1) |AST.Expr__Raw.WellFormed__Single#Handle|))))
 :qid |ASTdfy.83:21|
 :weight 3
 :skolemid |1189|
 :pattern ( (AST.Expr__Raw.WellFormed (Lit DatatypeTypeType this@@1)) ($IsGoodHeap $Heap@@0))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (!  (=> (and (AST.Expr__Raw.Bind_q a@@6) (AST.Expr__Raw.Bind_q b@@6)) (= (|AST.Expr__Raw#Equal| a@@6 b@@6)  (and (and (|Seq#Equal| (AST.Expr__Raw.bvars a@@6) (AST.Expr__Raw.bvars b@@6)) (|Seq#Equal| (AST.Expr__Raw.bvals a@@6) (AST.Expr__Raw.bvals b@@6))) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body a@@6) (AST.Expr__Raw.body b@@6)))))
 :qid |unknown.0:0|
 :skolemid |1121|
 :pattern ( (|AST.Expr__Raw#Equal| a@@6 b@@6) (AST.Expr__Raw.Bind_q a@@6))
 :pattern ( (|AST.Expr__Raw#Equal| a@@6 b@@6) (AST.Expr__Raw.Bind_q b@@6))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (and (AST.Expr__Raw.If_q a@@7) (AST.Expr__Raw.If_q b@@7)) (= (|AST.Expr__Raw#Equal| a@@7 b@@7)  (and (and (|AST.Expr__Raw#Equal| (AST.Expr__Raw.cond a@@7) (AST.Expr__Raw.cond b@@7)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.thn a@@7) (AST.Expr__Raw.thn b@@7))) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.els a@@7) (AST.Expr__Raw.els b@@7)))))
 :qid |unknown.0:0|
 :skolemid |1123|
 :pattern ( (|AST.Expr__Raw#Equal| a@@7 b@@7) (AST.Expr__Raw.If_q a@@7))
 :pattern ( (|AST.Expr__Raw#Equal| a@@7 b@@7) (AST.Expr__Raw.If_q b@@7))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (and (AST.Expr__Raw.Op_q a@@8) (AST.Expr__Raw.Op_q b@@8)) (= (|AST.Expr__Raw#Equal| a@@8 b@@8)  (and (and (|AST.BinOp#Equal| (AST.Expr__Raw.op a@@8) (AST.Expr__Raw.op b@@8)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe1 a@@8) (AST.Expr__Raw.oe1 b@@8))) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe2 a@@8) (AST.Expr__Raw.oe2 b@@8)))))
 :qid |unknown.0:0|
 :skolemid |1124|
 :pattern ( (|AST.Expr__Raw#Equal| a@@8 b@@8) (AST.Expr__Raw.Op_q a@@8))
 :pattern ( (|AST.Expr__Raw#Equal| a@@8 b@@8) (AST.Expr__Raw.Op_q b@@8))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@4| T@U) (|es#0@@0| T@U) ) (!  (=> (or (|Equiv.__default.Pes__Step#canCall| |st#0@@4| |es#0@@0|) (and (< 4 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@4| Tclass.Equiv.MState) ($Is SeqType |es#0@@0| (TSeq Tclass.AST.Expr))) (and (Equiv.__default.Pes |st#0@@4| |es#0@@0|) (not (Equiv.__default.Pes__Fail |st#0@@4| |es#0@@0|)))))) (and (and (and (Equiv.MState.MState_q |st#0@@4|) (|Interp.__default.InterpExprs#canCall| |es#0@@0| (Equiv.MState.ctx |st#0@@4|))) (and (Equiv.MState.MState_q |st#0@@4|) (|Interp.__default.InterpExprs#canCall| |es#0@@0| (Equiv.MState.ctx_k |st#0@@4|)))) (= (Equiv.__default.Pes__Step |st#0@@4| |es#0@@0|) (let ((|ctx1#0@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExprs ($LS $LZ) |es#0@@0| (Equiv.MState.ctx |st#0@@4|))))))))
(let ((|vs#0@@0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExprs ($LS $LZ) |es#0@@0| (Equiv.MState.ctx |st#0@@4|))))))))
(let ((|ctx1'#0@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExprs ($LS $LZ) |es#0@@0| (Equiv.MState.ctx_k |st#0@@4|))))))))
(let ((|vs'#0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExprs ($LS $LZ) |es#0@@0| (Equiv.MState.ctx_k |st#0@@4|))))))))
(|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#Equiv.MState.MState| |ctx1#0@@1| |ctx1'#0@@1|)) ($Box DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| |vs#0@@0| |vs'#0|))))))))))
 :qid |Inductiondfy.71:27|
 :skolemid |801|
 :pattern ( (Equiv.__default.Pes__Step |st#0@@4| |es#0@@0|))
))))
(assert (forall ((Utils.Result$T@@2 T@U) ) (! ($Is DatatypeTypeType |#Utils.Result.Failure| (Tclass.Utils.Result Utils.Result$T@@2))
 :qid |unknown.0:0|
 :skolemid |971|
 :pattern ( ($Is DatatypeTypeType |#Utils.Result.Failure| (Tclass.Utils.Result Utils.Result$T@@2)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@5| T@U) (|e#0@@4| T@U) ) (!  (=> (or (|Equiv.__default.P#canCall| |st#0@@5| (Lit DatatypeTypeType |e#0@@4|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@5| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0@@4| Tclass.AST.Expr)))) (and (and (and (Equiv.MState.MState_q |st#0@@5|) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@4|) (Equiv.MState.ctx |st#0@@5|))) (let ((|res#1| (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@4|) (Equiv.MState.ctx |st#0@@5|))))
 (and (and (Equiv.MState.MState_q |st#0@@5|) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@4|) (Equiv.MState.ctx_k |st#0@@5|))) (let ((|res'#1| (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@4|) (Equiv.MState.ctx_k |st#0@@5|))))
 (and (|Equiv.__default.Inv#canCall| |st#0@@5|) (=> (Equiv.__default.Inv |st#0@@5|) (|Equiv.__default.EqResult#canCall| |res#1| |res'#1|))))))) (= (Equiv.__default.P |st#0@@5| (Lit DatatypeTypeType |e#0@@4|)) (let ((|res#1@@0| (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@4|) (Equiv.MState.ctx |st#0@@5|))))
(let ((|res'#1@@0| (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@4|) (Equiv.MState.ctx_k |st#0@@5|))))
 (=> (Equiv.__default.Inv |st#0@@5|) (Equiv.__default.EqResult |res#1@@0| |res'#1@@0|)))))))
 :qid |Inductiondfy.34:21|
 :weight 3
 :skolemid |689|
 :pattern ( (Equiv.__default.P |st#0@@5| (Lit DatatypeTypeType |e#0@@4|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|res#0@@2| T@U) (|res'#0@@2| T@U) ) (!  (=> (or (|Equiv.__default.EqResult#canCall| |res#0@@2| |res'#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |res#0@@2| (Tclass.Utils.Result (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)))) ($Is DatatypeTypeType |res'#0@@2| (Tclass.Utils.Result (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt))))))) (and (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))) (=> (Utils.Result.Success_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))))) (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))) (=> (Utils.Result.Success_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))))) (and (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|)))))))) (let ((|ctx'#1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))))))))))
 (and (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|)))))))) (let ((|v'#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|)))))))))))
 (and (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|)))))))) (let ((|ctx#1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))))))))))
 (and (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|)))))))) (let ((|v#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|)))))))))))
 (and (|Equiv.__default.EqValue#canCall| |v#1| |v'#1|) (=> (Equiv.__default.EqValue |v#1| |v'#1|) (|Equiv.__default.EqCtx#canCall| |ctx#1| |ctx'#1|))))))))))))))) (= (Equiv.__default.EqResult |res#0@@2| |res'#0@@2|) (ite (Utils.Result.Success_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))))) (ite (Utils.Result.Success_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))))) (let ((|ctx'#0@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))))))))))
(let ((|v'#0@@0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|)))))))))))
(let ((|ctx#0@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|))))))))))
(let ((|v#0@@2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@2|) ($Box DatatypeTypeType |res'#0@@2|)))))))))))
 (and (Equiv.__default.EqValue |v#0@@2| |v'#0@@0|) (Equiv.__default.EqCtx reveal_Equiv._default.EqCtx |ctx#0@@1| |ctx'#0@@0|)))))) false) true))))
 :qid |Equivdfy.33:28|
 :skolemid |667|
 :pattern ( (Equiv.__default.EqResult |res#0@@2| |res'#0@@2|))
))))
(assert (forall ((|a#12#0#0| Int) (|a#12#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#Equiv.MValue.MValue| |a#12#0#0| |a#12#1#0|) Tclass.Equiv.MValue)  (and ($Is intType (int_2_U |a#12#0#0|) TInt) ($Is intType (int_2_U |a#12#1#0|) TInt)))
 :qid |Equivdfy.63:28|
 :skolemid |908|
 :pattern ( ($Is DatatypeTypeType (|#Equiv.MValue.MValue| |a#12#0#0| |a#12#1#0|) Tclass.Equiv.MValue))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (! (= (|Equiv.MState#Equal| a@@9 b@@9) (= a@@9 b@@9))
 :qid |unknown.0:0|
 :skolemid |903|
 :pattern ( (|Equiv.MState#Equal| a@@9 b@@9))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|Utils.Result#Equal| a@@10 b@@10) (= a@@10 b@@10))
 :qid |unknown.0:0|
 :skolemid |977|
 :pattern ( (|Utils.Result#Equal| a@@10 b@@10))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) ) (! (= (|AST.BinOp#Equal| a@@11 b@@11) (= a@@11 b@@11))
 :qid |unknown.0:0|
 :skolemid |1026|
 :pattern ( (|AST.BinOp#Equal| a@@11 b@@11))
)))
(assert (forall ((a@@12 T@U) (b@@12 T@U) ) (! (= (|AST.Expr__Raw#Equal| a@@12 b@@12) (= a@@12 b@@12))
 :qid |unknown.0:0|
 :skolemid |1126|
 :pattern ( (|AST.Expr__Raw#Equal| a@@12 b@@12))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@2 n@@1) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@2 n@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0| T@U) (|y#0| T@U) ) (!  (=> (or (|Equiv.__default.EqSeqValue#canCall| (Lit SeqType |x#0|) (Lit SeqType |y#0|)) (and (< 1 $FunctionContextHeight) (and ($Is SeqType |x#0| (TSeq TInt)) ($Is SeqType |y#0| (TSeq TInt))))) (and (=> (= (|Seq#Length| (Lit SeqType |x#0|)) (|Seq#Length| (Lit SeqType |y#0|))) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| (Lit SeqType |x#0|)))) (|Equiv.__default.EqValue#canCall| (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |x#0|) |i#1|))) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |y#0|) |i#1|)))))
 :qid |Equivdfy.24:15|
 :skolemid |648|
 :pattern ( ($Unbox intType (|Seq#Index| |y#0| |i#1|)))
 :pattern ( ($Unbox intType (|Seq#Index| |x#0| |i#1|)))
))) (= (Equiv.__default.EqSeqValue (Lit SeqType |x#0|) (Lit SeqType |y#0|))  (and (= (|Seq#Length| (Lit SeqType |x#0|)) (|Seq#Length| (Lit SeqType |y#0|))) (forall ((|i#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| (|Seq#Length| (Lit SeqType |x#0|)))) (Equiv.__default.EqValue (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |x#0|) |i#1@@0|))) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |y#0|) |i#1@@0|)))))
 :qid |Equivdfy.24:15|
 :skolemid |647|
 :pattern ( ($Unbox intType (|Seq#Index| |y#0| |i#1@@0|)))
 :pattern ( ($Unbox intType (|Seq#Index| |x#0| |i#1@@0|)))
))))))
 :qid |Equivdfy.21:30|
 :weight 3
 :skolemid |649|
 :pattern ( (Equiv.__default.EqSeqValue (Lit SeqType |x#0|) (Lit SeqType |y#0|)))
))))
(assert (forall ((|op#0| T@U) (|x#0@@0| Int) (|y#0@@0| Int) ) (!  (=> (or (|Interp.__default.InterpBinOp#canCall| |op#0| |x#0@@0| |y#0@@0|) ($Is DatatypeTypeType |op#0| Tclass.AST.BinOp)) (= (Interp.__default.InterpBinOp |op#0| |x#0@@0| |y#0@@0|) (ite (AST.BinOp.Add_q |op#0|) (+ |x#0@@0| |y#0@@0|) (ite (AST.BinOp.Sub_q |op#0|) (- |x#0@@0| |y#0@@0|) (Mul |x#0@@0| |y#0@@0|)))))
 :qid |Interpdfy.16:24|
 :skolemid |1194|
 :pattern ( (Interp.__default.InterpBinOp |op#0| |x#0@@0| |y#0@@0|))
)))
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@6| T@U) (|vars#0@@1| T@U) (|vals#0@@1| T@U) ) (!  (=> (or (|Equiv.__default.AssignState#canCall| |st#0@@6| |vars#0@@1| |vals#0@@1|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@6| Tclass.Equiv.MState) ($Is SeqType |vars#0@@1| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@1| Tclass.Equiv.VS)) (Equiv.__default.UpdateState__Pre |st#0@@6| |vars#0@@1| |vals#0@@1|)))) (and (Equiv.__default.Inv (Equiv.__default.AssignState |st#0@@6| |vars#0@@1| |vals#0@@1|)) ($Is DatatypeTypeType (Equiv.__default.AssignState |st#0@@6| |vars#0@@1| |vals#0@@1|) Tclass.Equiv.MState)))
 :qid |Inductiondfy.54:30|
 :skolemid |760|
 :pattern ( (Equiv.__default.AssignState |st#0@@6| |vars#0@@1| |vals#0@@1|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@7| T@U) (|vars#0@@2| T@U) (|vals#0@@2| T@U) ) (!  (=> (or (|Equiv.__default.BindStartScope#canCall| |st#0@@7| |vars#0@@2| |vals#0@@2|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@7| Tclass.Equiv.MState) ($Is SeqType |vars#0@@2| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@2| Tclass.Equiv.VS)) (Equiv.__default.UpdateState__Pre |st#0@@7| |vars#0@@2| |vals#0@@2|)))) (and (Equiv.__default.Inv (Equiv.__default.BindStartScope |st#0@@7| |vars#0@@2| |vals#0@@2|)) ($Is DatatypeTypeType (Equiv.__default.BindStartScope |st#0@@7| |vars#0@@2| |vals#0@@2|) Tclass.Equiv.MState)))
 :qid |Inductiondfy.58:33|
 :skolemid |773|
 :pattern ( (Equiv.__default.BindStartScope |st#0@@7| |vars#0@@2| |vals#0@@2|))
))))
(assert (forall (($ly@@0 T@U) (|e#0@@5| T@U) (|ctx#0@@2| T@U) ) (!  (=> (or (|Interp.__default.InterpExpr#canCall| |e#0@@5| |ctx#0@@2|) (and ($Is DatatypeTypeType |e#0@@5| Tclass.AST.Expr) ($Is MapType |ctx#0@@2| (TMap (TSeq TChar) TInt)))) (and (=> (not (AST.Expr__Raw.Var_q |e#0@@5|)) (=> (not (AST.Expr__Raw.Literal_q |e#0@@5|)) (and (=> (AST.Expr__Raw.Bind_q |e#0@@5|) (let ((|body#1| (AST.Expr__Raw.body |e#0@@5|)))
(let ((|bvals#1| (AST.Expr__Raw.bvals |e#0@@5|)))
(let ((|bvars#1| (AST.Expr__Raw.bvars |e#0@@5|)))
 (and (|Interp.__default.InterpExprs#canCall| |bvals#1| |ctx#0@@2|) (let ((|valueOrError0#1| (Interp.__default.InterpExprs $ly@@0 |bvals#1| |ctx#0@@2|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|) (let ((|ctx1#4| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|))))))
(let ((|vs#3@@0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|))))))
 (and (|Interp.__default.VarsAndValuesToContext#canCall| |bvars#1| |vs#3@@0|) (let ((|bindings#2| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#1| |vs#3@@0|)))
(let ((|ctx2#2@@0| (|Map#Merge| |ctx1#4| |bindings#2|)))
 (and (|Interp.__default.InterpExpr#canCall| |body#1| |ctx2#2@@0|) (let ((|valueOrError1#1| (Interp.__default.InterpExpr $ly@@0 |body#1| |ctx2#2@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|))))))))))))))))))) (=> (not (AST.Expr__Raw.Bind_q |e#0@@5|)) (and (=> (AST.Expr__Raw.Assign_q |e#0@@5|) (let ((|avals#1| (AST.Expr__Raw.avals |e#0@@5|)))
(let ((|avars#1| (AST.Expr__Raw.avars |e#0@@5|)))
 (and (|Interp.__default.InterpExprs#canCall| |avals#1| |ctx#0@@2|) (let ((|valueOrError2#1| (Interp.__default.InterpExprs $ly@@0 |avals#1| |ctx#0@@2|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|) (let ((|vs#4| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|))))))
(|Interp.__default.VarsAndValuesToContext#canCall| |avars#1| |vs#4|)))))))))) (=> (not (AST.Expr__Raw.Assign_q |e#0@@5|)) (and (=> (AST.Expr__Raw.If_q |e#0@@5|) (let ((|els#1| (AST.Expr__Raw.els |e#0@@5|)))
(let ((|thn#1| (AST.Expr__Raw.thn |e#0@@5|)))
(let ((|cond#1| (AST.Expr__Raw.cond |e#0@@5|)))
 (and (|Interp.__default.InterpExpr#canCall| |cond#1| |ctx#0@@2|) (let ((|valueOrError3#1| (Interp.__default.InterpExpr $ly@@0 |cond#1| |ctx#0@@2|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|) (let ((|ctx_cond#1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|))))))
(let ((|condv#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|)))))))
 (and (=> (or (not (= |condv#1| 0)) (not true)) (|Interp.__default.InterpExpr#canCall| |thn#1| |ctx_cond#1|)) (=> (= |condv#1| 0) (|Interp.__default.InterpExpr#canCall| |els#1| |ctx_cond#1|)))))))))))))) (=> (not (AST.Expr__Raw.If_q |e#0@@5|)) (and (=> (AST.Expr__Raw.Op_q |e#0@@5|) (let ((|e2#1| (AST.Expr__Raw.oe2 |e#0@@5|)))
(let ((|e1#1| (AST.Expr__Raw.oe1 |e#0@@5|)))
(let ((|op#1| (AST.Expr__Raw.op |e#0@@5|)))
 (and (|Interp.__default.InterpExpr#canCall| |e1#1| |ctx#0@@2|) (let ((|valueOrError4#1| (Interp.__default.InterpExpr $ly@@0 |e1#1| |ctx#0@@2|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|) (let ((|ctx1#6| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|))))))
(let ((|v1#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|)))))))
 (and (|Interp.__default.InterpExpr#canCall| |e2#1| |ctx1#6|) (let ((|valueOrError5#1| (Interp.__default.InterpExpr $ly@@0 |e2#1| |ctx1#6|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|) (let ((|v2#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|)))))))
(|Interp.__default.InterpBinOp#canCall| |op#1| |v1#1| |v2#1|)))))))))))))))))) (=> (not (AST.Expr__Raw.Op_q |e#0@@5|)) (let ((|es#1| (AST.Expr__Raw.es |e#0@@5|)))
 (and (|Interp.__default.InterpExprs#canCall| |es#1| |ctx#0@@2|) (let ((|valueOrError6#1| (Interp.__default.InterpExprs $ly@@0 |es#1| |ctx#0@@2|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#1|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#1|)))))))))))))))) (= (Interp.__default.InterpExpr ($LS $ly@@0) |e#0@@5| |ctx#0@@2|) (ite (AST.Expr__Raw.Var_q |e#0@@5|) (let ((|name#0| (AST.Expr__Raw.name |e#0@@5|)))
(ite (|Set#IsMember| (|Map#Domain| |ctx#0@@2|) ($Box SeqType |name#0|)) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@2|) ($Box SeqType |name#0|)) ($Box MapType |ctx#0@@2|)))) |#Utils.Result.Failure|)) (ite (AST.Expr__Raw.Literal_q |e#0@@5|) (let ((|n#0| (AST.Expr__Raw.n |e#0@@5|)))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |n#0|)) ($Box MapType |ctx#0@@2|))))) (ite (AST.Expr__Raw.Bind_q |e#0@@5|) (let ((|body#0| (AST.Expr__Raw.body |e#0@@5|)))
(let ((|bvals#0@@0| (AST.Expr__Raw.bvals |e#0@@5|)))
(let ((|bvars#0@@0| (AST.Expr__Raw.bvars |e#0@@5|)))
(let ((|valueOrError0#0| (Interp.__default.InterpExprs $ly@@0 |bvals#0@@0| |ctx#0@@2|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0|) (let ((|ctx1#0@@2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0|))))))
(let ((|vs#0@@1| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0|))))))
(let ((|bindings#0@@0| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#0@@0| |vs#0@@1|)))
(let ((|ctx2#0| (|Map#Merge| |ctx1#0@@2| |bindings#0@@0|)))
(let ((|valueOrError1#0| (Interp.__default.InterpExpr $ly@@0 |body#0| |ctx2#0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#0|) (let ((|ctx3#0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#0|))))))
(let ((|bodyv#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#0|)))))))
(let ((|ctx4#0| (|Map#Merge| |ctx1#0@@2| (|Map#Subtract| |ctx3#0| (|Set#FromBoogieMap| (|lambda#9| (TSeq TChar) |bvars#0@@0|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |bodyv#0|)) ($Box MapType |ctx4#0|)))))))))))))))))) (ite (AST.Expr__Raw.Assign_q |e#0@@5|) (let ((|avals#0@@0| (AST.Expr__Raw.avals |e#0@@5|)))
(let ((|avars#0@@0| (AST.Expr__Raw.avars |e#0@@5|)))
(let ((|valueOrError2#0| (Interp.__default.InterpExprs $ly@@0 |avals#0@@0| |ctx#0@@2|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#0|) (let ((|ctx1#1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#0|))))))
(let ((|vs#1| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#0|))))))
(let ((|bindings#1| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |avars#0@@0| |vs#1|)))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType (|Map#Merge| |ctx1#1| |bindings#1|)))))))))))) (ite (AST.Expr__Raw.If_q |e#0@@5|) (let ((|els#0| (AST.Expr__Raw.els |e#0@@5|)))
(let ((|thn#0| (AST.Expr__Raw.thn |e#0@@5|)))
(let ((|cond#0| (AST.Expr__Raw.cond |e#0@@5|)))
(let ((|valueOrError3#0| (Interp.__default.InterpExpr $ly@@0 |cond#0| |ctx#0@@2|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#0|) (let ((|ctx_cond#0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#0|))))))
(let ((|condv#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#0|)))))))
(ite  (or (not (= |condv#0| 0)) (not true)) (Interp.__default.InterpExpr $ly@@0 |thn#0| |ctx_cond#0|) (Interp.__default.InterpExpr $ly@@0 |els#0| |ctx_cond#0|))))))))) (ite (AST.Expr__Raw.Op_q |e#0@@5|) (let ((|e2#0| (AST.Expr__Raw.oe2 |e#0@@5|)))
(let ((|e1#0| (AST.Expr__Raw.oe1 |e#0@@5|)))
(let ((|op#0@@0| (AST.Expr__Raw.op |e#0@@5|)))
(let ((|valueOrError4#0| (Interp.__default.InterpExpr $ly@@0 |e1#0| |ctx#0@@2|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#0|) (let ((|ctx1#2@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#0|))))))
(let ((|v1#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#0|)))))))
(let ((|valueOrError5#0| (Interp.__default.InterpExpr $ly@@0 |e2#0| |ctx1#2@@1|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#0|) (let ((|ctx2#1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#0|))))))
(let ((|v2#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#0|)))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Interp.__default.InterpBinOp |op#0@@0| |v1#0| |v2#0|))) ($Box MapType |ctx2#1|))))))))))))))) (let ((|es#0@@1| (AST.Expr__Raw.es |e#0@@5|)))
(let ((|valueOrError6#0| (Interp.__default.InterpExprs $ly@@0 |es#0@@1| |ctx#0@@2|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#0|) (let ((|ctx1#3| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#0|))))))
(let ((|vs#2@@1| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#0|))))))
(ite (|Seq#Equal| |vs#2@@1| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType |ctx1#3|)))) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (|Seq#Index| |vs#2@@1| (- (|Seq#Length| |vs#2@@1|) 1)) ($Box MapType |ctx1#3|)))))))))))))))))))
 :qid |Interpdfy.24:12|
 :skolemid |1200|
 :pattern ( (Interp.__default.InterpExpr ($LS $ly@@0) |e#0@@5| |ctx#0@@2|))
)))
(assert (forall ((s@@3 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@3 (TSeq t@@0)) ($IsBox bx@@1 t@@0)) ($Is SeqType (|Seq#Build| s@@3 bx@@1) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@3 bx@@1) (TSeq t@@0)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@8| T@U) (|es#0@@2| T@U) ) (!  (=> (or (|Equiv.__default.Pes#canCall| |st#0@@8| (Lit SeqType |es#0@@2|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@8| Tclass.Equiv.MState) ($Is SeqType |es#0@@2| (TSeq Tclass.AST.Expr))))) (and (and (and (Equiv.MState.MState_q |st#0@@8|) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@2|) (Equiv.MState.ctx |st#0@@8|))) (let ((|res#1@@1| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@2|) (Equiv.MState.ctx |st#0@@8|))))
 (and (and (Equiv.MState.MState_q |st#0@@8|) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@2|) (Equiv.MState.ctx_k |st#0@@8|))) (let ((|res'#1@@1| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@2|) (Equiv.MState.ctx_k |st#0@@8|))))
 (and (|Equiv.__default.Inv#canCall| |st#0@@8|) (=> (Equiv.__default.Inv |st#0@@8|) (|Equiv.__default.EqResultSeq#canCall| |res#1@@1| |res'#1@@1|))))))) (= (Equiv.__default.Pes |st#0@@8| (Lit SeqType |es#0@@2|)) (let ((|res#1@@2| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@2|) (Equiv.MState.ctx |st#0@@8|))))
(let ((|res'#1@@2| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@2|) (Equiv.MState.ctx_k |st#0@@8|))))
 (=> (Equiv.__default.Inv |st#0@@8|) (Equiv.__default.EqResultSeq |res#1@@2| |res'#1@@2|)))))))
 :qid |Inductiondfy.39:23|
 :weight 3
 :skolemid |714|
 :pattern ( (Equiv.__default.Pes |st#0@@8| (Lit SeqType |es#0@@2|)))
))))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@9| T@U) ) (!  (=> (or (|Equiv.__default.Inv#canCall| |st#0@@9|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@9| Tclass.Equiv.MState))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (and (Equiv.MState.MState_q |st#0@@9|) (Equiv.MState.MState_q |st#0@@9|)) (|Equiv.__default.EqCtx#canCall| (Equiv.MState.ctx |st#0@@9|) (Equiv.MState.ctx_k |st#0@@9|)))) (= (Equiv.__default.Inv |st#0@@9|)  (and true (Equiv.__default.EqCtx reveal_Equiv._default.EqCtx (Equiv.MState.ctx |st#0@@9|) (Equiv.MState.ctx_k |st#0@@9|))))))
 :qid |Equivdfy.72:23|
 :skolemid |682|
 :pattern ( (Equiv.__default.Inv |st#0@@9|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st0#0| T@U) (|st#0@@10| T@U) (|vars#0@@3| T@U) ) (!  (=> (or (|Equiv.__default.BindEndScope#canCall| |st0#0| |st#0@@10| |vars#0@@3|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st0#0| Tclass.Equiv.MState) ($Is DatatypeTypeType |st#0@@10| Tclass.Equiv.MState)) ($Is SeqType |vars#0@@3| (TSeq (TSeq TChar)))))) (and (and (|Equiv.__default.Inv#canCall| |st0#0|) (=> (Equiv.__default.Inv |st0#0|) (|Equiv.__default.Inv#canCall| |st#0@@10|))) (= (Equiv.__default.BindEndScope |st0#0| |st#0@@10| |vars#0@@3|) (let ((|ctx0'#0| (Equiv.MState.ctx_k |st0#0|)))
(let ((|ctx0#0| (Equiv.MState.ctx |st0#0|)))
(let ((|ctx'#0@@1| (Equiv.MState.ctx_k |st#0@@10|)))
(let ((|ctx#0@@3| (Equiv.MState.ctx |st#0@@10|)))
(let ((|ctx1#0@@3| (|Map#Merge| |ctx0#0| (|Map#Subtract| |ctx#0@@3| (|Set#FromBoogieMap| (|lambda#9| (TSeq TChar) |vars#0@@3|))))))
(let ((|ctx1'#0@@2| (|Map#Merge| |ctx0'#0| (|Map#Subtract| |ctx'#0@@1| (|Set#FromBoogieMap| (|lambda#9| (TSeq TChar) |vars#0@@3|))))))
(let ((|st'#0@@2| (|#Equiv.MState.MState| |ctx1#0@@3| |ctx1'#0@@2|)))
|st'#0@@2|))))))))))
 :qid |Inductiondfy.64:31|
 :skolemid |782|
 :pattern ( (Equiv.__default.BindEndScope |st0#0| |st#0@@10| |vars#0@@3|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@11| T@U) (|e#0@@6| T@U) ) (!  (=> (or (|Equiv.__default.P__Fail#canCall| |st#0@@11| |e#0@@6|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@11| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0@@6| Tclass.AST.Expr)))) (and (and (|Equiv.__default.Inv#canCall| |st#0@@11|) (=> (Equiv.__default.Inv |st#0@@11|) (and (Equiv.MState.MState_q |st#0@@11|) (|Interp.__default.InterpExpr#canCall| |e#0@@6| (Equiv.MState.ctx |st#0@@11|))))) (= (Equiv.__default.P__Fail |st#0@@11| |e#0@@6|)  (=> (Equiv.__default.Inv |st#0@@11|) (Utils.Result.Failure_q (Interp.__default.InterpExpr ($LS $LZ) |e#0@@6| (Equiv.MState.ctx |st#0@@11|)))))))
 :qid |Inductiondfy.36:26|
 :skolemid |706|
 :pattern ( (Equiv.__default.P__Fail |st#0@@11| |e#0@@6|))
))))
(assert (forall ((s@@4 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@4))) (= (|Seq#Index| (|Seq#Take| s@@4 n@@2) j) (|Seq#Index| s@@4 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@4 n@@2) j))
 :pattern ( (|Seq#Index| s@@4 j) (|Seq#Take| s@@4 n@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@12| T@U) (|e#0@@7| T@U) (|st'#0@@3| T@U) (|v#0@@3| T@U) ) (!  (=> (or (|Equiv.__default.P__Succ#canCall| |st#0@@12| (Lit DatatypeTypeType |e#0@@7|) |st'#0@@3| |v#0@@3|) (and (< 2 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@12| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0@@7| Tclass.AST.Expr)) ($Is DatatypeTypeType |st'#0@@3| Tclass.Equiv.MState)) ($Is DatatypeTypeType |v#0@@3| Tclass.Equiv.MValue)))) (and (and (and (Equiv.MState.MState_q |st#0@@12|) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@7|) (Equiv.MState.ctx |st#0@@12|))) (let ((|res#1@@3| (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@7|) (Equiv.MState.ctx |st#0@@12|))))
 (and (and (Equiv.MState.MState_q |st#0@@12|) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@7|) (Equiv.MState.ctx_k |st#0@@12|))) (let ((|res'#1@@3| (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@7|) (Equiv.MState.ctx_k |st#0@@12|))))
 (and (|Equiv.__default.Inv#canCall| |st#0@@12|) (=> (Equiv.__default.Inv |st#0@@12|) (and (|Equiv.__default.EqResult#canCall| |res#1@@3| |res'#1@@3|) (=> (Equiv.__default.EqResult |res#1@@3| |res'#1@@3|) (and (and (|$IsA#Utils.Result| |res#1@@3|) (and (Equiv.MValue.MValue_q |v#0@@3|) (Equiv.MState.MState_q |st'#0@@3|))) (=> (|Utils.Result#Equal| |res#1@@3| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Equiv.MValue.v |v#0@@3|))) ($Box MapType (Equiv.MState.ctx |st'#0@@3|)))))) (and (|$IsA#Utils.Result| |res'#1@@3|) (and (Equiv.MValue.MValue_q |v#0@@3|) (Equiv.MState.MState_q |st'#0@@3|))))))))))))) (= (Equiv.__default.P__Succ |st#0@@12| (Lit DatatypeTypeType |e#0@@7|) |st'#0@@3| |v#0@@3|) (let ((|res#1@@4| (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@7|) (Equiv.MState.ctx |st#0@@12|))))
(let ((|res'#1@@4| (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@7|) (Equiv.MState.ctx_k |st#0@@12|))))
 (and (and (and (Equiv.__default.Inv |st#0@@12|) (Equiv.__default.EqResult |res#1@@4| |res'#1@@4|)) (|Utils.Result#Equal| |res#1@@4| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Equiv.MValue.v |v#0@@3|))) ($Box MapType (Equiv.MState.ctx |st'#0@@3|))))))) (|Utils.Result#Equal| |res'#1@@4| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Equiv.MValue.v_k |v#0@@3|))) ($Box MapType (Equiv.MState.ctx_k |st'#0@@3|))))))))))))
 :qid |Inductiondfy.35:26|
 :weight 3
 :skolemid |698|
 :pattern ( (Equiv.__default.P__Succ |st#0@@12| (Lit DatatypeTypeType |e#0@@7|) |st'#0@@3| |v#0@@3|))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@2)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@2) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@2))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@2))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Drop| s@@5 n@@3)) (- (|Seq#Length| s@@5) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@5 n@@3)))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (|$IsA#AST.Expr__Raw| d@@4) (or (or (or (or (or (or (AST.Expr__Raw.Var_q d@@4) (AST.Expr__Raw.Literal_q d@@4)) (AST.Expr__Raw.Bind_q d@@4)) (AST.Expr__Raw.Assign_q d@@4)) (AST.Expr__Raw.If_q d@@4)) (AST.Expr__Raw.Op_q d@@4)) (AST.Expr__Raw.Seq_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |1117|
 :pattern ( (|$IsA#AST.Expr__Raw| d@@4))
)))
(assert (forall ((Utils.Result$T@@3 T@U) (this@@2 T@U) ) (!  (=> (or (|Utils.Result.IsFailure#canCall| Utils.Result$T@@3 this@@2) ($Is DatatypeTypeType this@@2 (Tclass.Utils.Result Utils.Result$T@@3))) (= (Utils.Result.IsFailure Utils.Result$T@@3 this@@2) (Utils.Result.Failure_q this@@2)))
 :qid |unknown.0:0|
 :skolemid |980|
 :pattern ( (Utils.Result.IsFailure Utils.Result$T@@3 this@@2))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@5) (= (DatatypeCtorId d@@5) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (Equiv.MState.MState_q d@@6) (= (DatatypeCtorId d@@6) |##Equiv.MState.MState|))
 :qid |unknown.0:0|
 :skolemid |886|
 :pattern ( (Equiv.MState.MState_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (Equiv.MValue.MValue_q d@@7) (= (DatatypeCtorId d@@7) |##Equiv.MValue.MValue|))
 :qid |unknown.0:0|
 :skolemid |905|
 :pattern ( (Equiv.MValue.MValue_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (Equiv.MSeqValue.MSeqValue_q d@@8) (= (DatatypeCtorId d@@8) |##Equiv.MSeqValue.MSeqValue|))
 :qid |unknown.0:0|
 :skolemid |920|
 :pattern ( (Equiv.MSeqValue.MSeqValue_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (Utils.Result.Success_q d@@9) (= (DatatypeCtorId d@@9) |##Utils.Result.Success|))
 :qid |unknown.0:0|
 :skolemid |960|
 :pattern ( (Utils.Result.Success_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (Utils.Result.Failure_q d@@10) (= (DatatypeCtorId d@@10) |##Utils.Result.Failure|))
 :qid |unknown.0:0|
 :skolemid |969|
 :pattern ( (Utils.Result.Failure_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (AST.BinOp.Add_q d@@11) (= (DatatypeCtorId d@@11) |##AST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |1014|
 :pattern ( (AST.BinOp.Add_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (AST.BinOp.Sub_q d@@12) (= (DatatypeCtorId d@@12) |##AST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |1016|
 :pattern ( (AST.BinOp.Sub_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (AST.BinOp.Mul_q d@@13) (= (DatatypeCtorId d@@13) |##AST.BinOp.Mul|))
 :qid |unknown.0:0|
 :skolemid |1018|
 :pattern ( (AST.BinOp.Mul_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (AST.Expr__Raw.Var_q d@@14) (= (DatatypeCtorId d@@14) |##AST.Expr_Raw.Var|))
 :qid |unknown.0:0|
 :skolemid |1028|
 :pattern ( (AST.Expr__Raw.Var_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (AST.Expr__Raw.Literal_q d@@15) (= (DatatypeCtorId d@@15) |##AST.Expr_Raw.Literal|))
 :qid |unknown.0:0|
 :skolemid |1038|
 :pattern ( (AST.Expr__Raw.Literal_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (AST.Expr__Raw.Bind_q d@@16) (= (DatatypeCtorId d@@16) |##AST.Expr_Raw.Bind|))
 :qid |unknown.0:0|
 :skolemid |1046|
 :pattern ( (AST.Expr__Raw.Bind_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (AST.Expr__Raw.Assign_q d@@17) (= (DatatypeCtorId d@@17) |##AST.Expr_Raw.Assign|))
 :qid |unknown.0:0|
 :skolemid |1063|
 :pattern ( (AST.Expr__Raw.Assign_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (AST.Expr__Raw.If_q d@@18) (= (DatatypeCtorId d@@18) |##AST.Expr_Raw.If|))
 :qid |unknown.0:0|
 :skolemid |1077|
 :pattern ( (AST.Expr__Raw.If_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (! (= (AST.Expr__Raw.Op_q d@@19) (= (DatatypeCtorId d@@19) |##AST.Expr_Raw.Op|))
 :qid |unknown.0:0|
 :skolemid |1092|
 :pattern ( (AST.Expr__Raw.Op_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (! (= (AST.Expr__Raw.Seq_q d@@20) (= (DatatypeCtorId d@@20) |##AST.Expr_Raw.Seq|))
 :qid |unknown.0:0|
 :skolemid |1107|
 :pattern ( (AST.Expr__Raw.Seq_q d@@20))
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
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((m@@1 T@U) (s@@6 T@U) (u T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Subtract| m@@1 s@@6)) u) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Subtract| m@@1 s@@6)) u) (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u)))
 :qid |DafnyPreludebpl.1489:15|
 :skolemid |296|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Subtract| m@@1 s@@6)) u))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> (AST.Expr__Raw.Bind_q d@@21) (exists ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) ) (! (= d@@21 (|#AST.Expr_Raw.Bind| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
 :qid |ASTdfy.17:12|
 :skolemid |1047|
)))
 :qid |unknown.0:0|
 :skolemid |1048|
 :pattern ( (AST.Expr__Raw.Bind_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (AST.Expr__Raw.If_q d@@22) (exists ((|a#57#0#0| T@U) (|a#57#1#0| T@U) (|a#57#2#0| T@U) ) (! (= d@@22 (|#AST.Expr_Raw.If| |a#57#0#0| |a#57#1#0| |a#57#2#0|))
 :qid |ASTdfy.19:10|
 :skolemid |1078|
)))
 :qid |unknown.0:0|
 :skolemid |1079|
 :pattern ( (AST.Expr__Raw.If_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (!  (=> (AST.Expr__Raw.Op_q d@@23) (exists ((|a#67#0#0| T@U) (|a#67#1#0| T@U) (|a#67#2#0| T@U) ) (! (= d@@23 (|#AST.Expr_Raw.Op| |a#67#0#0| |a#67#1#0| |a#67#2#0|))
 :qid |ASTdfy.20:10|
 :skolemid |1093|
)))
 :qid |unknown.0:0|
 :skolemid |1094|
 :pattern ( (AST.Expr__Raw.Op_q d@@23))
)))
(assert (forall ((s@@7 T@U) (i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length| s@@7))) (< (|Seq#Rank| (|Seq#Take| s@@7 i@@7)) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@7 i@@7)))
)))
(assert (forall ((a@@13 T@U) (b@@13 T@U) ) (! (= (|Set#Disjoint| a@@13 b@@13) (forall ((o@@1 T@U) ) (!  (or (not (|Set#IsMember| a@@13 o@@1)) (not (|Set#IsMember| b@@13 o@@1)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@13 o@@1))
 :pattern ( (|Set#IsMember| b@@13 o@@1))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@13 b@@13))
)))
(assert (forall ((m@@2 T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@2) bx@@2) (U_2_bool (MapType0Select BoxType boolType m@@2 bx@@2)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@2) bx@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@13| T@U) (|es#0@@3| T@U) ) (!  (=> (or (|Equiv.__default.Pes__Fail#canCall| |st#0@@13| |es#0@@3|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@13| Tclass.Equiv.MState) ($Is SeqType |es#0@@3| (TSeq Tclass.AST.Expr))))) (and (and (|Equiv.__default.Inv#canCall| |st#0@@13|) (=> (Equiv.__default.Inv |st#0@@13|) (and (Equiv.MState.MState_q |st#0@@13|) (|Interp.__default.InterpExprs#canCall| |es#0@@3| (Equiv.MState.ctx |st#0@@13|))))) (= (Equiv.__default.Pes__Fail |st#0@@13| |es#0@@3|)  (=> (Equiv.__default.Inv |st#0@@13|) (Utils.Result.Failure_q (Interp.__default.InterpExprs ($LS $LZ) |es#0@@3| (Equiv.MState.ctx |st#0@@13|)))))))
 :qid |Inductiondfy.41:28|
 :skolemid |732|
 :pattern ( (Equiv.__default.Pes__Fail |st#0@@13| |es#0@@3|))
))))
(assert (forall ((d@@24 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@24) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@24 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (Equiv.MState.MState_q d@@25) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@25 (|#Equiv.MState.MState| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |Equivdfy.62:28|
 :skolemid |887|
)))
 :qid |unknown.0:0|
 :skolemid |888|
 :pattern ( (Equiv.MState.MState_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (Equiv.MValue.MValue_q d@@26) (exists ((|a#11#0#0| Int) (|a#11#1#0| Int) ) (! (= d@@26 (|#Equiv.MValue.MValue| |a#11#0#0| |a#11#1#0|))
 :qid |Equivdfy.63:28|
 :skolemid |906|
)))
 :qid |unknown.0:0|
 :skolemid |907|
 :pattern ( (Equiv.MValue.MValue_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> (Equiv.MSeqValue.MSeqValue_q d@@27) (exists ((|a#17#0#0| T@U) (|a#17#1#0| T@U) ) (! (= d@@27 (|#Equiv.MSeqValue.MSeqValue| |a#17#0#0| |a#17#1#0|))
 :qid |Equivdfy.64:34|
 :skolemid |921|
)))
 :qid |unknown.0:0|
 :skolemid |922|
 :pattern ( (Equiv.MSeqValue.MSeqValue_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (AST.Expr__Raw.Assign_q d@@28) (exists ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= d@@28 (|#AST.Expr_Raw.Assign| |a#47#0#0| |a#47#1#0|))
 :qid |ASTdfy.18:14|
 :skolemid |1064|
)))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( (AST.Expr__Raw.Assign_q d@@28))
)))
(assert (forall (($ly@@1 T@U) ($Heap@@1 T@U) (|e#0@@8| T@U) (|p#0| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| |e#0@@8| |p#0|) (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |e#0@@8| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@1 |p#0| ($Box DatatypeTypeType |e#0@@8|)))) (=> (not (AST.Expr__Raw.Var_q |e#0@@8|)) (=> (not (AST.Expr__Raw.Literal_q |e#0@@8|)) (and (=> (AST.Expr__Raw.Bind_q |e#0@@8|) (let ((|body#1@@0| (AST.Expr__Raw.body |e#0@@8|)))
(let ((|bvals#1@@0| (AST.Expr__Raw.bvals |e#0@@8|)))
 (and (forall ((|e#4| T@U) ) (!  (=> ($Is DatatypeTypeType |e#4| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4|)) (|AST.Expr__Raw.All#canCall| |e#4| |p#0|)))
 :qid |ASTdfy.51:22|
 :skolemid |1146|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#4| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4|)))
)) (=> (forall ((|e#4@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#4@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4@@0|))) (AST.Expr__Raw.All $ly@@1 |e#4@@0| |p#0|))
 :qid |ASTdfy.51:22|
 :skolemid |1147|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#4@@0| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4@@0|)))
)) (|AST.Expr__Raw.All#canCall| |body#1@@0| |p#0|)))))) (=> (not (AST.Expr__Raw.Bind_q |e#0@@8|)) (and (=> (AST.Expr__Raw.Assign_q |e#0@@8|) (let ((|avals#1@@0| (AST.Expr__Raw.avals |e#0@@8|)))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#5| T@U) ) (!  (=> ($Is DatatypeTypeType |e#5| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#1@@0| ($Box DatatypeTypeType |e#5|)) (|AST.Expr__Raw.All#canCall| |e#5| |p#0|)))
 :qid |ASTdfy.54:21|
 :skolemid |1148|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#5| |p#0|))
 :pattern ( (|Seq#Contains| |avals#1@@0| ($Box DatatypeTypeType |e#5|)))
))))) (=> (not (AST.Expr__Raw.Assign_q |e#0@@8|)) (and (=> (AST.Expr__Raw.If_q |e#0@@8|) (let ((|els#1@@0| (AST.Expr__Raw.els |e#0@@8|)))
(let ((|thn#1@@0| (AST.Expr__Raw.thn |e#0@@8|)))
(let ((|cond#1@@0| (AST.Expr__Raw.cond |e#0@@8|)))
 (and (|AST.Expr__Raw.All#canCall| |cond#1@@0| |p#0|) (=> (AST.Expr__Raw.All $ly@@1 |cond#1@@0| |p#0|) (and (|AST.Expr__Raw.All#canCall| |thn#1@@0| |p#0|) (=> (AST.Expr__Raw.All $ly@@1 |thn#1@@0| |p#0|) (|AST.Expr__Raw.All#canCall| |els#1@@0| |p#0|))))))))) (=> (not (AST.Expr__Raw.If_q |e#0@@8|)) (and (=> (AST.Expr__Raw.Op_q |e#0@@8|) (let ((|oe2#1| (AST.Expr__Raw.oe2 |e#0@@8|)))
(let ((|oe1#1| (AST.Expr__Raw.oe1 |e#0@@8|)))
 (and (|AST.Expr__Raw.All#canCall| |oe1#1| |p#0|) (=> (AST.Expr__Raw.All $ly@@1 |oe1#1| |p#0|) (|AST.Expr__Raw.All#canCall| |oe2#1| |p#0|)))))) (=> (not (AST.Expr__Raw.Op_q |e#0@@8|)) (let ((|es#1@@0| (AST.Expr__Raw.es |e#0@@8|)))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#6| T@U) ) (!  (=> ($Is DatatypeTypeType |e#6| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#1@@0| ($Box DatatypeTypeType |e#6|)) (|AST.Expr__Raw.All#canCall| |e#6| |p#0|)))
 :qid |ASTdfy.60:21|
 :skolemid |1149|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#6| |p#0|))
 :pattern ( (|Seq#Contains| |es#1@@0| ($Box DatatypeTypeType |e#6|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@1) |e#0@@8| |p#0|)  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@1 |p#0| ($Box DatatypeTypeType |e#0@@8|)))) (ite (AST.Expr__Raw.Var_q |e#0@@8|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q |e#0@@8|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q |e#0@@8|) (let ((|body#0@@0| (AST.Expr__Raw.body |e#0@@8|)))
(let ((|bvals#0@@1| (AST.Expr__Raw.bvals |e#0@@8|)))
 (and (forall ((|e#1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#1| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#0@@1| ($Box DatatypeTypeType |e#1|))) (AST.Expr__Raw.All $ly@@1 |e#1| |p#0|))
 :qid |ASTdfy.51:22|
 :skolemid |1143|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#1| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#0@@1| ($Box DatatypeTypeType |e#1|)))
)) (AST.Expr__Raw.All $ly@@1 |body#0@@0| |p#0|)))) (ite (AST.Expr__Raw.Assign_q |e#0@@8|) (let ((|avals#0@@1| (AST.Expr__Raw.avals |e#0@@8|)))
 (and true (forall ((|e#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#2| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#0@@1| ($Box DatatypeTypeType |e#2|))) (AST.Expr__Raw.All $ly@@1 |e#2| |p#0|))
 :qid |ASTdfy.54:21|
 :skolemid |1144|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#2| |p#0|))
 :pattern ( (|Seq#Contains| |avals#0@@1| ($Box DatatypeTypeType |e#2|)))
)))) (ite (AST.Expr__Raw.If_q |e#0@@8|) (let ((|els#0@@0| (AST.Expr__Raw.els |e#0@@8|)))
(let ((|thn#0@@0| (AST.Expr__Raw.thn |e#0@@8|)))
(let ((|cond#0@@0| (AST.Expr__Raw.cond |e#0@@8|)))
 (and (and (AST.Expr__Raw.All $ly@@1 |cond#0@@0| |p#0|) (AST.Expr__Raw.All $ly@@1 |thn#0@@0| |p#0|)) (AST.Expr__Raw.All $ly@@1 |els#0@@0| |p#0|))))) (ite (AST.Expr__Raw.Op_q |e#0@@8|) (let ((|oe2#0| (AST.Expr__Raw.oe2 |e#0@@8|)))
(let ((|oe1#0| (AST.Expr__Raw.oe1 |e#0@@8|)))
 (and (AST.Expr__Raw.All $ly@@1 |oe1#0| |p#0|) (AST.Expr__Raw.All $ly@@1 |oe2#0| |p#0|)))) (let ((|es#0@@4| (AST.Expr__Raw.es |e#0@@8|)))
 (and true (forall ((|e#3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#3| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#0@@4| ($Box DatatypeTypeType |e#3|))) (AST.Expr__Raw.All $ly@@1 |e#3| |p#0|))
 :qid |ASTdfy.60:21|
 :skolemid |1145|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#3| |p#0|))
 :pattern ( (|Seq#Contains| |es#0@@4| ($Box DatatypeTypeType |e#3|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :skolemid |1150|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@1) |e#0@@8| |p#0|) ($IsGoodHeap $Heap@@1))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> (Utils.Result.Failure_q d@@29) (= d@@29 |#Utils.Result.Failure|))
 :qid |unknown.0:0|
 :skolemid |970|
 :pattern ( (Utils.Result.Failure_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> (AST.BinOp.Add_q d@@30) (= d@@30 |#AST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |1015|
 :pattern ( (AST.BinOp.Add_q d@@30))
)))
(assert (forall ((d@@31 T@U) ) (!  (=> (AST.BinOp.Sub_q d@@31) (= d@@31 |#AST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |1017|
 :pattern ( (AST.BinOp.Sub_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> (AST.BinOp.Mul_q d@@32) (= d@@32 |#AST.BinOp.Mul|))
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( (AST.BinOp.Mul_q d@@32))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v@@1 T@U) (t0@@2 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@2)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@3) ($IsBox bx@@3 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@1 bx@@3))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@1 (TSet t0@@2)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@1| T@U) (|y#0@@1| T@U) ) (!  (=> (or (|Equiv.__default.EqSeqValue#canCall| |x#0@@1| |y#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is SeqType |x#0@@1| (TSeq TInt)) ($Is SeqType |y#0@@1| (TSeq TInt))))) (and (=> (= (|Seq#Length| |x#0@@1|) (|Seq#Length| |y#0@@1|)) (forall ((|i#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| |x#0@@1|))) (|Equiv.__default.EqValue#canCall| (U_2_int ($Unbox intType (|Seq#Index| |x#0@@1| |i#0|))) (U_2_int ($Unbox intType (|Seq#Index| |y#0@@1| |i#0|)))))
 :qid |Equivdfy.24:15|
 :skolemid |645|
 :pattern ( ($Unbox intType (|Seq#Index| |y#0@@1| |i#0|)))
 :pattern ( ($Unbox intType (|Seq#Index| |x#0@@1| |i#0|)))
))) (= (Equiv.__default.EqSeqValue |x#0@@1| |y#0@@1|)  (and (= (|Seq#Length| |x#0@@1|) (|Seq#Length| |y#0@@1|)) (forall ((|i#0@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| |x#0@@1|))) (Equiv.__default.EqValue (U_2_int ($Unbox intType (|Seq#Index| |x#0@@1| |i#0@@0|))) (U_2_int ($Unbox intType (|Seq#Index| |y#0@@1| |i#0@@0|)))))
 :qid |Equivdfy.24:15|
 :skolemid |644|
 :pattern ( ($Unbox intType (|Seq#Index| |y#0@@1| |i#0@@0|)))
 :pattern ( ($Unbox intType (|Seq#Index| |x#0@@1| |i#0@@0|)))
))))))
 :qid |Equivdfy.21:30|
 :skolemid |646|
 :pattern ( (Equiv.__default.EqSeqValue |x#0@@1| |y#0@@1|))
))))
(assert (forall ((s@@8 T@U) (i@@8 Int) ) (!  (=> (and (< 0 i@@8) (<= i@@8 (|Seq#Length| s@@8))) (< (|Seq#Rank| (|Seq#Drop| s@@8 i@@8)) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@8 i@@8)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@2| Int) (|y#0@@2| Int) ) (!  (=> (or (|Equiv.__default.EqValue#canCall| (LitInt |x#0@@2|) (LitInt |y#0@@2|)) (< 0 $FunctionContextHeight)) (= (Equiv.__default.EqValue (LitInt |x#0@@2|) (LitInt |y#0@@2|)) (= (LitInt |x#0@@2|) (LitInt |y#0@@2|))))
 :qid |Equivdfy.16:27|
 :weight 3
 :skolemid |641|
 :pattern ( (Equiv.__default.EqValue (LitInt |x#0@@2|) (LitInt |y#0@@2|)))
))))
(assert (forall ((d@@33 T@U) ) (!  (=> (Utils.Result.Success_q d@@33) (exists ((|a#1#0#0@@1| T@U) ) (! (= d@@33 (|#Utils.Result.Success| |a#1#0#0@@1|))
 :qid |Utilsdfy.23:34|
 :skolemid |961|
)))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( (Utils.Result.Success_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (AST.Expr__Raw.Var_q d@@34) (exists ((|a#23#0#0| T@U) ) (! (= d@@34 (|#AST.Expr_Raw.Var| |a#23#0#0|))
 :qid |ASTdfy.15:11|
 :skolemid |1029|
)))
 :qid |unknown.0:0|
 :skolemid |1030|
 :pattern ( (AST.Expr__Raw.Var_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> (AST.Expr__Raw.Literal_q d@@35) (exists ((|a#30#0#0| Int) ) (! (= d@@35 (|#AST.Expr_Raw.Literal| |a#30#0#0|))
 :qid |ASTdfy.16:15|
 :skolemid |1039|
)))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( (AST.Expr__Raw.Literal_q d@@35))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (AST.Expr__Raw.Seq_q d@@36) (exists ((|a#77#0#0| T@U) ) (! (= d@@36 (|#AST.Expr_Raw.Seq| |a#77#0#0|))
 :qid |ASTdfy.21:11|
 :skolemid |1108|
)))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( (AST.Expr__Raw.Seq_q d@@36))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> ($Is DatatypeTypeType d@@37 Tclass.AST.Expr__Raw) (or (or (or (or (or (or (AST.Expr__Raw.Var_q d@@37) (AST.Expr__Raw.Literal_q d@@37)) (AST.Expr__Raw.Bind_q d@@37)) (AST.Expr__Raw.Assign_q d@@37)) (AST.Expr__Raw.If_q d@@37)) (AST.Expr__Raw.Op_q d@@37)) (AST.Expr__Raw.Seq_q d@@37)))
 :qid |unknown.0:0|
 :skolemid |1118|
 :pattern ( (AST.Expr__Raw.Seq_q d@@37) ($Is DatatypeTypeType d@@37 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Op_q d@@37) ($Is DatatypeTypeType d@@37 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.If_q d@@37) ($Is DatatypeTypeType d@@37 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Assign_q d@@37) ($Is DatatypeTypeType d@@37 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Bind_q d@@37) ($Is DatatypeTypeType d@@37 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Literal_q d@@37) ($Is DatatypeTypeType d@@37 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Var_q d@@37) ($Is DatatypeTypeType d@@37 Tclass.AST.Expr__Raw))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| |a#18#0#0| |a#18#1#0|) Tclass.Equiv.MSeqValue)  (and ($Is SeqType |a#18#0#0| (TSeq TInt)) ($Is SeqType |a#18#1#0| (TSeq TInt))))
 :qid |Equivdfy.64:34|
 :skolemid |924|
 :pattern ( ($Is DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| |a#18#0#0| |a#18#1#0|) Tclass.Equiv.MSeqValue))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st0#0@@0| T@U) (|st#0@@14| T@U) (|vars#0@@4| T@U) ) (!  (=> (or (|Equiv.__default.BindEndScope#canCall| |st0#0@@0| |st#0@@14| (Lit SeqType |vars#0@@4|)) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st0#0@@0| Tclass.Equiv.MState) ($Is DatatypeTypeType |st#0@@14| Tclass.Equiv.MState)) ($Is SeqType |vars#0@@4| (TSeq (TSeq TChar)))))) (and (and (|Equiv.__default.Inv#canCall| |st0#0@@0|) (=> (Equiv.__default.Inv |st0#0@@0|) (|Equiv.__default.Inv#canCall| |st#0@@14|))) (= (Equiv.__default.BindEndScope |st0#0@@0| |st#0@@14| (Lit SeqType |vars#0@@4|)) (let ((|ctx0'#1| (Equiv.MState.ctx_k |st0#0@@0|)))
(let ((|ctx0#1| (Equiv.MState.ctx |st0#0@@0|)))
(let ((|ctx'#1@@0| (Equiv.MState.ctx_k |st#0@@14|)))
(let ((|ctx#1@@0| (Equiv.MState.ctx |st#0@@14|)))
(let ((|ctx1#1@@0| (|Map#Merge| |ctx0#1| (|Map#Subtract| |ctx#1@@0| (|Set#FromBoogieMap| (|lambda#9| (TSeq TChar) |vars#0@@4|))))))
(let ((|ctx1'#1| (|Map#Merge| |ctx0'#1| (|Map#Subtract| |ctx'#1@@0| (|Set#FromBoogieMap| (|lambda#9| (TSeq TChar) |vars#0@@4|))))))
(let ((|st'#1| (|#Equiv.MState.MState| |ctx1#1@@0| |ctx1'#1|)))
|st'#1|))))))))))
 :qid |Inductiondfy.64:31|
 :weight 3
 :skolemid |783|
 :pattern ( (Equiv.__default.BindEndScope |st0#0@@0| |st#0@@14| (Lit SeqType |vars#0@@4|)))
))))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@9 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@9 v@@2)) (+ 1 (|Seq#Length| s@@9)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@9 v@@2))
)))
(assert (forall (($ly@@2 T@U) (|es#0@@5| T@U) (|ctx#0@@4| T@U) ) (!  (=> (or (|Interp.__default.InterpExprs#canCall| |es#0@@5| |ctx#0@@4|) (and ($Is SeqType |es#0@@5| (TSeq Tclass.AST.Expr)) ($Is MapType |ctx#0@@4| (TMap (TSeq TChar) TInt)))) (and (=> (Utils.Result.Success_q (Interp.__default.InterpExprs $ly@@2 |es#0@@5| |ctx#0@@4|)) (= (|Seq#Length| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExprs $ly@@2 |es#0@@5| |ctx#0@@4|)))))) (|Seq#Length| |es#0@@5|))) ($Is DatatypeTypeType (Interp.__default.InterpExprs $ly@@2 |es#0@@5| |ctx#0@@4|) (Tclass.Utils.Result (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt))))))
 :qid |Interpdfy.69:12|
 :skolemid |1205|
 :pattern ( (Interp.__default.InterpExprs $ly@@2 |es#0@@5| |ctx#0@@4|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@15| T@U) ) (!  (=> (or (|Equiv.__default.Inv#canCall| (Lit DatatypeTypeType |st#0@@15|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@15| Tclass.Equiv.MState))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@15|)) (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@15|))) (|Equiv.__default.EqCtx#canCall| (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@15|))) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@15|)))))) (= (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@15|))  (and true (Equiv.__default.EqCtx reveal_Equiv._default.EqCtx (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@15|))) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@15|))))))))
 :qid |Equivdfy.72:23|
 :weight 3
 :skolemid |683|
 :pattern ( (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@15|)))
))))
(assert (forall (($ly@@3 T@U) (|e#0@@9| T@U) (|p#0@@0| T@U) ) (! (= (AST.Expr__Raw.All ($LS $ly@@3) |e#0@@9| |p#0@@0|) (AST.Expr__Raw.All $ly@@3 |e#0@@9| |p#0@@0|))
 :qid |ASTdfy.44:22|
 :skolemid |1139|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@3) |e#0@@9| |p#0@@0|))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@1 h) ($IsAlloc T@@1 v@@3 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@1 h))
)))
(assert (forall ((Utils.Result$T@@4 T@U) (this@@3 T@U) ) (!  (=> (or (|Utils.Result.Extract#canCall| Utils.Result$T@@4 this@@3) (and ($Is DatatypeTypeType this@@3 (Tclass.Utils.Result Utils.Result$T@@4)) (Utils.Result.Success_q this@@3))) (= (Utils.Result.Extract Utils.Result$T@@4 this@@3) (Utils.Result.value this@@3)))
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( (Utils.Result.Extract Utils.Result$T@@4 this@@3))
)))
(assert  (=> (< 2 $FunctionContextHeight) ($Is DatatypeTypeType Equiv.__default.Zero Tclass.Equiv.MValue)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|ctx#0@@5| T@U) (|ctx'#0@@2| T@U) ) (!  (=> (or (|Equiv.__default.EqCtx#canCall| (Lit MapType |ctx#0@@5|) (Lit MapType |ctx'#0@@2|)) (and (< 0 $FunctionContextHeight) (and ($Is MapType |ctx#0@@5| (TMap (TSeq TChar) TInt)) ($Is MapType |ctx'#0@@2| (TMap (TSeq TChar) TInt))))) (= (Equiv.__default.EqCtx true (Lit MapType |ctx#0@@5|) (Lit MapType |ctx'#0@@2|))  (and (|Set#Equal| (|Map#Domain| (Lit MapType |ctx#0@@5|)) (|Map#Domain| (Lit MapType |ctx'#0@@2|))) (forall ((|x#1| T@U) ) (!  (=> (and ($Is SeqType |x#1| (TSeq TChar)) (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType |ctx#0@@5|))) ($Box SeqType |x#1|))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |ctx#0@@5|)) ($Box SeqType |x#1|)))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |ctx'#0@@2|)) ($Box SeqType |x#1|))))))
 :qid |Equivdfy.30:15|
 :skolemid |658|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx'#0@@2|) ($Box SeqType |x#1|))))
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@5|) ($Box SeqType |x#1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |ctx#0@@5|) ($Box SeqType |x#1|)))
)))))
 :qid |Equivdfy.27:35|
 :weight 3
 :skolemid |659|
 :pattern ( (Equiv.__default.EqCtx true (Lit MapType |ctx#0@@5|) (Lit MapType |ctx'#0@@2|)))
))))
(assert (forall ((s@@10 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@10) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@10 n@@4) j@@1) (|Seq#Index| s@@10 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@10 n@@4) j@@1))
)))
(assert (forall ((|e#0@@10| T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed__Single#canCall| (Lit DatatypeTypeType |e#0@@10|)) ($Is DatatypeTypeType |e#0@@10| Tclass.AST.Expr__Raw)) (= (AST.Expr__Raw.WellFormed__Single (Lit DatatypeTypeType |e#0@@10|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@10|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@10|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@10|)) (let ((|bvals#2| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@10|)))))
(let ((|bvars#2| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@10|)))))
(= (|Seq#Length| |bvars#2|) (|Seq#Length| |bvals#2|)))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@10|)) (let ((|avals#2| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@10|)))))
(let ((|avars#2| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@10|)))))
(= (|Seq#Length| |avars#2|) (|Seq#Length| |avals#2|)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@10|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@10|)) (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
 :qid |ASTdfy.71:46|
 :weight 3
 :skolemid |1181|
 :pattern ( (AST.Expr__Raw.WellFormed__Single (Lit DatatypeTypeType |e#0@@10|)))
)))
(assert (forall ((Utils.Result$T@@5 T@U) ) (!  (and (= (Tag (Tclass.Utils.Result Utils.Result$T@@5)) Tagclass.Utils.Result) (= (TagFamily (Tclass.Utils.Result Utils.Result$T@@5)) tytagFamily$Result))
 :qid |unknown.0:0|
 :skolemid |662|
 :pattern ( (Tclass.Utils.Result Utils.Result$T@@5))
)))
(assert (forall ((m@@3 T@U) (n@@5 T@U) (u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Merge| m@@3 n@@5)) u@@0) (and (=> (not (|Set#IsMember| (|Map#Domain| n@@5) u@@0)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@3 n@@5)) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| m@@3) u@@0))) (=> (|Set#IsMember| (|Map#Domain| n@@5) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@3 n@@5)) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| n@@5) u@@0)))))
 :qid |DafnyPreludebpl.1479:15|
 :skolemid |294|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@3 n@@5)) u@@0))
)))
(assert (forall ((|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#Equiv.MState.MState| |a#2#0#0@@1| |a#2#1#0@@1|) Tclass.Equiv.MState)  (and ($Is MapType |a#2#0#0@@1| (TMap (TSeq TChar) TInt)) ($Is MapType |a#2#1#0@@1| (TMap (TSeq TChar) TInt))))
 :qid |Equivdfy.62:28|
 :skolemid |889|
 :pattern ( ($Is DatatypeTypeType (|#Equiv.MState.MState| |a#2#0#0@@1| |a#2#1#0@@1|) Tclass.Equiv.MState))
)))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc DatatypeTypeType Equiv.__default.Zero Tclass.Equiv.MValue $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |678|
 :pattern ( ($IsAlloc DatatypeTypeType Equiv.__default.Zero Tclass.Equiv.MValue $h@@3))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@16| T@U) (|e#0@@11| T@U) ) (!  (=> (or (|Equiv.__default.P__Step#canCall| (Lit DatatypeTypeType |st#0@@16|) (Lit DatatypeTypeType |e#0@@11|)) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@16| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0@@11| Tclass.AST.Expr)) (and (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.P (Lit DatatypeTypeType |st#0@@16|) (Lit DatatypeTypeType |e#0@@11|))))) (not (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.P__Fail (Lit DatatypeTypeType |st#0@@16|) (Lit DatatypeTypeType |e#0@@11|)))))))))) (and (and (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@16|)) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@11|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@16|))))) (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@16|)) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@11|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@16|)))))) (= (Equiv.__default.P__Step (Lit DatatypeTypeType |st#0@@16|) (Lit DatatypeTypeType |e#0@@11|)) (let ((|ctx1#2@@2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@11|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@16|)))))))))))
(let ((|v#2@@0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@11|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@16|))))))))))))
(let ((|ctx1'#2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@11|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@16|)))))))))))
(let ((|v'#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@11|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@16|))))))))))))
(|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#Equiv.MState.MState| |ctx1#2@@2| |ctx1'#2|)) ($Box DatatypeTypeType (|#Equiv.MValue.MValue| |v#2@@0| |v'#2|))))))))))
 :qid |Inductiondfy.66:25|
 :weight 3
 :skolemid |794|
 :pattern ( (Equiv.__default.P__Step (Lit DatatypeTypeType |st#0@@16|) (Lit DatatypeTypeType |e#0@@11|)))
))))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) (bx@@4 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#6#0#0|) bx@@4) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#6#0#0|) bx@@4))) (DtRank (|#Equiv.MState.MState| |a#6#0#0| |a#6#1#0|))))
 :qid |Equivdfy.62:28|
 :skolemid |895|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#6#0#0|) bx@@4) (|#Equiv.MState.MState| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) (bx@@5 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#9#1#0|) bx@@5) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#9#1#0|) bx@@5))) (DtRank (|#Equiv.MState.MState| |a#9#0#0| |a#9#1#0|))))
 :qid |Equivdfy.62:28|
 :skolemid |898|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#9#1#0|) bx@@5) (|#Equiv.MState.MState| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((Utils.Result$T@@6 T@U) (Utils.Result.PropagateFailure$U@@1 T@U) (this@@4 T@U) ) (!  (=> (or (|Utils.Result.PropagateFailure#canCall| Utils.Result$T@@6 Utils.Result.PropagateFailure$U@@1 this@@4) (and ($Is DatatypeTypeType this@@4 (Tclass.Utils.Result Utils.Result$T@@6)) (Utils.Result.Failure_q this@@4))) (= (Utils.Result.PropagateFailure Utils.Result$T@@6 Utils.Result.PropagateFailure$U@@1 this@@4) (Lit DatatypeTypeType |#Utils.Result.Failure|)))
 :qid |unknown.0:0|
 :skolemid |985|
 :pattern ( (Utils.Result.PropagateFailure Utils.Result$T@@6 Utils.Result.PropagateFailure$U@@1 this@@4))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@4) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@4))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@4))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@5) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@5))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@5))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.Equiv.MValue) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.Equiv.MValue)))
 :qid |unknown.0:0|
 :skolemid |677|
 :pattern ( ($IsBox bx@@6 Tclass.Equiv.MValue))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.Equiv.MState) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass.Equiv.MState)))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( ($IsBox bx@@7 Tclass.Equiv.MState))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.AST.Expr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass.AST.Expr)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($IsBox bx@@8 Tclass.AST.Expr))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.Equiv.VS) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) Tclass.Equiv.VS)))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( ($IsBox bx@@9 Tclass.Equiv.VS))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass.AST.BinOp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) Tclass.AST.BinOp)))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( ($IsBox bx@@10 Tclass.AST.BinOp))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass.AST.Expr__Raw) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) Tclass.AST.Expr__Raw)))
 :qid |unknown.0:0|
 :skolemid |846|
 :pattern ( ($IsBox bx@@11 Tclass.AST.Expr__Raw))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass.Equiv.MSeqValue) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) Tclass.Equiv.MSeqValue)))
 :qid |unknown.0:0|
 :skolemid |923|
 :pattern ( ($IsBox bx@@12 Tclass.Equiv.MSeqValue))
)))
(assert (forall ((s@@11 T@U) (i@@9 Int) (v@@4 T@U) ) (!  (and (=> (= i@@9 (|Seq#Length| s@@11)) (= (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@9) v@@4)) (=> (or (not (= i@@9 (|Seq#Length| s@@11))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@9) (|Seq#Index| s@@11 i@@9))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@9))
)))
(assert (forall ((a@@14 T@U) (b@@14 T@U) ) (!  (=> (and (AST.Expr__Raw.Var_q a@@14) (AST.Expr__Raw.Var_q b@@14)) (= (|AST.Expr__Raw#Equal| a@@14 b@@14) (|Seq#Equal| (AST.Expr__Raw.name a@@14) (AST.Expr__Raw.name b@@14))))
 :qid |unknown.0:0|
 :skolemid |1119|
 :pattern ( (|AST.Expr__Raw#Equal| a@@14 b@@14) (AST.Expr__Raw.Var_q a@@14))
 :pattern ( (|AST.Expr__Raw#Equal| a@@14 b@@14) (AST.Expr__Raw.Var_q b@@14))
)))
(assert (forall ((a@@15 T@U) (b@@15 T@U) ) (!  (=> (and (AST.Expr__Raw.Seq_q a@@15) (AST.Expr__Raw.Seq_q b@@15)) (= (|AST.Expr__Raw#Equal| a@@15 b@@15) (|Seq#Equal| (AST.Expr__Raw.es a@@15) (AST.Expr__Raw.es b@@15))))
 :qid |unknown.0:0|
 :skolemid |1125|
 :pattern ( (|AST.Expr__Raw#Equal| a@@15 b@@15) (AST.Expr__Raw.Seq_q a@@15))
 :pattern ( (|AST.Expr__Raw#Equal| a@@15 b@@15) (AST.Expr__Raw.Seq_q b@@15))
)))
(assert (forall (($ly@@4 T@U) (|e#0@@12| T@U) (|ctx#0@@6| T@U) ) (!  (=> (or (|Interp.__default.InterpExpr#canCall| |e#0@@12| |ctx#0@@6|) (and ($Is DatatypeTypeType |e#0@@12| Tclass.AST.Expr) ($Is MapType |ctx#0@@6| (TMap (TSeq TChar) TInt)))) ($Is DatatypeTypeType (Interp.__default.InterpExpr $ly@@4 |e#0@@12| |ctx#0@@6|) (Tclass.Utils.Result (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)))))
 :qid |Interpdfy.24:12|
 :skolemid |1198|
 :pattern ( (Interp.__default.InterpExpr $ly@@4 |e#0@@12| |ctx#0@@6|))
)))
(assert (forall ((m@@4 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@4 |m'|)  (and (forall ((u@@1 T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@4) u@@1) (|Set#IsMember| (|Map#Domain| |m'|) u@@1))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |297|
)) (forall ((u@@2 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@4) u@@2) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@4) u@@2) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@2)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |298|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |299|
 :pattern ( (|Map#Equal| m@@4 |m'|))
)))
(assert (forall (($ly@@5 T@U) (|e#0@@13| T@U) (|ctx#0@@7| T@U) ) (! (= (Interp.__default.InterpExpr ($LS $ly@@5) |e#0@@13| |ctx#0@@7|) (Interp.__default.InterpExpr $ly@@5 |e#0@@13| |ctx#0@@7|))
 :qid |Interpdfy.24:12|
 :skolemid |1196|
 :pattern ( (Interp.__default.InterpExpr ($LS $ly@@5) |e#0@@13| |ctx#0@@7|))
)))
(assert (forall (($ly@@6 T@U) (|es#0@@6| T@U) (|ctx#0@@8| T@U) ) (! (= (Interp.__default.InterpExprs ($LS $ly@@6) |es#0@@6| |ctx#0@@8|) (Interp.__default.InterpExprs $ly@@6 |es#0@@6| |ctx#0@@8|))
 :qid |Interpdfy.69:12|
 :skolemid |1203|
 :pattern ( (Interp.__default.InterpExprs ($LS $ly@@6) |es#0@@6| |ctx#0@@8|))
)))
(assert (forall (($ly@@7 T@U) (|vars#0@@5| T@U) (|values#0| T@U) ) (! (= (Interp.__default.VarsAndValuesToContext ($LS $ly@@7) |vars#0@@5| |values#0|) (Interp.__default.VarsAndValuesToContext $ly@@7 |vars#0@@5| |values#0|))
 :qid |Interpdfy.80:12|
 :skolemid |1210|
 :pattern ( (Interp.__default.VarsAndValuesToContext ($LS $ly@@7) |vars#0@@5| |values#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@17| T@U) (|e#0@@14| T@U) ) (!  (=> (or (|Equiv.__default.P__Fail#canCall| |st#0@@17| (Lit DatatypeTypeType |e#0@@14|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@17| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0@@14| Tclass.AST.Expr)))) (and (and (|Equiv.__default.Inv#canCall| |st#0@@17|) (=> (Equiv.__default.Inv |st#0@@17|) (and (Equiv.MState.MState_q |st#0@@17|) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@14|) (Equiv.MState.ctx |st#0@@17|))))) (= (Equiv.__default.P__Fail |st#0@@17| (Lit DatatypeTypeType |e#0@@14|))  (=> (Equiv.__default.Inv |st#0@@17|) (Utils.Result.Failure_q (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@14|) (Equiv.MState.ctx |st#0@@17|)))))))
 :qid |Inductiondfy.36:26|
 :weight 3
 :skolemid |707|
 :pattern ( (Equiv.__default.P__Fail |st#0@@17| (Lit DatatypeTypeType |e#0@@14|)))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@18| T@U) (|es#0@@7| T@U) ) (!  (=> (or (|Equiv.__default.Pes__Step#canCall| (Lit DatatypeTypeType |st#0@@18|) (Lit SeqType |es#0@@7|)) (and (< 4 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@18| Tclass.Equiv.MState) ($Is SeqType |es#0@@7| (TSeq Tclass.AST.Expr))) (and (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.Pes (Lit DatatypeTypeType |st#0@@18|) (Lit SeqType |es#0@@7|))))) (not (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.Pes__Fail (Lit DatatypeTypeType |st#0@@18|) (Lit SeqType |es#0@@7|)))))))))) (and (and (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@18|)) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@7|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@18|))))) (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@18|)) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@7|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@18|)))))) (= (Equiv.__default.Pes__Step (Lit DatatypeTypeType |st#0@@18|) (Lit SeqType |es#0@@7|)) (let ((|ctx1#2@@3| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@7|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@18|)))))))))))
(let ((|vs#2@@2| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@7|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@18|)))))))))))
(let ((|ctx1'#2@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@7|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@18|)))))))))))
(let ((|vs'#2@@0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@7|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@18|)))))))))))
(|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#Equiv.MState.MState| |ctx1#2@@3| |ctx1'#2@@0|)) ($Box DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| |vs#2@@2| |vs'#2@@0|))))))))))
 :qid |Inductiondfy.71:27|
 :weight 3
 :skolemid |803|
 :pattern ( (Equiv.__default.Pes__Step (Lit DatatypeTypeType |st#0@@18|) (Lit SeqType |es#0@@7|)))
))))
(assert (forall (($ly@@8 T@U) (|vars#0@@6| T@U) (|values#0@@0| T@U) ) (!  (=> (or (|Interp.__default.VarsAndValuesToContext#canCall| |vars#0@@6| |values#0@@0|) (and (and ($Is SeqType |vars#0@@6| (TSeq (TSeq TChar))) ($Is SeqType |values#0@@0| (TSeq TInt))) (= (|Seq#Length| |vars#0@@6|) (|Seq#Length| |values#0@@0|)))) (and (|Set#Equal| (|Map#Domain| (Interp.__default.VarsAndValuesToContext $ly@@8 |vars#0@@6| |values#0@@0|)) (|Set#FromBoogieMap| (|lambda#9| (TSeq TChar) |vars#0@@6|))) ($Is MapType (Interp.__default.VarsAndValuesToContext $ly@@8 |vars#0@@6| |values#0@@0|) (TMap (TSeq TChar) TInt))))
 :qid |Interpdfy.80:12|
 :skolemid |1212|
 :pattern ( (Interp.__default.VarsAndValuesToContext $ly@@8 |vars#0@@6| |values#0@@0|))
)))
(assert (forall ((Utils.Result$T@@7 T@U) (|a#2#0#0@@2| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#Utils.Result.Success| |a#2#0#0@@2|) (Tclass.Utils.Result Utils.Result$T@@7) $h@@6) ($IsAllocBox |a#2#0#0@@2| Utils.Result$T@@7 $h@@6)))
 :qid |unknown.0:0|
 :skolemid |964|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Utils.Result.Success| |a#2#0#0@@2|) (Tclass.Utils.Result Utils.Result$T@@7) $h@@6))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|ctx#0@@9| T@U) (|ctx'#0@@3| T@U) ) (!  (=> (or (|Equiv.__default.EqCtx#canCall| |ctx#0@@9| |ctx'#0@@3|) (and (< 0 $FunctionContextHeight) (and ($Is MapType |ctx#0@@9| (TMap (TSeq TChar) TInt)) ($Is MapType |ctx'#0@@3| (TMap (TSeq TChar) TInt))))) (= (Equiv.__default.EqCtx true |ctx#0@@9| |ctx'#0@@3|)  (and (|Set#Equal| (|Map#Domain| |ctx#0@@9|) (|Map#Domain| |ctx'#0@@3|)) (forall ((|x#0@@3| T@U) ) (!  (=> (and ($Is SeqType |x#0@@3| (TSeq TChar)) (|Set#IsMember| (|Map#Domain| |ctx#0@@9|) ($Box SeqType |x#0@@3|))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@9|) ($Box SeqType |x#0@@3|)))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx'#0@@3|) ($Box SeqType |x#0@@3|))))))
 :qid |Equivdfy.30:15|
 :skolemid |656|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx'#0@@3|) ($Box SeqType |x#0@@3|))))
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@9|) ($Box SeqType |x#0@@3|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |ctx#0@@9|) ($Box SeqType |x#0@@3|)))
)))))
 :qid |Equivdfy.27:35|
 :skolemid |657|
 :pattern ( (Equiv.__default.EqCtx true |ctx#0@@9| |ctx'#0@@3|))
))))
(assert (forall ((a@@16 T@U) (b@@16 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@16 b@@16) o@@2)  (or (|Set#IsMember| a@@16 o@@2) (|Set#IsMember| b@@16 o@@2)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@16 b@@16) o@@2))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@7)  (or (|Seq#Contains| s0@@1 x@@7) (|Seq#Contains| s1@@1 x@@7)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |233|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@7))
)))
(assert (forall ((s@@12 T@U) (n@@6 Int) (x@@8 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@12 n@@6) x@@8) (exists ((i@@10 Int) ) (!  (and (and (and (<= 0 i@@10) (< i@@10 n@@6)) (< i@@10 (|Seq#Length| s@@12))) (= (|Seq#Index| s@@12 i@@10) x@@8))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |235|
 :pattern ( (|Seq#Index| s@@12 i@@10))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |236|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@12 n@@6) x@@8))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@19| T@U) (|es#0@@8| T@U) (|st'#0@@4| T@U) (|vs#0@@2| T@U) ) (!  (=> (or (|Equiv.__default.Pes__Succ#canCall| |st#0@@19| |es#0@@8| |st'#0@@4| |vs#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@19| Tclass.Equiv.MState) ($Is SeqType |es#0@@8| (TSeq Tclass.AST.Expr))) ($Is DatatypeTypeType |st'#0@@4| Tclass.Equiv.MState)) ($Is DatatypeTypeType |vs#0@@2| Tclass.Equiv.VS)))) (and (and (and (Equiv.MState.MState_q |st#0@@19|) (|Interp.__default.InterpExprs#canCall| |es#0@@8| (Equiv.MState.ctx |st#0@@19|))) (let ((|res#0@@3| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@8| (Equiv.MState.ctx |st#0@@19|))))
 (and (and (Equiv.MState.MState_q |st#0@@19|) (|Interp.__default.InterpExprs#canCall| |es#0@@8| (Equiv.MState.ctx_k |st#0@@19|))) (let ((|res'#0@@3| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@8| (Equiv.MState.ctx_k |st#0@@19|))))
 (and (|Equiv.__default.Inv#canCall| |st#0@@19|) (=> (Equiv.__default.Inv |st#0@@19|) (and (|Equiv.__default.EqResultSeq#canCall| |res#0@@3| |res'#0@@3|) (=> (Equiv.__default.EqResultSeq |res#0@@3| |res'#0@@3|) (and (and (|$IsA#Utils.Result| |res#0@@3|) (and (Equiv.MSeqValue.MSeqValue_q |vs#0@@2|) (Equiv.MState.MState_q |st'#0@@4|))) (=> (|Utils.Result#Equal| |res#0@@3| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Equiv.MSeqValue.vs |vs#0@@2|)) ($Box MapType (Equiv.MState.ctx |st'#0@@4|)))))) (and (|$IsA#Utils.Result| |res'#0@@3|) (and (Equiv.MSeqValue.MSeqValue_q |vs#0@@2|) (Equiv.MState.MState_q |st'#0@@4|))))))))))))) (= (Equiv.__default.Pes__Succ |st#0@@19| |es#0@@8| |st'#0@@4| |vs#0@@2|) (let ((|res#0@@4| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@8| (Equiv.MState.ctx |st#0@@19|))))
(let ((|res'#0@@4| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@8| (Equiv.MState.ctx_k |st#0@@19|))))
 (and (and (and (Equiv.__default.Inv |st#0@@19|) (Equiv.__default.EqResultSeq |res#0@@4| |res'#0@@4|)) (|Utils.Result#Equal| |res#0@@4| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Equiv.MSeqValue.vs |vs#0@@2|)) ($Box MapType (Equiv.MState.ctx |st'#0@@4|))))))) (|Utils.Result#Equal| |res'#0@@4| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Equiv.MSeqValue.vs_k |vs#0@@2|)) ($Box MapType (Equiv.MState.ctx_k |st'#0@@4|))))))))))))
 :qid |Inductiondfy.40:28|
 :skolemid |723|
 :pattern ( (Equiv.__default.Pes__Succ |st#0@@19| |es#0@@8| |st'#0@@4| |vs#0@@2|))
))))
(assert (forall ((a@@17 T@U) (b@@17 T@U) ) (!  (=> (|Set#Disjoint| a@@17 b@@17) (and (= (|Set#Difference| (|Set#Union| a@@17 b@@17) a@@17) b@@17) (= (|Set#Difference| (|Set#Union| a@@17 b@@17) b@@17) a@@17)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@17 b@@17))
)))
(assert (forall ((f@@1 T@U) (t0@@3 T@U) (t1@@2 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@3 t1@@2) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@3 h@@0) (Requires1 t0@@3 t1@@2 h@@0 f@@1 bx0@@0)) ($IsAllocBox (Apply1 t0@@3 t1@@2 h@@0 f@@1 bx0@@0) t1@@2 h@@0))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@3 t1@@2 h@@0 f@@1 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@3 t1@@2) h@@0))
)))
(assert (forall ((s@@13 T@U) (x@@9 T@U) ) (! (= (|Seq#Contains| s@@13 x@@9) (exists ((i@@11 Int) ) (!  (and (and (<= 0 i@@11) (< i@@11 (|Seq#Length| s@@13))) (= (|Seq#Index| s@@13 i@@11) x@@9))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@13 i@@11))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@13 x@@9))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|res#0@@5| T@U) (|res'#0@@5| T@U) ) (!  (=> (or (|Equiv.__default.EqResult#canCall| (Lit DatatypeTypeType |res#0@@5|) (Lit DatatypeTypeType |res'#0@@5|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |res#0@@5| (Tclass.Utils.Result (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)))) ($Is DatatypeTypeType |res'#0@@5| (Tclass.Utils.Result (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt))))))) (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|))))) (=> (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Success_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|))))))))))) (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|))))) (=> (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Success_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|))))))))))) (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|))))) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|)))))))))))) (let ((|ctx'#3@@0| (Lit MapType ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|)))))))))))))))
 (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|))))) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|)))))))))))) (let ((|v'#3| (LitInt (U_2_int ($Unbox intType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|))))))))))))))))
 (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|))))) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|)))))))))))) (let ((|ctx#3@@0| (Lit MapType ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|)))))))))))))))
 (and (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|))))) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|)))))))))))) (let ((|v#3| (LitInt (U_2_int ($Unbox intType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|))))))))))))))))
 (and (|Equiv.__default.EqValue#canCall| |v#3| |v'#3|) (=> (Equiv.__default.EqValue |v#3| |v'#3|) (|Equiv.__default.EqCtx#canCall| |ctx#3@@0| |ctx'#3@@0|))))))))))))))) (= (Equiv.__default.EqResult (Lit DatatypeTypeType |res#0@@5|) (Lit DatatypeTypeType |res'#0@@5|)) (ite (Utils.Result.Success_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|)))))))) (ite (Utils.Result.Success_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|)))))))) (let ((|ctx'#2@@0| (Lit MapType ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|)))))))))))))))
(let ((|v'#2@@0| (LitInt (U_2_int ($Unbox intType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|))))))))))))))))
(let ((|ctx#2@@0| (Lit MapType ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|)))))))))))))))
(let ((|v#2@@1| (LitInt (U_2_int ($Unbox intType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |res#0@@5|)) ($Box DatatypeTypeType (Lit DatatypeTypeType |res'#0@@5|))))))))))))))))
 (and (Equiv.__default.EqValue |v#2@@1| |v'#2@@0|) (Equiv.__default.EqCtx reveal_Equiv._default.EqCtx |ctx#2@@0| |ctx'#2@@0|)))))) false) true))))
 :qid |Equivdfy.33:28|
 :weight 3
 :skolemid |668|
 :pattern ( (Equiv.__default.EqResult (Lit DatatypeTypeType |res#0@@5|) (Lit DatatypeTypeType |res'#0@@5|)))
))))
(assert (forall (($ly@@9 T@U) (|es#0@@9| T@U) (|ctx#0@@10| T@U) ) (!  (=> (or (|Interp.__default.InterpExprs#canCall| |es#0@@9| |ctx#0@@10|) (and ($Is SeqType |es#0@@9| (TSeq Tclass.AST.Expr)) ($Is MapType |ctx#0@@10| (TMap (TSeq TChar) TInt)))) (and (=> (not (|Seq#Equal| |es#0@@9| |Seq#Empty|)) (and (|Interp.__default.InterpExpr#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |es#0@@9| (LitInt 0))) |ctx#0@@10|) (let ((|valueOrError0#0@@0| (Interp.__default.InterpExpr $ly@@9 ($Unbox DatatypeTypeType (|Seq#Index| |es#0@@9| (LitInt 0))) |ctx#0@@10|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|) (let ((|ctx1#0@@4| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|))))))
 (and (|Interp.__default.InterpExprs#canCall| (|Seq#Drop| |es#0@@9| (LitInt 1)) |ctx1#0@@4|) (let ((|valueOrError1#0@@0| (Interp.__default.InterpExprs $ly@@9 (|Seq#Drop| |es#0@@9| (LitInt 1)) |ctx1#0@@4|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|)))))))))))) (= (Interp.__default.InterpExprs ($LS $ly@@9) |es#0@@9| |ctx#0@@10|) (ite (|Seq#Equal| |es#0@@9| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box MapType |ctx#0@@10|)))) (let ((|valueOrError0#0@@1| (Interp.__default.InterpExpr $ly@@9 ($Unbox DatatypeTypeType (|Seq#Index| |es#0@@9| (LitInt 0))) |ctx#0@@10|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0@@1|) (let ((|ctx1#0@@5| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@1|))))))
(let ((|v#0@@4| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@1|)))))))
(let ((|valueOrError1#0@@1| (Interp.__default.InterpExprs $ly@@9 (|Seq#Drop| |es#0@@9| (LitInt 1)) |ctx1#0@@5|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@1|) (let ((|ctx2#0@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@1|))))))
(let ((|vs#0@@3| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@1|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |v#0@@4|))) |vs#0@@3|)) ($Box MapType |ctx2#0@@0|))))))))))))))))
 :qid |Interpdfy.69:12|
 :skolemid |1207|
 :pattern ( (Interp.__default.InterpExprs ($LS $ly@@9) |es#0@@9| |ctx#0@@10|))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> (|$IsA#Utils.Result| d@@38) (or (Utils.Result.Success_q d@@38) (Utils.Result.Failure_q d@@38)))
 :qid |unknown.0:0|
 :skolemid |973|
 :pattern ( (|$IsA#Utils.Result| d@@38))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@20| T@U) (|es#0@@10| T@U) ) (!  (=> (or (|Equiv.__default.Pes__Fail#canCall| |st#0@@20| (Lit SeqType |es#0@@10|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@20| Tclass.Equiv.MState) ($Is SeqType |es#0@@10| (TSeq Tclass.AST.Expr))))) (and (and (|Equiv.__default.Inv#canCall| |st#0@@20|) (=> (Equiv.__default.Inv |st#0@@20|) (and (Equiv.MState.MState_q |st#0@@20|) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@10|) (Equiv.MState.ctx |st#0@@20|))))) (= (Equiv.__default.Pes__Fail |st#0@@20| (Lit SeqType |es#0@@10|))  (=> (Equiv.__default.Inv |st#0@@20|) (Utils.Result.Failure_q (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@10|) (Equiv.MState.ctx |st#0@@20|)))))))
 :qid |Inductiondfy.41:28|
 :weight 3
 :skolemid |733|
 :pattern ( (Equiv.__default.Pes__Fail |st#0@@20| (Lit SeqType |es#0@@10|)))
))))
(assert (forall ((|a#78#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#78#0#0|) Tclass.AST.Expr__Raw) ($Is SeqType |a#78#0#0| (TSeq Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.21:11|
 :skolemid |1110|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#78#0#0|) Tclass.AST.Expr__Raw))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@21| T@U) (|es#0@@11| T@U) (|st'#0@@5| T@U) (|vs#0@@4| T@U) ) (!  (=> (or (|Equiv.__default.Pes__Succ#canCall| (Lit DatatypeTypeType |st#0@@21|) (Lit SeqType |es#0@@11|) (Lit DatatypeTypeType |st'#0@@5|) (Lit DatatypeTypeType |vs#0@@4|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@21| Tclass.Equiv.MState) ($Is SeqType |es#0@@11| (TSeq Tclass.AST.Expr))) ($Is DatatypeTypeType |st'#0@@5| Tclass.Equiv.MState)) ($Is DatatypeTypeType |vs#0@@4| Tclass.Equiv.VS)))) (and (and (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@21|)) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@11|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@21|))))) (let ((|res#2@@1| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@11|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@21|)))))))
 (and (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@21|)) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@11|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@21|))))) (let ((|res'#2@@1| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@11|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@21|)))))))
 (and (|Equiv.__default.Inv#canCall| (Lit DatatypeTypeType |st#0@@21|)) (=> (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@21|))))) (and (|Equiv.__default.EqResultSeq#canCall| |res#2@@1| |res'#2@@1|) (=> (Equiv.__default.EqResultSeq |res#2@@1| |res'#2@@1|) (and (and (|$IsA#Utils.Result| |res#2@@1|) (and (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |vs#0@@4|)) (Equiv.MState.MState_q (Lit DatatypeTypeType |st'#0@@5|)))) (=> (|Utils.Result#Equal| |res#2@@1| (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |vs#0@@4|)))) ($Box MapType (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st'#0@@5|))))))))) (and (|$IsA#Utils.Result| |res'#2@@1|) (and (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |vs#0@@4|)) (Equiv.MState.MState_q (Lit DatatypeTypeType |st'#0@@5|)))))))))))))) (= (Equiv.__default.Pes__Succ (Lit DatatypeTypeType |st#0@@21|) (Lit SeqType |es#0@@11|) (Lit DatatypeTypeType |st'#0@@5|) (Lit DatatypeTypeType |vs#0@@4|)) (let ((|res#2@@2| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@11|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@21|)))))))
(let ((|res'#2@@2| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@11|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@21|)))))))
 (and (and (and (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@21|)) (Equiv.__default.EqResultSeq |res#2@@2| |res'#2@@2|)) (|Utils.Result#Equal| |res#2@@2| (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |vs#0@@4|)))) ($Box MapType (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st'#0@@5|)))))))))) (|Utils.Result#Equal| |res'#2@@2| (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |vs#0@@4|)))) ($Box MapType (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st'#0@@5|)))))))))))))))
 :qid |Inductiondfy.40:28|
 :weight 3
 :skolemid |725|
 :pattern ( (Equiv.__default.Pes__Succ (Lit DatatypeTypeType |st#0@@21|) (Lit SeqType |es#0@@11|) (Lit DatatypeTypeType |st'#0@@5|) (Lit DatatypeTypeType |vs#0@@4|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@22| T@U) (|vars#0@@7| T@U) (|argvs#0| T@U) ) (!  (=> (or (|Equiv.__default.UpdateState__Pre#canCall| |st#0@@22| |vars#0@@7| |argvs#0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@22| Tclass.Equiv.MState) ($Is SeqType |vars#0@@7| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |argvs#0| Tclass.Equiv.VS)))) (and (and (|Equiv.__default.Inv#canCall| |st#0@@22|) (=> (Equiv.__default.Inv |st#0@@22|) (and (Equiv.MSeqValue.MSeqValue_q |argvs#0|) (=> (= (|Seq#Length| |vars#0@@7|) (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0|))) (and (and (Equiv.MSeqValue.MSeqValue_q |argvs#0|) (Equiv.MSeqValue.MSeqValue_q |argvs#0|)) (=> (= (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0|)) (|Seq#Length| (Equiv.MSeqValue.vs_k |argvs#0|))) (and (and (Equiv.MSeqValue.MSeqValue_q |argvs#0|) (Equiv.MSeqValue.MSeqValue_q |argvs#0|)) (|Equiv.__default.EqSeqValue#canCall| (Equiv.MSeqValue.vs |argvs#0|) (Equiv.MSeqValue.vs_k |argvs#0|))))))))) (= (Equiv.__default.UpdateState__Pre |st#0@@22| |vars#0@@7| |argvs#0|)  (and (and (Equiv.__default.Inv |st#0@@22|) (and (= (|Seq#Length| |vars#0@@7|) (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0|))) (= (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0|)) (|Seq#Length| (Equiv.MSeqValue.vs_k |argvs#0|))))) (Equiv.__default.EqSeqValue (Equiv.MSeqValue.vs |argvs#0|) (Equiv.MSeqValue.vs_k |argvs#0|))))))
 :qid |Inductiondfy.51:35|
 :skolemid |748|
 :pattern ( (Equiv.__default.UpdateState__Pre |st#0@@22| |vars#0@@7| |argvs#0|))
))))
(assert (forall ((Utils.Result$T@@8 T@U) (d@@39 T@U) ) (!  (=> ($Is DatatypeTypeType d@@39 (Tclass.Utils.Result Utils.Result$T@@8)) (or (Utils.Result.Success_q d@@39) (Utils.Result.Failure_q d@@39)))
 :qid |unknown.0:0|
 :skolemid |974|
 :pattern ( (Utils.Result.Failure_q d@@39) ($Is DatatypeTypeType d@@39 (Tclass.Utils.Result Utils.Result$T@@8)))
 :pattern ( (Utils.Result.Success_q d@@39) ($Is DatatypeTypeType d@@39 (Tclass.Utils.Result Utils.Result$T@@8)))
)))
(assert (forall ((Utils.Result$T@@9 T@U) (this@@5 T@U) ) (!  (=> (or (|Utils.Result.IsFailure#canCall| Utils.Result$T@@9 (Lit DatatypeTypeType this@@5)) ($Is DatatypeTypeType this@@5 (Tclass.Utils.Result Utils.Result$T@@9))) (= (Utils.Result.IsFailure Utils.Result$T@@9 (Lit DatatypeTypeType this@@5)) (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Failure_q (Lit DatatypeTypeType this@@5)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |981|
 :pattern ( (Utils.Result.IsFailure Utils.Result$T@@9 (Lit DatatypeTypeType this@@5)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@4| Int) (|y#0@@3| Int) ) (!  (=> (or (|Equiv.__default.EqValue#canCall| |x#0@@4| |y#0@@3|) (< 0 $FunctionContextHeight)) (= (Equiv.__default.EqValue |x#0@@4| |y#0@@3|) (= |x#0@@4| |y#0@@3|)))
 :qid |Equivdfy.16:27|
 :skolemid |640|
 :pattern ( (Equiv.__default.EqValue |x#0@@4| |y#0@@3|))
))))
(assert (forall ((a@@18 T@U) (b@@18 T@U) ) (!  (=> (|Set#Equal| a@@18 b@@18) (= a@@18 b@@18))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@18 b@@18))
)))
(assert (forall ((a@@19 T@U) (b@@19 T@U) ) (!  (=> (|Seq#Equal| a@@19 b@@19) (= a@@19 b@@19))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@19 b@@19))
)))
(assert (forall ((m@@5 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@5 |m'@@0|) (= m@@5 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |300|
 :pattern ( (|Map#Equal| m@@5 |m'@@0|))
)))
(assert (forall (($ly@@10 T@U) (|es#0@@12| T@U) (|ctx#0@@11| T@U) ) (!  (=> (or (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@12|) |ctx#0@@11|) (and ($Is SeqType |es#0@@12| (TSeq Tclass.AST.Expr)) ($Is MapType |ctx#0@@11| (TMap (TSeq TChar) TInt)))) (and (=> (not (|Seq#Equal| |es#0@@12| |Seq#Empty|)) (and (|Interp.__default.InterpExpr#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@12|) (LitInt 0))) |ctx#0@@11|) (let ((|valueOrError0#1@@0| (Interp.__default.InterpExpr ($LS $ly@@10) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@12|) (LitInt 0))) |ctx#0@@11|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|) (let ((|ctx1#1@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|))))))
 (and (|Interp.__default.InterpExprs#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@12|) (LitInt 1))) |ctx1#1@@1|) (let ((|valueOrError1#1@@0| (Interp.__default.InterpExprs ($LS $ly@@10) (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@12|) (LitInt 1))) |ctx1#1@@1|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|)))))))))))) (= (Interp.__default.InterpExprs ($LS $ly@@10) (Lit SeqType |es#0@@12|) |ctx#0@@11|) (ite (|Seq#Equal| |es#0@@12| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box MapType |ctx#0@@11|)))) (let ((|valueOrError0#1@@1| (Interp.__default.InterpExpr ($LS $ly@@10) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@12|) (LitInt 0))) |ctx#0@@11|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1@@1|) (let ((|ctx1#1@@2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@1|))))))
(let ((|v#1@@0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@1|)))))))
(let ((|valueOrError1#1@@1| (Interp.__default.InterpExprs ($LS $ly@@10) (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@12|) (LitInt 1))) |ctx1#1@@2|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@1|) (let ((|ctx2#1@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@1|))))))
(let ((|vs#1@@0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@1|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |v#1@@0|))) |vs#1@@0|)) ($Box MapType |ctx2#1@@0|))))))))))))))))
 :qid |Interpdfy.69:12|
 :weight 3
 :skolemid |1208|
 :pattern ( (Interp.__default.InterpExprs ($LS $ly@@10) (Lit SeqType |es#0@@12|) |ctx#0@@11|))
)))
(assert (forall ((s@@14 T@U) (n@@7 Int) ) (!  (=> (and (<= 0 n@@7) (<= n@@7 (|Seq#Length| s@@14))) (= (|Seq#Length| (|Seq#Take| s@@14 n@@7)) n@@7))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@14 n@@7)))
)))
(assert (forall ((f@@2 T@U) (t0@@4 T@U) (t1@@3 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@3)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@4)) (Requires1 t0@@4 t1@@3 h@@1 f@@2 bx0@@1)) ($IsBox (Apply1 t0@@4 t1@@3 h@@1 f@@2 bx0@@1) t1@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@4 t1@@3 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@3)))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 TInt) (and (= ($Box intType ($Unbox intType bx@@13)) bx@@13) ($Is intType ($Unbox intType bx@@13) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@13 TInt))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 TBool) (and (= ($Box boolType ($Unbox boolType bx@@14)) bx@@14) ($Is boolType ($Unbox boolType bx@@14) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@14 TBool))
)))
(assert (= (Ctor charType) 9))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 TChar) (and (= ($Box charType ($Unbox charType bx@@15)) bx@@15) ($Is charType ($Unbox charType bx@@15) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@15 TChar))
)))
(assert (forall ((a@@20 T@U) (b@@20 T@U) ) (!  (=> (and (AST.Expr__Raw.Assign_q a@@20) (AST.Expr__Raw.Assign_q b@@20)) (= (|AST.Expr__Raw#Equal| a@@20 b@@20)  (and (|Seq#Equal| (AST.Expr__Raw.avars a@@20) (AST.Expr__Raw.avars b@@20)) (|Seq#Equal| (AST.Expr__Raw.avals a@@20) (AST.Expr__Raw.avals b@@20)))))
 :qid |unknown.0:0|
 :skolemid |1122|
 :pattern ( (|AST.Expr__Raw#Equal| a@@20 b@@20) (AST.Expr__Raw.Assign_q a@@20))
 :pattern ( (|AST.Expr__Raw#Equal| a@@20 b@@20) (AST.Expr__Raw.Assign_q b@@20))
)))
(assert (forall ((v@@5 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@5) t@@2) ($Is T@@2 v@@5 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@5) t@@2))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@23| T@U) (|vars#0@@8| T@U) (|vals#0@@3| T@U) ) (!  (=> (or (|Equiv.__default.AssignState#canCall| (Lit DatatypeTypeType |st#0@@23|) (Lit SeqType |vars#0@@8|) (Lit DatatypeTypeType |vals#0@@3|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@23| Tclass.Equiv.MState) ($Is SeqType |vars#0@@8| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@3| Tclass.Equiv.VS)) (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.UpdateState__Pre (Lit DatatypeTypeType |st#0@@23|) (Lit SeqType |vars#0@@8|) (Lit DatatypeTypeType |vals#0@@3|)))))))) (and (and (and (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |vals#0@@3|)) (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@8|) (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |vals#0@@3|))))) (and (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |vals#0@@3|)) (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@8|) (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |vals#0@@3|)))))) (= (Equiv.__default.AssignState (Lit DatatypeTypeType |st#0@@23|) (Lit SeqType |vars#0@@8|) (Lit DatatypeTypeType |vals#0@@3|)) (let ((|ctx'#2@@1| (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@23|))))
(let ((|ctx#2@@1| (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@23|))))
(let ((|bindings#2@@0| (Lit MapType (Interp.__default.VarsAndValuesToContext ($LS $LZ) (Lit SeqType |vars#0@@8|) (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |vals#0@@3|)))))))
(let ((|bindings'#2| (Lit MapType (Interp.__default.VarsAndValuesToContext ($LS $LZ) (Lit SeqType |vars#0@@8|) (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |vals#0@@3|)))))))
(let ((|ctx1#2@@4| (|Map#Merge| |ctx#2@@1| |bindings#2@@0|)))
(let ((|ctx1'#2@@1| (|Map#Merge| |ctx'#2@@1| |bindings'#2|)))
(let ((|st'#2| (|#Equiv.MState.MState| |ctx1#2@@4| |ctx1'#2@@1|)))
|st'#2|))))))))))
 :qid |Inductiondfy.54:30|
 :weight 3
 :skolemid |764|
 :pattern ( (Equiv.__default.AssignState (Lit DatatypeTypeType |st#0@@23|) (Lit SeqType |vars#0@@8|) (Lit DatatypeTypeType |vals#0@@3|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|res#0@@6| T@U) (|res'#0@@6| T@U) ) (!  (=> (or (|Equiv.__default.EqResultSeq#canCall| |res#0@@6| |res'#0@@6|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |res#0@@6| (Tclass.Utils.Result (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)))) ($Is DatatypeTypeType |res'#0@@6| (Tclass.Utils.Result (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt))))))) (and (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))) (=> (Utils.Result.Success_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))))) (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))) (=> (Utils.Result.Success_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))))) (and (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|)))))))) (let ((|ctx'#1@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))))))))))
 (and (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|)))))))) (let ((|vs'#1| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))))))))))
 (and (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|)))))))) (let ((|ctx#1@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))))))))))
 (and (and (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))) (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|)))))))) (let ((|vs#1@@1| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))))))))))
 (and (|Equiv.__default.EqSeqValue#canCall| |vs#1@@1| |vs'#1|) (=> (Equiv.__default.EqSeqValue |vs#1@@1| |vs'#1|) (|Equiv.__default.EqCtx#canCall| |ctx#1@@1| |ctx'#1@@1|))))))))))))))) (= (Equiv.__default.EqResultSeq |res#0@@6| |res'#0@@6|) (ite (Utils.Result.Success_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))))) (ite (Utils.Result.Success_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))))) (let ((|ctx'#0@@4| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))))))))))
(let ((|vs'#0@@0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))))))))))
(let ((|ctx#0@@12| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))))))))))
(let ((|vs#0@@5| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |res#0@@6|) ($Box DatatypeTypeType |res'#0@@6|))))))))))
 (and (Equiv.__default.EqSeqValue |vs#0@@5| |vs'#0@@0|) (Equiv.__default.EqCtx reveal_Equiv._default.EqCtx |ctx#0@@12| |ctx'#0@@4|)))))) false) true))))
 :qid |Equivdfy.45:31|
 :skolemid |673|
 :pattern ( (Equiv.__default.EqResultSeq |res#0@@6| |res'#0@@6|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@24| T@U) (|e#0@@15| T@U) ) (!  (=> (or (|Equiv.__default.P#canCall| |st#0@@24| |e#0@@15|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@24| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0@@15| Tclass.AST.Expr)))) (and (and (and (Equiv.MState.MState_q |st#0@@24|) (|Interp.__default.InterpExpr#canCall| |e#0@@15| (Equiv.MState.ctx |st#0@@24|))) (let ((|res#0@@7| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@15| (Equiv.MState.ctx |st#0@@24|))))
 (and (and (Equiv.MState.MState_q |st#0@@24|) (|Interp.__default.InterpExpr#canCall| |e#0@@15| (Equiv.MState.ctx_k |st#0@@24|))) (let ((|res'#0@@7| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@15| (Equiv.MState.ctx_k |st#0@@24|))))
 (and (|Equiv.__default.Inv#canCall| |st#0@@24|) (=> (Equiv.__default.Inv |st#0@@24|) (|Equiv.__default.EqResult#canCall| |res#0@@7| |res'#0@@7|))))))) (= (Equiv.__default.P |st#0@@24| |e#0@@15|) (let ((|res#0@@8| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@15| (Equiv.MState.ctx |st#0@@24|))))
(let ((|res'#0@@8| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@15| (Equiv.MState.ctx_k |st#0@@24|))))
 (=> (Equiv.__default.Inv |st#0@@24|) (Equiv.__default.EqResult |res#0@@8| |res'#0@@8|)))))))
 :qid |Inductiondfy.34:21|
 :skolemid |688|
 :pattern ( (Equiv.__default.P |st#0@@24| |e#0@@15|))
))))
(assert (forall ((s@@15 T@U) ) (! (<= 0 (|Seq#Length| s@@15))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@15))
)))
(assert (forall ((s@@16 T@U) (i@@12 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@12) (< i@@12 j@@2)) (<= j@@2 (|Seq#Length| s@@16))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@16 i@@12) (|Seq#Drop| s@@16 j@@2))) (|Seq#Rank| s@@16)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |270|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@16 i@@12) (|Seq#Drop| s@@16 j@@2))))
)))
(assert (forall ((a@@21 T@U) (b@@21 T@U) ) (!  (=> (and (Utils.Result.Failure_q a@@21) (Utils.Result.Failure_q b@@21)) (|Utils.Result#Equal| a@@21 b@@21))
 :qid |unknown.0:0|
 :skolemid |976|
 :pattern ( (|Utils.Result#Equal| a@@21 b@@21) (Utils.Result.Failure_q a@@21))
 :pattern ( (|Utils.Result#Equal| a@@21 b@@21) (Utils.Result.Failure_q b@@21))
)))
(assert (forall ((a@@22 T@U) (b@@22 T@U) ) (!  (=> (and (AST.BinOp.Add_q a@@22) (AST.BinOp.Add_q b@@22)) (|AST.BinOp#Equal| a@@22 b@@22))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( (|AST.BinOp#Equal| a@@22 b@@22) (AST.BinOp.Add_q a@@22))
 :pattern ( (|AST.BinOp#Equal| a@@22 b@@22) (AST.BinOp.Add_q b@@22))
)))
(assert (forall ((a@@23 T@U) (b@@23 T@U) ) (!  (=> (and (AST.BinOp.Sub_q a@@23) (AST.BinOp.Sub_q b@@23)) (|AST.BinOp#Equal| a@@23 b@@23))
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( (|AST.BinOp#Equal| a@@23 b@@23) (AST.BinOp.Sub_q a@@23))
 :pattern ( (|AST.BinOp#Equal| a@@23 b@@23) (AST.BinOp.Sub_q b@@23))
)))
(assert (forall ((a@@24 T@U) (b@@24 T@U) ) (!  (=> (and (AST.BinOp.Mul_q a@@24) (AST.BinOp.Mul_q b@@24)) (|AST.BinOp#Equal| a@@24 b@@24))
 :qid |unknown.0:0|
 :skolemid |1025|
 :pattern ( (|AST.BinOp#Equal| a@@24 b@@24) (AST.BinOp.Mul_q a@@24))
 :pattern ( (|AST.BinOp#Equal| a@@24 b@@24) (AST.BinOp.Mul_q b@@24))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st0#0@@1| T@U) (|st#0@@25| T@U) (|vars#0@@9| T@U) ) (!  (=> (or (|Equiv.__default.BindEndScope#canCall| (Lit DatatypeTypeType |st0#0@@1|) (Lit DatatypeTypeType |st#0@@25|) (Lit SeqType |vars#0@@9|)) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st0#0@@1| Tclass.Equiv.MState) ($Is DatatypeTypeType |st#0@@25| Tclass.Equiv.MState)) ($Is SeqType |vars#0@@9| (TSeq (TSeq TChar)))))) (and (and (|Equiv.__default.Inv#canCall| (Lit DatatypeTypeType |st0#0@@1|)) (=> (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.Inv (Lit DatatypeTypeType |st0#0@@1|))))) (|Equiv.__default.Inv#canCall| (Lit DatatypeTypeType |st#0@@25|)))) (= (Equiv.__default.BindEndScope (Lit DatatypeTypeType |st0#0@@1|) (Lit DatatypeTypeType |st#0@@25|) (Lit SeqType |vars#0@@9|)) (let ((|ctx0'#2| (Equiv.MState.ctx_k (Lit DatatypeTypeType |st0#0@@1|))))
(let ((|ctx0#2| (Equiv.MState.ctx (Lit DatatypeTypeType |st0#0@@1|))))
(let ((|ctx'#2@@2| (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@25|))))
(let ((|ctx#2@@2| (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@25|))))
(let ((|ctx1#2@@5| (|Map#Merge| |ctx0#2| (|Map#Subtract| |ctx#2@@2| (|Set#FromBoogieMap| (|lambda#9| (TSeq TChar) |vars#0@@9|))))))
(let ((|ctx1'#2@@2| (|Map#Merge| |ctx0'#2| (|Map#Subtract| |ctx'#2@@2| (|Set#FromBoogieMap| (|lambda#9| (TSeq TChar) |vars#0@@9|))))))
(let ((|st'#2@@0| (|#Equiv.MState.MState| |ctx1#2@@5| |ctx1'#2@@2|)))
|st'#2@@0|))))))))))
 :qid |Inductiondfy.64:31|
 :weight 3
 :skolemid |784|
 :pattern ( (Equiv.__default.BindEndScope (Lit DatatypeTypeType |st0#0@@1|) (Lit DatatypeTypeType |st#0@@25|) (Lit SeqType |vars#0@@9|)))
))))
(assert (forall (($heap T@U) (|$fh$0x#0| T@U) ) (! (= (AST.Expr__Raw.WellFormed__Single |$fh$0x#0|) (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $heap |AST.Expr__Raw.WellFormed__Single#Handle| ($Box DatatypeTypeType |$fh$0x#0|)))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1187|
 :pattern ( (AST.Expr__Raw.WellFormed__Single |$fh$0x#0|) ($IsGoodHeap $heap))
)))
(assert (forall ((v@@6 T@U) (t0@@5 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@5) h@@2) (forall ((bx@@16 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@16) ($IsAllocBox bx@@16 t0@@5 h@@2))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@6 bx@@16))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@5) h@@2))
)))
(assert (forall ((t@@3 T@U) (u@@3 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@3)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u@@3))
)))
(assert (forall ((t@@4 T@U) (u@@4 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@4)) u@@4)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@4))
)))
(assert (forall ((t@@5 T@U) (u@@5 T@U) ) (! (= (Tag (TMap t@@5 u@@5)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@5))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((|a#0#0#0@@0| T@U) (|a#0#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#Equiv.MState.MState| |a#0#0#0@@0| |a#0#1#0@@0|)) |##Equiv.MState.MState|)
 :qid |Equivdfy.62:28|
 :skolemid |885|
 :pattern ( (|#Equiv.MState.MState| |a#0#0#0@@0| |a#0#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (Equiv.MState.ctx (|#Equiv.MState.MState| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#0#0@@0|)
 :qid |Equivdfy.62:28|
 :skolemid |893|
 :pattern ( (|#Equiv.MState.MState| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (Equiv.MState.ctx_k (|#Equiv.MState.MState| |a#7#0#0| |a#7#1#0|)) |a#7#1#0|)
 :qid |Equivdfy.62:28|
 :skolemid |896|
 :pattern ( (|#Equiv.MState.MState| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| Int) ) (! (= (DatatypeCtorId (|#Equiv.MValue.MValue| |a#10#0#0| |a#10#1#0|)) |##Equiv.MValue.MValue|)
 :qid |Equivdfy.63:28|
 :skolemid |904|
 :pattern ( (|#Equiv.MValue.MValue| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#14#0#0| Int) (|a#14#1#0| Int) ) (! (= (Equiv.MValue.v (|#Equiv.MValue.MValue| |a#14#0#0| |a#14#1#0|)) |a#14#0#0|)
 :qid |Equivdfy.63:28|
 :skolemid |912|
 :pattern ( (|#Equiv.MValue.MValue| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((|a#15#0#0| Int) (|a#15#1#0| Int) ) (! (= (Equiv.MValue.v_k (|#Equiv.MValue.MValue| |a#15#0#0| |a#15#1#0|)) |a#15#1#0|)
 :qid |Equivdfy.63:28|
 :skolemid |913|
 :pattern ( (|#Equiv.MValue.MValue| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (DatatypeCtorId (|#Equiv.MSeqValue.MSeqValue| |a#16#0#0| |a#16#1#0|)) |##Equiv.MSeqValue.MSeqValue|)
 :qid |Equivdfy.64:34|
 :skolemid |919|
 :pattern ( (|#Equiv.MSeqValue.MSeqValue| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) ) (! (= (Equiv.MSeqValue.vs (|#Equiv.MSeqValue.MSeqValue| |a#20#0#0| |a#20#1#0|)) |a#20#0#0|)
 :qid |Equivdfy.64:34|
 :skolemid |928|
 :pattern ( (|#Equiv.MSeqValue.MSeqValue| |a#20#0#0| |a#20#1#0|))
)))
(assert (forall ((|a#23#0#0@@0| T@U) (|a#23#1#0| T@U) ) (! (= (Equiv.MSeqValue.vs_k (|#Equiv.MSeqValue.MSeqValue| |a#23#0#0@@0| |a#23#1#0|)) |a#23#1#0|)
 :qid |Equivdfy.64:34|
 :skolemid |931|
 :pattern ( (|#Equiv.MSeqValue.MSeqValue| |a#23#0#0@@0| |a#23#1#0|))
)))
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Assign| |a#46#0#0| |a#46#1#0|)) |##AST.Expr_Raw.Assign|)
 :qid |ASTdfy.18:14|
 :skolemid |1062|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#46#0#0| |a#46#1#0|))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= (AST.Expr__Raw.avars (|#AST.Expr_Raw.Assign| |a#50#0#0| |a#50#1#0|)) |a#50#0#0|)
 :qid |ASTdfy.18:14|
 :skolemid |1070|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#50#0#0| |a#50#1#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= (AST.Expr__Raw.avals (|#AST.Expr_Raw.Assign| |a#53#0#0| |a#53#1#0|)) |a#53#1#0|)
 :qid |ASTdfy.18:14|
 :skolemid |1073|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall ((Utils.Result$T@@10 T@U) (Utils.Result.PropagateFailure$U@@2 T@U) (this@@6 T@U) ) (!  (=> (or (|Utils.Result.PropagateFailure#canCall| Utils.Result$T@@10 Utils.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@6)) (and ($Is DatatypeTypeType this@@6 (Tclass.Utils.Result Utils.Result$T@@10)) (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Failure_q (Lit DatatypeTypeType this@@6))))))) (= (Utils.Result.PropagateFailure Utils.Result$T@@10 Utils.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@6)) (Lit DatatypeTypeType |#Utils.Result.Failure|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |986|
 :pattern ( (Utils.Result.PropagateFailure Utils.Result$T@@10 Utils.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@6)))
)))
(assert (forall ((|e#0@@16| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0@@16| Tclass.AST.Expr__Raw) (= (|AST.Expr__Raw.WellFormed__Single#requires| |e#0@@16|) true))
 :qid |ASTdfy.71:46|
 :skolemid |1179|
 :pattern ( (|AST.Expr__Raw.WellFormed__Single#requires| |e#0@@16|))
)))
(assert (forall ((v@@7 T@U) (t0@@6 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@7 (TSeq t0@@6) h@@3) (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 (|Seq#Length| v@@7))) ($IsAllocBox (|Seq#Index| v@@7 i@@13) t0@@6 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@7 i@@13))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@7 (TSeq t0@@6) h@@3))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) ) (! (= (|#AST.Expr_Raw.Bind| (Lit SeqType |a#37#0#0|) (Lit SeqType |a#37#1#0|) (Lit DatatypeTypeType |a#37#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#37#0#0| |a#37#1#0| |a#37#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |1053|
 :pattern ( (|#AST.Expr_Raw.Bind| (Lit SeqType |a#37#0#0|) (Lit SeqType |a#37#1#0|) (Lit DatatypeTypeType |a#37#2#0|)))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) (|a#59#2#0| T@U) ) (! (= (|#AST.Expr_Raw.If| (Lit DatatypeTypeType |a#59#0#0|) (Lit DatatypeTypeType |a#59#1#0|) (Lit DatatypeTypeType |a#59#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.If| |a#59#0#0| |a#59#1#0| |a#59#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1084|
 :pattern ( (|#AST.Expr_Raw.If| (Lit DatatypeTypeType |a#59#0#0|) (Lit DatatypeTypeType |a#59#1#0|) (Lit DatatypeTypeType |a#59#2#0|)))
)))
(assert (forall ((|a#69#0#0| T@U) (|a#69#1#0| T@U) (|a#69#2#0| T@U) ) (! (= (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |a#69#0#0|) (Lit DatatypeTypeType |a#69#1#0|) (Lit DatatypeTypeType |a#69#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Op| |a#69#0#0| |a#69#1#0| |a#69#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1099|
 :pattern ( (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |a#69#0#0|) (Lit DatatypeTypeType |a#69#1#0|) (Lit DatatypeTypeType |a#69#2#0|)))
)))
(assert (forall (($ly@@11 T@U) (|e#0@@17| T@U) (|ctx#0@@13| T@U) ) (!  (=> (or (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@17|) (Lit MapType |ctx#0@@13|)) (and ($Is DatatypeTypeType |e#0@@17| Tclass.AST.Expr) ($Is MapType |ctx#0@@13| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@17|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@17|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@17|))))) (let ((|body#5| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|bvals#5| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|bvars#5| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@17|)))))
 (and (|Interp.__default.InterpExprs#canCall| |bvals#5| (Lit MapType |ctx#0@@13|)) (let ((|valueOrError0#5| (Interp.__default.InterpExprs ($LS $ly@@11) |bvals#5| (Lit MapType |ctx#0@@13|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|) (let ((|ctx1#20| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|))))))
(let ((|vs#15| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|))))))
 (and (|Interp.__default.VarsAndValuesToContext#canCall| |bvars#5| |vs#15|) (let ((|bindings#10| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#5| |vs#15|)))
(let ((|ctx2#10| (|Map#Merge| |ctx1#20| |bindings#10|)))
 (and (|Interp.__default.InterpExpr#canCall| |body#5| |ctx2#10|) (let ((|valueOrError1#5| (Interp.__default.InterpExpr ($LS $ly@@11) |body#5| |ctx2#10|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|))))))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@17|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@17|))))) (let ((|avals#5| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|avars#5| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@17|)))))
 (and (|Interp.__default.InterpExprs#canCall| |avals#5| (Lit MapType |ctx#0@@13|)) (let ((|valueOrError2#5| (Interp.__default.InterpExprs ($LS $ly@@11) |avals#5| (Lit MapType |ctx#0@@13|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|) (let ((|vs#16| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|))))))
(|Interp.__default.VarsAndValuesToContext#canCall| |avars#5| |vs#16|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@17|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@17|))))) (let ((|els#5| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|thn#5| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|cond#5| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@17|)))))
 (and (|Interp.__default.InterpExpr#canCall| |cond#5| (Lit MapType |ctx#0@@13|)) (let ((|valueOrError3#5| (Interp.__default.InterpExpr ($LS $ly@@11) |cond#5| (Lit MapType |ctx#0@@13|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|) (let ((|ctx_cond#5| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|))))))
(let ((|condv#5| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|)))))))
 (and (=> (or (not (= |condv#5| 0)) (not true)) (|Interp.__default.InterpExpr#canCall| |thn#5| |ctx_cond#5|)) (=> (= |condv#5| 0) (|Interp.__default.InterpExpr#canCall| |els#5| |ctx_cond#5|)))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@17|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@17|))))) (let ((|e2#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|e1#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|op#5| (Lit DatatypeTypeType (AST.Expr__Raw.op (Lit DatatypeTypeType |e#0@@17|)))))
 (and (|Interp.__default.InterpExpr#canCall| |e1#5| (Lit MapType |ctx#0@@13|)) (let ((|valueOrError4#5| (Interp.__default.InterpExpr ($LS $ly@@11) |e1#5| (Lit MapType |ctx#0@@13|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|) (let ((|ctx1#22| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|))))))
(let ((|v1#5| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|)))))))
 (and (|Interp.__default.InterpExpr#canCall| |e2#5| |ctx1#22|) (let ((|valueOrError5#5| (Interp.__default.InterpExpr ($LS $ly@@11) |e2#5| |ctx1#22|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|) (let ((|v2#5| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|)))))))
(|Interp.__default.InterpBinOp#canCall| |op#5| |v1#5| |v2#5|)))))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@17|)))))) (let ((|es#5| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@17|)))))
 (and (|Interp.__default.InterpExprs#canCall| |es#5| (Lit MapType |ctx#0@@13|)) (let ((|valueOrError6#5| (Interp.__default.InterpExprs ($LS $ly@@11) |es#5| (Lit MapType |ctx#0@@13|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#5|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#5|)))))))))))))))) (= (Interp.__default.InterpExpr ($LS $ly@@11) (Lit DatatypeTypeType |e#0@@17|) (Lit MapType |ctx#0@@13|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@17|)) (let ((|name#4| (Lit SeqType (AST.Expr__Raw.name (Lit DatatypeTypeType |e#0@@17|)))))
(ite (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType |ctx#0@@13|))) ($Box SeqType |name#4|)) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |ctx#0@@13|)) ($Box SeqType |name#4|)) ($Box MapType (Lit MapType |ctx#0@@13|))))) |#Utils.Result.Failure|)) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@17|)) (let ((|n#4| (LitInt (AST.Expr__Raw.n (Lit DatatypeTypeType |e#0@@17|)))))
(Lit DatatypeTypeType (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |n#4|)) ($Box MapType (Lit MapType |ctx#0@@13|)))))))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@17|)) (let ((|body#4| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|bvals#4| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|bvars#4| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|valueOrError0#4| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $ly@@11) |bvals#4| (Lit MapType |ctx#0@@13|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#4|) (let ((|ctx1#16| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#4|)))))))
(let ((|vs#12| ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#4|)))))))
(let ((|bindings#8| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#4| |vs#12|)))
(let ((|ctx2#8| (|Map#Merge| |ctx1#16| |bindings#8|)))
(let ((|valueOrError1#4| (Interp.__default.InterpExpr ($LS $ly@@11) |body#4| |ctx2#8|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#4|) (let ((|ctx3#4| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#4|))))))
(let ((|bodyv#4| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#4|)))))))
(let ((|ctx4#4| (|Map#Merge| |ctx1#16| (|Map#Subtract| |ctx3#4| (|Set#FromBoogieMap| (|lambda#9| (TSeq TChar) |bvars#4|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |bodyv#4|)) ($Box MapType |ctx4#4|)))))))))))))))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@17|)) (let ((|avals#4| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|avars#4| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|valueOrError2#4| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $ly@@11) |avals#4| (Lit MapType |ctx#0@@13|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#4|) (let ((|ctx1#17| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#4|)))))))
(let ((|vs#13| ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#4|)))))))
(let ((|bindings#9| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |avars#4| |vs#13|)))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType (|Map#Merge| |ctx1#17| |bindings#9|)))))))))))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@17|)) (let ((|els#4| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|thn#4| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|cond#4| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|valueOrError3#4| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $ly@@11) |cond#4| (Lit MapType |ctx#0@@13|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#4|) (let ((|ctx_cond#4| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#4|)))))))
(let ((|condv#4| (U_2_int ($Unbox intType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#4|))))))))
(ite  (or (not (= |condv#4| 0)) (not true)) (Interp.__default.InterpExpr ($LS $ly@@11) |thn#4| |ctx_cond#4|) (Interp.__default.InterpExpr ($LS $ly@@11) |els#4| |ctx_cond#4|))))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@17|)) (let ((|e2#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|e1#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|op#4| (Lit DatatypeTypeType (AST.Expr__Raw.op (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|valueOrError4#4| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $ly@@11) |e1#4| (Lit MapType |ctx#0@@13|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#4|) (let ((|ctx1#18| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#4|)))))))
(let ((|v1#4| (U_2_int ($Unbox intType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#4|))))))))
(let ((|valueOrError5#4| (Interp.__default.InterpExpr ($LS $ly@@11) |e2#4| |ctx1#18|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#4|) (let ((|ctx2#9| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#4|))))))
(let ((|v2#4| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#4|)))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Interp.__default.InterpBinOp |op#4| |v1#4| |v2#4|))) ($Box MapType |ctx2#9|))))))))))))))) (let ((|es#4| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@17|)))))
(let ((|valueOrError6#4| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $ly@@11) |es#4| (Lit MapType |ctx#0@@13|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#4|) (let ((|ctx1#19| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#4|)))))))
(let ((|vs#14| ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#4|)))))))
(ite (|Seq#Equal| |vs#14| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType |ctx1#19|)))) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (|Seq#Index| |vs#14| (- (|Seq#Length| |vs#14|) 1)) ($Box MapType |ctx1#19|)))))))))))))))))))
 :qid |Interpdfy.24:12|
 :weight 3
 :skolemid |1202|
 :pattern ( (Interp.__default.InterpExpr ($LS $ly@@11) (Lit DatatypeTypeType |e#0@@17|) (Lit MapType |ctx#0@@13|)))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSeq (TSeq t@@8)) t@@8)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSeq t@@9)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((Utils.Result$T@@11 T@U) ) (! (= (Tclass.Utils.Result_0 (Tclass.Utils.Result Utils.Result$T@@11)) Utils.Result$T@@11)
 :qid |unknown.0:0|
 :skolemid |663|
 :pattern ( (Tclass.Utils.Result Utils.Result$T@@11))
)))
(assert (forall ((|a#0#0#0@@1| T@U) ) (! (= (DatatypeCtorId (|#Utils.Result.Success| |a#0#0#0@@1|)) |##Utils.Result.Success|)
 :qid |Utilsdfy.23:34|
 :skolemid |959|
 :pattern ( (|#Utils.Result.Success| |a#0#0#0@@1|))
)))
(assert (forall ((|a#4#0#0@@1| T@U) ) (! (= (Utils.Result.value (|#Utils.Result.Success| |a#4#0#0@@1|)) |a#4#0#0@@1|)
 :qid |Utilsdfy.23:34|
 :skolemid |967|
 :pattern ( (|#Utils.Result.Success| |a#4#0#0@@1|))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Var| |a#22#0#0|)) |##AST.Expr_Raw.Var|)
 :qid |ASTdfy.15:11|
 :skolemid |1027|
 :pattern ( (|#AST.Expr_Raw.Var| |a#22#0#0|))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= (AST.Expr__Raw.name (|#AST.Expr_Raw.Var| |a#26#0#0|)) |a#26#0#0|)
 :qid |ASTdfy.15:11|
 :skolemid |1034|
 :pattern ( (|#AST.Expr_Raw.Var| |a#26#0#0|))
)))
(assert (forall ((|a#29#0#0| Int) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Literal| |a#29#0#0|)) |##AST.Expr_Raw.Literal|)
 :qid |ASTdfy.16:15|
 :skolemid |1037|
 :pattern ( (|#AST.Expr_Raw.Literal| |a#29#0#0|))
)))
(assert (forall ((|a#33#0#0| Int) ) (! (= (AST.Expr__Raw.n (|#AST.Expr_Raw.Literal| |a#33#0#0|)) |a#33#0#0|)
 :qid |ASTdfy.16:15|
 :skolemid |1044|
 :pattern ( (|#AST.Expr_Raw.Literal| |a#33#0#0|))
)))
(assert (forall ((|a#76#0#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Seq| |a#76#0#0|)) |##AST.Expr_Raw.Seq|)
 :qid |ASTdfy.21:11|
 :skolemid |1106|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#76#0#0|))
)))
(assert (forall ((|a#80#0#0| T@U) ) (! (= (AST.Expr__Raw.es (|#AST.Expr_Raw.Seq| |a#80#0#0|)) |a#80#0#0|)
 :qid |ASTdfy.21:11|
 :skolemid |1113|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#80#0#0|))
)))
(assert (forall ((x@@10 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@10))
)))
(assert (forall ((v@@8 T@U) (t0@@7 T@U) (t1@@4 T@U) (h@@4 T@U) ) (! (= ($IsAlloc MapType v@@8 (TMap t0@@7 t1@@4) h@@4) (forall ((bx@@17 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@17) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@17) t1@@4 h@@4) ($IsAllocBox bx@@17 t0@@7 h@@4)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@17))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@17))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@8 (TMap t0@@7 t1@@4) h@@4))
)))
(assert (forall ((Utils.Result$T@@12 T@U) (this@@7 T@U) ) (!  (=> (or (|Utils.Result.Extract#canCall| Utils.Result$T@@12 this@@7) (and ($Is DatatypeTypeType this@@7 (Tclass.Utils.Result Utils.Result$T@@12)) (Utils.Result.Success_q this@@7))) ($IsBox (Utils.Result.Extract Utils.Result$T@@12 this@@7) Utils.Result$T@@12))
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( (Utils.Result.Extract Utils.Result$T@@12 this@@7))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@26| T@U) (|es#0@@13| T@U) (|st'#0@@6| T@U) (|vs#0@@6| T@U) ) (!  (=> (or (|Equiv.__default.Pes__Succ#canCall| |st#0@@26| (Lit SeqType |es#0@@13|) |st'#0@@6| |vs#0@@6|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@26| Tclass.Equiv.MState) ($Is SeqType |es#0@@13| (TSeq Tclass.AST.Expr))) ($Is DatatypeTypeType |st'#0@@6| Tclass.Equiv.MState)) ($Is DatatypeTypeType |vs#0@@6| Tclass.Equiv.VS)))) (and (and (and (Equiv.MState.MState_q |st#0@@26|) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@13|) (Equiv.MState.ctx |st#0@@26|))) (let ((|res#1@@5| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@13|) (Equiv.MState.ctx |st#0@@26|))))
 (and (and (Equiv.MState.MState_q |st#0@@26|) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@13|) (Equiv.MState.ctx_k |st#0@@26|))) (let ((|res'#1@@5| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@13|) (Equiv.MState.ctx_k |st#0@@26|))))
 (and (|Equiv.__default.Inv#canCall| |st#0@@26|) (=> (Equiv.__default.Inv |st#0@@26|) (and (|Equiv.__default.EqResultSeq#canCall| |res#1@@5| |res'#1@@5|) (=> (Equiv.__default.EqResultSeq |res#1@@5| |res'#1@@5|) (and (and (|$IsA#Utils.Result| |res#1@@5|) (and (Equiv.MSeqValue.MSeqValue_q |vs#0@@6|) (Equiv.MState.MState_q |st'#0@@6|))) (=> (|Utils.Result#Equal| |res#1@@5| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Equiv.MSeqValue.vs |vs#0@@6|)) ($Box MapType (Equiv.MState.ctx |st'#0@@6|)))))) (and (|$IsA#Utils.Result| |res'#1@@5|) (and (Equiv.MSeqValue.MSeqValue_q |vs#0@@6|) (Equiv.MState.MState_q |st'#0@@6|))))))))))))) (= (Equiv.__default.Pes__Succ |st#0@@26| (Lit SeqType |es#0@@13|) |st'#0@@6| |vs#0@@6|) (let ((|res#1@@6| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@13|) (Equiv.MState.ctx |st#0@@26|))))
(let ((|res'#1@@6| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@13|) (Equiv.MState.ctx_k |st#0@@26|))))
 (and (and (and (Equiv.__default.Inv |st#0@@26|) (Equiv.__default.EqResultSeq |res#1@@6| |res'#1@@6|)) (|Utils.Result#Equal| |res#1@@6| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Equiv.MSeqValue.vs |vs#0@@6|)) ($Box MapType (Equiv.MState.ctx |st'#0@@6|))))))) (|Utils.Result#Equal| |res'#1@@6| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Equiv.MSeqValue.vs_k |vs#0@@6|)) ($Box MapType (Equiv.MState.ctx_k |st'#0@@6|))))))))))))
 :qid |Inductiondfy.40:28|
 :weight 3
 :skolemid |724|
 :pattern ( (Equiv.__default.Pes__Succ |st#0@@26| (Lit SeqType |es#0@@13|) |st'#0@@6| |vs#0@@6|))
))))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (< (|Seq#Rank| |a#40#0#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#40#0#0| |a#40#1#0| |a#40#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |1056|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#40#0#0| |a#40#1#0| |a#40#2#0|))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (|a#43#2#0| T@U) ) (! (< (|Seq#Rank| |a#43#1#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#43#0#0| |a#43#1#0| |a#43#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |1059|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#43#0#0| |a#43#1#0| |a#43#2#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (|a#45#2#0| T@U) ) (! (< (DtRank |a#45#2#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#45#0#0| |a#45#1#0| |a#45#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |1061|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#45#0#0| |a#45#1#0| |a#45#2#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) (|a#61#2#0| T@U) ) (! (< (DtRank |a#61#0#0|) (DtRank (|#AST.Expr_Raw.If| |a#61#0#0| |a#61#1#0| |a#61#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1086|
 :pattern ( (|#AST.Expr_Raw.If| |a#61#0#0| |a#61#1#0| |a#61#2#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) (|a#63#2#0| T@U) ) (! (< (DtRank |a#63#1#0|) (DtRank (|#AST.Expr_Raw.If| |a#63#0#0| |a#63#1#0| |a#63#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1088|
 :pattern ( (|#AST.Expr_Raw.If| |a#63#0#0| |a#63#1#0| |a#63#2#0|))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) (|a#65#2#0| T@U) ) (! (< (DtRank |a#65#2#0|) (DtRank (|#AST.Expr_Raw.If| |a#65#0#0| |a#65#1#0| |a#65#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1090|
 :pattern ( (|#AST.Expr_Raw.If| |a#65#0#0| |a#65#1#0| |a#65#2#0|))
)))
(assert (forall ((|a#71#0#0| T@U) (|a#71#1#0| T@U) (|a#71#2#0| T@U) ) (! (< (DtRank |a#71#0#0|) (DtRank (|#AST.Expr_Raw.Op| |a#71#0#0| |a#71#1#0| |a#71#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1101|
 :pattern ( (|#AST.Expr_Raw.Op| |a#71#0#0| |a#71#1#0| |a#71#2#0|))
)))
(assert (forall ((|a#73#0#0| T@U) (|a#73#1#0| T@U) (|a#73#2#0| T@U) ) (! (< (DtRank |a#73#1#0|) (DtRank (|#AST.Expr_Raw.Op| |a#73#0#0| |a#73#1#0| |a#73#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1103|
 :pattern ( (|#AST.Expr_Raw.Op| |a#73#0#0| |a#73#1#0| |a#73#2#0|))
)))
(assert (forall ((|a#75#0#0| T@U) (|a#75#1#0| T@U) (|a#75#2#0| T@U) ) (! (< (DtRank |a#75#2#0|) (DtRank (|#AST.Expr_Raw.Op| |a#75#0#0| |a#75#1#0| |a#75#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1105|
 :pattern ( (|#AST.Expr_Raw.Op| |a#75#0#0| |a#75#1#0| |a#75#2#0|))
)))
(assert (forall ((Utils.Result$T@@13 T@U) (|a#2#0#0@@3| T@U) ) (! (= ($Is DatatypeTypeType (|#Utils.Result.Success| |a#2#0#0@@3|) (Tclass.Utils.Result Utils.Result$T@@13)) ($IsBox |a#2#0#0@@3| Utils.Result$T@@13))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( ($Is DatatypeTypeType (|#Utils.Result.Success| |a#2#0#0@@3|) (Tclass.Utils.Result Utils.Result$T@@13)))
)))
(assert (forall (($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (Requires1 Tclass.AST.Expr__Raw TBool $heap@@0 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@0|) (|AST.Expr__Raw.WellFormed__Single#requires| ($Unbox DatatypeTypeType |$fh$0x#0@@0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1185|
 :pattern ( (Requires1 Tclass.AST.Expr__Raw TBool $heap@@0 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@0|))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (< (BoxRank |a#7#1#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0@@0| |a#7#1#0@@0|))
)))
(assert (forall ((|a#22#0#0@@0| T@U) (|a#22#1#0| T@U) ) (! (< (|Seq#Rank| |a#22#0#0@@0|) (DtRank (|#Equiv.MSeqValue.MSeqValue| |a#22#0#0@@0| |a#22#1#0|)))
 :qid |Equivdfy.64:34|
 :skolemid |930|
 :pattern ( (|#Equiv.MSeqValue.MSeqValue| |a#22#0#0@@0| |a#22#1#0|))
)))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (< (|Seq#Rank| |a#25#1#0|) (DtRank (|#Equiv.MSeqValue.MSeqValue| |a#25#0#0| |a#25#1#0|)))
 :qid |Equivdfy.64:34|
 :skolemid |933|
 :pattern ( (|#Equiv.MSeqValue.MSeqValue| |a#25#0#0| |a#25#1#0|))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (< (|Seq#Rank| |a#52#0#0|) (DtRank (|#AST.Expr_Raw.Assign| |a#52#0#0| |a#52#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |1072|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#52#0#0| |a#52#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (< (|Seq#Rank| |a#55#1#0|) (DtRank (|#AST.Expr_Raw.Assign| |a#55#0#0| |a#55#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |1075|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall (($ly@@12 T@U) (|vars#0@@10| T@U) (|values#0@@1| T@U) ) (!  (=> (or (|Interp.__default.VarsAndValuesToContext#canCall| |vars#0@@10| |values#0@@1|) (and (and ($Is SeqType |vars#0@@10| (TSeq (TSeq TChar))) ($Is SeqType |values#0@@1| (TSeq TInt))) (= (|Seq#Length| |vars#0@@10|) (|Seq#Length| |values#0@@1|)))) (and (=> (not (|Seq#Equal| |vars#0@@10| |Seq#Empty|)) (|Interp.__default.VarsAndValuesToContext#canCall| (|Seq#Drop| |vars#0@@10| (LitInt 1)) (|Seq#Drop| |values#0@@1| (LitInt 1)))) (= (Interp.__default.VarsAndValuesToContext ($LS $ly@@12) |vars#0@@10| |values#0@@1|) (ite (|Seq#Equal| |vars#0@@10| |Seq#Empty|) |Map#Empty| (|Map#Merge| (|Map#Build| |Map#Empty| (|Seq#Index| |vars#0@@10| (LitInt 0)) (|Seq#Index| |values#0@@1| (LitInt 0))) (Interp.__default.VarsAndValuesToContext $ly@@12 (|Seq#Drop| |vars#0@@10| (LitInt 1)) (|Seq#Drop| |values#0@@1| (LitInt 1))))))))
 :qid |Interpdfy.80:12|
 :skolemid |1214|
 :pattern ( (Interp.__default.VarsAndValuesToContext ($LS $ly@@12) |vars#0@@10| |values#0@@1|))
)))
(assert (forall ((a@@25 T@U) (b@@25 T@U) ) (! (= (|Set#Union| a@@25 (|Set#Union| a@@25 b@@25)) (|Set#Union| a@@25 b@@25))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@25 (|Set#Union| a@@25 b@@25)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@27| T@U) (|vars#0@@11| T@U) (|vals#0@@4| T@U) ) (!  (=> (or (|Equiv.__default.BindStartScope#canCall| |st#0@@27| (Lit SeqType |vars#0@@11|) |vals#0@@4|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@27| Tclass.Equiv.MState) ($Is SeqType |vars#0@@11| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@4| Tclass.Equiv.VS)) (Equiv.__default.UpdateState__Pre |st#0@@27| (Lit SeqType |vars#0@@11|) |vals#0@@4|)))) (and (|Equiv.__default.AssignState#canCall| |st#0@@27| (Lit SeqType |vars#0@@11|) |vals#0@@4|) (= (Equiv.__default.BindStartScope |st#0@@27| (Lit SeqType |vars#0@@11|) |vals#0@@4|) (Equiv.__default.AssignState |st#0@@27| (Lit SeqType |vars#0@@11|) |vals#0@@4|))))
 :qid |Inductiondfy.58:33|
 :weight 3
 :skolemid |776|
 :pattern ( (Equiv.__default.BindStartScope |st#0@@27| (Lit SeqType |vars#0@@11|) |vals#0@@4|))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@28| T@U) (|es#0@@14| T@U) ) (!  (=> (or (|Equiv.__default.Pes#canCall| |st#0@@28| |es#0@@14|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@28| Tclass.Equiv.MState) ($Is SeqType |es#0@@14| (TSeq Tclass.AST.Expr))))) (and (and (and (Equiv.MState.MState_q |st#0@@28|) (|Interp.__default.InterpExprs#canCall| |es#0@@14| (Equiv.MState.ctx |st#0@@28|))) (let ((|res#0@@9| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@14| (Equiv.MState.ctx |st#0@@28|))))
 (and (and (Equiv.MState.MState_q |st#0@@28|) (|Interp.__default.InterpExprs#canCall| |es#0@@14| (Equiv.MState.ctx_k |st#0@@28|))) (let ((|res'#0@@9| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@14| (Equiv.MState.ctx_k |st#0@@28|))))
 (and (|Equiv.__default.Inv#canCall| |st#0@@28|) (=> (Equiv.__default.Inv |st#0@@28|) (|Equiv.__default.EqResultSeq#canCall| |res#0@@9| |res'#0@@9|))))))) (= (Equiv.__default.Pes |st#0@@28| |es#0@@14|) (let ((|res#0@@10| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@14| (Equiv.MState.ctx |st#0@@28|))))
(let ((|res'#0@@10| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@14| (Equiv.MState.ctx_k |st#0@@28|))))
 (=> (Equiv.__default.Inv |st#0@@28|) (Equiv.__default.EqResultSeq |res#0@@10| |res'#0@@10|)))))))
 :qid |Inductiondfy.39:23|
 :skolemid |713|
 :pattern ( (Equiv.__default.Pes |st#0@@28| |es#0@@14|))
))))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@29| T@U) (|e#0@@18| T@U) ) (!  (=> (or (|Equiv.__default.P__Fail#canCall| (Lit DatatypeTypeType |st#0@@29|) (Lit DatatypeTypeType |e#0@@18|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@29| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0@@18| Tclass.AST.Expr)))) (and (and (|Equiv.__default.Inv#canCall| (Lit DatatypeTypeType |st#0@@29|)) (=> (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@29|))))) (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@29|)) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@18|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@29|))))))) (= (Equiv.__default.P__Fail (Lit DatatypeTypeType |st#0@@29|) (Lit DatatypeTypeType |e#0@@18|)) (U_2_bool (Lit boolType (bool_2_U  (=> (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@29|)) (Utils.Result.Failure_q (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@18|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@29|)))))))))))))
 :qid |Inductiondfy.36:26|
 :weight 3
 :skolemid |708|
 :pattern ( (Equiv.__default.P__Fail (Lit DatatypeTypeType |st#0@@29|) (Lit DatatypeTypeType |e#0@@18|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@30| T@U) (|e#0@@19| T@U) ) (!  (=> (or (|Equiv.__default.P__Step#canCall| |st#0@@30| (Lit DatatypeTypeType |e#0@@19|)) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@30| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0@@19| Tclass.AST.Expr)) (and (Equiv.__default.P |st#0@@30| (Lit DatatypeTypeType |e#0@@19|)) (not (Equiv.__default.P__Fail |st#0@@30| (Lit DatatypeTypeType |e#0@@19|))))))) (and (and (and (Equiv.MState.MState_q |st#0@@30|) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@19|) (Equiv.MState.ctx |st#0@@30|))) (and (Equiv.MState.MState_q |st#0@@30|) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@19|) (Equiv.MState.ctx_k |st#0@@30|)))) (= (Equiv.__default.P__Step |st#0@@30| (Lit DatatypeTypeType |e#0@@19|)) (let ((|ctx1#1@@3| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@19|) (Equiv.MState.ctx |st#0@@30|))))))))
(let ((|v#1@@1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@19|) (Equiv.MState.ctx |st#0@@30|)))))))))
(let ((|ctx1'#1@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@19|) (Equiv.MState.ctx_k |st#0@@30|))))))))
(let ((|v'#1@@0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@19|) (Equiv.MState.ctx_k |st#0@@30|)))))))))
(|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#Equiv.MState.MState| |ctx1#1@@3| |ctx1'#1@@0|)) ($Box DatatypeTypeType (|#Equiv.MValue.MValue| |v#1@@1| |v'#1@@0|))))))))))
 :qid |Inductiondfy.66:25|
 :weight 3
 :skolemid |793|
 :pattern ( (Equiv.__default.P__Step |st#0@@30| (Lit DatatypeTypeType |e#0@@19|)))
))))
(assert (forall ((u@@6 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@6))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@6))
)))
(assert (forall ((|a#31#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Literal| |a#31#0#0|) Tclass.AST.Expr__Raw) ($Is intType (int_2_U |a#31#0#0|) TInt))
 :qid |ASTdfy.16:15|
 :skolemid |1041|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Literal| |a#31#0#0|) Tclass.AST.Expr__Raw))
)))
(assert  (and (and (and (and (= (Ctor refType) 10) (= (Ctor FieldType) 11)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 12)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f@@3 T@U) (t0@@8 T@U) (t1@@5 T@U) (h@@5 T@U) ) (!  (=> ($IsGoodHeap h@@5) (= ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@8 t1@@5) h@@5) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@8) ($IsAllocBox bx0@@2 t0@@8 h@@5)) (Requires1 t0@@8 t1@@5 h@@5 f@@3 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@5 h@@5 f@@3 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@8 t1@@5 h@@5 f@@3 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@8 t1@@5 h@@5 f@@3 bx0@@2))
 :pattern ( (Reads1 t0@@8 t1@@5 h@@5 f@@3 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@8 t1@@5) h@@5))
)))
(assert (forall ((bx@@18 T@U) (s@@17 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@18 (TMap s@@17 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@18)) bx@@18) ($Is MapType ($Unbox MapType bx@@18) (TMap s@@17 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@18 (TMap s@@17 t@@10)))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@19)) bx@@19) ($Is HandleTypeType ($Unbox HandleTypeType bx@@19) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@19 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@20)) bx@@20) ($Is HandleTypeType ($Unbox HandleTypeType bx@@20) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@20 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@21)) bx@@21) ($Is HandleTypeType ($Unbox HandleTypeType bx@@21) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@21 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@22)) bx@@22) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@22) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@22 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#5#0#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#Utils.Result.Success| |a#5#0#0@@0|)))
 :qid |Utilsdfy.23:34|
 :skolemid |968|
 :pattern ( (|#Utils.Result.Success| |a#5#0#0@@0|))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (< (|Seq#Rank| |a#28#0#0|) (DtRank (|#AST.Expr_Raw.Var| |a#28#0#0|)))
 :qid |ASTdfy.15:11|
 :skolemid |1036|
 :pattern ( (|#AST.Expr_Raw.Var| |a#28#0#0|))
)))
(assert (forall ((|a#82#0#0| T@U) ) (! (< (|Seq#Rank| |a#82#0#0|) (DtRank (|#AST.Expr_Raw.Seq| |a#82#0#0|)))
 :qid |ASTdfy.21:11|
 :skolemid |1115|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#82#0#0|))
)))
(assert (forall ((d@@40 T@U) (Utils.Result$T@@14 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (Utils.Result.Success_q d@@40) ($IsAlloc DatatypeTypeType d@@40 (Tclass.Utils.Result Utils.Result$T@@14) $h@@7))) ($IsAllocBox (Utils.Result.value d@@40) Utils.Result$T@@14 $h@@7))
 :qid |unknown.0:0|
 :skolemid |965|
 :pattern ( ($IsAllocBox (Utils.Result.value d@@40) Utils.Result$T@@14 $h@@7))
)))
(assert  (and (forall ((t0@@9 T@T) (t1@@6 T@T) (t2 T@T) (val@@1 T@U) (m@@6 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@9 t1@@6 t2 (MapType1Store t0@@9 t1@@6 t2 m@@6 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@7 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@7 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@7 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@8 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@8 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@8 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1216|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@18 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@18 val@@4)) s@@18) (= (|Seq#Build_inv1| (|Seq#Build| s@@18 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@18 val@@4))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@41 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (Equiv.MValue.MValue_q d@@41) ($IsAlloc DatatypeTypeType d@@41 Tclass.Equiv.MValue $h@@8))) ($IsAlloc intType (int_2_U (Equiv.MValue.v d@@41)) TInt $h@@8))
 :qid |unknown.0:0|
 :skolemid |909|
 :pattern ( ($IsAlloc intType (int_2_U (Equiv.MValue.v d@@41)) TInt $h@@8))
)))
(assert (forall ((d@@42 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (Equiv.MValue.MValue_q d@@42) ($IsAlloc DatatypeTypeType d@@42 Tclass.Equiv.MValue $h@@9))) ($IsAlloc intType (int_2_U (Equiv.MValue.v_k d@@42)) TInt $h@@9))
 :qid |unknown.0:0|
 :skolemid |910|
 :pattern ( ($IsAlloc intType (int_2_U (Equiv.MValue.v_k d@@42)) TInt $h@@9))
)))
(assert (forall ((d@@43 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (AST.Expr__Raw.Literal_q d@@43) ($IsAlloc DatatypeTypeType d@@43 Tclass.AST.Expr__Raw $h@@10))) ($IsAlloc intType (int_2_U (AST.Expr__Raw.n d@@43)) TInt $h@@10))
 :qid |unknown.0:0|
 :skolemid |1042|
 :pattern ( ($IsAlloc intType (int_2_U (AST.Expr__Raw.n d@@43)) TInt $h@@10))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@31| T@U) (|es#0@@15| T@U) ) (!  (=> (or (|Equiv.__default.Pes__Step#canCall| |st#0@@31| (Lit SeqType |es#0@@15|)) (and (< 4 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@31| Tclass.Equiv.MState) ($Is SeqType |es#0@@15| (TSeq Tclass.AST.Expr))) (and (Equiv.__default.Pes |st#0@@31| (Lit SeqType |es#0@@15|)) (not (Equiv.__default.Pes__Fail |st#0@@31| (Lit SeqType |es#0@@15|))))))) (and (and (and (Equiv.MState.MState_q |st#0@@31|) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@15|) (Equiv.MState.ctx |st#0@@31|))) (and (Equiv.MState.MState_q |st#0@@31|) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@15|) (Equiv.MState.ctx_k |st#0@@31|)))) (= (Equiv.__default.Pes__Step |st#0@@31| (Lit SeqType |es#0@@15|)) (let ((|ctx1#1@@4| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@15|) (Equiv.MState.ctx |st#0@@31|))))))))
(let ((|vs#1@@2| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@15|) (Equiv.MState.ctx |st#0@@31|))))))))
(let ((|ctx1'#1@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@15|) (Equiv.MState.ctx_k |st#0@@31|))))))))
(let ((|vs'#1@@0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@15|) (Equiv.MState.ctx_k |st#0@@31|))))))))
(|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (|#Equiv.MState.MState| |ctx1#1@@4| |ctx1'#1@@1|)) ($Box DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| |vs#1@@2| |vs'#1@@0|))))))))))
 :qid |Inductiondfy.71:27|
 :weight 3
 :skolemid |802|
 :pattern ( (Equiv.__default.Pes__Step |st#0@@31| (Lit SeqType |es#0@@15|)))
))))
(assert (forall ((d@@44 T@U) ) (!  (=> ($Is DatatypeTypeType d@@44 Tclass.AST.BinOp) (or (or (AST.BinOp.Add_q d@@44) (AST.BinOp.Sub_q d@@44)) (AST.BinOp.Mul_q d@@44)))
 :qid |unknown.0:0|
 :skolemid |1022|
 :pattern ( (AST.BinOp.Mul_q d@@44) ($Is DatatypeTypeType d@@44 Tclass.AST.BinOp))
 :pattern ( (AST.BinOp.Sub_q d@@44) ($Is DatatypeTypeType d@@44 Tclass.AST.BinOp))
 :pattern ( (AST.BinOp.Add_q d@@44) ($Is DatatypeTypeType d@@44 Tclass.AST.BinOp))
)))
(assert (forall ((|vs#0@@7| T@U) ) (! (= ($Is DatatypeTypeType |vs#0@@7| Tclass.Equiv.VS)  (and ($Is DatatypeTypeType |vs#0@@7| Tclass.Equiv.MSeqValue) (= (|Seq#Length| (Equiv.MSeqValue.vs |vs#0@@7|)) (|Seq#Length| (Equiv.MSeqValue.vs_k |vs#0@@7|)))))
 :qid |unknown.0:0|
 :skolemid |939|
 :pattern ( ($Is DatatypeTypeType |vs#0@@7| Tclass.Equiv.VS))
)))
(assert (forall ((x@@11 Int) (y@@2 Int) ) (! (= (Mul x@@11 y@@2) (* x@@11 y@@2))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@11 y@@2))
)))
(assert (forall ((t0@@10 T@U) (t1@@7 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@10) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@10 t1@@7)))) (|Set#Equal| (Reads1 t0@@10 t1@@7 $OneHeap f@@4 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@10 t1@@7 $OneHeap f@@4 bx0@@3) (Requires1 t0@@10 t1@@7 heap@@0 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@10 t1@@7 $OneHeap f@@4 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@10 t1@@7 heap@@0 f@@4 bx0@@3))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@9) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@9))
)))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |Map#Empty|) (exists ((v@@9 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@10) v@@9)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@10))
)))
(assert (forall ((m@@11 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@11) item)  (and (|Set#IsMember| (|Map#Domain| m@@11) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@11) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@11) item))
)))
(assert (forall ((m@@12 T@U) (v@@10 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@12) v@@10) (exists ((u@@7 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@12) u@@7) (= v@@10 (MapType0Select BoxType BoxType (|Map#Elements| m@@12) u@@7)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@12) u@@7))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@12) u@@7))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@12) v@@10))
)))
(assert (forall ((m@@13 T@U) (u@@8 T@U) (|u'| T@U) (v@@11 T@U) ) (!  (and (=> (= |u'| u@@8) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@13 u@@8 v@@11)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@13 u@@8 v@@11)) |u'|) v@@11))) (=> (or (not (= |u'| u@@8)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@13 u@@8 v@@11)) |u'|) (|Set#IsMember| (|Map#Domain| m@@13) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@13 u@@8 v@@11)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@13) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@13 u@@8 v@@11)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@13 u@@8 v@@11)) |u'|))
)))
(assert (forall ((d@@45 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@45)) (DtRank d@@45))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@45)))
)))
(assert (forall ((s@@19 T@U) (n@@8 Int) (x@@12 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@19 n@@8) x@@12) (exists ((i@@14 Int) ) (!  (and (and (and (<= 0 n@@8) (<= n@@8 i@@14)) (< i@@14 (|Seq#Length| s@@19))) (= (|Seq#Index| s@@19 i@@14) x@@12))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |237|
 :pattern ( (|Seq#Index| s@@19 i@@14))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |238|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@19 n@@8) x@@12))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@32| T@U) (|es#0@@16| T@U) ) (!  (=> (or (|Equiv.__default.Pes__Fail#canCall| (Lit DatatypeTypeType |st#0@@32|) (Lit SeqType |es#0@@16|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@32| Tclass.Equiv.MState) ($Is SeqType |es#0@@16| (TSeq Tclass.AST.Expr))))) (and (and (|Equiv.__default.Inv#canCall| (Lit DatatypeTypeType |st#0@@32|)) (=> (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@32|))))) (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@32|)) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@16|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@32|))))))) (= (Equiv.__default.Pes__Fail (Lit DatatypeTypeType |st#0@@32|) (Lit SeqType |es#0@@16|)) (U_2_bool (Lit boolType (bool_2_U  (=> (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@32|)) (Utils.Result.Failure_q (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@16|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@32|)))))))))))))
 :qid |Inductiondfy.41:28|
 :weight 3
 :skolemid |734|
 :pattern ( (Equiv.__default.Pes__Fail (Lit DatatypeTypeType |st#0@@32|) (Lit SeqType |es#0@@16|)))
))))
(assert (forall (($ly@@13 T@U) (|e#0@@20| T@U) (|ctx#0@@14| T@U) ) (!  (=> (or (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@20|) |ctx#0@@14|) (and ($Is DatatypeTypeType |e#0@@20| Tclass.AST.Expr) ($Is MapType |ctx#0@@14| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@20|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@20|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@20|))))) (let ((|body#3| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|bvals#3| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|bvars#3| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@20|)))))
 (and (|Interp.__default.InterpExprs#canCall| |bvals#3| |ctx#0@@14|) (let ((|valueOrError0#3| (Interp.__default.InterpExprs ($LS $ly@@13) |bvals#3| |ctx#0@@14|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|) (let ((|ctx1#12| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|))))))
(let ((|vs#9| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|))))))
 (and (|Interp.__default.VarsAndValuesToContext#canCall| |bvars#3| |vs#9|) (let ((|bindings#6| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#3| |vs#9|)))
(let ((|ctx2#6| (|Map#Merge| |ctx1#12| |bindings#6|)))
 (and (|Interp.__default.InterpExpr#canCall| |body#3| |ctx2#6|) (let ((|valueOrError1#3| (Interp.__default.InterpExpr ($LS $ly@@13) |body#3| |ctx2#6|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|))))))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@20|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@20|))))) (let ((|avals#3| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|avars#3| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@20|)))))
 (and (|Interp.__default.InterpExprs#canCall| |avals#3| |ctx#0@@14|) (let ((|valueOrError2#3| (Interp.__default.InterpExprs ($LS $ly@@13) |avals#3| |ctx#0@@14|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|) (let ((|vs#10| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|))))))
(|Interp.__default.VarsAndValuesToContext#canCall| |avars#3| |vs#10|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@20|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@20|))))) (let ((|els#3| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|thn#3| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|cond#3| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@20|)))))
 (and (|Interp.__default.InterpExpr#canCall| |cond#3| |ctx#0@@14|) (let ((|valueOrError3#3| (Interp.__default.InterpExpr ($LS $ly@@13) |cond#3| |ctx#0@@14|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|) (let ((|ctx_cond#3| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|))))))
(let ((|condv#3| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|)))))))
 (and (=> (or (not (= |condv#3| 0)) (not true)) (|Interp.__default.InterpExpr#canCall| |thn#3| |ctx_cond#3|)) (=> (= |condv#3| 0) (|Interp.__default.InterpExpr#canCall| |els#3| |ctx_cond#3|)))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@20|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@20|))))) (let ((|e2#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|e1#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|op#3| (Lit DatatypeTypeType (AST.Expr__Raw.op (Lit DatatypeTypeType |e#0@@20|)))))
 (and (|Interp.__default.InterpExpr#canCall| |e1#3| |ctx#0@@14|) (let ((|valueOrError4#3| (Interp.__default.InterpExpr ($LS $ly@@13) |e1#3| |ctx#0@@14|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|) (let ((|ctx1#14| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|))))))
(let ((|v1#3| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|)))))))
 (and (|Interp.__default.InterpExpr#canCall| |e2#3| |ctx1#14|) (let ((|valueOrError5#3| (Interp.__default.InterpExpr ($LS $ly@@13) |e2#3| |ctx1#14|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|) (let ((|v2#3| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|)))))))
(|Interp.__default.InterpBinOp#canCall| |op#3| |v1#3| |v2#3|)))))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@20|)))))) (let ((|es#3| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@20|)))))
 (and (|Interp.__default.InterpExprs#canCall| |es#3| |ctx#0@@14|) (let ((|valueOrError6#3| (Interp.__default.InterpExprs ($LS $ly@@13) |es#3| |ctx#0@@14|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#3|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#3|)))))))))))))))) (= (Interp.__default.InterpExpr ($LS $ly@@13) (Lit DatatypeTypeType |e#0@@20|) |ctx#0@@14|) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@20|)) (let ((|name#2| (Lit SeqType (AST.Expr__Raw.name (Lit DatatypeTypeType |e#0@@20|)))))
(ite (|Set#IsMember| (|Map#Domain| |ctx#0@@14|) ($Box SeqType |name#2|)) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@14|) ($Box SeqType |name#2|)) ($Box MapType |ctx#0@@14|)))) |#Utils.Result.Failure|)) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@20|)) (let ((|n#2| (LitInt (AST.Expr__Raw.n (Lit DatatypeTypeType |e#0@@20|)))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |n#2|)) ($Box MapType |ctx#0@@14|))))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@20|)) (let ((|body#2| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|bvals#2@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|bvars#2@@0| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|valueOrError0#2@@1| (Interp.__default.InterpExprs ($LS $ly@@13) |bvals#2@@0| |ctx#0@@14|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2@@1|) (let ((|ctx1#8| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2@@1|))))))
(let ((|vs#6| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2@@1|))))))
(let ((|bindings#4| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#2@@0| |vs#6|)))
(let ((|ctx2#4| (|Map#Merge| |ctx1#8| |bindings#4|)))
(let ((|valueOrError1#2@@1| (Interp.__default.InterpExpr ($LS $ly@@13) |body#2| |ctx2#4|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#2@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#2@@1|) (let ((|ctx3#2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#2@@1|))))))
(let ((|bodyv#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#2@@1|)))))))
(let ((|ctx4#2| (|Map#Merge| |ctx1#8| (|Map#Subtract| |ctx3#2| (|Set#FromBoogieMap| (|lambda#9| (TSeq TChar) |bvars#2@@0|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |bodyv#2|)) ($Box MapType |ctx4#2|)))))))))))))))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@20|)) (let ((|avals#2@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|avars#2@@0| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|valueOrError2#2| (Interp.__default.InterpExprs ($LS $ly@@13) |avals#2@@0| |ctx#0@@14|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#2|) (let ((|ctx1#9| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#2|))))))
(let ((|vs#7| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#2|))))))
(let ((|bindings#5| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |avars#2@@0| |vs#7|)))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType (|Map#Merge| |ctx1#9| |bindings#5|)))))))))))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@20|)) (let ((|els#2| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|thn#2| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|cond#2| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|valueOrError3#2| (Interp.__default.InterpExpr ($LS $ly@@13) |cond#2| |ctx#0@@14|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#2|) (let ((|ctx_cond#2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#2|))))))
(let ((|condv#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#2|)))))))
(ite  (or (not (= |condv#2| 0)) (not true)) (Interp.__default.InterpExpr ($LS $ly@@13) |thn#2| |ctx_cond#2|) (Interp.__default.InterpExpr ($LS $ly@@13) |els#2| |ctx_cond#2|))))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@20|)) (let ((|e2#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|e1#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|op#2| (Lit DatatypeTypeType (AST.Expr__Raw.op (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|valueOrError4#2| (Interp.__default.InterpExpr ($LS $ly@@13) |e1#2| |ctx#0@@14|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#2|) (let ((|ctx1#10| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#2|))))))
(let ((|v1#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#2|)))))))
(let ((|valueOrError5#2| (Interp.__default.InterpExpr ($LS $ly@@13) |e2#2| |ctx1#10|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#2|) (let ((|ctx2#5| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#2|))))))
(let ((|v2#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#2|)))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Interp.__default.InterpBinOp |op#2| |v1#2| |v2#2|))) ($Box MapType |ctx2#5|))))))))))))))) (let ((|es#2| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|valueOrError6#2| (Interp.__default.InterpExprs ($LS $ly@@13) |es#2| |ctx#0@@14|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#2|) (let ((|ctx1#11| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#2|))))))
(let ((|vs#8| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#2|))))))
(ite (|Seq#Equal| |vs#8| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType |ctx1#11|)))) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (|Seq#Index| |vs#8| (- (|Seq#Length| |vs#8|) 1)) ($Box MapType |ctx1#11|)))))))))))))))))))
 :qid |Interpdfy.24:12|
 :weight 3
 :skolemid |1201|
 :pattern ( (Interp.__default.InterpExpr ($LS $ly@@13) (Lit DatatypeTypeType |e#0@@20|) |ctx#0@@14|))
)))
(assert (forall ((bx@@23 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@23 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@23)) bx@@23) ($Is SetType ($Unbox SetType bx@@23) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@23 (TSet t@@11)))
)))
(assert (forall ((bx@@24 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@24 (TSeq t@@12)) (and (= ($Box SeqType ($Unbox SeqType bx@@24)) bx@@24) ($Is SeqType ($Unbox SeqType bx@@24) (TSeq t@@12))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@24 (TSeq t@@12)))
)))
(assert (forall ((Utils.Result$T@@15 T@U) (bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 (Tclass.Utils.Result Utils.Result$T@@15)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@25)) bx@@25) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@25) (Tclass.Utils.Result Utils.Result$T@@15))))
 :qid |unknown.0:0|
 :skolemid |664|
 :pattern ( ($IsBox bx@@25 (Tclass.Utils.Result Utils.Result$T@@15)))
)))
(assert (forall ((m@@14 T@U) (s@@20 T@U) ) (! (= (|Map#Domain| (|Map#Subtract| m@@14 s@@20)) (|Set#Difference| (|Map#Domain| m@@14) s@@20))
 :qid |DafnyPreludebpl.1486:15|
 :skolemid |295|
 :pattern ( (|Map#Domain| (|Map#Subtract| m@@14 s@@20)))
)))
(assert (forall ((v@@12 T@U) (t0@@11 T@U) (t1@@8 T@U) ) (! (= ($Is MapType v@@12 (TMap t0@@11 t1@@8)) (forall ((bx@@26 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@12) bx@@26) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@26) t1@@8) ($IsBox bx@@26 t0@@11)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@26))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@12) bx@@26))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@12 (TMap t0@@11 t1@@8)))
)))
(assert (forall (($ly@@14 T@U) (|vars#0@@12| T@U) (|values#0@@2| T@U) ) (!  (=> (or (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@12|) (Lit SeqType |values#0@@2|)) (and (and ($Is SeqType |vars#0@@12| (TSeq (TSeq TChar))) ($Is SeqType |values#0@@2| (TSeq TInt))) (= (|Seq#Length| (Lit SeqType |vars#0@@12|)) (|Seq#Length| (Lit SeqType |values#0@@2|))))) (and (=> (not (|Seq#Equal| |vars#0@@12| |Seq#Empty|)) (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |vars#0@@12|) (LitInt 1))) (Lit SeqType (|Seq#Drop| (Lit SeqType |values#0@@2|) (LitInt 1))))) (= (Interp.__default.VarsAndValuesToContext ($LS $ly@@14) (Lit SeqType |vars#0@@12|) (Lit SeqType |values#0@@2|)) (ite (|Seq#Equal| |vars#0@@12| |Seq#Empty|) |Map#Empty| (|Map#Merge| (|Map#Build| |Map#Empty| (|Seq#Index| (Lit SeqType |vars#0@@12|) (LitInt 0)) (|Seq#Index| (Lit SeqType |values#0@@2|) (LitInt 0))) (Interp.__default.VarsAndValuesToContext ($LS $ly@@14) (Lit SeqType (|Seq#Drop| (Lit SeqType |vars#0@@12|) (LitInt 1))) (Lit SeqType (|Seq#Drop| (Lit SeqType |values#0@@2|) (LitInt 1)))))))))
 :qid |Interpdfy.80:12|
 :weight 3
 :skolemid |1215|
 :pattern ( (Interp.__default.VarsAndValuesToContext ($LS $ly@@14) (Lit SeqType |vars#0@@12|) (Lit SeqType |values#0@@2|)))
)))
(assert (forall (($bx T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (|Set#IsMember| (Reads1 Tclass.AST.Expr__Raw TBool $heap@@1 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@1|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |1186|
 :pattern ( (|Set#IsMember| (Reads1 Tclass.AST.Expr__Raw TBool $heap@@1 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@1|) $bx))
)))
(assert (forall ((d@@46 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) ($Is DatatypeTypeType d@@46 Tclass.Equiv.MState)) ($IsAlloc DatatypeTypeType d@@46 Tclass.Equiv.MState $h@@11))
 :qid |unknown.0:0|
 :skolemid |899|
 :pattern ( ($IsAlloc DatatypeTypeType d@@46 Tclass.Equiv.MState $h@@11))
)))
(assert (forall ((d@@47 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) ($Is DatatypeTypeType d@@47 Tclass.Equiv.MValue)) ($IsAlloc DatatypeTypeType d@@47 Tclass.Equiv.MValue $h@@12))
 :qid |unknown.0:0|
 :skolemid |914|
 :pattern ( ($IsAlloc DatatypeTypeType d@@47 Tclass.Equiv.MValue $h@@12))
)))
(assert (forall ((d@@48 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) ($Is DatatypeTypeType d@@48 Tclass.Equiv.MSeqValue)) ($IsAlloc DatatypeTypeType d@@48 Tclass.Equiv.MSeqValue $h@@13))
 :qid |unknown.0:0|
 :skolemid |934|
 :pattern ( ($IsAlloc DatatypeTypeType d@@48 Tclass.Equiv.MSeqValue $h@@13))
)))
(assert (forall ((d@@49 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) ($Is DatatypeTypeType d@@49 Tclass.AST.BinOp)) ($IsAlloc DatatypeTypeType d@@49 Tclass.AST.BinOp $h@@14))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( ($IsAlloc DatatypeTypeType d@@49 Tclass.AST.BinOp $h@@14))
)))
(assert (forall ((d@@50 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) ($Is DatatypeTypeType d@@50 Tclass.AST.Expr__Raw)) ($IsAlloc DatatypeTypeType d@@50 Tclass.AST.Expr__Raw $h@@15))
 :qid |unknown.0:0|
 :skolemid |1116|
 :pattern ( ($IsAlloc DatatypeTypeType d@@50 Tclass.AST.Expr__Raw $h@@15))
)))
(assert (= (Tag Tclass.Equiv.MValue) Tagclass.Equiv.MValue))
(assert (= (TagFamily Tclass.Equiv.MValue) tytagFamily$MValue))
(assert (= (Tag Tclass.Equiv.MState) Tagclass.Equiv.MState))
(assert (= (TagFamily Tclass.Equiv.MState) tytagFamily$MState))
(assert (= (Tag Tclass.AST.Expr) Tagclass.AST.Expr))
(assert (= (TagFamily Tclass.AST.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.Equiv.VS) Tagclass.Equiv.VS))
(assert (= (TagFamily Tclass.Equiv.VS) tytagFamily$VS))
(assert (= (Tag Tclass.AST.BinOp) Tagclass.AST.BinOp))
(assert (= (TagFamily Tclass.AST.BinOp) tytagFamily$BinOp))
(assert (= (Tag Tclass.AST.Expr__Raw) Tagclass.AST.Expr__Raw))
(assert (= (TagFamily Tclass.AST.Expr__Raw) tytagFamily$Expr_Raw))
(assert (= (Tag Tclass.Equiv.MSeqValue) Tagclass.Equiv.MSeqValue))
(assert (= (TagFamily Tclass.Equiv.MSeqValue) tytagFamily$MSeqValue))
(assert (forall ((s@@21 T@U) (n@@9 Int) (k@@0 Int) ) (!  (=> (and (and (<= 0 n@@9) (<= n@@9 k@@0)) (< k@@0 (|Seq#Length| s@@21))) (= (|Seq#Index| (|Seq#Drop| s@@21 n@@9) (- k@@0 n@@9)) (|Seq#Index| s@@21 k@@0)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@21 k@@0) (|Seq#Drop| s@@21 n@@9))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@33| T@U) (|e#0@@21| T@U) ) (!  (=> (or (|Equiv.__default.P#canCall| (Lit DatatypeTypeType |st#0@@33|) (Lit DatatypeTypeType |e#0@@21|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@33| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0@@21| Tclass.AST.Expr)))) (and (and (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@33|)) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@21|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@33|))))) (let ((|res#2@@3| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@21|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@33|)))))))
 (and (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@33|)) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@21|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@33|))))) (let ((|res'#2@@3| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@21|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@33|)))))))
 (and (|Equiv.__default.Inv#canCall| (Lit DatatypeTypeType |st#0@@33|)) (=> (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@33|))))) (|Equiv.__default.EqResult#canCall| |res#2@@3| |res'#2@@3|))))))) (= (Equiv.__default.P (Lit DatatypeTypeType |st#0@@33|) (Lit DatatypeTypeType |e#0@@21|)) (U_2_bool (let ((|res#2@@4| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@21|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@33|)))))))
(let ((|res'#2@@4| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@21|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@33|)))))))
(Lit boolType (bool_2_U  (=> (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@33|)) (Equiv.__default.EqResult |res#2@@4| |res'#2@@4|))))))))))
 :qid |Inductiondfy.34:21|
 :weight 3
 :skolemid |690|
 :pattern ( (Equiv.__default.P (Lit DatatypeTypeType |st#0@@33|) (Lit DatatypeTypeType |e#0@@21|)))
))))
(assert (forall ((Utils.Result$T@@16 T@U) (this@@8 T@U) ) (!  (=> (or (|Utils.Result.Extract#canCall| Utils.Result$T@@16 (Lit DatatypeTypeType this@@8)) (and ($Is DatatypeTypeType this@@8 (Tclass.Utils.Result Utils.Result$T@@16)) (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Success_q (Lit DatatypeTypeType this@@8))))))) (= (Utils.Result.Extract Utils.Result$T@@16 (Lit DatatypeTypeType this@@8)) (Lit BoxType (Utils.Result.value (Lit DatatypeTypeType this@@8)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |991|
 :pattern ( (Utils.Result.Extract Utils.Result$T@@16 (Lit DatatypeTypeType this@@8)))
)))
(assert (= |#Utils.Result.Failure| (Lit DatatypeTypeType |#Utils.Result.Failure|)))
(assert (= |#AST.BinOp.Add| (Lit DatatypeTypeType |#AST.BinOp.Add|)))
(assert (= |#AST.BinOp.Sub| (Lit DatatypeTypeType |#AST.BinOp.Sub|)))
(assert (= |#AST.BinOp.Mul| (Lit DatatypeTypeType |#AST.BinOp.Mul|)))
(assert (forall ((|a#24#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Var| |a#24#0#0@@0|) Tclass.AST.Expr__Raw) ($Is SeqType |a#24#0#0@@0| (TSeq TChar)))
 :qid |ASTdfy.15:11|
 :skolemid |1031|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Var| |a#24#0#0@@0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((d@@51 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (Equiv.MSeqValue.MSeqValue_q d@@51) ($IsAlloc DatatypeTypeType d@@51 Tclass.Equiv.MSeqValue $h@@16))) ($IsAlloc SeqType (Equiv.MSeqValue.vs d@@51) (TSeq TInt) $h@@16))
 :qid |unknown.0:0|
 :skolemid |925|
 :pattern ( ($IsAlloc SeqType (Equiv.MSeqValue.vs d@@51) (TSeq TInt) $h@@16))
)))
(assert (forall ((d@@52 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (Equiv.MSeqValue.MSeqValue_q d@@52) ($IsAlloc DatatypeTypeType d@@52 Tclass.Equiv.MSeqValue $h@@17))) ($IsAlloc SeqType (Equiv.MSeqValue.vs_k d@@52) (TSeq TInt) $h@@17))
 :qid |unknown.0:0|
 :skolemid |926|
 :pattern ( ($IsAlloc SeqType (Equiv.MSeqValue.vs_k d@@52) (TSeq TInt) $h@@17))
)))
(assert (forall ((d@@53 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (AST.Expr__Raw.Var_q d@@53) ($IsAlloc DatatypeTypeType d@@53 Tclass.AST.Expr__Raw $h@@18))) ($IsAlloc SeqType (AST.Expr__Raw.name d@@53) (TSeq TChar) $h@@18))
 :qid |unknown.0:0|
 :skolemid |1032|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.name d@@53) (TSeq TChar) $h@@18))
)))
(assert (forall (($ly@@15 T@U) ($Heap@@2 T@U) (|e#0@@22| T@U) (|p#0@@1| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType |e#0@@22|) |p#0@@1|) (and (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |e#0@@22| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0@@1| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@2 |p#0@@1| ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@22|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@22|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@22|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@22|))))) (let ((|body#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@22|)))))
(let ((|bvals#3@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@22|)))))
 (and (forall ((|e#10| T@U) ) (!  (=> ($Is DatatypeTypeType |e#10| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#3@@0| ($Box DatatypeTypeType |e#10|)) (|AST.Expr__Raw.All#canCall| |e#10| |p#0@@1|)))
 :qid |ASTdfy.51:22|
 :skolemid |1154|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@15) |e#10| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#3@@0| ($Box DatatypeTypeType |e#10|)))
)) (=> (forall ((|e#10@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#10@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#3@@0| ($Box DatatypeTypeType |e#10@@0|))) (AST.Expr__Raw.All ($LS $ly@@15) |e#10@@0| |p#0@@1|))
 :qid |ASTdfy.51:22|
 :skolemid |1155|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@15) |e#10@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#3@@0| ($Box DatatypeTypeType |e#10@@0|)))
)) (|AST.Expr__Raw.All#canCall| |body#3@@0| |p#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@22|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@22|))))) (let ((|avals#3@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@22|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#11| T@U) ) (!  (=> ($Is DatatypeTypeType |e#11| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#3@@0| ($Box DatatypeTypeType |e#11|)) (|AST.Expr__Raw.All#canCall| |e#11| |p#0@@1|)))
 :qid |ASTdfy.54:21|
 :skolemid |1156|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@15) |e#11| |p#0@@1|))
 :pattern ( (|Seq#Contains| |avals#3@@0| ($Box DatatypeTypeType |e#11|)))
))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@22|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@22|))))) (let ((|els#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@22|)))))
(let ((|thn#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@22|)))))
(let ((|cond#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@22|)))))
 (and (|AST.Expr__Raw.All#canCall| |cond#3@@0| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@15) |cond#3@@0| |p#0@@1|) (and (|AST.Expr__Raw.All#canCall| |thn#3@@0| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@15) |thn#3@@0| |p#0@@1|) (|AST.Expr__Raw.All#canCall| |els#3@@0| |p#0@@1|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@22|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@22|))))) (let ((|oe2#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@22|)))))
(let ((|oe1#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@22|)))))
 (and (|AST.Expr__Raw.All#canCall| |oe1#3| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@15) |oe1#3| |p#0@@1|) (|AST.Expr__Raw.All#canCall| |oe2#3| |p#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@22|)))))) (let ((|es#3@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@22|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#12| T@U) ) (!  (=> ($Is DatatypeTypeType |e#12| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#3@@0| ($Box DatatypeTypeType |e#12|)) (|AST.Expr__Raw.All#canCall| |e#12| |p#0@@1|)))
 :qid |ASTdfy.60:21|
 :skolemid |1157|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@15) |e#12| |p#0@@1|))
 :pattern ( (|Seq#Contains| |es#3@@0| ($Box DatatypeTypeType |e#12|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@15) (Lit DatatypeTypeType |e#0@@22|) |p#0@@1|)  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@2 |p#0@@1| ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@22|))))) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@22|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@22|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@22|)) (let ((|body#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@22|)))))
(let ((|bvals#2@@1| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@22|)))))
 (and (forall ((|e#7| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#7| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#2@@1| ($Box DatatypeTypeType |e#7|))) (AST.Expr__Raw.All ($LS $ly@@15) |e#7| |p#0@@1|))
 :qid |ASTdfy.51:22|
 :skolemid |1151|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@15) |e#7| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#2@@1| ($Box DatatypeTypeType |e#7|)))
)) (AST.Expr__Raw.All ($LS $ly@@15) |body#2@@0| |p#0@@1|)))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@22|)) (let ((|avals#2@@1| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@22|)))))
 (and true (forall ((|e#8| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#8| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#2@@1| ($Box DatatypeTypeType |e#8|))) (AST.Expr__Raw.All ($LS $ly@@15) |e#8| |p#0@@1|))
 :qid |ASTdfy.54:21|
 :skolemid |1152|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@15) |e#8| |p#0@@1|))
 :pattern ( (|Seq#Contains| |avals#2@@1| ($Box DatatypeTypeType |e#8|)))
)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@22|)) (let ((|els#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@22|)))))
(let ((|thn#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@22|)))))
(let ((|cond#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@22|)))))
 (and (and (AST.Expr__Raw.All ($LS $ly@@15) |cond#2@@0| |p#0@@1|) (AST.Expr__Raw.All ($LS $ly@@15) |thn#2@@0| |p#0@@1|)) (AST.Expr__Raw.All ($LS $ly@@15) |els#2@@0| |p#0@@1|))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@22|)) (let ((|oe2#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@22|)))))
(let ((|oe1#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@22|)))))
 (and (AST.Expr__Raw.All ($LS $ly@@15) |oe1#2| |p#0@@1|) (AST.Expr__Raw.All ($LS $ly@@15) |oe2#2| |p#0@@1|)))) (let ((|es#2@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@22|)))))
 (and true (forall ((|e#9| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#9| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#2@@0| ($Box DatatypeTypeType |e#9|))) (AST.Expr__Raw.All ($LS $ly@@15) |e#9| |p#0@@1|))
 :qid |ASTdfy.60:21|
 :skolemid |1153|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@15) |e#9| |p#0@@1|))
 :pattern ( (|Seq#Contains| |es#2@@0| ($Box DatatypeTypeType |e#9|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :weight 3
 :skolemid |1158|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@15) (Lit DatatypeTypeType |e#0@@22|) |p#0@@1|) ($IsGoodHeap $Heap@@2))
)))
(assert (forall ((a@@26 T@U) (b@@26 T@U) ) (! (= (|Set#Equal| a@@26 b@@26) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@26 o@@3) (|Set#IsMember| b@@26 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@26 o@@3))
 :pattern ( (|Set#IsMember| b@@26 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@26 b@@26))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@34| T@U) (|vars#0@@13| T@U) (|vals#0@@5| T@U) ) (!  (=> (or (|Equiv.__default.AssignState#canCall| |st#0@@34| (Lit SeqType |vars#0@@13|) |vals#0@@5|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@34| Tclass.Equiv.MState) ($Is SeqType |vars#0@@13| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@5| Tclass.Equiv.VS)) (Equiv.__default.UpdateState__Pre |st#0@@34| (Lit SeqType |vars#0@@13|) |vals#0@@5|)))) (and (and (and (Equiv.MSeqValue.MSeqValue_q |vals#0@@5|) (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@13|) (Equiv.MSeqValue.vs |vals#0@@5|))) (and (Equiv.MSeqValue.MSeqValue_q |vals#0@@5|) (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@13|) (Equiv.MSeqValue.vs_k |vals#0@@5|)))) (= (Equiv.__default.AssignState |st#0@@34| (Lit SeqType |vars#0@@13|) |vals#0@@5|) (let ((|ctx'#1@@2| (Equiv.MState.ctx_k |st#0@@34|)))
(let ((|ctx#1@@2| (Equiv.MState.ctx |st#0@@34|)))
(let ((|bindings#1@@0| (Interp.__default.VarsAndValuesToContext ($LS $LZ) (Lit SeqType |vars#0@@13|) (Equiv.MSeqValue.vs |vals#0@@5|))))
(let ((|bindings'#1| (Interp.__default.VarsAndValuesToContext ($LS $LZ) (Lit SeqType |vars#0@@13|) (Equiv.MSeqValue.vs_k |vals#0@@5|))))
(let ((|ctx1#1@@5| (|Map#Merge| |ctx#1@@2| |bindings#1@@0|)))
(let ((|ctx1'#1@@2| (|Map#Merge| |ctx'#1@@2| |bindings'#1|)))
(let ((|st'#1@@0| (|#Equiv.MState.MState| |ctx1#1@@5| |ctx1'#1@@2|)))
|st'#1@@0|))))))))))
 :qid |Inductiondfy.54:30|
 :weight 3
 :skolemid |763|
 :pattern ( (Equiv.__default.AssignState |st#0@@34| (Lit SeqType |vars#0@@13|) |vals#0@@5|))
))))
(assert (forall ((|a#5#0#0@@1| T@U) (|a#5#1#0@@0| T@U) (d@@54 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#5#0#0@@1|) ($Box DatatypeTypeType d@@54)) (< (DtRank d@@54) (DtRank (|#Equiv.MState.MState| |a#5#0#0@@1| |a#5#1#0@@0|))))
 :qid |Equivdfy.62:28|
 :skolemid |894|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#5#0#0@@1|) ($Box DatatypeTypeType d@@54)) (|#Equiv.MState.MState| |a#5#0#0@@1| |a#5#1#0@@0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) (d@@55 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#8#1#0|) ($Box DatatypeTypeType d@@55)) (< (DtRank d@@55) (DtRank (|#Equiv.MState.MState| |a#8#0#0| |a#8#1#0|))))
 :qid |Equivdfy.62:28|
 :skolemid |897|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#8#1#0|) ($Box DatatypeTypeType d@@55)) (|#Equiv.MState.MState| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((s@@22 T@U) (m@@15 Int) (n@@10 Int) ) (!  (=> (and (and (<= 0 m@@15) (<= 0 n@@10)) (<= (+ m@@15 n@@10) (|Seq#Length| s@@22))) (= (|Seq#Drop| (|Seq#Drop| s@@22 m@@15) n@@10) (|Seq#Drop| s@@22 (+ m@@15 n@@10))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@22 m@@15) n@@10))
)))
(assert (forall ((|op#0@@1| T@U) (|x#0@@5| Int) (|y#0@@4| Int) ) (!  (=> (or (|Interp.__default.InterpBinOp#canCall| (Lit DatatypeTypeType |op#0@@1|) (LitInt |x#0@@5|) (LitInt |y#0@@4|)) ($Is DatatypeTypeType |op#0@@1| Tclass.AST.BinOp)) (= (Interp.__default.InterpBinOp (Lit DatatypeTypeType |op#0@@1|) (LitInt |x#0@@5|) (LitInt |y#0@@4|)) (ite (AST.BinOp.Add_q (Lit DatatypeTypeType |op#0@@1|)) (+ |x#0@@5| |y#0@@4|) (ite (AST.BinOp.Sub_q (Lit DatatypeTypeType |op#0@@1|)) (- |x#0@@5| |y#0@@4|) (Mul (LitInt |x#0@@5|) (LitInt |y#0@@4|))))))
 :qid |Interpdfy.16:24|
 :weight 3
 :skolemid |1195|
 :pattern ( (Interp.__default.InterpBinOp (Lit DatatypeTypeType |op#0@@1|) (LitInt |x#0@@5|) (LitInt |y#0@@4|)))
)))
(assert (forall ((d@@56 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (Equiv.MState.MState_q d@@56) ($IsAlloc DatatypeTypeType d@@56 Tclass.Equiv.MState $h@@19))) ($IsAlloc MapType (Equiv.MState.ctx d@@56) (TMap (TSeq TChar) TInt) $h@@19))
 :qid |unknown.0:0|
 :skolemid |890|
 :pattern ( ($IsAlloc MapType (Equiv.MState.ctx d@@56) (TMap (TSeq TChar) TInt) $h@@19))
)))
(assert (forall ((d@@57 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (Equiv.MState.MState_q d@@57) ($IsAlloc DatatypeTypeType d@@57 Tclass.Equiv.MState $h@@20))) ($IsAlloc MapType (Equiv.MState.ctx_k d@@57) (TMap (TSeq TChar) TInt) $h@@20))
 :qid |unknown.0:0|
 :skolemid |891|
 :pattern ( ($IsAlloc MapType (Equiv.MState.ctx_k d@@57) (TMap (TSeq TChar) TInt) $h@@20))
)))
(assert (forall ((d@@58 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (_System.Tuple2.___hMake2_q d@@58) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@58 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@21)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@58 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@21))
)))) ($IsAllocBox (_System.Tuple2._0 d@@58) |_System._tuple#2$T0@@6| $h@@21))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@58) |_System._tuple#2$T0@@6| $h@@21))
)))
(assert (forall ((d@@59 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (_System.Tuple2.___hMake2_q d@@59) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@59 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@22)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@59 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@22))
)))) ($IsAllocBox (_System.Tuple2._1 d@@59) |_System._tuple#2$T1@@7| $h@@22))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@59) |_System._tuple#2$T1@@7| $h@@22))
)))
(assert (forall (($Heap@@3 T@U) (Utils.Result$T@@17 T@U) (this@@9 T@U) ) (!  (=> (and (or (|Utils.Result.Extract#canCall| Utils.Result$T@@17 this@@9) (and ($IsAlloc DatatypeTypeType this@@9 (Tclass.Utils.Result Utils.Result$T@@17) $Heap@@3) (Utils.Result.Success_q this@@9))) ($IsGoodHeap $Heap@@3)) ($IsAllocBox (Utils.Result.Extract Utils.Result$T@@17 this@@9) Utils.Result$T@@17 $Heap@@3))
 :qid |Utilsdfy.35:14|
 :skolemid |988|
 :pattern ( ($IsAllocBox (Utils.Result.Extract Utils.Result$T@@17 this@@9) Utils.Result$T@@17 $Heap@@3))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@11 Int) ) (!  (and (=> (< n@@11 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@11) (|Seq#Index| s0@@2 n@@11))) (=> (<= (|Seq#Length| s0@@2) n@@11) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@11) (|Seq#Index| s1@@2 (- n@@11 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@11))
)))
(assert (forall ((d@@60 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (AST.Expr__Raw.Bind_q d@@60) ($IsAlloc DatatypeTypeType d@@60 Tclass.AST.Expr__Raw $h@@23))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.body d@@60) Tclass.AST.Expr__Raw $h@@23))
 :qid |unknown.0:0|
 :skolemid |1052|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.body d@@60) Tclass.AST.Expr__Raw $h@@23))
)))
(assert (forall ((d@@61 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (AST.Expr__Raw.If_q d@@61) ($IsAlloc DatatypeTypeType d@@61 Tclass.AST.Expr__Raw $h@@24))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.cond d@@61) Tclass.AST.Expr__Raw $h@@24))
 :qid |unknown.0:0|
 :skolemid |1081|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.cond d@@61) Tclass.AST.Expr__Raw $h@@24))
)))
(assert (forall ((d@@62 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (AST.Expr__Raw.If_q d@@62) ($IsAlloc DatatypeTypeType d@@62 Tclass.AST.Expr__Raw $h@@25))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.thn d@@62) Tclass.AST.Expr__Raw $h@@25))
 :qid |unknown.0:0|
 :skolemid |1082|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.thn d@@62) Tclass.AST.Expr__Raw $h@@25))
)))
(assert (forall ((d@@63 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (AST.Expr__Raw.If_q d@@63) ($IsAlloc DatatypeTypeType d@@63 Tclass.AST.Expr__Raw $h@@26))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.els d@@63) Tclass.AST.Expr__Raw $h@@26))
 :qid |unknown.0:0|
 :skolemid |1083|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.els d@@63) Tclass.AST.Expr__Raw $h@@26))
)))
(assert (forall ((d@@64 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (AST.Expr__Raw.Op_q d@@64) ($IsAlloc DatatypeTypeType d@@64 Tclass.AST.Expr__Raw $h@@27))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.op d@@64) Tclass.AST.BinOp $h@@27))
 :qid |unknown.0:0|
 :skolemid |1096|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.op d@@64) Tclass.AST.BinOp $h@@27))
)))
(assert (forall ((d@@65 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (AST.Expr__Raw.Op_q d@@65) ($IsAlloc DatatypeTypeType d@@65 Tclass.AST.Expr__Raw $h@@28))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe1 d@@65) Tclass.AST.Expr__Raw $h@@28))
 :qid |unknown.0:0|
 :skolemid |1097|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe1 d@@65) Tclass.AST.Expr__Raw $h@@28))
)))
(assert (forall ((d@@66 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (AST.Expr__Raw.Op_q d@@66) ($IsAlloc DatatypeTypeType d@@66 Tclass.AST.Expr__Raw $h@@29))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe2 d@@66) Tclass.AST.Expr__Raw $h@@29))
 :qid |unknown.0:0|
 :skolemid |1098|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe2 d@@66) Tclass.AST.Expr__Raw $h@@29))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st0#0@@2| T@U) (|st#0@@35| T@U) (|vars#0@@14| T@U) ) (!  (=> (or (|Equiv.__default.BindEndScope#canCall| |st0#0@@2| |st#0@@35| |vars#0@@14|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st0#0@@2| Tclass.Equiv.MState) ($Is DatatypeTypeType |st#0@@35| Tclass.Equiv.MState)) ($Is SeqType |vars#0@@14| (TSeq (TSeq TChar)))))) (and (=> (and (Equiv.__default.Inv |st0#0@@2|) (Equiv.__default.Inv |st#0@@35|)) (Equiv.__default.Inv (Equiv.__default.BindEndScope |st0#0@@2| |st#0@@35| |vars#0@@14|))) ($Is DatatypeTypeType (Equiv.__default.BindEndScope |st0#0@@2| |st#0@@35| |vars#0@@14|) Tclass.Equiv.MState)))
 :qid |Inductiondfy.64:31|
 :skolemid |780|
 :pattern ( (Equiv.__default.BindEndScope |st0#0@@2| |st#0@@35| |vars#0@@14|))
))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#Equiv.MState.MState| (Lit MapType |a#3#0#0@@0|) (Lit MapType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#Equiv.MState.MState| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |Equivdfy.62:28|
 :skolemid |892|
 :pattern ( (|#Equiv.MState.MState| (Lit MapType |a#3#0#0@@0|) (Lit MapType |a#3#1#0@@0|)))
)))
(assert (forall ((|a#13#0#0| Int) (|a#13#1#0| Int) ) (! (= (|#Equiv.MValue.MValue| (LitInt |a#13#0#0|) (LitInt |a#13#1#0|)) (Lit DatatypeTypeType (|#Equiv.MValue.MValue| |a#13#0#0| |a#13#1#0|)))
 :qid |Equivdfy.63:28|
 :skolemid |911|
 :pattern ( (|#Equiv.MValue.MValue| (LitInt |a#13#0#0|) (LitInt |a#13#1#0|)))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (= (|#Equiv.MSeqValue.MSeqValue| (Lit SeqType |a#19#0#0|) (Lit SeqType |a#19#1#0|)) (Lit DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| |a#19#0#0| |a#19#1#0|)))
 :qid |Equivdfy.64:34|
 :skolemid |927|
 :pattern ( (|#Equiv.MSeqValue.MSeqValue| (Lit SeqType |a#19#0#0|) (Lit SeqType |a#19#1#0|)))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= (|#AST.Expr_Raw.Assign| (Lit SeqType |a#49#0#0|) (Lit SeqType |a#49#1#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#49#0#0| |a#49#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |1069|
 :pattern ( (|#AST.Expr_Raw.Assign| (Lit SeqType |a#49#0#0|) (Lit SeqType |a#49#1#0|)))
)))
(assert (forall (($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (Apply1 Tclass.AST.Expr__Raw TBool $heap@@2 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@2|) ($Box boolType (bool_2_U (AST.Expr__Raw.WellFormed__Single ($Unbox DatatypeTypeType |$fh$0x#0@@2|)))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1184|
 :pattern ( (Apply1 Tclass.AST.Expr__Raw TBool $heap@@2 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@2|))
)))
(assert (forall ((|e#0@@23| T@U) ) (! (= ($Is DatatypeTypeType |e#0@@23| Tclass.AST.Expr)  (and ($Is DatatypeTypeType |e#0@@23| Tclass.AST.Expr__Raw) (AST.Expr__Raw.WellFormed |e#0@@23|)))
 :qid |unknown.0:0|
 :skolemid |1190|
 :pattern ( ($Is DatatypeTypeType |e#0@@23| Tclass.AST.Expr))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@36| T@U) (|e#0@@24| T@U) ) (!  (=> (or (|Equiv.__default.P__Step#canCall| |st#0@@36| |e#0@@24|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@36| Tclass.Equiv.MState) ($Is DatatypeTypeType |e#0@@24| Tclass.AST.Expr)) (and (Equiv.__default.P |st#0@@36| |e#0@@24|) (not (Equiv.__default.P__Fail |st#0@@36| |e#0@@24|)))))) (and (Equiv.__default.P__Succ |st#0@@36| |e#0@@24| ($Unbox DatatypeTypeType (_System.Tuple2._0 (Equiv.__default.P__Step |st#0@@36| |e#0@@24|))) ($Unbox DatatypeTypeType (_System.Tuple2._1 (Equiv.__default.P__Step |st#0@@36| |e#0@@24|)))) ($Is DatatypeTypeType (Equiv.__default.P__Step |st#0@@36| |e#0@@24|) (Tclass._System.Tuple2 Tclass.Equiv.MState Tclass.Equiv.MValue))))
 :qid |Inductiondfy.66:25|
 :skolemid |790|
 :pattern ( (Equiv.__default.P__Step |st#0@@36| |e#0@@24|))
))))
(assert (forall ((x@@13 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@13))) (Lit BoxType ($Box intType (int_2_U x@@13))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@13))))
)))
(assert (forall ((|a#3#0#0@@1| T@U) ) (! (= (|#Utils.Result.Success| (Lit BoxType |a#3#0#0@@1|)) (Lit DatatypeTypeType (|#Utils.Result.Success| |a#3#0#0@@1|)))
 :qid |Utilsdfy.23:34|
 :skolemid |966|
 :pattern ( (|#Utils.Result.Success| (Lit BoxType |a#3#0#0@@1|)))
)))
(assert (forall ((|a#25#0#0@@0| T@U) ) (! (= (|#AST.Expr_Raw.Var| (Lit SeqType |a#25#0#0@@0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Var| |a#25#0#0@@0|)))
 :qid |ASTdfy.15:11|
 :skolemid |1033|
 :pattern ( (|#AST.Expr_Raw.Var| (Lit SeqType |a#25#0#0@@0|)))
)))
(assert (forall ((|a#32#0#0| Int) ) (! (= (|#AST.Expr_Raw.Literal| (LitInt |a#32#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Literal| |a#32#0#0|)))
 :qid |ASTdfy.16:15|
 :skolemid |1043|
 :pattern ( (|#AST.Expr_Raw.Literal| (LitInt |a#32#0#0|)))
)))
(assert (forall ((|a#79#0#0| T@U) ) (! (= (|#AST.Expr_Raw.Seq| (Lit SeqType |a#79#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#79#0#0|)))
 :qid |ASTdfy.21:11|
 :skolemid |1112|
 :pattern ( (|#AST.Expr_Raw.Seq| (Lit SeqType |a#79#0#0|)))
)))
(assert (forall ((x@@14 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@14)) (Lit BoxType ($Box T@@4 x@@14)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@14)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@37| T@U) (|es#0@@17| T@U) ) (!  (=> (or (|Equiv.__default.Pes#canCall| (Lit DatatypeTypeType |st#0@@37|) (Lit SeqType |es#0@@17|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@37| Tclass.Equiv.MState) ($Is SeqType |es#0@@17| (TSeq Tclass.AST.Expr))))) (and (and (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@37|)) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@17|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@37|))))) (let ((|res#2@@5| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@17|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@37|)))))))
 (and (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@37|)) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@17|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@37|))))) (let ((|res'#2@@5| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@17|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@37|)))))))
 (and (|Equiv.__default.Inv#canCall| (Lit DatatypeTypeType |st#0@@37|)) (=> (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@37|))))) (|Equiv.__default.EqResultSeq#canCall| |res#2@@5| |res'#2@@5|))))))) (= (Equiv.__default.Pes (Lit DatatypeTypeType |st#0@@37|) (Lit SeqType |es#0@@17|)) (U_2_bool (let ((|res#2@@6| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@17|) (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@37|)))))))
(let ((|res'#2@@6| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@17|) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@37|)))))))
(Lit boolType (bool_2_U  (=> (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@37|)) (Equiv.__default.EqResultSeq |res#2@@6| |res'#2@@6|))))))))))
 :qid |Inductiondfy.39:23|
 :weight 3
 :skolemid |715|
 :pattern ( (Equiv.__default.Pes (Lit DatatypeTypeType |st#0@@37|) (Lit SeqType |es#0@@17|)))
))))
(assert (forall ((m@@16 T@U) (n@@12 T@U) ) (! (= (|Map#Domain| (|Map#Merge| m@@16 n@@12)) (|Set#Union| (|Map#Domain| m@@16) (|Map#Domain| n@@12)))
 :qid |DafnyPreludebpl.1476:15|
 :skolemid |293|
 :pattern ( (|Map#Domain| (|Map#Merge| m@@16 n@@12)))
)))
(assert (forall ((d@@67 T@U) ($h@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (AST.Expr__Raw.Bind_q d@@67) ($IsAlloc DatatypeTypeType d@@67 Tclass.AST.Expr__Raw $h@@30))) ($IsAlloc SeqType (AST.Expr__Raw.bvars d@@67) (TSeq (TSeq TChar)) $h@@30))
 :qid |unknown.0:0|
 :skolemid |1050|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.bvars d@@67) (TSeq (TSeq TChar)) $h@@30))
)))
(assert (forall ((d@@68 T@U) ($h@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (AST.Expr__Raw.Assign_q d@@68) ($IsAlloc DatatypeTypeType d@@68 Tclass.AST.Expr__Raw $h@@31))) ($IsAlloc SeqType (AST.Expr__Raw.avars d@@68) (TSeq (TSeq TChar)) $h@@31))
 :qid |unknown.0:0|
 :skolemid |1067|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.avars d@@68) (TSeq (TSeq TChar)) $h@@31))
)))
(assert (forall ((s@@23 T@U) ) (!  (=> (= (|Seq#Length| s@@23) 0) (= s@@23 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@23))
)))
(assert (forall ((s@@24 T@U) (n@@13 Int) ) (!  (=> (= n@@13 0) (= (|Seq#Take| s@@24 n@@13) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@24 n@@13))
)))
(assert (forall (($ly@@16 T@U) ($Heap@@4 T@U) (|e#0@@25| T@U) (|p#0@@2| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType |e#0@@25|) (Lit HandleTypeType |p#0@@2|)) (and (and ($IsGoodHeap $Heap@@4) ($Is DatatypeTypeType |e#0@@25| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0@@2| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@4 (Lit HandleTypeType |p#0@@2|) ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@25|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@25|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@25|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@25|))))) (let ((|body#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@25|)))))
(let ((|bvals#5@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@25|)))))
 (and (forall ((|e#16| T@U) ) (!  (=> ($Is DatatypeTypeType |e#16| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#5@@0| ($Box DatatypeTypeType |e#16|)) (|AST.Expr__Raw.All#canCall| |e#16| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.51:22|
 :skolemid |1162|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@16) |e#16| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#5@@0| ($Box DatatypeTypeType |e#16|)))
)) (=> (forall ((|e#16@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#16@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#5@@0| ($Box DatatypeTypeType |e#16@@0|))) (AST.Expr__Raw.All ($LS $ly@@16) |e#16@@0| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.51:22|
 :skolemid |1163|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@16) |e#16@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#5@@0| ($Box DatatypeTypeType |e#16@@0|)))
)) (|AST.Expr__Raw.All#canCall| |body#5@@0| (Lit HandleTypeType |p#0@@2|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@25|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@25|))))) (let ((|avals#5@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@25|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#17| T@U) ) (!  (=> ($Is DatatypeTypeType |e#17| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#5@@0| ($Box DatatypeTypeType |e#17|)) (|AST.Expr__Raw.All#canCall| |e#17| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.54:21|
 :skolemid |1164|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@16) |e#17| |p#0@@2|))
 :pattern ( (|Seq#Contains| |avals#5@@0| ($Box DatatypeTypeType |e#17|)))
))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@25|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@25|))))) (let ((|els#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@25|)))))
(let ((|thn#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@25|)))))
(let ((|cond#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@25|)))))
 (and (|AST.Expr__Raw.All#canCall| |cond#5@@0| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@16) |cond#5@@0| (Lit HandleTypeType |p#0@@2|)) (and (|AST.Expr__Raw.All#canCall| |thn#5@@0| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@16) |thn#5@@0| (Lit HandleTypeType |p#0@@2|)) (|AST.Expr__Raw.All#canCall| |els#5@@0| (Lit HandleTypeType |p#0@@2|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@25|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@25|))))) (let ((|oe2#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@25|)))))
(let ((|oe1#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@25|)))))
 (and (|AST.Expr__Raw.All#canCall| |oe1#5| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@16) |oe1#5| (Lit HandleTypeType |p#0@@2|)) (|AST.Expr__Raw.All#canCall| |oe2#5| (Lit HandleTypeType |p#0@@2|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@25|)))))) (let ((|es#5@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@25|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#18| T@U) ) (!  (=> ($Is DatatypeTypeType |e#18| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#5@@0| ($Box DatatypeTypeType |e#18|)) (|AST.Expr__Raw.All#canCall| |e#18| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.60:21|
 :skolemid |1165|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@16) |e#18| |p#0@@2|))
 :pattern ( (|Seq#Contains| |es#5@@0| ($Box DatatypeTypeType |e#18|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@16) (Lit DatatypeTypeType |e#0@@25|) (Lit HandleTypeType |p#0@@2|))  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@4 (Lit HandleTypeType |p#0@@2|) ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@25|))))) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@25|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@25|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@25|)) (let ((|body#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@25|)))))
(let ((|bvals#4@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@25|)))))
 (and (forall ((|e#13| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#13| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#4@@0| ($Box DatatypeTypeType |e#13|))) (AST.Expr__Raw.All ($LS $ly@@16) |e#13| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.51:22|
 :skolemid |1159|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@16) |e#13| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#4@@0| ($Box DatatypeTypeType |e#13|)))
)) (AST.Expr__Raw.All ($LS $ly@@16) |body#4@@0| (Lit HandleTypeType |p#0@@2|))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@25|)) (let ((|avals#4@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@25|)))))
 (and true (forall ((|e#14| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#14| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#4@@0| ($Box DatatypeTypeType |e#14|))) (AST.Expr__Raw.All ($LS $ly@@16) |e#14| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.54:21|
 :skolemid |1160|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@16) |e#14| |p#0@@2|))
 :pattern ( (|Seq#Contains| |avals#4@@0| ($Box DatatypeTypeType |e#14|)))
)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@25|)) (U_2_bool (let ((|els#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@25|)))))
(let ((|thn#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@25|)))))
(let ((|cond#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@25|)))))
(Lit boolType (bool_2_U  (and (and (AST.Expr__Raw.All ($LS $ly@@16) |cond#4@@0| (Lit HandleTypeType |p#0@@2|)) (AST.Expr__Raw.All ($LS $ly@@16) |thn#4@@0| (Lit HandleTypeType |p#0@@2|))) (AST.Expr__Raw.All ($LS $ly@@16) |els#4@@0| (Lit HandleTypeType |p#0@@2|))))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@25|)) (U_2_bool (let ((|oe2#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@25|)))))
(let ((|oe1#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@25|)))))
(Lit boolType (bool_2_U  (and (AST.Expr__Raw.All ($LS $ly@@16) |oe1#4| (Lit HandleTypeType |p#0@@2|)) (AST.Expr__Raw.All ($LS $ly@@16) |oe2#4| (Lit HandleTypeType |p#0@@2|)))))))) (let ((|es#4@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@25|)))))
 (and true (forall ((|e#15| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#15| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#4@@0| ($Box DatatypeTypeType |e#15|))) (AST.Expr__Raw.All ($LS $ly@@16) |e#15| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.60:21|
 :skolemid |1161|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@16) |e#15| |p#0@@2|))
 :pattern ( (|Seq#Contains| |es#4@@0| ($Box DatatypeTypeType |e#15|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :weight 3
 :skolemid |1166|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@16) (Lit DatatypeTypeType |e#0@@25|) (Lit HandleTypeType |p#0@@2|)) ($IsGoodHeap $Heap@@4))
)))
(assert (forall (($Heap@@5 T@U) (this@@10 T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed#canCall| this@@10) (and ($IsGoodHeap $Heap@@5) (and ($Is DatatypeTypeType this@@10 Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType this@@10 Tclass.AST.Expr__Raw $Heap@@5)))) (and (|AST.Expr__Raw.All#canCall| this@@10 |AST.Expr__Raw.WellFormed__Single#Handle|) (= (AST.Expr__Raw.WellFormed this@@10) (AST.Expr__Raw.All ($LS $LZ) this@@10 |AST.Expr__Raw.WellFormed__Single#Handle|))))
 :qid |ASTdfy.83:21|
 :skolemid |1188|
 :pattern ( (AST.Expr__Raw.WellFormed this@@10) ($IsGoodHeap $Heap@@5))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@38| T@U) (|vars#0@@15| T@U) (|argvs#0@@0| T@U) ) (!  (=> (or (|Equiv.__default.UpdateState__Pre#canCall| |st#0@@38| (Lit SeqType |vars#0@@15|) |argvs#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@38| Tclass.Equiv.MState) ($Is SeqType |vars#0@@15| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |argvs#0@@0| Tclass.Equiv.VS)))) (and (and (|Equiv.__default.Inv#canCall| |st#0@@38|) (=> (Equiv.__default.Inv |st#0@@38|) (and (Equiv.MSeqValue.MSeqValue_q |argvs#0@@0|) (=> (= (|Seq#Length| (Lit SeqType |vars#0@@15|)) (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0@@0|))) (and (and (Equiv.MSeqValue.MSeqValue_q |argvs#0@@0|) (Equiv.MSeqValue.MSeqValue_q |argvs#0@@0|)) (=> (= (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0@@0|)) (|Seq#Length| (Equiv.MSeqValue.vs_k |argvs#0@@0|))) (and (and (Equiv.MSeqValue.MSeqValue_q |argvs#0@@0|) (Equiv.MSeqValue.MSeqValue_q |argvs#0@@0|)) (|Equiv.__default.EqSeqValue#canCall| (Equiv.MSeqValue.vs |argvs#0@@0|) (Equiv.MSeqValue.vs_k |argvs#0@@0|))))))))) (= (Equiv.__default.UpdateState__Pre |st#0@@38| (Lit SeqType |vars#0@@15|) |argvs#0@@0|)  (and (and (Equiv.__default.Inv |st#0@@38|) (and (= (|Seq#Length| (Lit SeqType |vars#0@@15|)) (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0@@0|))) (= (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0@@0|)) (|Seq#Length| (Equiv.MSeqValue.vs_k |argvs#0@@0|))))) (Equiv.__default.EqSeqValue (Equiv.MSeqValue.vs |argvs#0@@0|) (Equiv.MSeqValue.vs_k |argvs#0@@0|))))))
 :qid |Inductiondfy.51:35|
 :weight 3
 :skolemid |749|
 :pattern ( (Equiv.__default.UpdateState__Pre |st#0@@38| (Lit SeqType |vars#0@@15|) |argvs#0@@0|))
))))
(assert (forall ((a@@27 T@U) (b@@27 T@U) ) (! (= (|Equiv.MState#Equal| a@@27 b@@27)  (and (|Map#Equal| (Equiv.MState.ctx a@@27) (Equiv.MState.ctx b@@27)) (|Map#Equal| (Equiv.MState.ctx_k a@@27) (Equiv.MState.ctx_k b@@27))))
 :qid |unknown.0:0|
 :skolemid |902|
 :pattern ( (|Equiv.MState#Equal| a@@27 b@@27))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@39| T@U) (|es#0@@18| T@U) ) (!  (=> (or (|Equiv.__default.Pes__Step#canCall| |st#0@@39| |es#0@@18|) (and (< 4 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@39| Tclass.Equiv.MState) ($Is SeqType |es#0@@18| (TSeq Tclass.AST.Expr))) (and (Equiv.__default.Pes |st#0@@39| |es#0@@18|) (not (Equiv.__default.Pes__Fail |st#0@@39| |es#0@@18|)))))) (and (Equiv.__default.Pes__Succ |st#0@@39| |es#0@@18| ($Unbox DatatypeTypeType (_System.Tuple2._0 (Equiv.__default.Pes__Step |st#0@@39| |es#0@@18|))) ($Unbox DatatypeTypeType (_System.Tuple2._1 (Equiv.__default.Pes__Step |st#0@@39| |es#0@@18|)))) ($Is DatatypeTypeType (Equiv.__default.Pes__Step |st#0@@39| |es#0@@18|) (Tclass._System.Tuple2 Tclass.Equiv.MState Tclass.Equiv.VS))))
 :qid |Inductiondfy.71:27|
 :skolemid |799|
 :pattern ( (Equiv.__default.Pes__Step |st#0@@39| |es#0@@18|))
))))
(assert (forall ((d@@69 T@U) ($h@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (AST.Expr__Raw.Bind_q d@@69) ($IsAlloc DatatypeTypeType d@@69 Tclass.AST.Expr__Raw $h@@32))) ($IsAlloc SeqType (AST.Expr__Raw.bvals d@@69) (TSeq Tclass.AST.Expr__Raw) $h@@32))
 :qid |unknown.0:0|
 :skolemid |1051|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.bvals d@@69) (TSeq Tclass.AST.Expr__Raw) $h@@32))
)))
(assert (forall ((d@@70 T@U) ($h@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (AST.Expr__Raw.Assign_q d@@70) ($IsAlloc DatatypeTypeType d@@70 Tclass.AST.Expr__Raw $h@@33))) ($IsAlloc SeqType (AST.Expr__Raw.avals d@@70) (TSeq Tclass.AST.Expr__Raw) $h@@33))
 :qid |unknown.0:0|
 :skolemid |1068|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.avals d@@70) (TSeq Tclass.AST.Expr__Raw) $h@@33))
)))
(assert (forall ((d@@71 T@U) ($h@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (AST.Expr__Raw.Seq_q d@@71) ($IsAlloc DatatypeTypeType d@@71 Tclass.AST.Expr__Raw $h@@34))) ($IsAlloc SeqType (AST.Expr__Raw.es d@@71) (TSeq Tclass.AST.Expr__Raw) $h@@34))
 :qid |unknown.0:0|
 :skolemid |1111|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.es d@@71) (TSeq Tclass.AST.Expr__Raw) $h@@34))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@40| T@U) (|vars#0@@16| T@U) (|vals#0@@6| T@U) ) (!  (=> (or (|Equiv.__default.BindStartScope#canCall| (Lit DatatypeTypeType |st#0@@40|) (Lit SeqType |vars#0@@16|) (Lit DatatypeTypeType |vals#0@@6|)) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@40| Tclass.Equiv.MState) ($Is SeqType |vars#0@@16| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@6| Tclass.Equiv.VS)) (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.UpdateState__Pre (Lit DatatypeTypeType |st#0@@40|) (Lit SeqType |vars#0@@16|) (Lit DatatypeTypeType |vals#0@@6|)))))))) (and (|Equiv.__default.AssignState#canCall| (Lit DatatypeTypeType |st#0@@40|) (Lit SeqType |vars#0@@16|) (Lit DatatypeTypeType |vals#0@@6|)) (= (Equiv.__default.BindStartScope (Lit DatatypeTypeType |st#0@@40|) (Lit SeqType |vars#0@@16|) (Lit DatatypeTypeType |vals#0@@6|)) (Lit DatatypeTypeType (Equiv.__default.AssignState (Lit DatatypeTypeType |st#0@@40|) (Lit SeqType |vars#0@@16|) (Lit DatatypeTypeType |vals#0@@6|))))))
 :qid |Inductiondfy.58:33|
 :weight 3
 :skolemid |777|
 :pattern ( (Equiv.__default.BindStartScope (Lit DatatypeTypeType |st#0@@40|) (Lit SeqType |vars#0@@16|) (Lit DatatypeTypeType |vals#0@@6|)))
))))
(assert (forall ((h@@6 T@U) (v@@13 T@U) ) (! ($IsAlloc intType v@@13 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@13 TInt h@@6))
)))
(assert (forall ((h@@7 T@U) (v@@14 T@U) ) (! ($IsAlloc boolType v@@14 TBool h@@7)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@14 TBool h@@7))
)))
(assert (forall ((h@@8 T@U) (v@@15 T@U) ) (! ($IsAlloc charType v@@15 TChar h@@8)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@15 TChar h@@8))
)))
(assert (= Equiv.__default.Zero (Lit DatatypeTypeType (|#Equiv.MValue.MValue| (LitInt 0) (LitInt 0)))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@41| T@U) (|vars#0@@17| T@U) (|argvs#0@@1| T@U) ) (!  (=> (or (|Equiv.__default.UpdateState__Pre#canCall| (Lit DatatypeTypeType |st#0@@41|) (Lit SeqType |vars#0@@17|) (Lit DatatypeTypeType |argvs#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@41| Tclass.Equiv.MState) ($Is SeqType |vars#0@@17| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |argvs#0@@1| Tclass.Equiv.VS)))) (and (and (|Equiv.__default.Inv#canCall| (Lit DatatypeTypeType |st#0@@41|)) (=> (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@41|))))) (and (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |argvs#0@@1|)) (=> (= (|Seq#Length| (Lit SeqType |vars#0@@17|)) (|Seq#Length| (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |argvs#0@@1|))))) (and (and (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |argvs#0@@1|)) (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |argvs#0@@1|))) (=> (= (|Seq#Length| (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |argvs#0@@1|)))) (|Seq#Length| (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |argvs#0@@1|))))) (and (and (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |argvs#0@@1|)) (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |argvs#0@@1|))) (|Equiv.__default.EqSeqValue#canCall| (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |argvs#0@@1|))) (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |argvs#0@@1|))))))))))) (= (Equiv.__default.UpdateState__Pre (Lit DatatypeTypeType |st#0@@41|) (Lit SeqType |vars#0@@17|) (Lit DatatypeTypeType |argvs#0@@1|))  (and (and (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@41|)) (and (= (|Seq#Length| (Lit SeqType |vars#0@@17|)) (|Seq#Length| (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |argvs#0@@1|))))) (= (|Seq#Length| (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |argvs#0@@1|)))) (|Seq#Length| (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |argvs#0@@1|))))))) (Equiv.__default.EqSeqValue (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |argvs#0@@1|))) (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |argvs#0@@1|))))))))
 :qid |Inductiondfy.51:35|
 :weight 3
 :skolemid |750|
 :pattern ( (Equiv.__default.UpdateState__Pre (Lit DatatypeTypeType |st#0@@41|) (Lit SeqType |vars#0@@17|) (Lit DatatypeTypeType |argvs#0@@1|)))
))))
(assert (forall ((v@@16 T@U) (t0@@12 T@U) ) (! (= ($Is SeqType v@@16 (TSeq t0@@12)) (forall ((i@@15 Int) ) (!  (=> (and (<= 0 i@@15) (< i@@15 (|Seq#Length| v@@16))) ($IsBox (|Seq#Index| v@@16 i@@15) t0@@12))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@16 i@@15))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@16 (TSeq t0@@12)))
)))
(assert (forall ((m@@17 T@U) ) (!  (or (= m@@17 |Map#Empty|) (exists ((k@@1 T@U) (v@@17 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@17) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@1 v@@17)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@17))
)))
(assert (forall ((s@@25 T@U) (i@@16 Int) ) (!  (=> (and (<= 0 i@@16) (< i@@16 (|Seq#Length| s@@25))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@25 i@@16))) (|Seq#Rank| s@@25)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@25 i@@16))))
)))
(assert (forall ((v@@18 T@U) (t0@@13 T@U) (t1@@9 T@U) ) (!  (=> ($Is MapType v@@18 (TMap t0@@13 t1@@9)) (and (and ($Is SetType (|Map#Domain| v@@18) (TSet t0@@13)) ($Is SetType (|Map#Values| v@@18) (TSet t1@@9))) ($Is SetType (|Map#Items| v@@18) (TSet (Tclass._System.Tuple2 t0@@13 t1@@9)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@18 (TMap t0@@13 t1@@9)))
)))
(assert (forall ((v@@19 T@U) ) (! ($Is intType v@@19 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@19 TInt))
)))
(assert (forall ((v@@20 T@U) ) (! ($Is boolType v@@20 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@20 TBool))
)))
(assert (forall ((v@@21 T@U) ) (! ($Is charType v@@21 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@21 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |bvals#4_0@0| () T@U)
(declare-fun |body#4_0@0| () T@U)
(declare-fun |e#0@@26| () T@U)
(declare-fun |bvars#4_0@0| () T@U)
(declare-fun |st#0@@42| () T@U)
(declare-fun |avals#3_0@0| () T@U)
(declare-fun |avars#3_0@0| () T@U)
(declare-fun |e1#1_0@0| () T@U)
(declare-fun |e2#1_0@0| () T@U)
(declare-fun |op#1_0@0| () T@U)
(declare-fun |st2#4_0@0| () T@U)
(declare-fun $Heap@22 () T@U)
(declare-fun |st3#4_0@0| () T@U)
(declare-fun |v#4_0@0| () T@U)
(declare-fun |let#4_4#0#0| () T@U)
(declare-fun |st1#4_0@0| () T@U)
(declare-fun |st4#4_0@0| () T@U)
(declare-fun |bvarvs#4_0@0| () T@U)
(declare-fun $Heap@24 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@25 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |let#4_3#0#0| () T@U)
(declare-fun |_mcc#2#4_0@0| () T@U)
(declare-fun |_mcc#3#4_0@0| () T@U)
(declare-fun |_mcc#4#4_0@0| () T@U)
(declare-fun $Heap@@6 () T@U)
(declare-fun |let#4_0#0#0| () T@U)
(declare-fun |let#4_1#0#0| () T@U)
(declare-fun |let#4_2#0#0| () T@U)
(declare-fun |st1#3_0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |vs#3_0@0| () T@U)
(declare-fun |st2#3_0@0| () T@U)
(declare-fun $Heap@19 () T@U)
(declare-fun |let#3_2#0#0| () T@U)
(declare-fun |_mcc#5#3_0@0| () T@U)
(declare-fun |_mcc#6#3_0@0| () T@U)
(declare-fun |let#3_0#0#0| () T@U)
(declare-fun |let#3_1#0#0| () T@U)
(declare-fun |st1#1_0@0| () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun |st2#1_0@0| () T@U)
(declare-fun |v2#1_0@0| () T@U)
(declare-fun |let#1_4#0#0| () T@U)
(declare-fun |v1#1_0@0| () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |let#1_3#0#0| () T@U)
(declare-fun |_mcc#10#1_0@0| () T@U)
(declare-fun |_mcc#11#1_0@0| () T@U)
(declare-fun |_mcc#12#1_0@0| () T@U)
(declare-fun |let#1_0#0#0| () T@U)
(declare-fun |let#1_1#0#0| () T@U)
(declare-fun |let#1_2#0#0| () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |es#0_0@0| () T@U)
(declare-fun |st1#0_0@0| () T@U)
(declare-fun |vs#0_0@0| () T@U)
(declare-fun |let#0_1#0#0| () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |_mcc#7#2_0@0| () T@U)
(declare-fun |_mcc#8#2_0@0| () T@U)
(declare-fun |_mcc#9#2_0@0| () T@U)
(declare-fun |els#2_0@0| () T@U)
(declare-fun |let#2_0#0#0| () T@U)
(declare-fun |thn#2_0@0| () T@U)
(declare-fun |let#2_1#0#0| () T@U)
(declare-fun |cond#2_0@0| () T@U)
(declare-fun |let#2_2#0#0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |st_cond#2_0@0| () T@U)
(declare-fun |condv#2_0@0| () T@U)
(declare-fun |let#2_3#0#0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |_mcc#1#5_0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |_mcc#0#6_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |_mcc#13#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |st2#3_0| () T@U)
(declare-fun |st2#4_0| () T@U)
(declare-fun |st4#4_0| () T@U)
(set-info :boogie-vc-id Impl$$Equiv.__default.P__Satisfied__Succ)
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
 (=> (= (ControlFlow 0 0) 122) (let ((anon30_Then_correct  (=> (and ($Is SeqType |bvals#4_0@0| (TSeq Tclass.AST.Expr)) ($Is DatatypeTypeType |body#4_0@0| Tclass.AST.Expr)) (and (=> (= (ControlFlow 0 98) (- 0 103)) (AST.Expr__Raw.Bind_q |e#0@@26|)) (=> (AST.Expr__Raw.Bind_q |e#0@@26|) (and (=> (= (ControlFlow 0 98) (- 0 102)) (|Seq#Equal| (AST.Expr__Raw.bvars |e#0@@26|) |bvars#4_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.bvars |e#0@@26|) |bvars#4_0@0|) (and (=> (= (ControlFlow 0 98) (- 0 101)) (|Seq#Equal| (AST.Expr__Raw.bvals |e#0@@26|) |bvals#4_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.bvals |e#0@@26|) |bvals#4_0@0|) (and (=> (= (ControlFlow 0 98) (- 0 100)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body |e#0@@26|) |body#4_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body |e#0@@26|) |body#4_0@0|) (and (=> (= (ControlFlow 0 98) (- 0 99)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (=> (= (ControlFlow 0 98) (- 0 97)) (Equiv.__default.Pes |st#0@@42| |bvals#4_0@0|)))))))))))))))
(let ((anon29_Then_correct  (=> (and ($Is SeqType |bvals#4_0@0| (TSeq Tclass.AST.Expr)) ($Is DatatypeTypeType |body#4_0@0| Tclass.AST.Expr)) (and (=> (= (ControlFlow 0 91) (- 0 96)) (AST.Expr__Raw.Bind_q |e#0@@26|)) (=> (AST.Expr__Raw.Bind_q |e#0@@26|) (and (=> (= (ControlFlow 0 91) (- 0 95)) (|Seq#Equal| (AST.Expr__Raw.bvars |e#0@@26|) |bvars#4_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.bvars |e#0@@26|) |bvars#4_0@0|) (and (=> (= (ControlFlow 0 91) (- 0 94)) (|Seq#Equal| (AST.Expr__Raw.bvals |e#0@@26|) |bvals#4_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.bvals |e#0@@26|) |bvals#4_0@0|) (and (=> (= (ControlFlow 0 91) (- 0 93)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body |e#0@@26|) |body#4_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body |e#0@@26|) |body#4_0@0|) (and (=> (= (ControlFlow 0 91) (- 0 92)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (=> (= (ControlFlow 0 91) (- 0 90)) (Equiv.__default.Pes |st#0@@42| |bvals#4_0@0|)))))))))))))))
(let ((anon28_Then_correct  (=> (and ($Is SeqType |bvals#4_0@0| (TSeq Tclass.AST.Expr)) ($Is DatatypeTypeType |body#4_0@0| Tclass.AST.Expr)) (and (=> (= (ControlFlow 0 84) (- 0 89)) (AST.Expr__Raw.Bind_q |e#0@@26|)) (=> (AST.Expr__Raw.Bind_q |e#0@@26|) (and (=> (= (ControlFlow 0 84) (- 0 88)) (|Seq#Equal| (AST.Expr__Raw.bvars |e#0@@26|) |bvars#4_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.bvars |e#0@@26|) |bvars#4_0@0|) (and (=> (= (ControlFlow 0 84) (- 0 87)) (|Seq#Equal| (AST.Expr__Raw.bvals |e#0@@26|) |bvals#4_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.bvals |e#0@@26|) |bvals#4_0@0|) (and (=> (= (ControlFlow 0 84) (- 0 86)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body |e#0@@26|) |body#4_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body |e#0@@26|) |body#4_0@0|) (and (=> (= (ControlFlow 0 84) (- 0 85)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (=> (= (ControlFlow 0 84) (- 0 83)) (Equiv.__default.Pes |st#0@@42| |bvals#4_0@0|)))))))))))))))
(let ((anon33_Then_correct  (=> ($Is SeqType |avals#3_0@0| (TSeq Tclass.AST.Expr)) (and (=> (= (ControlFlow 0 67) (- 0 71)) (AST.Expr__Raw.Assign_q |e#0@@26|)) (=> (AST.Expr__Raw.Assign_q |e#0@@26|) (and (=> (= (ControlFlow 0 67) (- 0 70)) (|Seq#Equal| (AST.Expr__Raw.avars |e#0@@26|) |avars#3_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.avars |e#0@@26|) |avars#3_0@0|) (and (=> (= (ControlFlow 0 67) (- 0 69)) (|Seq#Equal| (AST.Expr__Raw.avals |e#0@@26|) |avals#3_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.avals |e#0@@26|) |avals#3_0@0|) (and (=> (= (ControlFlow 0 67) (- 0 68)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (=> (= (ControlFlow 0 67) (- 0 66)) (Equiv.__default.Pes |st#0@@42| |avals#3_0@0|)))))))))))))
(let ((anon32_Then_correct  (=> ($Is SeqType |avals#3_0@0| (TSeq Tclass.AST.Expr)) (and (=> (= (ControlFlow 0 61) (- 0 65)) (AST.Expr__Raw.Assign_q |e#0@@26|)) (=> (AST.Expr__Raw.Assign_q |e#0@@26|) (and (=> (= (ControlFlow 0 61) (- 0 64)) (|Seq#Equal| (AST.Expr__Raw.avars |e#0@@26|) |avars#3_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.avars |e#0@@26|) |avars#3_0@0|) (and (=> (= (ControlFlow 0 61) (- 0 63)) (|Seq#Equal| (AST.Expr__Raw.avals |e#0@@26|) |avals#3_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.avals |e#0@@26|) |avals#3_0@0|) (and (=> (= (ControlFlow 0 61) (- 0 62)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (=> (= (ControlFlow 0 61) (- 0 60)) (Equiv.__default.Pes |st#0@@42| |avals#3_0@0|)))))))))))))
(let ((anon37_Then_correct  (=> (and ($Is DatatypeTypeType |e1#1_0@0| Tclass.AST.Expr) ($Is DatatypeTypeType |e2#1_0@0| Tclass.AST.Expr)) (and (=> (= (ControlFlow 0 43) (- 0 47)) (AST.Expr__Raw.Op_q |e#0@@26|)) (=> (AST.Expr__Raw.Op_q |e#0@@26|) (and (=> (= (ControlFlow 0 43) (- 0 46)) (|AST.BinOp#Equal| (AST.Expr__Raw.op |e#0@@26|) |op#1_0@0|)) (=> (|AST.BinOp#Equal| (AST.Expr__Raw.op |e#0@@26|) |op#1_0@0|) (and (=> (= (ControlFlow 0 43) (- 0 45)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe1 |e#0@@26|) |e1#1_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe1 |e#0@@26|) |e1#1_0@0|) (and (=> (= (ControlFlow 0 43) (- 0 44)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe2 |e#0@@26|) |e2#1_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe2 |e#0@@26|) |e2#1_0@0|) (=> (= (ControlFlow 0 43) (- 0 42)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))))))))))))))
(let ((anon36_Then_correct  (=> (and ($Is DatatypeTypeType |e1#1_0@0| Tclass.AST.Expr) ($Is DatatypeTypeType |e2#1_0@0| Tclass.AST.Expr)) (and (=> (= (ControlFlow 0 37) (- 0 41)) (AST.Expr__Raw.Op_q |e#0@@26|)) (=> (AST.Expr__Raw.Op_q |e#0@@26|) (and (=> (= (ControlFlow 0 37) (- 0 40)) (|AST.BinOp#Equal| (AST.Expr__Raw.op |e#0@@26|) |op#1_0@0|)) (=> (|AST.BinOp#Equal| (AST.Expr__Raw.op |e#0@@26|) |op#1_0@0|) (and (=> (= (ControlFlow 0 37) (- 0 39)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe1 |e#0@@26|) |e1#1_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe1 |e#0@@26|) |e1#1_0@0|) (and (=> (= (ControlFlow 0 37) (- 0 38)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe2 |e#0@@26|) |e2#1_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe2 |e#0@@26|) |e2#1_0@0|) (=> (= (ControlFlow 0 37) (- 0 36)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))))))))))))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 7) (- 0 6)) (=> false (Equiv.__default.P |st#0@@42| |e#0@@26|)))))
(let ((anon30_Else_correct  (=> (and (and (and (and (and ($IsAlloc DatatypeTypeType |st2#4_0@0| Tclass.Equiv.MState $Heap@22) ($Is DatatypeTypeType |body#4_0@0| Tclass.AST.Expr)) (and ($IsAlloc DatatypeTypeType |body#4_0@0| Tclass.AST.Expr $Heap@22) (|Equiv.__default.P__Fail#canCall| |st2#4_0@0| |body#4_0@0|))) (and (and (|Equiv.__default.P__Fail#canCall| |st2#4_0@0| |body#4_0@0|) (not (Equiv.__default.P__Fail |st2#4_0@0| |body#4_0@0|))) (and ($Is DatatypeTypeType |st3#4_0@0| Tclass.Equiv.MState) ($IsAlloc DatatypeTypeType |st3#4_0@0| Tclass.Equiv.MState $Heap@22)))) (and (and (and ($Is DatatypeTypeType |v#4_0@0| Tclass.Equiv.MValue) ($IsAlloc DatatypeTypeType |v#4_0@0| Tclass.Equiv.MValue $Heap@22)) (and ($IsAlloc DatatypeTypeType |st2#4_0@0| Tclass.Equiv.MState $Heap@22) ($Is DatatypeTypeType |body#4_0@0| Tclass.AST.Expr))) (and (and ($IsAlloc DatatypeTypeType |body#4_0@0| Tclass.AST.Expr $Heap@22) (Equiv.__default.P |st2#4_0@0| |body#4_0@0|)) (and (not (Equiv.__default.P__Fail |st2#4_0@0| |body#4_0@0|)) (|Equiv.__default.P__Step#canCall| |st2#4_0@0| |body#4_0@0|))))) (and (and (and (and (_System.Tuple2.___hMake2_q (Equiv.__default.P__Step |st2#4_0@0| |body#4_0@0|)) (= |let#4_4#0#0| (Equiv.__default.P__Step |st2#4_0@0| |body#4_0@0|))) (and (|Equiv.__default.P__Step#canCall| |st2#4_0@0| |body#4_0@0|) (|Equiv.__default.P__Step#canCall| |st2#4_0@0| |body#4_0@0|))) (and (and ($Is DatatypeTypeType |let#4_4#0#0| (Tclass._System.Tuple2 Tclass.Equiv.MState Tclass.Equiv.MValue)) (_System.Tuple2.___hMake2_q |let#4_4#0#0|)) (and (= (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |st3#4_0@0|) ($Box DatatypeTypeType |v#4_0@0|)) |let#4_4#0#0|) ($IsAlloc DatatypeTypeType |st1#4_0@0| Tclass.Equiv.MState $Heap@22)))) (and (and (and ($IsAlloc DatatypeTypeType |st3#4_0@0| Tclass.Equiv.MState $Heap@22) ($IsAlloc SeqType |bvars#4_0@0| (TSeq (TSeq TChar)) $Heap@22)) (and (|Equiv.__default.BindEndScope#canCall| |st1#4_0@0| |st3#4_0@0| |bvars#4_0@0|) (Equiv.MState.MState_q (Equiv.__default.BindEndScope |st1#4_0@0| |st3#4_0@0| |bvars#4_0@0|)))) (and (and (|Equiv.__default.BindEndScope#canCall| |st1#4_0@0| |st3#4_0@0| |bvars#4_0@0|) (= |st4#4_0@0| (Equiv.__default.BindEndScope |st1#4_0@0| |st3#4_0@0| |bvars#4_0@0|))) (and ($Is SeqType |bvals#4_0@0| (TSeq Tclass.AST.Expr)) ($Is DatatypeTypeType |body#4_0@0| Tclass.AST.Expr)))))) (and (=> (= (ControlFlow 0 104) (- 0 115)) (AST.Expr__Raw.Bind_q |e#0@@26|)) (=> (AST.Expr__Raw.Bind_q |e#0@@26|) (and (=> (= (ControlFlow 0 104) (- 0 114)) (|Seq#Equal| (AST.Expr__Raw.bvars |e#0@@26|) |bvars#4_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.bvars |e#0@@26|) |bvars#4_0@0|) (and (=> (= (ControlFlow 0 104) (- 0 113)) (|Seq#Equal| (AST.Expr__Raw.bvals |e#0@@26|) |bvals#4_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.bvals |e#0@@26|) |bvals#4_0@0|) (and (=> (= (ControlFlow 0 104) (- 0 112)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body |e#0@@26|) |body#4_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body |e#0@@26|) |body#4_0@0|) (and (=> (= (ControlFlow 0 104) (- 0 111)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (and (=> (= (ControlFlow 0 104) (- 0 110)) (Equiv.__default.Pes__Succ |st#0@@42| |bvals#4_0@0| |st1#4_0@0| |bvarvs#4_0@0|)) (=> (Equiv.__default.Pes__Succ |st#0@@42| |bvals#4_0@0| |st1#4_0@0| |bvarvs#4_0@0|) (and (=> (= (ControlFlow 0 104) (- 0 109)) (Equiv.__default.UpdateState__Pre |st1#4_0@0| |bvars#4_0@0| |bvarvs#4_0@0|)) (=> (Equiv.__default.UpdateState__Pre |st1#4_0@0| |bvars#4_0@0| |bvarvs#4_0@0|) (and (=> (= (ControlFlow 0 104) (- 0 108)) (|Equiv.MState#Equal| |st2#4_0@0| (Equiv.__default.BindStartScope |st1#4_0@0| |bvars#4_0@0| |bvarvs#4_0@0|))) (=> (|Equiv.MState#Equal| |st2#4_0@0| (Equiv.__default.BindStartScope |st1#4_0@0| |bvars#4_0@0| |bvarvs#4_0@0|)) (and (=> (= (ControlFlow 0 104) (- 0 107)) (Equiv.__default.P__Succ |st2#4_0@0| |body#4_0@0| |st3#4_0@0| |v#4_0@0|)) (=> (Equiv.__default.P__Succ |st2#4_0@0| |body#4_0@0| |st3#4_0@0| |v#4_0@0|) (and (=> (= (ControlFlow 0 104) (- 0 106)) (|Equiv.MState#Equal| |st4#4_0@0| (Equiv.__default.BindEndScope |st1#4_0@0| |st3#4_0@0| |bvars#4_0@0|))) (=> (|Equiv.MState#Equal| |st4#4_0@0| (Equiv.__default.BindEndScope |st1#4_0@0| |st3#4_0@0| |bvars#4_0@0|)) (=> (and (and (and ($IsGoodHeap $Heap@24) ($IsHeapAnchor $Heap@24)) (|Equiv.__default.P__Succ#canCall| |st#0@@42| |e#0@@26| |st4#4_0@0| |v#4_0@0|)) (and (and (|Equiv.__default.P__Succ#canCall| |st#0@@42| |e#0@@26| |st4#4_0@0| |v#4_0@0|) (and (Equiv.__default.P__Succ |st#0@@42| |e#0@@26| |st4#4_0@0| |v#4_0@0|) (let ((|res#0@@11| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx |st#0@@42|))))
(let ((|res'#0@@11| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx_k |st#0@@42|))))
 (and (and (and (Equiv.__default.Inv |st#0@@42|) (Equiv.__default.EqResult |res#0@@11| |res'#0@@11|)) (|Utils.Result#Equal| |res#0@@11| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Equiv.MValue.v |v#4_0@0|))) ($Box MapType (Equiv.MState.ctx |st4#4_0@0|))))))) (|Utils.Result#Equal| |res'#0@@11| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Equiv.MValue.v_k |v#4_0@0|))) ($Box MapType (Equiv.MState.ctx_k |st4#4_0@0|))))))))))) (= $Heap@22 $Heap@24))) (and (=> (= (ControlFlow 0 104) (- 0 105)) (Equiv.__default.P__Succ |st#0@@42| |e#0@@26| |st4#4_0@0| |v#4_0@0|)) (=> (Equiv.__default.P__Succ |st#0@@42| |e#0@@26| |st4#4_0@0| |v#4_0@0|) (=> (and (and (and ($IsGoodHeap $Heap@25) ($IsHeapAnchor $Heap@25)) (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|)) (and (and (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|) (and (Equiv.__default.P |st#0@@42| |e#0@@26|) (let ((|res#0@@12| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx |st#0@@42|))))
(let ((|res'#0@@12| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx_k |st#0@@42|))))
 (=> (Equiv.__default.Inv |st#0@@42|) (Equiv.__default.EqResult |res#0@@12| |res'#0@@12|)))))) (and (= $Heap@24 $Heap@25) (= (ControlFlow 0 104) 7)))) GeneratedUnifiedExit_correct)))))))))))))))))))))))))))
(let ((anon29_Else_correct  (=> ($IsAlloc DatatypeTypeType |st1#4_0@0| Tclass.Equiv.MState $Heap@2) (=> (and (and (and ($IsAlloc SeqType |bvars#4_0@0| (TSeq (TSeq TChar)) $Heap@2) ($IsAlloc DatatypeTypeType |bvarvs#4_0@0| Tclass.Equiv.VS $Heap@2)) (and (|Equiv.__default.UpdateState__Pre#canCall| |st1#4_0@0| |bvars#4_0@0| |bvarvs#4_0@0|) (|Equiv.__default.UpdateState__Pre#canCall| |st1#4_0@0| |bvars#4_0@0| |bvarvs#4_0@0|))) (and (and (Equiv.__default.UpdateState__Pre |st1#4_0@0| |bvars#4_0@0| |bvarvs#4_0@0|) ($IsAlloc DatatypeTypeType |st1#4_0@0| Tclass.Equiv.MState $Heap@2)) (and ($IsAlloc SeqType |bvars#4_0@0| (TSeq (TSeq TChar)) $Heap@2) ($IsAlloc DatatypeTypeType |bvarvs#4_0@0| Tclass.Equiv.VS $Heap@2)))) (=> (and (and (and (and (Equiv.__default.UpdateState__Pre |st1#4_0@0| |bvars#4_0@0| |bvarvs#4_0@0|) (|Equiv.__default.BindStartScope#canCall| |st1#4_0@0| |bvars#4_0@0| |bvarvs#4_0@0|)) (and (Equiv.MState.MState_q (Equiv.__default.BindStartScope |st1#4_0@0| |bvars#4_0@0| |bvarvs#4_0@0|)) (|Equiv.__default.BindStartScope#canCall| |st1#4_0@0| |bvars#4_0@0| |bvarvs#4_0@0|))) (and (and (= |st2#4_0@0| (Equiv.__default.BindStartScope |st1#4_0@0| |bvars#4_0@0| |bvarvs#4_0@0|)) ($Is DatatypeTypeType |body#4_0@0| Tclass.AST.Expr)) (and (or (or (<= 0 (LitInt 2)) (< (DtRank |body#4_0@0|) (DtRank |e#0@@26|))) (= (LitInt 3) (LitInt 2))) (or (< (DtRank |body#4_0@0|) (DtRank |e#0@@26|)) (and (= (DtRank |body#4_0@0|) (DtRank |e#0@@26|)) (< (LitInt 3) (LitInt 2))))))) (and (and (and ($IsGoodHeap $Heap@22) ($IsHeapAnchor $Heap@22)) (|Equiv.__default.P#canCall| |st2#4_0@0| |body#4_0@0|)) (and (Equiv.__default.P |st2#4_0@0| |body#4_0@0|) (= $Heap@2 $Heap@22)))) (and (=> (= (ControlFlow 0 116) 98) anon30_Then_correct) (=> (= (ControlFlow 0 116) 104) anon30_Else_correct)))))))
(let ((anon28_Else_correct  (=> (and (and (and ($IsAlloc DatatypeTypeType |st#0@@42| Tclass.Equiv.MState $Heap@2) ($Is SeqType |bvals#4_0@0| (TSeq Tclass.AST.Expr))) (and ($IsAlloc SeqType |bvals#4_0@0| (TSeq Tclass.AST.Expr) $Heap@2) (|Equiv.__default.Pes__Fail#canCall| |st#0@@42| |bvals#4_0@0|))) (and (and (|Equiv.__default.Pes__Fail#canCall| |st#0@@42| |bvals#4_0@0|) (not (Equiv.__default.Pes__Fail |st#0@@42| |bvals#4_0@0|))) (and ($Is DatatypeTypeType |st1#4_0@0| Tclass.Equiv.MState) ($IsAlloc DatatypeTypeType |st1#4_0@0| Tclass.Equiv.MState $Heap@2)))) (=> (and (and (and (and ($Is DatatypeTypeType |bvarvs#4_0@0| Tclass.Equiv.VS) ($IsAlloc DatatypeTypeType |bvarvs#4_0@0| Tclass.Equiv.VS $Heap@2)) ($IsAlloc DatatypeTypeType |st#0@@42| Tclass.Equiv.MState $Heap@2)) (and (and ($Is SeqType |bvals#4_0@0| (TSeq Tclass.AST.Expr)) ($IsAlloc SeqType |bvals#4_0@0| (TSeq Tclass.AST.Expr) $Heap@2)) (and (Equiv.__default.Pes |st#0@@42| |bvals#4_0@0|) (not (Equiv.__default.Pes__Fail |st#0@@42| |bvals#4_0@0|))))) (and (and (and (|Equiv.__default.Pes__Step#canCall| |st#0@@42| |bvals#4_0@0|) (_System.Tuple2.___hMake2_q (Equiv.__default.Pes__Step |st#0@@42| |bvals#4_0@0|))) (and (= |let#4_3#0#0| (Equiv.__default.Pes__Step |st#0@@42| |bvals#4_0@0|)) (|Equiv.__default.Pes__Step#canCall| |st#0@@42| |bvals#4_0@0|))) (and (and (|Equiv.__default.Pes__Step#canCall| |st#0@@42| |bvals#4_0@0|) ($Is DatatypeTypeType |let#4_3#0#0| (Tclass._System.Tuple2 Tclass.Equiv.MState Tclass.Equiv.VS))) (and (_System.Tuple2.___hMake2_q |let#4_3#0#0|) (= (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |st1#4_0@0|) ($Box DatatypeTypeType |bvarvs#4_0@0|)) |let#4_3#0#0|))))) (and (=> (= (ControlFlow 0 117) 91) anon29_Then_correct) (=> (= (ControlFlow 0 117) 116) anon29_Else_correct))))))
(let ((anon27_Then_correct  (=> (and (and (= |e#0@@26| (|#AST.Expr_Raw.Bind| |_mcc#2#4_0@0| |_mcc#3#4_0@0| |_mcc#4#4_0@0|)) ($Is SeqType |_mcc#2#4_0@0| (TSeq (TSeq TChar)))) (and ($Is SeqType |_mcc#3#4_0@0| (TSeq Tclass.AST.Expr__Raw)) ($Is DatatypeTypeType |_mcc#4#4_0@0| Tclass.AST.Expr__Raw))) (=> (and (and (and (and (and ($Is DatatypeTypeType |body#4_0@0| Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType |body#4_0@0| Tclass.AST.Expr__Raw $Heap@@6)) (= |let#4_0#0#0| |_mcc#4#4_0@0|)) (and ($Is DatatypeTypeType |let#4_0#0#0| Tclass.AST.Expr__Raw) (= |body#4_0@0| |let#4_0#0#0|))) (and (and (and ($Is SeqType |bvals#4_0@0| (TSeq Tclass.AST.Expr__Raw)) ($IsAlloc SeqType |bvals#4_0@0| (TSeq Tclass.AST.Expr__Raw) $Heap@@6)) (= |let#4_1#0#0| |_mcc#3#4_0@0|)) (and ($Is SeqType |let#4_1#0#0| (TSeq Tclass.AST.Expr__Raw)) (= |bvals#4_0@0| |let#4_1#0#0|)))) (and (and (and (and ($Is SeqType |bvars#4_0@0| (TSeq (TSeq TChar))) ($IsAlloc SeqType |bvars#4_0@0| (TSeq (TSeq TChar)) $Heap@@6)) (and (= |let#4_2#0#0| |_mcc#2#4_0@0|) ($Is SeqType |let#4_2#0#0| (TSeq (TSeq TChar))))) (and (and (= |bvars#4_0@0| |let#4_2#0#0|) ($Is SeqType |bvals#4_0@0| (TSeq Tclass.AST.Expr))) (and (or (or (<= 0 (LitInt 2)) (< (|Seq#Rank| |bvals#4_0@0|) (DtRank |e#0@@26|))) (= (LitInt 1) (LitInt 2))) (< (|Seq#Rank| |bvals#4_0@0|) (DtRank |e#0@@26|))))) (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (|Equiv.__default.Pes#canCall| |st#0@@42| |bvals#4_0@0|)) (and (Equiv.__default.Pes |st#0@@42| |bvals#4_0@0|) (= $Heap@@6 $Heap@2))))) (and (=> (= (ControlFlow 0 118) 84) anon28_Then_correct) (=> (= (ControlFlow 0 118) 117) anon28_Else_correct))))))
(let ((anon33_Else_correct  (=> ($IsAlloc DatatypeTypeType |st1#3_0@0| Tclass.Equiv.MState $Heap@3) (=> (and ($IsAlloc SeqType |avars#3_0@0| (TSeq (TSeq TChar)) $Heap@3) ($IsAlloc DatatypeTypeType |vs#3_0@0| Tclass.Equiv.VS $Heap@3)) (=> (and (and (|Equiv.__default.UpdateState__Pre#canCall| |st1#3_0@0| |avars#3_0@0| |vs#3_0@0|) (|Equiv.__default.UpdateState__Pre#canCall| |st1#3_0@0| |avars#3_0@0| |vs#3_0@0|)) (and (Equiv.__default.UpdateState__Pre |st1#3_0@0| |avars#3_0@0| |vs#3_0@0|) ($IsAlloc DatatypeTypeType |st1#3_0@0| Tclass.Equiv.MState $Heap@3))) (=> (and (and (and ($IsAlloc SeqType |avars#3_0@0| (TSeq (TSeq TChar)) $Heap@3) ($IsAlloc DatatypeTypeType |vs#3_0@0| Tclass.Equiv.VS $Heap@3)) (and (Equiv.__default.UpdateState__Pre |st1#3_0@0| |avars#3_0@0| |vs#3_0@0|) (|Equiv.__default.AssignState#canCall| |st1#3_0@0| |avars#3_0@0| |vs#3_0@0|))) (and (and (Equiv.MState.MState_q (Equiv.__default.AssignState |st1#3_0@0| |avars#3_0@0| |vs#3_0@0|)) (|Equiv.__default.AssignState#canCall| |st1#3_0@0| |avars#3_0@0| |vs#3_0@0|)) (and (= |st2#3_0@0| (Equiv.__default.AssignState |st1#3_0@0| |avars#3_0@0| |vs#3_0@0|)) ($Is SeqType |avals#3_0@0| (TSeq Tclass.AST.Expr))))) (and (=> (= (ControlFlow 0 72) (- 0 79)) (AST.Expr__Raw.Assign_q |e#0@@26|)) (=> (AST.Expr__Raw.Assign_q |e#0@@26|) (and (=> (= (ControlFlow 0 72) (- 0 78)) (|Seq#Equal| (AST.Expr__Raw.avars |e#0@@26|) |avars#3_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.avars |e#0@@26|) |avars#3_0@0|) (and (=> (= (ControlFlow 0 72) (- 0 77)) (|Seq#Equal| (AST.Expr__Raw.avals |e#0@@26|) |avals#3_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.avals |e#0@@26|) |avals#3_0@0|) (and (=> (= (ControlFlow 0 72) (- 0 76)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (and (=> (= (ControlFlow 0 72) (- 0 75)) (Equiv.__default.Pes__Succ |st#0@@42| |avals#3_0@0| |st1#3_0@0| |vs#3_0@0|)) (=> (Equiv.__default.Pes__Succ |st#0@@42| |avals#3_0@0| |st1#3_0@0| |vs#3_0@0|) (and (=> (= (ControlFlow 0 72) (- 0 74)) (Equiv.__default.UpdateState__Pre |st1#3_0@0| |avars#3_0@0| |vs#3_0@0|)) (=> (Equiv.__default.UpdateState__Pre |st1#3_0@0| |avars#3_0@0| |vs#3_0@0|) (and (=> (= (ControlFlow 0 72) (- 0 73)) (|Equiv.MState#Equal| |st2#3_0@0| (Equiv.__default.AssignState |st1#3_0@0| |avars#3_0@0| |vs#3_0@0|))) (=> (|Equiv.MState#Equal| |st2#3_0@0| (Equiv.__default.AssignState |st1#3_0@0| |avars#3_0@0| |vs#3_0@0|)) (=> (and (and ($IsGoodHeap $Heap@19) ($IsHeapAnchor $Heap@19)) (|Equiv.__default.P__Succ#canCall| |st#0@@42| |e#0@@26| |st2#3_0@0| Equiv.__default.Zero)) (=> (and (and (and (|Equiv.__default.P__Succ#canCall| |st#0@@42| |e#0@@26| |st2#3_0@0| Equiv.__default.Zero) (and (Equiv.__default.P__Succ |st#0@@42| |e#0@@26| |st2#3_0@0| Equiv.__default.Zero) (let ((|res#0@@13| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx |st#0@@42|))))
(let ((|res'#0@@13| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx_k |st#0@@42|))))
 (and (and (and (Equiv.__default.Inv |st#0@@42|) (Equiv.__default.EqResult |res#0@@13| |res'#0@@13|)) (|Utils.Result#Equal| |res#0@@13| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Equiv.MValue.v Equiv.__default.Zero))) ($Box MapType (Equiv.MState.ctx |st2#3_0@0|))))))) (|Utils.Result#Equal| |res'#0@@13| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Equiv.MValue.v_k Equiv.__default.Zero))) ($Box MapType (Equiv.MState.ctx_k |st2#3_0@0|))))))))))) (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|)) (and (and (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|) (and (Equiv.__default.P |st#0@@42| |e#0@@26|) (let ((|res#1@@7| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx |st#0@@42|))))
(let ((|res'#1@@7| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx_k |st#0@@42|))))
 (=> (Equiv.__default.Inv |st#0@@42|) (Equiv.__default.EqResult |res#1@@7| |res'#1@@7|)))))) (and (= $Heap@3 $Heap@19) (= (ControlFlow 0 72) 7)))) GeneratedUnifiedExit_correct))))))))))))))))))))))
(let ((anon32_Else_correct  (=> (and (and (and ($IsAlloc DatatypeTypeType |st#0@@42| Tclass.Equiv.MState $Heap@3) ($Is SeqType |avals#3_0@0| (TSeq Tclass.AST.Expr))) (and ($IsAlloc SeqType |avals#3_0@0| (TSeq Tclass.AST.Expr) $Heap@3) (|Equiv.__default.Pes__Fail#canCall| |st#0@@42| |avals#3_0@0|))) (and (and (|Equiv.__default.Pes__Fail#canCall| |st#0@@42| |avals#3_0@0|) (not (Equiv.__default.Pes__Fail |st#0@@42| |avals#3_0@0|))) (and ($Is DatatypeTypeType |st1#3_0@0| Tclass.Equiv.MState) ($IsAlloc DatatypeTypeType |st1#3_0@0| Tclass.Equiv.MState $Heap@3)))) (=> (and (and (and (and ($Is DatatypeTypeType |vs#3_0@0| Tclass.Equiv.VS) ($IsAlloc DatatypeTypeType |vs#3_0@0| Tclass.Equiv.VS $Heap@3)) ($IsAlloc DatatypeTypeType |st#0@@42| Tclass.Equiv.MState $Heap@3)) (and (and ($Is SeqType |avals#3_0@0| (TSeq Tclass.AST.Expr)) ($IsAlloc SeqType |avals#3_0@0| (TSeq Tclass.AST.Expr) $Heap@3)) (and (Equiv.__default.Pes |st#0@@42| |avals#3_0@0|) (not (Equiv.__default.Pes__Fail |st#0@@42| |avals#3_0@0|))))) (and (and (and (|Equiv.__default.Pes__Step#canCall| |st#0@@42| |avals#3_0@0|) (_System.Tuple2.___hMake2_q (Equiv.__default.Pes__Step |st#0@@42| |avals#3_0@0|))) (and (= |let#3_2#0#0| (Equiv.__default.Pes__Step |st#0@@42| |avals#3_0@0|)) (|Equiv.__default.Pes__Step#canCall| |st#0@@42| |avals#3_0@0|))) (and (and (|Equiv.__default.Pes__Step#canCall| |st#0@@42| |avals#3_0@0|) ($Is DatatypeTypeType |let#3_2#0#0| (Tclass._System.Tuple2 Tclass.Equiv.MState Tclass.Equiv.VS))) (and (_System.Tuple2.___hMake2_q |let#3_2#0#0|) (= (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |st1#3_0@0|) ($Box DatatypeTypeType |vs#3_0@0|)) |let#3_2#0#0|))))) (and (=> (= (ControlFlow 0 80) 67) anon33_Then_correct) (=> (= (ControlFlow 0 80) 72) anon33_Else_correct))))))
(let ((anon31_Then_correct  (=> (= |e#0@@26| (|#AST.Expr_Raw.Assign| |_mcc#5#3_0@0| |_mcc#6#3_0@0|)) (=> (and ($Is SeqType |_mcc#5#3_0@0| (TSeq (TSeq TChar))) ($Is SeqType |_mcc#6#3_0@0| (TSeq Tclass.AST.Expr__Raw))) (=> (and (and (and ($Is SeqType |avals#3_0@0| (TSeq Tclass.AST.Expr__Raw)) ($IsAlloc SeqType |avals#3_0@0| (TSeq Tclass.AST.Expr__Raw) $Heap@@6)) (= |let#3_0#0#0| |_mcc#6#3_0@0|)) (and ($Is SeqType |let#3_0#0#0| (TSeq Tclass.AST.Expr__Raw)) (= |avals#3_0@0| |let#3_0#0#0|))) (=> (and (and (and (and ($Is SeqType |avars#3_0@0| (TSeq (TSeq TChar))) ($IsAlloc SeqType |avars#3_0@0| (TSeq (TSeq TChar)) $Heap@@6)) (and (= |let#3_1#0#0| |_mcc#5#3_0@0|) ($Is SeqType |let#3_1#0#0| (TSeq (TSeq TChar))))) (and (and (= |avars#3_0@0| |let#3_1#0#0|) ($Is SeqType |avals#3_0@0| (TSeq Tclass.AST.Expr))) (and (or (or (<= 0 (LitInt 2)) (< (|Seq#Rank| |avals#3_0@0|) (DtRank |e#0@@26|))) (= (LitInt 1) (LitInt 2))) (< (|Seq#Rank| |avals#3_0@0|) (DtRank |e#0@@26|))))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|Equiv.__default.Pes#canCall| |st#0@@42| |avals#3_0@0|)) (and (Equiv.__default.Pes |st#0@@42| |avals#3_0@0|) (= $Heap@@6 $Heap@3)))) (and (=> (= (ControlFlow 0 81) 61) anon32_Then_correct) (=> (= (ControlFlow 0 81) 80) anon32_Else_correct))))))))
(let ((anon37_Else_correct  (=> (and (and (and ($IsAlloc DatatypeTypeType |st1#1_0@0| Tclass.Equiv.MState $Heap@14) ($Is DatatypeTypeType |e2#1_0@0| Tclass.AST.Expr)) (and ($IsAlloc DatatypeTypeType |e2#1_0@0| Tclass.AST.Expr $Heap@14) (|Equiv.__default.P__Fail#canCall| |st1#1_0@0| |e2#1_0@0|))) (and (and (|Equiv.__default.P__Fail#canCall| |st1#1_0@0| |e2#1_0@0|) (not (Equiv.__default.P__Fail |st1#1_0@0| |e2#1_0@0|))) (and ($Is DatatypeTypeType |st2#1_0@0| Tclass.Equiv.MState) ($IsAlloc DatatypeTypeType |st2#1_0@0| Tclass.Equiv.MState $Heap@14)))) (=> (and (and (and (and (and ($Is DatatypeTypeType |v2#1_0@0| Tclass.Equiv.MValue) ($IsAlloc DatatypeTypeType |v2#1_0@0| Tclass.Equiv.MValue $Heap@14)) ($IsAlloc DatatypeTypeType |st1#1_0@0| Tclass.Equiv.MState $Heap@14)) (and ($Is DatatypeTypeType |e2#1_0@0| Tclass.AST.Expr) ($IsAlloc DatatypeTypeType |e2#1_0@0| Tclass.AST.Expr $Heap@14))) (and (and (Equiv.__default.P |st1#1_0@0| |e2#1_0@0|) (not (Equiv.__default.P__Fail |st1#1_0@0| |e2#1_0@0|))) (and (|Equiv.__default.P__Step#canCall| |st1#1_0@0| |e2#1_0@0|) (_System.Tuple2.___hMake2_q (Equiv.__default.P__Step |st1#1_0@0| |e2#1_0@0|))))) (and (and (and (= |let#1_4#0#0| (Equiv.__default.P__Step |st1#1_0@0| |e2#1_0@0|)) (|Equiv.__default.P__Step#canCall| |st1#1_0@0| |e2#1_0@0|)) (and (|Equiv.__default.P__Step#canCall| |st1#1_0@0| |e2#1_0@0|) ($Is DatatypeTypeType |let#1_4#0#0| (Tclass._System.Tuple2 Tclass.Equiv.MState Tclass.Equiv.MValue)))) (and (and (_System.Tuple2.___hMake2_q |let#1_4#0#0|) (= (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |st2#1_0@0|) ($Box DatatypeTypeType |v2#1_0@0|)) |let#1_4#0#0|)) (and ($Is DatatypeTypeType |e1#1_0@0| Tclass.AST.Expr) ($Is DatatypeTypeType |e2#1_0@0| Tclass.AST.Expr))))) (and (=> (= (ControlFlow 0 48) (- 0 55)) (AST.Expr__Raw.Op_q |e#0@@26|)) (=> (AST.Expr__Raw.Op_q |e#0@@26|) (and (=> (= (ControlFlow 0 48) (- 0 54)) (|AST.BinOp#Equal| (AST.Expr__Raw.op |e#0@@26|) |op#1_0@0|)) (=> (|AST.BinOp#Equal| (AST.Expr__Raw.op |e#0@@26|) |op#1_0@0|) (and (=> (= (ControlFlow 0 48) (- 0 53)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe1 |e#0@@26|) |e1#1_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe1 |e#0@@26|) |e1#1_0@0|) (and (=> (= (ControlFlow 0 48) (- 0 52)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe2 |e#0@@26|) |e2#1_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe2 |e#0@@26|) |e2#1_0@0|) (and (=> (= (ControlFlow 0 48) (- 0 51)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (and (=> (= (ControlFlow 0 48) (- 0 50)) (Equiv.__default.P__Succ |st#0@@42| |e1#1_0@0| |st1#1_0@0| |v1#1_0@0|)) (=> (Equiv.__default.P__Succ |st#0@@42| |e1#1_0@0| |st1#1_0@0| |v1#1_0@0|) (and (=> (= (ControlFlow 0 48) (- 0 49)) (Equiv.__default.P |st1#1_0@0| |e2#1_0@0|)) (=> (Equiv.__default.P |st1#1_0@0| |e2#1_0@0|) (=> (and (and (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)) (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|)) (and (and (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|) (and (Equiv.__default.P |st#0@@42| |e#0@@26|) (let ((|res#0@@14| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx |st#0@@42|))))
(let ((|res'#0@@14| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx_k |st#0@@42|))))
 (=> (Equiv.__default.Inv |st#0@@42|) (Equiv.__default.EqResult |res#0@@14| |res'#0@@14|)))))) (and (= $Heap@14 $Heap@16) (= (ControlFlow 0 48) 7)))) GeneratedUnifiedExit_correct)))))))))))))))))))
(let ((anon36_Else_correct  (=> (and ($IsAlloc DatatypeTypeType |st#0@@42| Tclass.Equiv.MState $Heap@9) ($Is DatatypeTypeType |e1#1_0@0| Tclass.AST.Expr)) (=> (and (and (and (and (and ($IsAlloc DatatypeTypeType |e1#1_0@0| Tclass.AST.Expr $Heap@9) (|Equiv.__default.P__Fail#canCall| |st#0@@42| |e1#1_0@0|)) (and (|Equiv.__default.P__Fail#canCall| |st#0@@42| |e1#1_0@0|) (not (Equiv.__default.P__Fail |st#0@@42| |e1#1_0@0|)))) (and (and ($Is DatatypeTypeType |st1#1_0@0| Tclass.Equiv.MState) ($IsAlloc DatatypeTypeType |st1#1_0@0| Tclass.Equiv.MState $Heap@9)) (and ($Is DatatypeTypeType |v1#1_0@0| Tclass.Equiv.MValue) ($IsAlloc DatatypeTypeType |v1#1_0@0| Tclass.Equiv.MValue $Heap@9)))) (and (and (and ($IsAlloc DatatypeTypeType |st#0@@42| Tclass.Equiv.MState $Heap@9) ($Is DatatypeTypeType |e1#1_0@0| Tclass.AST.Expr)) (and ($IsAlloc DatatypeTypeType |e1#1_0@0| Tclass.AST.Expr $Heap@9) (Equiv.__default.P |st#0@@42| |e1#1_0@0|))) (and (and (not (Equiv.__default.P__Fail |st#0@@42| |e1#1_0@0|)) (|Equiv.__default.P__Step#canCall| |st#0@@42| |e1#1_0@0|)) (and (_System.Tuple2.___hMake2_q (Equiv.__default.P__Step |st#0@@42| |e1#1_0@0|)) (= |let#1_3#0#0| (Equiv.__default.P__Step |st#0@@42| |e1#1_0@0|)))))) (and (and (and (and (|Equiv.__default.P__Step#canCall| |st#0@@42| |e1#1_0@0|) (|Equiv.__default.P__Step#canCall| |st#0@@42| |e1#1_0@0|)) (and ($Is DatatypeTypeType |let#1_3#0#0| (Tclass._System.Tuple2 Tclass.Equiv.MState Tclass.Equiv.MValue)) (_System.Tuple2.___hMake2_q |let#1_3#0#0|))) (and (and (= (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |st1#1_0@0|) ($Box DatatypeTypeType |v1#1_0@0|)) |let#1_3#0#0|) ($Is DatatypeTypeType |e2#1_0@0| Tclass.AST.Expr)) (and (or (or (<= 0 (LitInt 2)) (< (DtRank |e2#1_0@0|) (DtRank |e#0@@26|))) (= (LitInt 3) (LitInt 2))) (or (< (DtRank |e2#1_0@0|) (DtRank |e#0@@26|)) (and (= (DtRank |e2#1_0@0|) (DtRank |e#0@@26|)) (< (LitInt 3) (LitInt 2))))))) (and (and (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)) (|Equiv.__default.P#canCall| |st1#1_0@0| |e2#1_0@0|)) (and (Equiv.__default.P |st1#1_0@0| |e2#1_0@0|) (= $Heap@9 $Heap@14))))) (and (=> (= (ControlFlow 0 56) 43) anon37_Then_correct) (=> (= (ControlFlow 0 56) 48) anon37_Else_correct))))))
(let ((anon35_Then_correct  (=> (and (and (= |e#0@@26| (|#AST.Expr_Raw.Op| |_mcc#10#1_0@0| |_mcc#11#1_0@0| |_mcc#12#1_0@0|)) ($Is DatatypeTypeType |_mcc#10#1_0@0| Tclass.AST.BinOp)) (and ($Is DatatypeTypeType |_mcc#11#1_0@0| Tclass.AST.Expr__Raw) ($Is DatatypeTypeType |_mcc#12#1_0@0| Tclass.AST.Expr__Raw))) (=> (and (and (and (and (and ($Is DatatypeTypeType |e2#1_0@0| Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType |e2#1_0@0| Tclass.AST.Expr__Raw $Heap@@6)) (= |let#1_0#0#0| |_mcc#12#1_0@0|)) (and ($Is DatatypeTypeType |let#1_0#0#0| Tclass.AST.Expr__Raw) (= |e2#1_0@0| |let#1_0#0#0|))) (and (and (and ($Is DatatypeTypeType |e1#1_0@0| Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType |e1#1_0@0| Tclass.AST.Expr__Raw $Heap@@6)) (= |let#1_1#0#0| |_mcc#11#1_0@0|)) (and ($Is DatatypeTypeType |let#1_1#0#0| Tclass.AST.Expr__Raw) (= |e1#1_0@0| |let#1_1#0#0|)))) (and (and (and (and ($Is DatatypeTypeType |op#1_0@0| Tclass.AST.BinOp) ($IsAlloc DatatypeTypeType |op#1_0@0| Tclass.AST.BinOp $Heap@@6)) (and (= |let#1_2#0#0| |_mcc#10#1_0@0|) ($Is DatatypeTypeType |let#1_2#0#0| Tclass.AST.BinOp))) (and (and (= |op#1_0@0| |let#1_2#0#0|) ($Is DatatypeTypeType |e1#1_0@0| Tclass.AST.Expr)) (and (or (or (<= 0 (LitInt 2)) (< (DtRank |e1#1_0@0|) (DtRank |e#0@@26|))) (= (LitInt 3) (LitInt 2))) (or (< (DtRank |e1#1_0@0|) (DtRank |e#0@@26|)) (and (= (DtRank |e1#1_0@0|) (DtRank |e#0@@26|)) (< (LitInt 3) (LitInt 2))))))) (and (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (|Equiv.__default.P#canCall| |st#0@@42| |e1#1_0@0|)) (and (Equiv.__default.P |st#0@@42| |e1#1_0@0|) (= $Heap@@6 $Heap@9))))) (and (=> (= (ControlFlow 0 57) 37) anon36_Then_correct) (=> (= (ControlFlow 0 57) 56) anon36_Else_correct))))))
(let ((anon39_Else_correct  (=> (and (and (and ($IsAlloc DatatypeTypeType |st#0@@42| Tclass.Equiv.MState $Heap@10) ($Is SeqType |es#0_0@0| (TSeq Tclass.AST.Expr))) (and ($IsAlloc SeqType |es#0_0@0| (TSeq Tclass.AST.Expr) $Heap@10) (|Equiv.__default.Pes__Fail#canCall| |st#0@@42| |es#0_0@0|))) (and (and (|Equiv.__default.Pes__Fail#canCall| |st#0@@42| |es#0_0@0|) (not (Equiv.__default.Pes__Fail |st#0@@42| |es#0_0@0|))) (and ($Is DatatypeTypeType |st1#0_0@0| Tclass.Equiv.MState) ($IsAlloc DatatypeTypeType |st1#0_0@0| Tclass.Equiv.MState $Heap@10)))) (=> (and (and (and (and ($Is DatatypeTypeType |vs#0_0@0| Tclass.Equiv.VS) ($IsAlloc DatatypeTypeType |vs#0_0@0| Tclass.Equiv.VS $Heap@10)) (and ($IsAlloc DatatypeTypeType |st#0@@42| Tclass.Equiv.MState $Heap@10) ($Is SeqType |es#0_0@0| (TSeq Tclass.AST.Expr)))) (and (and ($IsAlloc SeqType |es#0_0@0| (TSeq Tclass.AST.Expr) $Heap@10) (Equiv.__default.Pes |st#0@@42| |es#0_0@0|)) (and (not (Equiv.__default.Pes__Fail |st#0@@42| |es#0_0@0|)) (|Equiv.__default.Pes__Step#canCall| |st#0@@42| |es#0_0@0|)))) (and (and (and (_System.Tuple2.___hMake2_q (Equiv.__default.Pes__Step |st#0@@42| |es#0_0@0|)) (= |let#0_1#0#0| (Equiv.__default.Pes__Step |st#0@@42| |es#0_0@0|))) (and (|Equiv.__default.Pes__Step#canCall| |st#0@@42| |es#0_0@0|) (|Equiv.__default.Pes__Step#canCall| |st#0@@42| |es#0_0@0|))) (and (and ($Is DatatypeTypeType |let#0_1#0#0| (Tclass._System.Tuple2 Tclass.Equiv.MState Tclass.Equiv.VS)) (_System.Tuple2.___hMake2_q |let#0_1#0#0|)) (and (= (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |st1#0_0@0|) ($Box DatatypeTypeType |vs#0_0@0|)) |let#0_1#0#0|) ($Is SeqType |es#0_0@0| (TSeq Tclass.AST.Expr)))))) (and (=> (= (ControlFlow 0 29) (- 0 33)) (AST.Expr__Raw.Seq_q |e#0@@26|)) (=> (AST.Expr__Raw.Seq_q |e#0@@26|) (and (=> (= (ControlFlow 0 29) (- 0 32)) (|Seq#Equal| (AST.Expr__Raw.es |e#0@@26|) |es#0_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.es |e#0@@26|) |es#0_0@0|) (and (=> (= (ControlFlow 0 29) (- 0 31)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (Equiv.__default.Pes__Succ |st#0@@42| |es#0_0@0| |st1#0_0@0| |vs#0_0@0|)) (=> (Equiv.__default.Pes__Succ |st#0@@42| |es#0_0@0| |st1#0_0@0| |vs#0_0@0|) (=> (and (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|)) (and (and (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|) (and (Equiv.__default.P |st#0@@42| |e#0@@26|) (let ((|res#0@@15| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx |st#0@@42|))))
(let ((|res'#0@@15| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx_k |st#0@@42|))))
 (=> (Equiv.__default.Inv |st#0@@42|) (Equiv.__default.EqResult |res#0@@15| |res'#0@@15|)))))) (and (= $Heap@10 $Heap@12) (= (ControlFlow 0 29) 7)))) GeneratedUnifiedExit_correct)))))))))))))
(let ((anon34_Then_correct  (=> (and (and (= |e#0@@26| (|#AST.Expr_Raw.If| |_mcc#7#2_0@0| |_mcc#8#2_0@0| |_mcc#9#2_0@0|)) ($Is DatatypeTypeType |_mcc#7#2_0@0| Tclass.AST.Expr__Raw)) (and ($Is DatatypeTypeType |_mcc#8#2_0@0| Tclass.AST.Expr__Raw) ($Is DatatypeTypeType |_mcc#9#2_0@0| Tclass.AST.Expr__Raw))) (=> (and (and (and (and (and ($Is DatatypeTypeType |els#2_0@0| Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType |els#2_0@0| Tclass.AST.Expr__Raw $Heap@@6)) (= |let#2_0#0#0| |_mcc#9#2_0@0|)) (and ($Is DatatypeTypeType |let#2_0#0#0| Tclass.AST.Expr__Raw) (= |els#2_0@0| |let#2_0#0#0|))) (and (and (and ($Is DatatypeTypeType |thn#2_0@0| Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType |thn#2_0@0| Tclass.AST.Expr__Raw $Heap@@6)) (= |let#2_1#0#0| |_mcc#8#2_0@0|)) (and ($Is DatatypeTypeType |let#2_1#0#0| Tclass.AST.Expr__Raw) (= |thn#2_0@0| |let#2_1#0#0|)))) (and (and (and (and ($Is DatatypeTypeType |cond#2_0@0| Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType |cond#2_0@0| Tclass.AST.Expr__Raw $Heap@@6)) (and (= |let#2_2#0#0| |_mcc#7#2_0@0|) ($Is DatatypeTypeType |let#2_2#0#0| Tclass.AST.Expr__Raw))) (and (and (= |cond#2_0@0| |let#2_2#0#0|) ($Is DatatypeTypeType |cond#2_0@0| Tclass.AST.Expr)) (and (or (or (<= 0 (LitInt 2)) (< (DtRank |cond#2_0@0|) (DtRank |e#0@@26|))) (= (LitInt 3) (LitInt 2))) (or (< (DtRank |cond#2_0@0|) (DtRank |e#0@@26|)) (and (= (DtRank |cond#2_0@0|) (DtRank |e#0@@26|)) (< (LitInt 3) (LitInt 2))))))) (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (|Equiv.__default.P#canCall| |st#0@@42| |cond#2_0@0|) (Equiv.__default.P |st#0@@42| |cond#2_0@0|))) (and (and (= $Heap@@6 $Heap@4) ($Is DatatypeTypeType |cond#2_0@0| Tclass.AST.Expr)) (and ($Is DatatypeTypeType |thn#2_0@0| Tclass.AST.Expr) ($Is DatatypeTypeType |els#2_0@0| Tclass.AST.Expr)))))) (and (=> (= (ControlFlow 0 14) (- 0 28)) (AST.Expr__Raw.If_q |e#0@@26|)) (=> (AST.Expr__Raw.If_q |e#0@@26|) (and (=> (= (ControlFlow 0 14) (- 0 27)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.cond |e#0@@26|) |cond#2_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.cond |e#0@@26|) |cond#2_0@0|) (and (=> (= (ControlFlow 0 14) (- 0 26)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.thn |e#0@@26|) |thn#2_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.thn |e#0@@26|) |thn#2_0@0|) (and (=> (= (ControlFlow 0 14) (- 0 25)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.els |e#0@@26|) |els#2_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.els |e#0@@26|) |els#2_0@0|) (and (=> (= (ControlFlow 0 14) (- 0 24)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (and (=> (= (ControlFlow 0 14) (- 0 23)) (Equiv.__default.P |st#0@@42| |cond#2_0@0|)) (=> (Equiv.__default.P |st#0@@42| |cond#2_0@0|) (=> (and (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (|Equiv.__default.P__Fail#canCall| |st#0@@42| |cond#2_0@0|)) (and (and (not (Equiv.__default.P__Fail |st#0@@42| |cond#2_0@0|)) (= $Heap@4 $Heap@5)) (and ($IsAlloc DatatypeTypeType |st#0@@42| Tclass.Equiv.MState $Heap@5) ($Is DatatypeTypeType |cond#2_0@0| Tclass.AST.Expr)))) (and (and (and ($IsAlloc DatatypeTypeType |cond#2_0@0| Tclass.AST.Expr $Heap@5) (|Equiv.__default.P__Fail#canCall| |st#0@@42| |cond#2_0@0|)) (and (|Equiv.__default.P__Fail#canCall| |st#0@@42| |cond#2_0@0|) (not (Equiv.__default.P__Fail |st#0@@42| |cond#2_0@0|)))) (and (and ($Is DatatypeTypeType |st_cond#2_0@0| Tclass.Equiv.MState) ($IsAlloc DatatypeTypeType |st_cond#2_0@0| Tclass.Equiv.MState $Heap@5)) (and ($Is DatatypeTypeType |condv#2_0@0| Tclass.Equiv.MValue) ($IsAlloc DatatypeTypeType |condv#2_0@0| Tclass.Equiv.MValue $Heap@5))))) (=> (and (and (and (and (and ($IsAlloc DatatypeTypeType |st#0@@42| Tclass.Equiv.MState $Heap@5) ($Is DatatypeTypeType |cond#2_0@0| Tclass.AST.Expr)) (and ($IsAlloc DatatypeTypeType |cond#2_0@0| Tclass.AST.Expr $Heap@5) (Equiv.__default.P |st#0@@42| |cond#2_0@0|))) (and (and (not (Equiv.__default.P__Fail |st#0@@42| |cond#2_0@0|)) (|Equiv.__default.P__Step#canCall| |st#0@@42| |cond#2_0@0|)) (and (_System.Tuple2.___hMake2_q (Equiv.__default.P__Step |st#0@@42| |cond#2_0@0|)) (= |let#2_3#0#0| (Equiv.__default.P__Step |st#0@@42| |cond#2_0@0|))))) (and (and (and (|Equiv.__default.P__Step#canCall| |st#0@@42| |cond#2_0@0|) (|Equiv.__default.P__Step#canCall| |st#0@@42| |cond#2_0@0|)) (and ($Is DatatypeTypeType |let#2_3#0#0| (Tclass._System.Tuple2 Tclass.Equiv.MState Tclass.Equiv.MValue)) (_System.Tuple2.___hMake2_q |let#2_3#0#0|))) (and (and (= (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |st_cond#2_0@0|) ($Box DatatypeTypeType |condv#2_0@0|)) |let#2_3#0#0|) ($Is DatatypeTypeType |thn#2_0@0| Tclass.AST.Expr)) (and (or (or (<= 0 (LitInt 2)) (< (DtRank |thn#2_0@0|) (DtRank |e#0@@26|))) (= (LitInt 3) (LitInt 2))) (or (< (DtRank |thn#2_0@0|) (DtRank |e#0@@26|)) (and (= (DtRank |thn#2_0@0|) (DtRank |e#0@@26|)) (< (LitInt 3) (LitInt 2)))))))) (and (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (|Equiv.__default.P#canCall| |st_cond#2_0@0| |thn#2_0@0|) (Equiv.__default.P |st_cond#2_0@0| |thn#2_0@0|))) (and (and (= $Heap@5 $Heap@6) ($Is DatatypeTypeType |els#2_0@0| Tclass.AST.Expr)) (and (or (or (<= 0 (LitInt 2)) (< (DtRank |els#2_0@0|) (DtRank |e#0@@26|))) (= (LitInt 3) (LitInt 2))) (or (< (DtRank |els#2_0@0|) (DtRank |e#0@@26|)) (and (= (DtRank |els#2_0@0|) (DtRank |e#0@@26|)) (< (LitInt 3) (LitInt 2))))))) (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (|Equiv.__default.P#canCall| |st_cond#2_0@0| |els#2_0@0|) (Equiv.__default.P |st_cond#2_0@0| |els#2_0@0|))) (and (and (= $Heap@6 $Heap@7) ($Is DatatypeTypeType |cond#2_0@0| Tclass.AST.Expr)) (and ($Is DatatypeTypeType |thn#2_0@0| Tclass.AST.Expr) ($Is DatatypeTypeType |els#2_0@0| Tclass.AST.Expr)))))) (and (=> (= (ControlFlow 0 14) (- 0 22)) (AST.Expr__Raw.If_q |e#0@@26|)) (=> (AST.Expr__Raw.If_q |e#0@@26|) (and (=> (= (ControlFlow 0 14) (- 0 21)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.cond |e#0@@26|) |cond#2_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.cond |e#0@@26|) |cond#2_0@0|) (and (=> (= (ControlFlow 0 14) (- 0 20)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.thn |e#0@@26|) |thn#2_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.thn |e#0@@26|) |thn#2_0@0|) (and (=> (= (ControlFlow 0 14) (- 0 19)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.els |e#0@@26|) |els#2_0@0|)) (=> (|AST.Expr__Raw#Equal| (AST.Expr__Raw.els |e#0@@26|) |els#2_0@0|) (and (=> (= (ControlFlow 0 14) (- 0 18)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (and (=> (= (ControlFlow 0 14) (- 0 17)) (Equiv.__default.P__Succ |st#0@@42| |cond#2_0@0| |st_cond#2_0@0| |condv#2_0@0|)) (=> (Equiv.__default.P__Succ |st#0@@42| |cond#2_0@0| |st_cond#2_0@0| |condv#2_0@0|) (and (=> (= (ControlFlow 0 14) (- 0 16)) (Equiv.__default.P |st_cond#2_0@0| |thn#2_0@0|)) (=> (Equiv.__default.P |st_cond#2_0@0| |thn#2_0@0|) (and (=> (= (ControlFlow 0 14) (- 0 15)) (Equiv.__default.P |st_cond#2_0@0| |els#2_0@0|)) (=> (Equiv.__default.P |st_cond#2_0@0| |els#2_0@0|) (=> (and (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|)) (and (and (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|) (and (Equiv.__default.P |st#0@@42| |e#0@@26|) (let ((|res#0@@16| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx |st#0@@42|))))
(let ((|res'#0@@16| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx_k |st#0@@42|))))
 (=> (Equiv.__default.Inv |st#0@@42|) (Equiv.__default.EqResult |res#0@@16| |res'#0@@16|)))))) (and (= $Heap@7 $Heap@8) (= (ControlFlow 0 14) 7)))) GeneratedUnifiedExit_correct)))))))))))))))))))))))))))))))))))
(let ((anon26_Then_correct  (=> (= |e#0@@26| (|#AST.Expr_Raw.Literal| |_mcc#1#5_0@0|)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (AST.Expr__Raw.Literal_q |e#0@@26|)) (=> (AST.Expr__Raw.Literal_q |e#0@@26|) (and (=> (= (ControlFlow 0 11) (- 0 12)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|)) (and (and (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|) (and (Equiv.__default.P |st#0@@42| |e#0@@26|) (let ((|res#0@@17| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx |st#0@@42|))))
(let ((|res'#0@@17| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx_k |st#0@@42|))))
 (=> (Equiv.__default.Inv |st#0@@42|) (Equiv.__default.EqResult |res#0@@17| |res'#0@@17|)))))) (and (= $Heap@@6 $Heap@1) (= (ControlFlow 0 11) 7)))) GeneratedUnifiedExit_correct))))))))
(let ((anon25_Then_correct  (=> (and (= |e#0@@26| (|#AST.Expr_Raw.Var| |_mcc#0#6_0@0|)) ($Is SeqType |_mcc#0#6_0@0| (TSeq TChar))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (AST.Expr__Raw.Var_q |e#0@@26|)) (=> (AST.Expr__Raw.Var_q |e#0@@26|) (and (=> (= (ControlFlow 0 8) (- 0 9)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))) (=> (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|)) (and (and (|Equiv.__default.P#canCall| |st#0@@42| |e#0@@26|) (and (Equiv.__default.P |st#0@@42| |e#0@@26|) (let ((|res#0@@18| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx |st#0@@42|))))
(let ((|res'#0@@18| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@26| (Equiv.MState.ctx_k |st#0@@42|))))
 (=> (Equiv.__default.Inv |st#0@@42|) (Equiv.__default.EqResult |res#0@@18| |res'#0@@18|)))))) (and (= $Heap@@6 $Heap@0) (= (ControlFlow 0 8) 7)))) GeneratedUnifiedExit_correct))))))))
(let ((anon39_Then_correct  (=> ($Is SeqType |es#0_0@0| (TSeq Tclass.AST.Expr)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (AST.Expr__Raw.Seq_q |e#0@@26|)) (=> (AST.Expr__Raw.Seq_q |e#0@@26|) (and (=> (= (ControlFlow 0 3) (- 0 4)) (|Seq#Equal| (AST.Expr__Raw.es |e#0@@26|) |es#0_0@0|)) (=> (|Seq#Equal| (AST.Expr__Raw.es |e#0@@26|) |es#0_0@0|) (=> (= (ControlFlow 0 3) (- 0 2)) (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|))))))))))
(let ((anon38_Then_correct  (=> (and (= |e#0@@26| (|#AST.Expr_Raw.Seq| |_mcc#13#0_0@0|)) ($Is SeqType |_mcc#13#0_0@0| (TSeq Tclass.AST.Expr__Raw))) (=> (and (and (and (and ($Is SeqType |es#0_0@0| (TSeq Tclass.AST.Expr__Raw)) ($IsAlloc SeqType |es#0_0@0| (TSeq Tclass.AST.Expr__Raw) $Heap@@6)) (and (= |let#0_0#0#0| |_mcc#13#0_0@0|) ($Is SeqType |let#0_0#0#0| (TSeq Tclass.AST.Expr__Raw)))) (and (and (= |es#0_0@0| |let#0_0#0#0|) ($Is SeqType |es#0_0@0| (TSeq Tclass.AST.Expr))) (and (or (or (<= 0 (LitInt 2)) (< (|Seq#Rank| |es#0_0@0|) (DtRank |e#0@@26|))) (= (LitInt 1) (LitInt 2))) (< (|Seq#Rank| |es#0_0@0|) (DtRank |e#0@@26|))))) (and (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (|Equiv.__default.Pes#canCall| |st#0@@42| |es#0_0@0|)) (and (Equiv.__default.Pes |st#0@@42| |es#0_0@0|) (= $Heap@@6 $Heap@10)))) (and (=> (= (ControlFlow 0 34) 3) anon39_Then_correct) (=> (= (ControlFlow 0 34) 29) anon39_Else_correct))))))
(let ((anon38_Else_correct true))
(let ((anon35_Else_correct  (=> (or (not (= |e#0@@26| (|#AST.Expr_Raw.Op| |_mcc#10#1_0@0| |_mcc#11#1_0@0| |_mcc#12#1_0@0|))) (not true)) (and (=> (= (ControlFlow 0 35) 34) anon38_Then_correct) (=> (= (ControlFlow 0 35) 1) anon38_Else_correct)))))
(let ((anon34_Else_correct  (=> (or (not (= |e#0@@26| (|#AST.Expr_Raw.If| |_mcc#7#2_0@0| |_mcc#8#2_0@0| |_mcc#9#2_0@0|))) (not true)) (and (=> (= (ControlFlow 0 58) 57) anon35_Then_correct) (=> (= (ControlFlow 0 58) 35) anon35_Else_correct)))))
(let ((anon31_Else_correct  (=> (or (not (= |e#0@@26| (|#AST.Expr_Raw.Assign| |_mcc#5#3_0@0| |_mcc#6#3_0@0|))) (not true)) (and (=> (= (ControlFlow 0 59) 14) anon34_Then_correct) (=> (= (ControlFlow 0 59) 58) anon34_Else_correct)))))
(let ((anon27_Else_correct  (=> (or (not (= |e#0@@26| (|#AST.Expr_Raw.Bind| |_mcc#2#4_0@0| |_mcc#3#4_0@0| |_mcc#4#4_0@0|))) (not true)) (and (=> (= (ControlFlow 0 82) 81) anon31_Then_correct) (=> (= (ControlFlow 0 82) 59) anon31_Else_correct)))))
(let ((anon26_Else_correct  (=> (or (not (= |e#0@@26| (|#AST.Expr_Raw.Literal| |_mcc#1#5_0@0|))) (not true)) (and (=> (= (ControlFlow 0 119) 118) anon27_Then_correct) (=> (= (ControlFlow 0 119) 82) anon27_Else_correct)))))
(let ((anon25_Else_correct  (=> (or (not (= |e#0@@26| (|#AST.Expr_Raw.Var| |_mcc#0#6_0@0|))) (not true)) (and (=> (= (ControlFlow 0 120) 11) anon26_Then_correct) (=> (= (ControlFlow 0 120) 119) anon26_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@6 alloc false)) (and (=> (= (ControlFlow 0 121) 8) anon25_Then_correct) (=> (= (ControlFlow 0 121) 120) anon25_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (=> (and (and (and (and (and ($Is DatatypeTypeType |st#0@@42| Tclass.Equiv.MState) ($IsAlloc DatatypeTypeType |st#0@@42| Tclass.Equiv.MState $Heap@@6)) (|$IsA#Equiv.MState| |st#0@@42|)) (and (and ($Is DatatypeTypeType |e#0@@26| Tclass.AST.Expr) ($IsAlloc DatatypeTypeType |e#0@@26| Tclass.AST.Expr $Heap@@6)) (|$IsA#AST.Expr__Raw| |e#0@@26|))) (and (and (and ($Is DatatypeTypeType |st2#3_0| Tclass.Equiv.MState) ($IsAlloc DatatypeTypeType |st2#3_0| Tclass.Equiv.MState $Heap@@6)) true) (and (and ($Is DatatypeTypeType |st2#4_0| Tclass.Equiv.MState) ($IsAlloc DatatypeTypeType |st2#4_0| Tclass.Equiv.MState $Heap@@6)) true))) (and (and (and (and ($Is DatatypeTypeType |st4#4_0| Tclass.Equiv.MState) ($IsAlloc DatatypeTypeType |st4#4_0| Tclass.Equiv.MState $Heap@@6)) true) (= 6 $FunctionContextHeight)) (and (not (Equiv.__default.P__Fail |st#0@@42| |e#0@@26|)) (= (ControlFlow 0 122) 121)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
