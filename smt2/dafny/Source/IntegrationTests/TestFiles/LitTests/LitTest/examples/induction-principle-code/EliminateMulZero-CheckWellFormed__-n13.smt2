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
(declare-fun Tagclass.Utils.Result () T@U)
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
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$Expr_Raw () T@U)
(declare-fun tytagFamily$BinOp () T@U)
(declare-fun tytagFamily$Result () T@U)
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
(declare-fun |AST.Expr__Raw#Equal| (T@U T@U) Bool)
(declare-fun AST.Expr__Raw.Literal_q (T@U) Bool)
(declare-fun AST.Expr__Raw.n (T@U) Int)
(declare-fun |#AST.Expr_Raw.Var| (T@U) T@U)
(declare-fun |#AST.Expr_Raw.Seq| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#6| (T@U T@U) T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Utils.Result (T@U) T@U)
(declare-fun Utils.Result.Failure_q (T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |_System.Tuple2#Equal| (T@U T@U) Bool)
(declare-fun |#Utils.Result.Failure| () T@U)
(declare-fun |#AST.BinOp.Add| () T@U)
(declare-fun |#AST.BinOp.Sub| () T@U)
(declare-fun |#AST.BinOp.Mul| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun AST.Expr__Raw.WellFormed (T@U) Bool)
(declare-fun |AST.Expr__Raw.WellFormed#canCall| (T@U) Bool)
(declare-fun |AST.Expr__Raw.All#canCall| (T@U T@U) Bool)
(declare-fun |AST.Expr__Raw.WellFormed__Single#Handle| () T@U)
(declare-fun AST.Expr__Raw.All (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun Pure.__default.IsPure__Es (T@U T@U T@U) Bool)
(declare-fun |Pure.__default.IsPure__Es#canCall| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Pure.__default.IsPure#canCall| (T@U T@U) Bool)
(declare-fun Pure.__default.IsPure (T@U T@U T@U) Bool)
(declare-fun |AST.BinOp#Equal| (T@U T@U) Bool)
(declare-fun Interp.__default.InterpBinOp (T@U Int Int) Int)
(declare-fun |Interp.__default.InterpBinOp#canCall| (T@U Int Int) Bool)
(declare-fun AST.BinOp.Add_q (T@U) Bool)
(declare-fun AST.BinOp.Sub_q (T@U) Bool)
(declare-fun Mul (Int Int) Int)
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
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |$IsA#AST.Expr__Raw| (T@U) Bool)
(declare-fun AST.Expr__Raw.Seq_q (T@U) Bool)
(declare-fun Utils.Result.Success_q (T@U) Bool)
(declare-fun AST.BinOp.Mul_q (T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun EliminateMulZero.__default.Zero () Int)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |#AST.Expr_Raw.Literal| (Int) T@U)
(declare-fun Utils.Result.value (T@U) T@U)
(declare-fun EliminateMulZero.__default.ZeroExpr () T@U)
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
(declare-fun BoxRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun EliminateMulZero.__default.IsZeroMulPure (T@U T@U) Bool)
(declare-fun |EliminateMulZero.__default.IsZeroMulPure#canCall| (T@U T@U) Bool)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSet TagSeq TagMap alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.AST.Expr Tagclass.AST.Expr__Raw Tagclass.AST.BinOp Tagclass.Utils.Result |##Utils.Result.Success| |##Utils.Result.Failure| |##AST.BinOp.Add| |##AST.BinOp.Sub| |##AST.BinOp.Mul| |##AST.Expr_Raw.Var| |##AST.Expr_Raw.Literal| |##AST.Expr_Raw.Bind| |##AST.Expr_Raw.Assign| |##AST.Expr_Raw.If| |##AST.Expr_Raw.Op| |##AST.Expr_Raw.Seq| |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| |tytagFamily$_tuple#2| tytagFamily$Expr tytagFamily$Expr_Raw tytagFamily$BinOp tytagFamily$Result)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#39#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#39#0#0| i))) (DtRank (|#AST.Expr_Raw.Bind| |a#39#0#0| |a#39#1#0| |a#39#2#0|))))
 :qid |ASTdfy.17:12|
 :skolemid |978|
 :pattern ( (|Seq#Index| |a#39#0#0| i) (|#AST.Expr_Raw.Bind| |a#39#0#0| |a#39#1#0| |a#39#2#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) (|a#42#2#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#42#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#42#1#0| i@@0))) (DtRank (|#AST.Expr_Raw.Bind| |a#42#0#0| |a#42#1#0| |a#42#2#0|))))
 :qid |ASTdfy.17:12|
 :skolemid |981|
 :pattern ( (|Seq#Index| |a#42#1#0| i@@0) (|#AST.Expr_Raw.Bind| |a#42#0#0| |a#42#1#0| |a#42#2#0|))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#51#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#51#0#0| i@@1))) (DtRank (|#AST.Expr_Raw.Assign| |a#51#0#0| |a#51#1#0|))))
 :qid |ASTdfy.18:14|
 :skolemid |994|
 :pattern ( (|Seq#Index| |a#51#0#0| i@@1) (|#AST.Expr_Raw.Assign| |a#51#0#0| |a#51#1#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| |a#54#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#54#1#0| i@@2))) (DtRank (|#AST.Expr_Raw.Assign| |a#54#0#0| |a#54#1#0|))))
 :qid |ASTdfy.18:14|
 :skolemid |997|
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
 :skolemid |1003|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.If| |a#58#0#0| |a#58#1#0| |a#58#2#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((|a#68#0#0| T@U) (|a#68#1#0| T@U) (|a#68#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Op| |a#68#0#0| |a#68#1#0| |a#68#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is DatatypeTypeType |a#68#0#0| Tclass.AST.BinOp) ($Is DatatypeTypeType |a#68#1#0| Tclass.AST.Expr__Raw)) ($Is DatatypeTypeType |a#68#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.20:10|
 :skolemid |1018|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Op| |a#68#0#0| |a#68#1#0| |a#68#2#0|) Tclass.AST.Expr__Raw))
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
 :skolemid |1132|
 :pattern ( (Interp.__default.InterpExprs ($LS $ly) (Lit SeqType |es#0|) (Lit MapType |ctx#0|)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (AST.Expr__Raw.Literal_q a@@1) (AST.Expr__Raw.Literal_q b@@1)) (= (|AST.Expr__Raw#Equal| a@@1 b@@1) (= (AST.Expr__Raw.n a@@1) (AST.Expr__Raw.n b@@1))))
 :qid |unknown.0:0|
 :skolemid |1043|
 :pattern ( (|AST.Expr__Raw#Equal| a@@1 b@@1) (AST.Expr__Raw.Literal_q a@@1))
 :pattern ( (|AST.Expr__Raw#Equal| a@@1 b@@1) (AST.Expr__Raw.Literal_q b@@1))
)))
(assert (forall ((|a#27#0#0| T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| |a#27#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#27#0#0| i@@3))) (DtRank (|#AST.Expr_Raw.Var| |a#27#0#0|))))
 :qid |ASTdfy.15:11|
 :skolemid |958|
 :pattern ( (|Seq#Index| |a#27#0#0| i@@3) (|#AST.Expr_Raw.Var| |a#27#0#0|))
)))
(assert (forall ((|a#81#0#0| T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| |a#81#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#81#0#0| i@@4))) (DtRank (|#AST.Expr_Raw.Seq| |a#81#0#0|))))
 :qid |ASTdfy.21:11|
 :skolemid |1037|
 :pattern ( (|Seq#Index| |a#81#0#0| i@@4) (|#AST.Expr_Raw.Seq| |a#81#0#0|))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#6| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Seq#Contains| |l#1| |$y#0|)))
 :qid |unknown.0:0|
 :skolemid |1266|
 :pattern ( (MapType0Select BoxType boolType (|lambda#6| |l#0| |l#1|) |$y#0|))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Bind| |a#34#0#0| |a#34#1#0| |a#34#2#0|)) |##AST.Expr_Raw.Bind|)
 :qid |ASTdfy.17:12|
 :skolemid |968|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#34#0#0| |a#34#1#0| |a#34#2#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) ) (! (= (AST.Expr__Raw.bvars (|#AST.Expr_Raw.Bind| |a#38#0#0| |a#38#1#0| |a#38#2#0|)) |a#38#0#0|)
 :qid |ASTdfy.17:12|
 :skolemid |977|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#38#0#0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) ) (! (= (AST.Expr__Raw.bvals (|#AST.Expr_Raw.Bind| |a#41#0#0| |a#41#1#0| |a#41#2#0|)) |a#41#1#0|)
 :qid |ASTdfy.17:12|
 :skolemid |980|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#41#0#0| |a#41#1#0| |a#41#2#0|))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) (|a#44#2#0| T@U) ) (! (= (AST.Expr__Raw.body (|#AST.Expr_Raw.Bind| |a#44#0#0| |a#44#1#0| |a#44#2#0|)) |a#44#2#0|)
 :qid |ASTdfy.17:12|
 :skolemid |983|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#44#0#0| |a#44#1#0| |a#44#2#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) (|a#56#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.If| |a#56#0#0| |a#56#1#0| |a#56#2#0|)) |##AST.Expr_Raw.If|)
 :qid |ASTdfy.19:10|
 :skolemid |999|
 :pattern ( (|#AST.Expr_Raw.If| |a#56#0#0| |a#56#1#0| |a#56#2#0|))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) (|a#60#2#0| T@U) ) (! (= (AST.Expr__Raw.cond (|#AST.Expr_Raw.If| |a#60#0#0| |a#60#1#0| |a#60#2#0|)) |a#60#0#0|)
 :qid |ASTdfy.19:10|
 :skolemid |1008|
 :pattern ( (|#AST.Expr_Raw.If| |a#60#0#0| |a#60#1#0| |a#60#2#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) (|a#62#2#0| T@U) ) (! (= (AST.Expr__Raw.thn (|#AST.Expr_Raw.If| |a#62#0#0| |a#62#1#0| |a#62#2#0|)) |a#62#1#0|)
 :qid |ASTdfy.19:10|
 :skolemid |1010|
 :pattern ( (|#AST.Expr_Raw.If| |a#62#0#0| |a#62#1#0| |a#62#2#0|))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) (|a#64#2#0| T@U) ) (! (= (AST.Expr__Raw.els (|#AST.Expr_Raw.If| |a#64#0#0| |a#64#1#0| |a#64#2#0|)) |a#64#2#0|)
 :qid |ASTdfy.19:10|
 :skolemid |1012|
 :pattern ( (|#AST.Expr_Raw.If| |a#64#0#0| |a#64#1#0| |a#64#2#0|))
)))
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) (|a#66#2#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Op| |a#66#0#0| |a#66#1#0| |a#66#2#0|)) |##AST.Expr_Raw.Op|)
 :qid |ASTdfy.20:10|
 :skolemid |1014|
 :pattern ( (|#AST.Expr_Raw.Op| |a#66#0#0| |a#66#1#0| |a#66#2#0|))
)))
(assert (forall ((|a#70#0#0| T@U) (|a#70#1#0| T@U) (|a#70#2#0| T@U) ) (! (= (AST.Expr__Raw.op (|#AST.Expr_Raw.Op| |a#70#0#0| |a#70#1#0| |a#70#2#0|)) |a#70#0#0|)
 :qid |ASTdfy.20:10|
 :skolemid |1023|
 :pattern ( (|#AST.Expr_Raw.Op| |a#70#0#0| |a#70#1#0| |a#70#2#0|))
)))
(assert (forall ((|a#72#0#0| T@U) (|a#72#1#0| T@U) (|a#72#2#0| T@U) ) (! (= (AST.Expr__Raw.oe1 (|#AST.Expr_Raw.Op| |a#72#0#0| |a#72#1#0| |a#72#2#0|)) |a#72#1#0|)
 :qid |ASTdfy.20:10|
 :skolemid |1025|
 :pattern ( (|#AST.Expr_Raw.Op| |a#72#0#0| |a#72#1#0| |a#72#2#0|))
)))
(assert (forall ((|a#74#0#0| T@U) (|a#74#1#0| T@U) (|a#74#2#0| T@U) ) (! (= (AST.Expr__Raw.oe2 (|#AST.Expr_Raw.Op| |a#74#0#0| |a#74#1#0| |a#74#2#0|)) |a#74#2#0|)
 :qid |ASTdfy.20:10|
 :skolemid |1027|
 :pattern ( (|#AST.Expr_Raw.Op| |a#74#0#0| |a#74#1#0| |a#74#2#0|))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@2 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@2 b@@2) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@2 b@@2) (|Set#IsMember| b@@2 y@@1))
)))
(assert (forall ((|e#0| T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed__Single#canCall| |e#0|) ($Is DatatypeTypeType |e#0| Tclass.AST.Expr__Raw)) (= (AST.Expr__Raw.WellFormed__Single |e#0|) (ite (AST.Expr__Raw.Var_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q |e#0|) (let ((|bvals#0| (AST.Expr__Raw.bvals |e#0|)))
(let ((|bvars#0| (AST.Expr__Raw.bvars |e#0|)))
(= (|Seq#Length| |bvars#0|) (|Seq#Length| |bvals#0|)))) (ite (AST.Expr__Raw.Assign_q |e#0|) (let ((|avals#0| (AST.Expr__Raw.avals |e#0|)))
(let ((|avars#0| (AST.Expr__Raw.avars |e#0|)))
(= (|Seq#Length| |avars#0|) (|Seq#Length| |avals#0|)))) (ite (AST.Expr__Raw.If_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Op_q |e#0|) (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
 :qid |ASTdfy.71:46|
 :skolemid |1103|
 :pattern ( (AST.Expr__Raw.WellFormed__Single |e#0|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall (($Heap T@U) (Utils.Result$T T@U) (Utils.Result.PropagateFailure$U T@U) (this T@U) ) (!  (=> (and (or (|Utils.Result.PropagateFailure#canCall| Utils.Result$T Utils.Result.PropagateFailure$U this) (and ($IsAlloc DatatypeTypeType this (Tclass.Utils.Result Utils.Result$T) $Heap) (Utils.Result.Failure_q this))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (Utils.Result.PropagateFailure Utils.Result$T Utils.Result.PropagateFailure$U this) (Tclass.Utils.Result Utils.Result.PropagateFailure$U) $Heap))
 :qid |Utilsdfy.29:14|
 :skolemid |906|
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
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|_System.Tuple2#Equal| a@@3 b@@3)  (and (= (_System.Tuple2._0 a@@3) (_System.Tuple2._0 b@@3)) (= (_System.Tuple2._1 a@@3) (_System.Tuple2._1 b@@3))))
 :qid |unknown.0:0|
 :skolemid |469|
 :pattern ( (|_System.Tuple2#Equal| a@@3 b@@3))
)))
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
 :skolemid |905|
 :pattern ( (Utils.Result.PropagateFailure Utils.Result$T@@0 Utils.Result.PropagateFailure$U@@0 this@@0))
)))
(assert (forall ((|e#0@@0| T@U) ($h T@U) ) (! (= ($IsAlloc DatatypeTypeType |e#0@@0| Tclass.AST.Expr $h) ($IsAlloc DatatypeTypeType |e#0@@0| Tclass.AST.Expr__Raw $h))
 :qid |unknown.0:0|
 :skolemid |1114|
 :pattern ( ($IsAlloc DatatypeTypeType |e#0@@0| Tclass.AST.Expr $h))
)))
(assert (forall ((Utils.Result$T@@1 T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#Utils.Result.Failure| (Tclass.Utils.Result Utils.Result$T@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |895|
 :pattern ( ($IsAlloc DatatypeTypeType |#Utils.Result.Failure| (Tclass.Utils.Result Utils.Result$T@@1) $h@@0))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#48#0#0| |a#48#1#0|) Tclass.AST.Expr__Raw)  (and ($Is SeqType |a#48#0#0| (TSeq (TSeq TChar))) ($Is SeqType |a#48#1#0| (TSeq Tclass.AST.Expr__Raw))))
 :qid |ASTdfy.18:14|
 :skolemid |989|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#48#0#0| |a#48#1#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#36#0#0| |a#36#1#0| |a#36#2#0|) Tclass.AST.Expr__Raw)  (and (and ($Is SeqType |a#36#0#0| (TSeq (TSeq TChar))) ($Is SeqType |a#36#1#0| (TSeq Tclass.AST.Expr__Raw))) ($Is DatatypeTypeType |a#36#2#0| Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.17:12|
 :skolemid |972|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#36#0#0| |a#36#1#0| |a#36#2#0|) Tclass.AST.Expr__Raw))
)))
(assert ($Is DatatypeTypeType |#AST.BinOp.Add| Tclass.AST.BinOp))
(assert ($Is DatatypeTypeType |#AST.BinOp.Sub| Tclass.AST.BinOp))
(assert ($Is DatatypeTypeType |#AST.BinOp.Mul| Tclass.AST.BinOp))
(assert (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed#canCall| (Lit DatatypeTypeType this@@1)) (and ($IsGoodHeap $Heap@@0) (and ($Is DatatypeTypeType this@@1 Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType this@@1 Tclass.AST.Expr__Raw $Heap@@0)))) (and (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType this@@1) |AST.Expr__Raw.WellFormed__Single#Handle|) (= (AST.Expr__Raw.WellFormed (Lit DatatypeTypeType this@@1)) (AST.Expr__Raw.All ($LS $LZ) (Lit DatatypeTypeType this@@1) |AST.Expr__Raw.WellFormed__Single#Handle|))))
 :qid |ASTdfy.83:21|
 :weight 3
 :skolemid |1112|
 :pattern ( (AST.Expr__Raw.WellFormed (Lit DatatypeTypeType this@@1)) ($IsGoodHeap $Heap@@0))
)))
(assert (= (Ctor SetType) 8))
(assert (forall (($ly@@0 T@U) (|es#0@@0| T@U) (|locals#0| T@U) ) (!  (=> (or (|Pure.__default.IsPure__Es#canCall| |es#0@@0| |locals#0|) (and ($Is SeqType |es#0@@0| (TSeq Tclass.AST.Expr)) ($Is SetType |locals#0| (TSet (TSeq TChar))))) (and (=> (not (|Seq#Equal| |es#0@@0| |Seq#Empty|)) (and (|Pure.__default.IsPure#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |es#0@@0| (LitInt 0))) |locals#0|) (=> (Pure.__default.IsPure $ly@@0 ($Unbox DatatypeTypeType (|Seq#Index| |es#0@@0| (LitInt 0))) |locals#0|) (|Pure.__default.IsPure__Es#canCall| (|Seq#Drop| |es#0@@0| (LitInt 1)) |locals#0|)))) (= (Pure.__default.IsPure__Es ($LS $ly@@0) |es#0@@0| |locals#0|) (ite (|Seq#Equal| |es#0@@0| |Seq#Empty|) true  (and (Pure.__default.IsPure $ly@@0 ($Unbox DatatypeTypeType (|Seq#Index| |es#0@@0| (LitInt 0))) |locals#0|) (Pure.__default.IsPure__Es $ly@@0 (|Seq#Drop| |es#0@@0| (LitInt 1)) |locals#0|))))))
 :qid |Puredfy.39:13|
 :skolemid |1156|
 :pattern ( (Pure.__default.IsPure__Es ($LS $ly@@0) |es#0@@0| |locals#0|))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (!  (=> (and (AST.Expr__Raw.Bind_q a@@6) (AST.Expr__Raw.Bind_q b@@6)) (= (|AST.Expr__Raw#Equal| a@@6 b@@6)  (and (and (|Seq#Equal| (AST.Expr__Raw.bvars a@@6) (AST.Expr__Raw.bvars b@@6)) (|Seq#Equal| (AST.Expr__Raw.bvals a@@6) (AST.Expr__Raw.bvals b@@6))) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.body a@@6) (AST.Expr__Raw.body b@@6)))))
 :qid |unknown.0:0|
 :skolemid |1044|
 :pattern ( (|AST.Expr__Raw#Equal| a@@6 b@@6) (AST.Expr__Raw.Bind_q a@@6))
 :pattern ( (|AST.Expr__Raw#Equal| a@@6 b@@6) (AST.Expr__Raw.Bind_q b@@6))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (and (AST.Expr__Raw.If_q a@@7) (AST.Expr__Raw.If_q b@@7)) (= (|AST.Expr__Raw#Equal| a@@7 b@@7)  (and (and (|AST.Expr__Raw#Equal| (AST.Expr__Raw.cond a@@7) (AST.Expr__Raw.cond b@@7)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.thn a@@7) (AST.Expr__Raw.thn b@@7))) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.els a@@7) (AST.Expr__Raw.els b@@7)))))
 :qid |unknown.0:0|
 :skolemid |1046|
 :pattern ( (|AST.Expr__Raw#Equal| a@@7 b@@7) (AST.Expr__Raw.If_q a@@7))
 :pattern ( (|AST.Expr__Raw#Equal| a@@7 b@@7) (AST.Expr__Raw.If_q b@@7))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (and (AST.Expr__Raw.Op_q a@@8) (AST.Expr__Raw.Op_q b@@8)) (= (|AST.Expr__Raw#Equal| a@@8 b@@8)  (and (and (|AST.BinOp#Equal| (AST.Expr__Raw.op a@@8) (AST.Expr__Raw.op b@@8)) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe1 a@@8) (AST.Expr__Raw.oe1 b@@8))) (|AST.Expr__Raw#Equal| (AST.Expr__Raw.oe2 a@@8) (AST.Expr__Raw.oe2 b@@8)))))
 :qid |unknown.0:0|
 :skolemid |1047|
 :pattern ( (|AST.Expr__Raw#Equal| a@@8 b@@8) (AST.Expr__Raw.Op_q a@@8))
 :pattern ( (|AST.Expr__Raw#Equal| a@@8 b@@8) (AST.Expr__Raw.Op_q b@@8))
)))
(assert (forall ((Utils.Result$T@@2 T@U) ) (! ($Is DatatypeTypeType |#Utils.Result.Failure| (Tclass.Utils.Result Utils.Result$T@@2))
 :qid |unknown.0:0|
 :skolemid |894|
 :pattern ( ($Is DatatypeTypeType |#Utils.Result.Failure| (Tclass.Utils.Result Utils.Result$T@@2)))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (! (= (|_System.Tuple2#Equal| a@@9 b@@9) (= a@@9 b@@9))
 :qid |unknown.0:0|
 :skolemid |470|
 :pattern ( (|_System.Tuple2#Equal| a@@9 b@@9))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|AST.BinOp#Equal| a@@10 b@@10) (= a@@10 b@@10))
 :qid |unknown.0:0|
 :skolemid |949|
 :pattern ( (|AST.BinOp#Equal| a@@10 b@@10))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) ) (! (= (|AST.Expr__Raw#Equal| a@@11 b@@11) (= a@@11 b@@11))
 :qid |unknown.0:0|
 :skolemid |1049|
 :pattern ( (|AST.Expr__Raw#Equal| a@@11 b@@11))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@2 n@@1) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@2 n@@1))
)))
(assert (forall ((|op#0| T@U) (|x#0| Int) (|y#0| Int) ) (!  (=> (or (|Interp.__default.InterpBinOp#canCall| |op#0| |x#0| |y#0|) ($Is DatatypeTypeType |op#0| Tclass.AST.BinOp)) (= (Interp.__default.InterpBinOp |op#0| |x#0| |y#0|) (ite (AST.BinOp.Add_q |op#0|) (+ |x#0| |y#0|) (ite (AST.BinOp.Sub_q |op#0|) (- |x#0| |y#0|) (Mul |x#0| |y#0|)))))
 :qid |Interpdfy.16:24|
 :skolemid |1117|
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
(assert (forall (($ly@@1 T@U) (|e#0@@1| T@U) (|ctx#0@@0| T@U) ) (!  (=> (or (|Interp.__default.InterpExpr#canCall| |e#0@@1| |ctx#0@@0|) (and ($Is DatatypeTypeType |e#0@@1| Tclass.AST.Expr) ($Is MapType |ctx#0@@0| (TMap (TSeq TChar) TInt)))) (and (=> (not (AST.Expr__Raw.Var_q |e#0@@1|)) (=> (not (AST.Expr__Raw.Literal_q |e#0@@1|)) (and (=> (AST.Expr__Raw.Bind_q |e#0@@1|) (let ((|body#1| (AST.Expr__Raw.body |e#0@@1|)))
(let ((|bvals#1| (AST.Expr__Raw.bvals |e#0@@1|)))
(let ((|bvars#1| (AST.Expr__Raw.bvars |e#0@@1|)))
 (and (|Interp.__default.InterpExprs#canCall| |bvals#1| |ctx#0@@0|) (let ((|valueOrError0#1| (Interp.__default.InterpExprs $ly@@1 |bvals#1| |ctx#0@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|) (let ((|ctx1#4| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|))))))
(let ((|vs#3| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1|))))))
 (and (|Interp.__default.VarsAndValuesToContext#canCall| |bvars#1| |vs#3|) (let ((|bindings#2| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#1| |vs#3|)))
(let ((|ctx2#2@@0| (|Map#Merge| |ctx1#4| |bindings#2|)))
 (and (|Interp.__default.InterpExpr#canCall| |body#1| |ctx2#2@@0|) (let ((|valueOrError1#1| (Interp.__default.InterpExpr $ly@@1 |body#1| |ctx2#2@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#1|))))))))))))))))))) (=> (not (AST.Expr__Raw.Bind_q |e#0@@1|)) (and (=> (AST.Expr__Raw.Assign_q |e#0@@1|) (let ((|avals#1| (AST.Expr__Raw.avals |e#0@@1|)))
(let ((|avars#1| (AST.Expr__Raw.avars |e#0@@1|)))
 (and (|Interp.__default.InterpExprs#canCall| |avals#1| |ctx#0@@0|) (let ((|valueOrError2#1| (Interp.__default.InterpExprs $ly@@1 |avals#1| |ctx#0@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|) (let ((|vs#4| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#1|))))))
(|Interp.__default.VarsAndValuesToContext#canCall| |avars#1| |vs#4|)))))))))) (=> (not (AST.Expr__Raw.Assign_q |e#0@@1|)) (and (=> (AST.Expr__Raw.If_q |e#0@@1|) (let ((|els#1| (AST.Expr__Raw.els |e#0@@1|)))
(let ((|thn#1| (AST.Expr__Raw.thn |e#0@@1|)))
(let ((|cond#1| (AST.Expr__Raw.cond |e#0@@1|)))
 (and (|Interp.__default.InterpExpr#canCall| |cond#1| |ctx#0@@0|) (let ((|valueOrError3#1| (Interp.__default.InterpExpr $ly@@1 |cond#1| |ctx#0@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|) (let ((|ctx_cond#1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|))))))
(let ((|condv#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#1|)))))))
 (and (=> (or (not (= |condv#1| 0)) (not true)) (|Interp.__default.InterpExpr#canCall| |thn#1| |ctx_cond#1|)) (=> (= |condv#1| 0) (|Interp.__default.InterpExpr#canCall| |els#1| |ctx_cond#1|)))))))))))))) (=> (not (AST.Expr__Raw.If_q |e#0@@1|)) (and (=> (AST.Expr__Raw.Op_q |e#0@@1|) (let ((|e2#1| (AST.Expr__Raw.oe2 |e#0@@1|)))
(let ((|e1#1| (AST.Expr__Raw.oe1 |e#0@@1|)))
(let ((|op#1| (AST.Expr__Raw.op |e#0@@1|)))
 (and (|Interp.__default.InterpExpr#canCall| |e1#1| |ctx#0@@0|) (let ((|valueOrError4#1| (Interp.__default.InterpExpr $ly@@1 |e1#1| |ctx#0@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|) (let ((|ctx1#6| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|))))))
(let ((|v1#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#1|)))))))
 (and (|Interp.__default.InterpExpr#canCall| |e2#1| |ctx1#6|) (let ((|valueOrError5#1| (Interp.__default.InterpExpr $ly@@1 |e2#1| |ctx1#6|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|) (let ((|v2#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#1|)))))))
(|Interp.__default.InterpBinOp#canCall| |op#1| |v1#1| |v2#1|)))))))))))))))))) (=> (not (AST.Expr__Raw.Op_q |e#0@@1|)) (let ((|es#1| (AST.Expr__Raw.es |e#0@@1|)))
 (and (|Interp.__default.InterpExprs#canCall| |es#1| |ctx#0@@0|) (let ((|valueOrError6#1| (Interp.__default.InterpExprs $ly@@1 |es#1| |ctx#0@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#1|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#1|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#1|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#1|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#1|)))))))))))))))) (= (Interp.__default.InterpExpr ($LS $ly@@1) |e#0@@1| |ctx#0@@0|) (ite (AST.Expr__Raw.Var_q |e#0@@1|) (let ((|name#0| (AST.Expr__Raw.name |e#0@@1|)))
(ite (|Set#IsMember| (|Map#Domain| |ctx#0@@0|) ($Box SeqType |name#0|)) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@0|) ($Box SeqType |name#0|)) ($Box MapType |ctx#0@@0|)))) |#Utils.Result.Failure|)) (ite (AST.Expr__Raw.Literal_q |e#0@@1|) (let ((|n#0| (AST.Expr__Raw.n |e#0@@1|)))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |n#0|)) ($Box MapType |ctx#0@@0|))))) (ite (AST.Expr__Raw.Bind_q |e#0@@1|) (let ((|body#0| (AST.Expr__Raw.body |e#0@@1|)))
(let ((|bvals#0@@0| (AST.Expr__Raw.bvals |e#0@@1|)))
(let ((|bvars#0@@0| (AST.Expr__Raw.bvars |e#0@@1|)))
(let ((|valueOrError0#0| (Interp.__default.InterpExprs $ly@@1 |bvals#0@@0| |ctx#0@@0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0|) (let ((|ctx1#0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0|))))))
(let ((|vs#0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0|))))))
(let ((|bindings#0| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#0@@0| |vs#0|)))
(let ((|ctx2#0| (|Map#Merge| |ctx1#0| |bindings#0|)))
(let ((|valueOrError1#0| (Interp.__default.InterpExpr $ly@@1 |body#0| |ctx2#0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#0|) (let ((|ctx3#0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#0|))))))
(let ((|bodyv#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#0|)))))))
(let ((|ctx4#0| (|Map#Merge| |ctx1#0| (|Map#Subtract| |ctx3#0| (|Set#FromBoogieMap| (|lambda#6| (TSeq TChar) |bvars#0@@0|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |bodyv#0|)) ($Box MapType |ctx4#0|)))))))))))))))))) (ite (AST.Expr__Raw.Assign_q |e#0@@1|) (let ((|avals#0@@0| (AST.Expr__Raw.avals |e#0@@1|)))
(let ((|avars#0@@0| (AST.Expr__Raw.avars |e#0@@1|)))
(let ((|valueOrError2#0| (Interp.__default.InterpExprs $ly@@1 |avals#0@@0| |ctx#0@@0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#0|) (let ((|ctx1#1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#0|))))))
(let ((|vs#1| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#0|))))))
(let ((|bindings#1| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |avars#0@@0| |vs#1|)))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType (|Map#Merge| |ctx1#1| |bindings#1|)))))))))))) (ite (AST.Expr__Raw.If_q |e#0@@1|) (let ((|els#0| (AST.Expr__Raw.els |e#0@@1|)))
(let ((|thn#0| (AST.Expr__Raw.thn |e#0@@1|)))
(let ((|cond#0| (AST.Expr__Raw.cond |e#0@@1|)))
(let ((|valueOrError3#0| (Interp.__default.InterpExpr $ly@@1 |cond#0| |ctx#0@@0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#0|) (let ((|ctx_cond#0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#0|))))))
(let ((|condv#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#0|)))))))
(ite  (or (not (= |condv#0| 0)) (not true)) (Interp.__default.InterpExpr $ly@@1 |thn#0| |ctx_cond#0|) (Interp.__default.InterpExpr $ly@@1 |els#0| |ctx_cond#0|))))))))) (ite (AST.Expr__Raw.Op_q |e#0@@1|) (let ((|e2#0| (AST.Expr__Raw.oe2 |e#0@@1|)))
(let ((|e1#0| (AST.Expr__Raw.oe1 |e#0@@1|)))
(let ((|op#0@@0| (AST.Expr__Raw.op |e#0@@1|)))
(let ((|valueOrError4#0| (Interp.__default.InterpExpr $ly@@1 |e1#0| |ctx#0@@0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#0|) (let ((|ctx1#2@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#0|))))))
(let ((|v1#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#0|)))))))
(let ((|valueOrError5#0| (Interp.__default.InterpExpr $ly@@1 |e2#0| |ctx1#2@@1|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#0|) (let ((|ctx2#1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#0|))))))
(let ((|v2#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#0|)))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Interp.__default.InterpBinOp |op#0@@0| |v1#0| |v2#0|))) ($Box MapType |ctx2#1|))))))))))))))) (let ((|es#0@@1| (AST.Expr__Raw.es |e#0@@1|)))
(let ((|valueOrError6#0| (Interp.__default.InterpExprs $ly@@1 |es#0@@1| |ctx#0@@0|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#0|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#0|) (let ((|ctx1#3| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#0|))))))
(let ((|vs#2@@0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#0|))))))
(ite (|Seq#Equal| |vs#2@@0| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType |ctx1#3|)))) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (|Seq#Index| |vs#2@@0| (- (|Seq#Length| |vs#2@@0|) 1)) ($Box MapType |ctx1#3|)))))))))))))))))))
 :qid |Interpdfy.24:12|
 :skolemid |1123|
 :pattern ( (Interp.__default.InterpExpr ($LS $ly@@1) |e#0@@1| |ctx#0@@0|))
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
(assert (forall (($ly@@2 T@U) (|es#0@@2| T@U) (|locals#0@@0| T@U) ) (!  (=> (or (|Pure.__default.IsPure__Es#canCall| (Lit SeqType |es#0@@2|) |locals#0@@0|) (and ($Is SeqType |es#0@@2| (TSeq Tclass.AST.Expr)) ($Is SetType |locals#0@@0| (TSet (TSeq TChar))))) (and (=> (not (|Seq#Equal| |es#0@@2| |Seq#Empty|)) (and (|Pure.__default.IsPure#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@2|) (LitInt 0))) |locals#0@@0|) (=> (Pure.__default.IsPure ($LS $ly@@2) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@2|) (LitInt 0))) |locals#0@@0|) (|Pure.__default.IsPure__Es#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@2|) (LitInt 1))) |locals#0@@0|)))) (= (Pure.__default.IsPure__Es ($LS $ly@@2) (Lit SeqType |es#0@@2|) |locals#0@@0|) (ite (|Seq#Equal| |es#0@@2| |Seq#Empty|) true  (and (Pure.__default.IsPure ($LS $ly@@2) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@2|) (LitInt 0))) |locals#0@@0|) (Pure.__default.IsPure__Es ($LS $ly@@2) (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@2|) (LitInt 1))) |locals#0@@0|))))))
 :qid |Puredfy.39:13|
 :weight 3
 :skolemid |1157|
 :pattern ( (Pure.__default.IsPure__Es ($LS $ly@@2) (Lit SeqType |es#0@@2|) |locals#0@@0|))
)))
(assert (forall ((s@@4 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@4))) (= (|Seq#Index| (|Seq#Take| s@@4 n@@2) j) (|Seq#Index| s@@4 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@4 n@@2) j))
 :pattern ( (|Seq#Index| s@@4 j) (|Seq#Take| s@@4 n@@2))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Drop| s@@5 n@@3)) (- (|Seq#Length| s@@5) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@5 n@@3)))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#AST.Expr__Raw| d@@0) (or (or (or (or (or (or (AST.Expr__Raw.Var_q d@@0) (AST.Expr__Raw.Literal_q d@@0)) (AST.Expr__Raw.Bind_q d@@0)) (AST.Expr__Raw.Assign_q d@@0)) (AST.Expr__Raw.If_q d@@0)) (AST.Expr__Raw.Op_q d@@0)) (AST.Expr__Raw.Seq_q d@@0)))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( (|$IsA#AST.Expr__Raw| d@@0))
)))
(assert (forall ((Utils.Result$T@@3 T@U) (this@@2 T@U) ) (!  (=> (or (|Utils.Result.IsFailure#canCall| Utils.Result$T@@3 this@@2) ($Is DatatypeTypeType this@@2 (Tclass.Utils.Result Utils.Result$T@@3))) (= (Utils.Result.IsFailure Utils.Result$T@@3 this@@2) (Utils.Result.Failure_q this@@2)))
 :qid |unknown.0:0|
 :skolemid |903|
 :pattern ( (Utils.Result.IsFailure Utils.Result$T@@3 this@@2))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (Utils.Result.Success_q d@@2) (= (DatatypeCtorId d@@2) |##Utils.Result.Success|))
 :qid |unknown.0:0|
 :skolemid |883|
 :pattern ( (Utils.Result.Success_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (Utils.Result.Failure_q d@@3) (= (DatatypeCtorId d@@3) |##Utils.Result.Failure|))
 :qid |unknown.0:0|
 :skolemid |892|
 :pattern ( (Utils.Result.Failure_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (AST.BinOp.Add_q d@@4) (= (DatatypeCtorId d@@4) |##AST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |937|
 :pattern ( (AST.BinOp.Add_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (AST.BinOp.Sub_q d@@5) (= (DatatypeCtorId d@@5) |##AST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |939|
 :pattern ( (AST.BinOp.Sub_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (AST.BinOp.Mul_q d@@6) (= (DatatypeCtorId d@@6) |##AST.BinOp.Mul|))
 :qid |unknown.0:0|
 :skolemid |941|
 :pattern ( (AST.BinOp.Mul_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (AST.Expr__Raw.Var_q d@@7) (= (DatatypeCtorId d@@7) |##AST.Expr_Raw.Var|))
 :qid |unknown.0:0|
 :skolemid |951|
 :pattern ( (AST.Expr__Raw.Var_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (AST.Expr__Raw.Literal_q d@@8) (= (DatatypeCtorId d@@8) |##AST.Expr_Raw.Literal|))
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( (AST.Expr__Raw.Literal_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (AST.Expr__Raw.Bind_q d@@9) (= (DatatypeCtorId d@@9) |##AST.Expr_Raw.Bind|))
 :qid |unknown.0:0|
 :skolemid |969|
 :pattern ( (AST.Expr__Raw.Bind_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (AST.Expr__Raw.Assign_q d@@10) (= (DatatypeCtorId d@@10) |##AST.Expr_Raw.Assign|))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( (AST.Expr__Raw.Assign_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (AST.Expr__Raw.If_q d@@11) (= (DatatypeCtorId d@@11) |##AST.Expr_Raw.If|))
 :qid |unknown.0:0|
 :skolemid |1000|
 :pattern ( (AST.Expr__Raw.If_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (AST.Expr__Raw.Op_q d@@12) (= (DatatypeCtorId d@@12) |##AST.Expr_Raw.Op|))
 :qid |unknown.0:0|
 :skolemid |1015|
 :pattern ( (AST.Expr__Raw.Op_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (AST.Expr__Raw.Seq_q d@@13) (= (DatatypeCtorId d@@13) |##AST.Expr_Raw.Seq|))
 :qid |unknown.0:0|
 :skolemid |1030|
 :pattern ( (AST.Expr__Raw.Seq_q d@@13))
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
(assert (forall ((d@@14 T@U) ) (!  (=> (AST.Expr__Raw.Bind_q d@@14) (exists ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) ) (! (= d@@14 (|#AST.Expr_Raw.Bind| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
 :qid |ASTdfy.17:12|
 :skolemid |970|
)))
 :qid |unknown.0:0|
 :skolemid |971|
 :pattern ( (AST.Expr__Raw.Bind_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (AST.Expr__Raw.If_q d@@15) (exists ((|a#57#0#0| T@U) (|a#57#1#0| T@U) (|a#57#2#0| T@U) ) (! (= d@@15 (|#AST.Expr_Raw.If| |a#57#0#0| |a#57#1#0| |a#57#2#0|))
 :qid |ASTdfy.19:10|
 :skolemid |1001|
)))
 :qid |unknown.0:0|
 :skolemid |1002|
 :pattern ( (AST.Expr__Raw.If_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (AST.Expr__Raw.Op_q d@@16) (exists ((|a#67#0#0| T@U) (|a#67#1#0| T@U) (|a#67#2#0| T@U) ) (! (= d@@16 (|#AST.Expr_Raw.Op| |a#67#0#0| |a#67#1#0| |a#67#2#0|))
 :qid |ASTdfy.20:10|
 :skolemid |1016|
)))
 :qid |unknown.0:0|
 :skolemid |1017|
 :pattern ( (AST.Expr__Raw.Op_q d@@16))
)))
(assert (forall ((s@@7 T@U) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| s@@7))) (< (|Seq#Rank| (|Seq#Take| s@@7 i@@5)) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@7 i@@5)))
)))
(assert (forall ((a@@12 T@U) (b@@12 T@U) ) (! (= (|Set#Disjoint| a@@12 b@@12) (forall ((o@@1 T@U) ) (!  (or (not (|Set#IsMember| a@@12 o@@1)) (not (|Set#IsMember| b@@12 o@@1)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@12 o@@1))
 :pattern ( (|Set#IsMember| b@@12 o@@1))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@12 b@@12))
)))
(assert (forall ((m@@2 T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@2) bx@@2) (U_2_bool (MapType0Select BoxType boolType m@@2 bx@@2)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@2) bx@@2))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@17) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@17 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (AST.Expr__Raw.Assign_q d@@18) (exists ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= d@@18 (|#AST.Expr_Raw.Assign| |a#47#0#0| |a#47#1#0|))
 :qid |ASTdfy.18:14|
 :skolemid |987|
)))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( (AST.Expr__Raw.Assign_q d@@18))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc intType (int_2_U EliminateMulZero.__default.Zero) TInt $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |679|
 :pattern ( ($IsAlloc intType (int_2_U EliminateMulZero.__default.Zero) TInt $h@@2))
))))
(assert (forall (($ly@@3 T@U) ($Heap@@1 T@U) (|e#0@@2| T@U) (|p#0| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| |e#0@@2| |p#0|) (and (and ($IsGoodHeap $Heap@@1) ($Is DatatypeTypeType |e#0@@2| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@1 |p#0| ($Box DatatypeTypeType |e#0@@2|)))) (=> (not (AST.Expr__Raw.Var_q |e#0@@2|)) (=> (not (AST.Expr__Raw.Literal_q |e#0@@2|)) (and (=> (AST.Expr__Raw.Bind_q |e#0@@2|) (let ((|body#1@@0| (AST.Expr__Raw.body |e#0@@2|)))
(let ((|bvals#1@@0| (AST.Expr__Raw.bvals |e#0@@2|)))
 (and (forall ((|e#4| T@U) ) (!  (=> ($Is DatatypeTypeType |e#4| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4|)) (|AST.Expr__Raw.All#canCall| |e#4| |p#0|)))
 :qid |ASTdfy.51:22|
 :skolemid |1069|
 :pattern ( (AST.Expr__Raw.All $ly@@3 |e#4| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4|)))
)) (=> (forall ((|e#4@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#4@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4@@0|))) (AST.Expr__Raw.All $ly@@3 |e#4@@0| |p#0|))
 :qid |ASTdfy.51:22|
 :skolemid |1070|
 :pattern ( (AST.Expr__Raw.All $ly@@3 |e#4@@0| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#1@@0| ($Box DatatypeTypeType |e#4@@0|)))
)) (|AST.Expr__Raw.All#canCall| |body#1@@0| |p#0|)))))) (=> (not (AST.Expr__Raw.Bind_q |e#0@@2|)) (and (=> (AST.Expr__Raw.Assign_q |e#0@@2|) (let ((|avals#1@@0| (AST.Expr__Raw.avals |e#0@@2|)))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#5| T@U) ) (!  (=> ($Is DatatypeTypeType |e#5| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#1@@0| ($Box DatatypeTypeType |e#5|)) (|AST.Expr__Raw.All#canCall| |e#5| |p#0|)))
 :qid |ASTdfy.54:21|
 :skolemid |1071|
 :pattern ( (AST.Expr__Raw.All $ly@@3 |e#5| |p#0|))
 :pattern ( (|Seq#Contains| |avals#1@@0| ($Box DatatypeTypeType |e#5|)))
))))) (=> (not (AST.Expr__Raw.Assign_q |e#0@@2|)) (and (=> (AST.Expr__Raw.If_q |e#0@@2|) (let ((|els#1@@0| (AST.Expr__Raw.els |e#0@@2|)))
(let ((|thn#1@@0| (AST.Expr__Raw.thn |e#0@@2|)))
(let ((|cond#1@@0| (AST.Expr__Raw.cond |e#0@@2|)))
 (and (|AST.Expr__Raw.All#canCall| |cond#1@@0| |p#0|) (=> (AST.Expr__Raw.All $ly@@3 |cond#1@@0| |p#0|) (and (|AST.Expr__Raw.All#canCall| |thn#1@@0| |p#0|) (=> (AST.Expr__Raw.All $ly@@3 |thn#1@@0| |p#0|) (|AST.Expr__Raw.All#canCall| |els#1@@0| |p#0|))))))))) (=> (not (AST.Expr__Raw.If_q |e#0@@2|)) (and (=> (AST.Expr__Raw.Op_q |e#0@@2|) (let ((|oe2#1| (AST.Expr__Raw.oe2 |e#0@@2|)))
(let ((|oe1#1| (AST.Expr__Raw.oe1 |e#0@@2|)))
 (and (|AST.Expr__Raw.All#canCall| |oe1#1| |p#0|) (=> (AST.Expr__Raw.All $ly@@3 |oe1#1| |p#0|) (|AST.Expr__Raw.All#canCall| |oe2#1| |p#0|)))))) (=> (not (AST.Expr__Raw.Op_q |e#0@@2|)) (let ((|es#1@@0| (AST.Expr__Raw.es |e#0@@2|)))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#6| T@U) ) (!  (=> ($Is DatatypeTypeType |e#6| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#1@@0| ($Box DatatypeTypeType |e#6|)) (|AST.Expr__Raw.All#canCall| |e#6| |p#0|)))
 :qid |ASTdfy.60:21|
 :skolemid |1072|
 :pattern ( (AST.Expr__Raw.All $ly@@3 |e#6| |p#0|))
 :pattern ( (|Seq#Contains| |es#1@@0| ($Box DatatypeTypeType |e#6|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@3) |e#0@@2| |p#0|)  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@1 |p#0| ($Box DatatypeTypeType |e#0@@2|)))) (ite (AST.Expr__Raw.Var_q |e#0@@2|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q |e#0@@2|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q |e#0@@2|) (let ((|body#0@@0| (AST.Expr__Raw.body |e#0@@2|)))
(let ((|bvals#0@@1| (AST.Expr__Raw.bvals |e#0@@2|)))
 (and (forall ((|e#1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#1| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#0@@1| ($Box DatatypeTypeType |e#1|))) (AST.Expr__Raw.All $ly@@3 |e#1| |p#0|))
 :qid |ASTdfy.51:22|
 :skolemid |1066|
 :pattern ( (AST.Expr__Raw.All $ly@@3 |e#1| |p#0|))
 :pattern ( (|Seq#Contains| |bvals#0@@1| ($Box DatatypeTypeType |e#1|)))
)) (AST.Expr__Raw.All $ly@@3 |body#0@@0| |p#0|)))) (ite (AST.Expr__Raw.Assign_q |e#0@@2|) (let ((|avals#0@@1| (AST.Expr__Raw.avals |e#0@@2|)))
 (and true (forall ((|e#2| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#2| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#0@@1| ($Box DatatypeTypeType |e#2|))) (AST.Expr__Raw.All $ly@@3 |e#2| |p#0|))
 :qid |ASTdfy.54:21|
 :skolemid |1067|
 :pattern ( (AST.Expr__Raw.All $ly@@3 |e#2| |p#0|))
 :pattern ( (|Seq#Contains| |avals#0@@1| ($Box DatatypeTypeType |e#2|)))
)))) (ite (AST.Expr__Raw.If_q |e#0@@2|) (let ((|els#0@@0| (AST.Expr__Raw.els |e#0@@2|)))
(let ((|thn#0@@0| (AST.Expr__Raw.thn |e#0@@2|)))
(let ((|cond#0@@0| (AST.Expr__Raw.cond |e#0@@2|)))
 (and (and (AST.Expr__Raw.All $ly@@3 |cond#0@@0| |p#0|) (AST.Expr__Raw.All $ly@@3 |thn#0@@0| |p#0|)) (AST.Expr__Raw.All $ly@@3 |els#0@@0| |p#0|))))) (ite (AST.Expr__Raw.Op_q |e#0@@2|) (let ((|oe2#0| (AST.Expr__Raw.oe2 |e#0@@2|)))
(let ((|oe1#0| (AST.Expr__Raw.oe1 |e#0@@2|)))
 (and (AST.Expr__Raw.All $ly@@3 |oe1#0| |p#0|) (AST.Expr__Raw.All $ly@@3 |oe2#0| |p#0|)))) (let ((|es#0@@3| (AST.Expr__Raw.es |e#0@@2|)))
 (and true (forall ((|e#3| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#3| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#0@@3| ($Box DatatypeTypeType |e#3|))) (AST.Expr__Raw.All $ly@@3 |e#3| |p#0|))
 :qid |ASTdfy.60:21|
 :skolemid |1068|
 :pattern ( (AST.Expr__Raw.All $ly@@3 |e#3| |p#0|))
 :pattern ( (|Seq#Contains| |es#0@@3| ($Box DatatypeTypeType |e#3|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :skolemid |1073|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@3) |e#0@@2| |p#0|) ($IsGoodHeap $Heap@@1))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (Utils.Result.Failure_q d@@19) (= d@@19 |#Utils.Result.Failure|))
 :qid |unknown.0:0|
 :skolemid |893|
 :pattern ( (Utils.Result.Failure_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (AST.BinOp.Add_q d@@20) (= d@@20 |#AST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |938|
 :pattern ( (AST.BinOp.Add_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> (AST.BinOp.Sub_q d@@21) (= d@@21 |#AST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |940|
 :pattern ( (AST.BinOp.Sub_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (AST.BinOp.Mul_q d@@22) (= d@@22 |#AST.BinOp.Mul|))
 :qid |unknown.0:0|
 :skolemid |942|
 :pattern ( (AST.BinOp.Mul_q d@@22))
)))
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
(assert (forall ((d@@23 T@U) ) (!  (=> (Utils.Result.Success_q d@@23) (exists ((|a#1#0#0@@0| T@U) ) (! (= d@@23 (|#Utils.Result.Success| |a#1#0#0@@0|))
 :qid |Utilsdfy.23:34|
 :skolemid |884|
)))
 :qid |unknown.0:0|
 :skolemid |885|
 :pattern ( (Utils.Result.Success_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (AST.Expr__Raw.Var_q d@@24) (exists ((|a#23#0#0| T@U) ) (! (= d@@24 (|#AST.Expr_Raw.Var| |a#23#0#0|))
 :qid |ASTdfy.15:11|
 :skolemid |952|
)))
 :qid |unknown.0:0|
 :skolemid |953|
 :pattern ( (AST.Expr__Raw.Var_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (AST.Expr__Raw.Literal_q d@@25) (exists ((|a#30#0#0| Int) ) (! (= d@@25 (|#AST.Expr_Raw.Literal| |a#30#0#0|))
 :qid |ASTdfy.16:15|
 :skolemid |962|
)))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( (AST.Expr__Raw.Literal_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (AST.Expr__Raw.Seq_q d@@26) (exists ((|a#77#0#0| T@U) ) (! (= d@@26 (|#AST.Expr_Raw.Seq| |a#77#0#0|))
 :qid |ASTdfy.21:11|
 :skolemid |1031|
)))
 :qid |unknown.0:0|
 :skolemid |1032|
 :pattern ( (AST.Expr__Raw.Seq_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> ($Is DatatypeTypeType d@@27 Tclass.AST.Expr__Raw) (or (or (or (or (or (or (AST.Expr__Raw.Var_q d@@27) (AST.Expr__Raw.Literal_q d@@27)) (AST.Expr__Raw.Bind_q d@@27)) (AST.Expr__Raw.Assign_q d@@27)) (AST.Expr__Raw.If_q d@@27)) (AST.Expr__Raw.Op_q d@@27)) (AST.Expr__Raw.Seq_q d@@27)))
 :qid |unknown.0:0|
 :skolemid |1041|
 :pattern ( (AST.Expr__Raw.Seq_q d@@27) ($Is DatatypeTypeType d@@27 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Op_q d@@27) ($Is DatatypeTypeType d@@27 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.If_q d@@27) ($Is DatatypeTypeType d@@27 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Assign_q d@@27) ($Is DatatypeTypeType d@@27 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Bind_q d@@27) ($Is DatatypeTypeType d@@27 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Literal_q d@@27) ($Is DatatypeTypeType d@@27 Tclass.AST.Expr__Raw))
 :pattern ( (AST.Expr__Raw.Var_q d@@27) ($Is DatatypeTypeType d@@27 Tclass.AST.Expr__Raw))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall (($ly@@4 T@U) (|e#0@@3| T@U) (|locals#0@@1| T@U) ) (!  (=> (or (|Pure.__default.IsPure#canCall| |e#0@@3| |locals#0@@1|) (and ($Is DatatypeTypeType |e#0@@3| Tclass.AST.Expr) ($Is SetType |locals#0@@1| (TSet (TSeq TChar))))) (and (=> (not (AST.Expr__Raw.Var_q |e#0@@3|)) (=> (not (AST.Expr__Raw.Literal_q |e#0@@3|)) (and (=> (AST.Expr__Raw.Bind_q |e#0@@3|) (let ((|body#1@@1| (AST.Expr__Raw.body |e#0@@3|)))
(let ((|bvals#1@@1| (AST.Expr__Raw.bvals |e#0@@3|)))
(let ((|bvars#1@@0| (AST.Expr__Raw.bvars |e#0@@3|)))
 (and (|Pure.__default.IsPure__Es#canCall| |bvals#1@@1| |locals#0@@1|) (=> (Pure.__default.IsPure__Es $ly@@4 |bvals#1@@1| |locals#0@@1|) (|Pure.__default.IsPure#canCall| |body#1@@1| (|Set#Union| (|Set#FromBoogieMap| (|lambda#6| (TSeq TChar) |bvars#1@@0|)) |locals#0@@1|)))))))) (=> (not (AST.Expr__Raw.Bind_q |e#0@@3|)) (and (=> (AST.Expr__Raw.Assign_q |e#0@@3|) (let ((|avals#1@@1| (AST.Expr__Raw.avals |e#0@@3|)))
(let ((|avars#1@@0| (AST.Expr__Raw.avars |e#0@@3|)))
 (=> (forall ((|x#2| T@U) ) (!  (=> (and ($Is SeqType |x#2| (TSeq TChar)) (|Seq#Contains| |avars#1@@0| ($Box SeqType |x#2|))) (|Set#IsMember| |locals#0@@1| ($Box SeqType |x#2|)))
 :qid |Puredfy.28:17|
 :skolemid |1144|
 :pattern ( (|Set#IsMember| |locals#0@@1| ($Box SeqType |x#2|)))
 :pattern ( (|Seq#Contains| |avars#1@@0| ($Box SeqType |x#2|)))
)) (|Pure.__default.IsPure__Es#canCall| |avals#1@@1| |locals#0@@1|))))) (=> (not (AST.Expr__Raw.Assign_q |e#0@@3|)) (and (=> (AST.Expr__Raw.If_q |e#0@@3|) (let ((|els#1@@1| (AST.Expr__Raw.els |e#0@@3|)))
(let ((|thn#1@@1| (AST.Expr__Raw.thn |e#0@@3|)))
(let ((|cond#1@@1| (AST.Expr__Raw.cond |e#0@@3|)))
 (and (|Pure.__default.IsPure#canCall| |cond#1@@1| |locals#0@@1|) (=> (Pure.__default.IsPure $ly@@4 |cond#1@@1| |locals#0@@1|) (and (|Pure.__default.IsPure#canCall| |thn#1@@1| |locals#0@@1|) (=> (Pure.__default.IsPure $ly@@4 |thn#1@@1| |locals#0@@1|) (|Pure.__default.IsPure#canCall| |els#1@@1| |locals#0@@1|))))))))) (=> (not (AST.Expr__Raw.If_q |e#0@@3|)) (and (=> (AST.Expr__Raw.Op_q |e#0@@3|) (let ((|oe2#1@@0| (AST.Expr__Raw.oe2 |e#0@@3|)))
(let ((|oe1#1@@0| (AST.Expr__Raw.oe1 |e#0@@3|)))
 (and (|Pure.__default.IsPure#canCall| |oe1#1@@0| |locals#0@@1|) (=> (Pure.__default.IsPure $ly@@4 |oe1#1@@0| |locals#0@@1|) (|Pure.__default.IsPure#canCall| |oe2#1@@0| |locals#0@@1|)))))) (=> (not (AST.Expr__Raw.Op_q |e#0@@3|)) (let ((|es#1@@1| (AST.Expr__Raw.es |e#0@@3|)))
(|Pure.__default.IsPure__Es#canCall| |es#1@@1| |locals#0@@1|)))))))))))) (= (Pure.__default.IsPure ($LS $ly@@4) |e#0@@3| |locals#0@@1|) (ite (AST.Expr__Raw.Var_q |e#0@@3|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q |e#0@@3|) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q |e#0@@3|) (let ((|body#0@@1| (AST.Expr__Raw.body |e#0@@3|)))
(let ((|bvals#0@@2| (AST.Expr__Raw.bvals |e#0@@3|)))
(let ((|bvars#0@@1| (AST.Expr__Raw.bvars |e#0@@3|)))
 (and (Pure.__default.IsPure__Es $ly@@4 |bvals#0@@2| |locals#0@@1|) (Pure.__default.IsPure $ly@@4 |body#0@@1| (|Set#Union| (|Set#FromBoogieMap| (|lambda#6| (TSeq TChar) |bvars#0@@1|)) |locals#0@@1|)))))) (ite (AST.Expr__Raw.Assign_q |e#0@@3|) (let ((|avals#0@@2| (AST.Expr__Raw.avals |e#0@@3|)))
(let ((|avars#0@@1| (AST.Expr__Raw.avars |e#0@@3|)))
 (and (forall ((|x#0@@0| T@U) ) (!  (=> (and ($Is SeqType |x#0@@0| (TSeq TChar)) (|Seq#Contains| |avars#0@@1| ($Box SeqType |x#0@@0|))) (|Set#IsMember| |locals#0@@1| ($Box SeqType |x#0@@0|)))
 :qid |Puredfy.28:17|
 :skolemid |1143|
 :pattern ( (|Set#IsMember| |locals#0@@1| ($Box SeqType |x#0@@0|)))
 :pattern ( (|Seq#Contains| |avars#0@@1| ($Box SeqType |x#0@@0|)))
)) (Pure.__default.IsPure__Es $ly@@4 |avals#0@@2| |locals#0@@1|)))) (ite (AST.Expr__Raw.If_q |e#0@@3|) (let ((|els#0@@1| (AST.Expr__Raw.els |e#0@@3|)))
(let ((|thn#0@@1| (AST.Expr__Raw.thn |e#0@@3|)))
(let ((|cond#0@@1| (AST.Expr__Raw.cond |e#0@@3|)))
 (and (and (Pure.__default.IsPure $ly@@4 |cond#0@@1| |locals#0@@1|) (Pure.__default.IsPure $ly@@4 |thn#0@@1| |locals#0@@1|)) (Pure.__default.IsPure $ly@@4 |els#0@@1| |locals#0@@1|))))) (ite (AST.Expr__Raw.Op_q |e#0@@3|) (let ((|oe2#0@@0| (AST.Expr__Raw.oe2 |e#0@@3|)))
(let ((|oe1#0@@0| (AST.Expr__Raw.oe1 |e#0@@3|)))
 (and (Pure.__default.IsPure $ly@@4 |oe1#0@@0| |locals#0@@1|) (Pure.__default.IsPure $ly@@4 |oe2#0@@0| |locals#0@@1|)))) (let ((|es#0@@4| (AST.Expr__Raw.es |e#0@@3|)))
(Pure.__default.IsPure__Es $ly@@4 |es#0@@4| |locals#0@@1|)))))))))))
 :qid |Puredfy.15:13|
 :skolemid |1145|
 :pattern ( (Pure.__default.IsPure ($LS $ly@@4) |e#0@@3| |locals#0@@1|))
)))
(assert (forall ((s@@9 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@9 v@@2)) (+ 1 (|Seq#Length| s@@9)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@9 v@@2))
)))
(assert (forall (($ly@@5 T@U) (|es#0@@5| T@U) (|ctx#0@@1| T@U) ) (!  (=> (or (|Interp.__default.InterpExprs#canCall| |es#0@@5| |ctx#0@@1|) (and ($Is SeqType |es#0@@5| (TSeq Tclass.AST.Expr)) ($Is MapType |ctx#0@@1| (TMap (TSeq TChar) TInt)))) (and (=> (Utils.Result.Success_q (Interp.__default.InterpExprs $ly@@5 |es#0@@5| |ctx#0@@1|)) (= (|Seq#Length| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.value (Interp.__default.InterpExprs $ly@@5 |es#0@@5| |ctx#0@@1|)))))) (|Seq#Length| |es#0@@5|))) ($Is DatatypeTypeType (Interp.__default.InterpExprs $ly@@5 |es#0@@5| |ctx#0@@1|) (Tclass.Utils.Result (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt))))))
 :qid |Interpdfy.69:12|
 :skolemid |1128|
 :pattern ( (Interp.__default.InterpExprs $ly@@5 |es#0@@5| |ctx#0@@1|))
)))
(assert (forall (($ly@@6 T@U) (|e#0@@4| T@U) (|p#0@@0| T@U) ) (! (= (AST.Expr__Raw.All ($LS $ly@@6) |e#0@@4| |p#0@@0|) (AST.Expr__Raw.All $ly@@6 |e#0@@4| |p#0@@0|))
 :qid |ASTdfy.44:22|
 :skolemid |1062|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@6) |e#0@@4| |p#0@@0|))
)))
(assert (forall (($ly@@7 T@U) (|e#0@@5| T@U) (|locals#0@@2| T@U) ) (! (= (Pure.__default.IsPure ($LS $ly@@7) |e#0@@5| |locals#0@@2|) (Pure.__default.IsPure $ly@@7 |e#0@@5| |locals#0@@2|))
 :qid |Puredfy.15:13|
 :skolemid |1139|
 :pattern ( (Pure.__default.IsPure ($LS $ly@@7) |e#0@@5| |locals#0@@2|))
)))
(assert (forall (($ly@@8 T@U) (|es#0@@6| T@U) (|locals#0@@3| T@U) ) (! (= (Pure.__default.IsPure__Es ($LS $ly@@8) |es#0@@6| |locals#0@@3|) (Pure.__default.IsPure__Es $ly@@8 |es#0@@6| |locals#0@@3|))
 :qid |Puredfy.39:13|
 :skolemid |1152|
 :pattern ( (Pure.__default.IsPure__Es ($LS $ly@@8) |es#0@@6| |locals#0@@3|))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@1 h) ($IsAlloc T@@1 v@@3 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@1 h))
)))
(assert (forall ((Utils.Result$T@@4 T@U) (this@@3 T@U) ) (!  (=> (or (|Utils.Result.Extract#canCall| Utils.Result$T@@4 this@@3) (and ($Is DatatypeTypeType this@@3 (Tclass.Utils.Result Utils.Result$T@@4)) (Utils.Result.Success_q this@@3))) (= (Utils.Result.Extract Utils.Result$T@@4 this@@3) (Utils.Result.value this@@3)))
 :qid |unknown.0:0|
 :skolemid |913|
 :pattern ( (Utils.Result.Extract Utils.Result$T@@4 this@@3))
)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is DatatypeTypeType EliminateMulZero.__default.ZeroExpr Tclass.AST.Expr)))
(assert (forall ((s@@10 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@10) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@10 n@@4) j@@1) (|Seq#Index| s@@10 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@10 n@@4) j@@1))
)))
(assert (forall ((|e#0@@6| T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed__Single#canCall| (Lit DatatypeTypeType |e#0@@6|)) ($Is DatatypeTypeType |e#0@@6| Tclass.AST.Expr__Raw)) (= (AST.Expr__Raw.WellFormed__Single (Lit DatatypeTypeType |e#0@@6|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@6|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@6|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@6|)) (let ((|bvals#2| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@6|)))))
(let ((|bvars#2| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@6|)))))
(= (|Seq#Length| |bvars#2|) (|Seq#Length| |bvals#2|)))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@6|)) (let ((|avals#2| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@6|)))))
(let ((|avars#2| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@6|)))))
(= (|Seq#Length| |avars#2|) (|Seq#Length| |avals#2|)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@6|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@6|)) (U_2_bool (Lit boolType (bool_2_U true))) (U_2_bool (Lit boolType (bool_2_U true)))))))))))
 :qid |ASTdfy.71:46|
 :weight 3
 :skolemid |1104|
 :pattern ( (AST.Expr__Raw.WellFormed__Single (Lit DatatypeTypeType |e#0@@6|)))
)))
(assert (forall ((Utils.Result$T@@5 T@U) ) (!  (and (= (Tag (Tclass.Utils.Result Utils.Result$T@@5)) Tagclass.Utils.Result) (= (TagFamily (Tclass.Utils.Result Utils.Result$T@@5)) tytagFamily$Result))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( (Tclass.Utils.Result Utils.Result$T@@5))
)))
(assert (forall ((m@@3 T@U) (n@@5 T@U) (u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Merge| m@@3 n@@5)) u@@0) (and (=> (not (|Set#IsMember| (|Map#Domain| n@@5) u@@0)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@3 n@@5)) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| m@@3) u@@0))) (=> (|Set#IsMember| (|Map#Domain| n@@5) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@3 n@@5)) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| n@@5) u@@0)))))
 :qid |DafnyPreludebpl.1479:15|
 :skolemid |294|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@3 n@@5)) u@@0))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc DatatypeTypeType EliminateMulZero.__default.ZeroExpr Tclass.AST.Expr $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |639|
 :pattern ( ($IsAlloc DatatypeTypeType EliminateMulZero.__default.ZeroExpr Tclass.AST.Expr $h@@3))
))))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((Utils.Result$T@@6 T@U) (Utils.Result.PropagateFailure$U@@1 T@U) (this@@4 T@U) ) (!  (=> (or (|Utils.Result.PropagateFailure#canCall| Utils.Result$T@@6 Utils.Result.PropagateFailure$U@@1 this@@4) (and ($Is DatatypeTypeType this@@4 (Tclass.Utils.Result Utils.Result$T@@6)) (Utils.Result.Failure_q this@@4))) (= (Utils.Result.PropagateFailure Utils.Result$T@@6 Utils.Result.PropagateFailure$U@@1 this@@4) (Lit DatatypeTypeType |#Utils.Result.Failure|)))
 :qid |unknown.0:0|
 :skolemid |908|
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
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.AST.Expr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.AST.Expr)))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($IsBox bx@@4 Tclass.AST.Expr))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.AST.Expr__Raw) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.AST.Expr__Raw)))
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( ($IsBox bx@@5 Tclass.AST.Expr__Raw))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.AST.BinOp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.AST.BinOp)))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( ($IsBox bx@@6 Tclass.AST.BinOp))
)))
(assert (forall ((s@@11 T@U) (i@@7 Int) (v@@4 T@U) ) (!  (and (=> (= i@@7 (|Seq#Length| s@@11)) (= (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@7) v@@4)) (=> (or (not (= i@@7 (|Seq#Length| s@@11))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@7) (|Seq#Index| s@@11 i@@7))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@11 v@@4) i@@7))
)))
(assert (forall ((a@@13 T@U) (b@@13 T@U) ) (!  (=> (and (AST.Expr__Raw.Var_q a@@13) (AST.Expr__Raw.Var_q b@@13)) (= (|AST.Expr__Raw#Equal| a@@13 b@@13) (|Seq#Equal| (AST.Expr__Raw.name a@@13) (AST.Expr__Raw.name b@@13))))
 :qid |unknown.0:0|
 :skolemid |1042|
 :pattern ( (|AST.Expr__Raw#Equal| a@@13 b@@13) (AST.Expr__Raw.Var_q a@@13))
 :pattern ( (|AST.Expr__Raw#Equal| a@@13 b@@13) (AST.Expr__Raw.Var_q b@@13))
)))
(assert (forall ((a@@14 T@U) (b@@14 T@U) ) (!  (=> (and (AST.Expr__Raw.Seq_q a@@14) (AST.Expr__Raw.Seq_q b@@14)) (= (|AST.Expr__Raw#Equal| a@@14 b@@14) (|Seq#Equal| (AST.Expr__Raw.es a@@14) (AST.Expr__Raw.es b@@14))))
 :qid |unknown.0:0|
 :skolemid |1048|
 :pattern ( (|AST.Expr__Raw#Equal| a@@14 b@@14) (AST.Expr__Raw.Seq_q a@@14))
 :pattern ( (|AST.Expr__Raw#Equal| a@@14 b@@14) (AST.Expr__Raw.Seq_q b@@14))
)))
(assert (forall (($ly@@9 T@U) (|e#0@@7| T@U) (|ctx#0@@2| T@U) ) (!  (=> (or (|Interp.__default.InterpExpr#canCall| |e#0@@7| |ctx#0@@2|) (and ($Is DatatypeTypeType |e#0@@7| Tclass.AST.Expr) ($Is MapType |ctx#0@@2| (TMap (TSeq TChar) TInt)))) ($Is DatatypeTypeType (Interp.__default.InterpExpr $ly@@9 |e#0@@7| |ctx#0@@2|) (Tclass.Utils.Result (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)))))
 :qid |Interpdfy.24:12|
 :skolemid |1121|
 :pattern ( (Interp.__default.InterpExpr $ly@@9 |e#0@@7| |ctx#0@@2|))
)))
(assert (forall (($ly@@10 T@U) (|e#0@@8| T@U) (|ctx#0@@3| T@U) ) (! (= (Interp.__default.InterpExpr ($LS $ly@@10) |e#0@@8| |ctx#0@@3|) (Interp.__default.InterpExpr $ly@@10 |e#0@@8| |ctx#0@@3|))
 :qid |Interpdfy.24:12|
 :skolemid |1119|
 :pattern ( (Interp.__default.InterpExpr ($LS $ly@@10) |e#0@@8| |ctx#0@@3|))
)))
(assert (forall (($ly@@11 T@U) (|es#0@@7| T@U) (|ctx#0@@4| T@U) ) (! (= (Interp.__default.InterpExprs ($LS $ly@@11) |es#0@@7| |ctx#0@@4|) (Interp.__default.InterpExprs $ly@@11 |es#0@@7| |ctx#0@@4|))
 :qid |Interpdfy.69:12|
 :skolemid |1126|
 :pattern ( (Interp.__default.InterpExprs ($LS $ly@@11) |es#0@@7| |ctx#0@@4|))
)))
(assert (forall (($ly@@12 T@U) (|vars#0| T@U) (|values#0| T@U) ) (! (= (Interp.__default.VarsAndValuesToContext ($LS $ly@@12) |vars#0| |values#0|) (Interp.__default.VarsAndValuesToContext $ly@@12 |vars#0| |values#0|))
 :qid |Interpdfy.80:12|
 :skolemid |1133|
 :pattern ( (Interp.__default.VarsAndValuesToContext ($LS $ly@@12) |vars#0| |values#0|))
)))
(assert (forall (($ly@@13 T@U) (|vars#0@@0| T@U) (|values#0@@0| T@U) ) (!  (=> (or (|Interp.__default.VarsAndValuesToContext#canCall| |vars#0@@0| |values#0@@0|) (and (and ($Is SeqType |vars#0@@0| (TSeq (TSeq TChar))) ($Is SeqType |values#0@@0| (TSeq TInt))) (= (|Seq#Length| |vars#0@@0|) (|Seq#Length| |values#0@@0|)))) (and (|Set#Equal| (|Map#Domain| (Interp.__default.VarsAndValuesToContext $ly@@13 |vars#0@@0| |values#0@@0|)) (|Set#FromBoogieMap| (|lambda#6| (TSeq TChar) |vars#0@@0|))) ($Is MapType (Interp.__default.VarsAndValuesToContext $ly@@13 |vars#0@@0| |values#0@@0|) (TMap (TSeq TChar) TInt))))
 :qid |Interpdfy.80:12|
 :skolemid |1135|
 :pattern ( (Interp.__default.VarsAndValuesToContext $ly@@13 |vars#0@@0| |values#0@@0|))
)))
(assert (forall ((Utils.Result$T@@7 T@U) (|a#2#0#0@@1| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#Utils.Result.Success| |a#2#0#0@@1|) (Tclass.Utils.Result Utils.Result$T@@7) $h@@6) ($IsAllocBox |a#2#0#0@@1| Utils.Result$T@@7 $h@@6)))
 :qid |unknown.0:0|
 :skolemid |887|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Utils.Result.Success| |a#2#0#0@@1|) (Tclass.Utils.Result Utils.Result$T@@7) $h@@6))
)))
(assert (forall ((a@@15 T@U) (b@@15 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@15 b@@15) o@@2)  (or (|Set#IsMember| a@@15 o@@2) (|Set#IsMember| b@@15 o@@2)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@15 b@@15) o@@2))
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
(assert (forall ((a@@16 T@U) (b@@16 T@U) ) (!  (=> (|Set#Disjoint| a@@16 b@@16) (and (= (|Set#Difference| (|Set#Union| a@@16 b@@16) a@@16) b@@16) (= (|Set#Difference| (|Set#Union| a@@16 b@@16) b@@16) a@@16)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@16 b@@16))
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
(assert (forall (($ly@@14 T@U) (|es#0@@8| T@U) (|ctx#0@@5| T@U) ) (!  (=> (or (|Interp.__default.InterpExprs#canCall| |es#0@@8| |ctx#0@@5|) (and ($Is SeqType |es#0@@8| (TSeq Tclass.AST.Expr)) ($Is MapType |ctx#0@@5| (TMap (TSeq TChar) TInt)))) (and (=> (not (|Seq#Equal| |es#0@@8| |Seq#Empty|)) (and (|Interp.__default.InterpExpr#canCall| ($Unbox DatatypeTypeType (|Seq#Index| |es#0@@8| (LitInt 0))) |ctx#0@@5|) (let ((|valueOrError0#0@@0| (Interp.__default.InterpExpr $ly@@14 ($Unbox DatatypeTypeType (|Seq#Index| |es#0@@8| (LitInt 0))) |ctx#0@@5|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|) (let ((|ctx1#0@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@0|))))))
 (and (|Interp.__default.InterpExprs#canCall| (|Seq#Drop| |es#0@@8| (LitInt 1)) |ctx1#0@@0|) (let ((|valueOrError1#0@@0| (Interp.__default.InterpExprs $ly@@14 (|Seq#Drop| |es#0@@8| (LitInt 1)) |ctx1#0@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@0|)))))))))))) (= (Interp.__default.InterpExprs ($LS $ly@@14) |es#0@@8| |ctx#0@@5|) (ite (|Seq#Equal| |es#0@@8| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box MapType |ctx#0@@5|)))) (let ((|valueOrError0#0@@1| (Interp.__default.InterpExpr $ly@@14 ($Unbox DatatypeTypeType (|Seq#Index| |es#0@@8| (LitInt 0))) |ctx#0@@5|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#0@@1|) (let ((|ctx1#0@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@1|))))))
(let ((|v#0| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#0@@1|)))))))
(let ((|valueOrError1#0@@1| (Interp.__default.InterpExprs $ly@@14 (|Seq#Drop| |es#0@@8| (LitInt 1)) |ctx1#0@@1|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@1|) (let ((|ctx2#0@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@1|))))))
(let ((|vs#0@@0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#0@@1|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |v#0|))) |vs#0@@0|)) ($Box MapType |ctx2#0@@0|))))))))))))))))
 :qid |Interpdfy.69:12|
 :skolemid |1130|
 :pattern ( (Interp.__default.InterpExprs ($LS $ly@@14) |es#0@@8| |ctx#0@@5|))
)))
(assert (forall (($ly@@15 T@U) (|e#0@@9| T@U) (|locals#0@@4| T@U) ) (!  (=> (or (|Pure.__default.IsPure#canCall| (Lit DatatypeTypeType |e#0@@9|) |locals#0@@4|) (and ($Is DatatypeTypeType |e#0@@9| Tclass.AST.Expr) ($Is SetType |locals#0@@4| (TSet (TSeq TChar))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@9|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@9|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@9|))))) (let ((|body#3| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|bvals#3| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|bvars#3| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@9|)))))
 (and (|Pure.__default.IsPure__Es#canCall| |bvals#3| |locals#0@@4|) (=> (Pure.__default.IsPure__Es ($LS $ly@@15) |bvals#3| |locals#0@@4|) (|Pure.__default.IsPure#canCall| |body#3| (|Set#Union| (|Set#FromBoogieMap| (|lambda#6| (TSeq TChar) |bvars#3|)) |locals#0@@4|)))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@9|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@9|))))) (let ((|avals#3| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|avars#3| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@9|)))))
 (=> (forall ((|x#5| T@U) ) (!  (=> (and ($Is SeqType |x#5| (TSeq TChar)) (|Seq#Contains| |avars#3| ($Box SeqType |x#5|))) (|Set#IsMember| |locals#0@@4| ($Box SeqType |x#5|)))
 :qid |Puredfy.28:17|
 :skolemid |1147|
 :pattern ( (|Set#IsMember| |locals#0@@4| ($Box SeqType |x#5|)))
 :pattern ( (|Seq#Contains| |avars#3| ($Box SeqType |x#5|)))
)) (|Pure.__default.IsPure__Es#canCall| |avals#3| |locals#0@@4|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@9|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@9|))))) (let ((|els#3| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|thn#3| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|cond#3| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@9|)))))
 (and (|Pure.__default.IsPure#canCall| |cond#3| |locals#0@@4|) (=> (Pure.__default.IsPure ($LS $ly@@15) |cond#3| |locals#0@@4|) (and (|Pure.__default.IsPure#canCall| |thn#3| |locals#0@@4|) (=> (Pure.__default.IsPure ($LS $ly@@15) |thn#3| |locals#0@@4|) (|Pure.__default.IsPure#canCall| |els#3| |locals#0@@4|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@9|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@9|))))) (let ((|oe2#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|oe1#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@9|)))))
 (and (|Pure.__default.IsPure#canCall| |oe1#3| |locals#0@@4|) (=> (Pure.__default.IsPure ($LS $ly@@15) |oe1#3| |locals#0@@4|) (|Pure.__default.IsPure#canCall| |oe2#3| |locals#0@@4|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@9|)))))) (let ((|es#3| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@9|)))))
(|Pure.__default.IsPure__Es#canCall| |es#3| |locals#0@@4|)))))))))))) (= (Pure.__default.IsPure ($LS $ly@@15) (Lit DatatypeTypeType |e#0@@9|) |locals#0@@4|) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@9|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@9|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@9|)) (let ((|body#2| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|bvals#2@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|bvars#2@@0| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@9|)))))
 (and (Pure.__default.IsPure__Es ($LS $ly@@15) |bvals#2@@0| |locals#0@@4|) (Pure.__default.IsPure ($LS $ly@@15) |body#2| (|Set#Union| (|Set#FromBoogieMap| (|lambda#6| (TSeq TChar) |bvars#2@@0|)) |locals#0@@4|)))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@9|)) (let ((|avals#2@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|avars#2@@0| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@9|)))))
 (and (forall ((|x#3| T@U) ) (!  (=> (and ($Is SeqType |x#3| (TSeq TChar)) (|Seq#Contains| |avars#2@@0| ($Box SeqType |x#3|))) (|Set#IsMember| |locals#0@@4| ($Box SeqType |x#3|)))
 :qid |Puredfy.28:17|
 :skolemid |1146|
 :pattern ( (|Set#IsMember| |locals#0@@4| ($Box SeqType |x#3|)))
 :pattern ( (|Seq#Contains| |avars#2@@0| ($Box SeqType |x#3|)))
)) (Pure.__default.IsPure__Es ($LS $ly@@15) |avals#2@@0| |locals#0@@4|)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@9|)) (let ((|els#2| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|thn#2| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|cond#2| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@9|)))))
 (and (and (Pure.__default.IsPure ($LS $ly@@15) |cond#2| |locals#0@@4|) (Pure.__default.IsPure ($LS $ly@@15) |thn#2| |locals#0@@4|)) (Pure.__default.IsPure ($LS $ly@@15) |els#2| |locals#0@@4|))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@9|)) (let ((|oe2#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|oe1#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@9|)))))
 (and (Pure.__default.IsPure ($LS $ly@@15) |oe1#2| |locals#0@@4|) (Pure.__default.IsPure ($LS $ly@@15) |oe2#2| |locals#0@@4|)))) (let ((|es#2| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@9|)))))
(Pure.__default.IsPure__Es ($LS $ly@@15) |es#2| |locals#0@@4|)))))))))))
 :qid |Puredfy.15:13|
 :weight 3
 :skolemid |1148|
 :pattern ( (Pure.__default.IsPure ($LS $ly@@15) (Lit DatatypeTypeType |e#0@@9|) |locals#0@@4|))
)))
(assert (forall ((|a#78#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#78#0#0|) Tclass.AST.Expr__Raw) ($Is SeqType |a#78#0#0| (TSeq Tclass.AST.Expr__Raw)))
 :qid |ASTdfy.21:11|
 :skolemid |1033|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#78#0#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((Utils.Result$T@@8 T@U) (d@@28 T@U) ) (!  (=> ($Is DatatypeTypeType d@@28 (Tclass.Utils.Result Utils.Result$T@@8)) (or (Utils.Result.Success_q d@@28) (Utils.Result.Failure_q d@@28)))
 :qid |unknown.0:0|
 :skolemid |897|
 :pattern ( (Utils.Result.Failure_q d@@28) ($Is DatatypeTypeType d@@28 (Tclass.Utils.Result Utils.Result$T@@8)))
 :pattern ( (Utils.Result.Success_q d@@28) ($Is DatatypeTypeType d@@28 (Tclass.Utils.Result Utils.Result$T@@8)))
)))
(assert (forall ((Utils.Result$T@@9 T@U) (this@@5 T@U) ) (!  (=> (or (|Utils.Result.IsFailure#canCall| Utils.Result$T@@9 (Lit DatatypeTypeType this@@5)) ($Is DatatypeTypeType this@@5 (Tclass.Utils.Result Utils.Result$T@@9))) (= (Utils.Result.IsFailure Utils.Result$T@@9 (Lit DatatypeTypeType this@@5)) (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Failure_q (Lit DatatypeTypeType this@@5)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |904|
 :pattern ( (Utils.Result.IsFailure Utils.Result$T@@9 (Lit DatatypeTypeType this@@5)))
)))
(assert (forall ((a@@17 T@U) (b@@17 T@U) ) (!  (=> (|Set#Equal| a@@17 b@@17) (= a@@17 b@@17))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@17 b@@17))
)))
(assert (forall ((a@@18 T@U) (b@@18 T@U) ) (!  (=> (|Seq#Equal| a@@18 b@@18) (= a@@18 b@@18))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@18 b@@18))
)))
(assert (forall (($ly@@16 T@U) (|es#0@@9| T@U) (|ctx#0@@6| T@U) ) (!  (=> (or (|Interp.__default.InterpExprs#canCall| (Lit SeqType |es#0@@9|) |ctx#0@@6|) (and ($Is SeqType |es#0@@9| (TSeq Tclass.AST.Expr)) ($Is MapType |ctx#0@@6| (TMap (TSeq TChar) TInt)))) (and (=> (not (|Seq#Equal| |es#0@@9| |Seq#Empty|)) (and (|Interp.__default.InterpExpr#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@9|) (LitInt 0))) |ctx#0@@6|) (let ((|valueOrError0#1@@0| (Interp.__default.InterpExpr ($LS $ly@@16) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@9|) (LitInt 0))) |ctx#0@@6|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|) (let ((|ctx1#1@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@0|))))))
 (and (|Interp.__default.InterpExprs#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@9|) (LitInt 1))) |ctx1#1@@0|) (let ((|valueOrError1#1@@0| (Interp.__default.InterpExprs ($LS $ly@@16) (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@9|) (LitInt 1))) |ctx1#1@@0|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@0|)))))))))))) (= (Interp.__default.InterpExprs ($LS $ly@@16) (Lit SeqType |es#0@@9|) |ctx#0@@6|) (ite (|Seq#Equal| |es#0@@9| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (Lit SeqType |Seq#Empty|)) ($Box MapType |ctx#0@@6|)))) (let ((|valueOrError0#1@@1| (Interp.__default.InterpExpr ($LS $ly@@16) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@9|) (LitInt 0))) |ctx#0@@6|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#1@@1|) (let ((|ctx1#1@@1| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@1|))))))
(let ((|v#1| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#1@@1|)))))))
(let ((|valueOrError1#1@@1| (Interp.__default.InterpExprs ($LS $ly@@16) (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@9|) (LitInt 1))) |ctx1#1@@1|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@1|) (let ((|ctx2#1@@0| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@1|))))))
(let ((|vs#1@@0| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError1#1@@1|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box SeqType (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |v#1|))) |vs#1@@0|)) ($Box MapType |ctx2#1@@0|))))))))))))))))
 :qid |Interpdfy.69:12|
 :weight 3
 :skolemid |1131|
 :pattern ( (Interp.__default.InterpExprs ($LS $ly@@16) (Lit SeqType |es#0@@9|) |ctx#0@@6|))
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
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TBool) (and (= ($Box boolType ($Unbox boolType bx@@8)) bx@@8) ($Is boolType ($Unbox boolType bx@@8) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@8 TBool))
)))
(assert (= (Ctor charType) 9))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TChar) (and (= ($Box charType ($Unbox charType bx@@9)) bx@@9) ($Is charType ($Unbox charType bx@@9) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@9 TChar))
)))
(assert (forall ((a@@19 T@U) (b@@19 T@U) ) (!  (=> (and (AST.Expr__Raw.Assign_q a@@19) (AST.Expr__Raw.Assign_q b@@19)) (= (|AST.Expr__Raw#Equal| a@@19 b@@19)  (and (|Seq#Equal| (AST.Expr__Raw.avars a@@19) (AST.Expr__Raw.avars b@@19)) (|Seq#Equal| (AST.Expr__Raw.avals a@@19) (AST.Expr__Raw.avals b@@19)))))
 :qid |unknown.0:0|
 :skolemid |1045|
 :pattern ( (|AST.Expr__Raw#Equal| a@@19 b@@19) (AST.Expr__Raw.Assign_q a@@19))
 :pattern ( (|AST.Expr__Raw#Equal| a@@19 b@@19) (AST.Expr__Raw.Assign_q b@@19))
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
(assert (forall ((a@@20 T@U) (b@@20 T@U) ) (!  (=> (and (AST.BinOp.Add_q a@@20) (AST.BinOp.Add_q b@@20)) (|AST.BinOp#Equal| a@@20 b@@20))
 :qid |unknown.0:0|
 :skolemid |946|
 :pattern ( (|AST.BinOp#Equal| a@@20 b@@20) (AST.BinOp.Add_q a@@20))
 :pattern ( (|AST.BinOp#Equal| a@@20 b@@20) (AST.BinOp.Add_q b@@20))
)))
(assert (forall ((a@@21 T@U) (b@@21 T@U) ) (!  (=> (and (AST.BinOp.Sub_q a@@21) (AST.BinOp.Sub_q b@@21)) (|AST.BinOp#Equal| a@@21 b@@21))
 :qid |unknown.0:0|
 :skolemid |947|
 :pattern ( (|AST.BinOp#Equal| a@@21 b@@21) (AST.BinOp.Sub_q a@@21))
 :pattern ( (|AST.BinOp#Equal| a@@21 b@@21) (AST.BinOp.Sub_q b@@21))
)))
(assert (forall ((a@@22 T@U) (b@@22 T@U) ) (!  (=> (and (AST.BinOp.Mul_q a@@22) (AST.BinOp.Mul_q b@@22)) (|AST.BinOp#Equal| a@@22 b@@22))
 :qid |unknown.0:0|
 :skolemid |948|
 :pattern ( (|AST.BinOp#Equal| a@@22 b@@22) (AST.BinOp.Mul_q a@@22))
 :pattern ( (|AST.BinOp#Equal| a@@22 b@@22) (AST.BinOp.Mul_q b@@22))
)))
(assert (forall (($heap T@U) (|$fh$0x#0| T@U) ) (! (= (AST.Expr__Raw.WellFormed__Single |$fh$0x#0|) (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $heap |AST.Expr__Raw.WellFormed__Single#Handle| ($Box DatatypeTypeType |$fh$0x#0|)))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1110|
 :pattern ( (AST.Expr__Raw.WellFormed__Single |$fh$0x#0|) ($IsGoodHeap $heap))
)))
(assert (forall ((v@@6 T@U) (t0@@5 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@5) h@@2) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@10) ($IsAllocBox bx@@10 t0@@5 h@@2))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@6 bx@@10))
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
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Assign| |a#46#0#0| |a#46#1#0|)) |##AST.Expr_Raw.Assign|)
 :qid |ASTdfy.18:14|
 :skolemid |985|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#46#0#0| |a#46#1#0|))
)))
(assert (forall ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= (AST.Expr__Raw.avars (|#AST.Expr_Raw.Assign| |a#50#0#0| |a#50#1#0|)) |a#50#0#0|)
 :qid |ASTdfy.18:14|
 :skolemid |993|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#50#0#0| |a#50#1#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= (AST.Expr__Raw.avals (|#AST.Expr_Raw.Assign| |a#53#0#0| |a#53#1#0|)) |a#53#1#0|)
 :qid |ASTdfy.18:14|
 :skolemid |996|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall (($ly@@17 T@U) (|es#0@@10| T@U) (|locals#0@@5| T@U) ) (!  (=> (or (|Pure.__default.IsPure__Es#canCall| (Lit SeqType |es#0@@10|) (Lit SetType |locals#0@@5|)) (and ($Is SeqType |es#0@@10| (TSeq Tclass.AST.Expr)) ($Is SetType |locals#0@@5| (TSet (TSeq TChar))))) (and (=> (not (|Seq#Equal| |es#0@@10| |Seq#Empty|)) (and (|Pure.__default.IsPure#canCall| ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@10|) (LitInt 0))) (Lit SetType |locals#0@@5|)) (=> (Pure.__default.IsPure ($LS $ly@@17) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@10|) (LitInt 0))) (Lit SetType |locals#0@@5|)) (|Pure.__default.IsPure__Es#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@10|) (LitInt 1))) (Lit SetType |locals#0@@5|))))) (= (Pure.__default.IsPure__Es ($LS $ly@@17) (Lit SeqType |es#0@@10|) (Lit SetType |locals#0@@5|)) (ite (|Seq#Equal| |es#0@@10| |Seq#Empty|) true  (and (Pure.__default.IsPure ($LS $ly@@17) ($Unbox DatatypeTypeType (|Seq#Index| (Lit SeqType |es#0@@10|) (LitInt 0))) (Lit SetType |locals#0@@5|)) (Pure.__default.IsPure__Es ($LS $ly@@17) (Lit SeqType (|Seq#Drop| (Lit SeqType |es#0@@10|) (LitInt 1))) (Lit SetType |locals#0@@5|)))))))
 :qid |Puredfy.39:13|
 :weight 3
 :skolemid |1158|
 :pattern ( (Pure.__default.IsPure__Es ($LS $ly@@17) (Lit SeqType |es#0@@10|) (Lit SetType |locals#0@@5|)))
)))
(assert (forall ((Utils.Result$T@@10 T@U) (Utils.Result.PropagateFailure$U@@2 T@U) (this@@6 T@U) ) (!  (=> (or (|Utils.Result.PropagateFailure#canCall| Utils.Result$T@@10 Utils.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@6)) (and ($Is DatatypeTypeType this@@6 (Tclass.Utils.Result Utils.Result$T@@10)) (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Failure_q (Lit DatatypeTypeType this@@6))))))) (= (Utils.Result.PropagateFailure Utils.Result$T@@10 Utils.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@6)) (Lit DatatypeTypeType |#Utils.Result.Failure|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |909|
 :pattern ( (Utils.Result.PropagateFailure Utils.Result$T@@10 Utils.Result.PropagateFailure$U@@2 (Lit DatatypeTypeType this@@6)))
)))
(assert (forall ((|e#0@@10| T@U) ) (!  (=> ($Is DatatypeTypeType |e#0@@10| Tclass.AST.Expr__Raw) (= (|AST.Expr__Raw.WellFormed__Single#requires| |e#0@@10|) true))
 :qid |ASTdfy.71:46|
 :skolemid |1102|
 :pattern ( (|AST.Expr__Raw.WellFormed__Single#requires| |e#0@@10|))
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
(assert  (=> (< 1 $FunctionContextHeight) ($Is intType (int_2_U EliminateMulZero.__default.Zero) TInt)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) ) (! (= (|#AST.Expr_Raw.Bind| (Lit SeqType |a#37#0#0|) (Lit SeqType |a#37#1#0|) (Lit DatatypeTypeType |a#37#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Bind| |a#37#0#0| |a#37#1#0| |a#37#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |976|
 :pattern ( (|#AST.Expr_Raw.Bind| (Lit SeqType |a#37#0#0|) (Lit SeqType |a#37#1#0|) (Lit DatatypeTypeType |a#37#2#0|)))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) (|a#59#2#0| T@U) ) (! (= (|#AST.Expr_Raw.If| (Lit DatatypeTypeType |a#59#0#0|) (Lit DatatypeTypeType |a#59#1#0|) (Lit DatatypeTypeType |a#59#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.If| |a#59#0#0| |a#59#1#0| |a#59#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1007|
 :pattern ( (|#AST.Expr_Raw.If| (Lit DatatypeTypeType |a#59#0#0|) (Lit DatatypeTypeType |a#59#1#0|) (Lit DatatypeTypeType |a#59#2#0|)))
)))
(assert (forall ((|a#69#0#0| T@U) (|a#69#1#0| T@U) (|a#69#2#0| T@U) ) (! (= (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |a#69#0#0|) (Lit DatatypeTypeType |a#69#1#0|) (Lit DatatypeTypeType |a#69#2#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Op| |a#69#0#0| |a#69#1#0| |a#69#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1022|
 :pattern ( (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |a#69#0#0|) (Lit DatatypeTypeType |a#69#1#0|) (Lit DatatypeTypeType |a#69#2#0|)))
)))
(assert (forall (($ly@@18 T@U) (|e#0@@11| T@U) (|ctx#0@@7| T@U) ) (!  (=> (or (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@11|) (Lit MapType |ctx#0@@7|)) (and ($Is DatatypeTypeType |e#0@@11| Tclass.AST.Expr) ($Is MapType |ctx#0@@7| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@11|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@11|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@11|))))) (let ((|body#5| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|bvals#5| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|bvars#5| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@11|)))))
 (and (|Interp.__default.InterpExprs#canCall| |bvals#5| (Lit MapType |ctx#0@@7|)) (let ((|valueOrError0#5| (Interp.__default.InterpExprs ($LS $ly@@18) |bvals#5| (Lit MapType |ctx#0@@7|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|) (let ((|ctx1#20| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|))))))
(let ((|vs#15| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#5|))))))
 (and (|Interp.__default.VarsAndValuesToContext#canCall| |bvars#5| |vs#15|) (let ((|bindings#10| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#5| |vs#15|)))
(let ((|ctx2#10| (|Map#Merge| |ctx1#20| |bindings#10|)))
 (and (|Interp.__default.InterpExpr#canCall| |body#5| |ctx2#10|) (let ((|valueOrError1#5| (Interp.__default.InterpExpr ($LS $ly@@18) |body#5| |ctx2#10|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#5|))))))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@11|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@11|))))) (let ((|avals#5| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|avars#5| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@11|)))))
 (and (|Interp.__default.InterpExprs#canCall| |avals#5| (Lit MapType |ctx#0@@7|)) (let ((|valueOrError2#5| (Interp.__default.InterpExprs ($LS $ly@@18) |avals#5| (Lit MapType |ctx#0@@7|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|) (let ((|vs#16| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#5|))))))
(|Interp.__default.VarsAndValuesToContext#canCall| |avars#5| |vs#16|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@11|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@11|))))) (let ((|els#5| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|thn#5| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|cond#5| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@11|)))))
 (and (|Interp.__default.InterpExpr#canCall| |cond#5| (Lit MapType |ctx#0@@7|)) (let ((|valueOrError3#5| (Interp.__default.InterpExpr ($LS $ly@@18) |cond#5| (Lit MapType |ctx#0@@7|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|) (let ((|ctx_cond#5| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|))))))
(let ((|condv#5| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#5|)))))))
 (and (=> (or (not (= |condv#5| 0)) (not true)) (|Interp.__default.InterpExpr#canCall| |thn#5| |ctx_cond#5|)) (=> (= |condv#5| 0) (|Interp.__default.InterpExpr#canCall| |els#5| |ctx_cond#5|)))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@11|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@11|))))) (let ((|e2#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|e1#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|op#5| (Lit DatatypeTypeType (AST.Expr__Raw.op (Lit DatatypeTypeType |e#0@@11|)))))
 (and (|Interp.__default.InterpExpr#canCall| |e1#5| (Lit MapType |ctx#0@@7|)) (let ((|valueOrError4#5| (Interp.__default.InterpExpr ($LS $ly@@18) |e1#5| (Lit MapType |ctx#0@@7|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|) (let ((|ctx1#22| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|))))))
(let ((|v1#5| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#5|)))))))
 (and (|Interp.__default.InterpExpr#canCall| |e2#5| |ctx1#22|) (let ((|valueOrError5#5| (Interp.__default.InterpExpr ($LS $ly@@18) |e2#5| |ctx1#22|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|) (let ((|v2#5| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#5|)))))))
(|Interp.__default.InterpBinOp#canCall| |op#5| |v1#5| |v2#5|)))))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@11|)))))) (let ((|es#5| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@11|)))))
 (and (|Interp.__default.InterpExprs#canCall| |es#5| (Lit MapType |ctx#0@@7|)) (let ((|valueOrError6#5| (Interp.__default.InterpExprs ($LS $ly@@18) |es#5| (Lit MapType |ctx#0@@7|))))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#5|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#5|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#5|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#5|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#5|)))))))))))))))) (= (Interp.__default.InterpExpr ($LS $ly@@18) (Lit DatatypeTypeType |e#0@@11|) (Lit MapType |ctx#0@@7|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@11|)) (let ((|name#4| (Lit SeqType (AST.Expr__Raw.name (Lit DatatypeTypeType |e#0@@11|)))))
(ite (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType |ctx#0@@7|))) ($Box SeqType |name#4|)) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |ctx#0@@7|)) ($Box SeqType |name#4|)) ($Box MapType (Lit MapType |ctx#0@@7|))))) |#Utils.Result.Failure|)) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@11|)) (let ((|n#4| (LitInt (AST.Expr__Raw.n (Lit DatatypeTypeType |e#0@@11|)))))
(Lit DatatypeTypeType (|#Utils.Result.Success| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |n#4|)) ($Box MapType (Lit MapType |ctx#0@@7|)))))))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@11|)) (let ((|body#4| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|bvals#4| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|bvars#4| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|valueOrError0#4| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $ly@@18) |bvals#4| (Lit MapType |ctx#0@@7|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#4|) (let ((|ctx1#16| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#4|)))))))
(let ((|vs#12| ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#4|)))))))
(let ((|bindings#8| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#4| |vs#12|)))
(let ((|ctx2#8| (|Map#Merge| |ctx1#16| |bindings#8|)))
(let ((|valueOrError1#4| (Interp.__default.InterpExpr ($LS $ly@@18) |body#4| |ctx2#8|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#4|) (let ((|ctx3#4| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#4|))))))
(let ((|bodyv#4| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#4|)))))))
(let ((|ctx4#4| (|Map#Merge| |ctx1#16| (|Map#Subtract| |ctx3#4| (|Set#FromBoogieMap| (|lambda#6| (TSeq TChar) |bvars#4|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |bodyv#4|)) ($Box MapType |ctx4#4|)))))))))))))))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@11|)) (let ((|avals#4| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|avars#4| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|valueOrError2#4| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $ly@@18) |avals#4| (Lit MapType |ctx#0@@7|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#4|) (let ((|ctx1#17| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#4|)))))))
(let ((|vs#13| ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#4|)))))))
(let ((|bindings#9| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |avars#4| |vs#13|)))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType (|Map#Merge| |ctx1#17| |bindings#9|)))))))))))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@11|)) (let ((|els#4| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|thn#4| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|cond#4| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|valueOrError3#4| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $ly@@18) |cond#4| (Lit MapType |ctx#0@@7|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#4|) (let ((|ctx_cond#4| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#4|)))))))
(let ((|condv#4| (U_2_int ($Unbox intType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#4|))))))))
(ite  (or (not (= |condv#4| 0)) (not true)) (Interp.__default.InterpExpr ($LS $ly@@18) |thn#4| |ctx_cond#4|) (Interp.__default.InterpExpr ($LS $ly@@18) |els#4| |ctx_cond#4|))))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@11|)) (let ((|e2#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|e1#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|op#4| (Lit DatatypeTypeType (AST.Expr__Raw.op (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|valueOrError4#4| (Lit DatatypeTypeType (Interp.__default.InterpExpr ($LS $ly@@18) |e1#4| (Lit MapType |ctx#0@@7|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#4|) (let ((|ctx1#18| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#4|)))))))
(let ((|v1#4| (U_2_int ($Unbox intType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#4|))))))))
(let ((|valueOrError5#4| (Interp.__default.InterpExpr ($LS $ly@@18) |e2#4| |ctx1#18|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#4|) (let ((|ctx2#9| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#4|))))))
(let ((|v2#4| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#4|)))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Interp.__default.InterpBinOp |op#4| |v1#4| |v2#4|))) ($Box MapType |ctx2#9|))))))))))))))) (let ((|es#4| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@11|)))))
(let ((|valueOrError6#4| (Lit DatatypeTypeType (Interp.__default.InterpExprs ($LS $ly@@18) |es#4| (Lit MapType |ctx#0@@7|)))))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#4|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#4|) (let ((|ctx1#19| ($Unbox MapType (_System.Tuple2._1 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#4|)))))))
(let ((|vs#14| ($Unbox SeqType (_System.Tuple2._0 (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#4|)))))))
(ite (|Seq#Equal| |vs#14| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType |ctx1#19|)))) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (|Seq#Index| |vs#14| (- (|Seq#Length| |vs#14|) 1)) ($Box MapType |ctx1#19|)))))))))))))))))))
 :qid |Interpdfy.24:12|
 :weight 3
 :skolemid |1125|
 :pattern ( (Interp.__default.InterpExpr ($LS $ly@@18) (Lit DatatypeTypeType |e#0@@11|) (Lit MapType |ctx#0@@7|)))
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
 :skolemid |673|
 :pattern ( (Tclass.Utils.Result Utils.Result$T@@11))
)))
(assert (forall ((|a#0#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#Utils.Result.Success| |a#0#0#0@@0|)) |##Utils.Result.Success|)
 :qid |Utilsdfy.23:34|
 :skolemid |882|
 :pattern ( (|#Utils.Result.Success| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) ) (! (= (Utils.Result.value (|#Utils.Result.Success| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |Utilsdfy.23:34|
 :skolemid |890|
 :pattern ( (|#Utils.Result.Success| |a#4#0#0@@0|))
)))
(assert (forall ((|a#22#0#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Var| |a#22#0#0|)) |##AST.Expr_Raw.Var|)
 :qid |ASTdfy.15:11|
 :skolemid |950|
 :pattern ( (|#AST.Expr_Raw.Var| |a#22#0#0|))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= (AST.Expr__Raw.name (|#AST.Expr_Raw.Var| |a#26#0#0|)) |a#26#0#0|)
 :qid |ASTdfy.15:11|
 :skolemid |957|
 :pattern ( (|#AST.Expr_Raw.Var| |a#26#0#0|))
)))
(assert (forall ((|a#29#0#0| Int) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Literal| |a#29#0#0|)) |##AST.Expr_Raw.Literal|)
 :qid |ASTdfy.16:15|
 :skolemid |960|
 :pattern ( (|#AST.Expr_Raw.Literal| |a#29#0#0|))
)))
(assert (forall ((|a#33#0#0| Int) ) (! (= (AST.Expr__Raw.n (|#AST.Expr_Raw.Literal| |a#33#0#0|)) |a#33#0#0|)
 :qid |ASTdfy.16:15|
 :skolemid |967|
 :pattern ( (|#AST.Expr_Raw.Literal| |a#33#0#0|))
)))
(assert (forall ((|a#76#0#0| T@U) ) (! (= (DatatypeCtorId (|#AST.Expr_Raw.Seq| |a#76#0#0|)) |##AST.Expr_Raw.Seq|)
 :qid |ASTdfy.21:11|
 :skolemid |1029|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#76#0#0|))
)))
(assert (forall ((|a#80#0#0| T@U) ) (! (= (AST.Expr__Raw.es (|#AST.Expr_Raw.Seq| |a#80#0#0|)) |a#80#0#0|)
 :qid |ASTdfy.21:11|
 :skolemid |1036|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#80#0#0|))
)))
(assert (forall ((x@@10 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@10))
)))
(assert (forall ((v@@8 T@U) (t0@@7 T@U) (t1@@4 T@U) (h@@4 T@U) ) (! (= ($IsAlloc MapType v@@8 (TMap t0@@7 t1@@4) h@@4) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@11) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@11) t1@@4 h@@4) ($IsAllocBox bx@@11 t0@@7 h@@4)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@11))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@8 (TMap t0@@7 t1@@4) h@@4))
)))
(assert (forall ((Utils.Result$T@@12 T@U) (this@@7 T@U) ) (!  (=> (or (|Utils.Result.Extract#canCall| Utils.Result$T@@12 this@@7) (and ($Is DatatypeTypeType this@@7 (Tclass.Utils.Result Utils.Result$T@@12)) (Utils.Result.Success_q this@@7))) ($IsBox (Utils.Result.Extract Utils.Result$T@@12 this@@7) Utils.Result$T@@12))
 :qid |unknown.0:0|
 :skolemid |910|
 :pattern ( (Utils.Result.Extract Utils.Result$T@@12 this@@7))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (< (|Seq#Rank| |a#40#0#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#40#0#0| |a#40#1#0| |a#40#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |979|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#40#0#0| |a#40#1#0| |a#40#2#0|))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) (|a#43#2#0| T@U) ) (! (< (|Seq#Rank| |a#43#1#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#43#0#0| |a#43#1#0| |a#43#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |982|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#43#0#0| |a#43#1#0| |a#43#2#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (|a#45#2#0| T@U) ) (! (< (DtRank |a#45#2#0|) (DtRank (|#AST.Expr_Raw.Bind| |a#45#0#0| |a#45#1#0| |a#45#2#0|)))
 :qid |ASTdfy.17:12|
 :skolemid |984|
 :pattern ( (|#AST.Expr_Raw.Bind| |a#45#0#0| |a#45#1#0| |a#45#2#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) (|a#61#2#0| T@U) ) (! (< (DtRank |a#61#0#0|) (DtRank (|#AST.Expr_Raw.If| |a#61#0#0| |a#61#1#0| |a#61#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1009|
 :pattern ( (|#AST.Expr_Raw.If| |a#61#0#0| |a#61#1#0| |a#61#2#0|))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) (|a#63#2#0| T@U) ) (! (< (DtRank |a#63#1#0|) (DtRank (|#AST.Expr_Raw.If| |a#63#0#0| |a#63#1#0| |a#63#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1011|
 :pattern ( (|#AST.Expr_Raw.If| |a#63#0#0| |a#63#1#0| |a#63#2#0|))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) (|a#65#2#0| T@U) ) (! (< (DtRank |a#65#2#0|) (DtRank (|#AST.Expr_Raw.If| |a#65#0#0| |a#65#1#0| |a#65#2#0|)))
 :qid |ASTdfy.19:10|
 :skolemid |1013|
 :pattern ( (|#AST.Expr_Raw.If| |a#65#0#0| |a#65#1#0| |a#65#2#0|))
)))
(assert (forall ((|a#71#0#0| T@U) (|a#71#1#0| T@U) (|a#71#2#0| T@U) ) (! (< (DtRank |a#71#0#0|) (DtRank (|#AST.Expr_Raw.Op| |a#71#0#0| |a#71#1#0| |a#71#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1024|
 :pattern ( (|#AST.Expr_Raw.Op| |a#71#0#0| |a#71#1#0| |a#71#2#0|))
)))
(assert (forall ((|a#73#0#0| T@U) (|a#73#1#0| T@U) (|a#73#2#0| T@U) ) (! (< (DtRank |a#73#1#0|) (DtRank (|#AST.Expr_Raw.Op| |a#73#0#0| |a#73#1#0| |a#73#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1026|
 :pattern ( (|#AST.Expr_Raw.Op| |a#73#0#0| |a#73#1#0| |a#73#2#0|))
)))
(assert (forall ((|a#75#0#0| T@U) (|a#75#1#0| T@U) (|a#75#2#0| T@U) ) (! (< (DtRank |a#75#2#0|) (DtRank (|#AST.Expr_Raw.Op| |a#75#0#0| |a#75#1#0| |a#75#2#0|)))
 :qid |ASTdfy.20:10|
 :skolemid |1028|
 :pattern ( (|#AST.Expr_Raw.Op| |a#75#0#0| |a#75#1#0| |a#75#2#0|))
)))
(assert (forall ((Utils.Result$T@@13 T@U) (|a#2#0#0@@2| T@U) ) (! (= ($Is DatatypeTypeType (|#Utils.Result.Success| |a#2#0#0@@2|) (Tclass.Utils.Result Utils.Result$T@@13)) ($IsBox |a#2#0#0@@2| Utils.Result$T@@13))
 :qid |unknown.0:0|
 :skolemid |886|
 :pattern ( ($Is DatatypeTypeType (|#Utils.Result.Success| |a#2#0#0@@2|) (Tclass.Utils.Result Utils.Result$T@@13)))
)))
(assert (forall (($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (Requires1 Tclass.AST.Expr__Raw TBool $heap@@0 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@0|) (|AST.Expr__Raw.WellFormed__Single#requires| ($Unbox DatatypeTypeType |$fh$0x#0@@0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1108|
 :pattern ( (Requires1 Tclass.AST.Expr__Raw TBool $heap@@0 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@0|))
)))
(assert (= EliminateMulZero.__default.Zero (LitInt 0)))
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
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (< (|Seq#Rank| |a#52#0#0|) (DtRank (|#AST.Expr_Raw.Assign| |a#52#0#0| |a#52#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |995|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#52#0#0| |a#52#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (< (|Seq#Rank| |a#55#1#0|) (DtRank (|#AST.Expr_Raw.Assign| |a#55#0#0| |a#55#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |998|
 :pattern ( (|#AST.Expr_Raw.Assign| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall (($ly@@19 T@U) (|vars#0@@1| T@U) (|values#0@@1| T@U) ) (!  (=> (or (|Interp.__default.VarsAndValuesToContext#canCall| |vars#0@@1| |values#0@@1|) (and (and ($Is SeqType |vars#0@@1| (TSeq (TSeq TChar))) ($Is SeqType |values#0@@1| (TSeq TInt))) (= (|Seq#Length| |vars#0@@1|) (|Seq#Length| |values#0@@1|)))) (and (=> (not (|Seq#Equal| |vars#0@@1| |Seq#Empty|)) (|Interp.__default.VarsAndValuesToContext#canCall| (|Seq#Drop| |vars#0@@1| (LitInt 1)) (|Seq#Drop| |values#0@@1| (LitInt 1)))) (= (Interp.__default.VarsAndValuesToContext ($LS $ly@@19) |vars#0@@1| |values#0@@1|) (ite (|Seq#Equal| |vars#0@@1| |Seq#Empty|) |Map#Empty| (|Map#Merge| (|Map#Build| |Map#Empty| (|Seq#Index| |vars#0@@1| (LitInt 0)) (|Seq#Index| |values#0@@1| (LitInt 0))) (Interp.__default.VarsAndValuesToContext $ly@@19 (|Seq#Drop| |vars#0@@1| (LitInt 1)) (|Seq#Drop| |values#0@@1| (LitInt 1))))))))
 :qid |Interpdfy.80:12|
 :skolemid |1137|
 :pattern ( (Interp.__default.VarsAndValuesToContext ($LS $ly@@19) |vars#0@@1| |values#0@@1|))
)))
(assert (forall ((a@@23 T@U) (b@@23 T@U) ) (! (= (|Set#Union| a@@23 (|Set#Union| a@@23 b@@23)) (|Set#Union| a@@23 b@@23))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@23 (|Set#Union| a@@23 b@@23)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|e1#0@@0| T@U) (|e2#0@@0| T@U) ) (!  (=> (or (|EliminateMulZero.__default.IsZeroMulPure#canCall| |e1#0@@0| |e2#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |e1#0@@0| Tclass.AST.Expr) ($Is DatatypeTypeType |e2#0@@0| Tclass.AST.Expr)))) (and (and (and (|$IsA#AST.Expr__Raw| |e1#0@@0|) (|$IsA#AST.Expr__Raw| EliminateMulZero.__default.ZeroExpr)) (=> (|AST.Expr__Raw#Equal| |e1#0@@0| EliminateMulZero.__default.ZeroExpr) (|Pure.__default.IsPure#canCall| |e2#0@@0| (Lit SetType |Set#Empty|)))) (= (EliminateMulZero.__default.IsZeroMulPure |e1#0@@0| |e2#0@@0|)  (and (|AST.Expr__Raw#Equal| |e1#0@@0| EliminateMulZero.__default.ZeroExpr) (Pure.__default.IsPure ($LS $LZ) |e2#0@@0| (Lit SetType |Set#Empty|))))))
 :qid |EliminateMulZerodfy.26:27|
 :skolemid |642|
 :pattern ( (EliminateMulZero.__default.IsZeroMulPure |e1#0@@0| |e2#0@@0|))
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
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((|a#31#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Literal| |a#31#0#0|) Tclass.AST.Expr__Raw) ($Is intType (int_2_U |a#31#0#0|) TInt))
 :qid |ASTdfy.16:15|
 :skolemid |964|
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
(assert (forall ((bx@@12 T@U) (s@@17 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@12 (TMap s@@17 t@@10)) (and (= ($Box MapType ($Unbox MapType bx@@12)) bx@@12) ($Is MapType ($Unbox MapType bx@@12) (TMap s@@17 t@@10))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@12 (TMap s@@17 t@@10)))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@13)) bx@@13) ($Is HandleTypeType ($Unbox HandleTypeType bx@@13) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@13 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@14)) bx@@14) ($Is HandleTypeType ($Unbox HandleTypeType bx@@14) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@14 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@15)) bx@@15) ($Is HandleTypeType ($Unbox HandleTypeType bx@@15) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@15 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@16)) bx@@16) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@16) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@16 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#5#0#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#Utils.Result.Success| |a#5#0#0@@0|)))
 :qid |Utilsdfy.23:34|
 :skolemid |891|
 :pattern ( (|#Utils.Result.Success| |a#5#0#0@@0|))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (< (|Seq#Rank| |a#28#0#0|) (DtRank (|#AST.Expr_Raw.Var| |a#28#0#0|)))
 :qid |ASTdfy.15:11|
 :skolemid |959|
 :pattern ( (|#AST.Expr_Raw.Var| |a#28#0#0|))
)))
(assert (forall ((|a#82#0#0| T@U) ) (! (< (|Seq#Rank| |a#82#0#0|) (DtRank (|#AST.Expr_Raw.Seq| |a#82#0#0|)))
 :qid |ASTdfy.21:11|
 :skolemid |1038|
 :pattern ( (|#AST.Expr_Raw.Seq| |a#82#0#0|))
)))
(assert (forall ((d@@29 T@U) (Utils.Result$T@@14 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (Utils.Result.Success_q d@@29) ($IsAlloc DatatypeTypeType d@@29 (Tclass.Utils.Result Utils.Result$T@@14) $h@@7))) ($IsAllocBox (Utils.Result.value d@@29) Utils.Result$T@@14 $h@@7))
 :qid |unknown.0:0|
 :skolemid |888|
 :pattern ( ($IsAllocBox (Utils.Result.value d@@29) Utils.Result$T@@14 $h@@7))
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
 :skolemid |1265|
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
(assert (forall ((d@@30 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (AST.Expr__Raw.Literal_q d@@30) ($IsAlloc DatatypeTypeType d@@30 Tclass.AST.Expr__Raw $h@@8))) ($IsAlloc intType (int_2_U (AST.Expr__Raw.n d@@30)) TInt $h@@8))
 :qid |unknown.0:0|
 :skolemid |965|
 :pattern ( ($IsAlloc intType (int_2_U (AST.Expr__Raw.n d@@30)) TInt $h@@8))
)))
(assert (forall ((d@@31 T@U) ) (!  (=> ($Is DatatypeTypeType d@@31 Tclass.AST.BinOp) (or (or (AST.BinOp.Add_q d@@31) (AST.BinOp.Sub_q d@@31)) (AST.BinOp.Mul_q d@@31)))
 :qid |unknown.0:0|
 :skolemid |945|
 :pattern ( (AST.BinOp.Mul_q d@@31) ($Is DatatypeTypeType d@@31 Tclass.AST.BinOp))
 :pattern ( (AST.BinOp.Sub_q d@@31) ($Is DatatypeTypeType d@@31 Tclass.AST.BinOp))
 :pattern ( (AST.BinOp.Add_q d@@31) ($Is DatatypeTypeType d@@31 Tclass.AST.BinOp))
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
(assert (forall ((d@@32 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@32)) (DtRank d@@32))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@32)))
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
(assert (forall (($ly@@20 T@U) (|e#0@@12| T@U) (|ctx#0@@8| T@U) ) (!  (=> (or (|Interp.__default.InterpExpr#canCall| (Lit DatatypeTypeType |e#0@@12|) |ctx#0@@8|) (and ($Is DatatypeTypeType |e#0@@12| Tclass.AST.Expr) ($Is MapType |ctx#0@@8| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@12|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@12|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@12|))))) (let ((|body#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|bvals#3@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|bvars#3@@0| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@12|)))))
 (and (|Interp.__default.InterpExprs#canCall| |bvals#3@@0| |ctx#0@@8|) (let ((|valueOrError0#3| (Interp.__default.InterpExprs ($LS $ly@@20) |bvals#3@@0| |ctx#0@@8|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|) (let ((|ctx1#12| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|))))))
(let ((|vs#9| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#3|))))))
 (and (|Interp.__default.VarsAndValuesToContext#canCall| |bvars#3@@0| |vs#9|) (let ((|bindings#6| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#3@@0| |vs#9|)))
(let ((|ctx2#6| (|Map#Merge| |ctx1#12| |bindings#6|)))
 (and (|Interp.__default.InterpExpr#canCall| |body#3@@0| |ctx2#6|) (let ((|valueOrError1#3| (Interp.__default.InterpExpr ($LS $ly@@20) |body#3@@0| |ctx2#6|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#3|))))))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@12|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@12|))))) (let ((|avals#3@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|avars#3@@0| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@12|)))))
 (and (|Interp.__default.InterpExprs#canCall| |avals#3@@0| |ctx#0@@8|) (let ((|valueOrError2#3| (Interp.__default.InterpExprs ($LS $ly@@20) |avals#3@@0| |ctx#0@@8|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|) (let ((|vs#10| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#3|))))))
(|Interp.__default.VarsAndValuesToContext#canCall| |avars#3@@0| |vs#10|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@12|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@12|))))) (let ((|els#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|thn#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|cond#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@12|)))))
 (and (|Interp.__default.InterpExpr#canCall| |cond#3@@0| |ctx#0@@8|) (let ((|valueOrError3#3| (Interp.__default.InterpExpr ($LS $ly@@20) |cond#3@@0| |ctx#0@@8|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|) (let ((|ctx_cond#3| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|))))))
(let ((|condv#3| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#3|)))))))
 (and (=> (or (not (= |condv#3| 0)) (not true)) (|Interp.__default.InterpExpr#canCall| |thn#3@@0| |ctx_cond#3|)) (=> (= |condv#3| 0) (|Interp.__default.InterpExpr#canCall| |els#3@@0| |ctx_cond#3|)))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@12|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@12|))))) (let ((|e2#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|e1#3| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|op#3| (Lit DatatypeTypeType (AST.Expr__Raw.op (Lit DatatypeTypeType |e#0@@12|)))))
 (and (|Interp.__default.InterpExpr#canCall| |e1#3| |ctx#0@@8|) (let ((|valueOrError4#3| (Interp.__default.InterpExpr ($LS $ly@@20) |e1#3| |ctx#0@@8|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|) (let ((|ctx1#14| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|))))))
(let ((|v1#3| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#3|)))))))
 (and (|Interp.__default.InterpExpr#canCall| |e2#3| |ctx1#14|) (let ((|valueOrError5#3| (Interp.__default.InterpExpr ($LS $ly@@20) |e2#3| |ctx1#14|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|)) (and (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|) (let ((|v2#3| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#3|)))))))
(|Interp.__default.InterpBinOp#canCall| |op#3| |v1#3| |v2#3|)))))))))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@12|)))))) (let ((|es#3@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@12|)))))
 (and (|Interp.__default.InterpExprs#canCall| |es#3@@0| |ctx#0@@8|) (let ((|valueOrError6#3| (Interp.__default.InterpExprs ($LS $ly@@20) |es#3@@0| |ctx#0@@8|)))
 (and (and (|Utils.Result.IsFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#3|) (=> (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#3|) (|Utils.Result.PropagateFailure#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#3|))) (=> (not (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#3|)) (|Utils.Result.Extract#canCall| (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#3|)))))))))))))))) (= (Interp.__default.InterpExpr ($LS $ly@@20) (Lit DatatypeTypeType |e#0@@12|) |ctx#0@@8|) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@12|)) (let ((|name#2| (Lit SeqType (AST.Expr__Raw.name (Lit DatatypeTypeType |e#0@@12|)))))
(ite (|Set#IsMember| (|Map#Domain| |ctx#0@@8|) ($Box SeqType |name#2|)) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@8|) ($Box SeqType |name#2|)) ($Box MapType |ctx#0@@8|)))) |#Utils.Result.Failure|)) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@12|)) (let ((|n#2| (LitInt (AST.Expr__Raw.n (Lit DatatypeTypeType |e#0@@12|)))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |n#2|)) ($Box MapType |ctx#0@@8|))))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@12|)) (let ((|body#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|bvals#2@@1| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|bvars#2@@1| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|valueOrError0#2@@1| (Interp.__default.InterpExprs ($LS $ly@@20) |bvals#2@@1| |ctx#0@@8|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError0#2@@1|) (let ((|ctx1#8| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2@@1|))))))
(let ((|vs#6| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError0#2@@1|))))))
(let ((|bindings#4| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |bvars#2@@1| |vs#6|)))
(let ((|ctx2#4| (|Map#Merge| |ctx1#8| |bindings#4|)))
(let ((|valueOrError1#2@@1| (Interp.__default.InterpExpr ($LS $ly@@20) |body#2@@0| |ctx2#4|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#2@@1|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#2@@1|) (let ((|ctx3#2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#2@@1|))))))
(let ((|bodyv#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError1#2@@1|)))))))
(let ((|ctx4#2| (|Map#Merge| |ctx1#8| (|Map#Subtract| |ctx3#2| (|Set#FromBoogieMap| (|lambda#6| (TSeq TChar) |bvars#2@@1|))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U |bodyv#2|)) ($Box MapType |ctx4#2|)))))))))))))))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@12|)) (let ((|avals#2@@1| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|avars#2@@1| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|valueOrError2#2| (Interp.__default.InterpExprs ($LS $ly@@20) |avals#2@@1| |ctx#0@@8|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError2#2|) (let ((|ctx1#9| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#2|))))))
(let ((|vs#7| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError2#2|))))))
(let ((|bindings#5| (Interp.__default.VarsAndValuesToContext ($LS $LZ) |avars#2@@1| |vs#7|)))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType (|Map#Merge| |ctx1#9| |bindings#5|)))))))))))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@12|)) (let ((|els#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|thn#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|cond#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|valueOrError3#2| (Interp.__default.InterpExpr ($LS $ly@@20) |cond#2@@0| |ctx#0@@8|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#2|) (let ((|ctx_cond#2| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#2|))))))
(let ((|condv#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError3#2|)))))))
(ite  (or (not (= |condv#2| 0)) (not true)) (Interp.__default.InterpExpr ($LS $ly@@20) |thn#2@@0| |ctx_cond#2|) (Interp.__default.InterpExpr ($LS $ly@@20) |els#2@@0| |ctx_cond#2|))))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@12|)) (let ((|e2#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|e1#2| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|op#2| (Lit DatatypeTypeType (AST.Expr__Raw.op (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|valueOrError4#2| (Interp.__default.InterpExpr ($LS $ly@@20) |e1#2| |ctx#0@@8|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#2|) (let ((|ctx1#10| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#2|))))))
(let ((|v1#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError4#2|)))))))
(let ((|valueOrError5#2| (Interp.__default.InterpExpr ($LS $ly@@20) |e2#2| |ctx1#10|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#2|) (let ((|ctx2#5| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#2|))))))
(let ((|v2#2| (U_2_int ($Unbox intType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError5#2|)))))))
(|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (Interp.__default.InterpBinOp |op#2| |v1#2| |v2#2|))) ($Box MapType |ctx2#5|))))))))))))))) (let ((|es#2@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@12|)))))
(let ((|valueOrError6#2| (Interp.__default.InterpExprs ($LS $ly@@20) |es#2@@0| |ctx#0@@8|)))
(ite (Utils.Result.IsFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#2|) (Utils.Result.PropagateFailure (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)) |valueOrError6#2|) (let ((|ctx1#11| ($Unbox MapType (_System.Tuple2._1 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#2|))))))
(let ((|vs#8| ($Unbox SeqType (_System.Tuple2._0 ($Unbox DatatypeTypeType (Utils.Result.Extract (Tclass._System.Tuple2 (TSeq TInt) (TMap (TSeq TChar) TInt)) |valueOrError6#2|))))))
(ite (|Seq#Equal| |vs#8| |Seq#Empty|) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (LitInt 0))) ($Box MapType |ctx1#11|)))) (|#Utils.Result.Success| ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| (|Seq#Index| |vs#8| (- (|Seq#Length| |vs#8|) 1)) ($Box MapType |ctx1#11|)))))))))))))))))))
 :qid |Interpdfy.24:12|
 :weight 3
 :skolemid |1124|
 :pattern ( (Interp.__default.InterpExpr ($LS $ly@@20) (Lit DatatypeTypeType |e#0@@12|) |ctx#0@@8|))
)))
(assert (forall ((bx@@17 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@17 (TSet t@@11)) (and (= ($Box SetType ($Unbox SetType bx@@17)) bx@@17) ($Is SetType ($Unbox SetType bx@@17) (TSet t@@11))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@17 (TSet t@@11)))
)))
(assert (forall ((bx@@18 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@18 (TSeq t@@12)) (and (= ($Box SeqType ($Unbox SeqType bx@@18)) bx@@18) ($Is SeqType ($Unbox SeqType bx@@18) (TSeq t@@12))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@18 (TSeq t@@12)))
)))
(assert (forall ((Utils.Result$T@@15 T@U) (bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 (Tclass.Utils.Result Utils.Result$T@@15)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@19)) bx@@19) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@19) (Tclass.Utils.Result Utils.Result$T@@15))))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( ($IsBox bx@@19 (Tclass.Utils.Result Utils.Result$T@@15)))
)))
(assert (forall ((m@@12 T@U) (s@@20 T@U) ) (! (= (|Map#Domain| (|Map#Subtract| m@@12 s@@20)) (|Set#Difference| (|Map#Domain| m@@12) s@@20))
 :qid |DafnyPreludebpl.1486:15|
 :skolemid |295|
 :pattern ( (|Map#Domain| (|Map#Subtract| m@@12 s@@20)))
)))
(assert (forall ((v@@12 T@U) (t0@@11 T@U) (t1@@8 T@U) ) (! (= ($Is MapType v@@12 (TMap t0@@11 t1@@8)) (forall ((bx@@20 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@12) bx@@20) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@20) t1@@8) ($IsBox bx@@20 t0@@11)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@20))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@12) bx@@20))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@12 (TMap t0@@11 t1@@8)))
)))
(assert (forall (($ly@@21 T@U) (|vars#0@@2| T@U) (|values#0@@2| T@U) ) (!  (=> (or (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@2|) (Lit SeqType |values#0@@2|)) (and (and ($Is SeqType |vars#0@@2| (TSeq (TSeq TChar))) ($Is SeqType |values#0@@2| (TSeq TInt))) (= (|Seq#Length| (Lit SeqType |vars#0@@2|)) (|Seq#Length| (Lit SeqType |values#0@@2|))))) (and (=> (not (|Seq#Equal| |vars#0@@2| |Seq#Empty|)) (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |vars#0@@2|) (LitInt 1))) (Lit SeqType (|Seq#Drop| (Lit SeqType |values#0@@2|) (LitInt 1))))) (= (Interp.__default.VarsAndValuesToContext ($LS $ly@@21) (Lit SeqType |vars#0@@2|) (Lit SeqType |values#0@@2|)) (ite (|Seq#Equal| |vars#0@@2| |Seq#Empty|) |Map#Empty| (|Map#Merge| (|Map#Build| |Map#Empty| (|Seq#Index| (Lit SeqType |vars#0@@2|) (LitInt 0)) (|Seq#Index| (Lit SeqType |values#0@@2|) (LitInt 0))) (Interp.__default.VarsAndValuesToContext ($LS $ly@@21) (Lit SeqType (|Seq#Drop| (Lit SeqType |vars#0@@2|) (LitInt 1))) (Lit SeqType (|Seq#Drop| (Lit SeqType |values#0@@2|) (LitInt 1)))))))))
 :qid |Interpdfy.80:12|
 :weight 3
 :skolemid |1138|
 :pattern ( (Interp.__default.VarsAndValuesToContext ($LS $ly@@21) (Lit SeqType |vars#0@@2|) (Lit SeqType |values#0@@2|)))
)))
(assert (forall (($bx T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (|Set#IsMember| (Reads1 Tclass.AST.Expr__Raw TBool $heap@@1 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@1|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( (|Set#IsMember| (Reads1 Tclass.AST.Expr__Raw TBool $heap@@1 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@1|) $bx))
)))
(assert (forall ((d@@33 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) ($Is DatatypeTypeType d@@33 Tclass.AST.BinOp)) ($IsAlloc DatatypeTypeType d@@33 Tclass.AST.BinOp $h@@9))
 :qid |unknown.0:0|
 :skolemid |943|
 :pattern ( ($IsAlloc DatatypeTypeType d@@33 Tclass.AST.BinOp $h@@9))
)))
(assert (forall ((d@@34 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) ($Is DatatypeTypeType d@@34 Tclass.AST.Expr__Raw)) ($IsAlloc DatatypeTypeType d@@34 Tclass.AST.Expr__Raw $h@@10))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( ($IsAlloc DatatypeTypeType d@@34 Tclass.AST.Expr__Raw $h@@10))
)))
(assert (= (Tag Tclass.AST.Expr) Tagclass.AST.Expr))
(assert (= (TagFamily Tclass.AST.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.AST.Expr__Raw) Tagclass.AST.Expr__Raw))
(assert (= (TagFamily Tclass.AST.Expr__Raw) tytagFamily$Expr_Raw))
(assert (= (Tag Tclass.AST.BinOp) Tagclass.AST.BinOp))
(assert (= (TagFamily Tclass.AST.BinOp) tytagFamily$BinOp))
(assert (forall (($ly@@22 T@U) (|e#0@@13| T@U) (|locals#0@@6| T@U) ) (!  (=> (or (|Pure.__default.IsPure#canCall| (Lit DatatypeTypeType |e#0@@13|) (Lit SetType |locals#0@@6|)) (and ($Is DatatypeTypeType |e#0@@13| Tclass.AST.Expr) ($Is SetType |locals#0@@6| (TSet (TSeq TChar))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@13|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@13|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@13|))))) (let ((|body#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@13|)))))
(let ((|bvals#5@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@13|)))))
(let ((|bvars#5@@0| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@13|)))))
 (and (|Pure.__default.IsPure__Es#canCall| |bvals#5@@0| (Lit SetType |locals#0@@6|)) (=> (Pure.__default.IsPure__Es ($LS $ly@@22) |bvals#5@@0| (Lit SetType |locals#0@@6|)) (|Pure.__default.IsPure#canCall| |body#5@@0| (|Set#Union| (|Set#FromBoogieMap| (|lambda#6| (TSeq TChar) |bvars#5@@0|)) |locals#0@@6|)))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@13|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@13|))))) (let ((|avals#5@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@13|)))))
(let ((|avars#5@@0| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@13|)))))
 (=> (forall ((|x#8| T@U) ) (!  (=> (and ($Is SeqType |x#8| (TSeq TChar)) (|Seq#Contains| |avars#5@@0| ($Box SeqType |x#8|))) (|Set#IsMember| (Lit SetType |locals#0@@6|) ($Box SeqType |x#8|)))
 :qid |Puredfy.28:17|
 :skolemid |1150|
 :pattern ( (|Set#IsMember| |locals#0@@6| ($Box SeqType |x#8|)))
 :pattern ( (|Seq#Contains| |avars#5@@0| ($Box SeqType |x#8|)))
)) (|Pure.__default.IsPure__Es#canCall| |avals#5@@0| (Lit SetType |locals#0@@6|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@13|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@13|))))) (let ((|els#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@13|)))))
(let ((|thn#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@13|)))))
(let ((|cond#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@13|)))))
 (and (|Pure.__default.IsPure#canCall| |cond#5@@0| (Lit SetType |locals#0@@6|)) (=> (Pure.__default.IsPure ($LS $ly@@22) |cond#5@@0| (Lit SetType |locals#0@@6|)) (and (|Pure.__default.IsPure#canCall| |thn#5@@0| (Lit SetType |locals#0@@6|)) (=> (Pure.__default.IsPure ($LS $ly@@22) |thn#5@@0| (Lit SetType |locals#0@@6|)) (|Pure.__default.IsPure#canCall| |els#5@@0| (Lit SetType |locals#0@@6|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@13|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@13|))))) (let ((|oe2#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@13|)))))
(let ((|oe1#5| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@13|)))))
 (and (|Pure.__default.IsPure#canCall| |oe1#5| (Lit SetType |locals#0@@6|)) (=> (Pure.__default.IsPure ($LS $ly@@22) |oe1#5| (Lit SetType |locals#0@@6|)) (|Pure.__default.IsPure#canCall| |oe2#5| (Lit SetType |locals#0@@6|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@13|)))))) (let ((|es#5@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@13|)))))
(|Pure.__default.IsPure__Es#canCall| |es#5@@0| (Lit SetType |locals#0@@6|))))))))))))) (= (Pure.__default.IsPure ($LS $ly@@22) (Lit DatatypeTypeType |e#0@@13|) (Lit SetType |locals#0@@6|)) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@13|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@13|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@13|)) (let ((|body#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@13|)))))
(let ((|bvals#4@@0| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@13|)))))
(let ((|bvars#4@@0| (Lit SeqType (AST.Expr__Raw.bvars (Lit DatatypeTypeType |e#0@@13|)))))
 (and (Pure.__default.IsPure__Es ($LS $ly@@22) |bvals#4@@0| (Lit SetType |locals#0@@6|)) (Pure.__default.IsPure ($LS $ly@@22) |body#4@@0| (|Set#Union| (|Set#FromBoogieMap| (|lambda#6| (TSeq TChar) |bvars#4@@0|)) |locals#0@@6|)))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@13|)) (let ((|avals#4@@0| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@13|)))))
(let ((|avars#4@@0| (Lit SeqType (AST.Expr__Raw.avars (Lit DatatypeTypeType |e#0@@13|)))))
 (and (forall ((|x#6| T@U) ) (!  (=> (and ($Is SeqType |x#6| (TSeq TChar)) (|Seq#Contains| |avars#4@@0| ($Box SeqType |x#6|))) (|Set#IsMember| (Lit SetType |locals#0@@6|) ($Box SeqType |x#6|)))
 :qid |Puredfy.28:17|
 :skolemid |1149|
 :pattern ( (|Set#IsMember| |locals#0@@6| ($Box SeqType |x#6|)))
 :pattern ( (|Seq#Contains| |avars#4@@0| ($Box SeqType |x#6|)))
)) (Pure.__default.IsPure__Es ($LS $ly@@22) |avals#4@@0| (Lit SetType |locals#0@@6|))))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@13|)) (U_2_bool (let ((|els#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@13|)))))
(let ((|thn#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@13|)))))
(let ((|cond#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@13|)))))
(Lit boolType (bool_2_U  (and (and (Pure.__default.IsPure ($LS $ly@@22) |cond#4@@0| (Lit SetType |locals#0@@6|)) (Pure.__default.IsPure ($LS $ly@@22) |thn#4@@0| (Lit SetType |locals#0@@6|))) (Pure.__default.IsPure ($LS $ly@@22) |els#4@@0| (Lit SetType |locals#0@@6|))))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@13|)) (U_2_bool (let ((|oe2#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@13|)))))
(let ((|oe1#4| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@13|)))))
(Lit boolType (bool_2_U  (and (Pure.__default.IsPure ($LS $ly@@22) |oe1#4| (Lit SetType |locals#0@@6|)) (Pure.__default.IsPure ($LS $ly@@22) |oe2#4| (Lit SetType |locals#0@@6|)))))))) (U_2_bool (let ((|es#4@@0| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@13|)))))
(Lit boolType (bool_2_U (Pure.__default.IsPure__Es ($LS $ly@@22) |es#4@@0| (Lit SetType |locals#0@@6|)))))))))))))))
 :qid |Puredfy.15:13|
 :weight 3
 :skolemid |1151|
 :pattern ( (Pure.__default.IsPure ($LS $ly@@22) (Lit DatatypeTypeType |e#0@@13|) (Lit SetType |locals#0@@6|)))
)))
(assert (forall ((s@@21 T@U) (n@@9 Int) (k@@0 Int) ) (!  (=> (and (and (<= 0 n@@9) (<= n@@9 k@@0)) (< k@@0 (|Seq#Length| s@@21))) (= (|Seq#Index| (|Seq#Drop| s@@21 n@@9) (- k@@0 n@@9)) (|Seq#Index| s@@21 k@@0)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@21 k@@0) (|Seq#Drop| s@@21 n@@9))
)))
(assert (forall ((Utils.Result$T@@16 T@U) (this@@8 T@U) ) (!  (=> (or (|Utils.Result.Extract#canCall| Utils.Result$T@@16 (Lit DatatypeTypeType this@@8)) (and ($Is DatatypeTypeType this@@8 (Tclass.Utils.Result Utils.Result$T@@16)) (U_2_bool (Lit boolType (bool_2_U (Utils.Result.Success_q (Lit DatatypeTypeType this@@8))))))) (= (Utils.Result.Extract Utils.Result$T@@16 (Lit DatatypeTypeType this@@8)) (Lit BoxType (Utils.Result.value (Lit DatatypeTypeType this@@8)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |914|
 :pattern ( (Utils.Result.Extract Utils.Result$T@@16 (Lit DatatypeTypeType this@@8)))
)))
(assert (= |#Utils.Result.Failure| (Lit DatatypeTypeType |#Utils.Result.Failure|)))
(assert (= |#AST.BinOp.Add| (Lit DatatypeTypeType |#AST.BinOp.Add|)))
(assert (= |#AST.BinOp.Sub| (Lit DatatypeTypeType |#AST.BinOp.Sub|)))
(assert (= |#AST.BinOp.Mul| (Lit DatatypeTypeType |#AST.BinOp.Mul|)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#AST.Expr_Raw.Var| |a#24#0#0|) Tclass.AST.Expr__Raw) ($Is SeqType |a#24#0#0| (TSeq TChar)))
 :qid |ASTdfy.15:11|
 :skolemid |954|
 :pattern ( ($Is DatatypeTypeType (|#AST.Expr_Raw.Var| |a#24#0#0|) Tclass.AST.Expr__Raw))
)))
(assert (forall ((d@@35 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (AST.Expr__Raw.Var_q d@@35) ($IsAlloc DatatypeTypeType d@@35 Tclass.AST.Expr__Raw $h@@11))) ($IsAlloc SeqType (AST.Expr__Raw.name d@@35) (TSeq TChar) $h@@11))
 :qid |unknown.0:0|
 :skolemid |955|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.name d@@35) (TSeq TChar) $h@@11))
)))
(assert (forall (($ly@@23 T@U) ($Heap@@2 T@U) (|e#0@@14| T@U) (|p#0@@1| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType |e#0@@14|) |p#0@@1|) (and (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |e#0@@14| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0@@1| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@2 |p#0@@1| ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@14|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@14|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@14|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@14|))))) (let ((|body#3@@1| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@14|)))))
(let ((|bvals#3@@1| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@14|)))))
 (and (forall ((|e#10| T@U) ) (!  (=> ($Is DatatypeTypeType |e#10| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#3@@1| ($Box DatatypeTypeType |e#10|)) (|AST.Expr__Raw.All#canCall| |e#10| |p#0@@1|)))
 :qid |ASTdfy.51:22|
 :skolemid |1077|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@23) |e#10| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#3@@1| ($Box DatatypeTypeType |e#10|)))
)) (=> (forall ((|e#10@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#10@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#3@@1| ($Box DatatypeTypeType |e#10@@0|))) (AST.Expr__Raw.All ($LS $ly@@23) |e#10@@0| |p#0@@1|))
 :qid |ASTdfy.51:22|
 :skolemid |1078|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@23) |e#10@@0| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#3@@1| ($Box DatatypeTypeType |e#10@@0|)))
)) (|AST.Expr__Raw.All#canCall| |body#3@@1| |p#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@14|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@14|))))) (let ((|avals#3@@1| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@14|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#11| T@U) ) (!  (=> ($Is DatatypeTypeType |e#11| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#3@@1| ($Box DatatypeTypeType |e#11|)) (|AST.Expr__Raw.All#canCall| |e#11| |p#0@@1|)))
 :qid |ASTdfy.54:21|
 :skolemid |1079|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@23) |e#11| |p#0@@1|))
 :pattern ( (|Seq#Contains| |avals#3@@1| ($Box DatatypeTypeType |e#11|)))
))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@14|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@14|))))) (let ((|els#3@@1| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@14|)))))
(let ((|thn#3@@1| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@14|)))))
(let ((|cond#3@@1| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@14|)))))
 (and (|AST.Expr__Raw.All#canCall| |cond#3@@1| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@23) |cond#3@@1| |p#0@@1|) (and (|AST.Expr__Raw.All#canCall| |thn#3@@1| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@23) |thn#3@@1| |p#0@@1|) (|AST.Expr__Raw.All#canCall| |els#3@@1| |p#0@@1|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@14|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@14|))))) (let ((|oe2#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@14|)))))
(let ((|oe1#3@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@14|)))))
 (and (|AST.Expr__Raw.All#canCall| |oe1#3@@0| |p#0@@1|) (=> (AST.Expr__Raw.All ($LS $ly@@23) |oe1#3@@0| |p#0@@1|) (|AST.Expr__Raw.All#canCall| |oe2#3@@0| |p#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@14|)))))) (let ((|es#3@@1| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@14|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#12| T@U) ) (!  (=> ($Is DatatypeTypeType |e#12| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#3@@1| ($Box DatatypeTypeType |e#12|)) (|AST.Expr__Raw.All#canCall| |e#12| |p#0@@1|)))
 :qid |ASTdfy.60:21|
 :skolemid |1080|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@23) |e#12| |p#0@@1|))
 :pattern ( (|Seq#Contains| |es#3@@1| ($Box DatatypeTypeType |e#12|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@23) (Lit DatatypeTypeType |e#0@@14|) |p#0@@1|)  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@2 |p#0@@1| ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@14|))))) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@14|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@14|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@14|)) (let ((|body#2@@1| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@14|)))))
(let ((|bvals#2@@2| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@14|)))))
 (and (forall ((|e#7| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#7| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#2@@2| ($Box DatatypeTypeType |e#7|))) (AST.Expr__Raw.All ($LS $ly@@23) |e#7| |p#0@@1|))
 :qid |ASTdfy.51:22|
 :skolemid |1074|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@23) |e#7| |p#0@@1|))
 :pattern ( (|Seq#Contains| |bvals#2@@2| ($Box DatatypeTypeType |e#7|)))
)) (AST.Expr__Raw.All ($LS $ly@@23) |body#2@@1| |p#0@@1|)))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@14|)) (let ((|avals#2@@2| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@14|)))))
 (and true (forall ((|e#8| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#8| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#2@@2| ($Box DatatypeTypeType |e#8|))) (AST.Expr__Raw.All ($LS $ly@@23) |e#8| |p#0@@1|))
 :qid |ASTdfy.54:21|
 :skolemid |1075|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@23) |e#8| |p#0@@1|))
 :pattern ( (|Seq#Contains| |avals#2@@2| ($Box DatatypeTypeType |e#8|)))
)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@14|)) (let ((|els#2@@1| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@14|)))))
(let ((|thn#2@@1| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@14|)))))
(let ((|cond#2@@1| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@14|)))))
 (and (and (AST.Expr__Raw.All ($LS $ly@@23) |cond#2@@1| |p#0@@1|) (AST.Expr__Raw.All ($LS $ly@@23) |thn#2@@1| |p#0@@1|)) (AST.Expr__Raw.All ($LS $ly@@23) |els#2@@1| |p#0@@1|))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@14|)) (let ((|oe2#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@14|)))))
(let ((|oe1#2@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@14|)))))
 (and (AST.Expr__Raw.All ($LS $ly@@23) |oe1#2@@0| |p#0@@1|) (AST.Expr__Raw.All ($LS $ly@@23) |oe2#2@@0| |p#0@@1|)))) (let ((|es#2@@1| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@14|)))))
 (and true (forall ((|e#9| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#9| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#2@@1| ($Box DatatypeTypeType |e#9|))) (AST.Expr__Raw.All ($LS $ly@@23) |e#9| |p#0@@1|))
 :qid |ASTdfy.60:21|
 :skolemid |1076|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@23) |e#9| |p#0@@1|))
 :pattern ( (|Seq#Contains| |es#2@@1| ($Box DatatypeTypeType |e#9|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :weight 3
 :skolemid |1081|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@23) (Lit DatatypeTypeType |e#0@@14|) |p#0@@1|) ($IsGoodHeap $Heap@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|e1#0@@1| T@U) (|e2#0@@1| T@U) ) (!  (=> (or (|EliminateMulZero.__default.IsZeroMulPure#canCall| (Lit DatatypeTypeType |e1#0@@1|) (Lit DatatypeTypeType |e2#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($Is DatatypeTypeType |e1#0@@1| Tclass.AST.Expr) ($Is DatatypeTypeType |e2#0@@1| Tclass.AST.Expr)))) (and (and (and (|$IsA#AST.Expr__Raw| (Lit DatatypeTypeType |e1#0@@1|)) (|$IsA#AST.Expr__Raw| EliminateMulZero.__default.ZeroExpr)) (=> (|AST.Expr__Raw#Equal| |e1#0@@1| EliminateMulZero.__default.ZeroExpr) (|Pure.__default.IsPure#canCall| (Lit DatatypeTypeType |e2#0@@1|) (Lit SetType |Set#Empty|)))) (= (EliminateMulZero.__default.IsZeroMulPure (Lit DatatypeTypeType |e1#0@@1|) (Lit DatatypeTypeType |e2#0@@1|))  (and (|AST.Expr__Raw#Equal| |e1#0@@1| EliminateMulZero.__default.ZeroExpr) (Pure.__default.IsPure ($LS $LZ) (Lit DatatypeTypeType |e2#0@@1|) (Lit SetType |Set#Empty|))))))
 :qid |EliminateMulZerodfy.26:27|
 :weight 3
 :skolemid |643|
 :pattern ( (EliminateMulZero.__default.IsZeroMulPure (Lit DatatypeTypeType |e1#0@@1|) (Lit DatatypeTypeType |e2#0@@1|)))
))))
(assert (forall ((a@@24 T@U) (b@@24 T@U) ) (! (= (|Set#Equal| a@@24 b@@24) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@24 o@@3) (|Set#IsMember| b@@24 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@24 o@@3))
 :pattern ( (|Set#IsMember| b@@24 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@24 b@@24))
)))
(assert (forall ((s@@22 T@U) (m@@13 Int) (n@@10 Int) ) (!  (=> (and (and (<= 0 m@@13) (<= 0 n@@10)) (<= (+ m@@13 n@@10) (|Seq#Length| s@@22))) (= (|Seq#Drop| (|Seq#Drop| s@@22 m@@13) n@@10) (|Seq#Drop| s@@22 (+ m@@13 n@@10))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@22 m@@13) n@@10))
)))
(assert (forall ((|op#0@@1| T@U) (|x#0@@1| Int) (|y#0@@0| Int) ) (!  (=> (or (|Interp.__default.InterpBinOp#canCall| (Lit DatatypeTypeType |op#0@@1|) (LitInt |x#0@@1|) (LitInt |y#0@@0|)) ($Is DatatypeTypeType |op#0@@1| Tclass.AST.BinOp)) (= (Interp.__default.InterpBinOp (Lit DatatypeTypeType |op#0@@1|) (LitInt |x#0@@1|) (LitInt |y#0@@0|)) (ite (AST.BinOp.Add_q (Lit DatatypeTypeType |op#0@@1|)) (+ |x#0@@1| |y#0@@0|) (ite (AST.BinOp.Sub_q (Lit DatatypeTypeType |op#0@@1|)) (- |x#0@@1| |y#0@@0|) (Mul (LitInt |x#0@@1|) (LitInt |y#0@@0|))))))
 :qid |Interpdfy.16:24|
 :weight 3
 :skolemid |1118|
 :pattern ( (Interp.__default.InterpBinOp (Lit DatatypeTypeType |op#0@@1|) (LitInt |x#0@@1|) (LitInt |y#0@@0|)))
)))
(assert (forall ((d@@36 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple2.___hMake2_q d@@36) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@36 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@36 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@12))
)))) ($IsAllocBox (_System.Tuple2._0 d@@36) |_System._tuple#2$T0@@6| $h@@12))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@36) |_System._tuple#2$T0@@6| $h@@12))
)))
(assert (forall ((d@@37 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_System.Tuple2.___hMake2_q d@@37) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@37 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@13)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@37 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@13))
)))) ($IsAllocBox (_System.Tuple2._1 d@@37) |_System._tuple#2$T1@@7| $h@@13))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@37) |_System._tuple#2$T1@@7| $h@@13))
)))
(assert (forall (($Heap@@3 T@U) (Utils.Result$T@@17 T@U) (this@@9 T@U) ) (!  (=> (and (or (|Utils.Result.Extract#canCall| Utils.Result$T@@17 this@@9) (and ($IsAlloc DatatypeTypeType this@@9 (Tclass.Utils.Result Utils.Result$T@@17) $Heap@@3) (Utils.Result.Success_q this@@9))) ($IsGoodHeap $Heap@@3)) ($IsAllocBox (Utils.Result.Extract Utils.Result$T@@17 this@@9) Utils.Result$T@@17 $Heap@@3))
 :qid |Utilsdfy.35:14|
 :skolemid |911|
 :pattern ( ($IsAllocBox (Utils.Result.Extract Utils.Result$T@@17 this@@9) Utils.Result$T@@17 $Heap@@3))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@11 Int) ) (!  (and (=> (< n@@11 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@11) (|Seq#Index| s0@@2 n@@11))) (=> (<= (|Seq#Length| s0@@2) n@@11) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@11) (|Seq#Index| s1@@2 (- n@@11 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@11))
)))
(assert (forall ((d@@38 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (AST.Expr__Raw.Bind_q d@@38) ($IsAlloc DatatypeTypeType d@@38 Tclass.AST.Expr__Raw $h@@14))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.body d@@38) Tclass.AST.Expr__Raw $h@@14))
 :qid |unknown.0:0|
 :skolemid |975|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.body d@@38) Tclass.AST.Expr__Raw $h@@14))
)))
(assert (forall ((d@@39 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (AST.Expr__Raw.If_q d@@39) ($IsAlloc DatatypeTypeType d@@39 Tclass.AST.Expr__Raw $h@@15))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.cond d@@39) Tclass.AST.Expr__Raw $h@@15))
 :qid |unknown.0:0|
 :skolemid |1004|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.cond d@@39) Tclass.AST.Expr__Raw $h@@15))
)))
(assert (forall ((d@@40 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (AST.Expr__Raw.If_q d@@40) ($IsAlloc DatatypeTypeType d@@40 Tclass.AST.Expr__Raw $h@@16))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.thn d@@40) Tclass.AST.Expr__Raw $h@@16))
 :qid |unknown.0:0|
 :skolemid |1005|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.thn d@@40) Tclass.AST.Expr__Raw $h@@16))
)))
(assert (forall ((d@@41 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (AST.Expr__Raw.If_q d@@41) ($IsAlloc DatatypeTypeType d@@41 Tclass.AST.Expr__Raw $h@@17))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.els d@@41) Tclass.AST.Expr__Raw $h@@17))
 :qid |unknown.0:0|
 :skolemid |1006|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.els d@@41) Tclass.AST.Expr__Raw $h@@17))
)))
(assert (forall ((d@@42 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (AST.Expr__Raw.Op_q d@@42) ($IsAlloc DatatypeTypeType d@@42 Tclass.AST.Expr__Raw $h@@18))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.op d@@42) Tclass.AST.BinOp $h@@18))
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.op d@@42) Tclass.AST.BinOp $h@@18))
)))
(assert (forall ((d@@43 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (AST.Expr__Raw.Op_q d@@43) ($IsAlloc DatatypeTypeType d@@43 Tclass.AST.Expr__Raw $h@@19))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe1 d@@43) Tclass.AST.Expr__Raw $h@@19))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe1 d@@43) Tclass.AST.Expr__Raw $h@@19))
)))
(assert (forall ((d@@44 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (AST.Expr__Raw.Op_q d@@44) ($IsAlloc DatatypeTypeType d@@44 Tclass.AST.Expr__Raw $h@@20))) ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe2 d@@44) Tclass.AST.Expr__Raw $h@@20))
 :qid |unknown.0:0|
 :skolemid |1021|
 :pattern ( ($IsAlloc DatatypeTypeType (AST.Expr__Raw.oe2 d@@44) Tclass.AST.Expr__Raw $h@@20))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= (|#AST.Expr_Raw.Assign| (Lit SeqType |a#49#0#0|) (Lit SeqType |a#49#1#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Assign| |a#49#0#0| |a#49#1#0|)))
 :qid |ASTdfy.18:14|
 :skolemid |992|
 :pattern ( (|#AST.Expr_Raw.Assign| (Lit SeqType |a#49#0#0|) (Lit SeqType |a#49#1#0|)))
)))
(assert (forall (($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (Apply1 Tclass.AST.Expr__Raw TBool $heap@@2 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@2|) ($Box boolType (bool_2_U (AST.Expr__Raw.WellFormed__Single ($Unbox DatatypeTypeType |$fh$0x#0@@2|)))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1107|
 :pattern ( (Apply1 Tclass.AST.Expr__Raw TBool $heap@@2 |AST.Expr__Raw.WellFormed__Single#Handle| |$fh$0x#0@@2|))
)))
(assert (forall ((|e#0@@15| T@U) ) (! (= ($Is DatatypeTypeType |e#0@@15| Tclass.AST.Expr)  (and ($Is DatatypeTypeType |e#0@@15| Tclass.AST.Expr__Raw) (AST.Expr__Raw.WellFormed |e#0@@15|)))
 :qid |unknown.0:0|
 :skolemid |1113|
 :pattern ( ($Is DatatypeTypeType |e#0@@15| Tclass.AST.Expr))
)))
(assert (forall ((x@@13 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@13))) (Lit BoxType ($Box intType (int_2_U x@@13))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@13))))
)))
(assert (forall ((|a#3#0#0@@0| T@U) ) (! (= (|#Utils.Result.Success| (Lit BoxType |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#Utils.Result.Success| |a#3#0#0@@0|)))
 :qid |Utilsdfy.23:34|
 :skolemid |889|
 :pattern ( (|#Utils.Result.Success| (Lit BoxType |a#3#0#0@@0|)))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (|#AST.Expr_Raw.Var| (Lit SeqType |a#25#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Var| |a#25#0#0|)))
 :qid |ASTdfy.15:11|
 :skolemid |956|
 :pattern ( (|#AST.Expr_Raw.Var| (Lit SeqType |a#25#0#0|)))
)))
(assert (forall ((|a#32#0#0| Int) ) (! (= (|#AST.Expr_Raw.Literal| (LitInt |a#32#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Literal| |a#32#0#0|)))
 :qid |ASTdfy.16:15|
 :skolemid |966|
 :pattern ( (|#AST.Expr_Raw.Literal| (LitInt |a#32#0#0|)))
)))
(assert (forall ((|a#79#0#0| T@U) ) (! (= (|#AST.Expr_Raw.Seq| (Lit SeqType |a#79#0#0|)) (Lit DatatypeTypeType (|#AST.Expr_Raw.Seq| |a#79#0#0|)))
 :qid |ASTdfy.21:11|
 :skolemid |1035|
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
(assert (forall ((d@@45 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (AST.Expr__Raw.Bind_q d@@45) ($IsAlloc DatatypeTypeType d@@45 Tclass.AST.Expr__Raw $h@@21))) ($IsAlloc SeqType (AST.Expr__Raw.bvars d@@45) (TSeq (TSeq TChar)) $h@@21))
 :qid |unknown.0:0|
 :skolemid |973|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.bvars d@@45) (TSeq (TSeq TChar)) $h@@21))
)))
(assert (forall ((d@@46 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (AST.Expr__Raw.Assign_q d@@46) ($IsAlloc DatatypeTypeType d@@46 Tclass.AST.Expr__Raw $h@@22))) ($IsAlloc SeqType (AST.Expr__Raw.avars d@@46) (TSeq (TSeq TChar)) $h@@22))
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.avars d@@46) (TSeq (TSeq TChar)) $h@@22))
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
(assert (= EliminateMulZero.__default.ZeroExpr (Lit DatatypeTypeType (|#AST.Expr_Raw.Literal| (LitInt 0)))))
(assert (forall (($ly@@24 T@U) ($Heap@@4 T@U) (|e#0@@16| T@U) (|p#0@@2| T@U) ) (!  (=> (or (|AST.Expr__Raw.All#canCall| (Lit DatatypeTypeType |e#0@@16|) (Lit HandleTypeType |p#0@@2|)) (and (and ($IsGoodHeap $Heap@@4) ($Is DatatypeTypeType |e#0@@16| Tclass.AST.Expr__Raw)) ($Is HandleTypeType |p#0@@2| (Tclass._System.___hTotalFunc1 Tclass.AST.Expr__Raw TBool)))) (and (=> (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@4 (Lit HandleTypeType |p#0@@2|) ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@16|))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@16|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@16|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@16|))))) (let ((|body#5@@1| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|bvals#5@@1| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@16|)))))
 (and (forall ((|e#16| T@U) ) (!  (=> ($Is DatatypeTypeType |e#16| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |bvals#5@@1| ($Box DatatypeTypeType |e#16|)) (|AST.Expr__Raw.All#canCall| |e#16| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.51:22|
 :skolemid |1085|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@24) |e#16| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#5@@1| ($Box DatatypeTypeType |e#16|)))
)) (=> (forall ((|e#16@@0| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#16@@0| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#5@@1| ($Box DatatypeTypeType |e#16@@0|))) (AST.Expr__Raw.All ($LS $ly@@24) |e#16@@0| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.51:22|
 :skolemid |1086|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@24) |e#16@@0| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#5@@1| ($Box DatatypeTypeType |e#16@@0|)))
)) (|AST.Expr__Raw.All#canCall| |body#5@@1| (Lit HandleTypeType |p#0@@2|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@16|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@16|))))) (let ((|avals#5@@1| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@16|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#17| T@U) ) (!  (=> ($Is DatatypeTypeType |e#17| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |avals#5@@1| ($Box DatatypeTypeType |e#17|)) (|AST.Expr__Raw.All#canCall| |e#17| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.54:21|
 :skolemid |1087|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@24) |e#17| |p#0@@2|))
 :pattern ( (|Seq#Contains| |avals#5@@1| ($Box DatatypeTypeType |e#17|)))
))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@16|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@16|))))) (let ((|els#5@@1| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|thn#5@@1| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|cond#5@@1| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@16|)))))
 (and (|AST.Expr__Raw.All#canCall| |cond#5@@1| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@24) |cond#5@@1| (Lit HandleTypeType |p#0@@2|)) (and (|AST.Expr__Raw.All#canCall| |thn#5@@1| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@24) |thn#5@@1| (Lit HandleTypeType |p#0@@2|)) (|AST.Expr__Raw.All#canCall| |els#5@@1| (Lit HandleTypeType |p#0@@2|)))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@16|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@16|))))) (let ((|oe2#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|oe1#5@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@16|)))))
 (and (|AST.Expr__Raw.All#canCall| |oe1#5@@0| (Lit HandleTypeType |p#0@@2|)) (=> (AST.Expr__Raw.All ($LS $ly@@24) |oe1#5@@0| (Lit HandleTypeType |p#0@@2|)) (|AST.Expr__Raw.All#canCall| |oe2#5@@0| (Lit HandleTypeType |p#0@@2|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@16|)))))) (let ((|es#5@@1| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@16|)))))
 (=> (U_2_bool (Lit boolType (bool_2_U true))) (forall ((|e#18| T@U) ) (!  (=> ($Is DatatypeTypeType |e#18| Tclass.AST.Expr__Raw) (=> (|Seq#Contains| |es#5@@1| ($Box DatatypeTypeType |e#18|)) (|AST.Expr__Raw.All#canCall| |e#18| (Lit HandleTypeType |p#0@@2|))))
 :qid |ASTdfy.60:21|
 :skolemid |1088|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@24) |e#18| |p#0@@2|))
 :pattern ( (|Seq#Contains| |es#5@@1| ($Box DatatypeTypeType |e#18|)))
))))))))))))))) (= (AST.Expr__Raw.All ($LS $ly@@24) (Lit DatatypeTypeType |e#0@@16|) (Lit HandleTypeType |p#0@@2|))  (and (U_2_bool ($Unbox boolType (Apply1 Tclass.AST.Expr__Raw TBool $Heap@@4 (Lit HandleTypeType |p#0@@2|) ($Box DatatypeTypeType (Lit DatatypeTypeType |e#0@@16|))))) (ite (AST.Expr__Raw.Var_q (Lit DatatypeTypeType |e#0@@16|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Literal_q (Lit DatatypeTypeType |e#0@@16|)) (U_2_bool (Lit boolType (bool_2_U true))) (ite (AST.Expr__Raw.Bind_q (Lit DatatypeTypeType |e#0@@16|)) (let ((|body#4@@1| (Lit DatatypeTypeType (AST.Expr__Raw.body (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|bvals#4@@1| (Lit SeqType (AST.Expr__Raw.bvals (Lit DatatypeTypeType |e#0@@16|)))))
 (and (forall ((|e#13| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#13| Tclass.AST.Expr__Raw) (|Seq#Contains| |bvals#4@@1| ($Box DatatypeTypeType |e#13|))) (AST.Expr__Raw.All ($LS $ly@@24) |e#13| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.51:22|
 :skolemid |1082|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@24) |e#13| |p#0@@2|))
 :pattern ( (|Seq#Contains| |bvals#4@@1| ($Box DatatypeTypeType |e#13|)))
)) (AST.Expr__Raw.All ($LS $ly@@24) |body#4@@1| (Lit HandleTypeType |p#0@@2|))))) (ite (AST.Expr__Raw.Assign_q (Lit DatatypeTypeType |e#0@@16|)) (let ((|avals#4@@1| (Lit SeqType (AST.Expr__Raw.avals (Lit DatatypeTypeType |e#0@@16|)))))
 (and true (forall ((|e#14| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#14| Tclass.AST.Expr__Raw) (|Seq#Contains| |avals#4@@1| ($Box DatatypeTypeType |e#14|))) (AST.Expr__Raw.All ($LS $ly@@24) |e#14| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.54:21|
 :skolemid |1083|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@24) |e#14| |p#0@@2|))
 :pattern ( (|Seq#Contains| |avals#4@@1| ($Box DatatypeTypeType |e#14|)))
)))) (ite (AST.Expr__Raw.If_q (Lit DatatypeTypeType |e#0@@16|)) (U_2_bool (let ((|els#4@@1| (Lit DatatypeTypeType (AST.Expr__Raw.els (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|thn#4@@1| (Lit DatatypeTypeType (AST.Expr__Raw.thn (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|cond#4@@1| (Lit DatatypeTypeType (AST.Expr__Raw.cond (Lit DatatypeTypeType |e#0@@16|)))))
(Lit boolType (bool_2_U  (and (and (AST.Expr__Raw.All ($LS $ly@@24) |cond#4@@1| (Lit HandleTypeType |p#0@@2|)) (AST.Expr__Raw.All ($LS $ly@@24) |thn#4@@1| (Lit HandleTypeType |p#0@@2|))) (AST.Expr__Raw.All ($LS $ly@@24) |els#4@@1| (Lit HandleTypeType |p#0@@2|))))))))) (ite (AST.Expr__Raw.Op_q (Lit DatatypeTypeType |e#0@@16|)) (U_2_bool (let ((|oe2#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe2 (Lit DatatypeTypeType |e#0@@16|)))))
(let ((|oe1#4@@0| (Lit DatatypeTypeType (AST.Expr__Raw.oe1 (Lit DatatypeTypeType |e#0@@16|)))))
(Lit boolType (bool_2_U  (and (AST.Expr__Raw.All ($LS $ly@@24) |oe1#4@@0| (Lit HandleTypeType |p#0@@2|)) (AST.Expr__Raw.All ($LS $ly@@24) |oe2#4@@0| (Lit HandleTypeType |p#0@@2|)))))))) (let ((|es#4@@1| (Lit SeqType (AST.Expr__Raw.es (Lit DatatypeTypeType |e#0@@16|)))))
 (and true (forall ((|e#15| T@U) ) (!  (=> (and ($Is DatatypeTypeType |e#15| Tclass.AST.Expr__Raw) (|Seq#Contains| |es#4@@1| ($Box DatatypeTypeType |e#15|))) (AST.Expr__Raw.All ($LS $ly@@24) |e#15| (Lit HandleTypeType |p#0@@2|)))
 :qid |ASTdfy.60:21|
 :skolemid |1084|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@24) |e#15| |p#0@@2|))
 :pattern ( (|Seq#Contains| |es#4@@1| ($Box DatatypeTypeType |e#15|)))
))))))))))))))
 :qid |ASTdfy.44:22|
 :weight 3
 :skolemid |1089|
 :pattern ( (AST.Expr__Raw.All ($LS $ly@@24) (Lit DatatypeTypeType |e#0@@16|) (Lit HandleTypeType |p#0@@2|)) ($IsGoodHeap $Heap@@4))
)))
(assert (forall (($Heap@@5 T@U) (this@@10 T@U) ) (!  (=> (or (|AST.Expr__Raw.WellFormed#canCall| this@@10) (and ($IsGoodHeap $Heap@@5) (and ($Is DatatypeTypeType this@@10 Tclass.AST.Expr__Raw) ($IsAlloc DatatypeTypeType this@@10 Tclass.AST.Expr__Raw $Heap@@5)))) (and (|AST.Expr__Raw.All#canCall| this@@10 |AST.Expr__Raw.WellFormed__Single#Handle|) (= (AST.Expr__Raw.WellFormed this@@10) (AST.Expr__Raw.All ($LS $LZ) this@@10 |AST.Expr__Raw.WellFormed__Single#Handle|))))
 :qid |ASTdfy.83:21|
 :skolemid |1111|
 :pattern ( (AST.Expr__Raw.WellFormed this@@10) ($IsGoodHeap $Heap@@5))
)))
(assert (forall ((d@@47 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (AST.Expr__Raw.Bind_q d@@47) ($IsAlloc DatatypeTypeType d@@47 Tclass.AST.Expr__Raw $h@@23))) ($IsAlloc SeqType (AST.Expr__Raw.bvals d@@47) (TSeq Tclass.AST.Expr__Raw) $h@@23))
 :qid |unknown.0:0|
 :skolemid |974|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.bvals d@@47) (TSeq Tclass.AST.Expr__Raw) $h@@23))
)))
(assert (forall ((d@@48 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (AST.Expr__Raw.Assign_q d@@48) ($IsAlloc DatatypeTypeType d@@48 Tclass.AST.Expr__Raw $h@@24))) ($IsAlloc SeqType (AST.Expr__Raw.avals d@@48) (TSeq Tclass.AST.Expr__Raw) $h@@24))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.avals d@@48) (TSeq Tclass.AST.Expr__Raw) $h@@24))
)))
(assert (forall ((d@@49 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (AST.Expr__Raw.Seq_q d@@49) ($IsAlloc DatatypeTypeType d@@49 Tclass.AST.Expr__Raw $h@@25))) ($IsAlloc SeqType (AST.Expr__Raw.es d@@49) (TSeq Tclass.AST.Expr__Raw) $h@@25))
 :qid |unknown.0:0|
 :skolemid |1034|
 :pattern ( ($IsAlloc SeqType (AST.Expr__Raw.es d@@49) (TSeq Tclass.AST.Expr__Raw) $h@@25))
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
(declare-fun |res#Z#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@6 () T@U)
(declare-fun |e1#0@@2| () T@U)
(declare-fun |e2#0@@2| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |##e#0@0| () T@U)
(declare-fun |ctx#0@@9| () T@U)
(declare-fun |let#0#0#0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$EliminateMulZero.__default.IsZeroMulPure__Implies__EvalsToZero)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon3_correct true))
(let ((anon4_Else_correct  (=> (and (not (Utils.Result.Success_q |res#Z#0@0|)) (= (ControlFlow 0 4) 1)) anon3_correct)))
(let ((anon4_Then_correct  (=> (Utils.Result.Success_q |res#Z#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (Utils.Result.Success_q |res#Z#0@0|)) (=> (Utils.Result.Success_q |res#Z#0@0|) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@6 alloc false)) (=> (and (and (and ($IsAlloc DatatypeTypeType |e1#0@@2| Tclass.AST.Expr $Heap@@6) ($IsAlloc DatatypeTypeType |e2#0@@2| Tclass.AST.Expr $Heap@@6)) (and (|EliminateMulZero.__default.IsZeroMulPure#canCall| |e1#0@@2| |e2#0@@2|) (EliminateMulZero.__default.IsZeroMulPure |e1#0@@2| |e2#0@@2|))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@6 $Heap@0))) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($Is DatatypeTypeType (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |#AST.BinOp.Mul|) |e1#0@@2| |e2#0@@2|) Tclass.AST.Expr)) (=> ($Is DatatypeTypeType (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |#AST.BinOp.Mul|) |e1#0@@2| |e2#0@@2|) Tclass.AST.Expr) (=> (and (and (and (= |##e#0@0| (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |#AST.BinOp.Mul|) |e1#0@@2| |e2#0@@2|)) ($IsAlloc DatatypeTypeType |##e#0@0| Tclass.AST.Expr $Heap@0)) (and ($IsAlloc MapType |ctx#0@@9| (TMap (TSeq TChar) TInt) $Heap@0) (|Interp.__default.InterpExpr#canCall| (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |#AST.BinOp.Mul|) |e1#0@@2| |e2#0@@2|) |ctx#0@@9|))) (and (and (= |let#0#0#0| (Interp.__default.InterpExpr ($LS $LZ) (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |#AST.BinOp.Mul|) |e1#0@@2| |e2#0@@2|) |ctx#0@@9|)) (|Interp.__default.InterpExpr#canCall| (|#AST.Expr_Raw.Op| (Lit DatatypeTypeType |#AST.BinOp.Mul|) |e1#0@@2| |e2#0@@2|) |ctx#0@@9|)) (and ($Is DatatypeTypeType |let#0#0#0| (Tclass.Utils.Result (Tclass._System.Tuple2 TInt (TMap (TSeq TChar) TInt)))) (= |res#Z#0@0| |let#0#0#0|)))) (and (=> (= (ControlFlow 0 5) 2) anon4_Then_correct) (=> (= (ControlFlow 0 5) 4) anon4_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (=> (and (and ($Is DatatypeTypeType |e1#0@@2| Tclass.AST.Expr) ($IsAlloc DatatypeTypeType |e1#0@@2| Tclass.AST.Expr $Heap@@6)) (|$IsA#AST.Expr__Raw| |e1#0@@2|)) (=> (and (and (and ($Is DatatypeTypeType |e2#0@@2| Tclass.AST.Expr) ($IsAlloc DatatypeTypeType |e2#0@@2| Tclass.AST.Expr $Heap@@6)) (|$IsA#AST.Expr__Raw| |e2#0@@2|)) (and (and ($Is MapType |ctx#0@@9| (TMap (TSeq TChar) TInt)) ($IsAlloc MapType |ctx#0@@9| (TMap (TSeq TChar) TInt) $Heap@@6)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 7) 5)))) anon0_correct)))))
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
