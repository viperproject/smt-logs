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
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass._System.___hPartialFunc2 () T@U)
(declare-fun Tagclass._System.___hTotalFunc2 () T@U)
(declare-fun Tagclass.DafnyAST.Stmt () T@U)
(declare-fun Tagclass.StackMachine.Instr () T@U)
(declare-fun Tagclass.LinkedList.List () T@U)
(declare-fun Tagclass.CSharpAST.Prog () T@U)
(declare-fun Tagclass.System.String () T@U)
(declare-fun Tagclass.System_mCollections_mGeneric.List () T@U)
(declare-fun Tagclass.DafnyAST.Expr () T@U)
(declare-fun Tagclass.DafnyAST.InterpResult () T@U)
(declare-fun |##DafnyAST.BinOp.Add| () T@U)
(declare-fun Tagclass.DafnyAST.BinOp () T@U)
(declare-fun |##DafnyAST.BinOp.Sub| () T@U)
(declare-fun |##DafnyAST.Expr.Const| () T@U)
(declare-fun |##DafnyAST.Expr.Var| () T@U)
(declare-fun |##DafnyAST.Expr.Op| () T@U)
(declare-fun |##DafnyAST.Stmt.Skip| () T@U)
(declare-fun |##DafnyAST.Stmt.Print| () T@U)
(declare-fun |##DafnyAST.Stmt.Assign| () T@U)
(declare-fun |##DafnyAST.Stmt.Seq| () T@U)
(declare-fun |##DafnyAST.InterpResult.InterpResult| () T@U)
(declare-fun |##LinkedList.List.Cons| () T@U)
(declare-fun |##LinkedList.List.Nil| () T@U)
(declare-fun Tagclass.StackMachine.State () T@U)
(declare-fun |##StackMachine.Instr.PushConst| () T@U)
(declare-fun |##StackMachine.Instr.PushVar| () T@U)
(declare-fun |##StackMachine.Instr.PopAdd| () T@U)
(declare-fun |##StackMachine.Instr.PopSub| () T@U)
(declare-fun |##StackMachine.Instr.PopPrint| () T@U)
(declare-fun |##StackMachine.Instr.PopVar| () T@U)
(declare-fun |##StackMachine.State.State| () T@U)
(declare-fun Tagclass.NativeTypes.nativeint () T@U)
(declare-fun Tagclass.System_mCollections_mGeneric.List? () T@U)
(declare-fun Tagclass.System.String? () T@U)
(declare-fun Tagclass.CSharpAST.Op____BinOp? () T@U)
(declare-fun Tagclass.CSharpAST.Op____BinOp () T@U)
(declare-fun Tagclass.CSharpAST.Expr? () T@U)
(declare-fun Tagclass.CSharpAST.Expr () T@U)
(declare-fun class.CSharpAST.Const? () T@U)
(declare-fun Tagclass.CSharpAST.Const? () T@U)
(declare-fun Tagclass.CSharpAST.Const () T@U)
(declare-fun class.CSharpAST.Var? () T@U)
(declare-fun Tagclass.CSharpAST.Var? () T@U)
(declare-fun Tagclass.CSharpAST.Var () T@U)
(declare-fun class.CSharpAST.Op? () T@U)
(declare-fun Tagclass.CSharpAST.Op? () T@U)
(declare-fun Tagclass.CSharpAST.Op () T@U)
(declare-fun Tagclass.CSharpAST.Stmt? () T@U)
(declare-fun Tagclass.CSharpAST.Stmt () T@U)
(declare-fun class.CSharpAST.Print? () T@U)
(declare-fun Tagclass.CSharpAST.Print? () T@U)
(declare-fun Tagclass.CSharpAST.Print () T@U)
(declare-fun class.CSharpAST.Assign? () T@U)
(declare-fun Tagclass.CSharpAST.Assign? () T@U)
(declare-fun Tagclass.CSharpAST.Assign () T@U)
(declare-fun class.CSharpAST.Prog? () T@U)
(declare-fun Tagclass.CSharpAST.Prog? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun |tytagFamily$_#PartialFunc2| () T@U)
(declare-fun |tytagFamily$_#TotalFunc2| () T@U)
(declare-fun tytagFamily$Stmt () T@U)
(declare-fun tytagFamily$Instr () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Prog () T@U)
(declare-fun tytagFamily$String () T@U)
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$InterpResult () T@U)
(declare-fun tytagFamily$BinOp () T@U)
(declare-fun tytagFamily$State () T@U)
(declare-fun tytagFamily$nativeint () T@U)
(declare-fun tytagFamily$Op__BinOp () T@U)
(declare-fun tytagFamily$Const () T@U)
(declare-fun tytagFamily$Var () T@U)
(declare-fun tytagFamily$Op () T@U)
(declare-fun tytagFamily$Print () T@U)
(declare-fun tytagFamily$Assign () T@U)
(declare-fun field$n () T@U)
(declare-fun field$v () T@U)
(declare-fun field$op () T@U)
(declare-fun field$e1 () T@U)
(declare-fun field$e2 () T@U)
(declare-fun field$e () T@U)
(declare-fun field$s () T@U)
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
(declare-fun StackMachine.__default.interpInstr (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |StackMachine.__default.interpInstr#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.StackMachine.Instr () T@U)
(declare-fun Tclass.StackMachine.State () T@U)
(declare-fun StackMachine.State.State_q (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun StackMachine.State.stack (T@U) T@U)
(declare-fun StackMachine.Instr.PushConst_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun StackMachine.Instr.PushVar_q (T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun StackMachine.Instr.v (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun StackMachine.State.regs (T@U) T@U)
(declare-fun StackMachine.Instr.PopAdd_q (T@U) Bool)
(declare-fun LinkedList.List.Cons_q (T@U) Bool)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun LinkedList.List.tl (T@U) T@U)
(declare-fun StackMachine.Instr.PopSub_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopPrint_q (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun StackMachine.Instr.n (T@U) Int)
(declare-fun |#LinkedList.List.Cons| (T@U T@U) T@U)
(declare-fun |#StackMachine.State.State| (T@U T@U T@U) T@U)
(declare-fun StackMachine.State.output (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun LinkedList.List.hd (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun Translator.__default.translateProg (T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Translator.__default.translateProg#canCall| (T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.CSharpAST.Prog () T@U)
(declare-fun Tclass.CSharpAST.Stmt () T@U)
(declare-fun |Translator.__default.translateStmt#canCall| (T@U T@U) Bool)
(declare-fun |CSharpUtils.ListUtils.FoldR#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass.DafnyAST.Stmt () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun |lambda#6| (T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#4| (Bool) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |#DafnyAST.Stmt.Skip| () T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun CSharpAST.Prog.s () T@U)
(declare-fun CSharpUtils.ListUtils.FoldR (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |#DafnyAST.Stmt.Seq| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun Translator.__default.translateOp (T@U T@U) T@U)
(declare-fun |Translator.__default.translateOp#canCall| (T@U) Bool)
(declare-fun Tclass.CSharpAST.Op____BinOp () T@U)
(declare-fun |CSharpAST.Op____BinOp.Equals#canCall| (T@U T@U) Bool)
(declare-fun CSharpAST.Op____BinOp.Add () T@U)
(declare-fun CSharpAST.Op____BinOp.Equals (T@U T@U) Bool)
(declare-fun CSharpAST.Op____BinOp.Sub () T@U)
(declare-fun |#DafnyAST.BinOp.Add| () T@U)
(declare-fun |#DafnyAST.BinOp.Sub| () T@U)
(declare-fun Tclass.DafnyAST.BinOp () T@U)
(declare-fun Translator.__default.translateExpr (T@U T@U T@U) T@U)
(declare-fun |Translator.__default.translateExpr#canCall| (T@U T@U) Bool)
(declare-fun Tclass.CSharpAST.Expr () T@U)
(declare-fun Tclass.CSharpAST.Const () T@U)
(declare-fun Tclass.CSharpAST.Var () T@U)
(declare-fun |CSharpUtils.StringUtils.StringAsDafnyString#canCall| (T@U) Bool)
(declare-fun CSharpAST.Var.v () T@U)
(declare-fun Tclass.CSharpAST.Op () T@U)
(declare-fun CSharpAST.Op.op () T@U)
(declare-fun CSharpAST.Op.e1 () T@U)
(declare-fun CSharpAST.Op.e2 () T@U)
(declare-fun |#DafnyAST.Expr.Const| (Int) T@U)
(declare-fun CSharpAST.Const.n () T@U)
(declare-fun |#DafnyAST.Expr.Var| (T@U) T@U)
(declare-fun CSharpUtils.StringUtils.StringAsDafnyString (T@U) T@U)
(declare-fun |#DafnyAST.Expr.Op| (T@U T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun Handle2 (T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U) T@U)
(declare-fun StackMachine.__default.interpProg (T@U T@U) T@U)
(declare-fun |StackMachine.__default.interpProg#canCall| (T@U T@U) Bool)
(declare-fun Tclass.LinkedList.List (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun StackMachine.__default.EmptyState () T@U)
(declare-fun |StackMachine.__default.interpProg_k#canCall| (T@U T@U) Bool)
(declare-fun StackMachine.__default.interpProg_k (T@U T@U T@U) T@U)
(declare-fun |#DafnyAST.Stmt.Assign| (T@U T@U) T@U)
(declare-fun |#DafnyAST.InterpResult.InterpResult| (T@U T@U) T@U)
(declare-fun Translator.__default.translateStmt (T@U T@U T@U) T@U)
(declare-fun Tclass.CSharpAST.Print () T@U)
(declare-fun CSharpAST.Print.e () T@U)
(declare-fun Tclass.CSharpAST.Assign () T@U)
(declare-fun CSharpAST.Assign.v () T@U)
(declare-fun CSharpAST.Assign.e () T@U)
(declare-fun |#DafnyAST.Stmt.Print| (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Store (T@T T@T T@T T@T T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2 (T@U T@U T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.NativeTypes.nativeint () T@U)
(declare-fun Tclass.DafnyAST.Expr () T@U)
(declare-fun |#StackMachine.Instr.PushVar| (T@U) T@U)
(declare-fun |#StackMachine.Instr.PopVar| (T@U) T@U)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc2_2 (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun DafnyAST.Expr.op (T@U) T@U)
(declare-fun DafnyAST.Expr.e1 (T@U) T@U)
(declare-fun DafnyAST.Expr.e2 (T@U) T@U)
(declare-fun Tclass.System_mCollections_mGeneric.List (T@U) T@U)
(declare-fun Tclass.System_mCollections_mGeneric.List? (T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |#LinkedList.List.Nil| () T@U)
(declare-fun |#StackMachine.Instr.PopAdd| () T@U)
(declare-fun |#StackMachine.Instr.PopSub| () T@U)
(declare-fun |#StackMachine.Instr.PopPrint| () T@U)
(declare-fun Tclass.System.String? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.CSharpAST.Op____BinOp? () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.CSharpAST.Const? () T@U)
(declare-fun Tclass.CSharpAST.Expr? () T@U)
(declare-fun Tclass.CSharpAST.Var? () T@U)
(declare-fun Tclass.CSharpAST.Op? () T@U)
(declare-fun Tclass.CSharpAST.Print? () T@U)
(declare-fun Tclass.CSharpAST.Stmt? () T@U)
(declare-fun Tclass.CSharpAST.Assign? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.System.String () T@U)
(declare-fun Tclass.CSharpAST.Prog? () T@U)
(declare-fun DafnyAST.InterpResult.InterpResult_q (T@U) Bool)
(declare-fun Tclass.DafnyAST.InterpResult () T@U)
(declare-fun DafnyAST.__default.interpStmt_k (T@U T@U T@U) T@U)
(declare-fun |DafnyAST.__default.interpStmt_k#canCall| (T@U T@U) Bool)
(declare-fun DafnyAST.Stmt.Skip_q (T@U) Bool)
(declare-fun DafnyAST.Stmt.Print_q (T@U) Bool)
(declare-fun DafnyAST.Stmt.e (T@U) T@U)
(declare-fun |DafnyAST.__default.interpExpr#canCall| (T@U T@U) Bool)
(declare-fun DafnyAST.Stmt.Assign_q (T@U) Bool)
(declare-fun DafnyAST.Stmt.s2 (T@U) T@U)
(declare-fun DafnyAST.Stmt.s1 (T@U) T@U)
(declare-fun DafnyAST.InterpResult.ctx (T@U) T@U)
(declare-fun DafnyAST.__default.interpExpr (T@U T@U T@U) Int)
(declare-fun DafnyAST.Stmt.v (T@U) T@U)
(declare-fun DafnyAST.InterpResult.output (T@U) T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun DafnyAST.__default.interpStmt (T@U T@U) T@U)
(declare-fun |DafnyAST.__default.interpStmt#canCall| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun DafnyAST.BinOp.Add_q (T@U) Bool)
(declare-fun DafnyAST.BinOp.Sub_q (T@U) Bool)
(declare-fun DafnyAST.Expr.Const_q (T@U) Bool)
(declare-fun DafnyAST.Expr.Var_q (T@U) Bool)
(declare-fun DafnyAST.Expr.Op_q (T@U) Bool)
(declare-fun DafnyAST.Stmt.Seq_q (T@U) Bool)
(declare-fun LinkedList.List.Nil_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopVar_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun |#StackMachine.Instr.PushConst| (Int) T@U)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |Map#Empty| () T@U)
(declare-fun DafnyAST.Expr.n (T@U) Int)
(declare-fun DafnyAST.Expr.v (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.LinkedList.List_0 (T@U) T@U)
(declare-fun Tclass.System_mCollections_mGeneric.List_0 (T@U) T@U)
(declare-fun Tclass.System_mCollections_mGeneric.List?_0 (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun MapType2Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType2Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun implements$CSharpAST.Expr (T@U) Bool)
(declare-fun implements$CSharpAST.Const (T@U) Bool)
(declare-fun implements$CSharpAST.Var (T@U) Bool)
(declare-fun implements$CSharpAST.Op (T@U) Bool)
(declare-fun implements$CSharpAST.Stmt (T@U) Bool)
(declare-fun implements$CSharpAST.Print (T@U) Bool)
(declare-fun implements$CSharpAST.Assign (T@U) Bool)
(declare-fun implements$CSharpAST.Prog (T@U) Bool)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc allocName Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._System.___hFunc2 Tagclass._System.___hPartialFunc2 Tagclass._System.___hTotalFunc2 Tagclass.DafnyAST.Stmt Tagclass.StackMachine.Instr Tagclass.LinkedList.List Tagclass.CSharpAST.Prog Tagclass.System.String Tagclass.System_mCollections_mGeneric.List Tagclass.DafnyAST.Expr Tagclass.DafnyAST.InterpResult |##DafnyAST.BinOp.Add| Tagclass.DafnyAST.BinOp |##DafnyAST.BinOp.Sub| |##DafnyAST.Expr.Const| |##DafnyAST.Expr.Var| |##DafnyAST.Expr.Op| |##DafnyAST.Stmt.Skip| |##DafnyAST.Stmt.Print| |##DafnyAST.Stmt.Assign| |##DafnyAST.Stmt.Seq| |##DafnyAST.InterpResult.InterpResult| |##LinkedList.List.Cons| |##LinkedList.List.Nil| Tagclass.StackMachine.State |##StackMachine.Instr.PushConst| |##StackMachine.Instr.PushVar| |##StackMachine.Instr.PopAdd| |##StackMachine.Instr.PopSub| |##StackMachine.Instr.PopPrint| |##StackMachine.Instr.PopVar| |##StackMachine.State.State| Tagclass.NativeTypes.nativeint Tagclass.System_mCollections_mGeneric.List? Tagclass.System.String? Tagclass.CSharpAST.Op____BinOp? Tagclass.CSharpAST.Op____BinOp Tagclass.CSharpAST.Expr? Tagclass.CSharpAST.Expr class.CSharpAST.Const? Tagclass.CSharpAST.Const? Tagclass.CSharpAST.Const class.CSharpAST.Var? Tagclass.CSharpAST.Var? Tagclass.CSharpAST.Var class.CSharpAST.Op? Tagclass.CSharpAST.Op? Tagclass.CSharpAST.Op Tagclass.CSharpAST.Stmt? Tagclass.CSharpAST.Stmt class.CSharpAST.Print? Tagclass.CSharpAST.Print? Tagclass.CSharpAST.Print class.CSharpAST.Assign? Tagclass.CSharpAST.Assign? Tagclass.CSharpAST.Assign class.CSharpAST.Prog? Tagclass.CSharpAST.Prog? tytagFamily$object |tytagFamily$_tuple#2| |tytagFamily$_#Func2| |tytagFamily$_#PartialFunc2| |tytagFamily$_#TotalFunc2| tytagFamily$Stmt tytagFamily$Instr tytagFamily$List tytagFamily$Prog tytagFamily$String tytagFamily$Expr tytagFamily$InterpResult tytagFamily$BinOp tytagFamily$State tytagFamily$nativeint tytagFamily$Op__BinOp tytagFamily$Const tytagFamily$Var tytagFamily$Op tytagFamily$Print tytagFamily$Assign field$n field$v field$op field$e1 field$e2 field$e field$s)
)
(assert  (and (and (and (and (and (and (= (Ctor DatatypeTypeType) 3) (= (Ctor SeqType) 4)) (= (Ctor SetType) 5)) (= (Ctor MapType) 6)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)))
(assert (forall ((|instr#0| T@U) (|st#0| T@U) ) (!  (=> (or (|StackMachine.__default.interpInstr#canCall| (Lit DatatypeTypeType |instr#0|) (Lit DatatypeTypeType |st#0|)) (and ($Is DatatypeTypeType |instr#0| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0| Tclass.StackMachine.State))) (and (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushConst_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (let ((|dt_update_tmp#0#15| (Lit DatatypeTypeType |st#0|)))
 (and (StackMachine.State.State_q |dt_update_tmp#0#15|) (StackMachine.State.State_q |dt_update_tmp#0#15|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushConst_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushVar_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (let ((|v#30| (Lit SeqType (StackMachine.Instr.v (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))
 (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (=> (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType (StackMachine.State.regs (Lit DatatypeTypeType |st#0|))))) ($Box SeqType |v#30|)) (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)))) (let ((|dt_update_tmp#1#15| (Lit DatatypeTypeType |st#0|)))
 (and (StackMachine.State.State_q |dt_update_tmp#1#15|) (StackMachine.State.State_q |dt_update_tmp#1#15|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushVar_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopAdd_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (let ((|dt_update_tmp#2#15| (Lit DatatypeTypeType |st#0|)))
 (and (StackMachine.State.State_q |dt_update_tmp#2#15|) (StackMachine.State.State_q |dt_update_tmp#2#15|)))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopAdd_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopSub_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (let ((|dt_update_tmp#3#15| (Lit DatatypeTypeType |st#0|)))
 (and (StackMachine.State.State_q |dt_update_tmp#3#15|) (StackMachine.State.State_q |dt_update_tmp#3#15|)))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopSub_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopPrint_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (let ((|dt_update_tmp#4#15| (Lit DatatypeTypeType |st#0|)))
 (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (StackMachine.State.State_q |dt_update_tmp#4#15|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopPrint_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (let ((|dt_update_tmp#5#15| (Lit DatatypeTypeType |st#0|)))
 (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (StackMachine.State.State_q |dt_update_tmp#5#15|)))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))) (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))))))) (= (StackMachine.__default.interpInstr (Lit DatatypeTypeType |instr#0|) (Lit DatatypeTypeType |st#0|)) (ite (StackMachine.Instr.PushConst_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (let ((|tl#84| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))
(let ((|n#42| (LitInt (StackMachine.Instr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))
(let ((|dt_update_tmp#0#14| (Lit DatatypeTypeType |st#0|)))
(let ((|dt_update#stack#0#14| (Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box intType (int_2_U |n#42|)) |tl#84|))))
(Lit DatatypeTypeType (|#StackMachine.State.State| |dt_update#stack#0#14| (Lit MapType (StackMachine.State.regs |dt_update_tmp#0#14|)) (Lit SeqType (StackMachine.State.output |dt_update_tmp#0#14|)))))))) (ite (StackMachine.Instr.PushVar_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (let ((|tl#85| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))
(let ((|v#28| (Lit SeqType (StackMachine.Instr.v (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))
(let ((|val#14| (ite (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType (StackMachine.State.regs (Lit DatatypeTypeType |st#0|))))) ($Box SeqType |v#28|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (StackMachine.State.regs (Lit DatatypeTypeType |st#0|)))) ($Box SeqType |v#28|)))) 0)))
(let ((|dt_update_tmp#1#14| (Lit DatatypeTypeType |st#0|)))
(let ((|dt_update#stack#1#14| (|#LinkedList.List.Cons| ($Box intType (int_2_U |val#14|)) |tl#85|)))
(|#StackMachine.State.State| |dt_update#stack#1#14| (Lit MapType (StackMachine.State.regs |dt_update_tmp#1#14|)) (Lit SeqType (StackMachine.State.output |dt_update_tmp#1#14|)))))))) (ite (StackMachine.Instr.PopAdd_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))) (let ((|tl#86| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))
(let ((|n1#28| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))))
(let ((|n2#28| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))
(let ((|dt_update_tmp#2#14| (Lit DatatypeTypeType |st#0|)))
(let ((|dt_update#stack#2#14| (Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box intType (int_2_U (LitInt (+ |n1#28| |n2#28|)))) |tl#86|))))
(Lit DatatypeTypeType (|#StackMachine.State.State| |dt_update#stack#2#14| (Lit MapType (StackMachine.State.regs |dt_update_tmp#2#14|)) (Lit SeqType (StackMachine.State.output |dt_update_tmp#2#14|))))))))) |st#0|) |st#0|) (ite (StackMachine.Instr.PopSub_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))) (let ((|tl#87| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))
(let ((|n1#29| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))))
(let ((|n2#29| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))
(let ((|dt_update_tmp#3#14| (Lit DatatypeTypeType |st#0|)))
(let ((|dt_update#stack#3#14| (Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box intType (int_2_U (LitInt (- |n1#29| |n2#29|)))) |tl#87|))))
(Lit DatatypeTypeType (|#StackMachine.State.State| |dt_update#stack#3#14| (Lit MapType (StackMachine.State.regs |dt_update_tmp#3#14|)) (Lit SeqType (StackMachine.State.output |dt_update_tmp#3#14|))))))))) |st#0|) |st#0|) (ite (StackMachine.Instr.PopPrint_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (let ((|tl#88| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))
(let ((|n#43| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))
(let ((|dt_update_tmp#4#14| (Lit DatatypeTypeType |st#0|)))
(let ((|dt_update#output#0#14| (|Seq#Append| (StackMachine.State.output (Lit DatatypeTypeType |st#0|)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#43|))))))
(let ((|dt_update#stack#4#14| |tl#88|))
(|#StackMachine.State.State| |dt_update#stack#4#14| (Lit MapType (StackMachine.State.regs |dt_update_tmp#4#14|)) |dt_update#output#0#14|)))))) |st#0|) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (let ((|tl#89| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))
(let ((|n#44| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))
(let ((|v#29| (Lit SeqType (StackMachine.Instr.v (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))
(let ((|dt_update_tmp#5#14| (Lit DatatypeTypeType |st#0|)))
(let ((|dt_update#regs#0#14| (|Map#Build| (Lit MapType (StackMachine.State.regs (Lit DatatypeTypeType |st#0|))) ($Box SeqType |v#29|) ($Box intType (int_2_U |n#44|)))))
(let ((|dt_update#stack#5#14| |tl#89|))
(|#StackMachine.State.State| |dt_update#stack#5#14| |dt_update#regs#0#14| (Lit SeqType (StackMachine.State.output |dt_update_tmp#5#14|))))))))) (Lit DatatypeTypeType |st#0|))))))))))
 :qid |Compilerdfy.210:24|
 :weight 3
 :skolemid |9607|
 :pattern ( (StackMachine.__default.interpInstr (Lit DatatypeTypeType |instr#0|) (Lit DatatypeTypeType |st#0|)))
)))
(assert  (and (and (and (and (and (= (Ctor refType) 8) (= (Ctor HandleTypeType) 9)) (= (Ctor FieldType) 10)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 11)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($Heap T@U) (|c#0| T@U) ) (!  (=> (or (|Translator.__default.translateProg#canCall| $Heap |c#0|) (and ($IsGoodHeap $Heap) ($Is refType |c#0| Tclass.CSharpAST.Prog))) (and (and (forall ((|$l#11#c#0| T@U) (|$l#11#heap#0| T@U) ) (!  (=> (and ($Is refType |$l#11#c#0| Tclass.CSharpAST.Stmt) ($IsGoodHeap |$l#11#heap#0|)) (|Translator.__default.translateStmt#canCall| |$l#11#heap#0| |$l#11#c#0|))
 :qid |unknown.0:0|
 :skolemid |9831|
)) (|CSharpUtils.ListUtils.FoldR#canCall| Tclass.CSharpAST.Stmt Tclass.DafnyAST.Stmt (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (|lambda#3| Tclass.CSharpAST.Stmt Tclass.DafnyAST.Stmt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#DafnyAST.Stmt.Skip|)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0|) CSharpAST.Prog.s)))) (= (Translator.__default.translateProg $Heap |c#0|) ($Unbox DatatypeTypeType (CSharpUtils.ListUtils.FoldR Tclass.CSharpAST.Stmt Tclass.DafnyAST.Stmt (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (|lambda#3| Tclass.CSharpAST.Stmt Tclass.DafnyAST.Stmt) (|lambda#5| (SetRef_to_SetBox (|lambda#4| false)))) ($LS $LZ))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#DafnyAST.Stmt.Skip|)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0|) CSharpAST.Prog.s)))))))
 :qid |Compilerdfy.519:28|
 :skolemid |9832|
 :pattern ( (Translator.__default.translateProg $Heap |c#0|) ($IsGoodHeap $Heap))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Stmt.Seq| |a#51#0#0| |a#51#1#0|) Tclass.DafnyAST.Stmt)  (and ($Is DatatypeTypeType |a#51#0#0| Tclass.DafnyAST.Stmt) ($Is DatatypeTypeType |a#51#1#0| Tclass.DafnyAST.Stmt)))
 :qid |Compilerdfy.38:11|
 :skolemid |9525|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Stmt.Seq| |a#51#0#0| |a#51#1#0|) Tclass.DafnyAST.Stmt))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#41#2#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#41#2#0| i))) (DtRank (|#StackMachine.State.State| |a#41#0#0| |a#41#1#0| |a#41#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |9678|
 :pattern ( (|Seq#Index| |a#41#2#0| i) (|#StackMachine.State.State| |a#41#0#0| |a#41#1#0| |a#41#2#0|))
)))
(assert (forall (($ly T@U) (|op#0| T@U) ) (!  (=> (or (|Translator.__default.translateOp#canCall| |op#0|) ($Is refType |op#0| Tclass.CSharpAST.Op____BinOp)) (and (and (|CSharpAST.Op____BinOp.Equals#canCall| |op#0| CSharpAST.Op____BinOp.Add) (=> (not (CSharpAST.Op____BinOp.Equals |op#0| CSharpAST.Op____BinOp.Add)) (and (|CSharpAST.Op____BinOp.Equals#canCall| |op#0| CSharpAST.Op____BinOp.Sub) (=> (not (CSharpAST.Op____BinOp.Equals |op#0| CSharpAST.Op____BinOp.Sub)) (|Translator.__default.translateOp#canCall| |op#0|))))) (= (Translator.__default.translateOp ($LS $ly) |op#0|) (ite (CSharpAST.Op____BinOp.Equals |op#0| CSharpAST.Op____BinOp.Add) |#DafnyAST.BinOp.Add| (ite (CSharpAST.Op____BinOp.Equals |op#0| CSharpAST.Op____BinOp.Sub) |#DafnyAST.BinOp.Sub| (Translator.__default.translateOp $ly |op#0|))))))
 :qid |Compilerdfy.479:28|
 :skolemid |9811|
 :pattern ( (Translator.__default.translateOp ($LS $ly) |op#0|))
)))
(assert (forall (($ly@@0 T@U) (|op#0@@0| T@U) ) (!  (=> (or (|Translator.__default.translateOp#canCall| |op#0@@0|) ($Is refType |op#0@@0| Tclass.CSharpAST.Op____BinOp)) ($Is DatatypeTypeType (Translator.__default.translateOp $ly@@0 |op#0@@0|) Tclass.DafnyAST.BinOp))
 :qid |Compilerdfy.479:28|
 :skolemid |9809|
 :pattern ( (Translator.__default.translateOp $ly@@0 |op#0@@0|))
)))
(assert (forall (($ly@@1 T@U) ($Heap@@0 T@U) (|c#0@@0| T@U) ) (!  (=> (or (|Translator.__default.translateExpr#canCall| $Heap@@0 |c#0@@0|) (and ($IsGoodHeap $Heap@@0) ($Is refType |c#0@@0| Tclass.CSharpAST.Expr))) (and (=> (not ($Is refType |c#0@@0| Tclass.CSharpAST.Const)) (and (=> ($Is refType |c#0@@0| Tclass.CSharpAST.Var) (let ((|c#5| |c#0@@0|))
(|CSharpUtils.StringUtils.StringAsDafnyString#canCall| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#5|) CSharpAST.Var.v))))) (=> (not ($Is refType |c#0@@0| Tclass.CSharpAST.Var)) (and (=> ($Is refType |c#0@@0| Tclass.CSharpAST.Op) (let ((|c#6| |c#0@@0|))
 (and (and (|Translator.__default.translateOp#canCall| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#6|) CSharpAST.Op.op))) (|Translator.__default.translateExpr#canCall| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#6|) CSharpAST.Op.e1)))) (|Translator.__default.translateExpr#canCall| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#6|) CSharpAST.Op.e2)))))) (=> (not ($Is refType |c#0@@0| Tclass.CSharpAST.Op)) (|Translator.__default.translateExpr#canCall| $Heap@@0 |c#0@@0|)))))) (= (Translator.__default.translateExpr ($LS $ly@@1) $Heap@@0 |c#0@@0|) (ite ($Is refType |c#0@@0| Tclass.CSharpAST.Const) (let ((|c#4| |c#0@@0|))
(|#DafnyAST.Expr.Const| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#4|) CSharpAST.Const.n))))) (ite ($Is refType |c#0@@0| Tclass.CSharpAST.Var) (let ((|c#5@@0| |c#0@@0|))
(|#DafnyAST.Expr.Var| (CSharpUtils.StringUtils.StringAsDafnyString ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#5@@0|) CSharpAST.Var.v))))) (ite ($Is refType |c#0@@0| Tclass.CSharpAST.Op) (let ((|c#6@@0| |c#0@@0|))
(|#DafnyAST.Expr.Op| (Translator.__default.translateOp ($LS $LZ) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#6@@0|) CSharpAST.Op.op))) (Translator.__default.translateExpr $ly@@1 $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#6@@0|) CSharpAST.Op.e1))) (Translator.__default.translateExpr $ly@@1 $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#6@@0|) CSharpAST.Op.e2))))) (Translator.__default.translateExpr $ly@@1 $Heap@@0 |c#0@@0|)))))))
 :qid |Compilerdfy.487:28|
 :skolemid |9819|
 :pattern ( (Translator.__default.translateExpr ($LS $ly@@1) $Heap@@0 |c#0@@0|) ($IsGoodHeap $Heap@@0))
)))
(assert (= (Ctor LayerTypeType) 12))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$l#12#ly#0| T@U) ) (! (= (MapType0Select LayerTypeType HandleTypeType (|lambda#6| |l#0| |l#1|) |$l#12#ly#0|) (Handle2 (|lambda#2| |$l#12#ly#0|) |l#0| |l#1|))
 :qid |nofile.1:7|
 :skolemid |9884|
 :pattern ( (MapType0Select LayerTypeType HandleTypeType (|lambda#6| |l#0| |l#1|) |$l#12#ly#0|))
)))
(assert (forall ((|p#0| T@U) (|input#0| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg#canCall| |p#0| |input#0|) (and ($Is DatatypeTypeType |p#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is MapType |input#0| (TMap (TSeq TChar) TInt)))) (and (and (and (let ((|dt_update_tmp#0#7| StackMachine.__default.EmptyState))
 (and (StackMachine.State.State_q |dt_update_tmp#0#7|) (StackMachine.State.State_q |dt_update_tmp#0#7|))) (|StackMachine.__default.interpProg_k#canCall| |p#0| (let ((|dt_update_tmp#0#7@@0| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#7| |input#0|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#7@@0|) |dt_update#regs#0#7| (StackMachine.State.output |dt_update_tmp#0#7@@0|)))))) (StackMachine.State.State_q (StackMachine.__default.interpProg_k ($LS $LZ) |p#0| (let ((|dt_update_tmp#0#7@@1| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#7@@0| |input#0|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#7@@1|) |dt_update#regs#0#7@@0| (StackMachine.State.output |dt_update_tmp#0#7@@1|))))))) (= (StackMachine.__default.interpProg |p#0| |input#0|) (StackMachine.State.output (StackMachine.__default.interpProg_k ($LS $LZ) |p#0| (let ((|dt_update_tmp#0#7@@2| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#7@@1| |input#0|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#7@@2|) |dt_update#regs#0#7@@1| (StackMachine.State.output |dt_update_tmp#0#7@@2|)))))))))
 :qid |Compilerdfy.242:23|
 :skolemid |9617|
 :pattern ( (StackMachine.__default.interpProg |p#0| |input#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#45#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#45#0#0| i@@0))) (DtRank (|#DafnyAST.Stmt.Assign| |a#45#0#0| |a#45#1#0|))))
 :qid |Compilerdfy.37:14|
 :skolemid |9517|
 :pattern ( (|Seq#Index| |a#45#0#0| i@@0) (|#DafnyAST.Stmt.Assign| |a#45#0#0| |a#45#1#0|))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#65#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#65#1#0| i@@1))) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#65#0#0| |a#65#1#0|))))
 :qid |Compilerdfy.55:40|
 :skolemid |9553|
 :pattern ( (|Seq#Index| |a#65#1#0| i@@1) (|#DafnyAST.InterpResult.InterpResult| |a#65#0#0| |a#65#1#0|))
)))
(assert (forall (($ly@@2 T@U) ($Heap@@1 T@U) (|c#0@@1| T@U) ) (!  (=> (or (|Translator.__default.translateStmt#canCall| $Heap@@1 |c#0@@1|) (and ($IsGoodHeap $Heap@@1) ($Is refType |c#0@@1| Tclass.CSharpAST.Stmt))) (and (and (=> ($Is refType |c#0@@1| Tclass.CSharpAST.Print) (let ((|c#3| |c#0@@1|))
(|Translator.__default.translateExpr#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |c#3|) CSharpAST.Print.e))))) (=> (not ($Is refType |c#0@@1| Tclass.CSharpAST.Print)) (and (=> ($Is refType |c#0@@1| Tclass.CSharpAST.Assign) (let ((|c#4@@0| |c#0@@1|))
 (and (|CSharpUtils.StringUtils.StringAsDafnyString#canCall| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |c#4@@0|) CSharpAST.Assign.v))) (|Translator.__default.translateExpr#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |c#4@@0|) CSharpAST.Assign.e)))))) (=> (not ($Is refType |c#0@@1| Tclass.CSharpAST.Assign)) (|Translator.__default.translateStmt#canCall| $Heap@@1 |c#0@@1|))))) (= (Translator.__default.translateStmt ($LS $ly@@2) $Heap@@1 |c#0@@1|) (ite ($Is refType |c#0@@1| Tclass.CSharpAST.Print) (let ((|c#3@@0| |c#0@@1|))
(|#DafnyAST.Stmt.Print| (Translator.__default.translateExpr ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |c#3@@0|) CSharpAST.Print.e))))) (ite ($Is refType |c#0@@1| Tclass.CSharpAST.Assign) (let ((|c#4@@1| |c#0@@1|))
(|#DafnyAST.Stmt.Assign| (CSharpUtils.StringUtils.StringAsDafnyString ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |c#4@@1|) CSharpAST.Assign.v))) (Translator.__default.translateExpr ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |c#4@@1|) CSharpAST.Assign.e))))) (Translator.__default.translateStmt $ly@@2 $Heap@@1 |c#0@@1|))))))
 :qid |Compilerdfy.505:28|
 :skolemid |9826|
 :pattern ( (Translator.__default.translateStmt ($LS $ly@@2) $Heap@@1 |c#0@@1|) ($IsGoodHeap $Heap@@1))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (t3 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) (x2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 t3 (MapType1Store t0@@0 t1@@0 t2 t3 m@@1 x0@@1 x1 x2 val@@1) x0@@1 x1 x2) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (u3 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (x2@@0 T@U) (y0@@0 T@U) (y1 T@U) (y2 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 u3 (MapType1Store u0@@0 u1@@0 u2 u3 m@@2 x0@@2 x1@@0 x2@@0 val@@2) y0@@0 y1 y2) (MapType1Select u0@@0 u1@@0 u2 u3 m@@2 y0@@0 y1 y2)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (u3@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (x2@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) (y2@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 u3@@0 (MapType1Store u0@@1 u1@@1 u2@@0 u3@@0 m@@3 x0@@3 x1@@1 x2@@1 val@@3) y0@@1 y1@@0 y2@@0) (MapType1Select u0@@1 u1@@1 u2@@0 u3@@0 m@@3 y0@@1 y1@@0 y2@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
))) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@1 T@T) (u3@@1 T@T) (val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (x1@@2 T@U) (x2@@2 T@U) (y0@@2 T@U) (y1@@1 T@U) (y2@@1 T@U) ) (!  (or (= x2@@2 y2@@1) (= (MapType1Select u0@@2 u1@@2 u2@@1 u3@@1 (MapType1Store u0@@2 u1@@2 u2@@1 u3@@1 m@@4 x0@@4 x1@@2 x2@@2 val@@4) y0@@2 y1@@1 y2@@1) (MapType1Select u0@@2 u1@@2 u2@@1 u3@@1 m@@4 y0@@2 y1@@1 y2@@1)))
 :qid |mapAx1:MapType1Select:2|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|$l#12#heap#0| T@U) (|$l#12#c#0| T@U) (|$l#12#ds#0| T@U) ) (! (= (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType boolType (|lambda#3| |l#0@@0| |l#1@@0|) |$l#12#heap#0| |$l#12#c#0| |$l#12#ds#0|))  (and ($IsBox |$l#12#c#0| |l#0@@0|) ($IsBox |$l#12#ds#0| |l#1@@0|)))
 :qid |Compilerdfy.449:36|
 :skolemid |9881|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType boolType (|lambda#3| |l#0@@0| |l#1@@0|) |$l#12#heap#0| |$l#12#c#0| |$l#12#ds#0|))
)))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$R| T@U) (|f#0| T@U) ) (! (= ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0| |#$T1| |#$R|))  (and ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc2 |#$T0| |#$T1| |#$R|)) (forall ((|x0#0| T@U) (|x1#0| T@U) ) (!  (=> (and ($IsBox |x0#0| |#$T0|) ($IsBox |x1#0| |#$T1|)) (Requires2 |#$T0| |#$T1| |#$R| $OneHeap |f#0| |x0#0| |x1#0|))
 :qid |unknown.0:0|
 :skolemid |9314|
))))
 :qid |unknown.0:0|
 :skolemid |9315|
 :pattern ( ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc2 |#$T0| |#$T1| |#$R|)))
)))
(assert (forall ((|n#0| T@U) ($h T@U) ) (! ($IsAlloc intType |n#0| Tclass.NativeTypes.nativeint $h)
 :qid |unknown.0:0|
 :skolemid |9702|
 :pattern ( ($IsAlloc intType |n#0| Tclass.NativeTypes.nativeint $h))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) (|a#22#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Op| |a#22#0#0| |a#22#1#0| |a#22#2#0|) Tclass.DafnyAST.Expr)  (and (and ($Is DatatypeTypeType |a#22#0#0| Tclass.DafnyAST.BinOp) ($Is DatatypeTypeType |a#22#1#0| Tclass.DafnyAST.Expr)) ($Is DatatypeTypeType |a#22#2#0| Tclass.DafnyAST.Expr)))
 :qid |Compilerdfy.29:10|
 :skolemid |9479|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Op| |a#22#0#0| |a#22#1#0| |a#22#2#0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((|a#18#0#0| T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| |a#18#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#18#0#0| i@@2))) (DtRank (|#DafnyAST.Expr.Var| |a#18#0#0|))))
 :qid |Compilerdfy.28:11|
 :skolemid |9473|
 :pattern ( (|Seq#Index| |a#18#0#0| i@@2) (|#DafnyAST.Expr.Var| |a#18#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| |a#10#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#10#0#0| i@@3))) (DtRank (|#StackMachine.Instr.PushVar| |a#10#0#0|))))
 :qid |Compilerdfy.193:15|
 :skolemid |9635|
 :pattern ( (|Seq#Index| |a#10#0#0| i@@3) (|#StackMachine.Instr.PushVar| |a#10#0#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| |a#29#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#29#0#0| i@@4))) (DtRank (|#StackMachine.Instr.PopVar| |a#29#0#0|))))
 :qid |Compilerdfy.197:14|
 :skolemid |9651|
 :pattern ( (|Seq#Index| |a#29#0#0| i@@4) (|#StackMachine.Instr.PopVar| |a#29#0#0|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|)) |#$T0@@0|)
 :qid |unknown.0:0|
 :skolemid |9269|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|)) |#$T1@@1|)
 :qid |unknown.0:0|
 :skolemid |9270|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |9271|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc2_0 (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |9302|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc2_1 (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|)) |#$T1@@4|)
 :qid |unknown.0:0|
 :skolemid |9303|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@4| |#$T1@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$T1@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hPartialFunc2_2 (Tclass._System.___hPartialFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|)) |#$R@@5|)
 :qid |unknown.0:0|
 :skolemid |9304|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@5| |#$T1@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$T1@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc2_0 (Tclass._System.___hTotalFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|)) |#$T0@@6|)
 :qid |unknown.0:0|
 :skolemid |9310|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@6| |#$T1@@6| |#$R@@6|))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$T1@@7| T@U) (|#$R@@7| T@U) ) (! (= (Tclass._System.___hTotalFunc2_1 (Tclass._System.___hTotalFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|)) |#$T1@@7|)
 :qid |unknown.0:0|
 :skolemid |9311|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@7| |#$T1@@7| |#$R@@7|))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$T1@@8| T@U) (|#$R@@8| T@U) ) (! (= (Tclass._System.___hTotalFunc2_2 (Tclass._System.___hTotalFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|)) |#$R@@8|)
 :qid |unknown.0:0|
 :skolemid |9312|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@8| |#$T1@@8| |#$R@@8|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Op| |a#20#0#0| |a#20#1#0| |a#20#2#0|)) |##DafnyAST.Expr.Op|)
 :qid |Compilerdfy.29:10|
 :skolemid |9475|
 :pattern ( (|#DafnyAST.Expr.Op| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) (|a#24#2#0| T@U) ) (! (= (DafnyAST.Expr.op (|#DafnyAST.Expr.Op| |a#24#0#0| |a#24#1#0| |a#24#2#0|)) |a#24#0#0|)
 :qid |Compilerdfy.29:10|
 :skolemid |9484|
 :pattern ( (|#DafnyAST.Expr.Op| |a#24#0#0| |a#24#1#0| |a#24#2#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) (|a#26#2#0| T@U) ) (! (= (DafnyAST.Expr.e1 (|#DafnyAST.Expr.Op| |a#26#0#0| |a#26#1#0| |a#26#2#0|)) |a#26#1#0|)
 :qid |Compilerdfy.29:10|
 :skolemid |9486|
 :pattern ( (|#DafnyAST.Expr.Op| |a#26#0#0| |a#26#1#0| |a#26#2#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) (|a#28#2#0| T@U) ) (! (= (DafnyAST.Expr.e2 (|#DafnyAST.Expr.Op| |a#28#0#0| |a#28#1#0| |a#28#2#0|)) |a#28#2#0|)
 :qid |Compilerdfy.29:10|
 :skolemid |9488|
 :pattern ( (|#DafnyAST.Expr.Op| |a#28#0#0| |a#28#1#0| |a#28#2#0|))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) (|a#31#2#0| T@U) ) (! (= (DatatypeCtorId (|#StackMachine.State.State| |a#31#0#0| |a#31#1#0| |a#31#2#0|)) |##StackMachine.State.State|)
 :qid |Compilerdfy.206:26|
 :skolemid |9663|
 :pattern ( (|#StackMachine.State.State| |a#31#0#0| |a#31#1#0| |a#31#2#0|))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) ) (! (= (StackMachine.State.stack (|#StackMachine.State.State| |a#35#0#0| |a#35#1#0| |a#35#2#0|)) |a#35#0#0|)
 :qid |Compilerdfy.206:26|
 :skolemid |9672|
 :pattern ( (|#StackMachine.State.State| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) ) (! (= (StackMachine.State.regs (|#StackMachine.State.State| |a#37#0#0| |a#37#1#0| |a#37#2#0|)) |a#37#1#0|)
 :qid |Compilerdfy.206:26|
 :skolemid |9674|
 :pattern ( (|#StackMachine.State.State| |a#37#0#0| |a#37#1#0| |a#37#2#0|))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (= (StackMachine.State.output (|#StackMachine.State.State| |a#40#0#0| |a#40#1#0| |a#40#2#0|)) |a#40#2#0|)
 :qid |Compilerdfy.206:26|
 :skolemid |9677|
 :pattern ( (|#StackMachine.State.State| |a#40#0#0| |a#40#1#0| |a#40#2#0|))
)))
(assert (forall ((System.Collections.Generic.List$T T@U) (|c#0@@2| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T) $h@@0) ($IsAlloc refType |c#0@@2| (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |9709|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T) $h@@0))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#12#heap#0@@0| T@U) (|$l#12#c#0@@0| T@U) (|$l#12#ds#0@@0| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType (|lambda#2| |l#0@@1|) |$l#12#heap#0@@0| |$l#12#c#0@@0| |$l#12#ds#0@@0|) ($Box DatatypeTypeType (|#DafnyAST.Stmt.Seq| (Translator.__default.translateStmt |l#0@@1| |$l#12#heap#0@@0| ($Unbox refType |$l#12#c#0@@0|)) ($Unbox DatatypeTypeType |$l#12#ds#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |9880|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType (|lambda#2| |l#0@@1|) |$l#12#heap#0@@0| |$l#12#c#0@@0| |$l#12#ds#0@@0|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |9257|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |8914|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#DafnyAST.BinOp.Add|) |##DafnyAST.BinOp.Add|))
(assert (= (DatatypeCtorId |#DafnyAST.BinOp.Sub|) |##DafnyAST.BinOp.Sub|))
(assert (= (DatatypeCtorId |#DafnyAST.Stmt.Skip|) |##DafnyAST.Stmt.Skip|))
(assert (= (DatatypeCtorId |#LinkedList.List.Nil|) |##LinkedList.List.Nil|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopAdd|) |##StackMachine.Instr.PopAdd|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopSub|) |##StackMachine.Instr.PopSub|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopPrint|) |##StackMachine.Instr.PopPrint|))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.System.String?)  (or (= $o null) (= (dtype $o) Tclass.System.String?)))
 :qid |unknown.0:0|
 :skolemid |9711|
 :pattern ( ($Is refType $o Tclass.System.String?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.CSharpAST.Op____BinOp?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.CSharpAST.Op____BinOp?)))
 :qid |unknown.0:0|
 :skolemid |9733|
 :pattern ( ($Is refType $o@@0 Tclass.CSharpAST.Op____BinOp?))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$T1@@9| T@U) (|#$R@@9| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |9268|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@9| |#$T1@@9| |#$R@@9|))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$T1@@10| T@U) (|#$R@@10| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|)) Tagclass._System.___hPartialFunc2) (= (TagFamily (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|)) |tytagFamily$_#PartialFunc2|))
 :qid |unknown.0:0|
 :skolemid |9301|
 :pattern ( (Tclass._System.___hPartialFunc2 |#$T0@@10| |#$T1@@10| |#$R@@10|))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$T1@@11| T@U) (|#$R@@11| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)) Tagclass._System.___hTotalFunc2) (= (TagFamily (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|)) |tytagFamily$_#TotalFunc2|))
 :qid |unknown.0:0|
 :skolemid |9309|
 :pattern ( (Tclass._System.___hTotalFunc2 |#$T0@@11| |#$T1@@11| |#$R@@11|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$T1@@12| T@U) (|#$R@@12| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx)) bx) ($Is HandleTypeType ($Unbox HandleTypeType bx) (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|))))
 :qid |unknown.0:0|
 :skolemid |9272|
 :pattern ( ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@12| |#$T1@@12| |#$R@@12|)))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$T1@@13| T@U) (|#$R@@13| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|))))
 :qid |unknown.0:0|
 :skolemid |9305|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hPartialFunc2 |#$T0@@13| |#$T1@@13| |#$R@@13|)))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$T1@@14| T@U) (|#$R@@14| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@1)) bx@@1) ($Is HandleTypeType ($Unbox HandleTypeType bx@@1) (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|))))
 :qid |unknown.0:0|
 :skolemid |9313|
 :pattern ( ($IsBox bx@@1 (Tclass._System.___hTotalFunc2 |#$T0@@14| |#$T1@@14| |#$R@@14|)))
)))
(assert (forall ((bx@@2 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass.CSharpAST.Const? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx@@2 Tclass.CSharpAST.Expr? $h@@1))
 :qid |unknown.0:0|
 :skolemid |9846|
 :pattern ( ($IsAllocBox bx@@2 Tclass.CSharpAST.Const? $h@@1))
)))
(assert (forall ((bx@@3 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@3 Tclass.CSharpAST.Var? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@3 Tclass.CSharpAST.Expr? $h@@2))
 :qid |unknown.0:0|
 :skolemid |9850|
 :pattern ( ($IsAllocBox bx@@3 Tclass.CSharpAST.Var? $h@@2))
)))
(assert (forall ((bx@@4 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@4 Tclass.CSharpAST.Op? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@4 Tclass.CSharpAST.Expr? $h@@3))
 :qid |unknown.0:0|
 :skolemid |9854|
 :pattern ( ($IsAllocBox bx@@4 Tclass.CSharpAST.Op? $h@@3))
)))
(assert (forall ((bx@@5 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@5 Tclass.CSharpAST.Print? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@5 Tclass.CSharpAST.Stmt? $h@@4))
 :qid |unknown.0:0|
 :skolemid |9858|
 :pattern ( ($IsAllocBox bx@@5 Tclass.CSharpAST.Print? $h@@4))
)))
(assert (forall ((bx@@6 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx@@6 Tclass.CSharpAST.Assign? $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx@@6 Tclass.CSharpAST.Stmt? $h@@5))
 :qid |unknown.0:0|
 :skolemid |9862|
 :pattern ( ($IsAllocBox bx@@6 Tclass.CSharpAST.Assign? $h@@5))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._System.object $h@@6) ($IsAlloc refType |c#0@@3| Tclass._System.object? $h@@6))
 :qid |unknown.0:0|
 :skolemid |9140|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._System.object $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._System.object? $h@@6))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass.System.String $h@@7) ($IsAlloc refType |c#0@@4| Tclass.System.String? $h@@7))
 :qid |unknown.0:0|
 :skolemid |9714|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.System.String $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.System.String? $h@@7))
)))
(assert (forall ((|c#0@@5| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@5| Tclass.CSharpAST.Op____BinOp $h@@8) ($IsAlloc refType |c#0@@5| Tclass.CSharpAST.Op____BinOp? $h@@8))
 :qid |unknown.0:0|
 :skolemid |9741|
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass.CSharpAST.Op____BinOp $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@5| Tclass.CSharpAST.Op____BinOp? $h@@8))
)))
(assert (forall ((|c#0@@6| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType |c#0@@6| Tclass.CSharpAST.Expr $h@@9) ($IsAlloc refType |c#0@@6| Tclass.CSharpAST.Expr? $h@@9))
 :qid |unknown.0:0|
 :skolemid |9747|
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass.CSharpAST.Expr $h@@9))
 :pattern ( ($IsAlloc refType |c#0@@6| Tclass.CSharpAST.Expr? $h@@9))
)))
(assert (forall ((|c#0@@7| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType |c#0@@7| Tclass.CSharpAST.Const $h@@10) ($IsAlloc refType |c#0@@7| Tclass.CSharpAST.Const? $h@@10))
 :qid |unknown.0:0|
 :skolemid |9755|
 :pattern ( ($IsAlloc refType |c#0@@7| Tclass.CSharpAST.Const $h@@10))
 :pattern ( ($IsAlloc refType |c#0@@7| Tclass.CSharpAST.Const? $h@@10))
)))
(assert (forall ((|c#0@@8| T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType |c#0@@8| Tclass.CSharpAST.Var $h@@11) ($IsAlloc refType |c#0@@8| Tclass.CSharpAST.Var? $h@@11))
 :qid |unknown.0:0|
 :skolemid |9763|
 :pattern ( ($IsAlloc refType |c#0@@8| Tclass.CSharpAST.Var $h@@11))
 :pattern ( ($IsAlloc refType |c#0@@8| Tclass.CSharpAST.Var? $h@@11))
)))
(assert (forall ((|c#0@@9| T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType |c#0@@9| Tclass.CSharpAST.Op $h@@12) ($IsAlloc refType |c#0@@9| Tclass.CSharpAST.Op? $h@@12))
 :qid |unknown.0:0|
 :skolemid |9775|
 :pattern ( ($IsAlloc refType |c#0@@9| Tclass.CSharpAST.Op $h@@12))
 :pattern ( ($IsAlloc refType |c#0@@9| Tclass.CSharpAST.Op? $h@@12))
)))
(assert (forall ((|c#0@@10| T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType |c#0@@10| Tclass.CSharpAST.Stmt $h@@13) ($IsAlloc refType |c#0@@10| Tclass.CSharpAST.Stmt? $h@@13))
 :qid |unknown.0:0|
 :skolemid |9781|
 :pattern ( ($IsAlloc refType |c#0@@10| Tclass.CSharpAST.Stmt $h@@13))
 :pattern ( ($IsAlloc refType |c#0@@10| Tclass.CSharpAST.Stmt? $h@@13))
)))
(assert (forall ((|c#0@@11| T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType |c#0@@11| Tclass.CSharpAST.Print $h@@14) ($IsAlloc refType |c#0@@11| Tclass.CSharpAST.Print? $h@@14))
 :qid |unknown.0:0|
 :skolemid |9789|
 :pattern ( ($IsAlloc refType |c#0@@11| Tclass.CSharpAST.Print $h@@14))
 :pattern ( ($IsAlloc refType |c#0@@11| Tclass.CSharpAST.Print? $h@@14))
)))
(assert (forall ((|c#0@@12| T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType |c#0@@12| Tclass.CSharpAST.Assign $h@@15) ($IsAlloc refType |c#0@@12| Tclass.CSharpAST.Assign? $h@@15))
 :qid |unknown.0:0|
 :skolemid |9799|
 :pattern ( ($IsAlloc refType |c#0@@12| Tclass.CSharpAST.Assign $h@@15))
 :pattern ( ($IsAlloc refType |c#0@@12| Tclass.CSharpAST.Assign? $h@@15))
)))
(assert (forall ((|c#0@@13| T@U) ($h@@16 T@U) ) (! (= ($IsAlloc refType |c#0@@13| Tclass.CSharpAST.Prog $h@@16) ($IsAlloc refType |c#0@@13| Tclass.CSharpAST.Prog? $h@@16))
 :qid |unknown.0:0|
 :skolemid |9806|
 :pattern ( ($IsAlloc refType |c#0@@13| Tclass.CSharpAST.Prog $h@@16))
 :pattern ( ($IsAlloc refType |c#0@@13| Tclass.CSharpAST.Prog? $h@@16))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.DafnyAST.InterpResult) (DafnyAST.InterpResult.InterpResult_q d@@0))
 :qid |unknown.0:0|
 :skolemid |9557|
 :pattern ( (DafnyAST.InterpResult.InterpResult_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.DafnyAST.InterpResult))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass.StackMachine.State) (StackMachine.State.State_q d@@1))
 :qid |unknown.0:0|
 :skolemid |9682|
 :pattern ( (StackMachine.State.State_q d@@1) ($Is DatatypeTypeType d@@1 Tclass.StackMachine.State))
)))
(assert (forall ((LinkedList.List$T T@U) ($h@@17 T@U) ) (!  (=> ($IsGoodHeap $h@@17) ($IsAlloc DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T) $h@@17))
 :qid |unknown.0:0|
 :skolemid |9597|
 :pattern ( ($IsAlloc DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T) $h@@17))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |9245|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#DafnyAST.BinOp.Add| Tclass.DafnyAST.BinOp))
(assert ($Is DatatypeTypeType |#DafnyAST.BinOp.Sub| Tclass.DafnyAST.BinOp))
(assert ($Is DatatypeTypeType |#DafnyAST.Stmt.Skip| Tclass.DafnyAST.Stmt))
(assert ($Is DatatypeTypeType StackMachine.__default.EmptyState Tclass.StackMachine.State))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopAdd| Tclass.StackMachine.Instr))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopSub| Tclass.StackMachine.Instr))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopPrint| Tclass.StackMachine.Instr))
(assert ($Is refType CSharpAST.Op____BinOp.Add Tclass.CSharpAST.Op____BinOp))
(assert ($Is refType CSharpAST.Op____BinOp.Sub Tclass.CSharpAST.Op____BinOp))
(assert (forall (($ly@@3 T@U) (|s#0| T@U) (|ctx#0| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt_k#canCall| (Lit DatatypeTypeType |s#0|) (Lit MapType |ctx#0|)) (and ($Is DatatypeTypeType |s#0| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0|))))) (let ((|e#38| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0|)))))
(|DafnyAST.__default.interpExpr#canCall| |e#38| (Lit MapType |ctx#0|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0|))))) (let ((|e#39| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0|)))))
(|DafnyAST.__default.interpExpr#canCall| |e#39| (Lit MapType |ctx#0|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0|)))))) (let ((|s2#19| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0|)))))
(let ((|s1#19| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0|)))))
 (and (|DafnyAST.__default.interpStmt_k#canCall| |s1#19| (Lit MapType |ctx#0|)) (let ((|ctx1#19| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k ($LS $ly@@3) |s1#19| (Lit MapType |ctx#0|)))))
(|DafnyAST.__default.interpStmt_k#canCall| |s2#19| |ctx1#19|)))))))))) (= (DafnyAST.__default.interpStmt_k ($LS $ly@@3) (Lit DatatypeTypeType |s#0|) (Lit MapType |ctx#0|)) (ite (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0|)) (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |ctx#0|) (Lit SeqType |Seq#Empty|)) (ite (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0|)) (let ((|e#36| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0|)))))
(Lit DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |ctx#0|) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt (DafnyAST.__default.interpExpr ($LS $LZ) |e#36| (Lit MapType |ctx#0|)))))))))) (ite (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0|)) (let ((|e#37| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0|)))))
(let ((|v#18| (Lit SeqType (DafnyAST.Stmt.v (Lit DatatypeTypeType |s#0|)))))
(|#DafnyAST.InterpResult.InterpResult| (|Map#Build| (Lit MapType |ctx#0|) ($Box SeqType |v#18|) ($Box intType (int_2_U (LitInt (DafnyAST.__default.interpExpr ($LS $LZ) |e#37| (Lit MapType |ctx#0|)))))) (Lit SeqType |Seq#Empty|)))) (let ((|s2#18| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0|)))))
(let ((|s1#18| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0|)))))
(let ((|o1#18| (DafnyAST.InterpResult.output (Lit DatatypeTypeType (DafnyAST.__default.interpStmt_k ($LS $ly@@3) |s1#18| (Lit MapType |ctx#0|))))))
(let ((|ctx1#18| (DafnyAST.InterpResult.ctx (Lit DatatypeTypeType (DafnyAST.__default.interpStmt_k ($LS $ly@@3) |s1#18| (Lit MapType |ctx#0|))))))
(let ((|o2#18| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k ($LS $ly@@3) |s2#18| |ctx1#18|))))
(let ((|ctx2#18| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k ($LS $ly@@3) |s2#18| |ctx1#18|))))
(|#DafnyAST.InterpResult.InterpResult| |ctx2#18| (|Seq#Append| |o1#18| |o2#18|))))))))))))))
 :qid |Compilerdfy.57:12|
 :weight 3
 :skolemid |9441|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $ly@@3) (Lit DatatypeTypeType |s#0|) (Lit MapType |ctx#0|)))
)))
(assert (forall ((System.Collections.Generic.List$T@@0 T@U) ($o@@1 T@U) ($h@@18 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@0) $h@@18)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |9707|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@0) $h@@18))
)))
(assert (= (FDim CSharpAST.Const.n) 0))
(assert (= (FieldOfDecl class.CSharpAST.Const? field$n) CSharpAST.Const.n))
(assert  (not ($IsGhostField CSharpAST.Const.n)))
(assert (= (FDim CSharpAST.Var.v) 0))
(assert (= (FieldOfDecl class.CSharpAST.Var? field$v) CSharpAST.Var.v))
(assert  (not ($IsGhostField CSharpAST.Var.v)))
(assert (= (FDim CSharpAST.Op.op) 0))
(assert (= (FieldOfDecl class.CSharpAST.Op? field$op) CSharpAST.Op.op))
(assert  (not ($IsGhostField CSharpAST.Op.op)))
(assert (= (FDim CSharpAST.Op.e1) 0))
(assert (= (FieldOfDecl class.CSharpAST.Op? field$e1) CSharpAST.Op.e1))
(assert  (not ($IsGhostField CSharpAST.Op.e1)))
(assert (= (FDim CSharpAST.Op.e2) 0))
(assert (= (FieldOfDecl class.CSharpAST.Op? field$e2) CSharpAST.Op.e2))
(assert  (not ($IsGhostField CSharpAST.Op.e2)))
(assert (= (FDim CSharpAST.Print.e) 0))
(assert (= (FieldOfDecl class.CSharpAST.Print? field$e) CSharpAST.Print.e))
(assert  (not ($IsGhostField CSharpAST.Print.e)))
(assert (= (FDim CSharpAST.Assign.v) 0))
(assert (= (FieldOfDecl class.CSharpAST.Assign? field$v) CSharpAST.Assign.v))
(assert  (not ($IsGhostField CSharpAST.Assign.v)))
(assert (= (FDim CSharpAST.Assign.e) 0))
(assert (= (FieldOfDecl class.CSharpAST.Assign? field$e) CSharpAST.Assign.e))
(assert  (not ($IsGhostField CSharpAST.Assign.e)))
(assert (= (FDim CSharpAST.Prog.s) 0))
(assert (= (FieldOfDecl class.CSharpAST.Prog? field$s) CSharpAST.Prog.s))
(assert  (not ($IsGhostField CSharpAST.Prog.s)))
(assert (forall (($h@@19 T@U) ) (!  (=> ($IsGoodHeap $h@@19) ($IsAlloc DatatypeTypeType StackMachine.__default.EmptyState Tclass.StackMachine.State $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9614|
 :pattern ( ($IsAlloc DatatypeTypeType StackMachine.__default.EmptyState Tclass.StackMachine.State $h@@19))
)))
(assert (forall (($h@@20 T@U) ) (!  (=> ($IsGoodHeap $h@@20) ($IsAlloc refType CSharpAST.Op____BinOp.Add Tclass.CSharpAST.Op____BinOp $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9736|
 :pattern ( ($IsAlloc refType CSharpAST.Op____BinOp.Add Tclass.CSharpAST.Op____BinOp $h@@20))
)))
(assert (forall (($h@@21 T@U) ) (!  (=> ($IsGoodHeap $h@@21) ($IsAlloc refType CSharpAST.Op____BinOp.Sub Tclass.CSharpAST.Op____BinOp $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9737|
 :pattern ( ($IsAlloc refType CSharpAST.Op____BinOp.Sub Tclass.CSharpAST.Op____BinOp $h@@21))
)))
(assert (forall ((LinkedList.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |9596|
 :pattern ( ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T@@0)))
)))
(assert (forall (($o@@2 T@U) ($h@@22 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@22)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |9137|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@22))
)))
(assert (forall (($o@@3 T@U) ($h@@23 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.System.String? $h@@23)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |9712|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.System.String? $h@@23))
)))
(assert (forall (($o@@4 T@U) ($h@@24 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass.CSharpAST.Op____BinOp? $h@@24)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |9734|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.CSharpAST.Op____BinOp? $h@@24))
)))
(assert (forall (($o@@5 T@U) ($h@@25 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass.CSharpAST.Expr? $h@@25)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |9744|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.CSharpAST.Expr? $h@@25))
)))
(assert (forall (($o@@6 T@U) ($h@@26 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass.CSharpAST.Const? $h@@26)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |9750|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.CSharpAST.Const? $h@@26))
)))
(assert (forall (($o@@7 T@U) ($h@@27 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass.CSharpAST.Var? $h@@27)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |9758|
 :pattern ( ($IsAlloc refType $o@@7 Tclass.CSharpAST.Var? $h@@27))
)))
(assert (forall (($o@@8 T@U) ($h@@28 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass.CSharpAST.Op? $h@@28)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |9766|
 :pattern ( ($IsAlloc refType $o@@8 Tclass.CSharpAST.Op? $h@@28))
)))
(assert (forall (($o@@9 T@U) ($h@@29 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass.CSharpAST.Stmt? $h@@29)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |9778|
 :pattern ( ($IsAlloc refType $o@@9 Tclass.CSharpAST.Stmt? $h@@29))
)))
(assert (forall (($o@@10 T@U) ($h@@30 T@U) ) (! (= ($IsAlloc refType $o@@10 Tclass.CSharpAST.Print? $h@@30)  (or (= $o@@10 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@10) alloc)))))
 :qid |unknown.0:0|
 :skolemid |9784|
 :pattern ( ($IsAlloc refType $o@@10 Tclass.CSharpAST.Print? $h@@30))
)))
(assert (forall (($o@@11 T@U) ($h@@31 T@U) ) (! (= ($IsAlloc refType $o@@11 Tclass.CSharpAST.Assign? $h@@31)  (or (= $o@@11 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@11) alloc)))))
 :qid |unknown.0:0|
 :skolemid |9792|
 :pattern ( ($IsAlloc refType $o@@11 Tclass.CSharpAST.Assign? $h@@31))
)))
(assert (forall (($o@@12 T@U) ($h@@32 T@U) ) (! (= ($IsAlloc refType $o@@12 Tclass.CSharpAST.Prog? $h@@32)  (or (= $o@@12 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@12) alloc)))))
 :qid |unknown.0:0|
 :skolemid |9802|
 :pattern ( ($IsAlloc refType $o@@12 Tclass.CSharpAST.Prog? $h@@32))
)))
(assert (forall ((|s#0@@0| T@U) (|ctx#0@@0| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt#canCall| (Lit DatatypeTypeType |s#0@@0|) (Lit MapType |ctx#0@@0|)) (and ($Is DatatypeTypeType |s#0@@0| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@0| (TMap (TSeq TChar) TInt)))) (and (and (|DafnyAST.__default.interpStmt_k#canCall| (Lit DatatypeTypeType |s#0@@0|) (Lit MapType |ctx#0@@0|)) (DafnyAST.InterpResult.InterpResult_q (Lit DatatypeTypeType (DafnyAST.__default.interpStmt_k ($LS $LZ) (Lit DatatypeTypeType |s#0@@0|) (Lit MapType |ctx#0@@0|))))) (= (DafnyAST.__default.interpStmt (Lit DatatypeTypeType |s#0@@0|) (Lit MapType |ctx#0@@0|)) (Lit SeqType (DafnyAST.InterpResult.output (Lit DatatypeTypeType (DafnyAST.__default.interpStmt_k ($LS $LZ) (Lit DatatypeTypeType |s#0@@0|) (Lit MapType |ctx#0@@0|))))))))
 :qid |Compilerdfy.70:23|
 :weight 3
 :skolemid |9445|
 :pattern ( (DafnyAST.__default.interpStmt (Lit DatatypeTypeType |s#0@@0|) (Lit MapType |ctx#0@@0|)))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |8907|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |8908|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |8806|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |8804|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s T@U) (bx@@7 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx@@7 t)) ($Is SeqType (|Seq#Build| s bx@@7) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |9047|
 :pattern ( ($Is SeqType (|Seq#Build| s bx@@7) (TSeq t)))
)))
(assert (forall ((|#$T0@@15| T@U) (|#$T1@@15| T@U) (|#$R@@15| T@U) (|f#0@@0| T@U) ) (! (= ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|))  (and ($Is HandleTypeType |f#0@@0| (Tclass._System.___hFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|)) (forall ((|x0#0@@0| T@U) (|x1#0@@0| T@U) ) (!  (=> (and ($IsBox |x0#0@@0| |#$T0@@15|) ($IsBox |x1#0@@0| |#$T1@@15|)) (|Set#Equal| (Reads2 |#$T0@@15| |#$T1@@15| |#$R@@15| $OneHeap |f#0@@0| |x0#0@@0| |x1#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |9306|
))))
 :qid |unknown.0:0|
 :skolemid |9307|
 :pattern ( ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc2 |#$T0@@15| |#$T1@@15| |#$R@@15|)))
)))
(assert (forall ((LinkedList.List$T@@1 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@1))  (and ($IsBox |a#2#0#0@@0| LinkedList.List$T@@1) ($Is DatatypeTypeType |a#2#1#0@@0| (Tclass.LinkedList.List LinkedList.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |9585|
 :pattern ( ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@1)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ($h@@33 T@U) ) (!  (=> ($IsGoodHeap $h@@33) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@33)  (and ($IsAllocBox |a#2#0#0@@1| |_System._tuple#2$T0@@1| $h@@33) ($IsAllocBox |a#2#1#0@@1| |_System._tuple#2$T1@@1| $h@@33))))
 :qid |unknown.0:0|
 :skolemid |9246|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@33))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) (heap T@U) (h@@0 T@U) (r T@U) (rd T@U) (bx0 T@U) (bx1 T@U) (bx@@8 T@U) ) (! (= (|Set#IsMember| (Reads2 t0@@1 t1@@1 t2@@0 heap (Handle2 h@@0 r rd) bx0 bx1) bx@@8) (|Set#IsMember| (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType SetType rd heap bx0 bx1) bx@@8))
 :qid |unknown.0:0|
 :skolemid |9275|
 :pattern ( (|Set#IsMember| (Reads2 t0@@1 t1@@1 t2@@0 heap (Handle2 h@@0 r rd) bx0 bx1) bx@@8))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (|c#0@@14| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|Translator.__default.translateProg#canCall| $h0 |c#0@@14|) (and ($Is refType |c#0@@14| Tclass.CSharpAST.Prog) ($IsAlloc refType |c#0@@14| Tclass.CSharpAST.Prog $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@13 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@13) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@13) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@13) $f)))
 :qid |unknown.0:0|
 :skolemid |9827|
)) (= (Translator.__default.translateProg $h0 |c#0@@14|) (Translator.__default.translateProg $h1 |c#0@@14|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9828|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (Translator.__default.translateProg $h1 |c#0@@14|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@2) (= (DatatypeCtorId d@@2) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |9238|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (DafnyAST.BinOp.Add_q d@@3) (= (DatatypeCtorId d@@3) |##DafnyAST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |9446|
 :pattern ( (DafnyAST.BinOp.Add_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (DafnyAST.BinOp.Sub_q d@@4) (= (DatatypeCtorId d@@4) |##DafnyAST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |9449|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (DafnyAST.Expr.Const_q d@@5) (= (DatatypeCtorId d@@5) |##DafnyAST.Expr.Const|))
 :qid |unknown.0:0|
 :skolemid |9458|
 :pattern ( (DafnyAST.Expr.Const_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (DafnyAST.Expr.Var_q d@@6) (= (DatatypeCtorId d@@6) |##DafnyAST.Expr.Var|))
 :qid |unknown.0:0|
 :skolemid |9466|
 :pattern ( (DafnyAST.Expr.Var_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (DafnyAST.Expr.Op_q d@@7) (= (DatatypeCtorId d@@7) |##DafnyAST.Expr.Op|))
 :qid |unknown.0:0|
 :skolemid |9476|
 :pattern ( (DafnyAST.Expr.Op_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (DafnyAST.Stmt.Skip_q d@@8) (= (DatatypeCtorId d@@8) |##DafnyAST.Stmt.Skip|))
 :qid |unknown.0:0|
 :skolemid |9497|
 :pattern ( (DafnyAST.Stmt.Skip_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (DafnyAST.Stmt.Print_q d@@9) (= (DatatypeCtorId d@@9) |##DafnyAST.Stmt.Print|))
 :qid |unknown.0:0|
 :skolemid |9500|
 :pattern ( (DafnyAST.Stmt.Print_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (DafnyAST.Stmt.Assign_q d@@10) (= (DatatypeCtorId d@@10) |##DafnyAST.Stmt.Assign|))
 :qid |unknown.0:0|
 :skolemid |9509|
 :pattern ( (DafnyAST.Stmt.Assign_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (DafnyAST.Stmt.Seq_q d@@11) (= (DatatypeCtorId d@@11) |##DafnyAST.Stmt.Seq|))
 :qid |unknown.0:0|
 :skolemid |9522|
 :pattern ( (DafnyAST.Stmt.Seq_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (DafnyAST.InterpResult.InterpResult_q d@@12) (= (DatatypeCtorId d@@12) |##DafnyAST.InterpResult.InterpResult|))
 :qid |unknown.0:0|
 :skolemid |9542|
 :pattern ( (DafnyAST.InterpResult.InterpResult_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (LinkedList.List.Cons_q d@@13) (= (DatatypeCtorId d@@13) |##LinkedList.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |9582|
 :pattern ( (LinkedList.List.Cons_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (LinkedList.List.Nil_q d@@14) (= (DatatypeCtorId d@@14) |##LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |9594|
 :pattern ( (LinkedList.List.Nil_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (StackMachine.Instr.PushConst_q d@@15) (= (DatatypeCtorId d@@15) |##StackMachine.Instr.PushConst|))
 :qid |unknown.0:0|
 :skolemid |9620|
 :pattern ( (StackMachine.Instr.PushConst_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (StackMachine.Instr.PushVar_q d@@16) (= (DatatypeCtorId d@@16) |##StackMachine.Instr.PushVar|))
 :qid |unknown.0:0|
 :skolemid |9628|
 :pattern ( (StackMachine.Instr.PushVar_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (StackMachine.Instr.PopAdd_q d@@17) (= (DatatypeCtorId d@@17) |##StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |9637|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (StackMachine.Instr.PopSub_q d@@18) (= (DatatypeCtorId d@@18) |##StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |9639|
 :pattern ( (StackMachine.Instr.PopSub_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (! (= (StackMachine.Instr.PopPrint_q d@@19) (= (DatatypeCtorId d@@19) |##StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |9641|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (! (= (StackMachine.Instr.PopVar_q d@@20) (= (DatatypeCtorId d@@20) |##StackMachine.Instr.PopVar|))
 :qid |unknown.0:0|
 :skolemid |9644|
 :pattern ( (StackMachine.Instr.PopVar_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (! (= (StackMachine.State.State_q d@@21) (= (DatatypeCtorId d@@21) |##StackMachine.State.State|))
 :qid |unknown.0:0|
 :skolemid |9664|
 :pattern ( (StackMachine.State.State_q d@@21))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |9028|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |9029|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |8815|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (DafnyAST.Expr.Op_q d@@22) (exists ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (= d@@22 (|#DafnyAST.Expr.Op| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
 :qid |Compilerdfy.29:10|
 :skolemid |9477|
)))
 :qid |unknown.0:0|
 :skolemid |9478|
 :pattern ( (DafnyAST.Expr.Op_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (!  (=> (StackMachine.State.State_q d@@23) (exists ((|a#32#0#0| T@U) (|a#32#1#0| T@U) (|a#32#2#0| T@U) ) (! (= d@@23 (|#StackMachine.State.State| |a#32#0#0| |a#32#1#0| |a#32#2#0|))
 :qid |Compilerdfy.206:26|
 :skolemid |9665|
)))
 :qid |unknown.0:0|
 :skolemid |9666|
 :pattern ( (StackMachine.State.State_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@24) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@24 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |9239|
)))
 :qid |unknown.0:0|
 :skolemid |9240|
 :pattern ( (_System.Tuple2.___hMake2_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (DafnyAST.Stmt.Assign_q d@@25) (exists ((|a#41#0#0@@0| T@U) (|a#41#1#0@@0| T@U) ) (! (= d@@25 (|#DafnyAST.Stmt.Assign| |a#41#0#0@@0| |a#41#1#0@@0|))
 :qid |Compilerdfy.37:14|
 :skolemid |9510|
)))
 :qid |unknown.0:0|
 :skolemid |9511|
 :pattern ( (DafnyAST.Stmt.Assign_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (DafnyAST.Stmt.Seq_q d@@26) (exists ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= d@@26 (|#DafnyAST.Stmt.Seq| |a#50#0#0| |a#50#1#0|))
 :qid |Compilerdfy.38:11|
 :skolemid |9523|
)))
 :qid |unknown.0:0|
 :skolemid |9524|
 :pattern ( (DafnyAST.Stmt.Seq_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> (DafnyAST.InterpResult.InterpResult_q d@@27) (exists ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (= d@@27 (|#DafnyAST.InterpResult.InterpResult| |a#58#0#0| |a#58#1#0|))
 :qid |Compilerdfy.55:40|
 :skolemid |9543|
)))
 :qid |unknown.0:0|
 :skolemid |9544|
 :pattern ( (DafnyAST.InterpResult.InterpResult_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (LinkedList.List.Cons_q d@@28) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@28 (|#LinkedList.List.Cons| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |Compilerdfy.168:12|
 :skolemid |9583|
)))
 :qid |unknown.0:0|
 :skolemid |9584|
 :pattern ( (LinkedList.List.Cons_q d@@28))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> (DafnyAST.BinOp.Add_q d@@29) (= d@@29 |#DafnyAST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |9447|
 :pattern ( (DafnyAST.BinOp.Add_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> (DafnyAST.BinOp.Sub_q d@@30) (= d@@30 |#DafnyAST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |9450|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@30))
)))
(assert (forall ((d@@31 T@U) ) (!  (=> (DafnyAST.Stmt.Skip_q d@@31) (= d@@31 |#DafnyAST.Stmt.Skip|))
 :qid |unknown.0:0|
 :skolemid |9498|
 :pattern ( (DafnyAST.Stmt.Skip_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> (LinkedList.List.Nil_q d@@32) (= d@@32 |#LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |9595|
 :pattern ( (LinkedList.List.Nil_q d@@32))
)))
(assert (forall ((d@@33 T@U) ) (!  (=> (StackMachine.Instr.PopAdd_q d@@33) (= d@@33 |#StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |9638|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (StackMachine.Instr.PopSub_q d@@34) (= d@@34 |#StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |9640|
 :pattern ( (StackMachine.Instr.PopSub_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> (StackMachine.Instr.PopPrint_q d@@35) (= d@@35 |#StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |9642|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@35))
)))
(assert (forall ((v T@U) (t0@@2 T@U) ) (! (= ($Is SetType v (TSet t0@@2)) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v bx@@9) ($IsBox bx@@9 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |8835|
 :pattern ( (|Set#IsMember| v bx@@9))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |8836|
 :pattern ( ($Is SetType v (TSet t0@@2)))
)))
(assert (forall ((f T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f ly) (MapType0Select LayerTypeType A f ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |8890|
 :pattern ( (AtLayer A f ly))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (DafnyAST.Expr.Const_q d@@36) (exists ((|a#9#0#0| Int) ) (! (= d@@36 (|#DafnyAST.Expr.Const| |a#9#0#0|))
 :qid |Compilerdfy.27:13|
 :skolemid |9459|
)))
 :qid |unknown.0:0|
 :skolemid |9460|
 :pattern ( (DafnyAST.Expr.Const_q d@@36))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> (DafnyAST.Expr.Var_q d@@37) (exists ((|a#14#0#0| T@U) ) (! (= d@@37 (|#DafnyAST.Expr.Var| |a#14#0#0|))
 :qid |Compilerdfy.28:11|
 :skolemid |9467|
)))
 :qid |unknown.0:0|
 :skolemid |9468|
 :pattern ( (DafnyAST.Expr.Var_q d@@37))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> (DafnyAST.Stmt.Print_q d@@38) (exists ((|a#35#0#0@@0| T@U) ) (! (= d@@38 (|#DafnyAST.Stmt.Print| |a#35#0#0@@0|))
 :qid |Compilerdfy.36:13|
 :skolemid |9501|
)))
 :qid |unknown.0:0|
 :skolemid |9502|
 :pattern ( (DafnyAST.Stmt.Print_q d@@38))
)))
(assert (forall ((d@@39 T@U) ) (!  (=> (StackMachine.Instr.PushConst_q d@@39) (exists ((|a#1#0#0@@1| Int) ) (! (= d@@39 (|#StackMachine.Instr.PushConst| |a#1#0#0@@1|))
 :qid |Compilerdfy.192:17|
 :skolemid |9621|
)))
 :qid |unknown.0:0|
 :skolemid |9622|
 :pattern ( (StackMachine.Instr.PushConst_q d@@39))
)))
(assert (forall ((d@@40 T@U) ) (!  (=> (StackMachine.Instr.PushVar_q d@@40) (exists ((|a#6#0#0| T@U) ) (! (= d@@40 (|#StackMachine.Instr.PushVar| |a#6#0#0|))
 :qid |Compilerdfy.193:15|
 :skolemid |9629|
)))
 :qid |unknown.0:0|
 :skolemid |9630|
 :pattern ( (StackMachine.Instr.PushVar_q d@@40))
)))
(assert (forall ((d@@41 T@U) ) (!  (=> (StackMachine.Instr.PopVar_q d@@41) (exists ((|a#25#0#0| T@U) ) (! (= d@@41 (|#StackMachine.Instr.PopVar| |a#25#0#0|))
 :qid |Compilerdfy.197:14|
 :skolemid |9645|
)))
 :qid |unknown.0:0|
 :skolemid |9646|
 :pattern ( (StackMachine.Instr.PopVar_q d@@41))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |9013|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((CSharpUtils.ListUtils.FoldR$A T@U) (CSharpUtils.ListUtils.FoldR$B T@U) (|f#0@@1| T@U) (|b0#0| T@U) (|l#0@@2| T@U) ) (!  (=> (or (|CSharpUtils.ListUtils.FoldR#canCall| CSharpUtils.ListUtils.FoldR$A CSharpUtils.ListUtils.FoldR$B |f#0@@1| |b0#0| |l#0@@2|) (and (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc2 CSharpUtils.ListUtils.FoldR$A CSharpUtils.ListUtils.FoldR$B CSharpUtils.ListUtils.FoldR$B)) ($IsBox |b0#0| CSharpUtils.ListUtils.FoldR$B)) ($Is refType |l#0@@2| (Tclass.System_mCollections_mGeneric.List CSharpUtils.ListUtils.FoldR$A)))) ($IsBox (CSharpUtils.ListUtils.FoldR CSharpUtils.ListUtils.FoldR$A CSharpUtils.ListUtils.FoldR$B |f#0@@1| |b0#0| |l#0@@2|) CSharpUtils.ListUtils.FoldR$B))
 :qid |unknown.0:0|
 :skolemid |9726|
 :pattern ( (CSharpUtils.ListUtils.FoldR CSharpUtils.ListUtils.FoldR$A CSharpUtils.ListUtils.FoldR$B |f#0@@1| |b0#0| |l#0@@2|))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| |a#59#0#0| |a#59#1#0|) Tclass.DafnyAST.InterpResult)  (and ($Is MapType |a#59#0#0| (TMap (TSeq TChar) TInt)) ($Is SeqType |a#59#1#0| (TSeq TInt))))
 :qid |Compilerdfy.55:40|
 :skolemid |9545|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| |a#59#0#0| |a#59#1#0|) Tclass.DafnyAST.InterpResult))
)))
(assert (forall ((System.Collections.Generic.List$T@@1 T@U) (|c#0@@15| T@U) ) (! (= ($Is refType |c#0@@15| (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@1))  (and ($Is refType |c#0@@15| (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@1)) (or (not (= |c#0@@15| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |9708|
 :pattern ( ($Is refType |c#0@@15| (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@1)))
 :pattern ( ($Is refType |c#0@@15| (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@1)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@1) ($IsAlloc T@@1 v@@1 t@@0 h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |8828|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@1))
)))
(assert (forall ((t0@@3 T@U) (t1@@2 T@U) (t2@@1 T@U) (heap@@0 T@U) (h@@2 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@0 T@U) (bx1@@0 T@U) ) (! (= (Apply2 t0@@3 t1@@2 t2@@1 heap@@0 (Handle2 h@@2 r@@0 rd@@0) bx0@@0 bx1@@0) (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType BoxType h@@2 heap@@0 bx0@@0 bx1@@0))
 :qid |unknown.0:0|
 :skolemid |9273|
 :pattern ( (Apply2 t0@@3 t1@@2 t2@@1 heap@@0 (Handle2 h@@2 r@@0 rd@@0) bx0@@0 bx1@@0))
)))
(assert (forall ((h@@3 T@U) (k@@0 T@U) (bx@@10 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@3 k@@0) (=> ($IsAllocBox bx@@10 t@@1 h@@3) ($IsAllocBox bx@@10 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |8900|
 :pattern ( ($HeapSucc h@@3 k@@0) ($IsAllocBox bx@@10 t@@1 h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@4 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@4) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |8899|
 :pattern ( ($HeapSucc h@@4 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@4))
)))
(assert (forall (($ly@@4 T@U) (|p#0@@0| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg_k#canCall| |p#0@@0| |st#0@@0|) (and ($Is DatatypeTypeType |p#0@@0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |st#0@@0| Tclass.StackMachine.State))) (and (=> (LinkedList.List.Cons_q |p#0@@0|) (let ((|p#14| (LinkedList.List.tl |p#0@@0|)))
(let ((|instr#13| ($Unbox DatatypeTypeType (LinkedList.List.hd |p#0@@0|))))
 (and (|StackMachine.__default.interpProg_k#canCall| |p#14| |st#0@@0|) (|StackMachine.__default.interpInstr#canCall| |instr#13| (StackMachine.__default.interpProg_k $ly@@4 |p#14| |st#0@@0|)))))) (= (StackMachine.__default.interpProg_k ($LS $ly@@4) |p#0@@0| |st#0@@0|) (ite (LinkedList.List.Cons_q |p#0@@0|) (let ((|p#13| (LinkedList.List.tl |p#0@@0|)))
(let ((|instr#12| ($Unbox DatatypeTypeType (LinkedList.List.hd |p#0@@0|))))
(StackMachine.__default.interpInstr |instr#12| (StackMachine.__default.interpProg_k $ly@@4 |p#13| |st#0@@0|)))) |st#0@@0|))))
 :qid |Compilerdfy.233:12|
 :skolemid |9612|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $ly@@4) |p#0@@0| |st#0@@0|))
)))
(assert (forall ((|a#33#0#0| T@U) (|a#33#1#0| T@U) (|a#33#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.State.State| |a#33#0#0| |a#33#1#0| |a#33#2#0|) Tclass.StackMachine.State)  (and (and ($Is DatatypeTypeType |a#33#0#0| (Tclass.LinkedList.List TInt)) ($Is MapType |a#33#1#0| (TMap (TSeq TChar) TInt))) ($Is SeqType |a#33#2#0| (TSeq TInt))))
 :qid |Compilerdfy.206:26|
 :skolemid |9667|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.State.State| |a#33#0#0| |a#33#1#0| |a#33#2#0|) Tclass.StackMachine.State))
)))
(assert (forall ((LinkedList.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.LinkedList.List LinkedList.List$T@@2)) Tagclass.LinkedList.List) (= (TagFamily (Tclass.LinkedList.List LinkedList.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |9403|
 :pattern ( (Tclass.LinkedList.List LinkedList.List$T@@2))
)))
(assert (forall ((System.Collections.Generic.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@2)) Tagclass.System_mCollections_mGeneric.List) (= (TagFamily (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |9417|
 :pattern ( (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@2))
)))
(assert (forall ((System.Collections.Generic.List$T@@3 T@U) ) (!  (and (= (Tag (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@3)) Tagclass.System_mCollections_mGeneric.List?) (= (TagFamily (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@3)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |9703|
 :pattern ( (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@3))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) (bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#39#1#0|) bx@@11) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#39#1#0|) bx@@11))) (DtRank (|#StackMachine.State.State| |a#39#0#0| |a#39#1#0| |a#39#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |9676|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#39#1#0|) bx@@11) (|#StackMachine.State.State| |a#39#0#0| |a#39#1#0| |a#39#2#0|))
)))
(assert (forall ((|s#0@@1| T@U) ) (!  (=> (or (|CSharpUtils.StringUtils.StringAsDafnyString#canCall| |s#0@@1|) ($Is refType |s#0@@1| Tclass.System.String)) ($Is SeqType (CSharpUtils.StringUtils.StringAsDafnyString |s#0@@1|) (TSeq TChar)))
 :qid |Compilerdfy.400:27|
 :skolemid |9718|
 :pattern ( (CSharpUtils.StringUtils.StringAsDafnyString |s#0@@1|))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |9015|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((s@@1 T@U) (bx@@12 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s@@1) bx@@12) (U_2_bool (MapType0Select refType boolType s@@1 ($Unbox refType bx@@12))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |8871|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s@@1) bx@@12))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) (bx@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#63#0#0|) bx@@13) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#63#0#0|) bx@@13))) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#63#0#0| |a#63#1#0|))))
 :qid |Compilerdfy.55:40|
 :skolemid |9551|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#63#0#0|) bx@@13) (|#DafnyAST.InterpResult.InterpResult| |a#63#0#0| |a#63#1#0|))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |9135|
 :pattern ( ($IsBox bx@@14 Tclass._System.object?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |9138|
 :pattern ( ($IsBox bx@@15 Tclass._System.object))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass.DafnyAST.Stmt) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@16)) bx@@16) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@16) Tclass.DafnyAST.Stmt)))
 :qid |unknown.0:0|
 :skolemid |9401|
 :pattern ( ($IsBox bx@@16 Tclass.DafnyAST.Stmt))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass.StackMachine.Instr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@17)) bx@@17) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@17) Tclass.StackMachine.Instr)))
 :qid |unknown.0:0|
 :skolemid |9402|
 :pattern ( ($IsBox bx@@17 Tclass.StackMachine.Instr))
)))
(assert (forall ((bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 Tclass.CSharpAST.Prog) (and (= ($Box refType ($Unbox refType bx@@18)) bx@@18) ($Is refType ($Unbox refType bx@@18) Tclass.CSharpAST.Prog)))
 :qid |unknown.0:0|
 :skolemid |9415|
 :pattern ( ($IsBox bx@@18 Tclass.CSharpAST.Prog))
)))
(assert (forall ((bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 Tclass.System.String) (and (= ($Box refType ($Unbox refType bx@@19)) bx@@19) ($Is refType ($Unbox refType bx@@19) Tclass.System.String)))
 :qid |unknown.0:0|
 :skolemid |9416|
 :pattern ( ($IsBox bx@@19 Tclass.System.String))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass.DafnyAST.Expr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@20)) bx@@20) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@20) Tclass.DafnyAST.Expr)))
 :qid |unknown.0:0|
 :skolemid |9430|
 :pattern ( ($IsBox bx@@20 Tclass.DafnyAST.Expr))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass.DafnyAST.InterpResult) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@21)) bx@@21) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@21) Tclass.DafnyAST.InterpResult)))
 :qid |unknown.0:0|
 :skolemid |9437|
 :pattern ( ($IsBox bx@@21 Tclass.DafnyAST.InterpResult))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass.DafnyAST.BinOp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@22)) bx@@22) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@22) Tclass.DafnyAST.BinOp)))
 :qid |unknown.0:0|
 :skolemid |9448|
 :pattern ( ($IsBox bx@@22 Tclass.DafnyAST.BinOp))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass.StackMachine.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@23)) bx@@23) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@23) Tclass.StackMachine.State)))
 :qid |unknown.0:0|
 :skolemid |9603|
 :pattern ( ($IsBox bx@@23 Tclass.StackMachine.State))
)))
(assert (forall ((bx@@24 T@U) ) (!  (=> ($IsBox bx@@24 Tclass.NativeTypes.nativeint) (and (= ($Box intType ($Unbox intType bx@@24)) bx@@24) ($Is intType ($Unbox intType bx@@24) Tclass.NativeTypes.nativeint)))
 :qid |unknown.0:0|
 :skolemid |9700|
 :pattern ( ($IsBox bx@@24 Tclass.NativeTypes.nativeint))
)))
(assert (forall ((bx@@25 T@U) ) (!  (=> ($IsBox bx@@25 Tclass.System.String?) (and (= ($Box refType ($Unbox refType bx@@25)) bx@@25) ($Is refType ($Unbox refType bx@@25) Tclass.System.String?)))
 :qid |unknown.0:0|
 :skolemid |9710|
 :pattern ( ($IsBox bx@@25 Tclass.System.String?))
)))
(assert (forall ((bx@@26 T@U) ) (!  (=> ($IsBox bx@@26 Tclass.CSharpAST.Op____BinOp?) (and (= ($Box refType ($Unbox refType bx@@26)) bx@@26) ($Is refType ($Unbox refType bx@@26) Tclass.CSharpAST.Op____BinOp?)))
 :qid |unknown.0:0|
 :skolemid |9732|
 :pattern ( ($IsBox bx@@26 Tclass.CSharpAST.Op____BinOp?))
)))
(assert (forall ((bx@@27 T@U) ) (!  (=> ($IsBox bx@@27 Tclass.CSharpAST.Op____BinOp) (and (= ($Box refType ($Unbox refType bx@@27)) bx@@27) ($Is refType ($Unbox refType bx@@27) Tclass.CSharpAST.Op____BinOp)))
 :qid |unknown.0:0|
 :skolemid |9735|
 :pattern ( ($IsBox bx@@27 Tclass.CSharpAST.Op____BinOp))
)))
(assert (forall ((bx@@28 T@U) ) (!  (=> ($IsBox bx@@28 Tclass.CSharpAST.Expr?) (and (= ($Box refType ($Unbox refType bx@@28)) bx@@28) ($Is refType ($Unbox refType bx@@28) Tclass.CSharpAST.Expr?)))
 :qid |unknown.0:0|
 :skolemid |9742|
 :pattern ( ($IsBox bx@@28 Tclass.CSharpAST.Expr?))
)))
(assert (forall ((bx@@29 T@U) ) (!  (=> ($IsBox bx@@29 Tclass.CSharpAST.Expr) (and (= ($Box refType ($Unbox refType bx@@29)) bx@@29) ($Is refType ($Unbox refType bx@@29) Tclass.CSharpAST.Expr)))
 :qid |unknown.0:0|
 :skolemid |9745|
 :pattern ( ($IsBox bx@@29 Tclass.CSharpAST.Expr))
)))
(assert (forall ((bx@@30 T@U) ) (!  (=> ($IsBox bx@@30 Tclass.CSharpAST.Const?) (and (= ($Box refType ($Unbox refType bx@@30)) bx@@30) ($Is refType ($Unbox refType bx@@30) Tclass.CSharpAST.Const?)))
 :qid |unknown.0:0|
 :skolemid |9748|
 :pattern ( ($IsBox bx@@30 Tclass.CSharpAST.Const?))
)))
(assert (forall ((bx@@31 T@U) ) (!  (=> ($IsBox bx@@31 Tclass.CSharpAST.Const) (and (= ($Box refType ($Unbox refType bx@@31)) bx@@31) ($Is refType ($Unbox refType bx@@31) Tclass.CSharpAST.Const)))
 :qid |unknown.0:0|
 :skolemid |9753|
 :pattern ( ($IsBox bx@@31 Tclass.CSharpAST.Const))
)))
(assert (forall ((bx@@32 T@U) ) (!  (=> ($IsBox bx@@32 Tclass.CSharpAST.Var?) (and (= ($Box refType ($Unbox refType bx@@32)) bx@@32) ($Is refType ($Unbox refType bx@@32) Tclass.CSharpAST.Var?)))
 :qid |unknown.0:0|
 :skolemid |9756|
 :pattern ( ($IsBox bx@@32 Tclass.CSharpAST.Var?))
)))
(assert (forall ((bx@@33 T@U) ) (!  (=> ($IsBox bx@@33 Tclass.CSharpAST.Var) (and (= ($Box refType ($Unbox refType bx@@33)) bx@@33) ($Is refType ($Unbox refType bx@@33) Tclass.CSharpAST.Var)))
 :qid |unknown.0:0|
 :skolemid |9761|
 :pattern ( ($IsBox bx@@33 Tclass.CSharpAST.Var))
)))
(assert (forall ((bx@@34 T@U) ) (!  (=> ($IsBox bx@@34 Tclass.CSharpAST.Op?) (and (= ($Box refType ($Unbox refType bx@@34)) bx@@34) ($Is refType ($Unbox refType bx@@34) Tclass.CSharpAST.Op?)))
 :qid |unknown.0:0|
 :skolemid |9764|
 :pattern ( ($IsBox bx@@34 Tclass.CSharpAST.Op?))
)))
(assert (forall ((bx@@35 T@U) ) (!  (=> ($IsBox bx@@35 Tclass.CSharpAST.Op) (and (= ($Box refType ($Unbox refType bx@@35)) bx@@35) ($Is refType ($Unbox refType bx@@35) Tclass.CSharpAST.Op)))
 :qid |unknown.0:0|
 :skolemid |9773|
 :pattern ( ($IsBox bx@@35 Tclass.CSharpAST.Op))
)))
(assert (forall ((bx@@36 T@U) ) (!  (=> ($IsBox bx@@36 Tclass.CSharpAST.Stmt?) (and (= ($Box refType ($Unbox refType bx@@36)) bx@@36) ($Is refType ($Unbox refType bx@@36) Tclass.CSharpAST.Stmt?)))
 :qid |unknown.0:0|
 :skolemid |9776|
 :pattern ( ($IsBox bx@@36 Tclass.CSharpAST.Stmt?))
)))
(assert (forall ((bx@@37 T@U) ) (!  (=> ($IsBox bx@@37 Tclass.CSharpAST.Stmt) (and (= ($Box refType ($Unbox refType bx@@37)) bx@@37) ($Is refType ($Unbox refType bx@@37) Tclass.CSharpAST.Stmt)))
 :qid |unknown.0:0|
 :skolemid |9779|
 :pattern ( ($IsBox bx@@37 Tclass.CSharpAST.Stmt))
)))
(assert (forall ((bx@@38 T@U) ) (!  (=> ($IsBox bx@@38 Tclass.CSharpAST.Print?) (and (= ($Box refType ($Unbox refType bx@@38)) bx@@38) ($Is refType ($Unbox refType bx@@38) Tclass.CSharpAST.Print?)))
 :qid |unknown.0:0|
 :skolemid |9782|
 :pattern ( ($IsBox bx@@38 Tclass.CSharpAST.Print?))
)))
(assert (forall ((bx@@39 T@U) ) (!  (=> ($IsBox bx@@39 Tclass.CSharpAST.Print) (and (= ($Box refType ($Unbox refType bx@@39)) bx@@39) ($Is refType ($Unbox refType bx@@39) Tclass.CSharpAST.Print)))
 :qid |unknown.0:0|
 :skolemid |9787|
 :pattern ( ($IsBox bx@@39 Tclass.CSharpAST.Print))
)))
(assert (forall ((bx@@40 T@U) ) (!  (=> ($IsBox bx@@40 Tclass.CSharpAST.Assign?) (and (= ($Box refType ($Unbox refType bx@@40)) bx@@40) ($Is refType ($Unbox refType bx@@40) Tclass.CSharpAST.Assign?)))
 :qid |unknown.0:0|
 :skolemid |9790|
 :pattern ( ($IsBox bx@@40 Tclass.CSharpAST.Assign?))
)))
(assert (forall ((bx@@41 T@U) ) (!  (=> ($IsBox bx@@41 Tclass.CSharpAST.Assign) (and (= ($Box refType ($Unbox refType bx@@41)) bx@@41) ($Is refType ($Unbox refType bx@@41) Tclass.CSharpAST.Assign)))
 :qid |unknown.0:0|
 :skolemid |9797|
 :pattern ( ($IsBox bx@@41 Tclass.CSharpAST.Assign))
)))
(assert (forall ((bx@@42 T@U) ) (!  (=> ($IsBox bx@@42 Tclass.CSharpAST.Prog?) (and (= ($Box refType ($Unbox refType bx@@42)) bx@@42) ($Is refType ($Unbox refType bx@@42) Tclass.CSharpAST.Prog?)))
 :qid |unknown.0:0|
 :skolemid |9800|
 :pattern ( ($IsBox bx@@42 Tclass.CSharpAST.Prog?))
)))
(assert (forall ((System.Collections.Generic.List$T@@4 T@U) ($o@@14 T@U) ) (! (= ($Is refType $o@@14 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@4))  (or (= $o@@14 null) (= (dtype $o@@14) (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@4))))
 :qid |unknown.0:0|
 :skolemid |9706|
 :pattern ( ($Is refType $o@@14 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@4)))
)))
(assert (forall ((|a#36#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Stmt.Print| |a#36#0#0|) Tclass.DafnyAST.Stmt) ($Is DatatypeTypeType |a#36#0#0| Tclass.DafnyAST.Expr))
 :qid |Compilerdfy.36:13|
 :skolemid |9503|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Stmt.Print| |a#36#0#0|) Tclass.DafnyAST.Stmt))
)))
(assert (forall ((|c#0@@16| T@U) ) (! (= ($Is refType |c#0@@16| Tclass._System.object)  (and ($Is refType |c#0@@16| Tclass._System.object?) (or (not (= |c#0@@16| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |9139|
 :pattern ( ($Is refType |c#0@@16| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@16| Tclass._System.object?))
)))
(assert (forall ((|c#0@@17| T@U) ) (! (= ($Is refType |c#0@@17| Tclass.System.String)  (and ($Is refType |c#0@@17| Tclass.System.String?) (or (not (= |c#0@@17| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |9713|
 :pattern ( ($Is refType |c#0@@17| Tclass.System.String))
 :pattern ( ($Is refType |c#0@@17| Tclass.System.String?))
)))
(assert (forall ((|c#0@@18| T@U) ) (! (= ($Is refType |c#0@@18| Tclass.CSharpAST.Op____BinOp)  (and ($Is refType |c#0@@18| Tclass.CSharpAST.Op____BinOp?) (or (not (= |c#0@@18| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |9740|
 :pattern ( ($Is refType |c#0@@18| Tclass.CSharpAST.Op____BinOp))
 :pattern ( ($Is refType |c#0@@18| Tclass.CSharpAST.Op____BinOp?))
)))
(assert (forall ((|c#0@@19| T@U) ) (! (= ($Is refType |c#0@@19| Tclass.CSharpAST.Expr)  (and ($Is refType |c#0@@19| Tclass.CSharpAST.Expr?) (or (not (= |c#0@@19| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |9746|
 :pattern ( ($Is refType |c#0@@19| Tclass.CSharpAST.Expr))
 :pattern ( ($Is refType |c#0@@19| Tclass.CSharpAST.Expr?))
)))
(assert (forall ((|c#0@@20| T@U) ) (! (= ($Is refType |c#0@@20| Tclass.CSharpAST.Const)  (and ($Is refType |c#0@@20| Tclass.CSharpAST.Const?) (or (not (= |c#0@@20| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |9754|
 :pattern ( ($Is refType |c#0@@20| Tclass.CSharpAST.Const))
 :pattern ( ($Is refType |c#0@@20| Tclass.CSharpAST.Const?))
)))
(assert (forall ((|c#0@@21| T@U) ) (! (= ($Is refType |c#0@@21| Tclass.CSharpAST.Var)  (and ($Is refType |c#0@@21| Tclass.CSharpAST.Var?) (or (not (= |c#0@@21| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |9762|
 :pattern ( ($Is refType |c#0@@21| Tclass.CSharpAST.Var))
 :pattern ( ($Is refType |c#0@@21| Tclass.CSharpAST.Var?))
)))
(assert (forall ((|c#0@@22| T@U) ) (! (= ($Is refType |c#0@@22| Tclass.CSharpAST.Op)  (and ($Is refType |c#0@@22| Tclass.CSharpAST.Op?) (or (not (= |c#0@@22| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |9774|
 :pattern ( ($Is refType |c#0@@22| Tclass.CSharpAST.Op))
 :pattern ( ($Is refType |c#0@@22| Tclass.CSharpAST.Op?))
)))
(assert (forall ((|c#0@@23| T@U) ) (! (= ($Is refType |c#0@@23| Tclass.CSharpAST.Stmt)  (and ($Is refType |c#0@@23| Tclass.CSharpAST.Stmt?) (or (not (= |c#0@@23| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |9780|
 :pattern ( ($Is refType |c#0@@23| Tclass.CSharpAST.Stmt))
 :pattern ( ($Is refType |c#0@@23| Tclass.CSharpAST.Stmt?))
)))
(assert (forall ((|c#0@@24| T@U) ) (! (= ($Is refType |c#0@@24| Tclass.CSharpAST.Print)  (and ($Is refType |c#0@@24| Tclass.CSharpAST.Print?) (or (not (= |c#0@@24| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |9788|
 :pattern ( ($Is refType |c#0@@24| Tclass.CSharpAST.Print))
 :pattern ( ($Is refType |c#0@@24| Tclass.CSharpAST.Print?))
)))
(assert (forall ((|c#0@@25| T@U) ) (! (= ($Is refType |c#0@@25| Tclass.CSharpAST.Assign)  (and ($Is refType |c#0@@25| Tclass.CSharpAST.Assign?) (or (not (= |c#0@@25| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |9798|
 :pattern ( ($Is refType |c#0@@25| Tclass.CSharpAST.Assign))
 :pattern ( ($Is refType |c#0@@25| Tclass.CSharpAST.Assign?))
)))
(assert (forall ((|c#0@@26| T@U) ) (! (= ($Is refType |c#0@@26| Tclass.CSharpAST.Prog)  (and ($Is refType |c#0@@26| Tclass.CSharpAST.Prog?) (or (not (= |c#0@@26| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |9805|
 :pattern ( ($Is refType |c#0@@26| Tclass.CSharpAST.Prog))
 :pattern ( ($Is refType |c#0@@26| Tclass.CSharpAST.Prog?))
)))
(assert (forall ((s@@2 T@U) (i@@5 Int) (v@@3 T@U) ) (!  (and (=> (= i@@5 (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i@@5) v@@3)) (=> (or (not (= i@@5 (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i@@5) (|Seq#Index| s@@2 i@@5))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |9014|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@3) i@@5))
)))
(assert (= StackMachine.__default.EmptyState (Lit DatatypeTypeType (|#StackMachine.State.State| (Lit DatatypeTypeType |#LinkedList.List.Nil|) (Lit MapType |Map#Empty|) (Lit SeqType |Seq#Empty|)))))
(assert (forall (($ly@@5 T@U) (|e#0| T@U) (|ctx#0@@1| T@U) ) (! (= (DafnyAST.__default.interpExpr ($LS $ly@@5) |e#0| |ctx#0@@1|) (DafnyAST.__default.interpExpr $ly@@5 |e#0| |ctx#0@@1|))
 :qid |Compilerdfy.44:12|
 :skolemid |9428|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@5) |e#0| |ctx#0@@1|))
)))
(assert (forall (($ly@@6 T@U) (|s#0@@2| T@U) (|ctx#0@@2| T@U) ) (! (= (DafnyAST.__default.interpStmt_k ($LS $ly@@6) |s#0@@2| |ctx#0@@2|) (DafnyAST.__default.interpStmt_k $ly@@6 |s#0@@2| |ctx#0@@2|))
 :qid |Compilerdfy.57:12|
 :skolemid |9435|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $ly@@6) |s#0@@2| |ctx#0@@2|))
)))
(assert (forall (($ly@@7 T@U) (|p#0@@1| T@U) (|st#0@@1| T@U) ) (! (= (StackMachine.__default.interpProg_k ($LS $ly@@7) |p#0@@1| |st#0@@1|) (StackMachine.__default.interpProg_k $ly@@7 |p#0@@1| |st#0@@1|))
 :qid |Compilerdfy.233:12|
 :skolemid |9608|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $ly@@7) |p#0@@1| |st#0@@1|))
)))
(assert (forall (($ly@@8 T@U) ($Heap@@2 T@U) (|c#0@@27| T@U) ) (! (= (Translator.__default.translateExpr ($LS $ly@@8) $Heap@@2 |c#0@@27|) (Translator.__default.translateExpr $ly@@8 $Heap@@2 |c#0@@27|))
 :qid |Compilerdfy.487:28|
 :skolemid |9813|
 :pattern ( (Translator.__default.translateExpr ($LS $ly@@8) $Heap@@2 |c#0@@27|))
)))
(assert (forall (($ly@@9 T@U) ($Heap@@3 T@U) (|c#0@@28| T@U) ) (! (= (Translator.__default.translateStmt ($LS $ly@@9) $Heap@@3 |c#0@@28|) (Translator.__default.translateStmt $ly@@9 $Heap@@3 |c#0@@28|))
 :qid |Compilerdfy.505:28|
 :skolemid |9820|
 :pattern ( (Translator.__default.translateStmt ($LS $ly@@9) $Heap@@3 |c#0@@28|))
)))
(assert (forall ((f@@0 T@U) (t0@@4 T@U) (t1@@3 T@U) (t2@@2 T@U) (h@@5 T@U) ) (!  (=> ($IsGoodHeap h@@5) (= ($IsAlloc HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@4 t1@@3 t2@@2) h@@5) (forall ((bx0@@1 T@U) (bx1@@1 T@U) ) (!  (=> (and (and (and ($IsBox bx0@@1 t0@@4) ($IsAllocBox bx0@@1 t0@@4 h@@5)) (and ($IsBox bx1@@1 t1@@3) ($IsAllocBox bx1@@1 t1@@3 h@@5))) (Requires2 t0@@4 t1@@3 t2@@2 h@@5 f@@0 bx0@@1 bx1@@1)) (forall ((r@@1 T@U) ) (!  (=> (and (or (not (= r@@1 null)) (not true)) (|Set#IsMember| (Reads2 t0@@4 t1@@3 t2@@2 h@@5 f@@0 bx0@@1 bx1@@1) ($Box refType r@@1))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r@@1) alloc))))
 :qid |unknown.0:0|
 :skolemid |9296|
 :pattern ( (|Set#IsMember| (Reads2 t0@@4 t1@@3 t2@@2 h@@5 f@@0 bx0@@1 bx1@@1) ($Box refType r@@1)))
)))
 :qid |unknown.0:0|
 :skolemid |9297|
 :pattern ( (Apply2 t0@@4 t1@@3 t2@@2 h@@5 f@@0 bx0@@1 bx1@@1))
 :pattern ( (Reads2 t0@@4 t1@@3 t2@@2 h@@5 f@@0 bx0@@1 bx1@@1))
))))
 :qid |unknown.0:0|
 :skolemid |9298|
 :pattern ( ($IsAlloc HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@4 t1@@3 t2@@2) h@@5))
)))
(assert (forall (($ly@@10 T@U) (|e#0@@0| T@U) (|ctx#0@@3| T@U) ) (!  (=> (or (|DafnyAST.__default.interpExpr#canCall| (Lit DatatypeTypeType |e#0@@0|) (Lit MapType |ctx#0@@3|)) (and ($Is DatatypeTypeType |e#0@@0| Tclass.DafnyAST.Expr) ($Is MapType |ctx#0@@3| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@0|))))))) (let ((|e2#38| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@0|)))))
(let ((|e1#38| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@0|)))))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#38| (Lit MapType |ctx#0@@3|)) (|DafnyAST.__default.interpExpr#canCall| |e2#38| (Lit MapType |ctx#0@@3|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@0|)))))))) (let ((|e2#39| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@0|)))))
(let ((|e1#39| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@0|)))))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#39| (Lit MapType |ctx#0@@3|)) (|DafnyAST.__default.interpExpr#canCall| |e2#39| (Lit MapType |ctx#0@@3|))))))))) (= (DafnyAST.__default.interpExpr ($LS $ly@@10) (Lit DatatypeTypeType |e#0@@0|) (Lit MapType |ctx#0@@3|)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@0|)) (let ((|n#18| (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType |e#0@@0|)))))
|n#18|) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@0|)) (let ((|v#18@@0| (Lit SeqType (DafnyAST.Expr.v (Lit DatatypeTypeType |e#0@@0|)))))
(ite (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType |ctx#0@@3|))) ($Box SeqType |v#18@@0|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |ctx#0@@3|)) ($Box SeqType |v#18@@0|)))) 0)) (ite (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@0|)))) (let ((|e2#36| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@0|)))))
(let ((|e1#36| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@0|)))))
(LitInt (+ (DafnyAST.__default.interpExpr ($LS $ly@@10) |e1#36| (Lit MapType |ctx#0@@3|)) (DafnyAST.__default.interpExpr ($LS $ly@@10) |e2#36| (Lit MapType |ctx#0@@3|)))))) (let ((|e2#37| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@0|)))))
(let ((|e1#37| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@0|)))))
(LitInt (- (DafnyAST.__default.interpExpr ($LS $ly@@10) |e1#37| (Lit MapType |ctx#0@@3|)) (DafnyAST.__default.interpExpr ($LS $ly@@10) |e2#37| (Lit MapType |ctx#0@@3|))))))))))))
 :qid |Compilerdfy.44:12|
 :weight 3
 :skolemid |9434|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@10) (Lit DatatypeTypeType |e#0@@0|) (Lit MapType |ctx#0@@3|)))
)))
(assert (forall ((|instr#0@@0| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|StackMachine.__default.interpInstr#canCall| |instr#0@@0| |st#0@@2|) (and ($Is DatatypeTypeType |instr#0@@0| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0@@2| Tclass.StackMachine.State))) ($Is DatatypeTypeType (StackMachine.__default.interpInstr |instr#0@@0| |st#0@@2|) Tclass.StackMachine.State))
 :qid |Compilerdfy.210:24|
 :skolemid |9604|
 :pattern ( (StackMachine.__default.interpInstr |instr#0@@0| |st#0@@2|))
)))
(assert (forall (($Heap@@4 T@U) (|c#0@@29| T@U) ) (!  (=> (or (|Translator.__default.translateProg#canCall| $Heap@@4 |c#0@@29|) (and ($IsGoodHeap $Heap@@4) (and ($Is refType |c#0@@29| Tclass.CSharpAST.Prog) ($IsAlloc refType |c#0@@29| Tclass.CSharpAST.Prog $Heap@@4)))) ($Is DatatypeTypeType (Translator.__default.translateProg $Heap@@4 |c#0@@29|) Tclass.DafnyAST.Stmt))
 :qid |Compilerdfy.519:28|
 :skolemid |9829|
 :pattern ( (Translator.__default.translateProg $Heap@@4 |c#0@@29|))
)))
(assert (forall (($o@@15 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@15 Tclass.CSharpAST.Const? $heap) ($IsAlloc refType $o@@15 Tclass.CSharpAST.Expr? $heap))
 :qid |unknown.0:0|
 :skolemid |9848|
 :pattern ( ($IsAlloc refType $o@@15 Tclass.CSharpAST.Const? $heap))
)))
(assert (forall (($o@@16 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@16 Tclass.CSharpAST.Var? $heap@@0) ($IsAlloc refType $o@@16 Tclass.CSharpAST.Expr? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |9852|
 :pattern ( ($IsAlloc refType $o@@16 Tclass.CSharpAST.Var? $heap@@0))
)))
(assert (forall (($o@@17 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@17 Tclass.CSharpAST.Op? $heap@@1) ($IsAlloc refType $o@@17 Tclass.CSharpAST.Expr? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |9856|
 :pattern ( ($IsAlloc refType $o@@17 Tclass.CSharpAST.Op? $heap@@1))
)))
(assert (forall (($o@@18 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@18 Tclass.CSharpAST.Print? $heap@@2) ($IsAlloc refType $o@@18 Tclass.CSharpAST.Stmt? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |9860|
 :pattern ( ($IsAlloc refType $o@@18 Tclass.CSharpAST.Print? $heap@@2))
)))
(assert (forall (($o@@19 T@U) ($heap@@3 T@U) ) (!  (=> ($IsAlloc refType $o@@19 Tclass.CSharpAST.Assign? $heap@@3) ($IsAlloc refType $o@@19 Tclass.CSharpAST.Stmt? $heap@@3))
 :qid |unknown.0:0|
 :skolemid |9864|
 :pattern ( ($IsAlloc refType $o@@19 Tclass.CSharpAST.Assign? $heap@@3))
)))
(assert (forall ((|l#0@@3| Bool) (|$l#12#o#0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#4| |l#0@@3|) |$l#12#o#0|)) |l#0@@3|)
 :qid |unknown.0:0|
 :skolemid |9882|
 :pattern ( (MapType0Select refType boolType (|lambda#4| |l#0@@3|) |$l#12#o#0|))
)))
(assert (forall ((|instr#0@@1| T@U) (|st#0@@3| T@U) ) (!  (=> (or (|StackMachine.__default.interpInstr#canCall| |instr#0@@1| |st#0@@3|) (and ($Is DatatypeTypeType |instr#0@@1| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0@@3| Tclass.StackMachine.State))) (and (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (StackMachine.Instr.PushConst_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|dt_update_tmp#0#13| |st#0@@3|))
 (and (StackMachine.State.State_q |dt_update_tmp#0#13|) (StackMachine.State.State_q |dt_update_tmp#0#13|))))))) (=> (not (StackMachine.Instr.PushConst_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (StackMachine.Instr.PushVar_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|v#26| (StackMachine.Instr.v ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
 (and (and (StackMachine.State.State_q |st#0@@3|) (=> (|Set#IsMember| (|Map#Domain| (StackMachine.State.regs |st#0@@3|)) ($Box SeqType |v#26|)) (StackMachine.State.State_q |st#0@@3|))) (let ((|dt_update_tmp#1#13| |st#0@@3|))
 (and (StackMachine.State.State_q |dt_update_tmp#1#13|) (StackMachine.State.State_q |dt_update_tmp#1#13|))))))))) (=> (not (StackMachine.Instr.PushVar_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (StackMachine.Instr.PopAdd_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (LinkedList.List.Cons_q (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|dt_update_tmp#2#13| |st#0@@3|))
 (and (StackMachine.State.State_q |dt_update_tmp#2#13|) (StackMachine.State.State_q |dt_update_tmp#2#13|)))))))))))) (=> (not (StackMachine.Instr.PopAdd_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (StackMachine.Instr.PopSub_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (LinkedList.List.Cons_q (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|dt_update_tmp#3#13| |st#0@@3|))
 (and (StackMachine.State.State_q |dt_update_tmp#3#13|) (StackMachine.State.State_q |dt_update_tmp#3#13|)))))))))))) (=> (not (StackMachine.Instr.PopSub_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (StackMachine.Instr.PopPrint_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|dt_update_tmp#4#13| |st#0@@3|))
 (and (StackMachine.State.State_q |st#0@@3|) (StackMachine.State.State_q |dt_update_tmp#4#13|))))))))) (=> (not (StackMachine.Instr.PopPrint_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|dt_update_tmp#5#13| |st#0@@3|))
 (and (StackMachine.State.State_q |st#0@@3|) (StackMachine.State.State_q |dt_update_tmp#5#13|)))))))) (=> (not (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))))))))))) (= (StackMachine.__default.interpInstr |instr#0@@1| |st#0@@3|) (ite (StackMachine.Instr.PushConst_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (let ((|tl#72| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))))
(let ((|n#36| (StackMachine.Instr.n ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
(let ((|dt_update_tmp#0#12| |st#0@@3|))
(let ((|dt_update#stack#0#12| (|#LinkedList.List.Cons| ($Box intType (int_2_U |n#36|)) |tl#72|)))
(|#StackMachine.State.State| |dt_update#stack#0#12| (StackMachine.State.regs |dt_update_tmp#0#12|) (StackMachine.State.output |dt_update_tmp#0#12|)))))) (ite (StackMachine.Instr.PushVar_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (let ((|tl#73| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))))
(let ((|v#24| (StackMachine.Instr.v ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
(let ((|val#12| (ite (|Set#IsMember| (|Map#Domain| (StackMachine.State.regs |st#0@@3|)) ($Box SeqType |v#24|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (StackMachine.State.regs |st#0@@3|)) ($Box SeqType |v#24|)))) 0)))
(let ((|dt_update_tmp#1#12| |st#0@@3|))
(let ((|dt_update#stack#1#12| (|#LinkedList.List.Cons| ($Box intType (int_2_U |val#12|)) |tl#73|)))
(|#StackMachine.State.State| |dt_update#stack#1#12| (StackMachine.State.regs |dt_update_tmp#1#12|) (StackMachine.State.output |dt_update_tmp#1#12|))))))) (ite (StackMachine.Instr.PopAdd_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (ite (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (ite (LinkedList.List.Cons_q (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (let ((|tl#74| (LinkedList.List.tl (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))))))
(let ((|n1#24| (U_2_int ($Unbox intType (LinkedList.List.hd (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))))))))
(let ((|n2#24| (U_2_int ($Unbox intType (LinkedList.List.hd ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))))
(let ((|dt_update_tmp#2#12| |st#0@@3|))
(let ((|dt_update#stack#2#12| (|#LinkedList.List.Cons| ($Box intType (int_2_U (+ |n1#24| |n2#24|))) |tl#74|)))
(|#StackMachine.State.State| |dt_update#stack#2#12| (StackMachine.State.regs |dt_update_tmp#2#12|) (StackMachine.State.output |dt_update_tmp#2#12|))))))) |st#0@@3|) |st#0@@3|) (ite (StackMachine.Instr.PopSub_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (ite (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (ite (LinkedList.List.Cons_q (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (let ((|tl#75| (LinkedList.List.tl (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))))))
(let ((|n1#25| (U_2_int ($Unbox intType (LinkedList.List.hd (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))))))))
(let ((|n2#25| (U_2_int ($Unbox intType (LinkedList.List.hd ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))))
(let ((|dt_update_tmp#3#12| |st#0@@3|))
(let ((|dt_update#stack#3#12| (|#LinkedList.List.Cons| ($Box intType (int_2_U (- |n1#25| |n2#25|))) |tl#75|)))
(|#StackMachine.State.State| |dt_update#stack#3#12| (StackMachine.State.regs |dt_update_tmp#3#12|) (StackMachine.State.output |dt_update_tmp#3#12|))))))) |st#0@@3|) |st#0@@3|) (ite (StackMachine.Instr.PopPrint_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (ite (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (let ((|tl#76| (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
(let ((|n#37| (U_2_int ($Unbox intType (LinkedList.List.hd ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))))
(let ((|dt_update_tmp#4#12| |st#0@@3|))
(let ((|dt_update#output#0#12| (|Seq#Append| (StackMachine.State.output |st#0@@3|) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#37|))))))
(let ((|dt_update#stack#4#12| |tl#76|))
(|#StackMachine.State.State| |dt_update#stack#4#12| (StackMachine.State.regs |dt_update_tmp#4#12|) |dt_update#output#0#12|)))))) |st#0@@3|) (ite (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (let ((|tl#77| (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
(let ((|n#38| (U_2_int ($Unbox intType (LinkedList.List.hd ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))))
(let ((|v#25| (StackMachine.Instr.v ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
(let ((|dt_update_tmp#5#12| |st#0@@3|))
(let ((|dt_update#regs#0#12| (|Map#Build| (StackMachine.State.regs |st#0@@3|) ($Box SeqType |v#25|) ($Box intType (int_2_U |n#38|)))))
(let ((|dt_update#stack#5#12| |tl#77|))
(|#StackMachine.State.State| |dt_update#stack#5#12| |dt_update#regs#0#12| (StackMachine.State.output |dt_update_tmp#5#12|)))))))) |st#0@@3|)))))))))
 :qid |Compilerdfy.210:24|
 :skolemid |9606|
 :pattern ( (StackMachine.__default.interpInstr |instr#0@@1| |st#0@@3|))
)))
(assert (forall ((f@@1 T@U) (t0@@5 T@U) (t1@@4 T@U) (t2@@3 T@U) ) (! (= ($Is HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@5 t1@@4 t2@@3)) (forall ((h@@6 T@U) (bx0@@2 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) (and ($IsBox bx0@@2 t0@@5) ($IsBox bx1@@2 t1@@4))) (Requires2 t0@@5 t1@@4 t2@@3 h@@6 f@@1 bx0@@2 bx1@@2)) ($IsBox (Apply2 t0@@5 t1@@4 t2@@3 h@@6 f@@1 bx0@@2 bx1@@2) t2@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9290|
 :pattern ( (Apply2 t0@@5 t1@@4 t2@@3 h@@6 f@@1 bx0@@2 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |9291|
 :pattern ( ($Is HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@5 t1@@4 t2@@3)))
)))
(assert (forall ((|s#0@@3| T@U) (|ctx#0@@4| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt#canCall| |s#0@@3| |ctx#0@@4|) (and ($Is DatatypeTypeType |s#0@@3| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@4| (TMap (TSeq TChar) TInt)))) (and (and (|DafnyAST.__default.interpStmt_k#canCall| |s#0@@3| |ctx#0@@4|) (DafnyAST.InterpResult.InterpResult_q (DafnyAST.__default.interpStmt_k ($LS $LZ) |s#0@@3| |ctx#0@@4|))) (= (DafnyAST.__default.interpStmt |s#0@@3| |ctx#0@@4|) (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k ($LS $LZ) |s#0@@3| |ctx#0@@4|)))))
 :qid |Compilerdfy.70:23|
 :skolemid |9444|
 :pattern ( (DafnyAST.__default.interpStmt |s#0@@3| |ctx#0@@4|))
)))
(assert (forall ((LinkedList.List$T@@3 T@U) (d@@42 T@U) ) (!  (=> ($Is DatatypeTypeType d@@42 (Tclass.LinkedList.List LinkedList.List$T@@3)) (or (LinkedList.List.Cons_q d@@42) (LinkedList.List.Nil_q d@@42)))
 :qid |unknown.0:0|
 :skolemid |9599|
 :pattern ( (LinkedList.List.Nil_q d@@42) ($Is DatatypeTypeType d@@42 (Tclass.LinkedList.List LinkedList.List$T@@3)))
 :pattern ( (LinkedList.List.Cons_q d@@42) ($Is DatatypeTypeType d@@42 (Tclass.LinkedList.List LinkedList.List$T@@3)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |8939|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |9030|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((t0@@6 T@U) (t1@@5 T@U) (t2@@4 T@U) (heap@@1 T@U) (f@@2 T@U) (bx0@@3 T@U) (bx1@@3 T@U) ) (!  (=> (and ($IsGoodHeap heap@@1) (and (and ($IsBox bx0@@3 t0@@6) ($IsBox bx1@@3 t1@@5)) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@6 t1@@5 t2@@4)))) (= (|Set#Equal| (Reads2 t0@@6 t1@@5 t2@@4 $OneHeap f@@2 bx0@@3 bx1@@3) |Set#Empty|) (|Set#Equal| (Reads2 t0@@6 t1@@5 t2@@4 heap@@1 f@@2 bx0@@3 bx1@@3) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |9288|
 :pattern ( (Reads2 t0@@6 t1@@5 t2@@4 $OneHeap f@@2 bx0@@3 bx1@@3) ($IsGoodHeap heap@@1))
 :pattern ( (Reads2 t0@@6 t1@@5 t2@@4 heap@@1 f@@2 bx0@@3 bx1@@3))
)))
(assert (forall ((d@@43 T@U) ) (!  (=> ($Is DatatypeTypeType d@@43 Tclass.DafnyAST.BinOp) (or (DafnyAST.BinOp.Add_q d@@43) (DafnyAST.BinOp.Sub_q d@@43)))
 :qid |unknown.0:0|
 :skolemid |9453|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.DafnyAST.BinOp))
 :pattern ( (DafnyAST.BinOp.Add_q d@@43) ($Is DatatypeTypeType d@@43 Tclass.DafnyAST.BinOp))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |8906|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((f@@3 T@U) (t0@@7 T@U) (t1@@6 T@U) (t2@@5 T@U) (h@@7 T@U) ) (!  (=> (and ($IsGoodHeap h@@7) ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@7 t1@@6 t2@@5) h@@7)) (forall ((bx0@@4 T@U) (bx1@@4 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@4 t0@@7 h@@7) ($IsAllocBox bx1@@4 t1@@6 h@@7)) (Requires2 t0@@7 t1@@6 t2@@5 h@@7 f@@3 bx0@@4 bx1@@4)) ($IsAllocBox (Apply2 t0@@7 t1@@6 t2@@5 h@@7 f@@3 bx0@@4 bx1@@4) t2@@5 h@@7))
 :qid |unknown.0:0|
 :skolemid |9299|
 :pattern ( (Apply2 t0@@7 t1@@6 t2@@5 h@@7 f@@3 bx0@@4 bx1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |9300|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@7 t1@@6 t2@@5) h@@7))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |8896|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@43 T@U) ) (!  (=> ($IsBox bx@@43 TInt) (and (= ($Box intType ($Unbox intType bx@@43)) bx@@43) ($Is intType ($Unbox intType bx@@43) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |8816|
 :pattern ( ($IsBox bx@@43 TInt))
)))
(assert (= (Ctor charType) 13))
(assert (forall ((bx@@44 T@U) ) (!  (=> ($IsBox bx@@44 TChar) (and (= ($Box charType ($Unbox charType bx@@44)) bx@@44) ($Is charType ($Unbox charType bx@@44) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |8819|
 :pattern ( ($IsBox bx@@44 TChar))
)))
(assert (forall (($ly@@11 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (|c#0@@30| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (or (|Translator.__default.translateExpr#canCall| $h0@@0 |c#0@@30|) (and ($Is refType |c#0@@30| Tclass.CSharpAST.Expr) ($IsAlloc refType |c#0@@30| Tclass.CSharpAST.Expr $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@20 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@20) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@20) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |9815|
)) (= (Translator.__default.translateExpr $ly@@11 $h0@@0 |c#0@@30|) (Translator.__default.translateExpr $ly@@11 $h1@@0 |c#0@@30|))))
 :qid |unknown.0:0|
 :skolemid |9816|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (Translator.__default.translateExpr $ly@@11 $h1@@0 |c#0@@30|))
)))
(assert (forall (($ly@@12 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (|c#0@@31| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (or (|Translator.__default.translateStmt#canCall| $h0@@1 |c#0@@31|) (and ($Is refType |c#0@@31| Tclass.CSharpAST.Stmt) ($IsAlloc refType |c#0@@31| Tclass.CSharpAST.Stmt $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@21 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@21) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@21) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@21) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |9822|
)) (= (Translator.__default.translateStmt $ly@@12 $h0@@1 |c#0@@31|) (Translator.__default.translateStmt $ly@@12 $h1@@1 |c#0@@31|))))
 :qid |unknown.0:0|
 :skolemid |9823|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (Translator.__default.translateStmt $ly@@12 $h1@@1 |c#0@@31|))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |8827|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |9010|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@5 T@U) (t0@@8 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@8) h@@8) (forall ((bx@@45 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@45) ($IsAllocBox bx@@45 t0@@8 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |8856|
 :pattern ( (|Set#IsMember| v@@5 bx@@45))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |8857|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@8) h@@8))
)))
(assert (forall ((t@@4 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@4 u)) t@@4)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |8798|
 :pattern ( (TMap t@@4 u))
)))
(assert (forall ((t@@5 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@5 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |8799|
 :pattern ( (TMap t@@5 u@@0))
)))
(assert (forall ((t@@6 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@6 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |8800|
 :pattern ( (TMap t@@6 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |9237|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |9242|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |9243|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |9252|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |9254|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall ((|a#40#0#0@@0| T@U) (|a#40#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Stmt.Assign| |a#40#0#0@@0| |a#40#1#0@@0|)) |##DafnyAST.Stmt.Assign|)
 :qid |Compilerdfy.37:14|
 :skolemid |9508|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#40#0#0@@0| |a#40#1#0@@0|))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) ) (! (= (DafnyAST.Stmt.v (|#DafnyAST.Stmt.Assign| |a#44#0#0| |a#44#1#0|)) |a#44#0#0|)
 :qid |Compilerdfy.37:14|
 :skolemid |9516|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#44#0#0| |a#44#1#0|))
)))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= (DafnyAST.Stmt.e (|#DafnyAST.Stmt.Assign| |a#47#0#0| |a#47#1#0|)) |a#47#1#0|)
 :qid |Compilerdfy.37:14|
 :skolemid |9519|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#47#0#0| |a#47#1#0|))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Stmt.Seq| |a#49#0#0| |a#49#1#0|)) |##DafnyAST.Stmt.Seq|)
 :qid |Compilerdfy.38:11|
 :skolemid |9521|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#49#0#0| |a#49#1#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= (DafnyAST.Stmt.s1 (|#DafnyAST.Stmt.Seq| |a#53#0#0| |a#53#1#0|)) |a#53#0#0|)
 :qid |Compilerdfy.38:11|
 :skolemid |9529|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (= (DafnyAST.Stmt.s2 (|#DafnyAST.Stmt.Seq| |a#55#0#0| |a#55#1#0|)) |a#55#1#0|)
 :qid |Compilerdfy.38:11|
 :skolemid |9531|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall ((|a#57#0#0| T@U) (|a#57#1#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.InterpResult.InterpResult| |a#57#0#0| |a#57#1#0|)) |##DafnyAST.InterpResult.InterpResult|)
 :qid |Compilerdfy.55:40|
 :skolemid |9541|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| |a#57#0#0| |a#57#1#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) ) (! (= (DafnyAST.InterpResult.ctx (|#DafnyAST.InterpResult.InterpResult| |a#61#0#0| |a#61#1#0|)) |a#61#0#0|)
 :qid |Compilerdfy.55:40|
 :skolemid |9549|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| |a#61#0#0| |a#61#1#0|))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) ) (! (= (DafnyAST.InterpResult.output (|#DafnyAST.InterpResult.InterpResult| |a#64#0#0| |a#64#1#0|)) |a#64#1#0|)
 :qid |Compilerdfy.55:40|
 :skolemid |9552|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| |a#64#0#0| |a#64#1#0|))
)))
(assert (forall ((|a#0#0#0@@0| T@U) (|a#0#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#LinkedList.List.Cons| |a#0#0#0@@0| |a#0#1#0@@0|)) |##LinkedList.List.Cons|)
 :qid |Compilerdfy.168:12|
 :skolemid |9581|
 :pattern ( (|#LinkedList.List.Cons| |a#0#0#0@@0| |a#0#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (LinkedList.List.hd (|#LinkedList.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#0#0@@0|)
 :qid |Compilerdfy.168:12|
 :skolemid |9590|
 :pattern ( (|#LinkedList.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#6#0#0@@1| T@U) (|a#6#1#0@@0| T@U) ) (! (= (LinkedList.List.tl (|#LinkedList.List.Cons| |a#6#0#0@@1| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |Compilerdfy.168:12|
 :skolemid |9592|
 :pattern ( (|#LinkedList.List.Cons| |a#6#0#0@@1| |a#6#1#0@@0|))
)))
(assert (forall (($o@@22 T@U) ) (! ($Is refType $o@@22 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |9136|
 :pattern ( ($Is refType $o@@22 Tclass._System.object?))
)))
(assert (forall ((v@@6 T@U) (t0@@9 T@U) (h@@9 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@9) h@@9) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@6) t0@@9 h@@9))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |8862|
 :pattern ( (|Seq#Index| v@@6 i@@6))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |8863|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@9) h@@9))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) (|a#23#2#0| T@U) ) (! (= (|#DafnyAST.Expr.Op| (Lit DatatypeTypeType |a#23#0#0|) (Lit DatatypeTypeType |a#23#1#0|) (Lit DatatypeTypeType |a#23#2#0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |a#23#0#0| |a#23#1#0| |a#23#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |9483|
 :pattern ( (|#DafnyAST.Expr.Op| (Lit DatatypeTypeType |a#23#0#0|) (Lit DatatypeTypeType |a#23#1#0|) (Lit DatatypeTypeType |a#23#2#0|)))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (|#StackMachine.State.State| (Lit DatatypeTypeType |a#34#0#0|) (Lit MapType |a#34#1#0|) (Lit SeqType |a#34#2#0|)) (Lit DatatypeTypeType (|#StackMachine.State.State| |a#34#0#0| |a#34#1#0| |a#34#2#0|)))
 :qid |Compilerdfy.206:26|
 :skolemid |9671|
 :pattern ( (|#StackMachine.State.State| (Lit DatatypeTypeType |a#34#0#0|) (Lit MapType |a#34#1#0|) (Lit SeqType |a#34#2#0|)))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSet (TSet t@@7)) t@@7)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |8790|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSet t@@8)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |8791|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TSeq (TSeq t@@9)) t@@9)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |8796|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TSeq t@@10)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8797|
 :pattern ( (TSeq t@@10))
)))
(assert (forall ((LinkedList.List$T@@4 T@U) ) (! (= (Tclass.LinkedList.List_0 (Tclass.LinkedList.List LinkedList.List$T@@4)) LinkedList.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |9404|
 :pattern ( (Tclass.LinkedList.List LinkedList.List$T@@4))
)))
(assert (forall ((System.Collections.Generic.List$T@@5 T@U) ) (! (= (Tclass.System_mCollections_mGeneric.List_0 (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@5)) System.Collections.Generic.List$T@@5)
 :qid |unknown.0:0|
 :skolemid |9418|
 :pattern ( (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@5))
)))
(assert (forall ((|a#8#0#0| Int) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Const| |a#8#0#0|)) |##DafnyAST.Expr.Const|)
 :qid |Compilerdfy.27:13|
 :skolemid |9457|
 :pattern ( (|#DafnyAST.Expr.Const| |a#8#0#0|))
)))
(assert (forall ((|a#12#0#0| Int) ) (! (= (DafnyAST.Expr.n (|#DafnyAST.Expr.Const| |a#12#0#0|)) |a#12#0#0|)
 :qid |Compilerdfy.27:13|
 :skolemid |9464|
 :pattern ( (|#DafnyAST.Expr.Const| |a#12#0#0|))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Var| |a#13#0#0|)) |##DafnyAST.Expr.Var|)
 :qid |Compilerdfy.28:11|
 :skolemid |9465|
 :pattern ( (|#DafnyAST.Expr.Var| |a#13#0#0|))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (DafnyAST.Expr.v (|#DafnyAST.Expr.Var| |a#17#0#0|)) |a#17#0#0|)
 :qid |Compilerdfy.28:11|
 :skolemid |9472|
 :pattern ( (|#DafnyAST.Expr.Var| |a#17#0#0|))
)))
(assert (forall ((|a#34#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Stmt.Print| |a#34#0#0@@0|)) |##DafnyAST.Stmt.Print|)
 :qid |Compilerdfy.36:13|
 :skolemid |9499|
 :pattern ( (|#DafnyAST.Stmt.Print| |a#34#0#0@@0|))
)))
(assert (forall ((|a#38#0#0| T@U) ) (! (= (DafnyAST.Stmt.e (|#DafnyAST.Stmt.Print| |a#38#0#0|)) |a#38#0#0|)
 :qid |Compilerdfy.36:13|
 :skolemid |9506|
 :pattern ( (|#DafnyAST.Stmt.Print| |a#38#0#0|))
)))
(assert (forall ((|a#0#0#0@@1| Int) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PushConst| |a#0#0#0@@1|)) |##StackMachine.Instr.PushConst|)
 :qid |Compilerdfy.192:17|
 :skolemid |9619|
 :pattern ( (|#StackMachine.Instr.PushConst| |a#0#0#0@@1|))
)))
(assert (forall ((|a#4#0#0@@1| Int) ) (! (= (StackMachine.Instr.n (|#StackMachine.Instr.PushConst| |a#4#0#0@@1|)) |a#4#0#0@@1|)
 :qid |Compilerdfy.192:17|
 :skolemid |9626|
 :pattern ( (|#StackMachine.Instr.PushConst| |a#4#0#0@@1|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PushVar| |a#5#0#0|)) |##StackMachine.Instr.PushVar|)
 :qid |Compilerdfy.193:15|
 :skolemid |9627|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0@@0| T@U) ) (! (= (StackMachine.Instr.v (|#StackMachine.Instr.PushVar| |a#9#0#0@@0|)) |a#9#0#0@@0|)
 :qid |Compilerdfy.193:15|
 :skolemid |9634|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#9#0#0@@0|))
)))
(assert (forall ((|a#24#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PopVar| |a#24#0#0@@0|)) |##StackMachine.Instr.PopVar|)
 :qid |Compilerdfy.197:14|
 :skolemid |9643|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#24#0#0@@0|))
)))
(assert (forall ((|a#28#0#0@@0| T@U) ) (! (= (StackMachine.Instr.v (|#StackMachine.Instr.PopVar| |a#28#0#0@@0|)) |a#28#0#0@@0|)
 :qid |Compilerdfy.197:14|
 :skolemid |9650|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#28#0#0@@0|))
)))
(assert (forall ((System.Collections.Generic.List$T@@6 T@U) ) (! (= (Tclass.System_mCollections_mGeneric.List?_0 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@6)) System.Collections.Generic.List$T@@6)
 :qid |unknown.0:0|
 :skolemid |9704|
 :pattern ( (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |8814|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((v@@7 T@U) (t0@@10 T@U) (t1@@7 T@U) (h@@10 T@U) ) (! (= ($IsAlloc MapType v@@7 (TMap t0@@10 t1@@7) h@@10) (forall ((bx@@46 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@46) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@46) t1@@7 h@@10) ($IsAllocBox bx@@46 t0@@10 h@@10)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |8864|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@46))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@46))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |8865|
 :pattern ( ($IsAlloc MapType v@@7 (TMap t0@@10 t1@@7) h@@10))
)))
(assert (forall ((|a#25#0#0@@0| T@U) (|a#25#1#0| T@U) (|a#25#2#0| T@U) ) (! (< (DtRank |a#25#0#0@@0|) (DtRank (|#DafnyAST.Expr.Op| |a#25#0#0@@0| |a#25#1#0| |a#25#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |9485|
 :pattern ( (|#DafnyAST.Expr.Op| |a#25#0#0@@0| |a#25#1#0| |a#25#2#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) (|a#27#2#0| T@U) ) (! (< (DtRank |a#27#1#0|) (DtRank (|#DafnyAST.Expr.Op| |a#27#0#0| |a#27#1#0| |a#27#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |9487|
 :pattern ( (|#DafnyAST.Expr.Op| |a#27#0#0| |a#27#1#0| |a#27#2#0|))
)))
(assert (forall ((|a#29#0#0@@0| T@U) (|a#29#1#0| T@U) (|a#29#2#0| T@U) ) (! (< (DtRank |a#29#2#0|) (DtRank (|#DafnyAST.Expr.Op| |a#29#0#0@@0| |a#29#1#0| |a#29#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |9489|
 :pattern ( (|#DafnyAST.Expr.Op| |a#29#0#0@@0| |a#29#1#0| |a#29#2#0|))
)))
(assert (forall ((|a#36#0#0@@0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) ) (! (< (DtRank |a#36#0#0@@0|) (DtRank (|#StackMachine.State.State| |a#36#0#0@@0| |a#36#1#0| |a#36#2#0|)))
 :qid |Compilerdfy.206:26|
 :skolemid |9673|
 :pattern ( (|#StackMachine.State.State| |a#36#0#0@@0| |a#36#1#0| |a#36#2#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) (|a#42#2#0| T@U) ) (! (< (|Seq#Rank| |a#42#2#0|) (DtRank (|#StackMachine.State.State| |a#42#0#0| |a#42#1#0| |a#42#2#0|)))
 :qid |Compilerdfy.206:26|
 :skolemid |9679|
 :pattern ( (|#StackMachine.State.State| |a#42#0#0| |a#42#1#0| |a#42#2#0|))
)))
(assert (forall ((t0@@11 T@U) (t1@@8 T@U) (t2@@6 T@U) (heap@@2 T@U) (f@@4 T@U) (bx0@@5 T@U) (bx1@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@2) (and (and ($IsBox bx0@@5 t0@@11) ($IsBox bx1@@5 t1@@8)) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@11 t1@@8 t2@@6)))) (|Set#Equal| (Reads2 t0@@11 t1@@8 t2@@6 $OneHeap f@@4 bx0@@5 bx1@@5) |Set#Empty|)) (= (Requires2 t0@@11 t1@@8 t2@@6 $OneHeap f@@4 bx0@@5 bx1@@5) (Requires2 t0@@11 t1@@8 t2@@6 heap@@2 f@@4 bx0@@5 bx1@@5)))
 :qid |unknown.0:0|
 :skolemid |9289|
 :pattern ( (Requires2 t0@@11 t1@@8 t2@@6 $OneHeap f@@4 bx0@@5 bx1@@5) ($IsGoodHeap heap@@2))
 :pattern ( (Requires2 t0@@11 t1@@8 t2@@6 heap@@2 f@@4 bx0@@5 bx1@@5))
)))
(assert (forall ((|p#0@@2| T@U) (|input#0@@0| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg#canCall| (Lit DatatypeTypeType |p#0@@2|) (Lit MapType |input#0@@0|)) (and ($Is DatatypeTypeType |p#0@@2| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is MapType |input#0@@0| (TMap (TSeq TChar) TInt)))) (and (and (and (let ((|dt_update_tmp#0#8| StackMachine.__default.EmptyState))
 (and (StackMachine.State.State_q |dt_update_tmp#0#8|) (StackMachine.State.State_q |dt_update_tmp#0#8|))) (|StackMachine.__default.interpProg_k#canCall| (Lit DatatypeTypeType |p#0@@2|) (let ((|dt_update_tmp#0#8@@0| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#8| (Lit MapType |input#0@@0|)))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#8@@0|) |dt_update#regs#0#8| (StackMachine.State.output |dt_update_tmp#0#8@@0|)))))) (StackMachine.State.State_q (StackMachine.__default.interpProg_k ($LS $LZ) (Lit DatatypeTypeType |p#0@@2|) (let ((|dt_update_tmp#0#8@@1| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#8@@0| (Lit MapType |input#0@@0|)))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#8@@1|) |dt_update#regs#0#8@@0| (StackMachine.State.output |dt_update_tmp#0#8@@1|))))))) (= (StackMachine.__default.interpProg (Lit DatatypeTypeType |p#0@@2|) (Lit MapType |input#0@@0|)) (StackMachine.State.output (StackMachine.__default.interpProg_k ($LS $LZ) (Lit DatatypeTypeType |p#0@@2|) (let ((|dt_update_tmp#0#8@@2| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#8@@1| (Lit MapType |input#0@@0|)))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#8@@2|) |dt_update#regs#0#8@@1| (StackMachine.State.output |dt_update_tmp#0#8@@2|)))))))))
 :qid |Compilerdfy.242:23|
 :weight 3
 :skolemid |9618|
 :pattern ( (StackMachine.__default.interpProg (Lit DatatypeTypeType |p#0@@2|) (Lit MapType |input#0@@0|)))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#12#heap#0@@1| T@U) (|$l#12#c#0@@1| T@U) (|$l#12#ds#0@@1| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType SetType (|lambda#5| |l#0@@4|) |$l#12#heap#0@@1| |$l#12#c#0@@1| |$l#12#ds#0@@1|) |l#0@@4|)
 :qid |Compilerdfy.524:7|
 :skolemid |9883|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType SetType (|lambda#5| |l#0@@4|) |$l#12#heap#0@@1| |$l#12#c#0@@1| |$l#12#ds#0@@1|))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |9253|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |9255|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) ) (! (< (|Seq#Rank| |a#46#0#0|) (DtRank (|#DafnyAST.Stmt.Assign| |a#46#0#0| |a#46#1#0|)))
 :qid |Compilerdfy.37:14|
 :skolemid |9518|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#46#0#0| |a#46#1#0|))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (< (DtRank |a#48#1#0|) (DtRank (|#DafnyAST.Stmt.Assign| |a#48#0#0| |a#48#1#0|)))
 :qid |Compilerdfy.37:14|
 :skolemid |9520|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#48#0#0| |a#48#1#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) ) (! (< (DtRank |a#54#0#0|) (DtRank (|#DafnyAST.Stmt.Seq| |a#54#0#0| |a#54#1#0|)))
 :qid |Compilerdfy.38:11|
 :skolemid |9530|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#54#0#0| |a#54#1#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) ) (! (< (DtRank |a#56#1#0|) (DtRank (|#DafnyAST.Stmt.Seq| |a#56#0#0| |a#56#1#0|)))
 :qid |Compilerdfy.38:11|
 :skolemid |9532|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#56#0#0| |a#56#1#0|))
)))
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) ) (! (< (|Seq#Rank| |a#66#1#0|) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#66#0#0| |a#66#1#0|)))
 :qid |Compilerdfy.55:40|
 :skolemid |9554|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| |a#66#0#0| |a#66#1#0|))
)))
(assert (forall ((|a#5#0#0@@1| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@1|) (DtRank (|#LinkedList.List.Cons| |a#5#0#0@@1| |a#5#1#0@@0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |9591|
 :pattern ( (|#LinkedList.List.Cons| |a#5#0#0@@1| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (< (DtRank |a#7#1#0@@0|) (DtRank (|#LinkedList.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |9593|
 :pattern ( (|#LinkedList.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|))
)))
(assert (forall (($ly@@13 T@U) (|op#0@@1| T@U) ) (! (= (Translator.__default.translateOp ($LS $ly@@13) |op#0@@1|) (Translator.__default.translateOp $ly@@13 |op#0@@1|))
 :qid |Compilerdfy.479:28|
 :skolemid |9807|
 :pattern ( (Translator.__default.translateOp ($LS $ly@@13) |op#0@@1|))
)))
(assert (forall ((f@@5 T@U) (t0@@12 T@U) (t1@@9 T@U) (t2@@7 T@U) (u0@@3 T@U) (u1@@3 T@U) (u2@@2 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 t0@@12 t1@@9 t2@@7)) (forall ((bx@@47 T@U) ) (!  (=> ($IsBox bx@@47 u0@@3) ($IsBox bx@@47 t0@@12))
 :qid |unknown.0:0|
 :skolemid |9292|
 :pattern ( ($IsBox bx@@47 u0@@3))
 :pattern ( ($IsBox bx@@47 t0@@12))
))) (forall ((bx@@48 T@U) ) (!  (=> ($IsBox bx@@48 u1@@3) ($IsBox bx@@48 t1@@9))
 :qid |unknown.0:0|
 :skolemid |9293|
 :pattern ( ($IsBox bx@@48 u1@@3))
 :pattern ( ($IsBox bx@@48 t1@@9))
))) (forall ((bx@@49 T@U) ) (!  (=> ($IsBox bx@@49 t2@@7) ($IsBox bx@@49 u2@@2))
 :qid |unknown.0:0|
 :skolemid |9294|
 :pattern ( ($IsBox bx@@49 t2@@7))
 :pattern ( ($IsBox bx@@49 u2@@2))
))) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 u0@@3 u1@@3 u2@@2)))
 :qid |unknown.0:0|
 :skolemid |9295|
 :pattern ( ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 t0@@12 t1@@9 t2@@7)) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 u0@@3 u1@@3 u2@@2)))
)))
(assert (forall (($Heap@@5 T@U) (CSharpUtils.ListUtils.FoldR$A@@0 T@U) (CSharpUtils.ListUtils.FoldR$B@@0 T@U) (|f#0@@2| T@U) (|b0#0@@0| T@U) (|l#0@@5| T@U) ) (!  (=> (and (or (|CSharpUtils.ListUtils.FoldR#canCall| CSharpUtils.ListUtils.FoldR$A@@0 CSharpUtils.ListUtils.FoldR$B@@0 |f#0@@2| |b0#0@@0| |l#0@@5|) (and (and (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc2 CSharpUtils.ListUtils.FoldR$A@@0 CSharpUtils.ListUtils.FoldR$B@@0 CSharpUtils.ListUtils.FoldR$B@@0)) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc2 CSharpUtils.ListUtils.FoldR$A@@0 CSharpUtils.ListUtils.FoldR$B@@0 CSharpUtils.ListUtils.FoldR$B@@0) $Heap@@5)) (and ($IsBox |b0#0@@0| CSharpUtils.ListUtils.FoldR$B@@0) ($IsAllocBox |b0#0@@0| CSharpUtils.ListUtils.FoldR$B@@0 $Heap@@5))) (and ($Is refType |l#0@@5| (Tclass.System_mCollections_mGeneric.List CSharpUtils.ListUtils.FoldR$A@@0)) ($IsAlloc refType |l#0@@5| (Tclass.System_mCollections_mGeneric.List CSharpUtils.ListUtils.FoldR$A@@0) $Heap@@5)))) ($IsGoodHeap $Heap@@5)) ($IsAllocBox (CSharpUtils.ListUtils.FoldR CSharpUtils.ListUtils.FoldR$A@@0 CSharpUtils.ListUtils.FoldR$B@@0 |f#0@@2| |b0#0@@0| |l#0@@5|) CSharpUtils.ListUtils.FoldR$B@@0 $Heap@@5))
 :qid |Compilerdfy.408:7|
 :skolemid |9727|
 :pattern ( ($IsAllocBox (CSharpUtils.ListUtils.FoldR CSharpUtils.ListUtils.FoldR$A@@0 CSharpUtils.ListUtils.FoldR$B@@0 |f#0@@2| |b0#0@@0| |l#0@@5|) CSharpUtils.ListUtils.FoldR$B@@0 $Heap@@5))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |9074|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((|a#10#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Const| |a#10#0#0@@0|) Tclass.DafnyAST.Expr) ($Is intType (int_2_U |a#10#0#0@@0|) TInt))
 :qid |Compilerdfy.27:13|
 :skolemid |9461|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Const| |a#10#0#0@@0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((|a#2#0#0@@2| Int) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#2#0#0@@2|) Tclass.StackMachine.Instr) ($Is intType (int_2_U |a#2#0#0@@2|) TInt))
 :qid |Compilerdfy.192:17|
 :skolemid |9623|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#2#0#0@@2|) Tclass.StackMachine.Instr))
)))
(assert (forall ((f@@6 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@6 ($LS ly@@0)) (AtLayer A@@0 f@@6 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |8891|
 :pattern ( (AtLayer A@@0 f@@6 ($LS ly@@0)))
)))
(assert (forall ((bx@@50 T@U) (s@@4 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@50 (TMap s@@4 t@@11)) (and (= ($Box MapType ($Unbox MapType bx@@50)) bx@@50) ($Is MapType ($Unbox MapType bx@@50) (TMap s@@4 t@@11))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |8825|
 :pattern ( ($IsBox bx@@50 (TMap s@@4 t@@11)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@51 T@U) ) (!  (=> ($IsBox bx@@51 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@51)) bx@@51) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@51) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |9244|
 :pattern ( ($IsBox bx@@51 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#19#0#0| T@U) ) (! (< (|Seq#Rank| |a#19#0#0|) (DtRank (|#DafnyAST.Expr.Var| |a#19#0#0|)))
 :qid |Compilerdfy.28:11|
 :skolemid |9474|
 :pattern ( (|#DafnyAST.Expr.Var| |a#19#0#0|))
)))
(assert (forall ((|a#39#0#0@@0| T@U) ) (! (< (DtRank |a#39#0#0@@0|) (DtRank (|#DafnyAST.Stmt.Print| |a#39#0#0@@0|)))
 :qid |Compilerdfy.36:13|
 :skolemid |9507|
 :pattern ( (|#DafnyAST.Stmt.Print| |a#39#0#0@@0|))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (< (|Seq#Rank| |a#11#0#0|) (DtRank (|#StackMachine.Instr.PushVar| |a#11#0#0|)))
 :qid |Compilerdfy.193:15|
 :skolemid |9636|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#11#0#0|))
)))
(assert (forall ((|a#30#0#0| T@U) ) (! (< (|Seq#Rank| |a#30#0#0|) (DtRank (|#StackMachine.Instr.PopVar| |a#30#0#0|)))
 :qid |Compilerdfy.197:14|
 :skolemid |9652|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#30#0#0|))
)))
(assert (forall ((d@@44 T@U) (LinkedList.List$T@@5 T@U) ($h@@34 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (LinkedList.List.Cons_q d@@44) ($IsAlloc DatatypeTypeType d@@44 (Tclass.LinkedList.List LinkedList.List$T@@5) $h@@34))) ($IsAllocBox (LinkedList.List.hd d@@44) LinkedList.List$T@@5 $h@@34))
 :qid |unknown.0:0|
 :skolemid |9587|
 :pattern ( ($IsAllocBox (LinkedList.List.hd d@@44) LinkedList.List$T@@5 $h@@34))
)))
(assert  (and (forall ((t0@@13 T@T) (t1@@10 T@T) (t2@@8 T@T) (val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (x1@@3 T@U) ) (! (= (MapType2Select t0@@13 t1@@10 t2@@8 (MapType2Store t0@@13 t1@@10 t2@@8 m@@5 x0@@5 x1@@3 val@@5) x0@@5 x1@@3) val@@5)
 :qid |mapAx0:MapType2Select|
 :weight 0
)) (and (forall ((u0@@4 T@T) (u1@@4 T@T) (u2@@3 T@T) (val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@4 T@U) (y0@@3 T@U) (y1@@2 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select u0@@4 u1@@4 u2@@3 (MapType2Store u0@@4 u1@@4 u2@@3 m@@6 x0@@6 x1@@4 val@@6) y0@@3 y1@@2) (MapType2Select u0@@4 u1@@4 u2@@3 m@@6 y0@@3 y1@@2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((u0@@5 T@T) (u1@@5 T@T) (u2@@4 T@T) (val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@5 T@U) (y0@@4 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType2Select u0@@5 u1@@5 u2@@4 (MapType2Store u0@@5 u1@@5 u2@@4 m@@7 x0@@7 x1@@5 val@@7) y0@@4 y1@@3) (MapType2Select u0@@5 u1@@5 u2@@4 m@@7 y0@@4 y1@@3)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@6| T@U) (|l#1@@1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@23 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType2Select refType FieldType boolType (|lambda#0| |l#0@@6| |l#1@@1| |l#2| |l#3|) $o@@23 $f@@2))  (=> (and (or (not (= $o@@23 |l#0@@6|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@23) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |9879|
 :pattern ( (MapType2Select refType FieldType boolType (|lambda#0| |l#0@@6| |l#1@@1| |l#2| |l#3|) $o@@23 $f@@2))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$T1@@16| T@U) (|#$R@@16| T@U) (|f#0@@3| T@U) ($h@@35 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|) $h@@35) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|) $h@@35))
 :qid |unknown.0:0|
 :skolemid |9308|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc2 |#$T0@@16| |#$T1@@16| |#$R@@16|) $h@@35))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$T1@@17| T@U) (|#$R@@17| T@U) (|f#0@@4| T@U) ($h@@36 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|) $h@@36) ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hPartialFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|) $h@@36))
 :qid |unknown.0:0|
 :skolemid |9316|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc2 |#$T0@@17| |#$T1@@17| |#$R@@17|) $h@@36))
)))
(assert (forall (($ly@@14 T@U) (|s#0@@4| T@U) (|ctx#0@@5| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt_k#canCall| |s#0@@4| |ctx#0@@5|) (and ($Is DatatypeTypeType |s#0@@4| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@5| (TMap (TSeq TChar) TInt)))) (and (=> (not (DafnyAST.Stmt.Skip_q |s#0@@4|)) (and (=> (DafnyAST.Stmt.Print_q |s#0@@4|) (let ((|e#34| (DafnyAST.Stmt.e |s#0@@4|)))
(|DafnyAST.__default.interpExpr#canCall| |e#34| |ctx#0@@5|))) (=> (not (DafnyAST.Stmt.Print_q |s#0@@4|)) (and (=> (DafnyAST.Stmt.Assign_q |s#0@@4|) (let ((|e#35| (DafnyAST.Stmt.e |s#0@@4|)))
(|DafnyAST.__default.interpExpr#canCall| |e#35| |ctx#0@@5|))) (=> (not (DafnyAST.Stmt.Assign_q |s#0@@4|)) (let ((|s2#17| (DafnyAST.Stmt.s2 |s#0@@4|)))
(let ((|s1#17| (DafnyAST.Stmt.s1 |s#0@@4|)))
 (and (|DafnyAST.__default.interpStmt_k#canCall| |s1#17| |ctx#0@@5|) (let ((|ctx1#17| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k $ly@@14 |s1#17| |ctx#0@@5|))))
(|DafnyAST.__default.interpStmt_k#canCall| |s2#17| |ctx1#17|)))))))))) (= (DafnyAST.__default.interpStmt_k ($LS $ly@@14) |s#0@@4| |ctx#0@@5|) (ite (DafnyAST.Stmt.Skip_q |s#0@@4|) (|#DafnyAST.InterpResult.InterpResult| |ctx#0@@5| (Lit SeqType |Seq#Empty|)) (ite (DafnyAST.Stmt.Print_q |s#0@@4|) (let ((|e#32| (DafnyAST.Stmt.e |s#0@@4|)))
(|#DafnyAST.InterpResult.InterpResult| |ctx#0@@5| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (DafnyAST.__default.interpExpr ($LS $LZ) |e#32| |ctx#0@@5|)))))) (ite (DafnyAST.Stmt.Assign_q |s#0@@4|) (let ((|e#33| (DafnyAST.Stmt.e |s#0@@4|)))
(let ((|v#16| (DafnyAST.Stmt.v |s#0@@4|)))
(|#DafnyAST.InterpResult.InterpResult| (|Map#Build| |ctx#0@@5| ($Box SeqType |v#16|) ($Box intType (int_2_U (DafnyAST.__default.interpExpr ($LS $LZ) |e#33| |ctx#0@@5|)))) (Lit SeqType |Seq#Empty|)))) (let ((|s2#16| (DafnyAST.Stmt.s2 |s#0@@4|)))
(let ((|s1#16| (DafnyAST.Stmt.s1 |s#0@@4|)))
(let ((|o1#16| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k $ly@@14 |s1#16| |ctx#0@@5|))))
(let ((|ctx1#16| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k $ly@@14 |s1#16| |ctx#0@@5|))))
(let ((|o2#16| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k $ly@@14 |s2#16| |ctx1#16|))))
(let ((|ctx2#16| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k $ly@@14 |s2#16| |ctx1#16|))))
(|#DafnyAST.InterpResult.InterpResult| |ctx2#16| (|Seq#Append| |o1#16| |o2#16|))))))))))))))
 :qid |Compilerdfy.57:12|
 :skolemid |9440|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $ly@@14) |s#0@@4| |ctx#0@@5|))
)))
(assert (forall ((s@@5 T@U) (val@@8 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@8)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@8)) val@@8))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |9012|
 :pattern ( (|Seq#Build| s@@5 val@@8))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |9241|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@45 T@U) ($h@@37 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (DafnyAST.Expr.Const_q d@@45) ($IsAlloc DatatypeTypeType d@@45 Tclass.DafnyAST.Expr $h@@37))) ($IsAlloc intType (int_2_U (DafnyAST.Expr.n d@@45)) TInt $h@@37))
 :qid |unknown.0:0|
 :skolemid |9462|
 :pattern ( ($IsAlloc intType (int_2_U (DafnyAST.Expr.n d@@45)) TInt $h@@37))
)))
(assert (forall ((d@@46 T@U) ($h@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@38) (and (StackMachine.Instr.PushConst_q d@@46) ($IsAlloc DatatypeTypeType d@@46 Tclass.StackMachine.Instr $h@@38))) ($IsAlloc intType (int_2_U (StackMachine.Instr.n d@@46)) TInt $h@@38))
 :qid |unknown.0:0|
 :skolemid |9624|
 :pattern ( ($IsAlloc intType (int_2_U (StackMachine.Instr.n d@@46)) TInt $h@@38))
)))
(assert (forall ((d@@47 T@U) ) (!  (=> ($Is DatatypeTypeType d@@47 Tclass.DafnyAST.Expr) (or (or (DafnyAST.Expr.Const_q d@@47) (DafnyAST.Expr.Var_q d@@47)) (DafnyAST.Expr.Op_q d@@47)))
 :qid |unknown.0:0|
 :skolemid |9492|
 :pattern ( (DafnyAST.Expr.Op_q d@@47) ($Is DatatypeTypeType d@@47 Tclass.DafnyAST.Expr))
 :pattern ( (DafnyAST.Expr.Var_q d@@47) ($Is DatatypeTypeType d@@47 Tclass.DafnyAST.Expr))
 :pattern ( (DafnyAST.Expr.Const_q d@@47) ($Is DatatypeTypeType d@@47 Tclass.DafnyAST.Expr))
)))
(assert (forall (($h@@39 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@39) (and (or (not (= $o@@24 null)) (not true)) ($Is refType $o@@24 Tclass.CSharpAST.Const?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@24) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@24) CSharpAST.Const.n)) Tclass.NativeTypes.nativeint $h@@39))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9752|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@24) CSharpAST.Const.n)))
)))
(assert (forall (($h@@40 T@U) ($o@@25 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@40) (and (or (not (= $o@@25 null)) (not true)) ($Is refType $o@@25 Tclass.CSharpAST.Var?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@25) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@25) CSharpAST.Var.v)) Tclass.System.String $h@@40))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9760|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@25) CSharpAST.Var.v)))
)))
(assert (forall (($h@@41 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@41) (and (or (not (= $o@@26 null)) (not true)) ($Is refType $o@@26 Tclass.CSharpAST.Op?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@26) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@26) CSharpAST.Op.op)) Tclass.CSharpAST.Op____BinOp $h@@41))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9768|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@26) CSharpAST.Op.op)))
)))
(assert (forall (($h@@42 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@42) (and (or (not (= $o@@27 null)) (not true)) ($Is refType $o@@27 Tclass.CSharpAST.Op?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@27) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@27) CSharpAST.Op.e1)) Tclass.CSharpAST.Expr $h@@42))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9770|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@27) CSharpAST.Op.e1)))
)))
(assert (forall (($h@@43 T@U) ($o@@28 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@43) (and (or (not (= $o@@28 null)) (not true)) ($Is refType $o@@28 Tclass.CSharpAST.Op?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@28) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@28) CSharpAST.Op.e2)) Tclass.CSharpAST.Expr $h@@43))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9772|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@28) CSharpAST.Op.e2)))
)))
(assert (forall (($h@@44 T@U) ($o@@29 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@44) (and (or (not (= $o@@29 null)) (not true)) ($Is refType $o@@29 Tclass.CSharpAST.Print?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@44 $o@@29) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@44 $o@@29) CSharpAST.Print.e)) Tclass.CSharpAST.Expr $h@@44))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9786|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@44 $o@@29) CSharpAST.Print.e)))
)))
(assert (forall (($h@@45 T@U) ($o@@30 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@45) (and (or (not (= $o@@30 null)) (not true)) ($Is refType $o@@30 Tclass.CSharpAST.Assign?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@45 $o@@30) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@45 $o@@30) CSharpAST.Assign.v)) Tclass.System.String $h@@45))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9794|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@45 $o@@30) CSharpAST.Assign.v)))
)))
(assert (forall (($h@@46 T@U) ($o@@31 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@46) (and (or (not (= $o@@31 null)) (not true)) ($Is refType $o@@31 Tclass.CSharpAST.Assign?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@46 $o@@31) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@46 $o@@31) CSharpAST.Assign.e)) Tclass.CSharpAST.Expr $h@@46))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9796|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@46 $o@@31) CSharpAST.Assign.e)))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@8) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |9062|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |9063|
 :pattern ( (|Map#Domain| m@@8))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((v@@8 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@9) v@@8)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |9064|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |9065|
 :pattern ( (|Map#Values| m@@9))
)))
(assert (forall ((m@@10 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@10) item)  (and (|Set#IsMember| (|Map#Domain| m@@10) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@10) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |9073|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@10) item))
)))
(assert (forall ((m@@11 T@U) (v@@9 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@11) v@@9) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@11) u@@3) (= v@@9 (MapType0Select BoxType BoxType (|Map#Elements| m@@11) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |9071|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@11) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@11) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |9072|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@11) v@@9))
)))
(assert (forall ((m@@12 T@U) (u@@4 T@U) (|u'| T@U) (v@@10 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@12 u@@4 v@@10)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@12 u@@4 v@@10)) |u'|) v@@10))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@12 u@@4 v@@10)) |u'|) (|Set#IsMember| (|Map#Domain| m@@12) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@12 u@@4 v@@10)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@12) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |9079|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@12 u@@4 v@@10)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@12 u@@4 v@@10)) |u'|))
)))
(assert (forall ((d@@48 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@48)) (DtRank d@@48))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |8873|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@48)))
)))
(assert (forall ((t0@@14 T@U) (t1@@11 T@U) (t2@@9 T@U) (h0 T@U) (h1 T@U) (f@@7 T@U) (bx0@@6 T@U) (bx1@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and (and ($IsBox bx0@@6 t0@@14) ($IsBox bx1@@6 t1@@11)) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc2 t0@@14 t1@@11 t2@@9)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads2 t0@@14 t1@@11 t2@@9 h0 f@@7 bx0@@6 bx1@@6) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |9280|
))) (= (Requires2 t0@@14 t1@@11 t2@@9 h0 f@@7 bx0@@6 bx1@@6) (Requires2 t0@@14 t1@@11 t2@@9 h1 f@@7 bx0@@6 bx1@@6)))
 :qid |unknown.0:0|
 :skolemid |9281|
 :pattern ( ($HeapSucc h0 h1) (Requires2 t0@@14 t1@@11 t2@@9 h1 f@@7 bx0@@6 bx1@@6))
)))
(assert (forall ((t0@@15 T@U) (t1@@12 T@U) (t2@@10 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@8 T@U) (bx0@@7 T@U) (bx1@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and (and ($IsBox bx0@@7 t0@@15) ($IsBox bx1@@7 t1@@12)) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@15 t1@@12 t2@@10)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads2 t0@@15 t1@@12 t2@@10 h1@@0 f@@8 bx0@@7 bx1@@7) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |9282|
))) (= (Requires2 t0@@15 t1@@12 t2@@10 h0@@0 f@@8 bx0@@7 bx1@@7) (Requires2 t0@@15 t1@@12 t2@@10 h1@@0 f@@8 bx0@@7 bx1@@7)))
 :qid |unknown.0:0|
 :skolemid |9283|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires2 t0@@15 t1@@12 t2@@10 h1@@0 f@@8 bx0@@7 bx1@@7))
)))
(assert (forall ((bx@@52 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@52 (TSet t@@12)) (and (= ($Box SetType ($Unbox SetType bx@@52)) bx@@52) ($Is SetType ($Unbox SetType bx@@52) (TSet t@@12))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |8821|
 :pattern ( ($IsBox bx@@52 (TSet t@@12)))
)))
(assert (forall ((bx@@53 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@53 (TSeq t@@13)) (and (= ($Box SeqType ($Unbox SeqType bx@@53)) bx@@53) ($Is SeqType ($Unbox SeqType bx@@53) (TSeq t@@13))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |8824|
 :pattern ( ($IsBox bx@@53 (TSeq t@@13)))
)))
(assert (forall ((LinkedList.List$T@@6 T@U) (bx@@54 T@U) ) (!  (=> ($IsBox bx@@54 (Tclass.LinkedList.List LinkedList.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@54)) bx@@54) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@54) (Tclass.LinkedList.List LinkedList.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |9405|
 :pattern ( ($IsBox bx@@54 (Tclass.LinkedList.List LinkedList.List$T@@6)))
)))
(assert (forall ((System.Collections.Generic.List$T@@7 T@U) (bx@@55 T@U) ) (!  (=> ($IsBox bx@@55 (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@7)) (and (= ($Box refType ($Unbox refType bx@@55)) bx@@55) ($Is refType ($Unbox refType bx@@55) (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@7))))
 :qid |unknown.0:0|
 :skolemid |9419|
 :pattern ( ($IsBox bx@@55 (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@7)))
)))
(assert (forall ((System.Collections.Generic.List$T@@8 T@U) (bx@@56 T@U) ) (!  (=> ($IsBox bx@@56 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@8)) (and (= ($Box refType ($Unbox refType bx@@56)) bx@@56) ($Is refType ($Unbox refType bx@@56) (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@8))))
 :qid |unknown.0:0|
 :skolemid |9705|
 :pattern ( ($IsBox bx@@56 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@8)))
)))
(assert (forall (($o@@32 T@U) ) (!  (=> ($Is refType $o@@32 Tclass.CSharpAST.Const?) ($Is refType $o@@32 Tclass.CSharpAST.Expr?))
 :qid |unknown.0:0|
 :skolemid |9847|
 :pattern ( ($Is refType $o@@32 Tclass.CSharpAST.Const?))
)))
(assert (forall ((bx@@57 T@U) ) (!  (=> ($IsBox bx@@57 Tclass.CSharpAST.Const?) ($IsBox bx@@57 Tclass.CSharpAST.Expr?))
 :qid |unknown.0:0|
 :skolemid |9845|
 :pattern ( ($IsBox bx@@57 Tclass.CSharpAST.Const?))
)))
(assert (forall (($o@@33 T@U) ) (!  (=> ($Is refType $o@@33 Tclass.CSharpAST.Var?) ($Is refType $o@@33 Tclass.CSharpAST.Expr?))
 :qid |unknown.0:0|
 :skolemid |9851|
 :pattern ( ($Is refType $o@@33 Tclass.CSharpAST.Var?))
)))
(assert (forall ((bx@@58 T@U) ) (!  (=> ($IsBox bx@@58 Tclass.CSharpAST.Var?) ($IsBox bx@@58 Tclass.CSharpAST.Expr?))
 :qid |unknown.0:0|
 :skolemid |9849|
 :pattern ( ($IsBox bx@@58 Tclass.CSharpAST.Var?))
)))
(assert (forall (($o@@34 T@U) ) (!  (=> ($Is refType $o@@34 Tclass.CSharpAST.Op?) ($Is refType $o@@34 Tclass.CSharpAST.Expr?))
 :qid |unknown.0:0|
 :skolemid |9855|
 :pattern ( ($Is refType $o@@34 Tclass.CSharpAST.Op?))
)))
(assert (forall ((bx@@59 T@U) ) (!  (=> ($IsBox bx@@59 Tclass.CSharpAST.Op?) ($IsBox bx@@59 Tclass.CSharpAST.Expr?))
 :qid |unknown.0:0|
 :skolemid |9853|
 :pattern ( ($IsBox bx@@59 Tclass.CSharpAST.Op?))
)))
(assert (forall (($o@@35 T@U) ) (!  (=> ($Is refType $o@@35 Tclass.CSharpAST.Print?) ($Is refType $o@@35 Tclass.CSharpAST.Stmt?))
 :qid |unknown.0:0|
 :skolemid |9859|
 :pattern ( ($Is refType $o@@35 Tclass.CSharpAST.Print?))
)))
(assert (forall ((bx@@60 T@U) ) (!  (=> ($IsBox bx@@60 Tclass.CSharpAST.Print?) ($IsBox bx@@60 Tclass.CSharpAST.Stmt?))
 :qid |unknown.0:0|
 :skolemid |9857|
 :pattern ( ($IsBox bx@@60 Tclass.CSharpAST.Print?))
)))
(assert (forall (($o@@36 T@U) ) (!  (=> ($Is refType $o@@36 Tclass.CSharpAST.Assign?) ($Is refType $o@@36 Tclass.CSharpAST.Stmt?))
 :qid |unknown.0:0|
 :skolemid |9863|
 :pattern ( ($Is refType $o@@36 Tclass.CSharpAST.Assign?))
)))
(assert (forall ((bx@@61 T@U) ) (!  (=> ($IsBox bx@@61 Tclass.CSharpAST.Assign?) ($IsBox bx@@61 Tclass.CSharpAST.Stmt?))
 :qid |unknown.0:0|
 :skolemid |9861|
 :pattern ( ($IsBox bx@@61 Tclass.CSharpAST.Assign?))
)))
(assert (forall ((v@@11 T@U) (t0@@16 T@U) (t1@@13 T@U) ) (! (= ($Is MapType v@@11 (TMap t0@@16 t1@@13)) (forall ((bx@@62 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@11) bx@@62) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@11) bx@@62) t1@@13) ($IsBox bx@@62 t0@@16)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |8844|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@11) bx@@62))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@11) bx@@62))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |8845|
 :pattern ( ($Is MapType v@@11 (TMap t0@@16 t1@@13)))
)))
(assert (forall (($ly@@15 T@U) (|p#0@@3| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg_k#canCall| (Lit DatatypeTypeType |p#0@@3|) (Lit DatatypeTypeType |st#0@@4|)) (and ($Is DatatypeTypeType |p#0@@3| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |st#0@@4| Tclass.StackMachine.State))) (and (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType |p#0@@3|))))) (let ((|p#16| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |p#0@@3|)))))
(let ((|instr#15| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (LinkedList.List.hd (Lit DatatypeTypeType |p#0@@3|))))))
 (and (|StackMachine.__default.interpProg_k#canCall| |p#16| (Lit DatatypeTypeType |st#0@@4|)) (|StackMachine.__default.interpInstr#canCall| |instr#15| (StackMachine.__default.interpProg_k ($LS $ly@@15) |p#16| (Lit DatatypeTypeType |st#0@@4|))))))) (= (StackMachine.__default.interpProg_k ($LS $ly@@15) (Lit DatatypeTypeType |p#0@@3|) (Lit DatatypeTypeType |st#0@@4|)) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType |p#0@@3|)) (let ((|p#15| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |p#0@@3|)))))
(let ((|instr#14| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (LinkedList.List.hd (Lit DatatypeTypeType |p#0@@3|))))))
(Lit DatatypeTypeType (StackMachine.__default.interpInstr |instr#14| (Lit DatatypeTypeType (StackMachine.__default.interpProg_k ($LS $ly@@15) |p#15| (Lit DatatypeTypeType |st#0@@4|))))))) |st#0@@4|))))
 :qid |Compilerdfy.233:12|
 :weight 3
 :skolemid |9613|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $ly@@15) (Lit DatatypeTypeType |p#0@@3|) (Lit DatatypeTypeType |st#0@@4|)))
)))
(assert (forall ((d@@49 T@U) (LinkedList.List$T@@7 T@U) ($h@@47 T@U) ) (!  (=> (and ($IsGoodHeap $h@@47) (and (LinkedList.List.Cons_q d@@49) ($IsAlloc DatatypeTypeType d@@49 (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@47))) ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@49) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@47))
 :qid |unknown.0:0|
 :skolemid |9588|
 :pattern ( ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@49) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@47))
)))
(assert (forall ((d@@50 T@U) ($h@@48 T@U) ) (!  (=> (and ($IsGoodHeap $h@@48) ($Is DatatypeTypeType d@@50 Tclass.DafnyAST.BinOp)) ($IsAlloc DatatypeTypeType d@@50 Tclass.DafnyAST.BinOp $h@@48))
 :qid |unknown.0:0|
 :skolemid |9451|
 :pattern ( ($IsAlloc DatatypeTypeType d@@50 Tclass.DafnyAST.BinOp $h@@48))
)))
(assert (forall ((d@@51 T@U) ($h@@49 T@U) ) (!  (=> (and ($IsGoodHeap $h@@49) ($Is DatatypeTypeType d@@51 Tclass.DafnyAST.Expr)) ($IsAlloc DatatypeTypeType d@@51 Tclass.DafnyAST.Expr $h@@49))
 :qid |unknown.0:0|
 :skolemid |9490|
 :pattern ( ($IsAlloc DatatypeTypeType d@@51 Tclass.DafnyAST.Expr $h@@49))
)))
(assert (forall ((d@@52 T@U) ($h@@50 T@U) ) (!  (=> (and ($IsGoodHeap $h@@50) ($Is DatatypeTypeType d@@52 Tclass.DafnyAST.Stmt)) ($IsAlloc DatatypeTypeType d@@52 Tclass.DafnyAST.Stmt $h@@50))
 :qid |unknown.0:0|
 :skolemid |9533|
 :pattern ( ($IsAlloc DatatypeTypeType d@@52 Tclass.DafnyAST.Stmt $h@@50))
)))
(assert (forall ((d@@53 T@U) ($h@@51 T@U) ) (!  (=> (and ($IsGoodHeap $h@@51) ($Is DatatypeTypeType d@@53 Tclass.DafnyAST.InterpResult)) ($IsAlloc DatatypeTypeType d@@53 Tclass.DafnyAST.InterpResult $h@@51))
 :qid |unknown.0:0|
 :skolemid |9555|
 :pattern ( ($IsAlloc DatatypeTypeType d@@53 Tclass.DafnyAST.InterpResult $h@@51))
)))
(assert (forall ((d@@54 T@U) ($h@@52 T@U) ) (!  (=> (and ($IsGoodHeap $h@@52) ($Is DatatypeTypeType d@@54 Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType d@@54 Tclass.StackMachine.Instr $h@@52))
 :qid |unknown.0:0|
 :skolemid |9653|
 :pattern ( ($IsAlloc DatatypeTypeType d@@54 Tclass.StackMachine.Instr $h@@52))
)))
(assert (forall ((d@@55 T@U) ($h@@53 T@U) ) (!  (=> (and ($IsGoodHeap $h@@53) ($Is DatatypeTypeType d@@55 Tclass.StackMachine.State)) ($IsAlloc DatatypeTypeType d@@55 Tclass.StackMachine.State $h@@53))
 :qid |unknown.0:0|
 :skolemid |9680|
 :pattern ( ($IsAlloc DatatypeTypeType d@@55 Tclass.StackMachine.State $h@@53))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.DafnyAST.Stmt) Tagclass.DafnyAST.Stmt))
(assert (= (TagFamily Tclass.DafnyAST.Stmt) tytagFamily$Stmt))
(assert (= (Tag Tclass.StackMachine.Instr) Tagclass.StackMachine.Instr))
(assert (= (TagFamily Tclass.StackMachine.Instr) tytagFamily$Instr))
(assert (= (Tag Tclass.CSharpAST.Prog) Tagclass.CSharpAST.Prog))
(assert (= (TagFamily Tclass.CSharpAST.Prog) tytagFamily$Prog))
(assert (= (Tag Tclass.System.String) Tagclass.System.String))
(assert (= (TagFamily Tclass.System.String) tytagFamily$String))
(assert (= (Tag Tclass.DafnyAST.Expr) Tagclass.DafnyAST.Expr))
(assert (= (TagFamily Tclass.DafnyAST.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.DafnyAST.InterpResult) Tagclass.DafnyAST.InterpResult))
(assert (= (TagFamily Tclass.DafnyAST.InterpResult) tytagFamily$InterpResult))
(assert (= (Tag Tclass.DafnyAST.BinOp) Tagclass.DafnyAST.BinOp))
(assert (= (TagFamily Tclass.DafnyAST.BinOp) tytagFamily$BinOp))
(assert (= (Tag Tclass.StackMachine.State) Tagclass.StackMachine.State))
(assert (= (TagFamily Tclass.StackMachine.State) tytagFamily$State))
(assert (= (Tag Tclass.NativeTypes.nativeint) Tagclass.NativeTypes.nativeint))
(assert (= (TagFamily Tclass.NativeTypes.nativeint) tytagFamily$nativeint))
(assert (= (Tag Tclass.System.String?) Tagclass.System.String?))
(assert (= (TagFamily Tclass.System.String?) tytagFamily$String))
(assert (= (Tag Tclass.CSharpAST.Op____BinOp?) Tagclass.CSharpAST.Op____BinOp?))
(assert (= (TagFamily Tclass.CSharpAST.Op____BinOp?) tytagFamily$Op__BinOp))
(assert (= (Tag Tclass.CSharpAST.Op____BinOp) Tagclass.CSharpAST.Op____BinOp))
(assert (= (TagFamily Tclass.CSharpAST.Op____BinOp) tytagFamily$Op__BinOp))
(assert (= (Tag Tclass.CSharpAST.Expr?) Tagclass.CSharpAST.Expr?))
(assert (= (TagFamily Tclass.CSharpAST.Expr?) tytagFamily$Expr))
(assert (= (Tag Tclass.CSharpAST.Expr) Tagclass.CSharpAST.Expr))
(assert (= (TagFamily Tclass.CSharpAST.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.CSharpAST.Const?) Tagclass.CSharpAST.Const?))
(assert (= (TagFamily Tclass.CSharpAST.Const?) tytagFamily$Const))
(assert (= (Tag Tclass.CSharpAST.Const) Tagclass.CSharpAST.Const))
(assert (= (TagFamily Tclass.CSharpAST.Const) tytagFamily$Const))
(assert (= (Tag Tclass.CSharpAST.Var?) Tagclass.CSharpAST.Var?))
(assert (= (TagFamily Tclass.CSharpAST.Var?) tytagFamily$Var))
(assert (= (Tag Tclass.CSharpAST.Var) Tagclass.CSharpAST.Var))
(assert (= (TagFamily Tclass.CSharpAST.Var) tytagFamily$Var))
(assert (= (Tag Tclass.CSharpAST.Op?) Tagclass.CSharpAST.Op?))
(assert (= (TagFamily Tclass.CSharpAST.Op?) tytagFamily$Op))
(assert (= (Tag Tclass.CSharpAST.Op) Tagclass.CSharpAST.Op))
(assert (= (TagFamily Tclass.CSharpAST.Op) tytagFamily$Op))
(assert (= (Tag Tclass.CSharpAST.Stmt?) Tagclass.CSharpAST.Stmt?))
(assert (= (TagFamily Tclass.CSharpAST.Stmt?) tytagFamily$Stmt))
(assert (= (Tag Tclass.CSharpAST.Stmt) Tagclass.CSharpAST.Stmt))
(assert (= (TagFamily Tclass.CSharpAST.Stmt) tytagFamily$Stmt))
(assert (= (Tag Tclass.CSharpAST.Print?) Tagclass.CSharpAST.Print?))
(assert (= (TagFamily Tclass.CSharpAST.Print?) tytagFamily$Print))
(assert (= (Tag Tclass.CSharpAST.Print) Tagclass.CSharpAST.Print))
(assert (= (TagFamily Tclass.CSharpAST.Print) tytagFamily$Print))
(assert (= (Tag Tclass.CSharpAST.Assign?) Tagclass.CSharpAST.Assign?))
(assert (= (TagFamily Tclass.CSharpAST.Assign?) tytagFamily$Assign))
(assert (= (Tag Tclass.CSharpAST.Assign) Tagclass.CSharpAST.Assign))
(assert (= (TagFamily Tclass.CSharpAST.Assign) tytagFamily$Assign))
(assert (= (Tag Tclass.CSharpAST.Prog?) Tagclass.CSharpAST.Prog?))
(assert (= (TagFamily Tclass.CSharpAST.Prog?) tytagFamily$Prog))
(assert (forall (($h@@54 T@U) ($o@@37 T@U) ) (!  (=> (and ($IsGoodHeap $h@@54) (and (or (not (= $o@@37 null)) (not true)) ($Is refType $o@@37 Tclass.CSharpAST.Const?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@54 $o@@37) CSharpAST.Const.n)) Tclass.NativeTypes.nativeint))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9751|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@54 $o@@37) CSharpAST.Const.n)))
)))
(assert (forall (($h@@55 T@U) ($o@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@55) (and (or (not (= $o@@38 null)) (not true)) ($Is refType $o@@38 Tclass.CSharpAST.Var?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@55 $o@@38) CSharpAST.Var.v)) Tclass.System.String))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9759|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@55 $o@@38) CSharpAST.Var.v)))
)))
(assert (forall (($h@@56 T@U) ($o@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@56) (and (or (not (= $o@@39 null)) (not true)) ($Is refType $o@@39 Tclass.CSharpAST.Op?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@56 $o@@39) CSharpAST.Op.op)) Tclass.CSharpAST.Op____BinOp))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9767|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@56 $o@@39) CSharpAST.Op.op)))
)))
(assert (forall (($h@@57 T@U) ($o@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@57) (and (or (not (= $o@@40 null)) (not true)) ($Is refType $o@@40 Tclass.CSharpAST.Op?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@57 $o@@40) CSharpAST.Op.e1)) Tclass.CSharpAST.Expr))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9769|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@57 $o@@40) CSharpAST.Op.e1)))
)))
(assert (forall (($h@@58 T@U) ($o@@41 T@U) ) (!  (=> (and ($IsGoodHeap $h@@58) (and (or (not (= $o@@41 null)) (not true)) ($Is refType $o@@41 Tclass.CSharpAST.Op?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@58 $o@@41) CSharpAST.Op.e2)) Tclass.CSharpAST.Expr))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9771|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@58 $o@@41) CSharpAST.Op.e2)))
)))
(assert (forall (($h@@59 T@U) ($o@@42 T@U) ) (!  (=> (and ($IsGoodHeap $h@@59) (and (or (not (= $o@@42 null)) (not true)) ($Is refType $o@@42 Tclass.CSharpAST.Print?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@59 $o@@42) CSharpAST.Print.e)) Tclass.CSharpAST.Expr))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9785|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@59 $o@@42) CSharpAST.Print.e)))
)))
(assert (forall (($h@@60 T@U) ($o@@43 T@U) ) (!  (=> (and ($IsGoodHeap $h@@60) (and (or (not (= $o@@43 null)) (not true)) ($Is refType $o@@43 Tclass.CSharpAST.Assign?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@60 $o@@43) CSharpAST.Assign.v)) Tclass.System.String))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9793|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@60 $o@@43) CSharpAST.Assign.v)))
)))
(assert (forall (($h@@61 T@U) ($o@@44 T@U) ) (!  (=> (and ($IsGoodHeap $h@@61) (and (or (not (= $o@@44 null)) (not true)) ($Is refType $o@@44 Tclass.CSharpAST.Assign?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@61 $o@@44) CSharpAST.Assign.e)) Tclass.CSharpAST.Expr))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9795|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@61 $o@@44) CSharpAST.Assign.e)))
)))
(assert (forall ((d@@56 T@U) ) (!  (=> ($Is DatatypeTypeType d@@56 Tclass.StackMachine.Instr) (or (or (or (or (or (StackMachine.Instr.PushConst_q d@@56) (StackMachine.Instr.PushVar_q d@@56)) (StackMachine.Instr.PopAdd_q d@@56)) (StackMachine.Instr.PopSub_q d@@56)) (StackMachine.Instr.PopPrint_q d@@56)) (StackMachine.Instr.PopVar_q d@@56)))
 :qid |unknown.0:0|
 :skolemid |9655|
 :pattern ( (StackMachine.Instr.PopVar_q d@@56) ($Is DatatypeTypeType d@@56 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopPrint_q d@@56) ($Is DatatypeTypeType d@@56 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopSub_q d@@56) ($Is DatatypeTypeType d@@56 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopAdd_q d@@56) ($Is DatatypeTypeType d@@56 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushVar_q d@@56) ($Is DatatypeTypeType d@@56 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushConst_q d@@56) ($Is DatatypeTypeType d@@56 Tclass.StackMachine.Instr))
)))
(assert (= |#DafnyAST.BinOp.Add| (Lit DatatypeTypeType |#DafnyAST.BinOp.Add|)))
(assert (= |#DafnyAST.BinOp.Sub| (Lit DatatypeTypeType |#DafnyAST.BinOp.Sub|)))
(assert (= |#DafnyAST.Stmt.Skip| (Lit DatatypeTypeType |#DafnyAST.Stmt.Skip|)))
(assert (= |#LinkedList.List.Nil| (Lit DatatypeTypeType |#LinkedList.List.Nil|)))
(assert (= |#StackMachine.Instr.PopAdd| (Lit DatatypeTypeType |#StackMachine.Instr.PopAdd|)))
(assert (= |#StackMachine.Instr.PopSub| (Lit DatatypeTypeType |#StackMachine.Instr.PopSub|)))
(assert (= |#StackMachine.Instr.PopPrint| (Lit DatatypeTypeType |#StackMachine.Instr.PopPrint|)))
(assert (forall ((|a#15#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Var| |a#15#0#0|) Tclass.DafnyAST.Expr) ($Is SeqType |a#15#0#0| (TSeq TChar)))
 :qid |Compilerdfy.28:11|
 :skolemid |9469|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Var| |a#15#0#0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((|a#7#0#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#7#0#0@@1|) Tclass.StackMachine.Instr) ($Is SeqType |a#7#0#0@@1| (TSeq TChar)))
 :qid |Compilerdfy.193:15|
 :skolemid |9631|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#7#0#0@@1|) Tclass.StackMachine.Instr))
)))
(assert (forall ((|a#26#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#26#0#0@@0|) Tclass.StackMachine.Instr) ($Is SeqType |a#26#0#0@@0| (TSeq TChar)))
 :qid |Compilerdfy.197:14|
 :skolemid |9647|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#26#0#0@@0|) Tclass.StackMachine.Instr))
)))
(assert (forall ((d@@57 T@U) ($h@@62 T@U) ) (!  (=> (and ($IsGoodHeap $h@@62) (and (DafnyAST.Expr.Var_q d@@57) ($IsAlloc DatatypeTypeType d@@57 Tclass.DafnyAST.Expr $h@@62))) ($IsAlloc SeqType (DafnyAST.Expr.v d@@57) (TSeq TChar) $h@@62))
 :qid |unknown.0:0|
 :skolemid |9470|
 :pattern ( ($IsAlloc SeqType (DafnyAST.Expr.v d@@57) (TSeq TChar) $h@@62))
)))
(assert (forall ((d@@58 T@U) ($h@@63 T@U) ) (!  (=> (and ($IsGoodHeap $h@@63) (and (DafnyAST.Stmt.Assign_q d@@58) ($IsAlloc DatatypeTypeType d@@58 Tclass.DafnyAST.Stmt $h@@63))) ($IsAlloc SeqType (DafnyAST.Stmt.v d@@58) (TSeq TChar) $h@@63))
 :qid |unknown.0:0|
 :skolemid |9513|
 :pattern ( ($IsAlloc SeqType (DafnyAST.Stmt.v d@@58) (TSeq TChar) $h@@63))
)))
(assert (forall ((d@@59 T@U) ($h@@64 T@U) ) (!  (=> (and ($IsGoodHeap $h@@64) (and (DafnyAST.InterpResult.InterpResult_q d@@59) ($IsAlloc DatatypeTypeType d@@59 Tclass.DafnyAST.InterpResult $h@@64))) ($IsAlloc SeqType (DafnyAST.InterpResult.output d@@59) (TSeq TInt) $h@@64))
 :qid |unknown.0:0|
 :skolemid |9547|
 :pattern ( ($IsAlloc SeqType (DafnyAST.InterpResult.output d@@59) (TSeq TInt) $h@@64))
)))
(assert (forall ((d@@60 T@U) ($h@@65 T@U) ) (!  (=> (and ($IsGoodHeap $h@@65) (and (StackMachine.Instr.PushVar_q d@@60) ($IsAlloc DatatypeTypeType d@@60 Tclass.StackMachine.Instr $h@@65))) ($IsAlloc SeqType (StackMachine.Instr.v d@@60) (TSeq TChar) $h@@65))
 :qid |unknown.0:0|
 :skolemid |9632|
 :pattern ( ($IsAlloc SeqType (StackMachine.Instr.v d@@60) (TSeq TChar) $h@@65))
)))
(assert (forall ((d@@61 T@U) ($h@@66 T@U) ) (!  (=> (and ($IsGoodHeap $h@@66) (and (StackMachine.Instr.PopVar_q d@@61) ($IsAlloc DatatypeTypeType d@@61 Tclass.StackMachine.Instr $h@@66))) ($IsAlloc SeqType (StackMachine.Instr.v d@@61) (TSeq TChar) $h@@66))
 :qid |unknown.0:0|
 :skolemid |9648|
 :pattern ( ($IsAlloc SeqType (StackMachine.Instr.v d@@61) (TSeq TChar) $h@@66))
)))
(assert (forall ((d@@62 T@U) ($h@@67 T@U) ) (!  (=> (and ($IsGoodHeap $h@@67) (and (StackMachine.State.State_q d@@62) ($IsAlloc DatatypeTypeType d@@62 Tclass.StackMachine.State $h@@67))) ($IsAlloc DatatypeTypeType (StackMachine.State.stack d@@62) (Tclass.LinkedList.List TInt) $h@@67))
 :qid |unknown.0:0|
 :skolemid |9668|
 :pattern ( ($IsAlloc DatatypeTypeType (StackMachine.State.stack d@@62) (Tclass.LinkedList.List TInt) $h@@67))
)))
(assert (forall ((d@@63 T@U) ($h@@68 T@U) ) (!  (=> (and ($IsGoodHeap $h@@68) (and (StackMachine.State.State_q d@@63) ($IsAlloc DatatypeTypeType d@@63 Tclass.StackMachine.State $h@@68))) ($IsAlloc SeqType (StackMachine.State.output d@@63) (TSeq TInt) $h@@68))
 :qid |unknown.0:0|
 :skolemid |9670|
 :pattern ( ($IsAlloc SeqType (StackMachine.State.output d@@63) (TSeq TInt) $h@@68))
)))
(assert (forall ((s@@6 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@6) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |8872|
 :pattern ( (SetRef_to_SetBox s@@6))
)))
(assert (forall ((|a#38#0#0@@0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) (d@@64 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#38#1#0|) ($Box DatatypeTypeType d@@64)) (< (DtRank d@@64) (DtRank (|#StackMachine.State.State| |a#38#0#0@@0| |a#38#1#0| |a#38#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |9675|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#38#1#0|) ($Box DatatypeTypeType d@@64)) (|#StackMachine.State.State| |a#38#0#0@@0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall (($o@@45 T@U) ) (! (= ($Is refType $o@@45 Tclass.CSharpAST.Expr?)  (or (= $o@@45 null) (implements$CSharpAST.Expr (dtype $o@@45))))
 :qid |unknown.0:0|
 :skolemid |9743|
 :pattern ( ($Is refType $o@@45 Tclass.CSharpAST.Expr?))
)))
(assert (forall (($o@@46 T@U) ) (! (= ($Is refType $o@@46 Tclass.CSharpAST.Const?)  (or (= $o@@46 null) (implements$CSharpAST.Const (dtype $o@@46))))
 :qid |unknown.0:0|
 :skolemid |9749|
 :pattern ( ($Is refType $o@@46 Tclass.CSharpAST.Const?))
)))
(assert (forall (($o@@47 T@U) ) (! (= ($Is refType $o@@47 Tclass.CSharpAST.Var?)  (or (= $o@@47 null) (implements$CSharpAST.Var (dtype $o@@47))))
 :qid |unknown.0:0|
 :skolemid |9757|
 :pattern ( ($Is refType $o@@47 Tclass.CSharpAST.Var?))
)))
(assert (forall (($o@@48 T@U) ) (! (= ($Is refType $o@@48 Tclass.CSharpAST.Op?)  (or (= $o@@48 null) (implements$CSharpAST.Op (dtype $o@@48))))
 :qid |unknown.0:0|
 :skolemid |9765|
 :pattern ( ($Is refType $o@@48 Tclass.CSharpAST.Op?))
)))
(assert (forall (($o@@49 T@U) ) (! (= ($Is refType $o@@49 Tclass.CSharpAST.Stmt?)  (or (= $o@@49 null) (implements$CSharpAST.Stmt (dtype $o@@49))))
 :qid |unknown.0:0|
 :skolemid |9777|
 :pattern ( ($Is refType $o@@49 Tclass.CSharpAST.Stmt?))
)))
(assert (forall (($o@@50 T@U) ) (! (= ($Is refType $o@@50 Tclass.CSharpAST.Print?)  (or (= $o@@50 null) (implements$CSharpAST.Print (dtype $o@@50))))
 :qid |unknown.0:0|
 :skolemid |9783|
 :pattern ( ($Is refType $o@@50 Tclass.CSharpAST.Print?))
)))
(assert (forall (($o@@51 T@U) ) (! (= ($Is refType $o@@51 Tclass.CSharpAST.Assign?)  (or (= $o@@51 null) (implements$CSharpAST.Assign (dtype $o@@51))))
 :qid |unknown.0:0|
 :skolemid |9791|
 :pattern ( ($Is refType $o@@51 Tclass.CSharpAST.Assign?))
)))
(assert (forall (($o@@52 T@U) ) (! (= ($Is refType $o@@52 Tclass.CSharpAST.Prog?)  (or (= $o@@52 null) (implements$CSharpAST.Prog (dtype $o@@52))))
 :qid |unknown.0:0|
 :skolemid |9801|
 :pattern ( ($Is refType $o@@52 Tclass.CSharpAST.Prog?))
)))
(assert (forall (($h@@69 T@U) ($o@@53 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@69) (and (or (not (= $o@@53 null)) (not true)) ($Is refType $o@@53 Tclass.CSharpAST.Prog?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@69 $o@@53) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@69 $o@@53) CSharpAST.Prog.s)) (Tclass.System_mCollections_mGeneric.List Tclass.CSharpAST.Stmt) $h@@69))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9804|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@69 $o@@53) CSharpAST.Prog.s)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@2 b@@2) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@2 o@@3) (|Set#IsMember| b@@2 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |8937|
 :pattern ( (|Set#IsMember| a@@2 o@@3))
 :pattern ( (|Set#IsMember| b@@2 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |8938|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) (d@@65 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#62#0#0|) ($Box DatatypeTypeType d@@65)) (< (DtRank d@@65) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#62#0#0| |a#62#1#0|))))
 :qid |Compilerdfy.55:40|
 :skolemid |9550|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#62#0#0|) ($Box DatatypeTypeType d@@65)) (|#DafnyAST.InterpResult.InterpResult| |a#62#0#0| |a#62#1#0|))
)))
(assert (forall ((d@@66 T@U) ($h@@70 T@U) ) (!  (=> (and ($IsGoodHeap $h@@70) (and (DafnyAST.InterpResult.InterpResult_q d@@66) ($IsAlloc DatatypeTypeType d@@66 Tclass.DafnyAST.InterpResult $h@@70))) ($IsAlloc MapType (DafnyAST.InterpResult.ctx d@@66) (TMap (TSeq TChar) TInt) $h@@70))
 :qid |unknown.0:0|
 :skolemid |9546|
 :pattern ( ($IsAlloc MapType (DafnyAST.InterpResult.ctx d@@66) (TMap (TSeq TChar) TInt) $h@@70))
)))
(assert (forall ((d@@67 T@U) ($h@@71 T@U) ) (!  (=> (and ($IsGoodHeap $h@@71) (and (StackMachine.State.State_q d@@67) ($IsAlloc DatatypeTypeType d@@67 Tclass.StackMachine.State $h@@71))) ($IsAlloc MapType (StackMachine.State.regs d@@67) (TMap (TSeq TChar) TInt) $h@@71))
 :qid |unknown.0:0|
 :skolemid |9669|
 :pattern ( ($IsAlloc MapType (StackMachine.State.regs d@@67) (TMap (TSeq TChar) TInt) $h@@71))
)))
(assert (forall ((d@@68 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@72 T@U) ) (!  (=> (and ($IsGoodHeap $h@@72) (and (_System.Tuple2.___hMake2_q d@@68) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@68 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@72)
 :qid |unknown.0:0|
 :skolemid |9247|
 :pattern ( ($IsAlloc DatatypeTypeType d@@68 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@72))
)))) ($IsAllocBox (_System.Tuple2._0 d@@68) |_System._tuple#2$T0@@6| $h@@72))
 :qid |unknown.0:0|
 :skolemid |9248|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@68) |_System._tuple#2$T0@@6| $h@@72))
)))
(assert (forall ((d@@69 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@73 T@U) ) (!  (=> (and ($IsGoodHeap $h@@73) (and (_System.Tuple2.___hMake2_q d@@69) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@69 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@73)
 :qid |unknown.0:0|
 :skolemid |9249|
 :pattern ( ($IsAlloc DatatypeTypeType d@@69 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@73))
)))) ($IsAllocBox (_System.Tuple2._1 d@@69) |_System._tuple#2$T1@@7| $h@@73))
 :qid |unknown.0:0|
 :skolemid |9250|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@69) |_System._tuple#2$T1@@7| $h@@73))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |9016|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((d@@70 T@U) ($h@@74 T@U) ) (!  (=> (and ($IsGoodHeap $h@@74) (and (DafnyAST.Expr.Op_q d@@70) ($IsAlloc DatatypeTypeType d@@70 Tclass.DafnyAST.Expr $h@@74))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.op d@@70) Tclass.DafnyAST.BinOp $h@@74))
 :qid |unknown.0:0|
 :skolemid |9480|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.op d@@70) Tclass.DafnyAST.BinOp $h@@74))
)))
(assert (forall ((d@@71 T@U) ($h@@75 T@U) ) (!  (=> (and ($IsGoodHeap $h@@75) (and (DafnyAST.Expr.Op_q d@@71) ($IsAlloc DatatypeTypeType d@@71 Tclass.DafnyAST.Expr $h@@75))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e1 d@@71) Tclass.DafnyAST.Expr $h@@75))
 :qid |unknown.0:0|
 :skolemid |9481|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e1 d@@71) Tclass.DafnyAST.Expr $h@@75))
)))
(assert (forall ((d@@72 T@U) ($h@@76 T@U) ) (!  (=> (and ($IsGoodHeap $h@@76) (and (DafnyAST.Expr.Op_q d@@72) ($IsAlloc DatatypeTypeType d@@72 Tclass.DafnyAST.Expr $h@@76))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e2 d@@72) Tclass.DafnyAST.Expr $h@@76))
 :qid |unknown.0:0|
 :skolemid |9482|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e2 d@@72) Tclass.DafnyAST.Expr $h@@76))
)))
(assert (forall ((d@@73 T@U) ($h@@77 T@U) ) (!  (=> (and ($IsGoodHeap $h@@77) (and (DafnyAST.Stmt.Print_q d@@73) ($IsAlloc DatatypeTypeType d@@73 Tclass.DafnyAST.Stmt $h@@77))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@73) Tclass.DafnyAST.Expr $h@@77))
 :qid |unknown.0:0|
 :skolemid |9504|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@73) Tclass.DafnyAST.Expr $h@@77))
)))
(assert (forall ((d@@74 T@U) ($h@@78 T@U) ) (!  (=> (and ($IsGoodHeap $h@@78) (and (DafnyAST.Stmt.Assign_q d@@74) ($IsAlloc DatatypeTypeType d@@74 Tclass.DafnyAST.Stmt $h@@78))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@74) Tclass.DafnyAST.Expr $h@@78))
 :qid |unknown.0:0|
 :skolemid |9514|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@74) Tclass.DafnyAST.Expr $h@@78))
)))
(assert (forall ((d@@75 T@U) ($h@@79 T@U) ) (!  (=> (and ($IsGoodHeap $h@@79) (and (DafnyAST.Stmt.Seq_q d@@75) ($IsAlloc DatatypeTypeType d@@75 Tclass.DafnyAST.Stmt $h@@79))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s1 d@@75) Tclass.DafnyAST.Stmt $h@@79))
 :qid |unknown.0:0|
 :skolemid |9526|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s1 d@@75) Tclass.DafnyAST.Stmt $h@@79))
)))
(assert (forall ((d@@76 T@U) ($h@@80 T@U) ) (!  (=> (and ($IsGoodHeap $h@@80) (and (DafnyAST.Stmt.Seq_q d@@76) ($IsAlloc DatatypeTypeType d@@76 Tclass.DafnyAST.Stmt $h@@80))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s2 d@@76) Tclass.DafnyAST.Stmt $h@@80))
 :qid |unknown.0:0|
 :skolemid |9527|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s2 d@@76) Tclass.DafnyAST.Stmt $h@@80))
)))
(assert (forall ((t0@@17 T@U) (t1@@14 T@U) (t2@@11 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@9 T@U) (bx0@@8 T@U) (bx1@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and (and ($IsBox bx0@@8 t0@@17) ($IsBox bx1@@8 t1@@14)) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 t0@@17 t1@@14 t2@@11)))) (forall ((o@@4 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads2 t0@@17 t1@@14 t2@@11 h0@@1 f@@9 bx0@@8 bx1@@8) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@4) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@4) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |9276|
))) (= (Reads2 t0@@17 t1@@14 t2@@11 h0@@1 f@@9 bx0@@8 bx1@@8) (Reads2 t0@@17 t1@@14 t2@@11 h1@@1 f@@9 bx0@@8 bx1@@8)))
 :qid |unknown.0:0|
 :skolemid |9277|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads2 t0@@17 t1@@14 t2@@11 h1@@1 f@@9 bx0@@8 bx1@@8))
)))
(assert (forall ((t0@@18 T@U) (t1@@15 T@U) (t2@@12 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@10 T@U) (bx0@@9 T@U) (bx1@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and (and ($IsBox bx0@@9 t0@@18) ($IsBox bx1@@9 t1@@15)) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@18 t1@@15 t2@@12)))) (forall ((o@@5 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads2 t0@@18 t1@@15 t2@@12 h1@@2 f@@10 bx0@@9 bx1@@9) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@5) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@5) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |9278|
))) (= (Reads2 t0@@18 t1@@15 t2@@12 h0@@2 f@@10 bx0@@9 bx1@@9) (Reads2 t0@@18 t1@@15 t2@@12 h1@@2 f@@10 bx0@@9 bx1@@9)))
 :qid |unknown.0:0|
 :skolemid |9279|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads2 t0@@18 t1@@15 t2@@12 h1@@2 f@@10 bx0@@9 bx1@@9))
)))
(assert (forall ((t0@@19 T@U) (t1@@16 T@U) (t2@@13 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@11 T@U) (bx0@@10 T@U) (bx1@@10 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and (and ($IsBox bx0@@10 t0@@19) ($IsBox bx1@@10 t1@@16)) ($Is HandleTypeType f@@11 (Tclass._System.___hFunc2 t0@@19 t1@@16 t2@@13)))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads2 t0@@19 t1@@16 t2@@13 h0@@3 f@@11 bx0@@10 bx1@@10) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |9284|
))) (= (Apply2 t0@@19 t1@@16 t2@@13 h0@@3 f@@11 bx0@@10 bx1@@10) (Apply2 t0@@19 t1@@16 t2@@13 h1@@3 f@@11 bx0@@10 bx1@@10)))
 :qid |unknown.0:0|
 :skolemid |9285|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply2 t0@@19 t1@@16 t2@@13 h1@@3 f@@11 bx0@@10 bx1@@10))
)))
(assert (forall ((t0@@20 T@U) (t1@@17 T@U) (t2@@14 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@12 T@U) (bx0@@11 T@U) (bx1@@11 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and (and ($IsBox bx0@@11 t0@@20) ($IsBox bx1@@11 t1@@17)) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc2 t0@@20 t1@@17 t2@@14)))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads2 t0@@20 t1@@17 t2@@14 h1@@4 f@@12 bx0@@11 bx1@@11) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |9286|
))) (= (Apply2 t0@@20 t1@@17 t2@@14 h0@@4 f@@12 bx0@@11 bx1@@11) (Apply2 t0@@20 t1@@17 t2@@14 h1@@4 f@@12 bx0@@11 bx1@@11)))
 :qid |unknown.0:0|
 :skolemid |9287|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply2 t0@@20 t1@@17 t2@@14 h1@@4 f@@12 bx0@@11 bx1@@11))
)))
(assert (forall ((|n#0@@0| T@U) ) (! (= ($Is intType |n#0@@0| Tclass.NativeTypes.nativeint)  (and (<= (LitInt (- 0 2147483648)) (U_2_int |n#0@@0|)) (< (U_2_int |n#0@@0|) 2147483648)))
 :qid |unknown.0:0|
 :skolemid |9701|
 :pattern ( ($Is intType |n#0@@0| Tclass.NativeTypes.nativeint))
)))
(assert (forall (($ly@@16 T@U) (|s#0@@5| T@U) (|ctx#0@@6| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt_k#canCall| |s#0@@5| |ctx#0@@6|) (and ($Is DatatypeTypeType |s#0@@5| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@6| (TMap (TSeq TChar) TInt)))) ($Is DatatypeTypeType (DafnyAST.__default.interpStmt_k $ly@@16 |s#0@@5| |ctx#0@@6|) Tclass.DafnyAST.InterpResult))
 :qid |Compilerdfy.57:12|
 :skolemid |9438|
 :pattern ( (DafnyAST.__default.interpStmt_k $ly@@16 |s#0@@5| |ctx#0@@6|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |9251|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) ) (! (= (|#DafnyAST.Stmt.Assign| (Lit SeqType |a#43#0#0|) (Lit DatatypeTypeType |a#43#1#0|)) (Lit DatatypeTypeType (|#DafnyAST.Stmt.Assign| |a#43#0#0| |a#43#1#0|)))
 :qid |Compilerdfy.37:14|
 :skolemid |9515|
 :pattern ( (|#DafnyAST.Stmt.Assign| (Lit SeqType |a#43#0#0|) (Lit DatatypeTypeType |a#43#1#0|)))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (= (|#DafnyAST.Stmt.Seq| (Lit DatatypeTypeType |a#52#0#0|) (Lit DatatypeTypeType |a#52#1#0|)) (Lit DatatypeTypeType (|#DafnyAST.Stmt.Seq| |a#52#0#0| |a#52#1#0|)))
 :qid |Compilerdfy.38:11|
 :skolemid |9528|
 :pattern ( (|#DafnyAST.Stmt.Seq| (Lit DatatypeTypeType |a#52#0#0|) (Lit DatatypeTypeType |a#52#1#0|)))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) ) (! (= (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |a#60#0#0|) (Lit SeqType |a#60#1#0|)) (Lit DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| |a#60#0#0| |a#60#1#0|)))
 :qid |Compilerdfy.55:40|
 :skolemid |9548|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |a#60#0#0|) (Lit SeqType |a#60#1#0|)))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#LinkedList.List.Cons| (Lit BoxType |a#3#0#0@@0|) (Lit DatatypeTypeType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#LinkedList.List.Cons| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |9589|
 :pattern ( (|#LinkedList.List.Cons| (Lit BoxType |a#3#0#0@@0|) (Lit DatatypeTypeType |a#3#1#0@@0|)))
)))
(assert (forall ((|s#0@@6| T@U) (|ctx#0@@7| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt#canCall| |s#0@@6| |ctx#0@@7|) (and ($Is DatatypeTypeType |s#0@@6| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@7| (TMap (TSeq TChar) TInt)))) ($Is SeqType (DafnyAST.__default.interpStmt |s#0@@6| |ctx#0@@7|) (TSeq TInt)))
 :qid |Compilerdfy.70:23|
 :skolemid |9442|
 :pattern ( (DafnyAST.__default.interpStmt |s#0@@6| |ctx#0@@7|))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |8807|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#11#0#0@@0| Int) ) (! (= (|#DafnyAST.Expr.Const| (LitInt |a#11#0#0@@0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Const| |a#11#0#0@@0|)))
 :qid |Compilerdfy.27:13|
 :skolemid |9463|
 :pattern ( (|#DafnyAST.Expr.Const| (LitInt |a#11#0#0@@0|)))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= (|#DafnyAST.Expr.Var| (Lit SeqType |a#16#0#0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Var| |a#16#0#0|)))
 :qid |Compilerdfy.28:11|
 :skolemid |9471|
 :pattern ( (|#DafnyAST.Expr.Var| (Lit SeqType |a#16#0#0|)))
)))
(assert (forall ((|a#37#0#0@@0| T@U) ) (! (= (|#DafnyAST.Stmt.Print| (Lit DatatypeTypeType |a#37#0#0@@0|)) (Lit DatatypeTypeType (|#DafnyAST.Stmt.Print| |a#37#0#0@@0|)))
 :qid |Compilerdfy.36:13|
 :skolemid |9505|
 :pattern ( (|#DafnyAST.Stmt.Print| (Lit DatatypeTypeType |a#37#0#0@@0|)))
)))
(assert (forall ((|a#3#0#0@@1| Int) ) (! (= (|#StackMachine.Instr.PushConst| (LitInt |a#3#0#0@@1|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#3#0#0@@1|)))
 :qid |Compilerdfy.192:17|
 :skolemid |9625|
 :pattern ( (|#StackMachine.Instr.PushConst| (LitInt |a#3#0#0@@1|)))
)))
(assert (forall ((|a#8#0#0@@0| T@U) ) (! (= (|#StackMachine.Instr.PushVar| (Lit SeqType |a#8#0#0@@0|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#8#0#0@@0|)))
 :qid |Compilerdfy.193:15|
 :skolemid |9633|
 :pattern ( (|#StackMachine.Instr.PushVar| (Lit SeqType |a#8#0#0@@0|)))
)))
(assert (forall ((|a#27#0#0@@0| T@U) ) (! (= (|#StackMachine.Instr.PopVar| (Lit SeqType |a#27#0#0@@0|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#27#0#0@@0|)))
 :qid |Compilerdfy.197:14|
 :skolemid |9649|
 :pattern ( (|#StackMachine.Instr.PopVar| (Lit SeqType |a#27#0#0@@0|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |8805|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall (($ly@@17 T@U) ($Heap@@6 T@U) (|c#0@@32| T@U) ) (!  (=> (or (|Translator.__default.translateExpr#canCall| $Heap@@6 |c#0@@32|) (and ($IsGoodHeap $Heap@@6) (and ($Is refType |c#0@@32| Tclass.CSharpAST.Expr) ($IsAlloc refType |c#0@@32| Tclass.CSharpAST.Expr $Heap@@6)))) ($Is DatatypeTypeType (Translator.__default.translateExpr $ly@@17 $Heap@@6 |c#0@@32|) Tclass.DafnyAST.Expr))
 :qid |Compilerdfy.487:28|
 :skolemid |9817|
 :pattern ( (Translator.__default.translateExpr $ly@@17 $Heap@@6 |c#0@@32|))
)))
(assert (forall (($ly@@18 T@U) ($Heap@@7 T@U) (|c#0@@33| T@U) ) (!  (=> (or (|Translator.__default.translateStmt#canCall| $Heap@@7 |c#0@@33|) (and ($IsGoodHeap $Heap@@7) (and ($Is refType |c#0@@33| Tclass.CSharpAST.Stmt) ($IsAlloc refType |c#0@@33| Tclass.CSharpAST.Stmt $Heap@@7)))) ($Is DatatypeTypeType (Translator.__default.translateStmt $ly@@18 $Heap@@7 |c#0@@33|) Tclass.DafnyAST.Stmt))
 :qid |Compilerdfy.505:28|
 :skolemid |9824|
 :pattern ( (Translator.__default.translateStmt $ly@@18 $Heap@@7 |c#0@@33|))
)))
(assert (forall (($ly@@19 T@U) (|e#0@@1| T@U) (|ctx#0@@8| T@U) ) (!  (=> (or (|DafnyAST.__default.interpExpr#canCall| |e#0@@1| |ctx#0@@8|) (and ($Is DatatypeTypeType |e#0@@1| Tclass.DafnyAST.Expr) ($Is MapType |ctx#0@@8| (TMap (TSeq TChar) TInt)))) (and (=> (not (DafnyAST.Expr.Const_q |e#0@@1|)) (=> (not (DafnyAST.Expr.Var_q |e#0@@1|)) (and (=> (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@1|)) (let ((|e2#34| (DafnyAST.Expr.e2 |e#0@@1|)))
(let ((|e1#34| (DafnyAST.Expr.e1 |e#0@@1|)))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#34| |ctx#0@@8|) (|DafnyAST.__default.interpExpr#canCall| |e2#34| |ctx#0@@8|))))) (=> (not (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@1|))) (let ((|e2#35| (DafnyAST.Expr.e2 |e#0@@1|)))
(let ((|e1#35| (DafnyAST.Expr.e1 |e#0@@1|)))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#35| |ctx#0@@8|) (|DafnyAST.__default.interpExpr#canCall| |e2#35| |ctx#0@@8|)))))))) (= (DafnyAST.__default.interpExpr ($LS $ly@@19) |e#0@@1| |ctx#0@@8|) (ite (DafnyAST.Expr.Const_q |e#0@@1|) (let ((|n#16| (DafnyAST.Expr.n |e#0@@1|)))
|n#16|) (ite (DafnyAST.Expr.Var_q |e#0@@1|) (let ((|v#16@@0| (DafnyAST.Expr.v |e#0@@1|)))
(ite (|Set#IsMember| (|Map#Domain| |ctx#0@@8|) ($Box SeqType |v#16@@0|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@8|) ($Box SeqType |v#16@@0|)))) 0)) (ite (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@1|)) (let ((|e2#32| (DafnyAST.Expr.e2 |e#0@@1|)))
(let ((|e1#32| (DafnyAST.Expr.e1 |e#0@@1|)))
(+ (DafnyAST.__default.interpExpr $ly@@19 |e1#32| |ctx#0@@8|) (DafnyAST.__default.interpExpr $ly@@19 |e2#32| |ctx#0@@8|)))) (let ((|e2#33| (DafnyAST.Expr.e2 |e#0@@1|)))
(let ((|e1#33| (DafnyAST.Expr.e1 |e#0@@1|)))
(- (DafnyAST.__default.interpExpr $ly@@19 |e1#33| |ctx#0@@8|) (DafnyAST.__default.interpExpr $ly@@19 |e2#33| |ctx#0@@8|))))))))))
 :qid |Compilerdfy.44:12|
 :skolemid |9433|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@19) |e#0@@1| |ctx#0@@8|))
)))
(assert (forall ((t0@@21 T@U) (t1@@18 T@U) (t2@@15 T@U) (heap@@3 T@U) (h@@11 T@U) (r@@2 T@U) (rd@@1 T@U) (bx0@@12 T@U) (bx1@@12 T@U) ) (!  (=> (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType boolType r@@2 heap@@3 bx0@@12 bx1@@12)) (Requires2 t0@@21 t1@@18 t2@@15 heap@@3 (Handle2 h@@11 r@@2 rd@@1) bx0@@12 bx1@@12))
 :qid |unknown.0:0|
 :skolemid |9274|
 :pattern ( (Requires2 t0@@21 t1@@18 t2@@15 heap@@3 (Handle2 h@@11 r@@2 rd@@1) bx0@@12 bx1@@12))
)))
(assert (forall ((s@@7 T@U) ) (!  (=> (= (|Seq#Length| s@@7) 0) (= s@@7 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |9011|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall (($h@@81 T@U) ($o@@54 T@U) ) (!  (=> (and ($IsGoodHeap $h@@81) (and (or (not (= $o@@54 null)) (not true)) ($Is refType $o@@54 Tclass.CSharpAST.Prog?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@81 $o@@54) CSharpAST.Prog.s)) (Tclass.System_mCollections_mGeneric.List Tclass.CSharpAST.Stmt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9803|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@81 $o@@54) CSharpAST.Prog.s)))
)))
(assert (forall ((|p#0@@4| T@U) (|input#0@@1| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg#canCall| |p#0@@4| |input#0@@1|) (and ($Is DatatypeTypeType |p#0@@4| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is MapType |input#0@@1| (TMap (TSeq TChar) TInt)))) ($Is SeqType (StackMachine.__default.interpProg |p#0@@4| |input#0@@1|) (TSeq TInt)))
 :qid |Compilerdfy.242:23|
 :skolemid |9615|
 :pattern ( (StackMachine.__default.interpProg |p#0@@4| |input#0@@1|))
)))
(assert (forall (($ly@@20 T@U) (|p#0@@5| T@U) (|st#0@@5| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg_k#canCall| |p#0@@5| |st#0@@5|) (and ($Is DatatypeTypeType |p#0@@5| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |st#0@@5| Tclass.StackMachine.State))) ($Is DatatypeTypeType (StackMachine.__default.interpProg_k $ly@@20 |p#0@@5| |st#0@@5|) Tclass.StackMachine.State))
 :qid |Compilerdfy.233:12|
 :skolemid |9610|
 :pattern ( (StackMachine.__default.interpProg_k $ly@@20 |p#0@@5| |st#0@@5|))
)))
(assert (forall ((d@@77 T@U) ) (!  (=> ($Is DatatypeTypeType d@@77 Tclass.DafnyAST.Stmt) (or (or (or (DafnyAST.Stmt.Skip_q d@@77) (DafnyAST.Stmt.Print_q d@@77)) (DafnyAST.Stmt.Assign_q d@@77)) (DafnyAST.Stmt.Seq_q d@@77)))
 :qid |unknown.0:0|
 :skolemid |9535|
 :pattern ( (DafnyAST.Stmt.Seq_q d@@77) ($Is DatatypeTypeType d@@77 Tclass.DafnyAST.Stmt))
 :pattern ( (DafnyAST.Stmt.Assign_q d@@77) ($Is DatatypeTypeType d@@77 Tclass.DafnyAST.Stmt))
 :pattern ( (DafnyAST.Stmt.Print_q d@@77) ($Is DatatypeTypeType d@@77 Tclass.DafnyAST.Stmt))
 :pattern ( (DafnyAST.Stmt.Skip_q d@@77) ($Is DatatypeTypeType d@@77 Tclass.DafnyAST.Stmt))
)))
(assert (forall ((h@@12 T@U) (v@@12 T@U) ) (! ($IsAlloc intType v@@12 TInt h@@12)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |8850|
 :pattern ( ($IsAlloc intType v@@12 TInt h@@12))
)))
(assert (forall ((h@@13 T@U) (v@@13 T@U) ) (! ($IsAlloc charType v@@13 TChar h@@13)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |8853|
 :pattern ( ($IsAlloc charType v@@13 TChar h@@13))
)))
(assert (forall ((LinkedList.List$T@@8 T@U) (|a#2#0#0@@3| T@U) (|a#2#1#0@@2| T@U) ($h@@82 T@U) ) (!  (=> ($IsGoodHeap $h@@82) (= ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@3| |a#2#1#0@@2|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@82)  (and ($IsAllocBox |a#2#0#0@@3| LinkedList.List$T@@8 $h@@82) ($IsAlloc DatatypeTypeType |a#2#1#0@@2| (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@82))))
 :qid |unknown.0:0|
 :skolemid |9586|
 :pattern ( ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@3| |a#2#1#0@@2|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@82))
)))
(assert (forall ((v@@14 T@U) (t0@@22 T@U) ) (! (= ($Is SeqType v@@14 (TSeq t0@@22)) (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length| v@@14))) ($IsBox (|Seq#Index| v@@14 i@@7) t0@@22))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |8842|
 :pattern ( (|Seq#Index| v@@14 i@@7))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |8843|
 :pattern ( ($Is SeqType v@@14 (TSeq t0@@22)))
)))
(assert (forall (($ly@@21 T@U) (|op#0@@2| T@U) ) (!  (=> (or (|Translator.__default.translateOp#canCall| (Lit refType |op#0@@2|)) ($Is refType |op#0@@2| Tclass.CSharpAST.Op____BinOp)) (and (and (|CSharpAST.Op____BinOp.Equals#canCall| (Lit refType |op#0@@2|) CSharpAST.Op____BinOp.Add) (=> (not (CSharpAST.Op____BinOp.Equals (Lit refType |op#0@@2|) CSharpAST.Op____BinOp.Add)) (and (|CSharpAST.Op____BinOp.Equals#canCall| (Lit refType |op#0@@2|) CSharpAST.Op____BinOp.Sub) (=> (not (CSharpAST.Op____BinOp.Equals (Lit refType |op#0@@2|) CSharpAST.Op____BinOp.Sub)) (|Translator.__default.translateOp#canCall| (Lit refType |op#0@@2|)))))) (= (Translator.__default.translateOp ($LS $ly@@21) (Lit refType |op#0@@2|)) (ite (CSharpAST.Op____BinOp.Equals (Lit refType |op#0@@2|) CSharpAST.Op____BinOp.Add) |#DafnyAST.BinOp.Add| (ite (CSharpAST.Op____BinOp.Equals (Lit refType |op#0@@2|) CSharpAST.Op____BinOp.Sub) |#DafnyAST.BinOp.Sub| (Translator.__default.translateOp ($LS $ly@@21) (Lit refType |op#0@@2|)))))))
 :qid |Compilerdfy.479:28|
 :weight 3
 :skolemid |9812|
 :pattern ( (Translator.__default.translateOp ($LS $ly@@21) (Lit refType |op#0@@2|)))
)))
(assert (forall ((m@@13 T@U) ) (!  (or (= m@@13 |Map#Empty|) (exists ((k@@3 T@U) (v@@15 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@13) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@15)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |9066|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |9067|
 :pattern ( (|Map#Items| m@@13))
)))
(assert (forall ((s@@8 T@U) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| s@@8))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@8))) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |9056|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@8))))
)))
(assert (forall ((v@@16 T@U) (t0@@23 T@U) (t1@@19 T@U) ) (!  (=> ($Is MapType v@@16 (TMap t0@@23 t1@@19)) (and (and ($Is SetType (|Map#Domain| v@@16) (TSet t0@@23)) ($Is SetType (|Map#Values| v@@16) (TSet t1@@19))) ($Is SetType (|Map#Items| v@@16) (TSet (Tclass._System.Tuple2 t0@@23 t1@@19)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |8846|
 :pattern ( ($Is MapType v@@16 (TMap t0@@23 t1@@19)))
)))
(assert (forall ((v@@17 T@U) ) (! ($Is intType v@@17 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |8829|
 :pattern ( ($Is intType v@@17 TInt))
)))
(assert (forall ((v@@18 T@U) ) (! ($Is charType v@@18 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |8832|
 :pattern ( ($Is charType v@@18 TChar))
)))
(assert (forall ((|a#42#0#0@@0| T@U) (|a#42#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Stmt.Assign| |a#42#0#0@@0| |a#42#1#0@@0|) Tclass.DafnyAST.Stmt)  (and ($Is SeqType |a#42#0#0@@0| (TSeq TChar)) ($Is DatatypeTypeType |a#42#1#0@@0| Tclass.DafnyAST.Expr)))
 :qid |Compilerdfy.37:14|
 :skolemid |9512|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Stmt.Assign| |a#42#0#0@@0| |a#42#1#0@@0|) Tclass.DafnyAST.Stmt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@8 () T@U)
(declare-fun |cAST#0| () T@U)
(declare-fun |translated#0@0| () T@U)
(declare-fun |call2formal@dSM#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |call2formal@dSM#0@0| () T@U)
(declare-fun |call2formal@l#0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call2formal@l#0@0| () T@U)
(declare-fun |defass#output#0| () Bool)
(declare-fun |output#0| () T@U)
(declare-fun |translated#0| () T@U)
(declare-fun |compiled#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Interop.DafnyCompiler.CompileAndExport)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@8 alloc false)) (=> (and ($IsAlloc refType |cAST#0| Tclass.CSharpAST.Prog $Heap@@8) (|Translator.__default.translateProg#canCall| $Heap@@8 |cAST#0|)) (=> (and (and (and (|Translator.__default.translateProg#canCall| $Heap@@8 |cAST#0|) (= |translated#0@0| (Translator.__default.translateProg $Heap@@8 |cAST#0|))) (and ($Is DatatypeTypeType |call2formal@dSM#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType |call2formal@dSM#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr) $Heap@@8))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and ($Is DatatypeTypeType |call2formal@dSM#0@0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType |call2formal@dSM#0@0| (Tclass.LinkedList.List Tclass.StackMachine.Instr) $Heap@0)))) (=> (and (and (and (and (forall ((|input#1| T@U) ) (!  (=> ($Is MapType |input#1| (TMap (TSeq TChar) TInt)) (and (|DafnyAST.__default.interpStmt#canCall| |translated#0@0| |input#1|) (|StackMachine.__default.interpProg#canCall| |call2formal@dSM#0@0| |input#1|)))
 :qid |Compilerdfy.601:22|
 :skolemid |9408|
 :pattern ( (StackMachine.__default.interpProg |call2formal@dSM#0@0| |input#1|))
 :pattern ( (DafnyAST.__default.interpStmt |translated#0@0| |input#1|))
)) (forall ((|input#1@@0| T@U) ) (!  (=> ($Is MapType |input#1@@0| (TMap (TSeq TChar) TInt)) (|Seq#Equal| (DafnyAST.__default.interpStmt |translated#0@0| |input#1@@0|) (StackMachine.__default.interpProg |call2formal@dSM#0@0| |input#1@@0|)))
 :qid |Compilerdfy.601:22|
 :skolemid |9409|
 :pattern ( (StackMachine.__default.interpProg |call2formal@dSM#0@0| |input#1@@0|))
 :pattern ( (DafnyAST.__default.interpStmt |translated#0@0| |input#1@@0|))
))) (and (forall (($o@@55 T@U) ) (!  (=> (and (or (not (= $o@@55 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@55) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@55) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 $o@@55)))
 :qid |Compilerdfy.600:19|
 :skolemid |9410|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@55))
)) ($HeapSucc $Heap@@8 $Heap@0))) (and (and ($Is refType |call2formal@l#0| (Tclass.System_mCollections_mGeneric.List Tclass.System.String)) ($IsAlloc refType |call2formal@l#0| (Tclass.System_mCollections_mGeneric.List Tclass.System.String) $Heap@@8)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and ($Is refType |call2formal@l#0@0| (Tclass.System_mCollections_mGeneric.List Tclass.System.String)) ($IsAlloc refType |call2formal@l#0@0| (Tclass.System_mCollections_mGeneric.List Tclass.System.String) $Heap@1)) (forall (($o@@56 T@U) ) (!  (=> (and (or (not (= $o@@56 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@56) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@56) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@56)))
 :qid |Compilerdfy.565:10|
 :skolemid |9844|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@56))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= (ControlFlow 0 2) (- 0 1))))) true))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@8) ($IsHeapAnchor $Heap@@8)) (=> (and (and (and (and ($Is refType |cAST#0| Tclass.CSharpAST.Prog) ($IsAlloc refType |cAST#0| Tclass.CSharpAST.Prog $Heap@@8)) (=> |defass#output#0| (and ($Is refType |output#0| (Tclass.System_mCollections_mGeneric.List Tclass.System.String)) ($IsAlloc refType |output#0| (Tclass.System_mCollections_mGeneric.List Tclass.System.String) $Heap@@8)))) (and (and ($Is DatatypeTypeType |translated#0| Tclass.DafnyAST.Stmt) ($IsAlloc DatatypeTypeType |translated#0| Tclass.DafnyAST.Stmt $Heap@@8)) true)) (and (and (and ($Is DatatypeTypeType |compiled#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType |compiled#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr) $Heap@@8)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 3) 2)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
