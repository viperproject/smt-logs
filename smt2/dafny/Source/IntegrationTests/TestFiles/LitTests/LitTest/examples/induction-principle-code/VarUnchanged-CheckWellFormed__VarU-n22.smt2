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
(declare-fun Tagclass.AST.Expr () T@U)
(declare-fun Tagclass.AST.Expr__Raw () T@U)
(declare-fun Tagclass.AST.BinOp () T@U)
(declare-fun Tagclass.VarUnchanged.S () T@U)
(declare-fun Tagclass.Utils.Result () T@U)
(declare-fun Tagclass.Utils.Option () T@U)
(declare-fun Tagclass.VarUnchanged.MState () T@U)
(declare-fun |##VarUnchanged.MState.MState| () T@U)
(declare-fun |##Utils.Result.Success| () T@U)
(declare-fun |##Utils.Result.Failure| () T@U)
(declare-fun |##Utils.Option.Some| () T@U)
(declare-fun |##Utils.Option.None| () T@U)
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
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$Expr_Raw () T@U)
(declare-fun tytagFamily$BinOp () T@U)
(declare-fun tytagFamily$S () T@U)
(declare-fun tytagFamily$Result () T@U)
(declare-fun tytagFamily$Option () T@U)
(declare-fun tytagFamily$MState () T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#AST.Expr_Raw.Bind| (T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#AST.Expr_Raw.Assign| (T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |#AST.Expr_Raw.If| (T@U T@U T@U) T@U)
(declare-fun Tclass.AST.Expr__Raw () T@U)
(declare-fun |#AST.Expr_Raw.Op| (T@U T@U T@U) T@U)
(declare-fun Tclass.AST.BinOp () T@U)
(declare-fun |$IsA#VarUnchanged.MState| (T@U) Bool)
(declare-fun VarUnchanged.MState.MState_q (T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun Interp.__default.InterpExprs (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun MapType () T@T)
(declare-fun |Interp.__default.InterpExprs#canCall| (T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun Tclass.AST.Expr () T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Interp.__default.InterpExpr#canCall| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Interp.__default.InterpExpr (T@U T@U T@U) T@U)
(declare-fun |Utils.Result.IsFailure#canCall| (T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun Utils.Result.IsFailure (T@U T@U) Bool)
(declare-fun |Utils.Result.PropagateFailure#canCall| (T@U T@U T@U) Bool)
(declare-fun |Utils.Result.Extract#canCall| (T@U T@U) Bool)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Utils.Result.Extract (T@U T@U) T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |#Utils.Result.Success| (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun Utils.Result.PropagateFailure (T@U T@U T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Utils.Result#Equal| (T@U T@U) Bool)
(declare-fun Utils.Result.Success_q (T@U) Bool)
(declare-fun Utils.Result.value (T@U) T@U)
(declare-fun |Utils.Option#Equal| (T@U T@U) Bool)
(declare-fun Utils.Option.Some_q (T@U) Bool)
(declare-fun Utils.Option.value (T@U) T@U)
(declare-fun |AST.Expr__Raw#Equal| (T@U T@U) Bool)
(declare-fun AST.Expr__Raw.Literal_q (T@U) Bool)
(declare-fun AST.Expr__Raw.n (T@U) Int)
(declare-fun |#AST.Expr_Raw.Var| (T@U) T@U)
(declare-fun |#AST.Expr_Raw.Seq| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#7| (T@U T@U) T@U)
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
(declare-fun AST.Expr__Raw.WellFormed__Single (T@U) Bool)
(declare-fun |AST.Expr__Raw.WellFormed__Single#canCall| (T@U) Bool)
(declare-fun AST.Expr__Raw.Var_q (T@U) Bool)
(declare-fun AST.Expr__Raw.Bind_q (T@U) Bool)
(declare-fun AST.Expr__Raw.Assign_q (T@U) Bool)
(declare-fun AST.Expr__Raw.avals (T@U) T@U)
(declare-fun AST.Expr__Raw.avars (T@U) T@U)
(declare-fun AST.Expr__Raw.If_q (T@U) Bool)
(declare-fun AST.Expr__Raw.Op_q (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun VarUnchanged.__default.Pes__Succ (T@U T@U T@U T@U) Bool)
(declare-fun |VarUnchanged.__default.Pes__Succ#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Tclass.VarUnchanged.S () T@U)
(declare-fun VarUnchanged.MState.ctx (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |VarUnchanged.__default.PreEs#canCall| (T@U T@U) Bool)
(declare-fun VarUnchanged.__default.PreEs (T@U T@U) Bool)
(declare-fun |VarUnchanged.__default.ResultSeqSameX#canCall| (T@U T@U) Bool)
(declare-fun VarUnchanged.__default.ResultSeqSameX (T@U T@U) Bool)
(declare-fun |$IsA#Utils.Result| (T@U) Bool)
(declare-fun |$IsA#Utils.Option| (T@U) Bool)
(declare-fun VarUnchanged.MState.x (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Utils.Result (T@U) T@U)
(declare-fun Utils.Result.Failure_q (T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |#Utils.Result.Failure| () T@U)
(declare-fun |#Utils.Option.None| () T@U)
(declare-fun |#AST.BinOp.Add| () T@U)
(declare-fun |#AST.BinOp.Sub| () T@U)
(declare-fun |#AST.BinOp.Mul| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun Tclass.VarUnchanged.MState () T@U)
(declare-fun VarUnchanged.__default.Pes (T@U T@U) Bool)
(declare-fun |VarUnchanged.__default.Pes#canCall| (T@U T@U) Bool)
(declare-fun Tclass.Utils.Option (T@U) T@U)
(declare-fun AST.Expr__Raw.WellFormed (T@U) Bool)
(declare-fun |AST.Expr__Raw.WellFormed#canCall| (T@U) Bool)
(declare-fun |AST.Expr__Raw.All#canCall| (T@U T@U) Bool)
(declare-fun |AST.Expr__Raw.WellFormed__Single#Handle| () T@U)
(declare-fun AST.Expr__Raw.All (T@U T@U T@U) Bool)
(declare-fun |AST.BinOp#Equal| (T@U T@U) Bool)
(declare-fun Interp.__default.InterpBinOp (T@U Int Int) Int)
(declare-fun |Interp.__default.InterpBinOp#canCall| (T@U Int Int) Bool)
(declare-fun AST.BinOp.Add_q (T@U) Bool)
(declare-fun AST.BinOp.Sub_q (T@U) Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun VarUnchanged.__default.UpdateState__Pre (T@U T@U T@U) Bool)
(declare-fun |VarUnchanged.__default.UpdateState__Pre#canCall| (T@U T@U T@U) Bool)
(declare-fun |Interp.__default.VarsAndValuesToContext#canCall| (T@U T@U) Bool)
(declare-fun Interp.__default.VarsAndValuesToContext (T@U T@U T@U) T@U)
(declare-fun |Map#Merge| (T@U T@U) T@U)
(declare-fun AST.Expr__Raw.es (T@U) T@U)
(declare-fun AST.Expr__Raw.name (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Subtract| (T@U T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun VarUnchanged.__default.P__Fail (T@U T@U) Bool)
(declare-fun |VarUnchanged.__default.P__Fail#canCall| (T@U T@U) Bool)
(declare-fun |VarUnchanged.__default.Pre#canCall| (T@U T@U) Bool)
(declare-fun VarUnchanged.__default.Pre (T@U T@U) Bool)
(declare-fun VarUnchanged.__default.BindStartScope (T@U T@U T@U) T@U)
(declare-fun |VarUnchanged.__default.BindStartScope#canCall| (T@U T@U T@U) Bool)
(declare-fun |#VarUnchanged.MState.MState| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |$IsA#AST.Expr__Raw| (T@U) Bool)
(declare-fun AST.Expr__Raw.Seq_q (T@U) Bool)
(declare-fun Utils.Option.None_q (T@U) Bool)
(declare-fun AST.BinOp.Mul_q (T@U) Bool)
(declare-fun |VarUnchanged.__default.VarUnchanged#canCall| (T@U T@U) Bool)
(declare-fun VarUnchanged.__default.VarUnchanged (T@U T@U T@U) Bool)
(declare-fun VarUnchanged.__default.Pes__Fail (T@U T@U) Bool)
(declare-fun |VarUnchanged.__default.Pes__Fail#canCall| (T@U T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#Utils.Option.Some| (T@U) T@U)
(declare-fun |#AST.Expr_Raw.Literal| (Int) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
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
(declare-fun Tclass.Utils.Option_0 (T@U) T@U)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSet TagSeq TagMap alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.AST.Expr Tagclass.AST.Expr__Raw Tagclass.AST.BinOp Tagclass.VarUnchanged.S Tagclass.Utils.Result Tagclass.Utils.Option Tagclass.VarUnchanged.MState |##VarUnchanged.MState.MState| |##Utils.Result.Success| |##Utils.Result.Failure| |##Utils.Option.Some| |##Utils.Option.None| |##AST.BinOp.Add| |##AST.BinOp.Sub| |##AST.BinOp.Mul| |##AST.Expr_Raw.Var| |##AST.Expr_Raw.Literal| |##AST.Expr_Raw.Bind| |##AST.Expr_Raw.Assign| |##AST.Expr_Raw.If| |##AST.Expr_Raw.Op| |##AST.Expr_Raw.Seq| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| |tytagFamily$_tuple#2| tytagFamily$Expr tytagFamily$Expr_Raw tytagFamily$BinOp tytagFamily$S tytagFamily$Result tytagFamily$Option tytagFamily$MState)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#39#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#39#0#0| i))) (DtRank (|#AST.Expr_Raw.Bind| |a#39#0#0| |a#39#1#0| |a#39#2#0|))))
 :qid |ASTdfy.17:12|
 :skolemid |1069|
 :pattern ( (|Seq#Index| |a#39#0#0| i) (|#AST.Expr_Raw.Bind| |a#39#0#0| |a#39#1#0| |a#39#2#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) (|a#42#2#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#42#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#42#1#0| i@@0))) (DtRank (|#AST.Expr_Raw.Bind| |a#42#0#0| |a#42#1#0| |a#42#2#0|))))
 :qid |ASTdfy.17:12|
 :skolemid |1072|
 :pattern ( (|Seq#Index| |a#42#1#0| i@@0) (|#AST.Expr_Raw.Bind| |a#42#0#0| |a#42#1#0| |a#42#2#0|))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#51#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#51#0#0| i@@1))) (DtRank (|#AST.Expr_Raw.Assign| |a#51#0#0| |a#51#1#0|))))
 :qid |ASTdfy.18:14|
 :skolemid |1085|
 :pattern ( (|Seq#Index| |a#51#0#0| i@@1) (|#AST.Expr_Raw.Assign| |a#51#0#0| |a#51#1#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| |a#54#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#54#1#0| i@@2))) (DtRank (|#AST.Expr_Raw.Assign| |a#54#0#0| |a#54#1#0|))))
 :qid |ASTdfy.18:14|
 :skolemid |1088|
 :pattern ( (|Seq#Index| |a#54#1#0| i@@2) (|#AST.Expr_Raw.Assign| |a#54#0#0| |a#54#1#0|))
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
 :skolemid |1094|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.If| |a#58#0#0| |a#58#1#0| |a#58#2#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((|a#68#0#0| T@U) (|a#68#1#0| T@U) (|a#68#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Op| |a#68#0#0| |a#68#1#0| |a#68#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is DatatypeTypeType |a#68#0#0| Tclass.AST.BinOp) ($Is DatatypeTypeType |a#68#1#0| Tclass.AST.Expr__Raw)) ($Is DatatypeTypeType |a#68#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.20:10|
 :skolemid |1109|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Op| |a#68#0#0| |a#68#1#0| |a#68#2#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#VarUnchanged.MState| d) (VarUnchanged.MState.MState_q d))
 :qid |unknown.0:0|
 :skolemid |952|
 :pattern ( (|$IsA#VarUnchanged.MState| d))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert  (and (= (Ctor SeqType) 4) (= (Ctor MapType) 5)))
(assert (forall (($ly T@U) (|es#0| T@U) (|ctx#0| T@U) ) (!  (=> (or (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0|) (Lit MapType |ctx#0|)) (and ($Is SeqType |es#0| (TSeq Tclass.AST.Expr)) ($Is MapType |ctx#0| (TMap (TSeq TChar) TInt)))) (and (=> (not (|Seq#Equal| |es#0| |Seq#Empty|)) (and (|Interp.__default.InterpExpr#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0|) (LitInt 0))) (Lit MapType |ctx#0|)) (let ((|valueOrError0#2| (Interp.__default.InterpExpr ($LS $ly) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0|) (LitInt 0))) (Lit MapType |ctx#0|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2|) (let ((|ctx1#2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2|))))))
 (and (|Interp.__default.InterpExprs#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0|) (LitInt 1))) |ctx1#2|) (let ((|valueOrError1#2| (Interp.__default.InterpExprs ($LS $ly) (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0|) (LitInt 1))) |ctx1#2|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2|)))))))))))) (= (Interp.__default.InterpExprs ($LS $ly) (Lit SeqType |es#0|) (Lit MapType |ctx#0|)) (ite (|Seq#Equal| |es#0| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box MapType (Lit MapType |ctx#0|)))))) (let ((|valueOrError0#2@@0| (Interp.__default.InterpExpr ($LS $ly) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0|) (LitInt 0))) (Lit MapType |ctx#0|))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2@@0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2@@0|) (let ((|ctx1#2@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2@@0|))))))
(let ((|v#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2@@0|)))))))
(let ((|valueOrError1#2@@0| (Interp.__default.InterpExprs ($LS $ly) (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0|) (LitInt 1))) |ctx1#2@@0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2@@0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2@@0|) (let ((|ctx2#2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2@@0|))))))
(let ((|vs#2| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#2@@0|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |v#2|))) |vs#2|)) ($Box MapType |ctx2#2|))))))))))))))))
 :qid |Interpdfy.69:12|
 :weight 3
 :skolemid |1223|
 :pattern ( (Interp.__default.InterpExprs ($LS $ly) (Lit SeqType |es#0|) (Lit MapType |ctx#0|)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (Utils.Result.Success_q a@@1) (Utils.Result.Success_q b@@1)) (= (|Utils.Result#Equal| a@@1 b@@1) (= (Utils.Result.value a@@1) (Utils.Result.value b@@1))))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( (|Utils.Result#Equal| a@@1 b@@1) (Utils.Result.Success_q a@@1))
 :pattern ( (|Utils.Result#Equal| a@@1 b@@1) (Utils.Result.Success_q b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (Utils.Option.Some_q a@@2) (Utils.Option.Some_q b@@2)) (= (|Utils.Option#Equal| a@@2 b@@2) (= (Utils.Option.value a@@2) (Utils.Option.value b@@2))))
 :qid |unknown.0:0|
 :skolemid |1025|
 :pattern ( (|Utils.Option#Equal| a@@2 b@@2) (Utils.Option.Some_q a@@2))
 :pattern ( (|Utils.Option#Equal| a@@2 b@@2) (Utils.Option.Some_q b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (AST.Expr__Raw.Literal_q a@@3) (AST.Expr__Raw.Literal_q b@@3)) (= (|AST.Expr__Raw#Equal| a@@3 b@@3) (= (AST.Expr__Raw.n a@@3) (AST.Expr__Raw.n b@@3))))
 :qid |unknown.0:0|
 :skolemid |1134|
 :pattern ( (|AST.Expr__Raw#Equal| a@@3 b@@3) (AST.Expr__Raw.Literal_q a@@3))
 :pattern ( (|AST.Expr__Raw#Equal| a@@3 b@@3) (AST.Expr__Raw.Literal_q b@@3))
)))
(assert (forall ((|a#27#0#0| T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| |a#27#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#27#0#0| i@@3))) (DtRank (|#AST.Expr_Raw.Var| |a#27#0#0|))))
 :qid |ASTdfy.15:11|
 :skolemid |1049|
 :pattern ( (|Seq#Index| |a#27#0#0| i@@3) (|#AST.Expr_Raw.Var| |a#27#0#0|))
)))
(assert (forall ((|a#81#0#0| T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| |a#81#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#81#0#0| i@@4))) (DtRank (|#AST.Expr_Raw.Seq| |a#81#0#0|))))
 :qid |ASTdfy.21:11|
 :skolemid |1128|
 :pattern ( (|Seq#Index| |a#81#0#0| i@@4) (|#AST.Expr_Raw.Seq| |a#81#0#0|))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#7| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Seq#Contains| |l#1| |$y#0|)))
 :qid |unknown.0:0|
 :skolemid |1231|
 :pattern ( (MapType0Select BoxType boolType (|lambda#7| |l#0| |l#1|) |$y#0|))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Bind| |a#34#0#0| |a#34#1#0| |a#34#2#0|)) |##AST.Expr_Raw.Bind|)
 :qid |ASTdfy.17:12|
 :skolemid |1059|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#34#0#0| |a#34#1#0| |a#34#2#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) ) (! (= (AST.Expr__Raw.bvars (|#AST.Expr_Raw.Bind| |a#38#0#0| |a#38#1#0| |a#38#2#0|)) |a#38#0#0|)
 :qid |ASTdfy.17:12|
 :skolemid |1068|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#38#0#0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) ) (! (= (AST.Expr__Raw.bvals (|#AST.Expr_Raw.Bind| |a#41#0#0| |a#41#1#0| |a#41#2#0|)) |a#41#1#0|)
 :qid |ASTdfy.17:12|
 :skolemid |1071|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#41#0#0| |a#41#1#0| |a#41#2#0|))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) (|a#44#2#0| T@U) ) (! (= (AST.Expr__Raw.body (|#AST.Expr_Raw.Bind| |a#44#0#0| |a#44#1#0| |a#44#2#0|)) |a#44#2#0|)
 :qid |ASTdfy.17:12|
 :skolemid |1074|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#44#0#0| |a#44#1#0| |a#44#2#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) (|a#56#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.If| |a#56#0#0| |a#56#1#0| |a#56#2#0|)) |##AST.Expr_Raw.If|)
 :qid |ASTdfy.19:10|
 :skolemid |1090|
 :pattern ( (|#AST.Expr_Raw.If| |a#56#0#0| |a#56#1#0| |a#56#2#0|))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) (|a#60#2#0| T@U) ) (! (= (AST.Expr__Raw.cond (|#AST.Expr_Raw.If| |a#60#0#0| |a#60#1#0| |a#60#2#0|)) |a#60#0#0|)
 :qid |ASTdfy.19:10|
 :skolemid |1099|
 :pattern ( (|#AST.Expr_Raw.If| |a#60#0#0| |a#60#1#0| |a#60#2#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) (|a#62#2#0| T@U) ) (! (= (AST.Expr__Raw.thn (|#AST.Expr_Raw.If| |a#62#0#0| |a#62#1#0| |a#62#2#0|)) |a#62#1#0|)
 :qid |ASTdfy.19:10|
 :skolemid |1101|
 :pattern ( (|#AST.Expr_Raw.If| |a#62#0#0| |a#62#1#0| |a#62#2#0|))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) (|a#64#2#0| T@U) ) (! (= (AST.Expr__Raw.els (|#AST.Expr_Raw.If| |a#64#0#0| |a#64#1#0| |a#64#2#0|)) |a#64#2#0|)
 :qid |ASTdfy.19:10|
 :skolemid |1103|
 :pattern ( (|#AST.Expr_Raw.If| |a#64#0#0| |a#64#1#0| |a#64#2#0|))
)))
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) (|a#66#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Op| |a#66#0#0| |a#66#1#0| |a#66#2#0|)) |##AST.Expr_Raw.Op|)
 :qid |ASTdfy.20:10|
 :skolemid |1105|
 :pattern ( (|#AST.Expr_Raw.Op| |a#66#0#0| |a#66#1#0| |a#66#2#0|))
)))
(assert (forall ((|a#70#0#0| T@U) (|a#70#1#0| T@U) (|a#70#2#0| T@U) ) (! (= (AST.Expr__Raw.op (|#AST.Expr_Raw.Op| |a#70#0#0| |a#70#1#0| |a#70#2#0|)) |a#70#0#0|)
 :qid |ASTdfy.20:10|
 :skolemid |1114|
 :pattern ( (|#AST.Expr_Raw.Op| |a#70#0#0| |a#70#1#0| |a#70#2#0|))
)))
(assert (forall ((|a#72#0#0| T@U) (|a#72#1#0| T@U) (|a#72#2#0| T@U) ) (! (= (AST.Expr__Raw.oe1 (|#AST.Expr_Raw.Op| |a#72#0#0| |a#72#1#0| |a#72#2#0|)) |a#72#1#0|)
 :qid |ASTdfy.20:10|
 :skolemid |1116|
 :pattern ( (|#AST.Expr_Raw.Op| |a#72#0#0| |a#72#1#0| |a#72#2#0|))
)))
(assert (forall ((|a#74#0#0| T@U) (|a#74#1#0| T@U) (|a#74#2#0| T@U) ) (! (= (AST.Expr__Raw.oe2 (|#AST.Expr_Raw.Op| |a#74#0#0| |a#74#1#0| |a#74#2#0|)) |a#74#2#0|)
 :qid |ASTdfy.20:10|
 :skolemid |1118|
 :pattern ( (|#AST.Expr_Raw.Op| |a#74#0#0| |a#74#1#0| |a#74#2#0|))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@4 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@4) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@4) (|Set#IsMember| b@@4 y@@1))
)))
(assert (forall ((|e#0| T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed__Single#canCall| |e#0|) ($Is DatatypeTypeType |e#0| Tclass.AST.Expr__Raw)) (= (AST.Expr__Raw.WellFormed__Single |e#0|) (ite (AST.Expr__Raw.Var_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q |e#0|) (let ((|bvals#0| (AST.Expr__Raw.bvals |e#0|)))
(let ((|bvars#0| (AST.Expr__Raw.bvars |e#0|)))
(= (|Seq#Length| |bvars#0|) (|Seq#Length| |bvals#0|)))) (ite (AST.Expr__Raw.Assign_q |e#0|) (let ((|avals#0| (AST.Expr__Raw.avals |e#0|)))
(let ((|avars#0| (AST.Expr__Raw.avars |e#0|)))
(= (|Seq#Length| |avars#0|) (|Seq#Length| |avals#0|)))) (ite (AST.Expr__Raw.If_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Op_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
 :qid |ASTdfy.71:46|
 :skolemid |1194|
 :pattern ( (AST.Expr__Raw.WellFormed__Single |e#0|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@0))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0| T@U) (|es#0@@0| T@U) (|st'#0| T@U) (|vs#0| T@U) ) (!  (=> (or (|VarUnchanged.__default.Pes__Succ#canCall| (Lit DatatypeTypeType |st#0|) (Lit SeqType |es#0@@0|) (Lit DatatypeTypeType |st'#0|) (Lit SeqType |vs#0|)) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0| Tclass.VarUnchanged.S) ($Is SeqType |es#0@@0| (TSeq Tclass.AST.Expr))) ($Is DatatypeTypeType |st'#0| Tclass.VarUnchanged.S)) ($Is SeqType |vs#0| (TSeq TInt))))) (and (and (and (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st#0|)) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@0|) (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st#0|))))) (let ((|res#2| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@0|) (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st#0|)))))))
 (and (|VarUnchanged.__default.PreEs#canCall| (Lit DatatypeTypeType |st#0|) (Lit SeqType |es#0@@0|)) (=> (U_2_bool (Lit boolType (bool_2_U (VarUnchanged.__default.PreEs (Lit DatatypeTypeType |st#0|) (Lit SeqType |es#0@@0|))))) (and (|VarUnchanged.__default.ResultSeqSameX#canCall| (Lit DatatypeTypeType |st#0|) |res#2|) (=> (VarUnchanged.__default.ResultSeqSameX (Lit DatatypeTypeType |st#0|) |res#2|) (and (and (|$IsA#Utils.Result| |res#2|) (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st'#0|))) (=> (|Utils.Result#Equal| |res#2| (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType |vs#0|)) ($Box MapType (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st'#0|))))))))) (and (and (|$IsA#Utils.Option| (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType |st'#0|)))) (|$IsA#Utils.Option| (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0|))))) (and (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st'#0|)) (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st#0|)))))))))))) (= (VarUnchanged.__default.Pes__Succ (Lit DatatypeTypeType |st#0|) (Lit SeqType |es#0@@0|) (Lit DatatypeTypeType |st'#0|) (Lit SeqType |vs#0|)) (let ((|res#2@@0| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@0|) (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st#0|)))))))
 (and (and (and (VarUnchanged.__default.PreEs (Lit DatatypeTypeType |st#0|) (Lit SeqType |es#0@@0|)) (VarUnchanged.__default.ResultSeqSameX (Lit DatatypeTypeType |st#0|) |res#2@@0|)) (|Utils.Result#Equal| |res#2@@0| (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType |vs#0|)) ($Box MapType (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st'#0|)))))))))) (|Utils.Option#Equal| (VarUnchanged.MState.x (Lit DatatypeTypeType |st'#0|)) (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0|))))))))
 :qid |Inductiondfy.40:28|
 :weight 3
 :skolemid |754|
 :pattern ( (VarUnchanged.__default.Pes__Succ (Lit DatatypeTypeType |st#0|) (Lit SeqType |es#0@@0|) (Lit DatatypeTypeType |st'#0|) (Lit SeqType |vs#0|)))
))))
(assert (forall (($Heap T@U) (Utils.Result$T T@U) (Utils.Result.PropagateFailure$U T@U) (this T@U) ) (!  (=> (and (or (|Utils.Result.PropagateFailure#canCall| Utils.Result$T Utils.Result.PropagateFailure$U this) (and ($IsAlloc DatatypeTypeType this (Tclass.Utils.Result Utils.Result$T) $Heap) (Utils.Result.Failure_q this))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (Utils.Result.PropagateFailure Utils.Result$T Utils.Result.PropagateFailure$U this) (Tclass.Utils.Result Utils.Result.PropagateFailure$U) $Heap))
 :qid |Utilsdfy.29:14|
 :skolemid |1000|
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
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#Utils.Result.Failure|) |##Utils.Result.Failure|))
(assert (= (DatatypeCtorId |#Utils.Option.None|) |##Utils.Option.None|))
(assert (= (DatatypeCtorId |#AST.BinOp.Add|) |##AST.BinOp.Add|))
(assert (= (DatatypeCtorId |#AST.BinOp.Sub|) |##AST.BinOp.Sub|))
(assert (= (DatatypeCtorId |#AST.BinOp.Mul|) |##AST.BinOp.Mul|))
(assert (forall ((s@@0 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@0 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@5) b@@5) (|Set#Union| a@@5 b@@5))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@5) b@@5))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) (o@@0 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@6) o@@0)  (and (|Set#IsMember| a@@6 o@@0) (not (|Set#IsMember| b@@6 o@@0))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@6) o@@0))
)))
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
 :skolemid |999|
 :pattern ( (Utils.Result.PropagateFailure Utils.Result$T@@0 Utils.Result.PropagateFailure$U@@0 this@@0))
)))
(assert (forall ((|st#0@@0| T@U) ($h T@U) ) (! (= ($IsAlloc DatatypeTypeType |st#0@@0| Tclass.VarUnchanged.S $h) ($IsAlloc DatatypeTypeType |st#0@@0| Tclass.VarUnchanged.MState $h))
 :qid |unknown.0:0|
 :skolemid |957|
 :pattern ( ($IsAlloc DatatypeTypeType |st#0@@0| Tclass.VarUnchanged.S $h))
)))
(assert (forall ((|e#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc DatatypeTypeType |e#0@@0| Tclass.AST.Expr $h@@0) ($IsAlloc DatatypeTypeType |e#0@@0| Tclass.AST.Expr__Raw $h@@0))
 :qid |unknown.0:0|
 :skolemid |1205|
 :pattern ( ($IsAlloc DatatypeTypeType |e#0@@0| Tclass.AST.Expr $h@@0))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@1| T@U) (|es#0@@1| T@U) ) (!  (=> (or (|VarUnchanged.__default.Pes#canCall| |st#0@@1| (Lit SeqType |es#0@@1|)) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@1| Tclass.VarUnchanged.S) ($Is SeqType |es#0@@1| (TSeq Tclass.AST.Expr))))) (and (and (and (VarUnchanged.MState.MState_q |st#0@@1|) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@1|) (VarUnchanged.MState.ctx |st#0@@1|))) (let ((|res#1| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@1|) (VarUnchanged.MState.ctx |st#0@@1|))))
 (and (|VarUnchanged.__default.PreEs#canCall| |st#0@@1| (Lit SeqType |es#0@@1|)) (=> (VarUnchanged.__default.PreEs |st#0@@1| (Lit SeqType |es#0@@1|)) (|VarUnchanged.__default.ResultSeqSameX#canCall| |st#0@@1| |res#1|))))) (= (VarUnchanged.__default.Pes |st#0@@1| (Lit SeqType |es#0@@1|)) (let ((|res#1@@0| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@1|) (VarUnchanged.MState.ctx |st#0@@1|))))
 (=> (VarUnchanged.__default.PreEs |st#0@@1| (Lit SeqType |es#0@@1|)) (VarUnchanged.__default.ResultSeqSameX |st#0@@1| |res#1@@0|))))))
 :qid |Inductiondfy.39:23|
 :weight 3
 :skolemid |745|
 :pattern ( (VarUnchanged.__default.Pes |st#0@@1| (Lit SeqType |es#0@@1|)))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass.VarUnchanged.MState) (VarUnchanged.MState.MState_q d@@1))
 :qid |unknown.0:0|
 :skolemid |953|
 :pattern ( (VarUnchanged.MState.MState_q d@@1) ($Is DatatypeTypeType d@@1 Tclass.VarUnchanged.MState))
)))
(assert (forall ((Utils.Result$T@@1 T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#Utils.Result.Failure| (Tclass.Utils.Result Utils.Result$T@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( ($IsAlloc DatatypeTypeType |#Utils.Result.Failure| (Tclass.Utils.Result Utils.Result$T@@1) $h@@1))
)))
(assert (forall ((Utils.Option$T T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#Utils.Option.None| (Tclass.Utils.Option Utils.Option$T) $h@@2))
 :qid |unknown.0:0|
 :skolemid |1022|
 :pattern ( ($IsAlloc DatatypeTypeType |#Utils.Option.None| (Tclass.Utils.Option Utils.Option$T) $h@@2))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#48#0#0| |a#48#1#0|) Tclass.AST.Expr__Raw)  (and ($Is SeqType |a#48#0#0| (TSeq (TSeq TChar))) ($Is SeqType |a#48#1#0| (TSeq Tclass.AST.Expr__Raw))))
 :qid |ASTdfy.18:14|
 :skolemid |1080|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#48#0#0| |a#48#1#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#36#0#0| |a#36#1#0| |a#36#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is SeqType |a#36#0#0| (TSeq (TSeq TChar))) ($Is SeqType |a#36#1#0| (TSeq Tclass.AST.Expr__Raw))) ($Is DatatypeTypeType |a#36#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.17:12|
 :skolemid |1063|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#36#0#0| |a#36#1#0| |a#36#2#0|) Tclass.AST.Expr__Raw))
)))
(assert ($Is DatatypeTypeType |#AST.BinOp.Add| Tclass.AST.BinOp))
(assert ($Is DatatypeTypeType |#AST.BinOp.Sub| Tclass.AST.BinOp))
(assert ($Is DatatypeTypeType |#AST.BinOp.Mul| Tclass.AST.BinOp))
(assert (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed#canCall| (Lit DatatypeTypeType this@@1)) (and ($IsGoodHeap $Heap@@0) (and ($Is DatatypeTypeType this@@1 Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType this@@1 Tclass.AST.Expr__Raw $Heap@@0)))) (and (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType this@@1) |AST.Expr__Raw.WellFormed__Single#Handle|) (= (AST.Expr__Raw.WellFormed (Lit DatatypeTypeType this@@1)) (AST.Expr__Raw.All ($LS $LZ) (Lit DatatypeTypeType this@@1) |AST.Expr__Raw.WellFormed__Single#Handle|))))
 :qid |ASTdfy.83:21|
 :weight 3
 :skolemid |1203|
 :pattern ( (AST.Expr__Raw.WellFormed (Lit DatatypeTypeType this@@1)) ($IsGoodHeap $Heap@@0))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (and (AST.Expr__Raw.Bind_q a@@7) (AST.Expr__Raw.Bind_q b@@7)) (= (|AST.Expr__Raw#Equal| a@@7 b@@7)  (and (and (|Seq#Equal| (AST.Expr__Raw.bvars a@@7) (AST.Expr__Raw.bvars b@@7)) (|Seq#Equal| (AST.Expr__Raw.bvals a@@7) (AST.Expr__Raw.bvals b@@7))) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body a@@7) (AST.Expr__Raw.body b@@7)))))
 :qid |unknown.0:0|
 :skolemid |1135|
 :pattern ( (|AST.Expr__Raw#Equal| a@@7 b@@7) (AST.Expr__Raw.Bind_q a@@7))
 :pattern ( (|AST.Expr__Raw#Equal| a@@7 b@@7) (AST.Expr__Raw.Bind_q b@@7))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (and (AST.Expr__Raw.If_q a@@8) (AST.Expr__Raw.If_q b@@8)) (= (|AST.Expr__Raw#Equal| a@@8 b@@8)  (and (and (|AST.Expr__Raw#Equal| (AST.Expr__Raw.cond a@@8) (AST.Expr__Raw.cond b@@8)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.thn a@@8) (AST.Expr__Raw.thn b@@8))) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.els a@@8) (AST.Expr__Raw.els b@@8)))))
 :qid |unknown.0:0|
 :skolemid |1137|
 :pattern ( (|AST.Expr__Raw#Equal| a@@8 b@@8) (AST.Expr__Raw.If_q a@@8))
 :pattern ( (|AST.Expr__Raw#Equal| a@@8 b@@8) (AST.Expr__Raw.If_q b@@8))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (!  (=> (and (AST.Expr__Raw.Op_q a@@9) (AST.Expr__Raw.Op_q b@@9)) (= (|AST.Expr__Raw#Equal| a@@9 b@@9)  (and (and (|AST.BinOp#Equal| (AST.Expr__Raw.op a@@9) (AST.Expr__Raw.op b@@9)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe1 a@@9) (AST.Expr__Raw.oe1 b@@9))) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe2 a@@9) (AST.Expr__Raw.oe2 b@@9)))))
 :qid |unknown.0:0|
 :skolemid |1138|
 :pattern ( (|AST.Expr__Raw#Equal| a@@9 b@@9) (AST.Expr__Raw.Op_q a@@9))
 :pattern ( (|AST.Expr__Raw#Equal| a@@9 b@@9) (AST.Expr__Raw.Op_q b@@9))
)))
(assert (forall ((Utils.Result$T@@2 T@U) ) (! ($Is DatatypeTypeType |#Utils.Result.Failure| (Tclass.Utils.Result Utils.Result$T@@2))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( ($Is DatatypeTypeType |#Utils.Result.Failure| (Tclass.Utils.Result Utils.Result$T@@2)))
)))
(assert (forall ((Utils.Option$T@@0 T@U) ) (! ($Is DatatypeTypeType |#Utils.Option.None| (Tclass.Utils.Option Utils.Option$T@@0))
 :qid |unknown.0:0|
 :skolemid |1021|
 :pattern ( ($Is DatatypeTypeType |#Utils.Option.None| (Tclass.Utils.Option Utils.Option$T@@0)))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|Utils.Result#Equal| a@@10 b@@10) (= a@@10 b@@10))
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( (|Utils.Result#Equal| a@@10 b@@10))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) ) (! (= (|Utils.Option#Equal| a@@11 b@@11) (= a@@11 b@@11))
 :qid |unknown.0:0|
 :skolemid |1027|
 :pattern ( (|Utils.Option#Equal| a@@11 b@@11))
)))
(assert (forall ((a@@12 T@U) (b@@12 T@U) ) (! (= (|AST.BinOp#Equal| a@@12 b@@12) (= a@@12 b@@12))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( (|AST.BinOp#Equal| a@@12 b@@12))
)))
(assert (forall ((a@@13 T@U) (b@@13 T@U) ) (! (= (|AST.Expr__Raw#Equal| a@@13 b@@13) (= a@@13 b@@13))
 :qid |unknown.0:0|
 :skolemid |1140|
 :pattern ( (|AST.Expr__Raw#Equal| a@@13 b@@13))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@2 n@@1) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@2 n@@1))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@2| T@U) (|es#0@@2| T@U) (|st'#0@@0| T@U) (|vs#0@@0| T@U) ) (!  (=> (or (|VarUnchanged.__default.Pes__Succ#canCall| |st#0@@2| |es#0@@2| |st'#0@@0| |vs#0@@0|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@2| Tclass.VarUnchanged.S) ($Is SeqType |es#0@@2| (TSeq Tclass.AST.Expr))) ($Is DatatypeTypeType |st'#0@@0| Tclass.VarUnchanged.S)) ($Is SeqType |vs#0@@0| (TSeq TInt))))) (and (and (and (VarUnchanged.MState.MState_q |st#0@@2|) (|Interp.__default.InterpExprs#canCall| |es#0@@2| (VarUnchanged.MState.ctx |st#0@@2|))) (let ((|res#0| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@2| (VarUnchanged.MState.ctx |st#0@@2|))))
 (and (|VarUnchanged.__default.PreEs#canCall| |st#0@@2| |es#0@@2|) (=> (VarUnchanged.__default.PreEs |st#0@@2| |es#0@@2|) (and (|VarUnchanged.__default.ResultSeqSameX#canCall| |st#0@@2| |res#0|) (=> (VarUnchanged.__default.ResultSeqSameX |st#0@@2| |res#0|) (and (and (|$IsA#Utils.Result| |res#0|) (VarUnchanged.MState.MState_q |st'#0@@0|)) (=> (|Utils.Result#Equal| |res#0| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType |vs#0@@0|) ($Box MapType (VarUnchanged.MState.ctx |st'#0@@0|)))))) (and (and (|$IsA#Utils.Option| (VarUnchanged.MState.x |st'#0@@0|)) (|$IsA#Utils.Option| (VarUnchanged.MState.x |st#0@@2|))) (and (VarUnchanged.MState.MState_q |st'#0@@0|) (VarUnchanged.MState.MState_q |st#0@@2|))))))))))) (= (VarUnchanged.__default.Pes__Succ |st#0@@2| |es#0@@2| |st'#0@@0| |vs#0@@0|) (let ((|res#0@@0| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@2| (VarUnchanged.MState.ctx |st#0@@2|))))
 (and (and (and (VarUnchanged.__default.PreEs |st#0@@2| |es#0@@2|) (VarUnchanged.__default.ResultSeqSameX |st#0@@2| |res#0@@0|)) (|Utils.Result#Equal| |res#0@@0| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType |vs#0@@0|) ($Box MapType (VarUnchanged.MState.ctx |st'#0@@0|))))))) (|Utils.Option#Equal| (VarUnchanged.MState.x |st'#0@@0|) (VarUnchanged.MState.x |st#0@@2|)))))))
 :qid |Inductiondfy.40:28|
 :skolemid |752|
 :pattern ( (VarUnchanged.__default.Pes__Succ |st#0@@2| |es#0@@2| |st'#0@@0| |vs#0@@0|))
))))
(assert (forall ((|op#0| T@U) (|x#0| Int) (|y#0| Int) ) (!  (=> (or (|Interp.__default.InterpBinOp#canCall| |op#0| |x#0| |y#0|) ($Is DatatypeTypeType |op#0| Tclass.AST.BinOp)) (= (Interp.__default.InterpBinOp |op#0| |x#0| |y#0|) (ite (AST.BinOp.Add_q |op#0|) (+ |x#0| |y#0|) (ite (AST.BinOp.Sub_q |op#0|) (- |x#0| |y#0|) (Mul |x#0| |y#0|)))))
 :qid |Interpdfy.16:24|
 :skolemid |1208|
 :pattern ( (Interp.__default.InterpBinOp |op#0| |x#0| |y#0|))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@3| T@U) (|vars#0| T@U) (|argvs#0| T@U) ) (!  (=> (or (|VarUnchanged.__default.UpdateState__Pre#canCall| |st#0@@3| |vars#0| |argvs#0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@3| Tclass.VarUnchanged.S) ($Is SeqType |vars#0| (TSeq (TSeq TChar)))) ($Is SeqType |argvs#0| (TSeq TInt))))) (= (VarUnchanged.__default.UpdateState__Pre |st#0@@3| |vars#0| |argvs#0|)  (and true (= (|Seq#Length| |vars#0|) (|Seq#Length| |argvs#0|)))))
 :qid |Inductiondfy.51:35|
 :skolemid |776|
 :pattern ( (VarUnchanged.__default.UpdateState__Pre |st#0@@3| |vars#0| |argvs#0|))
))))
(assert (forall (($ly@@0 T@U) (|e#0@@1| T@U) (|ctx#0@@0| T@U) ) (!  (=> (or (|Interp.__default.InterpExpr#canCall| |e#0@@1| |ctx#0@@0|) (and ($Is DatatypeTypeType |e#0@@1| Tclass.AST.Expr) ($Is MapType |ctx#0@@0| (TMap (TSeq TChar) TInt)))) (and (=> (not (AST.Expr__Raw.Var_q |e#0@@1|)) (=> (not (AST.Expr__Raw.Literal_q |e#0@@1|)) (and (=> (AST.Expr__Raw.Bind_q |e#0@@1|) (let ((|body#1| (AST.Expr__Raw.body |e#0@@1|)))
(let ((|bvals#1| (AST.Expr__Raw.bvals |e#0@@1|)))
(let ((|bvars#1| (AST.Expr__Raw.bvars |e#0@@1|)))
 (and (|Interp.__default.InterpExprs#canCall| |bvals#1| |ctx#0@@0|) (let ((|valueOrError0#1| (Interp.__default.InterpExprs $ly@@0 |bvals#1| |ctx#0@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|) (let ((|ctx1#4| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|))))))
(let ((|vs#3| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|))))))
 (and (|Interp.__default.VarsAndValuesToContext#canCall| |bvars#1| |vs#3|) (let ((|bindings#2| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#1| |vs#3|)))
(let ((|ctx2#2@@0| (|Map#Merge| |ctx1#4| |bindings#2|)))
 (and (|Interp.__default.InterpExpr#canCall| |body#1| |ctx2#2@@0|) (let ((|valueOrError1#1| (Interp.__default.InterpExpr $ly@@0 |body#1| |ctx2#2@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|))))))))))))))))))) (=> (not (AST.Expr__Raw.Bind_q |e#0@@1|)) (and (=> (AST.Expr__Raw.Assign_q |e#0@@1|) (let ((|avals#1| (AST.Expr__Raw.avals |e#0@@1|)))
(let ((|avars#1| (AST.Expr__Raw.avars |e#0@@1|)))
 (and (|Interp.__default.InterpExprs#canCall| |avals#1| |ctx#0@@0|) (let ((|valueOrError2#1| (Interp.__default.InterpExprs $ly@@0 |avals#1| |ctx#0@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|) (let ((|vs#4| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|))))))
(|Interp.__default.VarsAndValuesToContext#canCall| |avars#1| |vs#4|)))))))))) (=> (not (AST.Expr__Raw.Assign_q |e#0@@1|)) (and (=> (AST.Expr__Raw.If_q |e#0@@1|) (let ((|els#1| (AST.Expr__Raw.els |e#0@@1|)))
(let ((|thn#1| (AST.Expr__Raw.thn |e#0@@1|)))
(let ((|cond#1| (AST.Expr__Raw.cond |e#0@@1|)))
 (and (|Interp.__default.InterpExpr#canCall| |cond#1| |ctx#0@@0|) (let ((|valueOrError3#1| (Interp.__default.InterpExpr $ly@@0 |cond#1| |ctx#0@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|) (let ((|ctx_cond#1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|))))))
(let ((|condv#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|)))))))
 (and (=> (or (not (= |condv#1| 0)) (not true)) (|Interp.__default.InterpExpr#canCall| |thn#1| |ctx_cond#1|)) (=> (= |condv#1| 0) (|Interp.__default.InterpExpr#canCall| |els#1| |ctx_cond#1|)))))))))))))) (=> (not (AST.Expr__Raw.If_q |e#0@@1|)) (and (=> (AST.Expr__Raw.Op_q |e#0@@1|) (let ((|e2#1| (AST.Expr__Raw.oe2 |e#0@@1|)))
(let ((|e1#1| (AST.Expr__Raw.oe1 |e#0@@1|)))
(let ((|op#1| (AST.Expr__Raw.op |e#0@@1|)))
 (and (|Interp.__default.InterpExpr#canCall| |e1#1| |ctx#0@@0|) (let ((|valueOrError4#1| (Interp.__default.InterpExpr $ly@@0 |e1#1| |ctx#0@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|) (let ((|ctx1#6| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|))))))
(let ((|v1#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|)))))))
 (and (|Interp.__default.InterpExpr#canCall| |e2#1| |ctx1#6|) (let ((|valueOrError5#1| (Interp.__default.InterpExpr $ly@@0 |e2#1| |ctx1#6|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|) (let ((|v2#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|)))))))
(|Interp.__default.InterpBinOp#canCall| |op#1| |v1#1| |v2#1|)))))))))))))))))) (=> (not (AST.Expr__Raw.Op_q |e#0@@1|)) (let ((|es#1| (AST.Expr__Raw.es |e#0@@1|)))
 (and (|Interp.__default.InterpExprs#canCall| |es#1| |ctx#0@@0|) (let ((|valueOrError6#1| (Interp.__default.InterpExprs $ly@@0 |es#1| |ctx#0@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#1|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#1|)))))))))))))))) (= (Interp.__default.InterpExpr ($LS $ly@@0) |e#0@@1| |ctx#0@@0|) (ite (AST.Expr__Raw.Var_q |e#0@@1|) (let ((|name#0| (AST.Expr__Raw.name |e#0@@1|)))
(ite (|Set#IsMember| (|Map#Domain| |ctx#0@@0|) ($Box SeqType |name#0|)) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@0|) ($Box SeqType |name#0|)) ($Box MapType |ctx#0@@0|)))) |#Utils.Result.Failure|)) (ite (AST.Expr__Raw.Literal_q |e#0@@1|) (let ((|n#0| (AST.Expr__Raw.n |e#0@@1|)))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |n#0|)) ($Box MapType |ctx#0@@0|))))) (ite (AST.Expr__Raw.Bind_q |e#0@@1|) (let ((|body#0| (AST.Expr__Raw.body |e#0@@1|)))
(let ((|bvals#0@@0| (AST.Expr__Raw.bvals |e#0@@1|)))
(let ((|bvars#0@@0| (AST.Expr__Raw.bvars |e#0@@1|)))
(let ((|valueOrError0#0| (Interp.__default.InterpExprs $ly@@0 |bvals#0@@0| |ctx#0@@0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0|) (let ((|ctx1#0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0|))))))
(let ((|vs#0@@1| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0|))))))
(let ((|bindings#0| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#0@@0| |vs#0@@1|)))
(let ((|ctx2#0| (|Map#Merge| |ctx1#0| |bindings#0|)))
(let ((|valueOrError1#0| (Interp.__default.InterpExpr $ly@@0 |body#0| |ctx2#0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#0|) (let ((|ctx3#0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#0|))))))
(let ((|bodyv#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#0|)))))))
(let ((|ctx4#0| (|Map#Merge| |ctx1#0| (|Map#Subtract| |ctx3#0| (|Set#FromBoogieMap| (|lambda#7| (TSeq TChar) |bvars#0@@0|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |bodyv#0|)) ($Box MapType |ctx4#0|)))))))))))))))))) (ite (AST.Expr__Raw.Assign_q |e#0@@1|) (let ((|avals#0@@0| (AST.Expr__Raw.avals |e#0@@1|)))
(let ((|avars#0@@0| (AST.Expr__Raw.avars |e#0@@1|)))
(let ((|valueOrError2#0| (Interp.__default.InterpExprs $ly@@0 |avals#0@@0| |ctx#0@@0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#0|) (let ((|ctx1#1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#0|))))))
(let ((|vs#1| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#0|))))))
(let ((|bindings#1| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |avars#0@@0| |vs#1|)))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType (|Map#Merge| |ctx1#1| |bindings#1|)))))))))))) (ite (AST.Expr__Raw.If_q |e#0@@1|) (let ((|els#0| (AST.Expr__Raw.els |e#0@@1|)))
(let ((|thn#0| (AST.Expr__Raw.thn |e#0@@1|)))
(let ((|cond#0| (AST.Expr__Raw.cond |e#0@@1|)))
(let ((|valueOrError3#0| (Interp.__default.InterpExpr $ly@@0 |cond#0| |ctx#0@@0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#0|) (let ((|ctx_cond#0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#0|))))))
(let ((|condv#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#0|)))))))
(ite  (or (not (= |condv#0| 0)) (not true)) (Interp.__default.InterpExpr $ly@@0 |thn#0| |ctx_cond#0|) (Interp.__default.InterpExpr $ly@@0 |els#0| |ctx_cond#0|))))))))) (ite (AST.Expr__Raw.Op_q |e#0@@1|) (let ((|e2#0| (AST.Expr__Raw.oe2 |e#0@@1|)))
(let ((|e1#0| (AST.Expr__Raw.oe1 |e#0@@1|)))
(let ((|op#0@@0| (AST.Expr__Raw.op |e#0@@1|)))
(let ((|valueOrError4#0| (Interp.__default.InterpExpr $ly@@0 |e1#0| |ctx#0@@0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#0|) (let ((|ctx1#2@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#0|))))))
(let ((|v1#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#0|)))))))
(let ((|valueOrError5#0| (Interp.__default.InterpExpr $ly@@0 |e2#0| |ctx1#2@@1|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#0|) (let ((|ctx2#1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#0|))))))
(let ((|v2#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#0|)))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Interp.__default.InterpBinOp |op#0@@0| |v1#0| |v2#0|))) ($Box MapType |ctx2#1|))))))))))))))) (let ((|es#0@@3| (AST.Expr__Raw.es |e#0@@1|)))
(let ((|valueOrError6#0| (Interp.__default.InterpExprs $ly@@0 |es#0@@3| |ctx#0@@0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#0|) (let ((|ctx1#3| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#0|))))))
(let ((|vs#2@@0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#0|))))))
(ite (|Seq#Equal| |vs#2@@0| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType |ctx1#3|)))) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (|Seq#Index| |vs#2@@0| (- (|Seq#Length| |vs#2@@0|) 1)) ($Box MapType |ctx1#3|)))))))))))))))))))
 :qid |Interpdfy.24:12|
 :skolemid |1214|
 :pattern ( (Interp.__default.InterpExpr ($LS $ly@@0) |e#0@@1| |ctx#0@@0|))
)))
(assert (forall ((s@@3 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@3 (TSeq t@@0)) ($IsBox bx@@1 t@@0)) ($Is SeqType (|Seq#Build| s@@3 bx@@1) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@3 bx@@1) (TSeq t@@0)))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@4| T@U) (|e#0@@2| T@U) ) (!  (=> (or (|VarUnchanged.__default.P__Fail#canCall| (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |e#0@@2|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@4| Tclass.VarUnchanged.S) ($Is DatatypeTypeType |e#0@@2| Tclass.AST.Expr)))) (and (and (and (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st#0@@4|)) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@2|) (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st#0@@4|))))) (|VarUnchanged.__default.Pre#canCall| (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |e#0@@2|))) (= (VarUnchanged.__default.P__Fail (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |e#0@@2|)) (U_2_bool (let ((|res#2@@1| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@2|) (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st#0@@4|)))))))
(Lit boolType (bool_2_U  (=> (VarUnchanged.__default.Pre (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |e#0@@2|)) (Utils.Result.Failure_q |res#2@@1|)))))))))
 :qid |Inductiondfy.36:26|
 :weight 3
 :skolemid |739|
 :pattern ( (VarUnchanged.__default.P__Fail (Lit DatatypeTypeType |st#0@@4|) (Lit DatatypeTypeType |e#0@@2|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@5| T@U) (|vars#0@@0| T@U) (|vals#0| T@U) ) (!  (=> (or (|VarUnchanged.__default.BindStartScope#canCall| |st#0@@5| (Lit SeqType |vars#0@@0|) |vals#0|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@5| Tclass.VarUnchanged.S) ($Is SeqType |vars#0@@0| (TSeq (TSeq TChar)))) ($Is SeqType |vals#0| (TSeq TInt))) (VarUnchanged.__default.UpdateState__Pre |st#0@@5| (Lit SeqType |vars#0@@0|) |vals#0|)))) (and (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@0|) |vals#0|) (= (VarUnchanged.__default.BindStartScope |st#0@@5| (Lit SeqType |vars#0@@0|) |vals#0|) (let ((|ctx#1| (VarUnchanged.MState.ctx |st#0@@5|)))
(let ((|x#1| (VarUnchanged.MState.x |st#0@@5|)))
(let ((|x'#1| (ite  (and (Utils.Option.Some_q |x#1|) (|Seq#Contains| |vars#0@@0| (Utils.Option.value |x#1|))) |#Utils.Option.None| |x#1|)))
(let ((|bindings#1@@0| (Interp.__default.VarsAndValuesToContext ($LS $LZ) (Lit SeqType |vars#0@@0|) |vals#0|)))
(let ((|ctx1#1@@0| (|Map#Merge| |ctx#1| |bindings#1@@0|)))
(let ((|st'#1| (|#VarUnchanged.MState.MState| |x'#1| |ctx1#1@@0|)))
|st'#1|)))))))))
 :qid |Inductiondfy.58:33|
 :weight 3
 :skolemid |793|
 :pattern ( (VarUnchanged.__default.BindStartScope |st#0@@5| (Lit SeqType |vars#0@@0|) |vals#0|))
))))
(assert (forall ((s@@4 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@4))) (= (|Seq#Index| (|Seq#Take| s@@4 n@@2) j) (|Seq#Index| s@@4 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@4 n@@2) j))
 :pattern ( (|Seq#Index| s@@4 j) (|Seq#Take| s@@4 n@@2))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@3) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@3))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@6| T@U) (|res#0@@1| T@U) ) (!  (=> (or (|VarUnchanged.__default.ResultSeqSameX#canCall| |st#0@@6| |res#0@@1|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@6| Tclass.VarUnchanged.S) ($Is DatatypeTypeType |res#0@@1| (Tclass.Utils.Result (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt))))))) (and (=> (Utils.Result.Success_q |res#0@@1|) (and (_System.Tuple2.___hMake2_q ($Unbox DatatypeTypeType (Utils.Result.value |res#0@@1|))) (let ((|ctx#1@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value |res#0@@1|))))))
 (and (VarUnchanged.MState.MState_q |st#0@@6|) (=> (Utils.Option.Some_q (VarUnchanged.MState.x |st#0@@6|)) (and (VarUnchanged.MState.MState_q |st#0@@6|) (=> (|Set#IsMember| (|Map#Domain| |ctx#1@@0|) (Utils.Option.value (VarUnchanged.MState.x |st#0@@6|))) (and (and (VarUnchanged.MState.MState_q |st#0@@6|) (VarUnchanged.MState.MState_q |st#0@@6|)) (VarUnchanged.MState.MState_q |st#0@@6|))))))))) (= (VarUnchanged.__default.ResultSeqSameX |st#0@@6| |res#0@@1|) (ite (Utils.Result.Success_q |res#0@@1|) (let ((|ctx#0@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.value |res#0@@1|))))))
 (=> (Utils.Option.Some_q (VarUnchanged.MState.x |st#0@@6|)) (and (|Set#IsMember| (|Map#Domain| |ctx#0@@1|) (Utils.Option.value (VarUnchanged.MState.x |st#0@@6|))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (VarUnchanged.MState.ctx |st#0@@6|)) (Utils.Option.value (VarUnchanged.MState.x |st#0@@6|))))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@1|) (Utils.Option.value (VarUnchanged.MState.x |st#0@@6|))))))))) true))))
 :qid |VarUnchangeddfy.52:34|
 :skolemid |699|
 :pattern ( (VarUnchanged.__default.ResultSeqSameX |st#0@@6| |res#0@@1|))
))))
(assert (forall ((s@@5 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Drop| s@@5 n@@3)) (- (|Seq#Length| s@@5) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@5 n@@3)))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (|$IsA#AST.Expr__Raw| d@@2) (or (or (or (or (or (or (AST.Expr__Raw.Var_q d@@2) (AST.Expr__Raw.Literal_q d@@2)) (AST.Expr__Raw.Bind_q d@@2)) (AST.Expr__Raw.Assign_q d@@2)) (AST.Expr__Raw.If_q d@@2)) (AST.Expr__Raw.Op_q d@@2)) (AST.Expr__Raw.Seq_q d@@2)))
 :qid |unknown.0:0|
 :skolemid |1131|
 :pattern ( (|$IsA#AST.Expr__Raw| d@@2))
)))
(assert (forall ((Utils.Result$T@@3 T@U) (this@@2 T@U) ) (!  (=> (or (|Utils.Result.IsFailure#canCall| Utils.Result$T@@3 this@@2) ($Is DatatypeTypeType this@@2 (Tclass.Utils.Result Utils.Result$T@@3))) (= (Utils.Result.IsFailure Utils.Result$T@@3 this@@2) (Utils.Result.Failure_q this@@2)))
 :qid |unknown.0:0|
 :skolemid |997|
 :pattern ( (Utils.Result.IsFailure Utils.Result$T@@3 this@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (VarUnchanged.MState.MState_q d@@4) (= (DatatypeCtorId d@@4) |##VarUnchanged.MState.MState|))
 :qid |unknown.0:0|
 :skolemid |939|
 :pattern ( (VarUnchanged.MState.MState_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (Utils.Result.Success_q d@@5) (= (DatatypeCtorId d@@5) |##Utils.Result.Success|))
 :qid |unknown.0:0|
 :skolemid |977|
 :pattern ( (Utils.Result.Success_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (Utils.Result.Failure_q d@@6) (= (DatatypeCtorId d@@6) |##Utils.Result.Failure|))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( (Utils.Result.Failure_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (Utils.Option.Some_q d@@7) (= (DatatypeCtorId d@@7) |##Utils.Option.Some|))
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( (Utils.Option.Some_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (Utils.Option.None_q d@@8) (= (DatatypeCtorId d@@8) |##Utils.Option.None|))
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( (Utils.Option.None_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (AST.BinOp.Add_q d@@9) (= (DatatypeCtorId d@@9) |##AST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |1028|
 :pattern ( (AST.BinOp.Add_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (AST.BinOp.Sub_q d@@10) (= (DatatypeCtorId d@@10) |##AST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |1030|
 :pattern ( (AST.BinOp.Sub_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (AST.BinOp.Mul_q d@@11) (= (DatatypeCtorId d@@11) |##AST.BinOp.Mul|))
 :qid |unknown.0:0|
 :skolemid |1032|
 :pattern ( (AST.BinOp.Mul_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (AST.Expr__Raw.Var_q d@@12) (= (DatatypeCtorId d@@12) |##AST.Expr_Raw.Var|))
 :qid |unknown.0:0|
 :skolemid |1042|
 :pattern ( (AST.Expr__Raw.Var_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (AST.Expr__Raw.Literal_q d@@13) (= (DatatypeCtorId d@@13) |##AST.Expr_Raw.Literal|))
 :qid |unknown.0:0|
 :skolemid |1052|
 :pattern ( (AST.Expr__Raw.Literal_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (AST.Expr__Raw.Bind_q d@@14) (= (DatatypeCtorId d@@14) |##AST.Expr_Raw.Bind|))
 :qid |unknown.0:0|
 :skolemid |1060|
 :pattern ( (AST.Expr__Raw.Bind_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (AST.Expr__Raw.Assign_q d@@15) (= (DatatypeCtorId d@@15) |##AST.Expr_Raw.Assign|))
 :qid |unknown.0:0|
 :skolemid |1077|
 :pattern ( (AST.Expr__Raw.Assign_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (AST.Expr__Raw.If_q d@@16) (= (DatatypeCtorId d@@16) |##AST.Expr_Raw.If|))
 :qid |unknown.0:0|
 :skolemid |1091|
 :pattern ( (AST.Expr__Raw.If_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (AST.Expr__Raw.Op_q d@@17) (= (DatatypeCtorId d@@17) |##AST.Expr_Raw.Op|))
 :qid |unknown.0:0|
 :skolemid |1106|
 :pattern ( (AST.Expr__Raw.Op_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (AST.Expr__Raw.Seq_q d@@18) (= (DatatypeCtorId d@@18) |##AST.Expr_Raw.Seq|))
 :qid |unknown.0:0|
 :skolemid |1121|
 :pattern ( (AST.Expr__Raw.Seq_q d@@18))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@7| T@U) (|e#0@@3| T@U) ) (!  (=> (or (|VarUnchanged.__default.Pre#canCall| |st#0@@7| |e#0@@3|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@7| Tclass.VarUnchanged.S) ($Is DatatypeTypeType |e#0@@3| Tclass.AST.Expr)))) (and (and (VarUnchanged.MState.MState_q |st#0@@7|) (=> (Utils.Option.Some_q (VarUnchanged.MState.x |st#0@@7|)) (and (VarUnchanged.MState.MState_q |st#0@@7|) (|VarUnchanged.__default.VarUnchanged#canCall| ($Unbox SeqType (Utils.Option.value (VarUnchanged.MState.x |st#0@@7|))) |e#0@@3|)))) (= (VarUnchanged.__default.Pre |st#0@@7| |e#0@@3|)  (=> (Utils.Option.Some_q (VarUnchanged.MState.x |st#0@@7|)) (VarUnchanged.__default.VarUnchanged ($LS $LZ) ($Unbox SeqType (Utils.Option.value (VarUnchanged.MState.x |st#0@@7|))) |e#0@@3|)))))
 :qid |VarUnchangeddfy.82:23|
 :skolemid |704|
 :pattern ( (VarUnchanged.__default.Pre |st#0@@7| |e#0@@3|))
))))
(assert (forall ((d@@19 T@U) ) (!  (=> (AST.Expr__Raw.Bind_q d@@19) (exists ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) ) (! (= d@@19 (|#AST.Expr_Raw.Bind| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
 :qid |ASTdfy.17:12|
 :skolemid |1061|
)))
 :qid |unknown.0:0|
 :skolemid |1062|
 :pattern ( (AST.Expr__Raw.Bind_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (AST.Expr__Raw.If_q d@@20) (exists ((|a#57#0#0| T@U) (|a#57#1#0| T@U) (|a#57#2#0| T@U) ) (! (= d@@20 (|#AST.Expr_Raw.If| |a#57#0#0| |a#57#1#0| |a#57#2#0|))
 :qid |ASTdfy.19:10|
 :skolemid |1092|
)))
 :qid |unknown.0:0|
 :skolemid |1093|
 :pattern ( (AST.Expr__Raw.If_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> (AST.Expr__Raw.Op_q d@@21) (exists ((|a#67#0#0| T@U) (|a#67#1#0| T@U) (|a#67#2#0| T@U) ) (! (= d@@21 (|#AST.Expr_Raw.Op| |a#67#0#0| |a#67#1#0| |a#67#2#0|))
 :qid |ASTdfy.20:10|
 :skolemid |1107|
)))
 :qid |unknown.0:0|
 :skolemid |1108|
 :pattern ( (AST.Expr__Raw.Op_q d@@21))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@8| T@U) (|es#0@@4| T@U) ) (!  (=> (or (|VarUnchanged.__default.Pes__Fail#canCall| (Lit DatatypeTypeType |st#0@@8|) (Lit SeqType |es#0@@4|)) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@8| Tclass.VarUnchanged.S) ($Is SeqType |es#0@@4| (TSeq Tclass.AST.Expr))))) (and (and (and (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st#0@@8|)) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@4|) (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st#0@@8|))))) (|VarUnchanged.__default.PreEs#canCall| (Lit DatatypeTypeType |st#0@@8|) (Lit SeqType |es#0@@4|))) (= (VarUnchanged.__default.Pes__Fail (Lit DatatypeTypeType |st#0@@8|) (Lit SeqType |es#0@@4|)) (U_2_bool (let ((|res#2@@2| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@4|) (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st#0@@8|)))))))
(Lit boolType (bool_2_U  (=> (VarUnchanged.__default.PreEs (Lit DatatypeTypeType |st#0@@8|) (Lit SeqType |es#0@@4|)) (Utils.Result.Failure_q |res#2@@2|)))))))))
 :qid |Inductiondfy.41:28|
 :weight 3
 :skolemid |762|
 :pattern ( (VarUnchanged.__default.Pes__Fail (Lit DatatypeTypeType |st#0@@8|) (Lit SeqType |es#0@@4|)))
))))
(assert (forall ((|st#0@@9| T@U) ) (! (= ($Is DatatypeTypeType |st#0@@9| Tclass.VarUnchanged.S)  (and ($Is DatatypeTypeType |st#0@@9| Tclass.VarUnchanged.MState) (=> (Utils.Option.Some_q (VarUnchanged.MState.x |st#0@@9|)) (|Set#IsMember| (|Map#Domain| (VarUnchanged.MState.ctx |st#0@@9|)) (Utils.Option.value (VarUnchanged.MState.x |st#0@@9|))))))
 :qid |unknown.0:0|
 :skolemid |956|
 :pattern ( ($Is DatatypeTypeType |st#0@@9| Tclass.VarUnchanged.S))
)))
(assert (forall ((s@@7 T@U) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| s@@7))) (< (|Seq#Rank| (|Seq#Take| s@@7 i@@5)) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@7 i@@5)))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@10| T@U) (|vars#0@@1| T@U) (|vals#0@@0| T@U) ) (!  (=> (or (|VarUnchanged.__default.BindStartScope#canCall| |st#0@@10| |vars#0@@1| |vals#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@10| Tclass.VarUnchanged.S) ($Is SeqType |vars#0@@1| (TSeq (TSeq TChar)))) ($Is SeqType |vals#0@@0| (TSeq TInt))) (VarUnchanged.__default.UpdateState__Pre |st#0@@10| |vars#0@@1| |vals#0@@0|)))) (and (|Interp.__default.VarsAndValuesToContext#canCall| |vars#0@@1| |vals#0@@0|) (= (VarUnchanged.__default.BindStartScope |st#0@@10| |vars#0@@1| |vals#0@@0|) (let ((|ctx#0@@2| (VarUnchanged.MState.ctx |st#0@@10|)))
(let ((|x#0@@0| (VarUnchanged.MState.x |st#0@@10|)))
(let ((|x'#0| (ite  (and (Utils.Option.Some_q |x#0@@0|) (|Seq#Contains| |vars#0@@1| (Utils.Option.value |x#0@@0|))) |#Utils.Option.None| |x#0@@0|)))
(let ((|bindings#0@@0| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |vars#0@@1| |vals#0@@0|)))
(let ((|ctx1#0@@0| (|Map#Merge| |ctx#0@@2| |bindings#0@@0|)))
(let ((|st'#0@@1| (|#VarUnchanged.MState.MState| |x'#0| |ctx1#0@@0|)))
|st'#0@@1|)))))))))
 :qid |Inductiondfy.58:33|
 :skolemid |792|
 :pattern ( (VarUnchanged.__default.BindStartScope |st#0@@10| |vars#0@@1| |vals#0@@0|))
))))
(assert (forall ((m@@2 T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@2) bx@@2) (U_2_bool (MapType0Select BoxType boolType m@@2 bx@@2)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@2) bx@@2))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@22) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@22 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (!  (=> (VarUnchanged.MState.MState_q d@@23) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@23 (|#VarUnchanged.MState.MState| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |VarUnchangeddfy.73:28|
 :skolemid |940|
)))
 :qid |unknown.0:0|
 :skolemid |941|
 :pattern ( (VarUnchanged.MState.MState_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (AST.Expr__Raw.Assign_q d@@24) (exists ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= d@@24 (|#AST.Expr_Raw.Assign| |a#47#0#0| |a#47#1#0|))
 :qid |ASTdfy.18:14|
 :skolemid |1078|
)))
 :qid |unknown.0:0|
 :skolemid |1079|
 :pattern ( (AST.Expr__Raw.Assign_q d@@24))
)))
(assert (forall (($ly@@1 T@U) ($Heap@@1 T@U) (|e#0@@4| T@U) (|p#0| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| |e#0@@4| |p#0|) (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |e#0@@4| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@1 |p#0| ($Box DatatypeTypeType |e#0@@4|)))) (=> (not (AST.Expr__Raw.Var_q |e#0@@4|)) (=> (not (AST.Expr__Raw.Literal_q |e#0@@4|)) (and (=> (AST.Expr__Raw.Bind_q |e#0@@4|) (let ((|body#1@@0| (AST.Expr__Raw.body |e#0@@4|)))
(let ((|bvals#1@@0| (AST.Expr__Raw.bvals |e#0@@4|)))
 (and (forall ((|e#4| T@U) ) (!  (=> ($Is DatatypeTypeType |e#4| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4|)) (|AST.Expr__Raw.All#canCall| |e#4| |p#0|)))
 :qid |ASTdfy.51:22|
 :skolemid |1160|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#4| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4|)))
)) (=> (forall ((|e#4@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#4@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4@@0|))) (AST.Expr__Raw.All $ly@@1 |e#4@@0| |p#0|))
 :qid |ASTdfy.51:22|
 :skolemid |1161|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#4@@0| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4@@0|)))
)) (|AST.Expr__Raw.All#canCall| |body#1@@0| |p#0|)))))) (=> (not (AST.Expr__Raw.Bind_q |e#0@@4|)) (and (=> (AST.Expr__Raw.Assign_q |e#0@@4|) (let ((|avals#1@@0| (AST.Expr__Raw.avals |e#0@@4|)))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#5| T@U) ) (!  (=> ($Is DatatypeTypeType |e#5| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#1@@0| ($Box DatatypeTypeType |e#5|)) (|AST.Expr__Raw.All#canCall| |e#5| |p#0|)))
 :qid |ASTdfy.54:21|
 :skolemid |1162|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#5| |p#0|))
 :pattern ( (|Seq#Contains| |avals#1@@0| ($Box DatatypeTypeType |e#5|)))
))))) (=> (not (AST.Expr__Raw.Assign_q |e#0@@4|)) (and (=> (AST.Expr__Raw.If_q |e#0@@4|) (let ((|els#1@@0| (AST.Expr__Raw.els |e#0@@4|)))
(let ((|thn#1@@0| (AST.Expr__Raw.thn |e#0@@4|)))
(let ((|cond#1@@0| (AST.Expr__Raw.cond |e#0@@4|)))
 (and (|AST.Expr__Raw.All#canCall| |cond#1@@0| |p#0|) (=> (AST.Expr__Raw.All $ly@@1 |cond#1@@0| |p#0|) (and (|AST.Expr__Raw.All#canCall| |thn#1@@0| |p#0|) (=> (AST.Expr__Raw.All $ly@@1 |thn#1@@0| |p#0|) (|AST.Expr__Raw.All#canCall| |els#1@@0| |p#0|))))))))) (=> (not (AST.Expr__Raw.If_q |e#0@@4|)) (and (=> (AST.Expr__Raw.Op_q |e#0@@4|) (let ((|oe2#1| (AST.Expr__Raw.oe2 |e#0@@4|)))
(let ((|oe1#1| (AST.Expr__Raw.oe1 |e#0@@4|)))
 (and (|AST.Expr__Raw.All#canCall| |oe1#1| |p#0|) (=> (AST.Expr__Raw.All $ly@@1 |oe1#1| |p#0|) (|AST.Expr__Raw.All#canCall| |oe2#1| |p#0|)))))) (=> (not (AST.Expr__Raw.Op_q |e#0@@4|)) (let ((|es#1@@0| (AST.Expr__Raw.es |e#0@@4|)))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#6| T@U) ) (!  (=> ($Is DatatypeTypeType |e#6| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#1@@0| ($Box DatatypeTypeType |e#6|)) (|AST.Expr__Raw.All#canCall| |e#6| |p#0|)))
 :qid |ASTdfy.60:21|
 :skolemid |1163|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#6| |p#0|))
 :pattern ( (|Seq#Contains| |es#1@@0| ($Box DatatypeTypeType |e#6|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@1) |e#0@@4| |p#0|)  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@1 |p#0| ($Box DatatypeTypeType |e#0@@4|)))) (ite (AST.Expr__Raw.Var_q |e#0@@4|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q |e#0@@4|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q |e#0@@4|) (let ((|body#0@@0| (AST.Expr__Raw.body |e#0@@4|)))
(let ((|bvals#0@@1| (AST.Expr__Raw.bvals |e#0@@4|)))
 (and (forall ((|e#1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#1| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#0@@1| ($Box DatatypeTypeType |e#1|))) (AST.Expr__Raw.All $ly@@1 |e#1| |p#0|))
 :qid |ASTdfy.51:22|
 :skolemid |1157|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#1| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#0@@1| ($Box DatatypeTypeType |e#1|)))
)) (AST.Expr__Raw.All $ly@@1 |body#0@@0| |p#0|)))) (ite (AST.Expr__Raw.Assign_q |e#0@@4|) (let ((|avals#0@@1| (AST.Expr__Raw.avals |e#0@@4|)))
 (and true (forall ((|e#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#2| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#0@@1| ($Box DatatypeTypeType |e#2|))) (AST.Expr__Raw.All $ly@@1 |e#2| |p#0|))
 :qid |ASTdfy.54:21|
 :skolemid |1158|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#2| |p#0|))
 :pattern ( (|Seq#Contains| |avals#0@@1| ($Box DatatypeTypeType |e#2|)))
)))) (ite (AST.Expr__Raw.If_q |e#0@@4|) (let ((|els#0@@0| (AST.Expr__Raw.els |e#0@@4|)))
(let ((|thn#0@@0| (AST.Expr__Raw.thn |e#0@@4|)))
(let ((|cond#0@@0| (AST.Expr__Raw.cond |e#0@@4|)))
 (and (and (AST.Expr__Raw.All $ly@@1 |cond#0@@0| |p#0|) (AST.Expr__Raw.All $ly@@1 |thn#0@@0| |p#0|)) (AST.Expr__Raw.All $ly@@1 |els#0@@0| |p#0|))))) (ite (AST.Expr__Raw.Op_q |e#0@@4|) (let ((|oe2#0| (AST.Expr__Raw.oe2 |e#0@@4|)))
(let ((|oe1#0| (AST.Expr__Raw.oe1 |e#0@@4|)))
 (and (AST.Expr__Raw.All $ly@@1 |oe1#0| |p#0|) (AST.Expr__Raw.All $ly@@1 |oe2#0| |p#0|)))) (let ((|es#0@@5| (AST.Expr__Raw.es |e#0@@4|)))
 (and true (forall ((|e#3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#3| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#0@@5| ($Box DatatypeTypeType |e#3|))) (AST.Expr__Raw.All $ly@@1 |e#3| |p#0|))
 :qid |ASTdfy.60:21|
 :skolemid |1159|
 :pattern ( (AST.Expr__Raw.All $ly@@1 |e#3| |p#0|))
 :pattern ( (|Seq#Contains| |es#0@@5| ($Box DatatypeTypeType |e#3|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :skolemid |1164|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@1) |e#0@@4| |p#0|) ($IsGoodHeap $Heap@@1))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (Utils.Result.Failure_q d@@25) (= d@@25 |#Utils.Result.Failure|))
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( (Utils.Result.Failure_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (Utils.Option.None_q d@@26) (= d@@26 |#Utils.Option.None|))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( (Utils.Option.None_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> (AST.BinOp.Add_q d@@27) (= d@@27 |#AST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |1029|
 :pattern ( (AST.BinOp.Add_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (AST.BinOp.Sub_q d@@28) (= d@@28 |#AST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |1031|
 :pattern ( (AST.BinOp.Sub_q d@@28))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> (AST.BinOp.Mul_q d@@29) (= d@@29 |#AST.BinOp.Mul|))
 :qid |unknown.0:0|
 :skolemid |1033|
 :pattern ( (AST.BinOp.Mul_q d@@29))
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
(assert (forall ((s@@8 T@U) (i@@6 Int) ) (!  (=> (and (< 0 i@@6) (<= i@@6 (|Seq#Length| s@@8))) (< (|Seq#Rank| (|Seq#Drop| s@@8 i@@6)) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@8 i@@6)))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> (Utils.Result.Success_q d@@30) (exists ((|a#1#0#0@@1| T@U) ) (! (= d@@30 (|#Utils.Result.Success| |a#1#0#0@@1|))
 :qid |Utilsdfy.23:34|
 :skolemid |978|
)))
 :qid |unknown.0:0|
 :skolemid |979|
 :pattern ( (Utils.Result.Success_q d@@30))
)))
(assert (forall ((d@@31 T@U) ) (!  (=> (Utils.Option.Some_q d@@31) (exists ((|a#1#0#0@@2| T@U) ) (! (= d@@31 (|#Utils.Option.Some| |a#1#0#0@@2|))
 :qid |Utilsdfy.42:29|
 :skolemid |1011|
)))
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( (Utils.Option.Some_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> (AST.Expr__Raw.Var_q d@@32) (exists ((|a#23#0#0| T@U) ) (! (= d@@32 (|#AST.Expr_Raw.Var| |a#23#0#0|))
 :qid |ASTdfy.15:11|
 :skolemid |1043|
)))
 :qid |unknown.0:0|
 :skolemid |1044|
 :pattern ( (AST.Expr__Raw.Var_q d@@32))
)))
(assert (forall ((d@@33 T@U) ) (!  (=> (AST.Expr__Raw.Literal_q d@@33) (exists ((|a#30#0#0| Int) ) (! (= d@@33 (|#AST.Expr_Raw.Literal| |a#30#0#0|))
 :qid |ASTdfy.16:15|
 :skolemid |1053|
)))
 :qid |unknown.0:0|
 :skolemid |1054|
 :pattern ( (AST.Expr__Raw.Literal_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (AST.Expr__Raw.Seq_q d@@34) (exists ((|a#77#0#0| T@U) ) (! (= d@@34 (|#AST.Expr_Raw.Seq| |a#77#0#0|))
 :qid |ASTdfy.21:11|
 :skolemid |1122|
)))
 :qid |unknown.0:0|
 :skolemid |1123|
 :pattern ( (AST.Expr__Raw.Seq_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> ($Is DatatypeTypeType d@@35 Tclass.AST.Expr__Raw) (or (or (or (or (or (or (AST.Expr__Raw.Var_q d@@35) (AST.Expr__Raw.Literal_q d@@35)) (AST.Expr__Raw.Bind_q d@@35)) (AST.Expr__Raw.Assign_q d@@35)) (AST.Expr__Raw.If_q d@@35)) (AST.Expr__Raw.Op_q d@@35)) (AST.Expr__Raw.Seq_q d@@35)))
 :qid |unknown.0:0|
 :skolemid |1132|
 :pattern ( (AST.Expr__Raw.Seq_q d@@35) ($Is DatatypeTypeType d@@35 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Op_q d@@35) ($Is DatatypeTypeType d@@35 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.If_q d@@35) ($Is DatatypeTypeType d@@35 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Assign_q d@@35) ($Is DatatypeTypeType d@@35 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Bind_q d@@35) ($Is DatatypeTypeType d@@35 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Literal_q d@@35) ($Is DatatypeTypeType d@@35 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Var_q d@@35) ($Is DatatypeTypeType d@@35 Tclass.AST.Expr__Raw))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@9 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@9 v@@2)) (+ 1 (|Seq#Length| s@@9)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@9 v@@2))
)))
(assert (forall (($ly@@2 T@U) (|es#0@@6| T@U) (|ctx#0@@3| T@U) ) (!  (=> (or (|Interp.__default.InterpExprs#canCall| |es#0@@6| |ctx#0@@3|) (and ($Is SeqType |es#0@@6| (TSeq Tclass.AST.Expr)) ($Is MapType |ctx#0@@3| (TMap (TSeq TChar) TInt)))) (and (=> (Utils.Result.Success_q (Interp.__default.InterpExprs $ly@@2 |es#0@@6| |ctx#0@@3|)) (= (|Seq#Length| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExprs $ly@@2 |es#0@@6| |ctx#0@@3|)))))) (|Seq#Length| |es#0@@6|))) ($Is DatatypeTypeType (Interp.__default.InterpExprs $ly@@2 |es#0@@6| |ctx#0@@3|) (Tclass.Utils.Result (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt))))))
 :qid |Interpdfy.69:12|
 :skolemid |1219|
 :pattern ( (Interp.__default.InterpExprs $ly@@2 |es#0@@6| |ctx#0@@3|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@3 T@U) (|x#0@@1| T@U) (|e#0@@5| T@U) ) (!  (=> (or (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| (Lit DatatypeTypeType |e#0@@5|)) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |x#0@@1| (TSeq TChar)) ($Is DatatypeTypeType |e#0@@5| Tclass.AST.Expr)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@5|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@5|))))) (let ((|body#3| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|bvals#3| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|bvars#3| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@5|)))))
 (and (forall ((|e#10| T@U) ) (!  (=> ($Is DatatypeTypeType |e#10| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#3| ($Box DatatypeTypeType |e#10|)) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |e#10|)))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |655|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#10|))
 :pattern ( (|Seq#Contains| |bvals#3| ($Box DatatypeTypeType |e#10|)))
)) (=> (forall ((|e#10@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#10@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#3| ($Box DatatypeTypeType |e#10@@0|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#10@@0|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |656|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#10@@0|))
 :pattern ( (|Seq#Contains| |bvals#3| ($Box DatatypeTypeType |e#10@@0|)))
)) (=> (not (|Seq#Contains| |bvars#3| ($Box SeqType |x#0@@1|))) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |body#3|)))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@5|))))) (let ((|avals#3| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|avars#3| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@5|)))))
 (=> (not (|Seq#Contains| |avars#3| ($Box SeqType |x#0@@1|))) (forall ((|e#11| T@U) ) (!  (=> ($Is DatatypeTypeType |e#11| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#3| ($Box DatatypeTypeType |e#11|)) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |e#11|)))
 :qid |VarUnchangeddfy.32:32|
 :skolemid |657|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#11|))
 :pattern ( (|Seq#Contains| |avals#3| ($Box DatatypeTypeType |e#11|)))
)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@5|))))) (let ((|els#3| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|thn#3| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|cond#3| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@5|)))))
 (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |cond#3|) (=> (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |cond#3|) (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |thn#3|) (=> (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |thn#3|) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |els#3|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@5|))))) (let ((|oe2#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|oe1#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@5|)))))
 (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |oe1#3|) (=> (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |oe1#3|) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |oe2#3|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@5|)))))) (let ((|es#3| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@5|)))))
(forall ((|e#12| T@U) ) (!  (=> ($Is DatatypeTypeType |e#12| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#3| ($Box DatatypeTypeType |e#12|)) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@1| |e#12|)))
 :qid |VarUnchangeddfy.38:16|
 :skolemid |658|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#12|))
 :pattern ( (|Seq#Contains| |es#3| ($Box DatatypeTypeType |e#12|)))
))))))))))))) (= (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| (Lit DatatypeTypeType |e#0@@5|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@5|)) (U_2_bool (Lit boolType (bool_2_U false))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@5|)) (U_2_bool (Lit boolType (bool_2_U false))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@5|)) (let ((|body#2| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|bvals#2| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|bvars#2| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@5|)))))
 (and (forall ((|e#7| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#7| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#2| ($Box DatatypeTypeType |e#7|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#7|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |652|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#7|))
 :pattern ( (|Seq#Contains| |bvals#2| ($Box DatatypeTypeType |e#7|)))
)) (or (|Seq#Contains| |bvars#2| ($Box SeqType |x#0@@1|)) (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |body#2|)))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@5|)) (let ((|avals#2| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|avars#2| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@5|)))))
 (and (not (|Seq#Contains| |avars#2| ($Box SeqType |x#0@@1|))) (forall ((|e#8| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#8| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#2| ($Box DatatypeTypeType |e#8|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#8|))
 :qid |VarUnchangeddfy.32:32|
 :skolemid |653|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#8|))
 :pattern ( (|Seq#Contains| |avals#2| ($Box DatatypeTypeType |e#8|)))
))))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@5|)) (let ((|els#2| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|thn#2| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|cond#2| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@5|)))))
 (and (and (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |cond#2|) (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |thn#2|)) (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |els#2|))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@5|)) (let ((|oe2#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@5|)))))
(let ((|oe1#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@5|)))))
 (and (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |oe1#2|) (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |oe2#2|)))) (let ((|es#2| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@5|)))))
(forall ((|e#9| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#9| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#2| ($Box DatatypeTypeType |e#9|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#9|))
 :qid |VarUnchangeddfy.38:16|
 :skolemid |654|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| |e#9|))
 :pattern ( (|Seq#Contains| |es#2| ($Box DatatypeTypeType |e#9|)))
))))))))))))
 :qid |VarUnchangeddfy.17:13|
 :weight 3
 :skolemid |659|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@3) |x#0@@1| (Lit DatatypeTypeType |e#0@@5|)))
))))
(assert (forall (($ly@@4 T@U) (|x#0@@2| T@U) (|e#0@@6| T@U) ) (! (= (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) |x#0@@2| |e#0@@6|) (VarUnchanged.__default.VarUnchanged $ly@@4 |x#0@@2| |e#0@@6|))
 :qid |VarUnchangeddfy.17:13|
 :skolemid |638|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@4) |x#0@@2| |e#0@@6|))
)))
(assert (forall (($ly@@5 T@U) (|e#0@@7| T@U) (|p#0@@0| T@U) ) (! (= (AST.Expr__Raw.All ($LS $ly@@5) |e#0@@7| |p#0@@0|) (AST.Expr__Raw.All $ly@@5 |e#0@@7| |p#0@@0|))
 :qid |ASTdfy.44:22|
 :skolemid |1153|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@5) |e#0@@7| |p#0@@0|))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@1 h) ($IsAlloc T@@1 v@@3 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@1 h))
)))
(assert (forall ((Utils.Result$T@@4 T@U) (this@@3 T@U) ) (!  (=> (or (|Utils.Result.Extract#canCall| Utils.Result$T@@4 this@@3) (and ($Is DatatypeTypeType this@@3 (Tclass.Utils.Result Utils.Result$T@@4)) (Utils.Result.Success_q this@@3))) (= (Utils.Result.Extract Utils.Result$T@@4 this@@3) (Utils.Result.value this@@3)))
 :qid |unknown.0:0|
 :skolemid |1007|
 :pattern ( (Utils.Result.Extract Utils.Result$T@@4 this@@3))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@11| T@U) (|e#0@@8| T@U) ) (!  (=> (or (|VarUnchanged.__default.P__Fail#canCall| |st#0@@11| (Lit DatatypeTypeType |e#0@@8|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@11| Tclass.VarUnchanged.S) ($Is DatatypeTypeType |e#0@@8| Tclass.AST.Expr)))) (and (and (and (VarUnchanged.MState.MState_q |st#0@@11|) (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@8|) (VarUnchanged.MState.ctx |st#0@@11|))) (|VarUnchanged.__default.Pre#canCall| |st#0@@11| (Lit DatatypeTypeType |e#0@@8|))) (= (VarUnchanged.__default.P__Fail |st#0@@11| (Lit DatatypeTypeType |e#0@@8|)) (let ((|res#1@@1| (Interp.__default.InterpExpr ($LS $LZ) (Lit DatatypeTypeType |e#0@@8|) (VarUnchanged.MState.ctx |st#0@@11|))))
 (=> (VarUnchanged.__default.Pre |st#0@@11| (Lit DatatypeTypeType |e#0@@8|)) (Utils.Result.Failure_q |res#1@@1|))))))
 :qid |Inductiondfy.36:26|
 :weight 3
 :skolemid |738|
 :pattern ( (VarUnchanged.__default.P__Fail |st#0@@11| (Lit DatatypeTypeType |e#0@@8|)))
))))
(assert (forall ((s@@10 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@10) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@10 n@@4) j@@1) (|Seq#Index| s@@10 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@10 n@@4) j@@1))
)))
(assert (forall ((|e#0@@9| T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed__Single#canCall| (Lit DatatypeTypeType |e#0@@9|)) ($Is DatatypeTypeType |e#0@@9| Tclass.AST.Expr__Raw)) (= (AST.Expr__Raw.WellFormed__Single (Lit DatatypeTypeType |e#0@@9|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@9|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@9|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@9|)) (let ((|bvals#2@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|bvars#2@@0| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@9|)))))
(= (|Seq#Length| |bvars#2@@0|) (|Seq#Length| |bvals#2@@0|)))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@9|)) (let ((|avals#2@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|avars#2@@0| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@9|)))))
(= (|Seq#Length| |avars#2@@0|) (|Seq#Length| |avals#2@@0|)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@9|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@9|)) (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
 :qid |ASTdfy.71:46|
 :weight 3
 :skolemid |1195|
 :pattern ( (AST.Expr__Raw.WellFormed__Single (Lit DatatypeTypeType |e#0@@9|)))
)))
(assert (forall ((Utils.Result$T@@5 T@U) ) (!  (and (= (Tag (Tclass.Utils.Result Utils.Result$T@@5)) Tagclass.Utils.Result) (= (TagFamily (Tclass.Utils.Result Utils.Result$T@@5)) tytagFamily$Result))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( (Tclass.Utils.Result Utils.Result$T@@5))
)))
(assert (forall ((Utils.Option$T@@1 T@U) ) (!  (and (= (Tag (Tclass.Utils.Option Utils.Option$T@@1)) Tagclass.Utils.Option) (= (TagFamily (Tclass.Utils.Option Utils.Option$T@@1)) tytagFamily$Option))
 :qid |unknown.0:0|
 :skolemid |785|
 :pattern ( (Tclass.Utils.Option Utils.Option$T@@1))
)))
(assert (forall ((m@@3 T@U) (n@@5 T@U) (u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Merge| m@@3 n@@5)) u@@0) (and (=> (not (|Set#IsMember| (|Map#Domain| n@@5) u@@0)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@3 n@@5)) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| m@@3) u@@0))) (=> (|Set#IsMember| (|Map#Domain| n@@5) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@3 n@@5)) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| n@@5) u@@0)))))
 :qid |DafnyPreludebpl.1479:15|
 :skolemid |294|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@3 n@@5)) u@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@12| T@U) (|es#0@@7| T@U) ) (!  (=> (or (|VarUnchanged.__default.PreEs#canCall| (Lit DatatypeTypeType |st#0@@12|) (Lit SeqType |es#0@@7|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@12| Tclass.VarUnchanged.S) ($Is SeqType |es#0@@7| (TSeq Tclass.AST.Expr))))) (and (forall ((|e#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#1@@0| Tclass.AST.Expr) (=> (|Seq#Contains| |es#0@@7| ($Box DatatypeTypeType |e#1@@0|)) (|VarUnchanged.__default.Pre#canCall| (Lit DatatypeTypeType |st#0@@12|) |e#1@@0|)))
 :qid |VarUnchangeddfy.89:12|
 :skolemid |713|
 :pattern ( (VarUnchanged.__default.Pre |st#0@@12| |e#1@@0|))
 :pattern ( (|Seq#Contains| |es#0@@7| ($Box DatatypeTypeType |e#1@@0|)))
)) (= (VarUnchanged.__default.PreEs (Lit DatatypeTypeType |st#0@@12|) (Lit SeqType |es#0@@7|)) (forall ((|e#1@@1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#1@@1| Tclass.AST.Expr) (|Seq#Contains| |es#0@@7| ($Box DatatypeTypeType |e#1@@1|))) (VarUnchanged.__default.Pre (Lit DatatypeTypeType |st#0@@12|) |e#1@@1|))
 :qid |VarUnchangeddfy.89:12|
 :skolemid |712|
 :pattern ( (VarUnchanged.__default.Pre |st#0@@12| |e#1@@1|))
 :pattern ( (|Seq#Contains| |es#0@@7| ($Box DatatypeTypeType |e#1@@1|)))
)))))
 :qid |VarUnchangeddfy.87:25|
 :weight 3
 :skolemid |714|
 :pattern ( (VarUnchanged.__default.PreEs (Lit DatatypeTypeType |st#0@@12|) (Lit SeqType |es#0@@7|)))
))))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) (bx@@4 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#8#1#0|) bx@@4) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#8#1#0|) bx@@4))) (DtRank (|#VarUnchanged.MState.MState| |a#8#0#0| |a#8#1#0|))))
 :qid |VarUnchangeddfy.73:28|
 :skolemid |950|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#8#1#0|) bx@@4) (|#VarUnchanged.MState.MState| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((Utils.Result$T@@6 T@U) (Utils.Result.PropagateFailure$U@@1 T@U) (this@@4 T@U) ) (!  (=> (or (|Utils.Result.PropagateFailure#canCall| Utils.Result$T@@6 Utils.Result.PropagateFailure$U@@1 this@@4) (and ($Is DatatypeTypeType this@@4 (Tclass.Utils.Result Utils.Result$T@@6)) (Utils.Result.Failure_q this@@4))) (= (Utils.Result.PropagateFailure Utils.Result$T@@6 Utils.Result.PropagateFailure$U@@1 this@@4) (Lit DatatypeTypeType |#Utils.Result.Failure|)))
 :qid |unknown.0:0|
 :skolemid |1002|
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
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.AST.Expr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.AST.Expr)))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( ($IsBox bx@@5 Tclass.AST.Expr))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.AST.Expr__Raw) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.AST.Expr__Raw)))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( ($IsBox bx@@6 Tclass.AST.Expr__Raw))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.AST.BinOp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass.AST.BinOp)))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($IsBox bx@@7 Tclass.AST.BinOp))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.VarUnchanged.S) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass.VarUnchanged.S)))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( ($IsBox bx@@8 Tclass.VarUnchanged.S))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.VarUnchanged.MState) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) Tclass.VarUnchanged.MState)))
 :qid |unknown.0:0|
 :skolemid |788|
 :pattern ( ($IsBox bx@@9 Tclass.VarUnchanged.MState))
)))
(assert (forall ((|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#VarUnchanged.MState.MState| |a#2#0#0@@1| |a#2#1#0@@1|) Tclass.VarUnchanged.MState)  (and ($Is DatatypeTypeType |a#2#0#0@@1| (Tclass.Utils.Option (TSeq TChar))) ($Is MapType |a#2#1#0@@1| (TMap (TSeq TChar) TInt))))
 :qid |VarUnchangeddfy.73:28|
 :skolemid |942|
 :pattern ( ($Is DatatypeTypeType (|#VarUnchanged.MState.MState| |a#2#0#0@@1| |a#2#1#0@@1|) Tclass.VarUnchanged.MState))
)))
(assert (forall ((s@@11 T@U) (i@@7 Int) (v@@4 T@U) ) (!  (and (=> (= i@@7 (|Seq#Length| s@@11)) (= (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@7) v@@4)) (=> (or (not (= i@@7 (|Seq#Length| s@@11))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@7) (|Seq#Index| s@@11 i@@7))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@7))
)))
(assert (forall ((a@@15 T@U) (b@@15 T@U) ) (!  (=> (and (AST.Expr__Raw.Var_q a@@15) (AST.Expr__Raw.Var_q b@@15)) (= (|AST.Expr__Raw#Equal| a@@15 b@@15) (|Seq#Equal| (AST.Expr__Raw.name a@@15) (AST.Expr__Raw.name b@@15))))
 :qid |unknown.0:0|
 :skolemid |1133|
 :pattern ( (|AST.Expr__Raw#Equal| a@@15 b@@15) (AST.Expr__Raw.Var_q a@@15))
 :pattern ( (|AST.Expr__Raw#Equal| a@@15 b@@15) (AST.Expr__Raw.Var_q b@@15))
)))
(assert (forall ((a@@16 T@U) (b@@16 T@U) ) (!  (=> (and (AST.Expr__Raw.Seq_q a@@16) (AST.Expr__Raw.Seq_q b@@16)) (= (|AST.Expr__Raw#Equal| a@@16 b@@16) (|Seq#Equal| (AST.Expr__Raw.es a@@16) (AST.Expr__Raw.es b@@16))))
 :qid |unknown.0:0|
 :skolemid |1139|
 :pattern ( (|AST.Expr__Raw#Equal| a@@16 b@@16) (AST.Expr__Raw.Seq_q a@@16))
 :pattern ( (|AST.Expr__Raw#Equal| a@@16 b@@16) (AST.Expr__Raw.Seq_q b@@16))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@13| T@U) (|es#0@@8| T@U) ) (!  (=> (or (|VarUnchanged.__default.Pes__Fail#canCall| |st#0@@13| (Lit SeqType |es#0@@8|)) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@13| Tclass.VarUnchanged.S) ($Is SeqType |es#0@@8| (TSeq Tclass.AST.Expr))))) (and (and (and (VarUnchanged.MState.MState_q |st#0@@13|) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@8|) (VarUnchanged.MState.ctx |st#0@@13|))) (|VarUnchanged.__default.PreEs#canCall| |st#0@@13| (Lit SeqType |es#0@@8|))) (= (VarUnchanged.__default.Pes__Fail |st#0@@13| (Lit SeqType |es#0@@8|)) (let ((|res#1@@2| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@8|) (VarUnchanged.MState.ctx |st#0@@13|))))
 (=> (VarUnchanged.__default.PreEs |st#0@@13| (Lit SeqType |es#0@@8|)) (Utils.Result.Failure_q |res#1@@2|))))))
 :qid |Inductiondfy.41:28|
 :weight 3
 :skolemid |761|
 :pattern ( (VarUnchanged.__default.Pes__Fail |st#0@@13| (Lit SeqType |es#0@@8|)))
))))
(assert (forall (($ly@@6 T@U) (|e#0@@10| T@U) (|ctx#0@@4| T@U) ) (!  (=> (or (|Interp.__default.InterpExpr#canCall| |e#0@@10| |ctx#0@@4|) (and ($Is DatatypeTypeType |e#0@@10| Tclass.AST.Expr) ($Is MapType |ctx#0@@4| (TMap (TSeq TChar) TInt)))) ($Is DatatypeTypeType (Interp.__default.InterpExpr $ly@@6 |e#0@@10| |ctx#0@@4|) (Tclass.Utils.Result (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)))))
 :qid |Interpdfy.24:12|
 :skolemid |1212|
 :pattern ( (Interp.__default.InterpExpr $ly@@6 |e#0@@10| |ctx#0@@4|))
)))
(assert (forall (($ly@@7 T@U) (|e#0@@11| T@U) (|ctx#0@@5| T@U) ) (! (= (Interp.__default.InterpExpr ($LS $ly@@7) |e#0@@11| |ctx#0@@5|) (Interp.__default.InterpExpr $ly@@7 |e#0@@11| |ctx#0@@5|))
 :qid |Interpdfy.24:12|
 :skolemid |1210|
 :pattern ( (Interp.__default.InterpExpr ($LS $ly@@7) |e#0@@11| |ctx#0@@5|))
)))
(assert (forall (($ly@@8 T@U) (|es#0@@9| T@U) (|ctx#0@@6| T@U) ) (! (= (Interp.__default.InterpExprs ($LS $ly@@8) |es#0@@9| |ctx#0@@6|) (Interp.__default.InterpExprs $ly@@8 |es#0@@9| |ctx#0@@6|))
 :qid |Interpdfy.69:12|
 :skolemid |1217|
 :pattern ( (Interp.__default.InterpExprs ($LS $ly@@8) |es#0@@9| |ctx#0@@6|))
)))
(assert (forall (($ly@@9 T@U) (|vars#0@@2| T@U) (|values#0| T@U) ) (! (= (Interp.__default.VarsAndValuesToContext ($LS $ly@@9) |vars#0@@2| |values#0|) (Interp.__default.VarsAndValuesToContext $ly@@9 |vars#0@@2| |values#0|))
 :qid |Interpdfy.80:12|
 :skolemid |1224|
 :pattern ( (Interp.__default.VarsAndValuesToContext ($LS $ly@@9) |vars#0@@2| |values#0|))
)))
(assert (forall (($ly@@10 T@U) (|vars#0@@3| T@U) (|values#0@@0| T@U) ) (!  (=> (or (|Interp.__default.VarsAndValuesToContext#canCall| |vars#0@@3| |values#0@@0|) (and (and ($Is SeqType |vars#0@@3| (TSeq (TSeq TChar))) ($Is SeqType |values#0@@0| (TSeq TInt))) (= (|Seq#Length| |vars#0@@3|) (|Seq#Length| |values#0@@0|)))) (and (|Set#Equal| (|Map#Domain| (Interp.__default.VarsAndValuesToContext $ly@@10 |vars#0@@3| |values#0@@0|)) (|Set#FromBoogieMap| (|lambda#7| (TSeq TChar) |vars#0@@3|))) ($Is MapType (Interp.__default.VarsAndValuesToContext $ly@@10 |vars#0@@3| |values#0@@0|) (TMap (TSeq TChar) TInt))))
 :qid |Interpdfy.80:12|
 :skolemid |1226|
 :pattern ( (Interp.__default.VarsAndValuesToContext $ly@@10 |vars#0@@3| |values#0@@0|))
)))
(assert (forall ((Utils.Result$T@@7 T@U) (|a#2#0#0@@2| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#Utils.Result.Success| |a#2#0#0@@2|) (Tclass.Utils.Result Utils.Result$T@@7) $h@@6) ($IsAllocBox |a#2#0#0@@2| Utils.Result$T@@7 $h@@6)))
 :qid |unknown.0:0|
 :skolemid |981|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Utils.Result.Success| |a#2#0#0@@2|) (Tclass.Utils.Result Utils.Result$T@@7) $h@@6))
)))
(assert (forall ((Utils.Option$T@@2 T@U) (|a#2#0#0@@3| T@U) ($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) (= ($IsAlloc DatatypeTypeType (|#Utils.Option.Some| |a#2#0#0@@3|) (Tclass.Utils.Option Utils.Option$T@@2) $h@@7) ($IsAllocBox |a#2#0#0@@3| Utils.Option$T@@2 $h@@7)))
 :qid |unknown.0:0|
 :skolemid |1014|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Utils.Option.Some| |a#2#0#0@@3|) (Tclass.Utils.Option Utils.Option$T@@2) $h@@7))
)))
(assert (forall ((a@@17 T@U) (b@@17 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@17 b@@17) o@@2)  (or (|Set#IsMember| a@@17 o@@2) (|Set#IsMember| b@@17 o@@2)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@17 b@@17) o@@2))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@7)  (or (|Seq#Contains| s0@@1 x@@7) (|Seq#Contains| s1@@1 x@@7)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |233|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@7))
)))
(assert (forall ((s@@12 T@U) (n@@6 Int) (x@@8 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@12 n@@6) x@@8) (exists ((i@@8 Int) ) (!  (and (and (and (<= 0 i@@8) (< i@@8 n@@6)) (< i@@8 (|Seq#Length| s@@12))) (= (|Seq#Index| s@@12 i@@8) x@@8))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |235|
 :pattern ( (|Seq#Index| s@@12 i@@8))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |236|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@12 n@@6) x@@8))
)))
(assert (forall ((a@@18 T@U) (b@@18 T@U) ) (!  (=> (|Set#Disjoint| a@@18 b@@18) (and (= (|Set#Difference| (|Set#Union| a@@18 b@@18) a@@18) b@@18) (= (|Set#Difference| (|Set#Union| a@@18 b@@18) b@@18) a@@18)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@18 b@@18))
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
(assert (forall ((s@@13 T@U) (x@@9 T@U) ) (! (= (|Seq#Contains| s@@13 x@@9) (exists ((i@@9 Int) ) (!  (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length| s@@13))) (= (|Seq#Index| s@@13 i@@9) x@@9))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@13 i@@9))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@13 x@@9))
)))
(assert (forall (($ly@@11 T@U) (|es#0@@10| T@U) (|ctx#0@@7| T@U) ) (!  (=> (or (|Interp.__default.InterpExprs#canCall| |es#0@@10| |ctx#0@@7|) (and ($Is SeqType |es#0@@10| (TSeq Tclass.AST.Expr)) ($Is MapType |ctx#0@@7| (TMap (TSeq TChar) TInt)))) (and (=> (not (|Seq#Equal| |es#0@@10| |Seq#Empty|)) (and (|Interp.__default.InterpExpr#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |es#0@@10| (LitInt 0))) |ctx#0@@7|) (let ((|valueOrError0#0@@0| (Interp.__default.InterpExpr $ly@@11 ($Unbox DatatypeTypeType (|Seq#Index| |es#0@@10| (LitInt 0))) |ctx#0@@7|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|) (let ((|ctx1#0@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|))))))
 (and (|Interp.__default.InterpExprs#canCall| (|Seq#Drop| |es#0@@10| (LitInt 1)) |ctx1#0@@1|) (let ((|valueOrError1#0@@0| (Interp.__default.InterpExprs $ly@@11 (|Seq#Drop| |es#0@@10| (LitInt 1)) |ctx1#0@@1|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|)))))))))))) (= (Interp.__default.InterpExprs ($LS $ly@@11) |es#0@@10| |ctx#0@@7|) (ite (|Seq#Equal| |es#0@@10| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box MapType |ctx#0@@7|)))) (let ((|valueOrError0#0@@1| (Interp.__default.InterpExpr $ly@@11 ($Unbox DatatypeTypeType (|Seq#Index| |es#0@@10| (LitInt 0))) |ctx#0@@7|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0@@1|) (let ((|ctx1#0@@2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@1|))))))
(let ((|v#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@1|)))))))
(let ((|valueOrError1#0@@1| (Interp.__default.InterpExprs $ly@@11 (|Seq#Drop| |es#0@@10| (LitInt 1)) |ctx1#0@@2|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@1|) (let ((|ctx2#0@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@1|))))))
(let ((|vs#0@@2| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@1|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |v#0|))) |vs#0@@2|)) ($Box MapType |ctx2#0@@0|))))))))))))))))
 :qid |Interpdfy.69:12|
 :skolemid |1221|
 :pattern ( (Interp.__default.InterpExprs ($LS $ly@@11) |es#0@@10| |ctx#0@@7|))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (|$IsA#Utils.Result| d@@36) (or (Utils.Result.Success_q d@@36) (Utils.Result.Failure_q d@@36)))
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( (|$IsA#Utils.Result| d@@36))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> (|$IsA#Utils.Option| d@@37) (or (Utils.Option.Some_q d@@37) (Utils.Option.None_q d@@37)))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( (|$IsA#Utils.Option| d@@37))
)))
(assert (forall ((|a#78#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#78#0#0|) Tclass.AST.Expr__Raw) ($Is SeqType |a#78#0#0| (TSeq Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.21:11|
 :skolemid |1124|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#78#0#0|) Tclass.AST.Expr__Raw))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@14| T@U) (|es#0@@11| T@U) ) (!  (=> (or (|VarUnchanged.__default.Pes#canCall| |st#0@@14| |es#0@@11|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@14| Tclass.VarUnchanged.S) ($Is SeqType |es#0@@11| (TSeq Tclass.AST.Expr))))) (and (and (and (VarUnchanged.MState.MState_q |st#0@@14|) (|Interp.__default.InterpExprs#canCall| |es#0@@11| (VarUnchanged.MState.ctx |st#0@@14|))) (let ((|res#0@@2| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@11| (VarUnchanged.MState.ctx |st#0@@14|))))
 (and (|VarUnchanged.__default.PreEs#canCall| |st#0@@14| |es#0@@11|) (=> (VarUnchanged.__default.PreEs |st#0@@14| |es#0@@11|) (|VarUnchanged.__default.ResultSeqSameX#canCall| |st#0@@14| |res#0@@2|))))) (= (VarUnchanged.__default.Pes |st#0@@14| |es#0@@11|) (let ((|res#0@@3| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@11| (VarUnchanged.MState.ctx |st#0@@14|))))
 (=> (VarUnchanged.__default.PreEs |st#0@@14| |es#0@@11|) (VarUnchanged.__default.ResultSeqSameX |st#0@@14| |res#0@@3|))))))
 :qid |Inductiondfy.39:23|
 :skolemid |744|
 :pattern ( (VarUnchanged.__default.Pes |st#0@@14| |es#0@@11|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@12 T@U) (|x#0@@3| T@U) (|e#0@@12| T@U) ) (!  (=> (or (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |e#0@@12|) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |x#0@@3| (TSeq TChar)) ($Is DatatypeTypeType |e#0@@12| Tclass.AST.Expr)))) (and (=> (not (AST.Expr__Raw.Var_q |e#0@@12|)) (=> (not (AST.Expr__Raw.Literal_q |e#0@@12|)) (and (=> (AST.Expr__Raw.Bind_q |e#0@@12|) (let ((|body#1@@1| (AST.Expr__Raw.body |e#0@@12|)))
(let ((|bvals#1@@1| (AST.Expr__Raw.bvals |e#0@@12|)))
(let ((|bvars#1@@0| (AST.Expr__Raw.bvars |e#0@@12|)))
 (and (forall ((|e#4@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#4@@1| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#1@@1| ($Box DatatypeTypeType |e#4@@1|)) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |e#4@@1|)))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |647|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |e#4@@1|))
 :pattern ( (|Seq#Contains| |bvals#1@@1| ($Box DatatypeTypeType |e#4@@1|)))
)) (=> (forall ((|e#4@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#4@@2| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#1@@1| ($Box DatatypeTypeType |e#4@@2|))) (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |e#4@@2|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |648|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |e#4@@2|))
 :pattern ( (|Seq#Contains| |bvals#1@@1| ($Box DatatypeTypeType |e#4@@2|)))
)) (=> (not (|Seq#Contains| |bvars#1@@0| ($Box SeqType |x#0@@3|))) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |body#1@@1|)))))))) (=> (not (AST.Expr__Raw.Bind_q |e#0@@12|)) (and (=> (AST.Expr__Raw.Assign_q |e#0@@12|) (let ((|avals#1@@1| (AST.Expr__Raw.avals |e#0@@12|)))
(let ((|avars#1@@0| (AST.Expr__Raw.avars |e#0@@12|)))
 (=> (not (|Seq#Contains| |avars#1@@0| ($Box SeqType |x#0@@3|))) (forall ((|e#5@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#5@@0| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#1@@1| ($Box DatatypeTypeType |e#5@@0|)) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |e#5@@0|)))
 :qid |VarUnchangeddfy.32:32|
 :skolemid |649|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |e#5@@0|))
 :pattern ( (|Seq#Contains| |avals#1@@1| ($Box DatatypeTypeType |e#5@@0|)))
)))))) (=> (not (AST.Expr__Raw.Assign_q |e#0@@12|)) (and (=> (AST.Expr__Raw.If_q |e#0@@12|) (let ((|els#1@@1| (AST.Expr__Raw.els |e#0@@12|)))
(let ((|thn#1@@1| (AST.Expr__Raw.thn |e#0@@12|)))
(let ((|cond#1@@1| (AST.Expr__Raw.cond |e#0@@12|)))
 (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |cond#1@@1|) (=> (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |cond#1@@1|) (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |thn#1@@1|) (=> (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |thn#1@@1|) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |els#1@@1|))))))))) (=> (not (AST.Expr__Raw.If_q |e#0@@12|)) (and (=> (AST.Expr__Raw.Op_q |e#0@@12|) (let ((|oe2#1@@0| (AST.Expr__Raw.oe2 |e#0@@12|)))
(let ((|oe1#1@@0| (AST.Expr__Raw.oe1 |e#0@@12|)))
 (and (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |oe1#1@@0|) (=> (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |oe1#1@@0|) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |oe2#1@@0|)))))) (=> (not (AST.Expr__Raw.Op_q |e#0@@12|)) (let ((|es#1@@1| (AST.Expr__Raw.es |e#0@@12|)))
(forall ((|e#6@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#6@@0| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#1@@1| ($Box DatatypeTypeType |e#6@@0|)) (|VarUnchanged.__default.VarUnchanged#canCall| |x#0@@3| |e#6@@0|)))
 :qid |VarUnchangeddfy.38:16|
 :skolemid |650|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |e#6@@0|))
 :pattern ( (|Seq#Contains| |es#1@@1| ($Box DatatypeTypeType |e#6@@0|)))
))))))))))))) (= (VarUnchanged.__default.VarUnchanged ($LS $ly@@12) |x#0@@3| |e#0@@12|) (ite (AST.Expr__Raw.Var_q |e#0@@12|) (U_2_bool (Lit boolType (bool_2_U false))) (ite (AST.Expr__Raw.Literal_q |e#0@@12|) (U_2_bool (Lit boolType (bool_2_U false))) (ite (AST.Expr__Raw.Bind_q |e#0@@12|) (let ((|body#0@@1| (AST.Expr__Raw.body |e#0@@12|)))
(let ((|bvals#0@@2| (AST.Expr__Raw.bvals |e#0@@12|)))
(let ((|bvars#0@@1| (AST.Expr__Raw.bvars |e#0@@12|)))
 (and (forall ((|e#1@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#1@@2| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#0@@2| ($Box DatatypeTypeType |e#1@@2|))) (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |e#1@@2|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |644|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |e#1@@2|))
 :pattern ( (|Seq#Contains| |bvals#0@@2| ($Box DatatypeTypeType |e#1@@2|)))
)) (or (|Seq#Contains| |bvars#0@@1| ($Box SeqType |x#0@@3|)) (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |body#0@@1|)))))) (ite (AST.Expr__Raw.Assign_q |e#0@@12|) (let ((|avals#0@@2| (AST.Expr__Raw.avals |e#0@@12|)))
(let ((|avars#0@@1| (AST.Expr__Raw.avars |e#0@@12|)))
 (and (not (|Seq#Contains| |avars#0@@1| ($Box SeqType |x#0@@3|))) (forall ((|e#2@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#2@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#0@@2| ($Box DatatypeTypeType |e#2@@0|))) (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |e#2@@0|))
 :qid |VarUnchangeddfy.32:32|
 :skolemid |645|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |e#2@@0|))
 :pattern ( (|Seq#Contains| |avals#0@@2| ($Box DatatypeTypeType |e#2@@0|)))
))))) (ite (AST.Expr__Raw.If_q |e#0@@12|) (let ((|els#0@@1| (AST.Expr__Raw.els |e#0@@12|)))
(let ((|thn#0@@1| (AST.Expr__Raw.thn |e#0@@12|)))
(let ((|cond#0@@1| (AST.Expr__Raw.cond |e#0@@12|)))
 (and (and (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |cond#0@@1|) (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |thn#0@@1|)) (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |els#0@@1|))))) (ite (AST.Expr__Raw.Op_q |e#0@@12|) (let ((|oe2#0@@0| (AST.Expr__Raw.oe2 |e#0@@12|)))
(let ((|oe1#0@@0| (AST.Expr__Raw.oe1 |e#0@@12|)))
 (and (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |oe1#0@@0|) (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |oe2#0@@0|)))) (let ((|es#0@@12| (AST.Expr__Raw.es |e#0@@12|)))
(forall ((|e#3@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#3@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#0@@12| ($Box DatatypeTypeType |e#3@@0|))) (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |e#3@@0|))
 :qid |VarUnchangeddfy.38:16|
 :skolemid |646|
 :pattern ( (VarUnchanged.__default.VarUnchanged $ly@@12 |x#0@@3| |e#3@@0|))
 :pattern ( (|Seq#Contains| |es#0@@12| ($Box DatatypeTypeType |e#3@@0|)))
))))))))))))
 :qid |VarUnchangeddfy.17:13|
 :skolemid |651|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@12) |x#0@@3| |e#0@@12|))
))))
(assert (forall ((Utils.Result$T@@8 T@U) (d@@38 T@U) ) (!  (=> ($Is DatatypeTypeType d@@38 (Tclass.Utils.Result Utils.Result$T@@8)) (or (Utils.Result.Success_q d@@38) (Utils.Result.Failure_q d@@38)))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( (Utils.Result.Failure_q d@@38) ($Is DatatypeTypeType d@@38 (Tclass.Utils.Result Utils.Result$T@@8)))
 :pattern ( (Utils.Result.Success_q d@@38) ($Is DatatypeTypeType d@@38 (Tclass.Utils.Result Utils.Result$T@@8)))
)))
(assert (forall ((Utils.Option$T@@3 T@U) (d@@39 T@U) ) (!  (=> ($Is DatatypeTypeType d@@39 (Tclass.Utils.Option Utils.Option$T@@3)) (or (Utils.Option.Some_q d@@39) (Utils.Option.None_q d@@39)))
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( (Utils.Option.None_q d@@39) ($Is DatatypeTypeType d@@39 (Tclass.Utils.Option Utils.Option$T@@3)))
 :pattern ( (Utils.Option.Some_q d@@39) ($Is DatatypeTypeType d@@39 (Tclass.Utils.Option Utils.Option$T@@3)))
)))
(assert (forall ((Utils.Result$T@@9 T@U) (this@@5 T@U) ) (!  (=> (or (|Utils.Result.IsFailure#canCall| Utils.Result$T@@9 (Lit DatatypeTypeType this@@5)) ($Is DatatypeTypeType this@@5 (Tclass.Utils.Result Utils.Result$T@@9))) (= (Utils.Result.IsFailure Utils.Result$T@@9 (Lit DatatypeTypeType this@@5)) (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Failure_q (Lit DatatypeTypeType this@@5)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |998|
 :pattern ( (Utils.Result.IsFailure Utils.Result$T@@9 (Lit DatatypeTypeType this@@5)))
)))
(assert (forall ((a@@19 T@U) (b@@19 T@U) ) (!  (=> (|Set#Equal| a@@19 b@@19) (= a@@19 b@@19))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@19 b@@19))
)))
(assert (forall ((a@@20 T@U) (b@@20 T@U) ) (!  (=> (|Seq#Equal| a@@20 b@@20) (= a@@20 b@@20))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@20 b@@20))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@15| T@U) (|res#0@@4| T@U) ) (!  (=> (or (|VarUnchanged.__default.ResultSeqSameX#canCall| (Lit DatatypeTypeType |st#0@@15|) (Lit DatatypeTypeType |res#0@@4|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@15| Tclass.VarUnchanged.S) ($Is DatatypeTypeType |res#0@@4| (Tclass.Utils.Result (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt))))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Success_q (Lit DatatypeTypeType |res#0@@4|))))) (and (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType |res#0@@4|))))) (let ((|ctx#3| (Lit MapType ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType |res#0@@4|)))))))))
 (and (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st#0@@15|)) (=> (U_2_bool (Lit boolType (bool_2_U (Utils.Option.Some_q (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0@@15|))))))) (and (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st#0@@15|)) (=> (|Set#IsMember| (|Map#Domain| |ctx#3|) ($Box SeqType (Lit SeqType ($Unbox SeqType (Utils.Option.value (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0@@15|)))))))) (and (and (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st#0@@15|)) (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st#0@@15|))) (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st#0@@15|)))))))))) (= (VarUnchanged.__default.ResultSeqSameX (Lit DatatypeTypeType |st#0@@15|) (Lit DatatypeTypeType |res#0@@4|)) (ite (Utils.Result.Success_q (Lit DatatypeTypeType |res#0@@4|)) (let ((|ctx#2| (Lit MapType ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.value (Lit DatatypeTypeType |res#0@@4|)))))))))
 (=> (Utils.Option.Some_q (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0@@15|)))) (and (|Set#IsMember| (Lit SetType (|Map#Domain| |ctx#2|)) ($Box SeqType (Lit SeqType ($Unbox SeqType (Utils.Option.value (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0@@15|)))))))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st#0@@15|)))) ($Box SeqType (Lit SeqType ($Unbox SeqType (Utils.Option.value (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0@@15|)))))))))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#2|) ($Box SeqType (Lit SeqType ($Unbox SeqType (Utils.Option.value (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0@@15|)))))))))))))) true))))
 :qid |VarUnchangeddfy.52:34|
 :weight 3
 :skolemid |700|
 :pattern ( (VarUnchanged.__default.ResultSeqSameX (Lit DatatypeTypeType |st#0@@15|) (Lit DatatypeTypeType |res#0@@4|)))
))))
(assert (forall (($ly@@13 T@U) (|es#0@@13| T@U) (|ctx#0@@8| T@U) ) (!  (=> (or (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@13|) |ctx#0@@8|) (and ($Is SeqType |es#0@@13| (TSeq Tclass.AST.Expr)) ($Is MapType |ctx#0@@8| (TMap (TSeq TChar) TInt)))) (and (=> (not (|Seq#Equal| |es#0@@13| |Seq#Empty|)) (and (|Interp.__default.InterpExpr#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@13|) (LitInt 0))) |ctx#0@@8|) (let ((|valueOrError0#1@@0| (Interp.__default.InterpExpr ($LS $ly@@13) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@13|) (LitInt 0))) |ctx#0@@8|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|) (let ((|ctx1#1@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|))))))
 (and (|Interp.__default.InterpExprs#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@13|) (LitInt 1))) |ctx1#1@@1|) (let ((|valueOrError1#1@@0| (Interp.__default.InterpExprs ($LS $ly@@13) (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@13|) (LitInt 1))) |ctx1#1@@1|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|)))))))))))) (= (Interp.__default.InterpExprs ($LS $ly@@13) (Lit SeqType |es#0@@13|) |ctx#0@@8|) (ite (|Seq#Equal| |es#0@@13| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box MapType |ctx#0@@8|)))) (let ((|valueOrError0#1@@1| (Interp.__default.InterpExpr ($LS $ly@@13) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@13|) (LitInt 0))) |ctx#0@@8|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1@@1|) (let ((|ctx1#1@@2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@1|))))))
(let ((|v#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@1|)))))))
(let ((|valueOrError1#1@@1| (Interp.__default.InterpExprs ($LS $ly@@13) (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@13|) (LitInt 1))) |ctx1#1@@2|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@1|) (let ((|ctx2#1@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@1|))))))
(let ((|vs#1@@0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@1|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |v#1|))) |vs#1@@0|)) ($Box MapType |ctx2#1@@0|))))))))))))))))
 :qid |Interpdfy.69:12|
 :weight 3
 :skolemid |1222|
 :pattern ( (Interp.__default.InterpExprs ($LS $ly@@13) (Lit SeqType |es#0@@13|) |ctx#0@@8|))
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
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TInt) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@10 TInt))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TBool) (and (= ($Box boolType ($Unbox boolType bx@@11)) bx@@11) ($Is boolType ($Unbox boolType bx@@11) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@11 TBool))
)))
(assert (= (Ctor charType) 9))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 TChar) (and (= ($Box charType ($Unbox charType bx@@12)) bx@@12) ($Is charType ($Unbox charType bx@@12) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@12 TChar))
)))
(assert (forall ((a@@21 T@U) (b@@21 T@U) ) (!  (=> (and (AST.Expr__Raw.Assign_q a@@21) (AST.Expr__Raw.Assign_q b@@21)) (= (|AST.Expr__Raw#Equal| a@@21 b@@21)  (and (|Seq#Equal| (AST.Expr__Raw.avars a@@21) (AST.Expr__Raw.avars b@@21)) (|Seq#Equal| (AST.Expr__Raw.avals a@@21) (AST.Expr__Raw.avals b@@21)))))
 :qid |unknown.0:0|
 :skolemid |1136|
 :pattern ( (|AST.Expr__Raw#Equal| a@@21 b@@21) (AST.Expr__Raw.Assign_q a@@21))
 :pattern ( (|AST.Expr__Raw#Equal| a@@21 b@@21) (AST.Expr__Raw.Assign_q b@@21))
)))
(assert (forall ((v@@5 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@5) t@@2) ($Is T@@2 v@@5 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@5) t@@2))
)))
(assert (forall ((s@@15 T@U) ) (! (<= 0 (|Seq#Length| s@@15))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@15))
)))
(assert (forall ((s@@16 T@U) (i@@10 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 j@@2)) (<= j@@2 (|Seq#Length| s@@16))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@16 i@@10) (|Seq#Drop| s@@16 j@@2))) (|Seq#Rank| s@@16)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |270|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@16 i@@10) (|Seq#Drop| s@@16 j@@2))))
)))
(assert (forall ((a@@22 T@U) (b@@22 T@U) ) (!  (=> (and (Utils.Result.Failure_q a@@22) (Utils.Result.Failure_q b@@22)) (|Utils.Result#Equal| a@@22 b@@22))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( (|Utils.Result#Equal| a@@22 b@@22) (Utils.Result.Failure_q a@@22))
 :pattern ( (|Utils.Result#Equal| a@@22 b@@22) (Utils.Result.Failure_q b@@22))
)))
(assert (forall ((a@@23 T@U) (b@@23 T@U) ) (!  (=> (and (Utils.Option.None_q a@@23) (Utils.Option.None_q b@@23)) (|Utils.Option#Equal| a@@23 b@@23))
 :qid |unknown.0:0|
 :skolemid |1026|
 :pattern ( (|Utils.Option#Equal| a@@23 b@@23) (Utils.Option.None_q a@@23))
 :pattern ( (|Utils.Option#Equal| a@@23 b@@23) (Utils.Option.None_q b@@23))
)))
(assert (forall ((a@@24 T@U) (b@@24 T@U) ) (!  (=> (and (AST.BinOp.Add_q a@@24) (AST.BinOp.Add_q b@@24)) (|AST.BinOp#Equal| a@@24 b@@24))
 :qid |unknown.0:0|
 :skolemid |1037|
 :pattern ( (|AST.BinOp#Equal| a@@24 b@@24) (AST.BinOp.Add_q a@@24))
 :pattern ( (|AST.BinOp#Equal| a@@24 b@@24) (AST.BinOp.Add_q b@@24))
)))
(assert (forall ((a@@25 T@U) (b@@25 T@U) ) (!  (=> (and (AST.BinOp.Sub_q a@@25) (AST.BinOp.Sub_q b@@25)) (|AST.BinOp#Equal| a@@25 b@@25))
 :qid |unknown.0:0|
 :skolemid |1038|
 :pattern ( (|AST.BinOp#Equal| a@@25 b@@25) (AST.BinOp.Sub_q a@@25))
 :pattern ( (|AST.BinOp#Equal| a@@25 b@@25) (AST.BinOp.Sub_q b@@25))
)))
(assert (forall ((a@@26 T@U) (b@@26 T@U) ) (!  (=> (and (AST.BinOp.Mul_q a@@26) (AST.BinOp.Mul_q b@@26)) (|AST.BinOp#Equal| a@@26 b@@26))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( (|AST.BinOp#Equal| a@@26 b@@26) (AST.BinOp.Mul_q a@@26))
 :pattern ( (|AST.BinOp#Equal| a@@26 b@@26) (AST.BinOp.Mul_q b@@26))
)))
(assert (forall (($heap T@U) (|$fh$0x#0| T@U) ) (! (= (AST.Expr__Raw.WellFormed__Single |$fh$0x#0|) (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $heap |AST.Expr__Raw.WellFormed__Single#Handle| ($Box DatatypeTypeType |$fh$0x#0|)))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1201|
 :pattern ( (AST.Expr__Raw.WellFormed__Single |$fh$0x#0|) ($IsGoodHeap $heap))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@16| T@U) (|e#0@@13| T@U) ) (!  (=> (or (|VarUnchanged.__default.P__Fail#canCall| |st#0@@16| |e#0@@13|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@16| Tclass.VarUnchanged.S) ($Is DatatypeTypeType |e#0@@13| Tclass.AST.Expr)))) (and (and (and (VarUnchanged.MState.MState_q |st#0@@16|) (|Interp.__default.InterpExpr#canCall| |e#0@@13| (VarUnchanged.MState.ctx |st#0@@16|))) (|VarUnchanged.__default.Pre#canCall| |st#0@@16| |e#0@@13|)) (= (VarUnchanged.__default.P__Fail |st#0@@16| |e#0@@13|) (let ((|res#0@@5| (Interp.__default.InterpExpr ($LS $LZ) |e#0@@13| (VarUnchanged.MState.ctx |st#0@@16|))))
 (=> (VarUnchanged.__default.Pre |st#0@@16| |e#0@@13|) (Utils.Result.Failure_q |res#0@@5|))))))
 :qid |Inductiondfy.36:26|
 :skolemid |737|
 :pattern ( (VarUnchanged.__default.P__Fail |st#0@@16| |e#0@@13|))
))))
(assert (forall ((v@@6 T@U) (t0@@5 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@5) h@@2) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@13) ($IsAllocBox bx@@13 t0@@5 h@@2))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@6 bx@@13))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@5) h@@2))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@1)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((t@@4 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@2))
)))
(assert (forall ((t@@5 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@5 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@3))
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
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#0#0#0@@0| T@U) (|a#0#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#VarUnchanged.MState.MState| |a#0#0#0@@0| |a#0#1#0@@0|)) |##VarUnchanged.MState.MState|)
 :qid |VarUnchangeddfy.73:28|
 :skolemid |938|
 :pattern ( (|#VarUnchanged.MState.MState| |a#0#0#0@@0| |a#0#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (VarUnchanged.MState.x (|#VarUnchanged.MState.MState| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#0#0@@0|)
 :qid |VarUnchangeddfy.73:28|
 :skolemid |946|
 :pattern ( (|#VarUnchanged.MState.MState| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= (VarUnchanged.MState.ctx (|#VarUnchanged.MState.MState| |a#6#0#0@@0| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |VarUnchangeddfy.73:28|
 :skolemid |948|
 :pattern ( (|#VarUnchanged.MState.MState| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Assign| |a#46#0#0| |a#46#1#0|)) |##AST.Expr_Raw.Assign|)
 :qid |ASTdfy.18:14|
 :skolemid |1076|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#46#0#0| |a#46#1#0|))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= (AST.Expr__Raw.avars (|#AST.Expr_Raw.Assign| |a#50#0#0| |a#50#1#0|)) |a#50#0#0|)
 :qid |ASTdfy.18:14|
 :skolemid |1084|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#50#0#0| |a#50#1#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= (AST.Expr__Raw.avals (|#AST.Expr_Raw.Assign| |a#53#0#0| |a#53#1#0|)) |a#53#1#0|)
 :qid |ASTdfy.18:14|
 :skolemid |1087|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall ((Utils.Result$T@@10 T@U) (Utils.Result.PropagateFailure$U@@2 T@U) (this@@6 T@U) ) (!  (=> (or (|Utils.Result.PropagateFailure#canCall| Utils.Result$T@@10 Utils.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@6)) (and ($Is DatatypeTypeType this@@6 (Tclass.Utils.Result Utils.Result$T@@10)) (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Failure_q (Lit DatatypeTypeType this@@6))))))) (= (Utils.Result.PropagateFailure Utils.Result$T@@10 Utils.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@6)) (Lit DatatypeTypeType |#Utils.Result.Failure|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1003|
 :pattern ( (Utils.Result.PropagateFailure Utils.Result$T@@10 Utils.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@6)))
)))
(assert (forall ((|e#0@@14| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0@@14| Tclass.AST.Expr__Raw) (= (|AST.Expr__Raw.WellFormed__Single#requires| |e#0@@14|) true))
 :qid |ASTdfy.71:46|
 :skolemid |1193|
 :pattern ( (|AST.Expr__Raw.WellFormed__Single#requires| |e#0@@14|))
)))
(assert (forall ((v@@7 T@U) (t0@@6 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@7 (TSeq t0@@6) h@@3) (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length| v@@7))) ($IsAllocBox (|Seq#Index| v@@7 i@@11) t0@@6 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@7 i@@11))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@7 (TSeq t0@@6) h@@3))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@17| T@U) (|vars#0@@4| T@U) (|vals#0@@1| T@U) ) (!  (=> (or (|VarUnchanged.__default.BindStartScope#canCall| |st#0@@17| |vars#0@@4| |vals#0@@1|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@17| Tclass.VarUnchanged.S) ($Is SeqType |vars#0@@4| (TSeq (TSeq TChar)))) ($Is SeqType |vals#0@@1| (TSeq TInt))) (VarUnchanged.__default.UpdateState__Pre |st#0@@17| |vars#0@@4| |vals#0@@1|)))) ($Is DatatypeTypeType (VarUnchanged.__default.BindStartScope |st#0@@17| |vars#0@@4| |vals#0@@1|) Tclass.VarUnchanged.S))
 :qid |Inductiondfy.58:33|
 :skolemid |790|
 :pattern ( (VarUnchanged.__default.BindStartScope |st#0@@17| |vars#0@@4| |vals#0@@1|))
))))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) ) (! (= (|#AST.Expr_Raw.Bind| (Lit SeqType |a#37#0#0|) (Lit SeqType |a#37#1#0|) (Lit DatatypeTypeType |a#37#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#37#0#0| |a#37#1#0| |a#37#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |1067|
 :pattern ( (|#AST.Expr_Raw.Bind| (Lit SeqType |a#37#0#0|) (Lit SeqType |a#37#1#0|) (Lit DatatypeTypeType |a#37#2#0|)))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) (|a#59#2#0| T@U) ) (! (= (|#AST.Expr_Raw.If| (Lit DatatypeTypeType |a#59#0#0|) (Lit DatatypeTypeType |a#59#1#0|) (Lit DatatypeTypeType |a#59#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.If| |a#59#0#0| |a#59#1#0| |a#59#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1098|
 :pattern ( (|#AST.Expr_Raw.If| (Lit DatatypeTypeType |a#59#0#0|) (Lit DatatypeTypeType |a#59#1#0|) (Lit DatatypeTypeType |a#59#2#0|)))
)))
(assert (forall ((|a#69#0#0| T@U) (|a#69#1#0| T@U) (|a#69#2#0| T@U) ) (! (= (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |a#69#0#0|) (Lit DatatypeTypeType |a#69#1#0|) (Lit DatatypeTypeType |a#69#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Op| |a#69#0#0| |a#69#1#0| |a#69#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1113|
 :pattern ( (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |a#69#0#0|) (Lit DatatypeTypeType |a#69#1#0|) (Lit DatatypeTypeType |a#69#2#0|)))
)))
(assert (forall (($ly@@14 T@U) (|e#0@@15| T@U) (|ctx#0@@9| T@U) ) (!  (=> (or (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@15|) (Lit MapType |ctx#0@@9|)) (and ($Is DatatypeTypeType |e#0@@15| Tclass.AST.Expr) ($Is MapType |ctx#0@@9| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@15|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@15|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@15|))))) (let ((|body#5| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|bvals#5| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|bvars#5| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@15|)))))
 (and (|Interp.__default.InterpExprs#canCall| |bvals#5| (Lit MapType |ctx#0@@9|)) (let ((|valueOrError0#5| (Interp.__default.InterpExprs ($LS $ly@@14) |bvals#5| (Lit MapType |ctx#0@@9|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|) (let ((|ctx1#20| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|))))))
(let ((|vs#15| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|))))))
 (and (|Interp.__default.VarsAndValuesToContext#canCall| |bvars#5| |vs#15|) (let ((|bindings#10| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#5| |vs#15|)))
(let ((|ctx2#10| (|Map#Merge| |ctx1#20| |bindings#10|)))
 (and (|Interp.__default.InterpExpr#canCall| |body#5| |ctx2#10|) (let ((|valueOrError1#5| (Interp.__default.InterpExpr ($LS $ly@@14) |body#5| |ctx2#10|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|))))))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@15|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@15|))))) (let ((|avals#5| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|avars#5| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@15|)))))
 (and (|Interp.__default.InterpExprs#canCall| |avals#5| (Lit MapType |ctx#0@@9|)) (let ((|valueOrError2#5| (Interp.__default.InterpExprs ($LS $ly@@14) |avals#5| (Lit MapType |ctx#0@@9|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|) (let ((|vs#16| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|))))))
(|Interp.__default.VarsAndValuesToContext#canCall| |avars#5| |vs#16|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@15|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@15|))))) (let ((|els#5| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|thn#5| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|cond#5| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@15|)))))
 (and (|Interp.__default.InterpExpr#canCall| |cond#5| (Lit MapType |ctx#0@@9|)) (let ((|valueOrError3#5| (Interp.__default.InterpExpr ($LS $ly@@14) |cond#5| (Lit MapType |ctx#0@@9|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|) (let ((|ctx_cond#5| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|))))))
(let ((|condv#5| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|)))))))
 (and (=> (or (not (= |condv#5| 0)) (not true)) (|Interp.__default.InterpExpr#canCall| |thn#5| |ctx_cond#5|)) (=> (= |condv#5| 0) (|Interp.__default.InterpExpr#canCall| |els#5| |ctx_cond#5|)))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@15|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@15|))))) (let ((|e2#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|e1#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|op#5| (Lit DatatypeTypeType (AST.Expr__Raw.op (Lit DatatypeTypeType |e#0@@15|)))))
 (and (|Interp.__default.InterpExpr#canCall| |e1#5| (Lit MapType |ctx#0@@9|)) (let ((|valueOrError4#5| (Interp.__default.InterpExpr ($LS $ly@@14) |e1#5| (Lit MapType |ctx#0@@9|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|) (let ((|ctx1#22| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|))))))
(let ((|v1#5| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|)))))))
 (and (|Interp.__default.InterpExpr#canCall| |e2#5| |ctx1#22|) (let ((|valueOrError5#5| (Interp.__default.InterpExpr ($LS $ly@@14) |e2#5| |ctx1#22|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|) (let ((|v2#5| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|)))))))
(|Interp.__default.InterpBinOp#canCall| |op#5| |v1#5| |v2#5|)))))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@15|)))))) (let ((|es#5| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@15|)))))
 (and (|Interp.__default.InterpExprs#canCall| |es#5| (Lit MapType |ctx#0@@9|)) (let ((|valueOrError6#5| (Interp.__default.InterpExprs ($LS $ly@@14) |es#5| (Lit MapType |ctx#0@@9|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#5|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#5|)))))))))))))))) (= (Interp.__default.InterpExpr ($LS $ly@@14) (Lit DatatypeTypeType |e#0@@15|) (Lit MapType |ctx#0@@9|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@15|)) (let ((|name#4| (Lit SeqType (AST.Expr__Raw.name (Lit DatatypeTypeType |e#0@@15|)))))
(ite (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType |ctx#0@@9|))) ($Box SeqType |name#4|)) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |ctx#0@@9|)) ($Box SeqType |name#4|)) ($Box MapType (Lit MapType |ctx#0@@9|))))) |#Utils.Result.Failure|)) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@15|)) (let ((|n#4| (LitInt (AST.Expr__Raw.n (Lit DatatypeTypeType |e#0@@15|)))))
(Lit DatatypeTypeType (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |n#4|)) ($Box MapType (Lit MapType |ctx#0@@9|)))))))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@15|)) (let ((|body#4| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|bvals#4| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|bvars#4| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|valueOrError0#4| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $ly@@14) |bvals#4| (Lit MapType |ctx#0@@9|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#4|) (let ((|ctx1#16| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#4|)))))))
(let ((|vs#12| ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#4|)))))))
(let ((|bindings#8| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#4| |vs#12|)))
(let ((|ctx2#8| (|Map#Merge| |ctx1#16| |bindings#8|)))
(let ((|valueOrError1#4| (Interp.__default.InterpExpr ($LS $ly@@14) |body#4| |ctx2#8|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#4|) (let ((|ctx3#4| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#4|))))))
(let ((|bodyv#4| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#4|)))))))
(let ((|ctx4#4| (|Map#Merge| |ctx1#16| (|Map#Subtract| |ctx3#4| (|Set#FromBoogieMap| (|lambda#7| (TSeq TChar) |bvars#4|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |bodyv#4|)) ($Box MapType |ctx4#4|)))))))))))))))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@15|)) (let ((|avals#4| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|avars#4| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|valueOrError2#4| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $ly@@14) |avals#4| (Lit MapType |ctx#0@@9|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#4|) (let ((|ctx1#17| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#4|)))))))
(let ((|vs#13| ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#4|)))))))
(let ((|bindings#9| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |avars#4| |vs#13|)))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType (|Map#Merge| |ctx1#17| |bindings#9|)))))))))))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@15|)) (let ((|els#4| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|thn#4| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|cond#4| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|valueOrError3#4| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $ly@@14) |cond#4| (Lit MapType |ctx#0@@9|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#4|) (let ((|ctx_cond#4| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#4|)))))))
(let ((|condv#4| (U_2_int ($Unbox intType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#4|))))))))
(ite  (or (not (= |condv#4| 0)) (not true)) (Interp.__default.InterpExpr ($LS $ly@@14) |thn#4| |ctx_cond#4|) (Interp.__default.InterpExpr ($LS $ly@@14) |els#4| |ctx_cond#4|))))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@15|)) (let ((|e2#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|e1#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|op#4| (Lit DatatypeTypeType (AST.Expr__Raw.op (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|valueOrError4#4| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $ly@@14) |e1#4| (Lit MapType |ctx#0@@9|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#4|) (let ((|ctx1#18| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#4|)))))))
(let ((|v1#4| (U_2_int ($Unbox intType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#4|))))))))
(let ((|valueOrError5#4| (Interp.__default.InterpExpr ($LS $ly@@14) |e2#4| |ctx1#18|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#4|) (let ((|ctx2#9| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#4|))))))
(let ((|v2#4| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#4|)))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Interp.__default.InterpBinOp |op#4| |v1#4| |v2#4|))) ($Box MapType |ctx2#9|))))))))))))))) (let ((|es#4| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@15|)))))
(let ((|valueOrError6#4| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $ly@@14) |es#4| (Lit MapType |ctx#0@@9|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#4|) (let ((|ctx1#19| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#4|)))))))
(let ((|vs#14| ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#4|)))))))
(ite (|Seq#Equal| |vs#14| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType |ctx1#19|)))) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (|Seq#Index| |vs#14| (- (|Seq#Length| |vs#14|) 1)) ($Box MapType |ctx1#19|)))))))))))))))))))
 :qid |Interpdfy.24:12|
 :weight 3
 :skolemid |1216|
 :pattern ( (Interp.__default.InterpExpr ($LS $ly@@14) (Lit DatatypeTypeType |e#0@@15|) (Lit MapType |ctx#0@@9|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@15 T@U) (|x#0@@4| T@U) (|e#0@@16| T@U) ) (!  (=> (or (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@4|) (Lit DatatypeTypeType |e#0@@16|)) (and (< 0 $FunctionContextHeight) (and ($Is SeqType |x#0@@4| (TSeq TChar)) ($Is DatatypeTypeType |e#0@@16| Tclass.AST.Expr)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@16|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@16|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@16|))))) (let ((|body#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|bvals#5@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|bvars#5@@0| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@16|)))))
 (and (forall ((|e#16| T@U) ) (!  (=> ($Is DatatypeTypeType |e#16| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#5@@0| ($Box DatatypeTypeType |e#16|)) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@4|) |e#16|)))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |663|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) |x#0@@4| |e#16|))
 :pattern ( (|Seq#Contains| |bvals#5@@0| ($Box DatatypeTypeType |e#16|)))
)) (=> (forall ((|e#16@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#16@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#5@@0| ($Box DatatypeTypeType |e#16@@0|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |e#16@@0|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |664|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) |x#0@@4| |e#16@@0|))
 :pattern ( (|Seq#Contains| |bvals#5@@0| ($Box DatatypeTypeType |e#16@@0|)))
)) (=> (not (|Seq#Contains| |bvars#5@@0| ($Box SeqType |x#0@@4|))) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@4|) |body#5@@0|)))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@16|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@16|))))) (let ((|avals#5@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|avars#5@@0| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@16|)))))
 (=> (not (|Seq#Contains| |avars#5@@0| ($Box SeqType |x#0@@4|))) (forall ((|e#17| T@U) ) (!  (=> ($Is DatatypeTypeType |e#17| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#5@@0| ($Box DatatypeTypeType |e#17|)) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@4|) |e#17|)))
 :qid |VarUnchangeddfy.32:32|
 :skolemid |665|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) |x#0@@4| |e#17|))
 :pattern ( (|Seq#Contains| |avals#5@@0| ($Box DatatypeTypeType |e#17|)))
)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@16|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@16|))))) (let ((|els#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|thn#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|cond#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@16|)))))
 (and (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@4|) |cond#5@@0|) (=> (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |cond#5@@0|) (and (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@4|) |thn#5@@0|) (=> (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |thn#5@@0|) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@4|) |els#5@@0|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@16|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@16|))))) (let ((|oe2#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|oe1#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@16|)))))
 (and (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@4|) |oe1#5|) (=> (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |oe1#5|) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@4|) |oe2#5|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@16|)))))) (let ((|es#5@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@16|)))))
(forall ((|e#18| T@U) ) (!  (=> ($Is DatatypeTypeType |e#18| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#5@@0| ($Box DatatypeTypeType |e#18|)) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType |x#0@@4|) |e#18|)))
 :qid |VarUnchangeddfy.38:16|
 :skolemid |666|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) |x#0@@4| |e#18|))
 :pattern ( (|Seq#Contains| |es#5@@0| ($Box DatatypeTypeType |e#18|)))
))))))))))))) (= (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) (Lit DatatypeTypeType |e#0@@16|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@16|)) (U_2_bool (Lit boolType (bool_2_U false))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@16|)) (U_2_bool (Lit boolType (bool_2_U false))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@16|)) (let ((|body#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|bvals#4@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|bvars#4@@0| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@16|)))))
 (and (forall ((|e#13| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#13| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#4@@0| ($Box DatatypeTypeType |e#13|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |e#13|))
 :qid |VarUnchangeddfy.28:17|
 :skolemid |660|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) |x#0@@4| |e#13|))
 :pattern ( (|Seq#Contains| |bvals#4@@0| ($Box DatatypeTypeType |e#13|)))
)) (or (|Seq#Contains| |bvars#4@@0| ($Box SeqType |x#0@@4|)) (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |body#4@@0|)))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@16|)) (let ((|avals#4@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|avars#4@@0| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@16|)))))
 (and (not (|Seq#Contains| |avars#4@@0| ($Box SeqType |x#0@@4|))) (forall ((|e#14| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#14| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#4@@0| ($Box DatatypeTypeType |e#14|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |e#14|))
 :qid |VarUnchangeddfy.32:32|
 :skolemid |661|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) |x#0@@4| |e#14|))
 :pattern ( (|Seq#Contains| |avals#4@@0| ($Box DatatypeTypeType |e#14|)))
))))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@16|)) (U_2_bool (let ((|els#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|thn#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|cond#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@16|)))))
(Lit boolType (bool_2_U  (and (and (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |cond#4@@0|) (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |thn#4@@0|)) (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |els#4@@0|)))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@16|)) (U_2_bool (let ((|oe2#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|oe1#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@16|)))))
(Lit boolType (bool_2_U  (and (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |oe1#4|) (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |oe2#4|))))))) (let ((|es#4@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@16|)))))
(forall ((|e#15| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#15| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#4@@0| ($Box DatatypeTypeType |e#15|))) (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) |e#15|))
 :qid |VarUnchangeddfy.38:16|
 :skolemid |662|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) |x#0@@4| |e#15|))
 :pattern ( (|Seq#Contains| |es#4@@0| ($Box DatatypeTypeType |e#15|)))
))))))))))))
 :qid |VarUnchangeddfy.17:13|
 :weight 3
 :skolemid |667|
 :pattern ( (VarUnchanged.__default.VarUnchanged ($LS $ly@@15) (Lit SeqType |x#0@@4|) (Lit DatatypeTypeType |e#0@@16|)))
))))
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
 :skolemid |691|
 :pattern ( (Tclass.Utils.Result Utils.Result$T@@11))
)))
(assert (forall ((Utils.Option$T@@4 T@U) ) (! (= (Tclass.Utils.Option_0 (Tclass.Utils.Option Utils.Option$T@@4)) Utils.Option$T@@4)
 :qid |unknown.0:0|
 :skolemid |786|
 :pattern ( (Tclass.Utils.Option Utils.Option$T@@4))
)))
(assert (forall ((|a#0#0#0@@1| T@U) ) (! (= (DatatypeCtorId (|#Utils.Result.Success| |a#0#0#0@@1|)) |##Utils.Result.Success|)
 :qid |Utilsdfy.23:34|
 :skolemid |976|
 :pattern ( (|#Utils.Result.Success| |a#0#0#0@@1|))
)))
(assert (forall ((|a#4#0#0@@1| T@U) ) (! (= (Utils.Result.value (|#Utils.Result.Success| |a#4#0#0@@1|)) |a#4#0#0@@1|)
 :qid |Utilsdfy.23:34|
 :skolemid |984|
 :pattern ( (|#Utils.Result.Success| |a#4#0#0@@1|))
)))
(assert (forall ((|a#0#0#0@@2| T@U) ) (! (= (DatatypeCtorId (|#Utils.Option.Some| |a#0#0#0@@2|)) |##Utils.Option.Some|)
 :qid |Utilsdfy.42:29|
 :skolemid |1009|
 :pattern ( (|#Utils.Option.Some| |a#0#0#0@@2|))
)))
(assert (forall ((|a#4#0#0@@2| T@U) ) (! (= (Utils.Option.value (|#Utils.Option.Some| |a#4#0#0@@2|)) |a#4#0#0@@2|)
 :qid |Utilsdfy.42:29|
 :skolemid |1017|
 :pattern ( (|#Utils.Option.Some| |a#4#0#0@@2|))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Var| |a#22#0#0|)) |##AST.Expr_Raw.Var|)
 :qid |ASTdfy.15:11|
 :skolemid |1041|
 :pattern ( (|#AST.Expr_Raw.Var| |a#22#0#0|))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= (AST.Expr__Raw.name (|#AST.Expr_Raw.Var| |a#26#0#0|)) |a#26#0#0|)
 :qid |ASTdfy.15:11|
 :skolemid |1048|
 :pattern ( (|#AST.Expr_Raw.Var| |a#26#0#0|))
)))
(assert (forall ((|a#29#0#0| Int) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Literal| |a#29#0#0|)) |##AST.Expr_Raw.Literal|)
 :qid |ASTdfy.16:15|
 :skolemid |1051|
 :pattern ( (|#AST.Expr_Raw.Literal| |a#29#0#0|))
)))
(assert (forall ((|a#33#0#0| Int) ) (! (= (AST.Expr__Raw.n (|#AST.Expr_Raw.Literal| |a#33#0#0|)) |a#33#0#0|)
 :qid |ASTdfy.16:15|
 :skolemid |1058|
 :pattern ( (|#AST.Expr_Raw.Literal| |a#33#0#0|))
)))
(assert (forall ((|a#76#0#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Seq| |a#76#0#0|)) |##AST.Expr_Raw.Seq|)
 :qid |ASTdfy.21:11|
 :skolemid |1120|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#76#0#0|))
)))
(assert (forall ((|a#80#0#0| T@U) ) (! (= (AST.Expr__Raw.es (|#AST.Expr_Raw.Seq| |a#80#0#0|)) |a#80#0#0|)
 :qid |ASTdfy.21:11|
 :skolemid |1127|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#80#0#0|))
)))
(assert (forall ((x@@10 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@10))
)))
(assert (forall ((v@@8 T@U) (t0@@7 T@U) (t1@@4 T@U) (h@@4 T@U) ) (! (= ($IsAlloc MapType v@@8 (TMap t0@@7 t1@@4) h@@4) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@14) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@14) t1@@4 h@@4) ($IsAllocBox bx@@14 t0@@7 h@@4)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@14))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@14))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@8 (TMap t0@@7 t1@@4) h@@4))
)))
(assert (forall ((Utils.Result$T@@12 T@U) (this@@7 T@U) ) (!  (=> (or (|Utils.Result.Extract#canCall| Utils.Result$T@@12 this@@7) (and ($Is DatatypeTypeType this@@7 (Tclass.Utils.Result Utils.Result$T@@12)) (Utils.Result.Success_q this@@7))) ($IsBox (Utils.Result.Extract Utils.Result$T@@12 this@@7) Utils.Result$T@@12))
 :qid |unknown.0:0|
 :skolemid |1004|
 :pattern ( (Utils.Result.Extract Utils.Result$T@@12 this@@7))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (< (|Seq#Rank| |a#40#0#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#40#0#0| |a#40#1#0| |a#40#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |1070|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#40#0#0| |a#40#1#0| |a#40#2#0|))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (|a#43#2#0| T@U) ) (! (< (|Seq#Rank| |a#43#1#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#43#0#0| |a#43#1#0| |a#43#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |1073|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#43#0#0| |a#43#1#0| |a#43#2#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (|a#45#2#0| T@U) ) (! (< (DtRank |a#45#2#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#45#0#0| |a#45#1#0| |a#45#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |1075|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#45#0#0| |a#45#1#0| |a#45#2#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) (|a#61#2#0| T@U) ) (! (< (DtRank |a#61#0#0|) (DtRank (|#AST.Expr_Raw.If| |a#61#0#0| |a#61#1#0| |a#61#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1100|
 :pattern ( (|#AST.Expr_Raw.If| |a#61#0#0| |a#61#1#0| |a#61#2#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) (|a#63#2#0| T@U) ) (! (< (DtRank |a#63#1#0|) (DtRank (|#AST.Expr_Raw.If| |a#63#0#0| |a#63#1#0| |a#63#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1102|
 :pattern ( (|#AST.Expr_Raw.If| |a#63#0#0| |a#63#1#0| |a#63#2#0|))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) (|a#65#2#0| T@U) ) (! (< (DtRank |a#65#2#0|) (DtRank (|#AST.Expr_Raw.If| |a#65#0#0| |a#65#1#0| |a#65#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1104|
 :pattern ( (|#AST.Expr_Raw.If| |a#65#0#0| |a#65#1#0| |a#65#2#0|))
)))
(assert (forall ((|a#71#0#0| T@U) (|a#71#1#0| T@U) (|a#71#2#0| T@U) ) (! (< (DtRank |a#71#0#0|) (DtRank (|#AST.Expr_Raw.Op| |a#71#0#0| |a#71#1#0| |a#71#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1115|
 :pattern ( (|#AST.Expr_Raw.Op| |a#71#0#0| |a#71#1#0| |a#71#2#0|))
)))
(assert (forall ((|a#73#0#0| T@U) (|a#73#1#0| T@U) (|a#73#2#0| T@U) ) (! (< (DtRank |a#73#1#0|) (DtRank (|#AST.Expr_Raw.Op| |a#73#0#0| |a#73#1#0| |a#73#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1117|
 :pattern ( (|#AST.Expr_Raw.Op| |a#73#0#0| |a#73#1#0| |a#73#2#0|))
)))
(assert (forall ((|a#75#0#0| T@U) (|a#75#1#0| T@U) (|a#75#2#0| T@U) ) (! (< (DtRank |a#75#2#0|) (DtRank (|#AST.Expr_Raw.Op| |a#75#0#0| |a#75#1#0| |a#75#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1119|
 :pattern ( (|#AST.Expr_Raw.Op| |a#75#0#0| |a#75#1#0| |a#75#2#0|))
)))
(assert (forall ((Utils.Result$T@@13 T@U) (|a#2#0#0@@4| T@U) ) (! (= ($Is DatatypeTypeType (|#Utils.Result.Success| |a#2#0#0@@4|) (Tclass.Utils.Result Utils.Result$T@@13)) ($IsBox |a#2#0#0@@4| Utils.Result$T@@13))
 :qid |unknown.0:0|
 :skolemid |980|
 :pattern ( ($Is DatatypeTypeType (|#Utils.Result.Success| |a#2#0#0@@4|) (Tclass.Utils.Result Utils.Result$T@@13)))
)))
(assert (forall ((Utils.Option$T@@5 T@U) (|a#2#0#0@@5| T@U) ) (! (= ($Is DatatypeTypeType (|#Utils.Option.Some| |a#2#0#0@@5|) (Tclass.Utils.Option Utils.Option$T@@5)) ($IsBox |a#2#0#0@@5| Utils.Option$T@@5))
 :qid |unknown.0:0|
 :skolemid |1013|
 :pattern ( ($Is DatatypeTypeType (|#Utils.Option.Some| |a#2#0#0@@5|) (Tclass.Utils.Option Utils.Option$T@@5)))
)))
(assert (forall (($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (Requires1 Tclass.AST.Expr__Raw TBool $heap@@0 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@0|) (|AST.Expr__Raw.WellFormed__Single#requires| ($Unbox DatatypeTypeType |$fh$0x#0@@0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1199|
 :pattern ( (Requires1 Tclass.AST.Expr__Raw TBool $heap@@0 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@18| T@U) (|es#0@@14| T@U) ) (!  (=> (or (|VarUnchanged.__default.PreEs#canCall| |st#0@@18| |es#0@@14|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@18| Tclass.VarUnchanged.S) ($Is SeqType |es#0@@14| (TSeq Tclass.AST.Expr))))) (and (forall ((|e#0@@17| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0@@17| Tclass.AST.Expr) (=> (|Seq#Contains| |es#0@@14| ($Box DatatypeTypeType |e#0@@17|)) (|VarUnchanged.__default.Pre#canCall| |st#0@@18| |e#0@@17|)))
 :qid |VarUnchangeddfy.89:12|
 :skolemid |710|
 :pattern ( (VarUnchanged.__default.Pre |st#0@@18| |e#0@@17|))
 :pattern ( (|Seq#Contains| |es#0@@14| ($Box DatatypeTypeType |e#0@@17|)))
)) (= (VarUnchanged.__default.PreEs |st#0@@18| |es#0@@14|) (forall ((|e#0@@18| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#0@@18| Tclass.AST.Expr) (|Seq#Contains| |es#0@@14| ($Box DatatypeTypeType |e#0@@18|))) (VarUnchanged.__default.Pre |st#0@@18| |e#0@@18|))
 :qid |VarUnchangeddfy.89:12|
 :skolemid |709|
 :pattern ( (VarUnchanged.__default.Pre |st#0@@18| |e#0@@18|))
 :pattern ( (|Seq#Contains| |es#0@@14| ($Box DatatypeTypeType |e#0@@18|)))
)))))
 :qid |VarUnchangeddfy.87:25|
 :skolemid |711|
 :pattern ( (VarUnchanged.__default.PreEs |st#0@@18| |es#0@@14|))
))))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (DtRank |a#5#0#0@@0|) (DtRank (|#VarUnchanged.MState.MState| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |VarUnchangeddfy.73:28|
 :skolemid |947|
 :pattern ( (|#VarUnchanged.MState.MState| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (< (|Seq#Rank| |a#52#0#0|) (DtRank (|#AST.Expr_Raw.Assign| |a#52#0#0| |a#52#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |1086|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#52#0#0| |a#52#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (< (|Seq#Rank| |a#55#1#0|) (DtRank (|#AST.Expr_Raw.Assign| |a#55#0#0| |a#55#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |1089|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall (($ly@@16 T@U) (|vars#0@@5| T@U) (|values#0@@1| T@U) ) (!  (=> (or (|Interp.__default.VarsAndValuesToContext#canCall| |vars#0@@5| |values#0@@1|) (and (and ($Is SeqType |vars#0@@5| (TSeq (TSeq TChar))) ($Is SeqType |values#0@@1| (TSeq TInt))) (= (|Seq#Length| |vars#0@@5|) (|Seq#Length| |values#0@@1|)))) (and (=> (not (|Seq#Equal| |vars#0@@5| |Seq#Empty|)) (|Interp.__default.VarsAndValuesToContext#canCall| (|Seq#Drop| |vars#0@@5| (LitInt 1)) (|Seq#Drop| |values#0@@1| (LitInt 1)))) (= (Interp.__default.VarsAndValuesToContext ($LS $ly@@16) |vars#0@@5| |values#0@@1|) (ite (|Seq#Equal| |vars#0@@5| |Seq#Empty|) |Map#Empty| (|Map#Merge| (|Map#Build| |Map#Empty| (|Seq#Index| |vars#0@@5| (LitInt 0)) (|Seq#Index| |values#0@@1| (LitInt 0))) (Interp.__default.VarsAndValuesToContext $ly@@16 (|Seq#Drop| |vars#0@@5| (LitInt 1)) (|Seq#Drop| |values#0@@1| (LitInt 1))))))))
 :qid |Interpdfy.80:12|
 :skolemid |1228|
 :pattern ( (Interp.__default.VarsAndValuesToContext ($LS $ly@@16) |vars#0@@5| |values#0@@1|))
)))
(assert (forall ((a@@27 T@U) (b@@27 T@U) ) (! (= (|Set#Union| a@@27 (|Set#Union| a@@27 b@@27)) (|Set#Union| a@@27 b@@27))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@27 (|Set#Union| a@@27 b@@27)))
)))
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
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((|a#31#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Literal| |a#31#0#0|) Tclass.AST.Expr__Raw) ($Is intType (int_2_U |a#31#0#0|) TInt))
 :qid |ASTdfy.16:15|
 :skolemid |1055|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Literal| |a#31#0#0|) Tclass.AST.Expr__Raw))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@19| T@U) (|es#0@@15| T@U) ) (!  (=> (or (|VarUnchanged.__default.Pes__Fail#canCall| |st#0@@19| |es#0@@15|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@19| Tclass.VarUnchanged.S) ($Is SeqType |es#0@@15| (TSeq Tclass.AST.Expr))))) (and (and (and (VarUnchanged.MState.MState_q |st#0@@19|) (|Interp.__default.InterpExprs#canCall| |es#0@@15| (VarUnchanged.MState.ctx |st#0@@19|))) (|VarUnchanged.__default.PreEs#canCall| |st#0@@19| |es#0@@15|)) (= (VarUnchanged.__default.Pes__Fail |st#0@@19| |es#0@@15|) (let ((|res#0@@6| (Interp.__default.InterpExprs ($LS $LZ) |es#0@@15| (VarUnchanged.MState.ctx |st#0@@19|))))
 (=> (VarUnchanged.__default.PreEs |st#0@@19| |es#0@@15|) (Utils.Result.Failure_q |res#0@@6|))))))
 :qid |Inductiondfy.41:28|
 :skolemid |760|
 :pattern ( (VarUnchanged.__default.Pes__Fail |st#0@@19| |es#0@@15|))
))))
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
(assert (forall ((bx@@15 T@U) (s@@17 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@15 (TMap s@@17 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@15)) bx@@15) ($Is MapType ($Unbox MapType bx@@15) (TMap s@@17 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@15 (TMap s@@17 t@@10)))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@16)) bx@@16) ($Is HandleTypeType ($Unbox HandleTypeType bx@@16) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@16 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@17)) bx@@17) ($Is HandleTypeType ($Unbox HandleTypeType bx@@17) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@17 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@18)) bx@@18) ($Is HandleTypeType ($Unbox HandleTypeType bx@@18) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@18 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@19)) bx@@19) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@19) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@19 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#5#0#0@@1| T@U) ) (! (< (BoxRank |a#5#0#0@@1|) (DtRank (|#Utils.Result.Success| |a#5#0#0@@1|)))
 :qid |Utilsdfy.23:34|
 :skolemid |985|
 :pattern ( (|#Utils.Result.Success| |a#5#0#0@@1|))
)))
(assert (forall ((|a#5#0#0@@2| T@U) ) (! (< (BoxRank |a#5#0#0@@2|) (DtRank (|#Utils.Option.Some| |a#5#0#0@@2|)))
 :qid |Utilsdfy.42:29|
 :skolemid |1018|
 :pattern ( (|#Utils.Option.Some| |a#5#0#0@@2|))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (< (|Seq#Rank| |a#28#0#0|) (DtRank (|#AST.Expr_Raw.Var| |a#28#0#0|)))
 :qid |ASTdfy.15:11|
 :skolemid |1050|
 :pattern ( (|#AST.Expr_Raw.Var| |a#28#0#0|))
)))
(assert (forall ((|a#82#0#0| T@U) ) (! (< (|Seq#Rank| |a#82#0#0|) (DtRank (|#AST.Expr_Raw.Seq| |a#82#0#0|)))
 :qid |ASTdfy.21:11|
 :skolemid |1129|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#82#0#0|))
)))
(assert (forall ((d@@40 T@U) (Utils.Result$T@@14 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (Utils.Result.Success_q d@@40) ($IsAlloc DatatypeTypeType d@@40 (Tclass.Utils.Result Utils.Result$T@@14) $h@@8))) ($IsAllocBox (Utils.Result.value d@@40) Utils.Result$T@@14 $h@@8))
 :qid |unknown.0:0|
 :skolemid |982|
 :pattern ( ($IsAllocBox (Utils.Result.value d@@40) Utils.Result$T@@14 $h@@8))
)))
(assert (forall ((d@@41 T@U) (Utils.Option$T@@6 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (Utils.Option.Some_q d@@41) ($IsAlloc DatatypeTypeType d@@41 (Tclass.Utils.Option Utils.Option$T@@6) $h@@9))) ($IsAllocBox (Utils.Option.value d@@41) Utils.Option$T@@6 $h@@9))
 :qid |unknown.0:0|
 :skolemid |1015|
 :pattern ( ($IsAllocBox (Utils.Option.value d@@41) Utils.Option$T@@6 $h@@9))
)))
(assert  (and (forall ((t0@@9 T@T) (t1@@6 T@T) (t2 T@T) (val@@1 T@U) (m@@4 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@9 t1@@6 t2 (MapType1Store t0@@9 t1@@6 t2 m@@4 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@5 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@5 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@5 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@6 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@6 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@6 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1230|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@20| T@U) (|vars#0@@6| T@U) (|argvs#0@@0| T@U) ) (!  (=> (or (|VarUnchanged.__default.UpdateState__Pre#canCall| |st#0@@20| (Lit SeqType |vars#0@@6|) |argvs#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@20| Tclass.VarUnchanged.S) ($Is SeqType |vars#0@@6| (TSeq (TSeq TChar)))) ($Is SeqType |argvs#0@@0| (TSeq TInt))))) (= (VarUnchanged.__default.UpdateState__Pre |st#0@@20| (Lit SeqType |vars#0@@6|) |argvs#0@@0|)  (and true (= (|Seq#Length| (Lit SeqType |vars#0@@6|)) (|Seq#Length| |argvs#0@@0|)))))
 :qid |Inductiondfy.51:35|
 :weight 3
 :skolemid |777|
 :pattern ( (VarUnchanged.__default.UpdateState__Pre |st#0@@20| (Lit SeqType |vars#0@@6|) |argvs#0@@0|))
))))
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
(assert (forall ((d@@42 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (AST.Expr__Raw.Literal_q d@@42) ($IsAlloc DatatypeTypeType d@@42 Tclass.AST.Expr__Raw $h@@10))) ($IsAlloc intType (int_2_U (AST.Expr__Raw.n d@@42)) TInt $h@@10))
 :qid |unknown.0:0|
 :skolemid |1056|
 :pattern ( ($IsAlloc intType (int_2_U (AST.Expr__Raw.n d@@42)) TInt $h@@10))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@21| T@U) (|es#0@@16| T@U) ) (!  (=> (or (|VarUnchanged.__default.Pes#canCall| (Lit DatatypeTypeType |st#0@@21|) (Lit SeqType |es#0@@16|)) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@21| Tclass.VarUnchanged.S) ($Is SeqType |es#0@@16| (TSeq Tclass.AST.Expr))))) (and (and (and (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st#0@@21|)) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@16|) (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st#0@@21|))))) (let ((|res#2@@3| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@16|) (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st#0@@21|)))))))
 (and (|VarUnchanged.__default.PreEs#canCall| (Lit DatatypeTypeType |st#0@@21|) (Lit SeqType |es#0@@16|)) (=> (U_2_bool (Lit boolType (bool_2_U (VarUnchanged.__default.PreEs (Lit DatatypeTypeType |st#0@@21|) (Lit SeqType |es#0@@16|))))) (|VarUnchanged.__default.ResultSeqSameX#canCall| (Lit DatatypeTypeType |st#0@@21|) |res#2@@3|))))) (= (VarUnchanged.__default.Pes (Lit DatatypeTypeType |st#0@@21|) (Lit SeqType |es#0@@16|)) (U_2_bool (let ((|res#2@@4| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@16|) (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st#0@@21|)))))))
(Lit boolType (bool_2_U  (=> (VarUnchanged.__default.PreEs (Lit DatatypeTypeType |st#0@@21|) (Lit SeqType |es#0@@16|)) (VarUnchanged.__default.ResultSeqSameX (Lit DatatypeTypeType |st#0@@21|) |res#2@@4|)))))))))
 :qid |Inductiondfy.39:23|
 :weight 3
 :skolemid |746|
 :pattern ( (VarUnchanged.__default.Pes (Lit DatatypeTypeType |st#0@@21|) (Lit SeqType |es#0@@16|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@22| T@U) (|vars#0@@7| T@U) (|argvs#0@@1| T@U) ) (!  (=> (or (|VarUnchanged.__default.UpdateState__Pre#canCall| (Lit DatatypeTypeType |st#0@@22|) (Lit SeqType |vars#0@@7|) (Lit SeqType |argvs#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@22| Tclass.VarUnchanged.S) ($Is SeqType |vars#0@@7| (TSeq (TSeq TChar)))) ($Is SeqType |argvs#0@@1| (TSeq TInt))))) (= (VarUnchanged.__default.UpdateState__Pre (Lit DatatypeTypeType |st#0@@22|) (Lit SeqType |vars#0@@7|) (Lit SeqType |argvs#0@@1|))  (and true (= (|Seq#Length| (Lit SeqType |vars#0@@7|)) (|Seq#Length| (Lit SeqType |argvs#0@@1|))))))
 :qid |Inductiondfy.51:35|
 :weight 3
 :skolemid |778|
 :pattern ( (VarUnchanged.__default.UpdateState__Pre (Lit DatatypeTypeType |st#0@@22|) (Lit SeqType |vars#0@@7|) (Lit SeqType |argvs#0@@1|)))
))))
(assert (forall ((d@@43 T@U) ) (!  (=> ($Is DatatypeTypeType d@@43 Tclass.AST.BinOp) (or (or (AST.BinOp.Add_q d@@43) (AST.BinOp.Sub_q d@@43)) (AST.BinOp.Mul_q d@@43)))
 :qid |unknown.0:0|
 :skolemid |1036|
 :pattern ( (AST.BinOp.Mul_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.AST.BinOp))
 :pattern ( (AST.BinOp.Sub_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.AST.BinOp))
 :pattern ( (AST.BinOp.Add_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.AST.BinOp))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@23| T@U) (|es#0@@17| T@U) (|st'#0@@2| T@U) (|vs#0@@3| T@U) ) (!  (=> (or (|VarUnchanged.__default.Pes__Succ#canCall| |st#0@@23| (Lit SeqType |es#0@@17|) |st'#0@@2| |vs#0@@3|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@23| Tclass.VarUnchanged.S) ($Is SeqType |es#0@@17| (TSeq Tclass.AST.Expr))) ($Is DatatypeTypeType |st'#0@@2| Tclass.VarUnchanged.S)) ($Is SeqType |vs#0@@3| (TSeq TInt))))) (and (and (and (VarUnchanged.MState.MState_q |st#0@@23|) (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@17|) (VarUnchanged.MState.ctx |st#0@@23|))) (let ((|res#1@@3| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@17|) (VarUnchanged.MState.ctx |st#0@@23|))))
 (and (|VarUnchanged.__default.PreEs#canCall| |st#0@@23| (Lit SeqType |es#0@@17|)) (=> (VarUnchanged.__default.PreEs |st#0@@23| (Lit SeqType |es#0@@17|)) (and (|VarUnchanged.__default.ResultSeqSameX#canCall| |st#0@@23| |res#1@@3|) (=> (VarUnchanged.__default.ResultSeqSameX |st#0@@23| |res#1@@3|) (and (and (|$IsA#Utils.Result| |res#1@@3|) (VarUnchanged.MState.MState_q |st'#0@@2|)) (=> (|Utils.Result#Equal| |res#1@@3| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType |vs#0@@3|) ($Box MapType (VarUnchanged.MState.ctx |st'#0@@2|)))))) (and (and (|$IsA#Utils.Option| (VarUnchanged.MState.x |st'#0@@2|)) (|$IsA#Utils.Option| (VarUnchanged.MState.x |st#0@@23|))) (and (VarUnchanged.MState.MState_q |st'#0@@2|) (VarUnchanged.MState.MState_q |st#0@@23|))))))))))) (= (VarUnchanged.__default.Pes__Succ |st#0@@23| (Lit SeqType |es#0@@17|) |st'#0@@2| |vs#0@@3|) (let ((|res#1@@4| (Interp.__default.InterpExprs ($LS $LZ) (Lit SeqType |es#0@@17|) (VarUnchanged.MState.ctx |st#0@@23|))))
 (and (and (and (VarUnchanged.__default.PreEs |st#0@@23| (Lit SeqType |es#0@@17|)) (VarUnchanged.__default.ResultSeqSameX |st#0@@23| |res#1@@4|)) (|Utils.Result#Equal| |res#1@@4| (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType |vs#0@@3|) ($Box MapType (VarUnchanged.MState.ctx |st'#0@@2|))))))) (|Utils.Option#Equal| (VarUnchanged.MState.x |st'#0@@2|) (VarUnchanged.MState.x |st#0@@23|)))))))
 :qid |Inductiondfy.40:28|
 :weight 3
 :skolemid |753|
 :pattern ( (VarUnchanged.__default.Pes__Succ |st#0@@23| (Lit SeqType |es#0@@17|) |st'#0@@2| |vs#0@@3|))
))))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@7) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((v@@9 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@8) v@@9)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@8))
)))
(assert (forall ((m@@9 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@9) item)  (and (|Set#IsMember| (|Map#Domain| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@9) item))
)))
(assert (forall ((m@@10 T@U) (v@@10 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@10) v@@10) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@10) u@@5) (= v@@10 (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@10) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@10) v@@10))
)))
(assert (forall ((m@@11 T@U) (u@@6 T@U) (|u'| T@U) (v@@11 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@11)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@11)) |u'|) v@@11))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@11)) |u'|) (|Set#IsMember| (|Map#Domain| m@@11) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@11)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@11) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@11 u@@6 v@@11)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@11 u@@6 v@@11)) |u'|))
)))
(assert (forall ((d@@44 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@44)) (DtRank d@@44))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@44)))
)))
(assert (forall ((s@@19 T@U) (n@@8 Int) (x@@12 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@19 n@@8) x@@12) (exists ((i@@12 Int) ) (!  (and (and (and (<= 0 n@@8) (<= n@@8 i@@12)) (< i@@12 (|Seq#Length| s@@19))) (= (|Seq#Index| s@@19 i@@12) x@@12))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |237|
 :pattern ( (|Seq#Index| s@@19 i@@12))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |238|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@19 n@@8) x@@12))
)))
(assert (forall (($ly@@17 T@U) (|e#0@@19| T@U) (|ctx#0@@10| T@U) ) (!  (=> (or (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@19|) |ctx#0@@10|) (and ($Is DatatypeTypeType |e#0@@19| Tclass.AST.Expr) ($Is MapType |ctx#0@@10| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@19|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@19|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@19|))))) (let ((|body#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|bvals#3@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|bvars#3@@0| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@19|)))))
 (and (|Interp.__default.InterpExprs#canCall| |bvals#3@@0| |ctx#0@@10|) (let ((|valueOrError0#3| (Interp.__default.InterpExprs ($LS $ly@@17) |bvals#3@@0| |ctx#0@@10|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|) (let ((|ctx1#12| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|))))))
(let ((|vs#9| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|))))))
 (and (|Interp.__default.VarsAndValuesToContext#canCall| |bvars#3@@0| |vs#9|) (let ((|bindings#6| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#3@@0| |vs#9|)))
(let ((|ctx2#6| (|Map#Merge| |ctx1#12| |bindings#6|)))
 (and (|Interp.__default.InterpExpr#canCall| |body#3@@0| |ctx2#6|) (let ((|valueOrError1#3| (Interp.__default.InterpExpr ($LS $ly@@17) |body#3@@0| |ctx2#6|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|))))))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@19|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@19|))))) (let ((|avals#3@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|avars#3@@0| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@19|)))))
 (and (|Interp.__default.InterpExprs#canCall| |avals#3@@0| |ctx#0@@10|) (let ((|valueOrError2#3| (Interp.__default.InterpExprs ($LS $ly@@17) |avals#3@@0| |ctx#0@@10|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|) (let ((|vs#10| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|))))))
(|Interp.__default.VarsAndValuesToContext#canCall| |avars#3@@0| |vs#10|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@19|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@19|))))) (let ((|els#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|thn#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|cond#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@19|)))))
 (and (|Interp.__default.InterpExpr#canCall| |cond#3@@0| |ctx#0@@10|) (let ((|valueOrError3#3| (Interp.__default.InterpExpr ($LS $ly@@17) |cond#3@@0| |ctx#0@@10|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|) (let ((|ctx_cond#3| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|))))))
(let ((|condv#3| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|)))))))
 (and (=> (or (not (= |condv#3| 0)) (not true)) (|Interp.__default.InterpExpr#canCall| |thn#3@@0| |ctx_cond#3|)) (=> (= |condv#3| 0) (|Interp.__default.InterpExpr#canCall| |els#3@@0| |ctx_cond#3|)))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@19|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@19|))))) (let ((|e2#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|e1#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|op#3| (Lit DatatypeTypeType (AST.Expr__Raw.op (Lit DatatypeTypeType |e#0@@19|)))))
 (and (|Interp.__default.InterpExpr#canCall| |e1#3| |ctx#0@@10|) (let ((|valueOrError4#3| (Interp.__default.InterpExpr ($LS $ly@@17) |e1#3| |ctx#0@@10|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|) (let ((|ctx1#14| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|))))))
(let ((|v1#3| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|)))))))
 (and (|Interp.__default.InterpExpr#canCall| |e2#3| |ctx1#14|) (let ((|valueOrError5#3| (Interp.__default.InterpExpr ($LS $ly@@17) |e2#3| |ctx1#14|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|) (let ((|v2#3| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|)))))))
(|Interp.__default.InterpBinOp#canCall| |op#3| |v1#3| |v2#3|)))))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@19|)))))) (let ((|es#3@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@19|)))))
 (and (|Interp.__default.InterpExprs#canCall| |es#3@@0| |ctx#0@@10|) (let ((|valueOrError6#3| (Interp.__default.InterpExprs ($LS $ly@@17) |es#3@@0| |ctx#0@@10|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#3|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#3|)))))))))))))))) (= (Interp.__default.InterpExpr ($LS $ly@@17) (Lit DatatypeTypeType |e#0@@19|) |ctx#0@@10|) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@19|)) (let ((|name#2| (Lit SeqType (AST.Expr__Raw.name (Lit DatatypeTypeType |e#0@@19|)))))
(ite (|Set#IsMember| (|Map#Domain| |ctx#0@@10|) ($Box SeqType |name#2|)) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@10|) ($Box SeqType |name#2|)) ($Box MapType |ctx#0@@10|)))) |#Utils.Result.Failure|)) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@19|)) (let ((|n#2| (LitInt (AST.Expr__Raw.n (Lit DatatypeTypeType |e#0@@19|)))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |n#2|)) ($Box MapType |ctx#0@@10|))))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@19|)) (let ((|body#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|bvals#2@@1| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|bvars#2@@1| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|valueOrError0#2@@1| (Interp.__default.InterpExprs ($LS $ly@@17) |bvals#2@@1| |ctx#0@@10|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2@@1|) (let ((|ctx1#8| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2@@1|))))))
(let ((|vs#6| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2@@1|))))))
(let ((|bindings#4| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#2@@1| |vs#6|)))
(let ((|ctx2#4| (|Map#Merge| |ctx1#8| |bindings#4|)))
(let ((|valueOrError1#2@@1| (Interp.__default.InterpExpr ($LS $ly@@17) |body#2@@0| |ctx2#4|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#2@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#2@@1|) (let ((|ctx3#2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#2@@1|))))))
(let ((|bodyv#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#2@@1|)))))))
(let ((|ctx4#2| (|Map#Merge| |ctx1#8| (|Map#Subtract| |ctx3#2| (|Set#FromBoogieMap| (|lambda#7| (TSeq TChar) |bvars#2@@1|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |bodyv#2|)) ($Box MapType |ctx4#2|)))))))))))))))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@19|)) (let ((|avals#2@@1| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|avars#2@@1| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|valueOrError2#2| (Interp.__default.InterpExprs ($LS $ly@@17) |avals#2@@1| |ctx#0@@10|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#2|) (let ((|ctx1#9| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#2|))))))
(let ((|vs#7| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#2|))))))
(let ((|bindings#5| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |avars#2@@1| |vs#7|)))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType (|Map#Merge| |ctx1#9| |bindings#5|)))))))))))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@19|)) (let ((|els#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|thn#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|cond#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|valueOrError3#2| (Interp.__default.InterpExpr ($LS $ly@@17) |cond#2@@0| |ctx#0@@10|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#2|) (let ((|ctx_cond#2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#2|))))))
(let ((|condv#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#2|)))))))
(ite  (or (not (= |condv#2| 0)) (not true)) (Interp.__default.InterpExpr ($LS $ly@@17) |thn#2@@0| |ctx_cond#2|) (Interp.__default.InterpExpr ($LS $ly@@17) |els#2@@0| |ctx_cond#2|))))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@19|)) (let ((|e2#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|e1#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|op#2| (Lit DatatypeTypeType (AST.Expr__Raw.op (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|valueOrError4#2| (Interp.__default.InterpExpr ($LS $ly@@17) |e1#2| |ctx#0@@10|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#2|) (let ((|ctx1#10| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#2|))))))
(let ((|v1#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#2|)))))))
(let ((|valueOrError5#2| (Interp.__default.InterpExpr ($LS $ly@@17) |e2#2| |ctx1#10|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#2|) (let ((|ctx2#5| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#2|))))))
(let ((|v2#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#2|)))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Interp.__default.InterpBinOp |op#2| |v1#2| |v2#2|))) ($Box MapType |ctx2#5|))))))))))))))) (let ((|es#2@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@19|)))))
(let ((|valueOrError6#2| (Interp.__default.InterpExprs ($LS $ly@@17) |es#2@@0| |ctx#0@@10|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#2|) (let ((|ctx1#11| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#2|))))))
(let ((|vs#8| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#2|))))))
(ite (|Seq#Equal| |vs#8| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType |ctx1#11|)))) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (|Seq#Index| |vs#8| (- (|Seq#Length| |vs#8|) 1)) ($Box MapType |ctx1#11|)))))))))))))))))))
 :qid |Interpdfy.24:12|
 :weight 3
 :skolemid |1215|
 :pattern ( (Interp.__default.InterpExpr ($LS $ly@@17) (Lit DatatypeTypeType |e#0@@19|) |ctx#0@@10|))
)))
(assert (forall ((bx@@20 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@20 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@20)) bx@@20) ($Is SetType ($Unbox SetType bx@@20) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@20 (TSet t@@11)))
)))
(assert (forall ((bx@@21 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@21 (TSeq t@@12)) (and (= ($Box SeqType ($Unbox SeqType bx@@21)) bx@@21) ($Is SeqType ($Unbox SeqType bx@@21) (TSeq t@@12))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@21 (TSeq t@@12)))
)))
(assert (forall ((Utils.Result$T@@15 T@U) (bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 (Tclass.Utils.Result Utils.Result$T@@15)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@22)) bx@@22) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@22) (Tclass.Utils.Result Utils.Result$T@@15))))
 :qid |unknown.0:0|
 :skolemid |692|
 :pattern ( ($IsBox bx@@22 (Tclass.Utils.Result Utils.Result$T@@15)))
)))
(assert (forall ((Utils.Option$T@@7 T@U) (bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 (Tclass.Utils.Option Utils.Option$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@23)) bx@@23) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@23) (Tclass.Utils.Option Utils.Option$T@@7))))
 :qid |unknown.0:0|
 :skolemid |787|
 :pattern ( ($IsBox bx@@23 (Tclass.Utils.Option Utils.Option$T@@7)))
)))
(assert (forall ((m@@12 T@U) (s@@20 T@U) ) (! (= (|Map#Domain| (|Map#Subtract| m@@12 s@@20)) (|Set#Difference| (|Map#Domain| m@@12) s@@20))
 :qid |DafnyPreludebpl.1486:15|
 :skolemid |295|
 :pattern ( (|Map#Domain| (|Map#Subtract| m@@12 s@@20)))
)))
(assert (forall ((v@@12 T@U) (t0@@11 T@U) (t1@@8 T@U) ) (! (= ($Is MapType v@@12 (TMap t0@@11 t1@@8)) (forall ((bx@@24 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@12) bx@@24) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@24) t1@@8) ($IsBox bx@@24 t0@@11)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@24))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@12) bx@@24))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@12 (TMap t0@@11 t1@@8)))
)))
(assert (forall (($ly@@18 T@U) (|vars#0@@8| T@U) (|values#0@@2| T@U) ) (!  (=> (or (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@8|) (Lit SeqType |values#0@@2|)) (and (and ($Is SeqType |vars#0@@8| (TSeq (TSeq TChar))) ($Is SeqType |values#0@@2| (TSeq TInt))) (= (|Seq#Length| (Lit SeqType |vars#0@@8|)) (|Seq#Length| (Lit SeqType |values#0@@2|))))) (and (=> (not (|Seq#Equal| |vars#0@@8| |Seq#Empty|)) (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |vars#0@@8|) (LitInt 1))) (Lit SeqType (|Seq#Drop| (Lit SeqType |values#0@@2|) (LitInt 1))))) (= (Interp.__default.VarsAndValuesToContext ($LS $ly@@18) (Lit SeqType |vars#0@@8|) (Lit SeqType |values#0@@2|)) (ite (|Seq#Equal| |vars#0@@8| |Seq#Empty|) |Map#Empty| (|Map#Merge| (|Map#Build| |Map#Empty| (|Seq#Index| (Lit SeqType |vars#0@@8|) (LitInt 0)) (|Seq#Index| (Lit SeqType |values#0@@2|) (LitInt 0))) (Interp.__default.VarsAndValuesToContext ($LS $ly@@18) (Lit SeqType (|Seq#Drop| (Lit SeqType |vars#0@@8|) (LitInt 1))) (Lit SeqType (|Seq#Drop| (Lit SeqType |values#0@@2|) (LitInt 1)))))))))
 :qid |Interpdfy.80:12|
 :weight 3
 :skolemid |1229|
 :pattern ( (Interp.__default.VarsAndValuesToContext ($LS $ly@@18) (Lit SeqType |vars#0@@8|) (Lit SeqType |values#0@@2|)))
)))
(assert (forall (($bx T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (|Set#IsMember| (Reads1 Tclass.AST.Expr__Raw TBool $heap@@1 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@1|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |1200|
 :pattern ( (|Set#IsMember| (Reads1 Tclass.AST.Expr__Raw TBool $heap@@1 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@1|) $bx))
)))
(assert (forall ((d@@45 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) ($Is DatatypeTypeType d@@45 Tclass.VarUnchanged.MState)) ($IsAlloc DatatypeTypeType d@@45 Tclass.VarUnchanged.MState $h@@11))
 :qid |unknown.0:0|
 :skolemid |951|
 :pattern ( ($IsAlloc DatatypeTypeType d@@45 Tclass.VarUnchanged.MState $h@@11))
)))
(assert (forall ((d@@46 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) ($Is DatatypeTypeType d@@46 Tclass.AST.BinOp)) ($IsAlloc DatatypeTypeType d@@46 Tclass.AST.BinOp $h@@12))
 :qid |unknown.0:0|
 :skolemid |1034|
 :pattern ( ($IsAlloc DatatypeTypeType d@@46 Tclass.AST.BinOp $h@@12))
)))
(assert (forall ((d@@47 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) ($Is DatatypeTypeType d@@47 Tclass.AST.Expr__Raw)) ($IsAlloc DatatypeTypeType d@@47 Tclass.AST.Expr__Raw $h@@13))
 :qid |unknown.0:0|
 :skolemid |1130|
 :pattern ( ($IsAlloc DatatypeTypeType d@@47 Tclass.AST.Expr__Raw $h@@13))
)))
(assert (= (Tag Tclass.AST.Expr) Tagclass.AST.Expr))
(assert (= (TagFamily Tclass.AST.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.AST.Expr__Raw) Tagclass.AST.Expr__Raw))
(assert (= (TagFamily Tclass.AST.Expr__Raw) tytagFamily$Expr_Raw))
(assert (= (Tag Tclass.AST.BinOp) Tagclass.AST.BinOp))
(assert (= (TagFamily Tclass.AST.BinOp) tytagFamily$BinOp))
(assert (= (Tag Tclass.VarUnchanged.S) Tagclass.VarUnchanged.S))
(assert (= (TagFamily Tclass.VarUnchanged.S) tytagFamily$S))
(assert (= (Tag Tclass.VarUnchanged.MState) Tagclass.VarUnchanged.MState))
(assert (= (TagFamily Tclass.VarUnchanged.MState) tytagFamily$MState))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@24| T@U) (|vars#0@@9| T@U) (|vals#0@@2| T@U) ) (!  (=> (or (|VarUnchanged.__default.BindStartScope#canCall| (Lit DatatypeTypeType |st#0@@24|) (Lit SeqType |vars#0@@9|) (Lit SeqType |vals#0@@2|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@24| Tclass.VarUnchanged.S) ($Is SeqType |vars#0@@9| (TSeq (TSeq TChar)))) ($Is SeqType |vals#0@@2| (TSeq TInt))) (U_2_bool (Lit boolType (bool_2_U (VarUnchanged.__default.UpdateState__Pre (Lit DatatypeTypeType |st#0@@24|) (Lit SeqType |vars#0@@9|) (Lit SeqType |vals#0@@2|)))))))) (and (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@9|) (Lit SeqType |vals#0@@2|)) (= (VarUnchanged.__default.BindStartScope (Lit DatatypeTypeType |st#0@@24|) (Lit SeqType |vars#0@@9|) (Lit SeqType |vals#0@@2|)) (let ((|ctx#2@@0| (VarUnchanged.MState.ctx (Lit DatatypeTypeType |st#0@@24|))))
(let ((|x#2| (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0@@24|))))
(let ((|x'#2| (ite  (and (Utils.Option.Some_q |x#2|) (|Seq#Contains| |vars#0@@9| (Utils.Option.value |x#2|))) |#Utils.Option.None| |x#2|)))
(let ((|bindings#2@@0| (Lit MapType (Interp.__default.VarsAndValuesToContext ($LS $LZ) (Lit SeqType |vars#0@@9|) (Lit SeqType |vals#0@@2|)))))
(let ((|ctx1#2@@2| (|Map#Merge| |ctx#2@@0| |bindings#2@@0|)))
(let ((|st'#2| (|#VarUnchanged.MState.MState| |x'#2| |ctx1#2@@2|)))
|st'#2|)))))))))
 :qid |Inductiondfy.58:33|
 :weight 3
 :skolemid |794|
 :pattern ( (VarUnchanged.__default.BindStartScope (Lit DatatypeTypeType |st#0@@24|) (Lit SeqType |vars#0@@9|) (Lit SeqType |vals#0@@2|)))
))))
(assert (forall ((s@@21 T@U) (n@@9 Int) (k@@0 Int) ) (!  (=> (and (and (<= 0 n@@9) (<= n@@9 k@@0)) (< k@@0 (|Seq#Length| s@@21))) (= (|Seq#Index| (|Seq#Drop| s@@21 n@@9) (- k@@0 n@@9)) (|Seq#Index| s@@21 k@@0)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@21 k@@0) (|Seq#Drop| s@@21 n@@9))
)))
(assert (forall ((Utils.Result$T@@16 T@U) (this@@8 T@U) ) (!  (=> (or (|Utils.Result.Extract#canCall| Utils.Result$T@@16 (Lit DatatypeTypeType this@@8)) (and ($Is DatatypeTypeType this@@8 (Tclass.Utils.Result Utils.Result$T@@16)) (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Success_q (Lit DatatypeTypeType this@@8))))))) (= (Utils.Result.Extract Utils.Result$T@@16 (Lit DatatypeTypeType this@@8)) (Lit BoxType (Utils.Result.value (Lit DatatypeTypeType this@@8)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1008|
 :pattern ( (Utils.Result.Extract Utils.Result$T@@16 (Lit DatatypeTypeType this@@8)))
)))
(assert (= |#Utils.Result.Failure| (Lit DatatypeTypeType |#Utils.Result.Failure|)))
(assert (= |#Utils.Option.None| (Lit DatatypeTypeType |#Utils.Option.None|)))
(assert (= |#AST.BinOp.Add| (Lit DatatypeTypeType |#AST.BinOp.Add|)))
(assert (= |#AST.BinOp.Sub| (Lit DatatypeTypeType |#AST.BinOp.Sub|)))
(assert (= |#AST.BinOp.Mul| (Lit DatatypeTypeType |#AST.BinOp.Mul|)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Var| |a#24#0#0|) Tclass.AST.Expr__Raw) ($Is SeqType |a#24#0#0| (TSeq TChar)))
 :qid |ASTdfy.15:11|
 :skolemid |1045|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Var| |a#24#0#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((d@@48 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (AST.Expr__Raw.Var_q d@@48) ($IsAlloc DatatypeTypeType d@@48 Tclass.AST.Expr__Raw $h@@14))) ($IsAlloc SeqType (AST.Expr__Raw.name d@@48) (TSeq TChar) $h@@14))
 :qid |unknown.0:0|
 :skolemid |1046|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.name d@@48) (TSeq TChar) $h@@14))
)))
(assert (forall (($ly@@19 T@U) ($Heap@@2 T@U) (|e#0@@20| T@U) (|p#0@@1| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType |e#0@@20|) |p#0@@1|) (and (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |e#0@@20| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0@@1| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@2 |p#0@@1| ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@20|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@20|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@20|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@20|))))) (let ((|body#3@@1| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|bvals#3@@1| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@20|)))))
 (and (forall ((|e#10@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#10@@1| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#3@@1| ($Box DatatypeTypeType |e#10@@1|)) (|AST.Expr__Raw.All#canCall| |e#10@@1| |p#0@@1|)))
 :qid |ASTdfy.51:22|
 :skolemid |1168|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@19) |e#10@@1| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#3@@1| ($Box DatatypeTypeType |e#10@@1|)))
)) (=> (forall ((|e#10@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#10@@2| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#3@@1| ($Box DatatypeTypeType |e#10@@2|))) (AST.Expr__Raw.All ($LS $ly@@19) |e#10@@2| |p#0@@1|))
 :qid |ASTdfy.51:22|
 :skolemid |1169|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@19) |e#10@@2| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#3@@1| ($Box DatatypeTypeType |e#10@@2|)))
)) (|AST.Expr__Raw.All#canCall| |body#3@@1| |p#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@20|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@20|))))) (let ((|avals#3@@1| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@20|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#11@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#11@@0| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#3@@1| ($Box DatatypeTypeType |e#11@@0|)) (|AST.Expr__Raw.All#canCall| |e#11@@0| |p#0@@1|)))
 :qid |ASTdfy.54:21|
 :skolemid |1170|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@19) |e#11@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |avals#3@@1| ($Box DatatypeTypeType |e#11@@0|)))
))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@20|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@20|))))) (let ((|els#3@@1| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|thn#3@@1| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|cond#3@@1| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@20|)))))
 (and (|AST.Expr__Raw.All#canCall| |cond#3@@1| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@19) |cond#3@@1| |p#0@@1|) (and (|AST.Expr__Raw.All#canCall| |thn#3@@1| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@19) |thn#3@@1| |p#0@@1|) (|AST.Expr__Raw.All#canCall| |els#3@@1| |p#0@@1|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@20|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@20|))))) (let ((|oe2#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|oe1#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@20|)))))
 (and (|AST.Expr__Raw.All#canCall| |oe1#3@@0| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@19) |oe1#3@@0| |p#0@@1|) (|AST.Expr__Raw.All#canCall| |oe2#3@@0| |p#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@20|)))))) (let ((|es#3@@1| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@20|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#12@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#12@@0| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#3@@1| ($Box DatatypeTypeType |e#12@@0|)) (|AST.Expr__Raw.All#canCall| |e#12@@0| |p#0@@1|)))
 :qid |ASTdfy.60:21|
 :skolemid |1171|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@19) |e#12@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |es#3@@1| ($Box DatatypeTypeType |e#12@@0|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@19) (Lit DatatypeTypeType |e#0@@20|) |p#0@@1|)  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@2 |p#0@@1| ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@20|))))) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@20|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@20|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@20|)) (let ((|body#2@@1| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|bvals#2@@2| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@20|)))))
 (and (forall ((|e#7@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#7@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#2@@2| ($Box DatatypeTypeType |e#7@@0|))) (AST.Expr__Raw.All ($LS $ly@@19) |e#7@@0| |p#0@@1|))
 :qid |ASTdfy.51:22|
 :skolemid |1165|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@19) |e#7@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#2@@2| ($Box DatatypeTypeType |e#7@@0|)))
)) (AST.Expr__Raw.All ($LS $ly@@19) |body#2@@1| |p#0@@1|)))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@20|)) (let ((|avals#2@@2| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@20|)))))
 (and true (forall ((|e#8@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#8@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#2@@2| ($Box DatatypeTypeType |e#8@@0|))) (AST.Expr__Raw.All ($LS $ly@@19) |e#8@@0| |p#0@@1|))
 :qid |ASTdfy.54:21|
 :skolemid |1166|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@19) |e#8@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |avals#2@@2| ($Box DatatypeTypeType |e#8@@0|)))
)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@20|)) (let ((|els#2@@1| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|thn#2@@1| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|cond#2@@1| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@20|)))))
 (and (and (AST.Expr__Raw.All ($LS $ly@@19) |cond#2@@1| |p#0@@1|) (AST.Expr__Raw.All ($LS $ly@@19) |thn#2@@1| |p#0@@1|)) (AST.Expr__Raw.All ($LS $ly@@19) |els#2@@1| |p#0@@1|))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@20|)) (let ((|oe2#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@20|)))))
(let ((|oe1#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@20|)))))
 (and (AST.Expr__Raw.All ($LS $ly@@19) |oe1#2@@0| |p#0@@1|) (AST.Expr__Raw.All ($LS $ly@@19) |oe2#2@@0| |p#0@@1|)))) (let ((|es#2@@1| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@20|)))))
 (and true (forall ((|e#9@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#9@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#2@@1| ($Box DatatypeTypeType |e#9@@0|))) (AST.Expr__Raw.All ($LS $ly@@19) |e#9@@0| |p#0@@1|))
 :qid |ASTdfy.60:21|
 :skolemid |1167|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@19) |e#9@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |es#2@@1| ($Box DatatypeTypeType |e#9@@0|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :weight 3
 :skolemid |1172|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@19) (Lit DatatypeTypeType |e#0@@20|) |p#0@@1|) ($IsGoodHeap $Heap@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@25| T@U) (|e#0@@21| T@U) ) (!  (=> (or (|VarUnchanged.__default.Pre#canCall| (Lit DatatypeTypeType |st#0@@25|) (Lit DatatypeTypeType |e#0@@21|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@25| Tclass.VarUnchanged.S) ($Is DatatypeTypeType |e#0@@21| Tclass.AST.Expr)))) (and (and (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st#0@@25|)) (=> (U_2_bool (Lit boolType (bool_2_U (Utils.Option.Some_q (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0@@25|))))))) (and (VarUnchanged.MState.MState_q (Lit DatatypeTypeType |st#0@@25|)) (|VarUnchanged.__default.VarUnchanged#canCall| (Lit SeqType ($Unbox SeqType (Utils.Option.value (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0@@25|)))))) (Lit DatatypeTypeType |e#0@@21|))))) (= (VarUnchanged.__default.Pre (Lit DatatypeTypeType |st#0@@25|) (Lit DatatypeTypeType |e#0@@21|)) (U_2_bool (Lit boolType (bool_2_U  (=> (Utils.Option.Some_q (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0@@25|)))) (VarUnchanged.__default.VarUnchanged ($LS $LZ) (Lit SeqType ($Unbox SeqType (Utils.Option.value (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType |st#0@@25|)))))) (Lit DatatypeTypeType |e#0@@21|)))))))))
 :qid |VarUnchangeddfy.82:23|
 :weight 3
 :skolemid |705|
 :pattern ( (VarUnchanged.__default.Pre (Lit DatatypeTypeType |st#0@@25|) (Lit DatatypeTypeType |e#0@@21|)))
))))
(assert (forall ((a@@28 T@U) (b@@28 T@U) ) (! (= (|Set#Equal| a@@28 b@@28) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@28 o@@3) (|Set#IsMember| b@@28 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@28 o@@3))
 :pattern ( (|Set#IsMember| b@@28 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@28 b@@28))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) (d@@49 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#7#1#0@@0|) ($Box DatatypeTypeType d@@49)) (< (DtRank d@@49) (DtRank (|#VarUnchanged.MState.MState| |a#7#0#0@@0| |a#7#1#0@@0|))))
 :qid |VarUnchangeddfy.73:28|
 :skolemid |949|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#7#1#0@@0|) ($Box DatatypeTypeType d@@49)) (|#VarUnchanged.MState.MState| |a#7#0#0@@0| |a#7#1#0@@0|))
)))
(assert (forall ((s@@22 T@U) (m@@13 Int) (n@@10 Int) ) (!  (=> (and (and (<= 0 m@@13) (<= 0 n@@10)) (<= (+ m@@13 n@@10) (|Seq#Length| s@@22))) (= (|Seq#Drop| (|Seq#Drop| s@@22 m@@13) n@@10) (|Seq#Drop| s@@22 (+ m@@13 n@@10))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@22 m@@13) n@@10))
)))
(assert (forall ((|op#0@@1| T@U) (|x#0@@5| Int) (|y#0@@0| Int) ) (!  (=> (or (|Interp.__default.InterpBinOp#canCall| (Lit DatatypeTypeType |op#0@@1|) (LitInt |x#0@@5|) (LitInt |y#0@@0|)) ($Is DatatypeTypeType |op#0@@1| Tclass.AST.BinOp)) (= (Interp.__default.InterpBinOp (Lit DatatypeTypeType |op#0@@1|) (LitInt |x#0@@5|) (LitInt |y#0@@0|)) (ite (AST.BinOp.Add_q (Lit DatatypeTypeType |op#0@@1|)) (+ |x#0@@5| |y#0@@0|) (ite (AST.BinOp.Sub_q (Lit DatatypeTypeType |op#0@@1|)) (- |x#0@@5| |y#0@@0|) (Mul (LitInt |x#0@@5|) (LitInt |y#0@@0|))))))
 :qid |Interpdfy.16:24|
 :weight 3
 :skolemid |1209|
 :pattern ( (Interp.__default.InterpBinOp (Lit DatatypeTypeType |op#0@@1|) (LitInt |x#0@@5|) (LitInt |y#0@@0|)))
)))
(assert (forall ((d@@50 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (VarUnchanged.MState.MState_q d@@50) ($IsAlloc DatatypeTypeType d@@50 Tclass.VarUnchanged.MState $h@@15))) ($IsAlloc MapType (VarUnchanged.MState.ctx d@@50) (TMap (TSeq TChar) TInt) $h@@15))
 :qid |unknown.0:0|
 :skolemid |944|
 :pattern ( ($IsAlloc MapType (VarUnchanged.MState.ctx d@@50) (TMap (TSeq TChar) TInt) $h@@15))
)))
(assert (forall ((d@@51 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (_System.Tuple2.___hMake2_q d@@51) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@51 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@16)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@51 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@16))
)))) ($IsAllocBox (_System.Tuple2._0 d@@51) |_System._tuple#2$T0@@6| $h@@16))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@51) |_System._tuple#2$T0@@6| $h@@16))
)))
(assert (forall ((d@@52 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (_System.Tuple2.___hMake2_q d@@52) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@52 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@17)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@52 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@17))
)))) ($IsAllocBox (_System.Tuple2._1 d@@52) |_System._tuple#2$T1@@7| $h@@17))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@52) |_System._tuple#2$T1@@7| $h@@17))
)))
(assert (forall (($Heap@@3 T@U) (Utils.Result$T@@17 T@U) (this@@9 T@U) ) (!  (=> (and (or (|Utils.Result.Extract#canCall| Utils.Result$T@@17 this@@9) (and ($IsAlloc DatatypeTypeType this@@9 (Tclass.Utils.Result Utils.Result$T@@17) $Heap@@3) (Utils.Result.Success_q this@@9))) ($IsGoodHeap $Heap@@3)) ($IsAllocBox (Utils.Result.Extract Utils.Result$T@@17 this@@9) Utils.Result$T@@17 $Heap@@3))
 :qid |Utilsdfy.35:14|
 :skolemid |1005|
 :pattern ( ($IsAllocBox (Utils.Result.Extract Utils.Result$T@@17 this@@9) Utils.Result$T@@17 $Heap@@3))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@11 Int) ) (!  (and (=> (< n@@11 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@11) (|Seq#Index| s0@@2 n@@11))) (=> (<= (|Seq#Length| s0@@2) n@@11) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@11) (|Seq#Index| s1@@2 (- n@@11 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@11))
)))
(assert (forall ((d@@53 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (AST.Expr__Raw.Bind_q d@@53) ($IsAlloc DatatypeTypeType d@@53 Tclass.AST.Expr__Raw $h@@18))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.body d@@53) Tclass.AST.Expr__Raw $h@@18))
 :qid |unknown.0:0|
 :skolemid |1066|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.body d@@53) Tclass.AST.Expr__Raw $h@@18))
)))
(assert (forall ((d@@54 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (AST.Expr__Raw.If_q d@@54) ($IsAlloc DatatypeTypeType d@@54 Tclass.AST.Expr__Raw $h@@19))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.cond d@@54) Tclass.AST.Expr__Raw $h@@19))
 :qid |unknown.0:0|
 :skolemid |1095|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.cond d@@54) Tclass.AST.Expr__Raw $h@@19))
)))
(assert (forall ((d@@55 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (AST.Expr__Raw.If_q d@@55) ($IsAlloc DatatypeTypeType d@@55 Tclass.AST.Expr__Raw $h@@20))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.thn d@@55) Tclass.AST.Expr__Raw $h@@20))
 :qid |unknown.0:0|
 :skolemid |1096|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.thn d@@55) Tclass.AST.Expr__Raw $h@@20))
)))
(assert (forall ((d@@56 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (AST.Expr__Raw.If_q d@@56) ($IsAlloc DatatypeTypeType d@@56 Tclass.AST.Expr__Raw $h@@21))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.els d@@56) Tclass.AST.Expr__Raw $h@@21))
 :qid |unknown.0:0|
 :skolemid |1097|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.els d@@56) Tclass.AST.Expr__Raw $h@@21))
)))
(assert (forall ((d@@57 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (AST.Expr__Raw.Op_q d@@57) ($IsAlloc DatatypeTypeType d@@57 Tclass.AST.Expr__Raw $h@@22))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.op d@@57) Tclass.AST.BinOp $h@@22))
 :qid |unknown.0:0|
 :skolemid |1110|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.op d@@57) Tclass.AST.BinOp $h@@22))
)))
(assert (forall ((d@@58 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (AST.Expr__Raw.Op_q d@@58) ($IsAlloc DatatypeTypeType d@@58 Tclass.AST.Expr__Raw $h@@23))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe1 d@@58) Tclass.AST.Expr__Raw $h@@23))
 :qid |unknown.0:0|
 :skolemid |1111|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe1 d@@58) Tclass.AST.Expr__Raw $h@@23))
)))
(assert (forall ((d@@59 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (AST.Expr__Raw.Op_q d@@59) ($IsAlloc DatatypeTypeType d@@59 Tclass.AST.Expr__Raw $h@@24))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe2 d@@59) Tclass.AST.Expr__Raw $h@@24))
 :qid |unknown.0:0|
 :skolemid |1112|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe2 d@@59) Tclass.AST.Expr__Raw $h@@24))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#VarUnchanged.MState.MState| (Lit DatatypeTypeType |a#3#0#0@@0|) (Lit MapType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#VarUnchanged.MState.MState| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |VarUnchangeddfy.73:28|
 :skolemid |945|
 :pattern ( (|#VarUnchanged.MState.MState| (Lit DatatypeTypeType |a#3#0#0@@0|) (Lit MapType |a#3#1#0@@0|)))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= (|#AST.Expr_Raw.Assign| (Lit SeqType |a#49#0#0|) (Lit SeqType |a#49#1#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#49#0#0| |a#49#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |1083|
 :pattern ( (|#AST.Expr_Raw.Assign| (Lit SeqType |a#49#0#0|) (Lit SeqType |a#49#1#0|)))
)))
(assert (forall (($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (Apply1 Tclass.AST.Expr__Raw TBool $heap@@2 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@2|) ($Box boolType (bool_2_U (AST.Expr__Raw.WellFormed__Single ($Unbox DatatypeTypeType |$fh$0x#0@@2|)))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1198|
 :pattern ( (Apply1 Tclass.AST.Expr__Raw TBool $heap@@2 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@2|))
)))
(assert (forall ((|e#0@@22| T@U) ) (! (= ($Is DatatypeTypeType |e#0@@22| Tclass.AST.Expr)  (and ($Is DatatypeTypeType |e#0@@22| Tclass.AST.Expr__Raw) (AST.Expr__Raw.WellFormed |e#0@@22|)))
 :qid |unknown.0:0|
 :skolemid |1204|
 :pattern ( ($Is DatatypeTypeType |e#0@@22| Tclass.AST.Expr))
)))
(assert (forall ((x@@13 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@13))) (Lit BoxType ($Box intType (int_2_U x@@13))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@13))))
)))
(assert (forall ((|a#3#0#0@@1| T@U) ) (! (= (|#Utils.Result.Success| (Lit BoxType |a#3#0#0@@1|)) (Lit DatatypeTypeType (|#Utils.Result.Success| |a#3#0#0@@1|)))
 :qid |Utilsdfy.23:34|
 :skolemid |983|
 :pattern ( (|#Utils.Result.Success| (Lit BoxType |a#3#0#0@@1|)))
)))
(assert (forall ((|a#3#0#0@@2| T@U) ) (! (= (|#Utils.Option.Some| (Lit BoxType |a#3#0#0@@2|)) (Lit DatatypeTypeType (|#Utils.Option.Some| |a#3#0#0@@2|)))
 :qid |Utilsdfy.42:29|
 :skolemid |1016|
 :pattern ( (|#Utils.Option.Some| (Lit BoxType |a#3#0#0@@2|)))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (|#AST.Expr_Raw.Var| (Lit SeqType |a#25#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Var| |a#25#0#0|)))
 :qid |ASTdfy.15:11|
 :skolemid |1047|
 :pattern ( (|#AST.Expr_Raw.Var| (Lit SeqType |a#25#0#0|)))
)))
(assert (forall ((|a#32#0#0| Int) ) (! (= (|#AST.Expr_Raw.Literal| (LitInt |a#32#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Literal| |a#32#0#0|)))
 :qid |ASTdfy.16:15|
 :skolemid |1057|
 :pattern ( (|#AST.Expr_Raw.Literal| (LitInt |a#32#0#0|)))
)))
(assert (forall ((|a#79#0#0| T@U) ) (! (= (|#AST.Expr_Raw.Seq| (Lit SeqType |a#79#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#79#0#0|)))
 :qid |ASTdfy.21:11|
 :skolemid |1126|
 :pattern ( (|#AST.Expr_Raw.Seq| (Lit SeqType |a#79#0#0|)))
)))
(assert (forall ((x@@14 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@14)) (Lit BoxType ($Box T@@4 x@@14)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@14)))
)))
(assert (forall ((m@@14 T@U) (n@@12 T@U) ) (! (= (|Map#Domain| (|Map#Merge| m@@14 n@@12)) (|Set#Union| (|Map#Domain| m@@14) (|Map#Domain| n@@12)))
 :qid |DafnyPreludebpl.1476:15|
 :skolemid |293|
 :pattern ( (|Map#Domain| (|Map#Merge| m@@14 n@@12)))
)))
(assert (forall ((d@@60 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (VarUnchanged.MState.MState_q d@@60) ($IsAlloc DatatypeTypeType d@@60 Tclass.VarUnchanged.MState $h@@25))) ($IsAlloc DatatypeTypeType (VarUnchanged.MState.x d@@60) (Tclass.Utils.Option (TSeq TChar)) $h@@25))
 :qid |unknown.0:0|
 :skolemid |943|
 :pattern ( ($IsAlloc DatatypeTypeType (VarUnchanged.MState.x d@@60) (Tclass.Utils.Option (TSeq TChar)) $h@@25))
)))
(assert (forall ((d@@61 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (AST.Expr__Raw.Bind_q d@@61) ($IsAlloc DatatypeTypeType d@@61 Tclass.AST.Expr__Raw $h@@26))) ($IsAlloc SeqType (AST.Expr__Raw.bvars d@@61) (TSeq (TSeq TChar)) $h@@26))
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.bvars d@@61) (TSeq (TSeq TChar)) $h@@26))
)))
(assert (forall ((d@@62 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (AST.Expr__Raw.Assign_q d@@62) ($IsAlloc DatatypeTypeType d@@62 Tclass.AST.Expr__Raw $h@@27))) ($IsAlloc SeqType (AST.Expr__Raw.avars d@@62) (TSeq (TSeq TChar)) $h@@27))
 :qid |unknown.0:0|
 :skolemid |1081|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.avars d@@62) (TSeq (TSeq TChar)) $h@@27))
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
(assert (forall (($ly@@20 T@U) ($Heap@@4 T@U) (|e#0@@23| T@U) (|p#0@@2| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType |e#0@@23|) (Lit HandleTypeType |p#0@@2|)) (and (and ($IsGoodHeap $Heap@@4) ($Is DatatypeTypeType |e#0@@23| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0@@2| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@4 (Lit HandleTypeType |p#0@@2|) ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@23|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@23|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@23|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@23|))))) (let ((|body#5@@1| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@23|)))))
(let ((|bvals#5@@1| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@23|)))))
 (and (forall ((|e#16@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |e#16@@1| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#5@@1| ($Box DatatypeTypeType |e#16@@1|)) (|AST.Expr__Raw.All#canCall| |e#16@@1| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.51:22|
 :skolemid |1176|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@20) |e#16@@1| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#5@@1| ($Box DatatypeTypeType |e#16@@1|)))
)) (=> (forall ((|e#16@@2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#16@@2| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#5@@1| ($Box DatatypeTypeType |e#16@@2|))) (AST.Expr__Raw.All ($LS $ly@@20) |e#16@@2| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.51:22|
 :skolemid |1177|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@20) |e#16@@2| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#5@@1| ($Box DatatypeTypeType |e#16@@2|)))
)) (|AST.Expr__Raw.All#canCall| |body#5@@1| (Lit HandleTypeType |p#0@@2|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@23|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@23|))))) (let ((|avals#5@@1| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@23|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#17@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#17@@0| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#5@@1| ($Box DatatypeTypeType |e#17@@0|)) (|AST.Expr__Raw.All#canCall| |e#17@@0| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.54:21|
 :skolemid |1178|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@20) |e#17@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |avals#5@@1| ($Box DatatypeTypeType |e#17@@0|)))
))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@23|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@23|))))) (let ((|els#5@@1| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@23|)))))
(let ((|thn#5@@1| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@23|)))))
(let ((|cond#5@@1| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@23|)))))
 (and (|AST.Expr__Raw.All#canCall| |cond#5@@1| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@20) |cond#5@@1| (Lit HandleTypeType |p#0@@2|)) (and (|AST.Expr__Raw.All#canCall| |thn#5@@1| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@20) |thn#5@@1| (Lit HandleTypeType |p#0@@2|)) (|AST.Expr__Raw.All#canCall| |els#5@@1| (Lit HandleTypeType |p#0@@2|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@23|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@23|))))) (let ((|oe2#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@23|)))))
(let ((|oe1#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@23|)))))
 (and (|AST.Expr__Raw.All#canCall| |oe1#5@@0| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@20) |oe1#5@@0| (Lit HandleTypeType |p#0@@2|)) (|AST.Expr__Raw.All#canCall| |oe2#5@@0| (Lit HandleTypeType |p#0@@2|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@23|)))))) (let ((|es#5@@1| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@23|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#18@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |e#18@@0| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#5@@1| ($Box DatatypeTypeType |e#18@@0|)) (|AST.Expr__Raw.All#canCall| |e#18@@0| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.60:21|
 :skolemid |1179|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@20) |e#18@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |es#5@@1| ($Box DatatypeTypeType |e#18@@0|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@20) (Lit DatatypeTypeType |e#0@@23|) (Lit HandleTypeType |p#0@@2|))  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@4 (Lit HandleTypeType |p#0@@2|) ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@23|))))) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@23|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@23|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@23|)) (let ((|body#4@@1| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@23|)))))
(let ((|bvals#4@@1| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@23|)))))
 (and (forall ((|e#13@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#13@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#4@@1| ($Box DatatypeTypeType |e#13@@0|))) (AST.Expr__Raw.All ($LS $ly@@20) |e#13@@0| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.51:22|
 :skolemid |1173|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@20) |e#13@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#4@@1| ($Box DatatypeTypeType |e#13@@0|)))
)) (AST.Expr__Raw.All ($LS $ly@@20) |body#4@@1| (Lit HandleTypeType |p#0@@2|))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@23|)) (let ((|avals#4@@1| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@23|)))))
 (and true (forall ((|e#14@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#14@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#4@@1| ($Box DatatypeTypeType |e#14@@0|))) (AST.Expr__Raw.All ($LS $ly@@20) |e#14@@0| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.54:21|
 :skolemid |1174|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@20) |e#14@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |avals#4@@1| ($Box DatatypeTypeType |e#14@@0|)))
)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@23|)) (U_2_bool (let ((|els#4@@1| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@23|)))))
(let ((|thn#4@@1| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@23|)))))
(let ((|cond#4@@1| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@23|)))))
(Lit boolType (bool_2_U  (and (and (AST.Expr__Raw.All ($LS $ly@@20) |cond#4@@1| (Lit HandleTypeType |p#0@@2|)) (AST.Expr__Raw.All ($LS $ly@@20) |thn#4@@1| (Lit HandleTypeType |p#0@@2|))) (AST.Expr__Raw.All ($LS $ly@@20) |els#4@@1| (Lit HandleTypeType |p#0@@2|))))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@23|)) (U_2_bool (let ((|oe2#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@23|)))))
(let ((|oe1#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@23|)))))
(Lit boolType (bool_2_U  (and (AST.Expr__Raw.All ($LS $ly@@20) |oe1#4@@0| (Lit HandleTypeType |p#0@@2|)) (AST.Expr__Raw.All ($LS $ly@@20) |oe2#4@@0| (Lit HandleTypeType |p#0@@2|)))))))) (let ((|es#4@@1| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@23|)))))
 (and true (forall ((|e#15@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#15@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#4@@1| ($Box DatatypeTypeType |e#15@@0|))) (AST.Expr__Raw.All ($LS $ly@@20) |e#15@@0| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.60:21|
 :skolemid |1175|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@20) |e#15@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |es#4@@1| ($Box DatatypeTypeType |e#15@@0|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :weight 3
 :skolemid |1180|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@20) (Lit DatatypeTypeType |e#0@@23|) (Lit HandleTypeType |p#0@@2|)) ($IsGoodHeap $Heap@@4))
)))
(assert (forall (($Heap@@5 T@U) (this@@10 T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed#canCall| this@@10) (and ($IsGoodHeap $Heap@@5) (and ($Is DatatypeTypeType this@@10 Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType this@@10 Tclass.AST.Expr__Raw $Heap@@5)))) (and (|AST.Expr__Raw.All#canCall| this@@10 |AST.Expr__Raw.WellFormed__Single#Handle|) (= (AST.Expr__Raw.WellFormed this@@10) (AST.Expr__Raw.All ($LS $LZ) this@@10 |AST.Expr__Raw.WellFormed__Single#Handle|))))
 :qid |ASTdfy.83:21|
 :skolemid |1202|
 :pattern ( (AST.Expr__Raw.WellFormed this@@10) ($IsGoodHeap $Heap@@5))
)))
(assert (forall ((d@@63 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (AST.Expr__Raw.Bind_q d@@63) ($IsAlloc DatatypeTypeType d@@63 Tclass.AST.Expr__Raw $h@@28))) ($IsAlloc SeqType (AST.Expr__Raw.bvals d@@63) (TSeq Tclass.AST.Expr__Raw) $h@@28))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.bvals d@@63) (TSeq Tclass.AST.Expr__Raw) $h@@28))
)))
(assert (forall ((d@@64 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (AST.Expr__Raw.Assign_q d@@64) ($IsAlloc DatatypeTypeType d@@64 Tclass.AST.Expr__Raw $h@@29))) ($IsAlloc SeqType (AST.Expr__Raw.avals d@@64) (TSeq Tclass.AST.Expr__Raw) $h@@29))
 :qid |unknown.0:0|
 :skolemid |1082|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.avals d@@64) (TSeq Tclass.AST.Expr__Raw) $h@@29))
)))
(assert (forall ((d@@65 T@U) ($h@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (AST.Expr__Raw.Seq_q d@@65) ($IsAlloc DatatypeTypeType d@@65 Tclass.AST.Expr__Raw $h@@30))) ($IsAlloc SeqType (AST.Expr__Raw.es d@@65) (TSeq Tclass.AST.Expr__Raw) $h@@30))
 :qid |unknown.0:0|
 :skolemid |1125|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.es d@@65) (TSeq Tclass.AST.Expr__Raw) $h@@30))
)))
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
(assert (forall ((v@@16 T@U) (t0@@12 T@U) ) (! (= ($Is SeqType v@@16 (TSeq t0@@12)) (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 (|Seq#Length| v@@16))) ($IsBox (|Seq#Index| v@@16 i@@13) t0@@12))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@16 i@@13))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@16 (TSeq t0@@12)))
)))
(assert (forall ((m@@15 T@U) ) (!  (or (= m@@15 |Map#Empty|) (exists ((k@@1 T@U) (v@@17 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@15) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@1 v@@17)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@15))
)))
(assert (forall ((s@@25 T@U) (i@@14 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 (|Seq#Length| s@@25))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@25 i@@14))) (|Seq#Rank| s@@25)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@25 i@@14))))
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
(declare-fun |st#0@@26| () T@U)
(declare-fun |bvals#0@@3| () T@U)
(declare-fun |st1#0@0| () T@U)
(declare-fun |vs#0@0| () T@U)
(declare-fun |bvars#0@@2| () T@U)
(declare-fun |body#0@@2| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##st#5@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@6 () T@U)
(declare-fun |e#0@@24| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$VarUnchanged.__default.InductBind__Fail)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon4_correct true))
(let ((anon5_Else_correct  (=> (and (=> (VarUnchanged.__default.Pes__Succ |st#0@@26| |bvals#0@@3| |st1#0@0| |vs#0@0|) (and (VarUnchanged.__default.UpdateState__Pre |st1#0@0| |bvars#0@@2| |vs#0@0|) (not (VarUnchanged.__default.P__Fail (VarUnchanged.__default.BindStartScope |st1#0@0| |bvars#0@@2| |vs#0@0|) |body#0@@2|)))) (= (ControlFlow 0 4) 1)) anon4_correct)))
(let ((anon5_Then_correct  (=> (and ($IsAlloc DatatypeTypeType |st#0@@26| Tclass.VarUnchanged.S $Heap@0) ($IsAlloc SeqType |bvals#0@@3| (TSeq Tclass.AST.Expr) $Heap@0)) (=> (and (and ($IsAlloc DatatypeTypeType |st1#0@0| Tclass.VarUnchanged.S $Heap@0) ($IsAlloc SeqType |vs#0@0| (TSeq TInt) $Heap@0)) (and (|VarUnchanged.__default.Pes__Succ#canCall| |st#0@@26| |bvals#0@@3| |st1#0@0| |vs#0@0|) (VarUnchanged.__default.Pes__Succ |st#0@@26| |bvals#0@@3| |st1#0@0| |vs#0@0|))) (=> (and (and (and ($IsAlloc DatatypeTypeType |st1#0@0| Tclass.VarUnchanged.S $Heap@0) ($IsAlloc SeqType |bvars#0@@2| (TSeq (TSeq TChar)) $Heap@0)) (and ($IsAlloc SeqType |vs#0@0| (TSeq TInt) $Heap@0) (|VarUnchanged.__default.UpdateState__Pre#canCall| |st1#0@0| |bvars#0@@2| |vs#0@0|))) (and (and (VarUnchanged.__default.UpdateState__Pre |st1#0@0| |bvars#0@@2| |vs#0@0|) ($IsAlloc DatatypeTypeType |st1#0@0| Tclass.VarUnchanged.S $Heap@0)) (and ($IsAlloc SeqType |bvars#0@@2| (TSeq (TSeq TChar)) $Heap@0) ($IsAlloc SeqType |vs#0@0| (TSeq TInt) $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (VarUnchanged.__default.UpdateState__Pre |st1#0@0| |bvars#0@@2| |vs#0@0|)) (=> (VarUnchanged.__default.UpdateState__Pre |st1#0@0| |bvars#0@@2| |vs#0@0|) (=> (and (and (and (|VarUnchanged.__default.BindStartScope#canCall| |st1#0@0| |bvars#0@@2| |vs#0@0|) (VarUnchanged.MState.MState_q (VarUnchanged.__default.BindStartScope |st1#0@0| |bvars#0@@2| |vs#0@0|))) (and (= |##st#5@0| (VarUnchanged.__default.BindStartScope |st1#0@0| |bvars#0@@2| |vs#0@0|)) ($IsAlloc DatatypeTypeType |##st#5@0| Tclass.VarUnchanged.S $Heap@0))) (and (and ($IsAlloc DatatypeTypeType |body#0@@2| Tclass.AST.Expr $Heap@0) (|VarUnchanged.__default.P__Fail#canCall| (VarUnchanged.__default.BindStartScope |st1#0@0| |bvars#0@@2| |vs#0@0|) |body#0@@2|)) (and (not (VarUnchanged.__default.P__Fail (VarUnchanged.__default.BindStartScope |st1#0@0| |bvars#0@@2| |vs#0@0|) |body#0@@2|)) (= (ControlFlow 0 2) 1)))) anon4_correct))))))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@6 alloc false)) (AST.Expr__Raw.Bind_q |e#0@@24|)) (and (AST.Expr__Raw.Bind_q |e#0@@24|) (|Seq#Equal| (AST.Expr__Raw.bvars |e#0@@24|) |bvars#0@@2|))) (=> (and (and (and (AST.Expr__Raw.Bind_q |e#0@@24|) (|Seq#Equal| (AST.Expr__Raw.bvals |e#0@@24|) |bvals#0@@3|)) (and (AST.Expr__Raw.Bind_q |e#0@@24|) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body |e#0@@24|) |body#0@@2|))) (and (and ($IsAlloc DatatypeTypeType |st#0@@26| Tclass.VarUnchanged.S $Heap@@6) ($IsAlloc DatatypeTypeType |e#0@@24| Tclass.AST.Expr $Heap@@6)) (and (|VarUnchanged.__default.P__Fail#canCall| |st#0@@26| |e#0@@24|) (not (VarUnchanged.__default.P__Fail |st#0@@26| |e#0@@24|))))) (=> (and (and (and (and ($IsAlloc DatatypeTypeType |st#0@@26| Tclass.VarUnchanged.S $Heap@@6) ($IsAlloc SeqType |bvals#0@@3| (TSeq Tclass.AST.Expr) $Heap@@6)) (and (|VarUnchanged.__default.Pes#canCall| |st#0@@26| |bvals#0@@3|) (VarUnchanged.__default.Pes |st#0@@26| |bvals#0@@3|))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@6 $Heap@0))) (and (and (and ($IsAlloc DatatypeTypeType |st#0@@26| Tclass.VarUnchanged.S $Heap@0) ($IsAlloc SeqType |bvals#0@@3| (TSeq Tclass.AST.Expr) $Heap@0)) (and (|VarUnchanged.__default.Pes__Fail#canCall| |st#0@@26| |bvals#0@@3|) (not (VarUnchanged.__default.Pes__Fail |st#0@@26| |bvals#0@@3|)))) (and (and ($Is DatatypeTypeType |st1#0@0| Tclass.VarUnchanged.S) ($IsAlloc DatatypeTypeType |st1#0@0| Tclass.VarUnchanged.S $Heap@0)) (and ($Is SeqType |vs#0@0| (TSeq TInt)) ($IsAlloc SeqType |vs#0@0| (TSeq TInt) $Heap@0))))) (and (=> (= (ControlFlow 0 5) 2) anon5_Then_correct) (=> (= (ControlFlow 0 5) 4) anon5_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (=> (and (and ($Is DatatypeTypeType |st#0@@26| Tclass.VarUnchanged.S) ($IsAlloc DatatypeTypeType |st#0@@26| Tclass.VarUnchanged.S $Heap@@6)) (|$IsA#VarUnchanged.MState| |st#0@@26|)) (=> (and (and (and (and ($Is DatatypeTypeType |e#0@@24| Tclass.AST.Expr) ($IsAlloc DatatypeTypeType |e#0@@24| Tclass.AST.Expr $Heap@@6)) (|$IsA#AST.Expr__Raw| |e#0@@24|)) (and (and ($Is SeqType |bvars#0@@2| (TSeq (TSeq TChar))) ($IsAlloc SeqType |bvars#0@@2| (TSeq (TSeq TChar)) $Heap@@6)) (and ($Is SeqType |bvals#0@@3| (TSeq Tclass.AST.Expr)) ($IsAlloc SeqType |bvals#0@@3| (TSeq Tclass.AST.Expr) $Heap@@6)))) (and (and (and ($Is DatatypeTypeType |body#0@@2| Tclass.AST.Expr) ($IsAlloc DatatypeTypeType |body#0@@2| Tclass.AST.Expr $Heap@@6)) (|$IsA#AST.Expr__Raw| |body#0@@2|)) (and (= 5 $FunctionContextHeight) (= (ControlFlow 0 6) 5)))) anon0_correct)))))
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
