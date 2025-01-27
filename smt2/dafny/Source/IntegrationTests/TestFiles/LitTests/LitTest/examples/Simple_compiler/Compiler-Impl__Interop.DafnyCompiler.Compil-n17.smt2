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
(declare-fun |##_System._tuple#3._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3 () T@U)
(declare-fun Tagclass.DafnyAST.Stmt () T@U)
(declare-fun Tagclass.StackMachine.Instr () T@U)
(declare-fun Tagclass.LinkedList.List () T@U)
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
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_tuple#3| () T@U)
(declare-fun tytagFamily$Stmt () T@U)
(declare-fun tytagFamily$Instr () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$InterpResult () T@U)
(declare-fun tytagFamily$BinOp () T@U)
(declare-fun tytagFamily$State () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun LinkedList.__default.Concat (T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |LinkedList.__default.Concat#canCall| (T@U T@U T@U) Bool)
(declare-fun Tclass.LinkedList.List (T@U) T@U)
(declare-fun |#DafnyAST.Stmt.Seq| (T@U T@U) T@U)
(declare-fun Tclass.DafnyAST.Stmt () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun StackMachine.__default.interpProg (T@U T@U) T@U)
(declare-fun |StackMachine.__default.interpProg#canCall| (T@U T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun StackMachine.__default.EmptyState () T@U)
(declare-fun |StackMachine.__default.interpProg_k#canCall| (T@U T@U) Bool)
(declare-fun StackMachine.__default.interpProg_k (T@U T@U T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |#DafnyAST.Stmt.Assign| (T@U T@U) T@U)
(declare-fun |#DafnyAST.InterpResult.InterpResult| (T@U T@U) T@U)
(declare-fun |#DafnyAST.Expr.Op| (T@U T@U T@U) T@U)
(declare-fun Tclass.DafnyAST.Expr () T@U)
(declare-fun Tclass.DafnyAST.BinOp () T@U)
(declare-fun |#DafnyAST.Expr.Var| (T@U) T@U)
(declare-fun |#StackMachine.Instr.PushVar| (T@U) T@U)
(declare-fun |#StackMachine.Instr.PopVar| (T@U) T@U)
(declare-fun |#_System._tuple#3._#Make3| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple3 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_2 (T@U) T@U)
(declare-fun _System.Tuple3._0 (T@U) T@U)
(declare-fun _System.Tuple3._1 (T@U) T@U)
(declare-fun _System.Tuple3._2 (T@U) T@U)
(declare-fun DafnyAST.Expr.op (T@U) T@U)
(declare-fun DafnyAST.Expr.e1 (T@U) T@U)
(declare-fun DafnyAST.Expr.e2 (T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |#DafnyAST.BinOp.Add| () T@U)
(declare-fun |#DafnyAST.BinOp.Sub| () T@U)
(declare-fun |#DafnyAST.Stmt.Skip| () T@U)
(declare-fun |#LinkedList.List.Nil| () T@U)
(declare-fun |#StackMachine.Instr.PopAdd| () T@U)
(declare-fun |#StackMachine.Instr.PopSub| () T@U)
(declare-fun |#StackMachine.Instr.PopPrint| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Compiler.__default.compileExpr (T@U T@U) T@U)
(declare-fun |Compiler.__default.compileExpr#canCall| (T@U) Bool)
(declare-fun Compiler.__default.compileStmt (T@U T@U) T@U)
(declare-fun |Compiler.__default.compileStmt#canCall| (T@U) Bool)
(declare-fun DafnyAST.InterpResult.InterpResult_q (T@U) Bool)
(declare-fun Tclass.DafnyAST.InterpResult () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(declare-fun DafnyAST.__default.interpStmt (T@U T@U) T@U)
(declare-fun |DafnyAST.__default.interpStmt#canCall| (T@U T@U) Bool)
(declare-fun Rewriter.__default.simplifyStmt (T@U T@U) T@U)
(declare-fun |Rewriter.__default.simplifyStmt#canCall| (T@U) Bool)
(declare-fun |Rewriter.__default.simplifyExpr#canCall| (T@U) Bool)
(declare-fun |#DafnyAST.Stmt.Print| (T@U) T@U)
(declare-fun Rewriter.__default.simplifyExpr (T@U T@U) T@U)
(declare-fun |DafnyAST.InterpResult#Equal| (T@U T@U) Bool)
(declare-fun DafnyAST.Expr.Const_q (T@U) Bool)
(declare-fun DafnyAST.Expr.Var_q (T@U) Bool)
(declare-fun _System.Tuple3.___hMake3_q (T@U) Bool)
(declare-fun DafnyAST.BinOp.Add_q (T@U) Bool)
(declare-fun DafnyAST.Expr.n (T@U) Int)
(declare-fun |#DafnyAST.Expr.Const| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DafnyAST.BinOp.Sub_q (T@U) Bool)
(declare-fun DafnyAST.Expr.Op_q (T@U) Bool)
(declare-fun DafnyAST.Stmt.Seq_q (T@U) Bool)
(declare-fun LinkedList.List.Nil_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopVar_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun |#StackMachine.Instr.PushConst| (Int) T@U)
(declare-fun |Map#Empty| () T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun DafnyAST.Expr.v (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.LinkedList.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
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
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |$IsA#DafnyAST.Stmt| (T@U) Bool)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |##_System._tuple#3._#Make3| Tagclass._System.Tuple3 Tagclass.DafnyAST.Stmt Tagclass.StackMachine.Instr Tagclass.LinkedList.List Tagclass.DafnyAST.Expr Tagclass.DafnyAST.InterpResult |##DafnyAST.BinOp.Add| Tagclass.DafnyAST.BinOp |##DafnyAST.BinOp.Sub| |##DafnyAST.Expr.Const| |##DafnyAST.Expr.Var| |##DafnyAST.Expr.Op| |##DafnyAST.Stmt.Skip| |##DafnyAST.Stmt.Print| |##DafnyAST.Stmt.Assign| |##DafnyAST.Stmt.Seq| |##DafnyAST.InterpResult.InterpResult| |##LinkedList.List.Cons| |##LinkedList.List.Nil| Tagclass.StackMachine.State |##StackMachine.Instr.PushConst| |##StackMachine.Instr.PushVar| |##StackMachine.Instr.PopAdd| |##StackMachine.Instr.PopSub| |##StackMachine.Instr.PopPrint| |##StackMachine.Instr.PopVar| |##StackMachine.State.State| |tytagFamily$_tuple#2| |tytagFamily$_tuple#3| tytagFamily$Stmt tytagFamily$Instr tytagFamily$List tytagFamily$Expr tytagFamily$InterpResult tytagFamily$BinOp tytagFamily$State)
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
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (forall ((LinkedList._default.Concat$T T@U) ($ly T@U) (|l1#0| T@U) (|l2#0| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T (Lit DatatypeTypeType |l1#0|) (Lit DatatypeTypeType |l2#0|)) (and ($Is DatatypeTypeType |l1#0| (Tclass.LinkedList.List LinkedList._default.Concat$T)) ($Is DatatypeTypeType |l2#0| (Tclass.LinkedList.List LinkedList._default.Concat$T)))) (and (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType |l1#0|))))) (let ((|t#27| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |l1#0|)))))
(|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T |t#27| (Lit DatatypeTypeType |l2#0|)))) (= (LinkedList.__default.Concat LinkedList._default.Concat$T ($LS $ly) (Lit DatatypeTypeType |l1#0|) (Lit DatatypeTypeType |l2#0|)) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType |l1#0|)) (let ((|t#26| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |l1#0|)))))
(let ((|h#26| (Lit BoxType (LinkedList.List.hd (Lit DatatypeTypeType |l1#0|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| |h#26| (Lit DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T ($LS $ly) |t#26| (Lit DatatypeTypeType |l2#0|))))))) |l2#0|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |9580|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T ($LS $ly) (Lit DatatypeTypeType |l1#0|) (Lit DatatypeTypeType |l2#0|)))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Stmt.Seq| |a#51#0#0| |a#51#1#0|) Tclass.DafnyAST.Stmt)  (and ($Is DatatypeTypeType |a#51#0#0| Tclass.DafnyAST.Stmt) ($Is DatatypeTypeType |a#51#1#0| Tclass.DafnyAST.Stmt)))
 :qid |Compilerdfy.38:11|
 :skolemid |9525|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Stmt.Seq| |a#51#0#0| |a#51#1#0|) Tclass.DafnyAST.Stmt))
)))
(assert (forall ((LinkedList._default.Concat$T@@0 T@U) ($ly@@0 T@U) (|l1#0@@0| T@U) (|l2#0@@0| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@0 |l1#0@@0| |l2#0@@0|) (and ($Is DatatypeTypeType |l1#0@@0| (Tclass.LinkedList.List LinkedList._default.Concat$T@@0)) ($Is DatatypeTypeType |l2#0@@0| (Tclass.LinkedList.List LinkedList._default.Concat$T@@0)))) (and (=> (LinkedList.List.Cons_q |l1#0@@0|) (let ((|t#25| (LinkedList.List.tl |l1#0@@0|)))
(|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@0 |t#25| |l2#0@@0|))) (= (LinkedList.__default.Concat LinkedList._default.Concat$T@@0 ($LS $ly@@0) |l1#0@@0| |l2#0@@0|) (ite (LinkedList.List.Cons_q |l1#0@@0|) (let ((|t#24| (LinkedList.List.tl |l1#0@@0|)))
(let ((|h#24| (LinkedList.List.hd |l1#0@@0|)))
(|#LinkedList.List.Cons| |h#24| (LinkedList.__default.Concat LinkedList._default.Concat$T@@0 $ly@@0 |t#24| |l2#0@@0|)))) |l2#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |9579|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@0 ($LS $ly@@0) |l1#0@@0| |l2#0@@0|))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#41#2#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#41#2#0| i))) (DtRank (|#StackMachine.State.State| |a#41#0#0| |a#41#1#0| |a#41#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |9678|
 :pattern ( (|Seq#Index| |a#41#2#0| i) (|#StackMachine.State.State| |a#41#0#0| |a#41#1#0| |a#41#2#0|))
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
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|)) |##_System._tuple#3._#Make3|)
 :qid |unknown.0:0|
 :skolemid |9317|
 :pattern ( (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (forall ((|_System._tuple#3$T0| T@U) (|_System._tuple#3$T1| T@U) (|_System._tuple#3$T2| T@U) ) (! (= (Tclass._System.Tuple3_0 (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|)) |_System._tuple#3$T0|)
 :qid |unknown.0:0|
 :skolemid |9322|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|))
)))
(assert (forall ((|_System._tuple#3$T0@@0| T@U) (|_System._tuple#3$T1@@0| T@U) (|_System._tuple#3$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3_1 (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|)) |_System._tuple#3$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |9323|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|))
)))
(assert (forall ((|_System._tuple#3$T0@@1| T@U) (|_System._tuple#3$T1@@1| T@U) (|_System._tuple#3$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3_2 (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|)) |_System._tuple#3$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |9324|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) ) (! (= (_System.Tuple3._0 (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |9335|
 :pattern ( (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (forall ((|a#18#0#0@@0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) ) (! (= (_System.Tuple3._1 (|#_System._tuple#3._#Make3| |a#18#0#0@@0| |a#18#1#0| |a#18#2#0|)) |a#18#1#0|)
 :qid |unknown.0:0|
 :skolemid |9337|
 :pattern ( (|#_System._tuple#3._#Make3| |a#18#0#0@@0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) ) (! (= (_System.Tuple3._2 (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|)) |a#20#2#0|)
 :qid |unknown.0:0|
 :skolemid |9339|
 :pattern ( (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (forall ((|a#20#0#0@@0| T@U) (|a#20#1#0@@0| T@U) (|a#20#2#0@@0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Op| |a#20#0#0@@0| |a#20#1#0@@0| |a#20#2#0@@0|)) |##DafnyAST.Expr.Op|)
 :qid |Compilerdfy.29:10|
 :skolemid |9475|
 :pattern ( (|#DafnyAST.Expr.Op| |a#20#0#0@@0| |a#20#1#0@@0| |a#20#2#0@@0|))
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
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |9257|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#DafnyAST.BinOp.Add|) |##DafnyAST.BinOp.Add|))
(assert (= (DatatypeCtorId |#DafnyAST.BinOp.Sub|) |##DafnyAST.BinOp.Sub|))
(assert (= (DatatypeCtorId |#DafnyAST.Stmt.Skip|) |##DafnyAST.Stmt.Skip|))
(assert (= (DatatypeCtorId |#LinkedList.List.Nil|) |##LinkedList.List.Nil|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopAdd|) |##StackMachine.Instr.PopAdd|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopSub|) |##StackMachine.Instr.PopSub|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopPrint|) |##StackMachine.Instr.PopPrint|))
(assert (forall ((|_System._tuple#3$T0@@2| T@U) (|_System._tuple#3$T1@@2| T@U) (|_System._tuple#3$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) Tagclass._System.Tuple3) (= (TagFamily (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) |tytagFamily$_tuple#3|))
 :qid |unknown.0:0|
 :skolemid |9321|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|))
)))
(assert (forall ((LinkedList._default.Concat$T@@1 T@U) ($ly@@1 T@U) (|l1#0@@1| T@U) (|l2#0@@1| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@1 |l1#0@@1| |l2#0@@1|) (and ($Is DatatypeTypeType |l1#0@@1| (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)) ($Is DatatypeTypeType |l2#0@@1| (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)))) ($Is DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@1 $ly@@1 |l1#0@@1| |l2#0@@1|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)))
 :qid |unknown.0:0|
 :skolemid |9576|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@1 $ly@@1 |l1#0@@1| |l2#0@@1|))
)))
(assert (forall ((|_System._tuple#3$T0@@3| T@U) (|_System._tuple#3$T1@@3| T@U) (|_System._tuple#3$T2@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |9325|
 :pattern ( ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)))
)))
(assert (forall (($ly@@2 T@U) (|e#0| T@U) ) (!  (=> (or (|Compiler.__default.compileExpr#canCall| |e#0|) ($Is DatatypeTypeType |e#0| Tclass.DafnyAST.Expr)) ($Is DatatypeTypeType (Compiler.__default.compileExpr $ly@@2 |e#0|) (Tclass.LinkedList.List Tclass.StackMachine.Instr)))
 :qid |Compilerdfy.253:12|
 :skolemid |9687|
 :pattern ( (Compiler.__default.compileExpr $ly@@2 |e#0|))
)))
(assert (forall (($ly@@3 T@U) (|s#0| T@U) ) (!  (=> (or (|Compiler.__default.compileStmt#canCall| |s#0|) ($Is DatatypeTypeType |s#0| Tclass.DafnyAST.Stmt)) ($Is DatatypeTypeType (Compiler.__default.compileStmt $ly@@3 |s#0|) (Tclass.LinkedList.List Tclass.StackMachine.Instr)))
 :qid |Compilerdfy.262:12|
 :skolemid |9693|
 :pattern ( (Compiler.__default.compileStmt $ly@@3 |s#0|))
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
(assert (forall ((LinkedList.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |9597|
 :pattern ( ($IsAlloc DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T) $h))
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
(assert (forall (($ly@@4 T@U) (|s#0@@0| T@U) (|ctx#0| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt_k#canCall| (Lit DatatypeTypeType |s#0@@0|) (Lit MapType |ctx#0|)) (and ($Is DatatypeTypeType |s#0@@0| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0@@0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@0|))))) (let ((|e#38| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@0|)))))
(|DafnyAST.__default.interpExpr#canCall| |e#38| (Lit MapType |ctx#0|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@0|))))) (let ((|e#39| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@0|)))))
(|DafnyAST.__default.interpExpr#canCall| |e#39| (Lit MapType |ctx#0|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@0|)))))) (let ((|s2#19| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0@@0|)))))
(let ((|s1#19| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0@@0|)))))
 (and (|DafnyAST.__default.interpStmt_k#canCall| |s1#19| (Lit MapType |ctx#0|)) (let ((|ctx1#19| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k ($LS $ly@@4) |s1#19| (Lit MapType |ctx#0|)))))
(|DafnyAST.__default.interpStmt_k#canCall| |s2#19| |ctx1#19|)))))))))) (= (DafnyAST.__default.interpStmt_k ($LS $ly@@4) (Lit DatatypeTypeType |s#0@@0|) (Lit MapType |ctx#0|)) (ite (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0@@0|)) (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |ctx#0|) (Lit SeqType |Seq#Empty|)) (ite (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@0|)) (let ((|e#36| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@0|)))))
(Lit DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |ctx#0|) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt (DafnyAST.__default.interpExpr ($LS $LZ) |e#36| (Lit MapType |ctx#0|)))))))))) (ite (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@0|)) (let ((|e#37| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@0|)))))
(let ((|v#18| (Lit SeqType (DafnyAST.Stmt.v (Lit DatatypeTypeType |s#0@@0|)))))
(|#DafnyAST.InterpResult.InterpResult| (|Map#Build| (Lit MapType |ctx#0|) ($Box SeqType |v#18|) ($Box intType (int_2_U (LitInt (DafnyAST.__default.interpExpr ($LS $LZ) |e#37| (Lit MapType |ctx#0|)))))) (Lit SeqType |Seq#Empty|)))) (let ((|s2#18| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0@@0|)))))
(let ((|s1#18| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0@@0|)))))
(let ((|o1#18| (DafnyAST.InterpResult.output (Lit DatatypeTypeType (DafnyAST.__default.interpStmt_k ($LS $ly@@4) |s1#18| (Lit MapType |ctx#0|))))))
(let ((|ctx1#18| (DafnyAST.InterpResult.ctx (Lit DatatypeTypeType (DafnyAST.__default.interpStmt_k ($LS $ly@@4) |s1#18| (Lit MapType |ctx#0|))))))
(let ((|o2#18| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k ($LS $ly@@4) |s2#18| |ctx1#18|))))
(let ((|ctx2#18| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k ($LS $ly@@4) |s2#18| |ctx1#18|))))
(|#DafnyAST.InterpResult.InterpResult| |ctx2#18| (|Seq#Append| |o1#18| |o2#18|))))))))))))))
 :qid |Compilerdfy.57:12|
 :weight 3
 :skolemid |9441|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $ly@@4) (Lit DatatypeTypeType |s#0@@0|) (Lit MapType |ctx#0|)))
)))
(assert (forall (($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType StackMachine.__default.EmptyState Tclass.StackMachine.State $h@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |9614|
 :pattern ( ($IsAlloc DatatypeTypeType StackMachine.__default.EmptyState Tclass.StackMachine.State $h@@0))
)))
(assert (forall ((LinkedList.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |9596|
 :pattern ( ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T@@0)))
)))
(assert (forall ((|s#0@@1| T@U) (|ctx#0@@0| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt#canCall| (Lit DatatypeTypeType |s#0@@1|) (Lit MapType |ctx#0@@0|)) (and ($Is DatatypeTypeType |s#0@@1| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@0| (TMap (TSeq TChar) TInt)))) (and (and (|DafnyAST.__default.interpStmt_k#canCall| (Lit DatatypeTypeType |s#0@@1|) (Lit MapType |ctx#0@@0|)) (DafnyAST.InterpResult.InterpResult_q (Lit DatatypeTypeType (DafnyAST.__default.interpStmt_k ($LS $LZ) (Lit DatatypeTypeType |s#0@@1|) (Lit MapType |ctx#0@@0|))))) (= (DafnyAST.__default.interpStmt (Lit DatatypeTypeType |s#0@@1|) (Lit MapType |ctx#0@@0|)) (Lit SeqType (DafnyAST.InterpResult.output (Lit DatatypeTypeType (DafnyAST.__default.interpStmt_k ($LS $LZ) (Lit DatatypeTypeType |s#0@@1|) (Lit MapType |ctx#0@@0|))))))))
 :qid |Compilerdfy.70:23|
 :weight 3
 :skolemid |9445|
 :pattern ( (DafnyAST.__default.interpStmt (Lit DatatypeTypeType |s#0@@1|) (Lit MapType |ctx#0@@0|)))
)))
(assert (forall (($ly@@5 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|Rewriter.__default.simplifyStmt#canCall| (Lit DatatypeTypeType |s#0@@2|)) ($Is DatatypeTypeType |s#0@@2| Tclass.DafnyAST.Stmt)) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0@@2|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@2|))))) (let ((|e#14| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@2|)))))
(|Rewriter.__default.simplifyExpr#canCall| |e#14|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@2|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@2|))))) (let ((|e#15| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@2|)))))
(|Rewriter.__default.simplifyExpr#canCall| |e#15|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@2|)))))) (let ((|s2#7| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0@@2|)))))
(let ((|s1#7| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0@@2|)))))
 (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (=> (not (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (=> (not (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (=> (not (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))))))))) (=> (not (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (=> (not (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))))) (=> (not (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))))) (=> (not (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))))))))))) (=> (not (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (=> (not (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))))) (=> (not (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))))) (=> (not (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))))))))))) (=> (not (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (=> (not (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))))) (=> (not (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (=> (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|)))))))) (=> (not (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#7|) (|Rewriter.__default.simplifyStmt#canCall| |s2#7|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#7|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#7|))))))))))))))))))))))))) (= (Rewriter.__default.simplifyStmt ($LS $ly@@5) (Lit DatatypeTypeType |s#0@@2|)) (ite (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0@@2|)) |#DafnyAST.Stmt.Skip| (ite (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@2|)) (let ((|e#12| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@2|)))))
(Lit DatatypeTypeType (|#DafnyAST.Stmt.Print| (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#12|))))) (ite (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@2|)) (let ((|e#13| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@2|)))))
(let ((|v#6| (Lit SeqType (DafnyAST.Stmt.v (Lit DatatypeTypeType |s#0@@2|)))))
(Lit DatatypeTypeType (|#DafnyAST.Stmt.Assign| |v#6| (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $LZ) |e#13|)))))) (let ((|s2#6| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0@@2|)))))
(let ((|s1#6| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0@@2|)))))
(ite (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (ite (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (let ((|s1'#78| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
|s1'#78|) (ite (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (let ((|s2'#72| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
|s2'#72|) (ite (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (let ((|s2'#73| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
|s2'#73|) (let ((|s2'#74| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
|s2'#74|)))) (ite (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (ite (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (let ((|s1'#79| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
|s1'#79|) (ite (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (let ((|s2'#75| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(let ((|s1'#80| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Stmt.Seq| |s1'#80| |s2'#75|)))) (ite (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (let ((|s2'#76| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(let ((|s1'#81| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Stmt.Seq| |s1'#81| |s2'#76|)))) (let ((|s2'#77| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(let ((|s1'#82| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Stmt.Seq| |s1'#82| |s2'#77|))))))) (ite (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (ite (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (let ((|s1'#83| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
|s1'#83|) (ite (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (let ((|s2'#78| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(let ((|s1'#84| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Stmt.Seq| |s1'#84| |s2'#78|)))) (ite (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (let ((|s2'#79| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(let ((|s1'#85| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Stmt.Seq| |s1'#85| |s2'#79|)))) (let ((|s2'#80| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(let ((|s1'#86| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Stmt.Seq| |s1'#86| |s2'#80|))))))) (ite (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (let ((|s1'#87| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
|s1'#87|) (ite (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (let ((|s2'#81| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(let ((|s1'#88| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Stmt.Seq| |s1'#88| |s2'#81|)))) (ite (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))) (let ((|s2'#82| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(let ((|s1'#89| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Stmt.Seq| |s1'#89| |s2'#82|)))) (let ((|s2'#83| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(let ((|s1'#90| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s1#6|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyStmt ($LS $ly@@5) |s2#6|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Stmt.Seq| |s1'#90| |s2'#83|))))))))))))))))))
 :qid |Compilerdfy.103:12|
 :weight 3
 :skolemid |9573|
 :pattern ( (Rewriter.__default.simplifyStmt ($LS $ly@@5) (Lit DatatypeTypeType |s#0@@2|)))
)))
(assert (forall (($ly@@6 T@U) (|e#0@@0| T@U) ) (!  (=> (or (|Rewriter.__default.simplifyExpr#canCall| |e#0@@0|) ($Is DatatypeTypeType |e#0@@0| Tclass.DafnyAST.Expr)) (and (forall ((|ctx#3| T@U) ) (!  (=> ($Is MapType |ctx#3| (TMap (TSeq TChar) TInt)) (= (DafnyAST.__default.interpExpr ($LS $LZ) (Rewriter.__default.simplifyExpr $ly@@6 |e#0@@0|) |ctx#3|) (DafnyAST.__default.interpExpr ($LS $LZ) |e#0@@0| |ctx#3|)))
 :qid |Compilerdfy.85:20|
 :skolemid |9562|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $LZ) |e#0@@0| |ctx#3|))
 :pattern ( (DafnyAST.__default.interpExpr ($LS $LZ) (Rewriter.__default.simplifyExpr $ly@@6 |e#0@@0|) |ctx#3|))
)) ($Is DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@6 |e#0@@0|) Tclass.DafnyAST.Expr)))
 :qid |Compilerdfy.84:12|
 :skolemid |9563|
 :pattern ( (Rewriter.__default.simplifyExpr $ly@@6 |e#0@@0|))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|DafnyAST.InterpResult#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |9559|
 :pattern ( (|DafnyAST.InterpResult#Equal| a b))
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
(assert (forall ((s T@U) (bx@@0 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx@@0 t)) ($Is SeqType (|Seq#Build| s bx@@0) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |9047|
 :pattern ( ($Is SeqType (|Seq#Build| s bx@@0) (TSeq t)))
)))
(assert (forall (($ly@@7 T@U) (|e#0@@1| T@U) ) (!  (=> (or (|Rewriter.__default.simplifyExpr#canCall| (Lit DatatypeTypeType |e#0@@1|)) ($Is DatatypeTypeType |e#0@@1| Tclass.DafnyAST.Expr)) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@1|)))))) (let ((|e2#175| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@1|)))))
(let ((|e1#196| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@1|)))))
(let ((|op#7| (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@1|)))))
 (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.BinOp.Add_q ($Unbox DatatypeTypeType (_System.Tuple3._0 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0))) (not true)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0))) (not true)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))))))))) (=> (not (DafnyAST.BinOp.Add_q ($Unbox DatatypeTypeType (_System.Tuple3._0 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0))) (not true)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#196|) (|Rewriter.__default.simplifyExpr#canCall| |e2#175|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#7|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#196|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#175|))))))))))))))))))))) (= (Rewriter.__default.simplifyExpr ($LS $ly@@7) (Lit DatatypeTypeType |e#0@@1|)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@1|)) (Lit DatatypeTypeType |e#0@@1|) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@1|)) (Lit DatatypeTypeType |e#0@@1|) (let ((|e2#150| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@1|)))))
(let ((|e1#168| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@1|)))))
(let ((|op#6| (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@1|)))))
(ite (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._0 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|)))))))))) (LitInt 0)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|)))))))))) (LitInt 0)) (|#DafnyAST.Expr.Const| (LitInt 0)) (let ((|e2#151| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
|e2#151|)) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (let ((|e2#152| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
|e2#152|) (let ((|e2#153| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
|e2#153|))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|)))))))))) (LitInt 0)) (let ((|e1#169| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
|e1#169|) (let ((|e2#154| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#170| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#170| |e2#154|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (let ((|e2#155| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#171| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#171| |e2#155|)))) (let ((|e2#156| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#172| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#172| |e2#156|))))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|)))))))))) (LitInt 0)) (let ((|e1#173| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
|e1#173|) (let ((|e2#157| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#174| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#174| |e2#157|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (let ((|e2#158| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#175| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#175| |e2#158|)))) (let ((|e2#159| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#176| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#176| |e2#159|)))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|)))))))))) (LitInt 0)) (let ((|e1#177| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
|e1#177|) (let ((|e2#160| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#178| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#178| |e2#160|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (let ((|e2#161| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#179| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#179| |e2#161|)))) (let ((|e2#162| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#180| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#180| |e2#162|)))))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|)))))))))) (LitInt 0)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|)))))))))) (LitInt 0)) (|#DafnyAST.Expr.Const| (LitInt 0)) (let ((|e2#163| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#181| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#181| |e2#163|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (let ((|e2#164| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#182| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#182| |e2#164|)))) (let ((|e2#165| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#183| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#183| |e2#165|)))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|)))))))))) (LitInt 0)) (let ((|e1#184| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
|e1#184|) (let ((|e2#166| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#185| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#185| |e2#166|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (let ((|e2#167| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#186| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#186| |e2#167|)))) (let ((|e2#168| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#187| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#187| |e2#168|))))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|)))))))))) (LitInt 0)) (let ((|e1#188| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
|e1#188|) (let ((|e2#169| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#189| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#189| |e2#169|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (let ((|e2#170| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#190| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#190| |e2#170|)))) (let ((|e2#171| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#191| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#191| |e2#171|)))))) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (ite (= (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|)))))))))) (LitInt 0)) (let ((|e1#192| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
|e1#192|) (let ((|e2#172| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#193| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#193| |e2#172|))))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))) (let ((|e2#173| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#194| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#194| |e2#173|)))) (let ((|e2#174| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._2 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(let ((|e1#195| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple3._1 (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#6|) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e1#168|))) ($Box DatatypeTypeType (Lit DatatypeTypeType (Rewriter.__default.simplifyExpr ($LS $ly@@7) |e2#150|))))))))))
(Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |op#6| |e1#195| |e2#174|)))))))))))))))))
 :qid |Compilerdfy.84:12|
 :weight 3
 :skolemid |9566|
 :pattern ( (Rewriter.__default.simplifyExpr ($LS $ly@@7) (Lit DatatypeTypeType |e#0@@1|)))
)))
(assert (forall ((LinkedList.List$T@@1 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@1))  (and ($IsBox |a#2#0#0@@0| LinkedList.List$T@@1) ($Is DatatypeTypeType |a#2#1#0@@0| (Tclass.LinkedList.List LinkedList.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |9585|
 :pattern ( ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@1)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@1| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@1| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |9246|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@2) (= (DatatypeCtorId d@@2) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |9238|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_System.Tuple3.___hMake3_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#3._#Make3|))
 :qid |unknown.0:0|
 :skolemid |9318|
 :pattern ( (_System.Tuple3.___hMake3_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (DafnyAST.BinOp.Add_q d@@4) (= (DatatypeCtorId d@@4) |##DafnyAST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |9446|
 :pattern ( (DafnyAST.BinOp.Add_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (DafnyAST.BinOp.Sub_q d@@5) (= (DatatypeCtorId d@@5) |##DafnyAST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |9449|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (DafnyAST.Expr.Const_q d@@6) (= (DatatypeCtorId d@@6) |##DafnyAST.Expr.Const|))
 :qid |unknown.0:0|
 :skolemid |9458|
 :pattern ( (DafnyAST.Expr.Const_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (DafnyAST.Expr.Var_q d@@7) (= (DatatypeCtorId d@@7) |##DafnyAST.Expr.Var|))
 :qid |unknown.0:0|
 :skolemid |9466|
 :pattern ( (DafnyAST.Expr.Var_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (DafnyAST.Expr.Op_q d@@8) (= (DatatypeCtorId d@@8) |##DafnyAST.Expr.Op|))
 :qid |unknown.0:0|
 :skolemid |9476|
 :pattern ( (DafnyAST.Expr.Op_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (DafnyAST.Stmt.Skip_q d@@9) (= (DatatypeCtorId d@@9) |##DafnyAST.Stmt.Skip|))
 :qid |unknown.0:0|
 :skolemid |9497|
 :pattern ( (DafnyAST.Stmt.Skip_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (DafnyAST.Stmt.Print_q d@@10) (= (DatatypeCtorId d@@10) |##DafnyAST.Stmt.Print|))
 :qid |unknown.0:0|
 :skolemid |9500|
 :pattern ( (DafnyAST.Stmt.Print_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (DafnyAST.Stmt.Assign_q d@@11) (= (DatatypeCtorId d@@11) |##DafnyAST.Stmt.Assign|))
 :qid |unknown.0:0|
 :skolemid |9509|
 :pattern ( (DafnyAST.Stmt.Assign_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (DafnyAST.Stmt.Seq_q d@@12) (= (DatatypeCtorId d@@12) |##DafnyAST.Stmt.Seq|))
 :qid |unknown.0:0|
 :skolemid |9522|
 :pattern ( (DafnyAST.Stmt.Seq_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (DafnyAST.InterpResult.InterpResult_q d@@13) (= (DatatypeCtorId d@@13) |##DafnyAST.InterpResult.InterpResult|))
 :qid |unknown.0:0|
 :skolemid |9542|
 :pattern ( (DafnyAST.InterpResult.InterpResult_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (LinkedList.List.Cons_q d@@14) (= (DatatypeCtorId d@@14) |##LinkedList.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |9582|
 :pattern ( (LinkedList.List.Cons_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (LinkedList.List.Nil_q d@@15) (= (DatatypeCtorId d@@15) |##LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |9594|
 :pattern ( (LinkedList.List.Nil_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (StackMachine.Instr.PushConst_q d@@16) (= (DatatypeCtorId d@@16) |##StackMachine.Instr.PushConst|))
 :qid |unknown.0:0|
 :skolemid |9620|
 :pattern ( (StackMachine.Instr.PushConst_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (StackMachine.Instr.PushVar_q d@@17) (= (DatatypeCtorId d@@17) |##StackMachine.Instr.PushVar|))
 :qid |unknown.0:0|
 :skolemid |9628|
 :pattern ( (StackMachine.Instr.PushVar_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (StackMachine.Instr.PopAdd_q d@@18) (= (DatatypeCtorId d@@18) |##StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |9637|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (! (= (StackMachine.Instr.PopSub_q d@@19) (= (DatatypeCtorId d@@19) |##StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |9639|
 :pattern ( (StackMachine.Instr.PopSub_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (! (= (StackMachine.Instr.PopPrint_q d@@20) (= (DatatypeCtorId d@@20) |##StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |9641|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (! (= (StackMachine.Instr.PopVar_q d@@21) (= (DatatypeCtorId d@@21) |##StackMachine.Instr.PopVar|))
 :qid |unknown.0:0|
 :skolemid |9644|
 :pattern ( (StackMachine.Instr.PopVar_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (! (= (StackMachine.State.State_q d@@22) (= (DatatypeCtorId d@@22) |##StackMachine.State.State|))
 :qid |unknown.0:0|
 :skolemid |9664|
 :pattern ( (StackMachine.State.State_q d@@22))
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
(assert (forall ((d@@23 T@U) ) (!  (=> (_System.Tuple3.___hMake3_q d@@23) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= d@@23 (|#_System._tuple#3._#Make3| |a#13#0#0| |a#13#1#0| |a#13#2#0|))
 :qid |unknown.0:0|
 :skolemid |9319|
)))
 :qid |unknown.0:0|
 :skolemid |9320|
 :pattern ( (_System.Tuple3.___hMake3_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (DafnyAST.Expr.Op_q d@@24) (exists ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (= d@@24 (|#DafnyAST.Expr.Op| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
 :qid |Compilerdfy.29:10|
 :skolemid |9477|
)))
 :qid |unknown.0:0|
 :skolemid |9478|
 :pattern ( (DafnyAST.Expr.Op_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (StackMachine.State.State_q d@@25) (exists ((|a#32#0#0| T@U) (|a#32#1#0| T@U) (|a#32#2#0| T@U) ) (! (= d@@25 (|#StackMachine.State.State| |a#32#0#0| |a#32#1#0| |a#32#2#0|))
 :qid |Compilerdfy.206:26|
 :skolemid |9665|
)))
 :qid |unknown.0:0|
 :skolemid |9666|
 :pattern ( (StackMachine.State.State_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@26) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@26 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |9239|
)))
 :qid |unknown.0:0|
 :skolemid |9240|
 :pattern ( (_System.Tuple2.___hMake2_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> (DafnyAST.Stmt.Assign_q d@@27) (exists ((|a#41#0#0@@0| T@U) (|a#41#1#0@@0| T@U) ) (! (= d@@27 (|#DafnyAST.Stmt.Assign| |a#41#0#0@@0| |a#41#1#0@@0|))
 :qid |Compilerdfy.37:14|
 :skolemid |9510|
)))
 :qid |unknown.0:0|
 :skolemid |9511|
 :pattern ( (DafnyAST.Stmt.Assign_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (DafnyAST.Stmt.Seq_q d@@28) (exists ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= d@@28 (|#DafnyAST.Stmt.Seq| |a#50#0#0| |a#50#1#0|))
 :qid |Compilerdfy.38:11|
 :skolemid |9523|
)))
 :qid |unknown.0:0|
 :skolemid |9524|
 :pattern ( (DafnyAST.Stmt.Seq_q d@@28))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> (DafnyAST.InterpResult.InterpResult_q d@@29) (exists ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (= d@@29 (|#DafnyAST.InterpResult.InterpResult| |a#58#0#0| |a#58#1#0|))
 :qid |Compilerdfy.55:40|
 :skolemid |9543|
)))
 :qid |unknown.0:0|
 :skolemid |9544|
 :pattern ( (DafnyAST.InterpResult.InterpResult_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> (LinkedList.List.Cons_q d@@30) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@30 (|#LinkedList.List.Cons| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |Compilerdfy.168:12|
 :skolemid |9583|
)))
 :qid |unknown.0:0|
 :skolemid |9584|
 :pattern ( (LinkedList.List.Cons_q d@@30))
)))
(assert (forall ((d@@31 T@U) ) (!  (=> (DafnyAST.BinOp.Add_q d@@31) (= d@@31 |#DafnyAST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |9447|
 :pattern ( (DafnyAST.BinOp.Add_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> (DafnyAST.BinOp.Sub_q d@@32) (= d@@32 |#DafnyAST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |9450|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@32))
)))
(assert (forall ((d@@33 T@U) ) (!  (=> (DafnyAST.Stmt.Skip_q d@@33) (= d@@33 |#DafnyAST.Stmt.Skip|))
 :qid |unknown.0:0|
 :skolemid |9498|
 :pattern ( (DafnyAST.Stmt.Skip_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (LinkedList.List.Nil_q d@@34) (= d@@34 |#LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |9595|
 :pattern ( (LinkedList.List.Nil_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> (StackMachine.Instr.PopAdd_q d@@35) (= d@@35 |#StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |9638|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@35))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (StackMachine.Instr.PopSub_q d@@36) (= d@@36 |#StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |9640|
 :pattern ( (StackMachine.Instr.PopSub_q d@@36))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> (StackMachine.Instr.PopPrint_q d@@37) (= d@@37 |#StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |9642|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@37))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |8835|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |8836|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall (($ly@@8 T@U) (|s#0@@3| T@U) ) (!  (=> (or (|Rewriter.__default.simplifyStmt#canCall| |s#0@@3|) ($Is DatatypeTypeType |s#0@@3| Tclass.DafnyAST.Stmt)) (and (=> (not (DafnyAST.Stmt.Skip_q |s#0@@3|)) (and (=> (DafnyAST.Stmt.Print_q |s#0@@3|) (let ((|e#10| (DafnyAST.Stmt.e |s#0@@3|)))
(|Rewriter.__default.simplifyExpr#canCall| |e#10|))) (=> (not (DafnyAST.Stmt.Print_q |s#0@@3|)) (and (=> (DafnyAST.Stmt.Assign_q |s#0@@3|) (let ((|e#11| (DafnyAST.Stmt.e |s#0@@3|)))
(|Rewriter.__default.simplifyExpr#canCall| |e#11|))) (=> (not (DafnyAST.Stmt.Assign_q |s#0@@3|)) (let ((|s2#5| (DafnyAST.Stmt.s2 |s#0@@3|)))
(let ((|s1#5| (DafnyAST.Stmt.s1 |s#0@@3|)))
 (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (=> (not (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (=> (not (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (=> (not (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))))))))) (=> (not (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (=> (not (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))))) (=> (not (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))))) (=> (not (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))))))))))) (=> (not (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (=> (not (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))))) (=> (not (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))))) (=> (not (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))))))))))) (=> (not (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (=> (not (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))))) (=> (not (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (=> (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|)))))))) (=> (not (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))) (and (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))) (and (and (|Rewriter.__default.simplifyStmt#canCall| |s1#5|) (|Rewriter.__default.simplifyStmt#canCall| |s2#5|)) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#5|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#5|))))))))))))))))))))))))) (= (Rewriter.__default.simplifyStmt ($LS $ly@@8) |s#0@@3|) (ite (DafnyAST.Stmt.Skip_q |s#0@@3|) |#DafnyAST.Stmt.Skip| (ite (DafnyAST.Stmt.Print_q |s#0@@3|) (let ((|e#8| (DafnyAST.Stmt.e |s#0@@3|)))
(|#DafnyAST.Stmt.Print| (Rewriter.__default.simplifyExpr ($LS $LZ) |e#8|))) (ite (DafnyAST.Stmt.Assign_q |s#0@@3|) (let ((|e#9| (DafnyAST.Stmt.e |s#0@@3|)))
(let ((|v#4| (DafnyAST.Stmt.v |s#0@@3|)))
(|#DafnyAST.Stmt.Assign| |v#4| (Rewriter.__default.simplifyExpr ($LS $LZ) |e#9|)))) (let ((|s2#4| (DafnyAST.Stmt.s2 |s#0@@3|)))
(let ((|s1#4| (DafnyAST.Stmt.s1 |s#0@@3|)))
(ite (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (ite (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (let ((|s1'#52| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
|s1'#52|) (ite (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (let ((|s2'#48| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
|s2'#48|) (ite (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (let ((|s2'#49| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
|s2'#49|) (let ((|s2'#50| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
|s2'#50|)))) (ite (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (ite (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (let ((|s1'#53| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
|s1'#53|) (ite (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (let ((|s2'#51| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(let ((|s1'#54| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(|#DafnyAST.Stmt.Seq| |s1'#54| |s2'#51|))) (ite (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (let ((|s2'#52| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(let ((|s1'#55| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(|#DafnyAST.Stmt.Seq| |s1'#55| |s2'#52|))) (let ((|s2'#53| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(let ((|s1'#56| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(|#DafnyAST.Stmt.Seq| |s1'#56| |s2'#53|)))))) (ite (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (ite (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (let ((|s1'#57| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
|s1'#57|) (ite (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (let ((|s2'#54| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(let ((|s1'#58| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(|#DafnyAST.Stmt.Seq| |s1'#58| |s2'#54|))) (ite (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (let ((|s2'#55| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(let ((|s1'#59| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(|#DafnyAST.Stmt.Seq| |s1'#59| |s2'#55|))) (let ((|s2'#56| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(let ((|s1'#60| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(|#DafnyAST.Stmt.Seq| |s1'#60| |s2'#56|)))))) (ite (DafnyAST.Stmt.Skip_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (let ((|s1'#61| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
|s1'#61|) (ite (DafnyAST.Stmt.Print_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (let ((|s2'#57| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(let ((|s1'#62| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(|#DafnyAST.Stmt.Seq| |s1'#62| |s2'#57|))) (ite (DafnyAST.Stmt.Assign_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))) (let ((|s2'#58| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(let ((|s1'#63| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(|#DafnyAST.Stmt.Seq| |s1'#63| |s2'#58|))) (let ((|s2'#59| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(let ((|s1'#64| ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s1#4|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@8 |s2#4|)))))))
(|#DafnyAST.Stmt.Seq| |s1'#64| |s2'#59|)))))))))))))))))
 :qid |Compilerdfy.103:12|
 :skolemid |9572|
 :pattern ( (Rewriter.__default.simplifyStmt ($LS $ly@@8) |s#0@@3|))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> (DafnyAST.Expr.Const_q d@@38) (exists ((|a#9#0#0| Int) ) (! (= d@@38 (|#DafnyAST.Expr.Const| |a#9#0#0|))
 :qid |Compilerdfy.27:13|
 :skolemid |9459|
)))
 :qid |unknown.0:0|
 :skolemid |9460|
 :pattern ( (DafnyAST.Expr.Const_q d@@38))
)))
(assert (forall ((d@@39 T@U) ) (!  (=> (DafnyAST.Expr.Var_q d@@39) (exists ((|a#14#0#0| T@U) ) (! (= d@@39 (|#DafnyAST.Expr.Var| |a#14#0#0|))
 :qid |Compilerdfy.28:11|
 :skolemid |9467|
)))
 :qid |unknown.0:0|
 :skolemid |9468|
 :pattern ( (DafnyAST.Expr.Var_q d@@39))
)))
(assert (forall ((d@@40 T@U) ) (!  (=> (DafnyAST.Stmt.Print_q d@@40) (exists ((|a#35#0#0@@0| T@U) ) (! (= d@@40 (|#DafnyAST.Stmt.Print| |a#35#0#0@@0|))
 :qid |Compilerdfy.36:13|
 :skolemid |9501|
)))
 :qid |unknown.0:0|
 :skolemid |9502|
 :pattern ( (DafnyAST.Stmt.Print_q d@@40))
)))
(assert (forall ((d@@41 T@U) ) (!  (=> (StackMachine.Instr.PushConst_q d@@41) (exists ((|a#1#0#0@@1| Int) ) (! (= d@@41 (|#StackMachine.Instr.PushConst| |a#1#0#0@@1|))
 :qid |Compilerdfy.192:17|
 :skolemid |9621|
)))
 :qid |unknown.0:0|
 :skolemid |9622|
 :pattern ( (StackMachine.Instr.PushConst_q d@@41))
)))
(assert (forall ((d@@42 T@U) ) (!  (=> (StackMachine.Instr.PushVar_q d@@42) (exists ((|a#6#0#0| T@U) ) (! (= d@@42 (|#StackMachine.Instr.PushVar| |a#6#0#0|))
 :qid |Compilerdfy.193:15|
 :skolemid |9629|
)))
 :qid |unknown.0:0|
 :skolemid |9630|
 :pattern ( (StackMachine.Instr.PushVar_q d@@42))
)))
(assert (forall ((d@@43 T@U) ) (!  (=> (StackMachine.Instr.PopVar_q d@@43) (exists ((|a#25#0#0| T@U) ) (! (= d@@43 (|#StackMachine.Instr.PopVar| |a#25#0#0|))
 :qid |Compilerdfy.197:14|
 :skolemid |9645|
)))
 :qid |unknown.0:0|
 :skolemid |9646|
 :pattern ( (StackMachine.Instr.PopVar_q d@@43))
)))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |9013|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| |a#59#0#0| |a#59#1#0|) Tclass.DafnyAST.InterpResult)  (and ($Is MapType |a#59#0#0| (TMap (TSeq TChar) TInt)) ($Is SeqType |a#59#1#0| (TSeq TInt))))
 :qid |Compilerdfy.55:40|
 :skolemid |9545|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| |a#59#0#0| |a#59#1#0|) Tclass.DafnyAST.InterpResult))
)))
(assert (forall ((|_System._tuple#3$T0@@4| T@U) (|_System._tuple#3$T1@@4| T@U) (|_System._tuple#3$T2@@4| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@2)  (and (and ($IsAllocBox |a#14#0#0@@0| |_System._tuple#3$T0@@4| $h@@2) ($IsAllocBox |a#14#1#0| |_System._tuple#3$T1@@4| $h@@2)) ($IsAllocBox |a#14#2#0| |_System._tuple#3$T2@@4| $h@@2))))
 :qid |unknown.0:0|
 :skolemid |9327|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@2))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h) ($IsAlloc T@@1 v@@1 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |8828|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h))
)))
(assert (forall (($ly@@9 T@U) (|p#0@@0| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg_k#canCall| |p#0@@0| |st#0@@0|) (and ($Is DatatypeTypeType |p#0@@0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |st#0@@0| Tclass.StackMachine.State))) (and (=> (LinkedList.List.Cons_q |p#0@@0|) (let ((|p#14| (LinkedList.List.tl |p#0@@0|)))
(let ((|instr#13| ($Unbox DatatypeTypeType (LinkedList.List.hd |p#0@@0|))))
 (and (|StackMachine.__default.interpProg_k#canCall| |p#14| |st#0@@0|) (|StackMachine.__default.interpInstr#canCall| |instr#13| (StackMachine.__default.interpProg_k $ly@@9 |p#14| |st#0@@0|)))))) (= (StackMachine.__default.interpProg_k ($LS $ly@@9) |p#0@@0| |st#0@@0|) (ite (LinkedList.List.Cons_q |p#0@@0|) (let ((|p#13| (LinkedList.List.tl |p#0@@0|)))
(let ((|instr#12| ($Unbox DatatypeTypeType (LinkedList.List.hd |p#0@@0|))))
(StackMachine.__default.interpInstr |instr#12| (StackMachine.__default.interpProg_k $ly@@9 |p#13| |st#0@@0|)))) |st#0@@0|))))
 :qid |Compilerdfy.233:12|
 :skolemid |9612|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $ly@@9) |p#0@@0| |st#0@@0|))
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
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) (bx@@2 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#39#1#0|) bx@@2) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#39#1#0|) bx@@2))) (DtRank (|#StackMachine.State.State| |a#39#0#0| |a#39#1#0| |a#39#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |9676|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#39#1#0|) bx@@2) (|#StackMachine.State.State| |a#39#0#0| |a#39#1#0| |a#39#2#0|))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |9015|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) (bx@@3 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#63#0#0|) bx@@3) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#63#0#0|) bx@@3))) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#63#0#0| |a#63#1#0|))))
 :qid |Compilerdfy.55:40|
 :skolemid |9551|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#63#0#0|) bx@@3) (|#DafnyAST.InterpResult.InterpResult| |a#63#0#0| |a#63#1#0|))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.DafnyAST.Stmt) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.DafnyAST.Stmt)))
 :qid |unknown.0:0|
 :skolemid |9401|
 :pattern ( ($IsBox bx@@4 Tclass.DafnyAST.Stmt))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.StackMachine.Instr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.StackMachine.Instr)))
 :qid |unknown.0:0|
 :skolemid |9402|
 :pattern ( ($IsBox bx@@5 Tclass.StackMachine.Instr))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.DafnyAST.Expr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.DafnyAST.Expr)))
 :qid |unknown.0:0|
 :skolemid |9430|
 :pattern ( ($IsBox bx@@6 Tclass.DafnyAST.Expr))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.DafnyAST.InterpResult) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass.DafnyAST.InterpResult)))
 :qid |unknown.0:0|
 :skolemid |9437|
 :pattern ( ($IsBox bx@@7 Tclass.DafnyAST.InterpResult))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.DafnyAST.BinOp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass.DafnyAST.BinOp)))
 :qid |unknown.0:0|
 :skolemid |9448|
 :pattern ( ($IsBox bx@@8 Tclass.DafnyAST.BinOp))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.StackMachine.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) Tclass.StackMachine.State)))
 :qid |unknown.0:0|
 :skolemid |9603|
 :pattern ( ($IsBox bx@@9 Tclass.StackMachine.State))
)))
(assert (forall ((|a#36#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Stmt.Print| |a#36#0#0|) Tclass.DafnyAST.Stmt) ($Is DatatypeTypeType |a#36#0#0| Tclass.DafnyAST.Expr))
 :qid |Compilerdfy.36:13|
 :skolemid |9503|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Stmt.Print| |a#36#0#0|) Tclass.DafnyAST.Stmt))
)))
(assert (forall ((s@@1 T@U) (i@@5 Int) (v@@2 T@U) ) (!  (and (=> (= i@@5 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@5) v@@2)) (=> (or (not (= i@@5 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@5) (|Seq#Index| s@@1 i@@5))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |9014|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@5))
)))
(assert (= StackMachine.__default.EmptyState (Lit DatatypeTypeType (|#StackMachine.State.State| (Lit DatatypeTypeType |#LinkedList.List.Nil|) (Lit MapType |Map#Empty|) (Lit SeqType |Seq#Empty|)))))
(assert (forall ((|_System._tuple#3$T0@@5| T@U) (|_System._tuple#3$T1@@5| T@U) (|_System._tuple#3$T2@@5| T@U) (d@@44 T@U) ) (!  (=> ($Is DatatypeTypeType d@@44 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)) (_System.Tuple3.___hMake3_q d@@44))
 :qid |unknown.0:0|
 :skolemid |9342|
 :pattern ( (_System.Tuple3.___hMake3_q d@@44) ($Is DatatypeTypeType d@@44 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)))
)))
(assert (forall ((m@@1 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@1 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@1) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |9086|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@1) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |9087|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |9088|
 :pattern ( (|Map#Equal| m@@1 |m'|))
)))
(assert (forall (($ly@@10 T@U) (|e#0@@2| T@U) (|ctx#0@@1| T@U) ) (! (= (DafnyAST.__default.interpExpr ($LS $ly@@10) |e#0@@2| |ctx#0@@1|) (DafnyAST.__default.interpExpr $ly@@10 |e#0@@2| |ctx#0@@1|))
 :qid |Compilerdfy.44:12|
 :skolemid |9428|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@10) |e#0@@2| |ctx#0@@1|))
)))
(assert (forall (($ly@@11 T@U) (|s#0@@4| T@U) (|ctx#0@@2| T@U) ) (! (= (DafnyAST.__default.interpStmt_k ($LS $ly@@11) |s#0@@4| |ctx#0@@2|) (DafnyAST.__default.interpStmt_k $ly@@11 |s#0@@4| |ctx#0@@2|))
 :qid |Compilerdfy.57:12|
 :skolemid |9435|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $ly@@11) |s#0@@4| |ctx#0@@2|))
)))
(assert (forall (($ly@@12 T@U) (|p#0@@1| T@U) (|st#0@@1| T@U) ) (! (= (StackMachine.__default.interpProg_k ($LS $ly@@12) |p#0@@1| |st#0@@1|) (StackMachine.__default.interpProg_k $ly@@12 |p#0@@1| |st#0@@1|))
 :qid |Compilerdfy.233:12|
 :skolemid |9608|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $ly@@12) |p#0@@1| |st#0@@1|))
)))
(assert (forall (($ly@@13 T@U) (|s#0@@5| T@U) ) (!  (=> (or (|Compiler.__default.compileStmt#canCall| (Lit DatatypeTypeType |s#0@@5|)) ($Is DatatypeTypeType |s#0@@5| Tclass.DafnyAST.Stmt)) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@5|))))) (let ((|e#14@@0| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@5|)))))
(|Compiler.__default.compileExpr#canCall| |e#14@@0|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@5|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@5|))))) (let ((|e#15@@0| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@5|)))))
(|Compiler.__default.compileExpr#canCall| |e#15@@0|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@5|)))))) (let ((|s2#7@@0| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0@@5|)))))
(let ((|s1#7@@0| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0@@5|)))))
 (and (and (|Compiler.__default.compileStmt#canCall| |s2#7@@0|) (|Compiler.__default.compileStmt#canCall| |s1#7@@0|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileStmt ($LS $ly@@13) |s2#7@@0|) (Compiler.__default.compileStmt ($LS $ly@@13) |s1#7@@0|)))))))))) (= (Compiler.__default.compileStmt ($LS $ly@@13) (Lit DatatypeTypeType |s#0@@5|)) (ite (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0@@5|)) |#LinkedList.List.Nil| (ite (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@5|)) (let ((|e#12@@0| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@5|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopPrint|)) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $LZ) |e#12@@0|))))) (ite (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@5|)) (let ((|e#13@@0| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@5|)))))
(let ((|v#6@@0| (Lit SeqType (DafnyAST.Stmt.v (Lit DatatypeTypeType |s#0@@5|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#StackMachine.Instr.PopVar| |v#6@@0|))) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $LZ) |e#13@@0|)))))) (let ((|s2#6@@0| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0@@5|)))))
(let ((|s1#6@@0| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0@@5|)))))
(Lit DatatypeTypeType (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Lit DatatypeTypeType (Compiler.__default.compileStmt ($LS $ly@@13) |s2#6@@0|)) (Lit DatatypeTypeType (Compiler.__default.compileStmt ($LS $ly@@13) |s1#6@@0|))))))))))))
 :qid |Compilerdfy.262:12|
 :weight 3
 :skolemid |9696|
 :pattern ( (Compiler.__default.compileStmt ($LS $ly@@13) (Lit DatatypeTypeType |s#0@@5|)))
)))
(assert (forall (($ly@@14 T@U) (|e#0@@3| T@U) (|ctx#0@@3| T@U) ) (!  (=> (or (|DafnyAST.__default.interpExpr#canCall| (Lit DatatypeTypeType |e#0@@3|) (Lit MapType |ctx#0@@3|)) (and ($Is DatatypeTypeType |e#0@@3| Tclass.DafnyAST.Expr) ($Is MapType |ctx#0@@3| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@3|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@3|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@3|))))))) (let ((|e2#38| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@3|)))))
(let ((|e1#38| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@3|)))))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#38| (Lit MapType |ctx#0@@3|)) (|DafnyAST.__default.interpExpr#canCall| |e2#38| (Lit MapType |ctx#0@@3|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@3|)))))))) (let ((|e2#39| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@3|)))))
(let ((|e1#39| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@3|)))))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#39| (Lit MapType |ctx#0@@3|)) (|DafnyAST.__default.interpExpr#canCall| |e2#39| (Lit MapType |ctx#0@@3|))))))))) (= (DafnyAST.__default.interpExpr ($LS $ly@@14) (Lit DatatypeTypeType |e#0@@3|) (Lit MapType |ctx#0@@3|)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@3|)) (let ((|n#18| (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType |e#0@@3|)))))
|n#18|) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@3|)) (let ((|v#18@@0| (Lit SeqType (DafnyAST.Expr.v (Lit DatatypeTypeType |e#0@@3|)))))
(ite (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType |ctx#0@@3|))) ($Box SeqType |v#18@@0|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |ctx#0@@3|)) ($Box SeqType |v#18@@0|)))) 0)) (ite (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@3|)))) (let ((|e2#36| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@3|)))))
(let ((|e1#36| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@3|)))))
(LitInt (+ (DafnyAST.__default.interpExpr ($LS $ly@@14) |e1#36| (Lit MapType |ctx#0@@3|)) (DafnyAST.__default.interpExpr ($LS $ly@@14) |e2#36| (Lit MapType |ctx#0@@3|)))))) (let ((|e2#37| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@3|)))))
(let ((|e1#37| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@3|)))))
(LitInt (- (DafnyAST.__default.interpExpr ($LS $ly@@14) |e1#37| (Lit MapType |ctx#0@@3|)) (DafnyAST.__default.interpExpr ($LS $ly@@14) |e2#37| (Lit MapType |ctx#0@@3|))))))))))))
 :qid |Compilerdfy.44:12|
 :weight 3
 :skolemid |9434|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@14) (Lit DatatypeTypeType |e#0@@3|) (Lit MapType |ctx#0@@3|)))
)))
(assert (forall ((|_System._tuple#3$T0@@6| T@U) (|_System._tuple#3$T1@@6| T@U) (|_System._tuple#3$T2@@6| T@U) (|a#14#0#0@@1| T@U) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@1| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|))  (and (and ($IsBox |a#14#0#0@@1| |_System._tuple#3$T0@@6|) ($IsBox |a#14#1#0@@0| |_System._tuple#3$T1@@6|)) ($IsBox |a#14#2#0@@0| |_System._tuple#3$T2@@6|)))
 :qid |unknown.0:0|
 :skolemid |9326|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@1| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|)))
)))
(assert (forall ((|instr#0@@0| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|StackMachine.__default.interpInstr#canCall| |instr#0@@0| |st#0@@2|) (and ($Is DatatypeTypeType |instr#0@@0| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0@@2| Tclass.StackMachine.State))) ($Is DatatypeTypeType (StackMachine.__default.interpInstr |instr#0@@0| |st#0@@2|) Tclass.StackMachine.State))
 :qid |Compilerdfy.210:24|
 :skolemid |9604|
 :pattern ( (StackMachine.__default.interpInstr |instr#0@@0| |st#0@@2|))
)))
(assert (forall (($ly@@15 T@U) (|s#0@@6| T@U) ) (!  (=> (or (|Compiler.__default.compileStmt#canCall| |s#0@@6|) ($Is DatatypeTypeType |s#0@@6| Tclass.DafnyAST.Stmt)) (and (=> (not (DafnyAST.Stmt.Skip_q |s#0@@6|)) (and (=> (DafnyAST.Stmt.Print_q |s#0@@6|) (let ((|e#10@@0| (DafnyAST.Stmt.e |s#0@@6|)))
(|Compiler.__default.compileExpr#canCall| |e#10@@0|))) (=> (not (DafnyAST.Stmt.Print_q |s#0@@6|)) (and (=> (DafnyAST.Stmt.Assign_q |s#0@@6|) (let ((|e#11@@0| (DafnyAST.Stmt.e |s#0@@6|)))
(|Compiler.__default.compileExpr#canCall| |e#11@@0|))) (=> (not (DafnyAST.Stmt.Assign_q |s#0@@6|)) (let ((|s2#5@@0| (DafnyAST.Stmt.s2 |s#0@@6|)))
(let ((|s1#5@@0| (DafnyAST.Stmt.s1 |s#0@@6|)))
 (and (and (|Compiler.__default.compileStmt#canCall| |s2#5@@0|) (|Compiler.__default.compileStmt#canCall| |s1#5@@0|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileStmt $ly@@15 |s2#5@@0|) (Compiler.__default.compileStmt $ly@@15 |s1#5@@0|)))))))))) (= (Compiler.__default.compileStmt ($LS $ly@@15) |s#0@@6|) (ite (DafnyAST.Stmt.Skip_q |s#0@@6|) |#LinkedList.List.Nil| (ite (DafnyAST.Stmt.Print_q |s#0@@6|) (let ((|e#8@@0| (DafnyAST.Stmt.e |s#0@@6|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopPrint|)) (Compiler.__default.compileExpr ($LS $LZ) |e#8@@0|))) (ite (DafnyAST.Stmt.Assign_q |s#0@@6|) (let ((|e#9@@0| (DafnyAST.Stmt.e |s#0@@6|)))
(let ((|v#4@@0| (DafnyAST.Stmt.v |s#0@@6|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (|#StackMachine.Instr.PopVar| |v#4@@0|)) (Compiler.__default.compileExpr ($LS $LZ) |e#9@@0|)))) (let ((|s2#4@@0| (DafnyAST.Stmt.s2 |s#0@@6|)))
(let ((|s1#4@@0| (DafnyAST.Stmt.s1 |s#0@@6|)))
(LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Compiler.__default.compileStmt $ly@@15 |s2#4@@0|) (Compiler.__default.compileStmt $ly@@15 |s1#4@@0|))))))))))
 :qid |Compilerdfy.262:12|
 :skolemid |9695|
 :pattern ( (Compiler.__default.compileStmt ($LS $ly@@15) |s#0@@6|))
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
(assert (forall (($Heap T@U) (LinkedList._default.Concat$T@@2 T@U) ($ly@@16 T@U) (|l1#0@@2| T@U) (|l2#0@@2| T@U) ) (!  (=> (and (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@2 |l1#0@@2| |l2#0@@2|) (and (and ($Is DatatypeTypeType |l1#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2)) ($IsAlloc DatatypeTypeType |l1#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap)) (and ($Is DatatypeTypeType |l2#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2)) ($IsAlloc DatatypeTypeType |l2#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@2 $ly@@16 |l1#0@@2| |l2#0@@2|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap))
 :qid |Compilerdfy.171:12|
 :skolemid |9577|
 :pattern ( ($IsAlloc DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@2 $ly@@16 |l1#0@@2| |l2#0@@2|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap))
)))
(assert (forall ((|s#0@@7| T@U) (|ctx#0@@4| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt#canCall| |s#0@@7| |ctx#0@@4|) (and ($Is DatatypeTypeType |s#0@@7| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@4| (TMap (TSeq TChar) TInt)))) (and (and (|DafnyAST.__default.interpStmt_k#canCall| |s#0@@7| |ctx#0@@4|) (DafnyAST.InterpResult.InterpResult_q (DafnyAST.__default.interpStmt_k ($LS $LZ) |s#0@@7| |ctx#0@@4|))) (= (DafnyAST.__default.interpStmt |s#0@@7| |ctx#0@@4|) (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k ($LS $LZ) |s#0@@7| |ctx#0@@4|)))))
 :qid |Compilerdfy.70:23|
 :skolemid |9444|
 :pattern ( (DafnyAST.__default.interpStmt |s#0@@7| |ctx#0@@4|))
)))
(assert (forall ((LinkedList.List$T@@3 T@U) (d@@45 T@U) ) (!  (=> ($Is DatatypeTypeType d@@45 (Tclass.LinkedList.List LinkedList.List$T@@3)) (or (LinkedList.List.Cons_q d@@45) (LinkedList.List.Nil_q d@@45)))
 :qid |unknown.0:0|
 :skolemid |9599|
 :pattern ( (LinkedList.List.Nil_q d@@45) ($Is DatatypeTypeType d@@45 (Tclass.LinkedList.List LinkedList.List$T@@3)))
 :pattern ( (LinkedList.List.Cons_q d@@45) ($Is DatatypeTypeType d@@45 (Tclass.LinkedList.List LinkedList.List$T@@3)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |9030|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((m@@2 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@2 |m'@@0|) (= m@@2 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |9089|
 :pattern ( (|Map#Equal| m@@2 |m'@@0|))
)))
(assert (forall ((d@@46 T@U) ) (!  (=> ($Is DatatypeTypeType d@@46 Tclass.DafnyAST.BinOp) (or (DafnyAST.BinOp.Add_q d@@46) (DafnyAST.BinOp.Sub_q d@@46)))
 :qid |unknown.0:0|
 :skolemid |9453|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@46) ($Is DatatypeTypeType d@@46 Tclass.DafnyAST.BinOp))
 :pattern ( (DafnyAST.BinOp.Add_q d@@46) ($Is DatatypeTypeType d@@46 Tclass.DafnyAST.BinOp))
)))
(assert (forall (($ly@@17 T@U) (|s#0@@8| T@U) ) (!  (=> (or (|Rewriter.__default.simplifyStmt#canCall| |s#0@@8|) ($Is DatatypeTypeType |s#0@@8| Tclass.DafnyAST.Stmt)) (and (forall ((|ctx#3@@0| T@U) ) (!  (=> ($Is MapType |ctx#3@@0| (TMap (TSeq TChar) TInt)) (|DafnyAST.InterpResult#Equal| (DafnyAST.__default.interpStmt_k ($LS $LZ) (Rewriter.__default.simplifyStmt $ly@@17 |s#0@@8|) |ctx#3@@0|) (DafnyAST.__default.interpStmt_k ($LS $LZ) |s#0@@8| |ctx#3@@0|)))
 :qid |Compilerdfy.104:20|
 :skolemid |9569|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $LZ) |s#0@@8| |ctx#3@@0|))
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $LZ) (Rewriter.__default.simplifyStmt $ly@@17 |s#0@@8|) |ctx#3@@0|))
)) ($Is DatatypeTypeType (Rewriter.__default.simplifyStmt $ly@@17 |s#0@@8|) Tclass.DafnyAST.Stmt)))
 :qid |Compilerdfy.103:12|
 :skolemid |9570|
 :pattern ( (Rewriter.__default.simplifyStmt $ly@@17 |s#0@@8|))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TInt) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |8816|
 :pattern ( ($IsBox bx@@10 TInt))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TChar) (and (= ($Box charType ($Unbox charType bx@@11)) bx@@11) ($Is charType ($Unbox charType bx@@11) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |8819|
 :pattern ( ($IsBox bx@@11 TChar))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |8827|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert (forall (($ly@@18 T@U) (|e#0@@4| T@U) ) (!  (=> (or (|Rewriter.__default.simplifyExpr#canCall| |e#0@@4|) ($Is DatatypeTypeType |e#0@@4| Tclass.DafnyAST.Expr)) (and (=> (not (DafnyAST.Expr.Const_q |e#0@@4|)) (=> (not (DafnyAST.Expr.Var_q |e#0@@4|)) (let ((|e2#125| (DafnyAST.Expr.e2 |e#0@@4|)))
(let ((|e1#140| (DafnyAST.Expr.e1 |e#0@@4|)))
(let ((|op#5| (DafnyAST.Expr.op |e#0@@4|)))
 (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.BinOp.Add_q ($Unbox DatatypeTypeType (_System.Tuple3._0 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0))) (not true)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0))) (not true)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))))))))) (=> (not (DafnyAST.BinOp.Add_q ($Unbox DatatypeTypeType (_System.Tuple3._0 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0))) (not true)) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0)) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (=> (or (not (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (LitInt 0))) (not true)) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))))) (=> (not (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (=> (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|)))))))) (=> (not (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))) (and (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))) (and (and (|Rewriter.__default.simplifyExpr#canCall| |e1#140|) (|Rewriter.__default.simplifyExpr#canCall| |e2#125|)) (_System.Tuple3.___hMake3_q (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#5|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#140|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#125|))))))))))))))))))))) (= (Rewriter.__default.simplifyExpr ($LS $ly@@18) |e#0@@4|) (ite (DafnyAST.Expr.Const_q |e#0@@4|) |e#0@@4| (ite (DafnyAST.Expr.Var_q |e#0@@4|) |e#0@@4| (let ((|e2#100| (DafnyAST.Expr.e2 |e#0@@4|)))
(let ((|e1#112| (DafnyAST.Expr.e1 |e#0@@4|)))
(let ((|op#4| (DafnyAST.Expr.op |e#0@@4|)))
(ite (DafnyAST.BinOp.Add_q ($Unbox DatatypeTypeType (_System.Tuple3._0 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (LitInt 0)) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (LitInt 0)) (|#DafnyAST.Expr.Const| (LitInt 0)) (let ((|e2#101| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
|e2#101|)) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (let ((|e2#102| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
|e2#102|) (let ((|e2#103| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
|e2#103|))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (LitInt 0)) (let ((|e1#113| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
|e1#113|) (let ((|e2#104| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#114| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#114| |e2#104|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (let ((|e2#105| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#115| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#115| |e2#105|))) (let ((|e2#106| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#116| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#116| |e2#106|)))))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (LitInt 0)) (let ((|e1#117| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
|e1#117|) (let ((|e2#107| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#118| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#118| |e2#107|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (let ((|e2#108| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#119| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#119| |e2#108|))) (let ((|e2#109| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#120| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#120| |e2#109|))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (LitInt 0)) (let ((|e1#121| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
|e1#121|) (let ((|e2#110| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#122| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#122| |e2#110|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (let ((|e2#111| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#123| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#123| |e2#111|))) (let ((|e2#112| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#124| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#124| |e2#112|))))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (LitInt 0)) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (LitInt 0)) (|#DafnyAST.Expr.Const| (LitInt 0)) (let ((|e2#113| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#125| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#125| |e2#113|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (let ((|e2#114| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#126| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#126| |e2#114|))) (let ((|e2#115| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#127| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#127| |e2#115|))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (LitInt 0)) (let ((|e1#128| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
|e1#128|) (let ((|e2#116| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#129| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#129| |e2#116|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (let ((|e2#117| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#130| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#130| |e2#117|))) (let ((|e2#118| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#131| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#131| |e2#118|)))))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (LitInt 0)) (let ((|e1#132| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
|e1#132|) (let ((|e2#119| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#133| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#133| |e2#119|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (let ((|e2#120| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#134| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#134| |e2#120|))) (let ((|e2#121| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#135| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#135| |e2#121|))))) (ite (DafnyAST.Expr.Const_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (ite (= (DafnyAST.Expr.n ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (LitInt 0)) (let ((|e1#136| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
|e1#136|) (let ((|e2#122| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#137| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#137| |e2#122|)))) (ite (DafnyAST.Expr.Var_q ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))) (let ((|e2#123| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#138| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#138| |e2#123|))) (let ((|e2#124| ($Unbox DatatypeTypeType (_System.Tuple3._2 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(let ((|e1#139| ($Unbox DatatypeTypeType (_System.Tuple3._1 (|#_System._tuple#3._#Make3| ($Box DatatypeTypeType |op#4|) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e1#112|)) ($Box DatatypeTypeType (Rewriter.__default.simplifyExpr $ly@@18 |e2#100|)))))))
(|#DafnyAST.Expr.Op| |op#4| |e1#139| |e2#124|))))))))))))))))
 :qid |Compilerdfy.84:12|
 :skolemid |9565|
 :pattern ( (Rewriter.__default.simplifyExpr ($LS $ly@@18) |e#0@@4|))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |9010|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@1) h@@0) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@12) ($IsAllocBox bx@@12 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |8856|
 :pattern ( (|Set#IsMember| v@@4 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |8857|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@2 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@2 u@@1)) t@@2)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |8798|
 :pattern ( (TMap t@@2 u@@1))
)))
(assert (forall ((t@@3 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@3 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |8799|
 :pattern ( (TMap t@@3 u@@2))
)))
(assert (forall ((t@@4 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@4 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |8800|
 :pattern ( (TMap t@@4 u@@3))
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
(assert (forall ((v@@5 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@2) h@@1) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@6) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |8862|
 :pattern ( (|Seq#Index| v@@5 i@@6))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |8863|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@2) h@@1))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) ) (! (= (|#_System._tuple#3._#Make3| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|)) (Lit DatatypeTypeType (|#_System._tuple#3._#Make3| |a#15#0#0| |a#15#1#0| |a#15#2#0|)))
 :qid |unknown.0:0|
 :skolemid |9334|
 :pattern ( (|#_System._tuple#3._#Make3| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|)))
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
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSet (TSet t@@5)) t@@5)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |8790|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSet t@@6)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |8791|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSeq (TSeq t@@7)) t@@7)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |8796|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSeq t@@8)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8797|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((LinkedList.List$T@@4 T@U) ) (! (= (Tclass.LinkedList.List_0 (Tclass.LinkedList.List LinkedList.List$T@@4)) LinkedList.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |9404|
 :pattern ( (Tclass.LinkedList.List LinkedList.List$T@@4))
)))
(assert (forall ((|a#8#0#0| Int) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Const| |a#8#0#0|)) |##DafnyAST.Expr.Const|)
 :qid |Compilerdfy.27:13|
 :skolemid |9457|
 :pattern ( (|#DafnyAST.Expr.Const| |a#8#0#0|))
)))
(assert (forall ((|a#12#0#0@@0| Int) ) (! (= (DafnyAST.Expr.n (|#DafnyAST.Expr.Const| |a#12#0#0@@0|)) |a#12#0#0@@0|)
 :qid |Compilerdfy.27:13|
 :skolemid |9464|
 :pattern ( (|#DafnyAST.Expr.Const| |a#12#0#0@@0|))
)))
(assert (forall ((|a#13#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Var| |a#13#0#0@@0|)) |##DafnyAST.Expr.Var|)
 :qid |Compilerdfy.28:11|
 :skolemid |9465|
 :pattern ( (|#DafnyAST.Expr.Var| |a#13#0#0@@0|))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |8814|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((v@@6 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@6 (TMap t0@@3 t1@@0) h@@2) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@13) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@13) t1@@0 h@@2) ($IsAllocBox bx@@13 t0@@3 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |8864|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@13))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@13))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |8865|
 :pattern ( ($IsAlloc MapType v@@6 (TMap t0@@3 t1@@0) h@@2))
)))
(assert (forall ((|a#17#0#0@@0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) ) (! (< (BoxRank |a#17#0#0@@0|) (DtRank (|#_System._tuple#3._#Make3| |a#17#0#0@@0| |a#17#1#0| |a#17#2#0|)))
 :qid |unknown.0:0|
 :skolemid |9336|
 :pattern ( (|#_System._tuple#3._#Make3| |a#17#0#0@@0| |a#17#1#0| |a#17#2#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|)))
 :qid |unknown.0:0|
 :skolemid |9338|
 :pattern ( (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|))
)))
(assert (forall ((|a#21#0#0@@0| T@U) (|a#21#1#0@@0| T@U) (|a#21#2#0@@0| T@U) ) (! (< (BoxRank |a#21#2#0@@0|) (DtRank (|#_System._tuple#3._#Make3| |a#21#0#0@@0| |a#21#1#0@@0| |a#21#2#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |9340|
 :pattern ( (|#_System._tuple#3._#Make3| |a#21#0#0@@0| |a#21#1#0@@0| |a#21#2#0@@0|))
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
(assert (forall (($ly@@19 T@U) (|e#0@@5| T@U) ) (! (= (Rewriter.__default.simplifyExpr ($LS $ly@@19) |e#0@@5|) (Rewriter.__default.simplifyExpr $ly@@19 |e#0@@5|))
 :qid |Compilerdfy.84:12|
 :skolemid |9560|
 :pattern ( (Rewriter.__default.simplifyExpr ($LS $ly@@19) |e#0@@5|))
)))
(assert (forall (($ly@@20 T@U) (|s#0@@9| T@U) ) (! (= (Rewriter.__default.simplifyStmt ($LS $ly@@20) |s#0@@9|) (Rewriter.__default.simplifyStmt $ly@@20 |s#0@@9|))
 :qid |Compilerdfy.103:12|
 :skolemid |9567|
 :pattern ( (Rewriter.__default.simplifyStmt ($LS $ly@@20) |s#0@@9|))
)))
(assert (forall (($ly@@21 T@U) (|e#0@@6| T@U) ) (! (= (Compiler.__default.compileExpr ($LS $ly@@21) |e#0@@6|) (Compiler.__default.compileExpr $ly@@21 |e#0@@6|))
 :qid |Compilerdfy.253:12|
 :skolemid |9685|
 :pattern ( (Compiler.__default.compileExpr ($LS $ly@@21) |e#0@@6|))
)))
(assert (forall (($ly@@22 T@U) (|s#0@@10| T@U) ) (! (= (Compiler.__default.compileStmt ($LS $ly@@22) |s#0@@10|) (Compiler.__default.compileStmt $ly@@22 |s#0@@10|))
 :qid |Compilerdfy.262:12|
 :skolemid |9691|
 :pattern ( (Compiler.__default.compileStmt ($LS $ly@@22) |s#0@@10|))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |9074|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
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
(assert (forall ((bx@@14 T@U) (s@@3 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@14 (TMap s@@3 t@@9)) (and (= ($Box MapType ($Unbox MapType bx@@14)) bx@@14) ($Is MapType ($Unbox MapType bx@@14) (TMap s@@3 t@@9))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |8825|
 :pattern ( ($IsBox bx@@14 (TMap s@@3 t@@9)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@15)) bx@@15) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@15) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |9244|
 :pattern ( ($IsBox bx@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#19#0#0@@0| T@U) ) (! (< (|Seq#Rank| |a#19#0#0@@0|) (DtRank (|#DafnyAST.Expr.Var| |a#19#0#0@@0|)))
 :qid |Compilerdfy.28:11|
 :skolemid |9474|
 :pattern ( (|#DafnyAST.Expr.Var| |a#19#0#0@@0|))
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
(assert (forall ((d@@47 T@U) (LinkedList.List$T@@5 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (LinkedList.List.Cons_q d@@47) ($IsAlloc DatatypeTypeType d@@47 (Tclass.LinkedList.List LinkedList.List$T@@5) $h@@3))) ($IsAllocBox (LinkedList.List.hd d@@47) LinkedList.List$T@@5 $h@@3))
 :qid |unknown.0:0|
 :skolemid |9587|
 :pattern ( ($IsAllocBox (LinkedList.List.hd d@@47) LinkedList.List$T@@5 $h@@3))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@3 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@1 t2 (MapType1Store t0@@4 t1@@1 t2 m@@3 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@4 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@4 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@4 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@5 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@5 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@5 y0@@1 y1@@0)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |9879|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall (($ly@@23 T@U) (|s#0@@11| T@U) (|ctx#0@@5| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt_k#canCall| |s#0@@11| |ctx#0@@5|) (and ($Is DatatypeTypeType |s#0@@11| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@5| (TMap (TSeq TChar) TInt)))) (and (=> (not (DafnyAST.Stmt.Skip_q |s#0@@11|)) (and (=> (DafnyAST.Stmt.Print_q |s#0@@11|) (let ((|e#34| (DafnyAST.Stmt.e |s#0@@11|)))
(|DafnyAST.__default.interpExpr#canCall| |e#34| |ctx#0@@5|))) (=> (not (DafnyAST.Stmt.Print_q |s#0@@11|)) (and (=> (DafnyAST.Stmt.Assign_q |s#0@@11|) (let ((|e#35| (DafnyAST.Stmt.e |s#0@@11|)))
(|DafnyAST.__default.interpExpr#canCall| |e#35| |ctx#0@@5|))) (=> (not (DafnyAST.Stmt.Assign_q |s#0@@11|)) (let ((|s2#17| (DafnyAST.Stmt.s2 |s#0@@11|)))
(let ((|s1#17| (DafnyAST.Stmt.s1 |s#0@@11|)))
 (and (|DafnyAST.__default.interpStmt_k#canCall| |s1#17| |ctx#0@@5|) (let ((|ctx1#17| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k $ly@@23 |s1#17| |ctx#0@@5|))))
(|DafnyAST.__default.interpStmt_k#canCall| |s2#17| |ctx1#17|)))))))))) (= (DafnyAST.__default.interpStmt_k ($LS $ly@@23) |s#0@@11| |ctx#0@@5|) (ite (DafnyAST.Stmt.Skip_q |s#0@@11|) (|#DafnyAST.InterpResult.InterpResult| |ctx#0@@5| (Lit SeqType |Seq#Empty|)) (ite (DafnyAST.Stmt.Print_q |s#0@@11|) (let ((|e#32| (DafnyAST.Stmt.e |s#0@@11|)))
(|#DafnyAST.InterpResult.InterpResult| |ctx#0@@5| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (DafnyAST.__default.interpExpr ($LS $LZ) |e#32| |ctx#0@@5|)))))) (ite (DafnyAST.Stmt.Assign_q |s#0@@11|) (let ((|e#33| (DafnyAST.Stmt.e |s#0@@11|)))
(let ((|v#16| (DafnyAST.Stmt.v |s#0@@11|)))
(|#DafnyAST.InterpResult.InterpResult| (|Map#Build| |ctx#0@@5| ($Box SeqType |v#16|) ($Box intType (int_2_U (DafnyAST.__default.interpExpr ($LS $LZ) |e#33| |ctx#0@@5|)))) (Lit SeqType |Seq#Empty|)))) (let ((|s2#16| (DafnyAST.Stmt.s2 |s#0@@11|)))
(let ((|s1#16| (DafnyAST.Stmt.s1 |s#0@@11|)))
(let ((|o1#16| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k $ly@@23 |s1#16| |ctx#0@@5|))))
(let ((|ctx1#16| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k $ly@@23 |s1#16| |ctx#0@@5|))))
(let ((|o2#16| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k $ly@@23 |s2#16| |ctx1#16|))))
(let ((|ctx2#16| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k $ly@@23 |s2#16| |ctx1#16|))))
(|#DafnyAST.InterpResult.InterpResult| |ctx2#16| (|Seq#Append| |o1#16| |o2#16|))))))))))))))
 :qid |Compilerdfy.57:12|
 :skolemid |9440|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $ly@@23) |s#0@@11| |ctx#0@@5|))
)))
(assert (forall ((s@@4 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@4 val@@4)) s@@4) (= (|Seq#Build_inv1| (|Seq#Build| s@@4 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |9012|
 :pattern ( (|Seq#Build| s@@4 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |9241|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@48 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (DafnyAST.Expr.Const_q d@@48) ($IsAlloc DatatypeTypeType d@@48 Tclass.DafnyAST.Expr $h@@4))) ($IsAlloc intType (int_2_U (DafnyAST.Expr.n d@@48)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |9462|
 :pattern ( ($IsAlloc intType (int_2_U (DafnyAST.Expr.n d@@48)) TInt $h@@4))
)))
(assert (forall ((d@@49 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (StackMachine.Instr.PushConst_q d@@49) ($IsAlloc DatatypeTypeType d@@49 Tclass.StackMachine.Instr $h@@5))) ($IsAlloc intType (int_2_U (StackMachine.Instr.n d@@49)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |9624|
 :pattern ( ($IsAlloc intType (int_2_U (StackMachine.Instr.n d@@49)) TInt $h@@5))
)))
(assert (forall ((d@@50 T@U) ) (!  (=> ($Is DatatypeTypeType d@@50 Tclass.DafnyAST.Expr) (or (or (DafnyAST.Expr.Const_q d@@50) (DafnyAST.Expr.Var_q d@@50)) (DafnyAST.Expr.Op_q d@@50)))
 :qid |unknown.0:0|
 :skolemid |9492|
 :pattern ( (DafnyAST.Expr.Op_q d@@50) ($Is DatatypeTypeType d@@50 Tclass.DafnyAST.Expr))
 :pattern ( (DafnyAST.Expr.Var_q d@@50) ($Is DatatypeTypeType d@@50 Tclass.DafnyAST.Expr))
 :pattern ( (DafnyAST.Expr.Const_q d@@50) ($Is DatatypeTypeType d@@50 Tclass.DafnyAST.Expr))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |9062|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |9063|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@7 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@7)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |9064|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |9065|
 :pattern ( (|Map#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@8) item)  (and (|Set#IsMember| (|Map#Domain| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |9073|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@8) item))
)))
(assert (forall ((m@@9 T@U) (v@@8 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@8) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@5) (= v@@8 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |9071|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |9072|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@8))
)))
(assert (forall ((m@@10 T@U) (u@@6 T@U) (|u'| T@U) (v@@9 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@9)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@9)) |u'|) v@@9))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@9)) |u'|) (|Set#IsMember| (|Map#Domain| m@@10) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@9)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@10) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |9079|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@9)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@9)) |u'|))
)))
(assert (forall ((d@@51 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@51)) (DtRank d@@51))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |8873|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@51)))
)))
(assert (forall ((LinkedList._default.Concat$T@@3 T@U) ($ly@@24 T@U) (|l1#0@@3| T@U) (|l2#0@@3| T@U) ) (! (= (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 ($LS $ly@@24) |l1#0@@3| |l2#0@@3|) (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 $ly@@24 |l1#0@@3| |l2#0@@3|))
 :qid |unknown.0:0|
 :skolemid |9574|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 ($LS $ly@@24) |l1#0@@3| |l2#0@@3|))
)))
(assert (forall ((bx@@16 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@16 (TSet t@@10)) (and (= ($Box SetType ($Unbox SetType bx@@16)) bx@@16) ($Is SetType ($Unbox SetType bx@@16) (TSet t@@10))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |8821|
 :pattern ( ($IsBox bx@@16 (TSet t@@10)))
)))
(assert (forall ((bx@@17 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@17 (TSeq t@@11)) (and (= ($Box SeqType ($Unbox SeqType bx@@17)) bx@@17) ($Is SeqType ($Unbox SeqType bx@@17) (TSeq t@@11))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |8824|
 :pattern ( ($IsBox bx@@17 (TSeq t@@11)))
)))
(assert (forall ((LinkedList.List$T@@6 T@U) (bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 (Tclass.LinkedList.List LinkedList.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@18)) bx@@18) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@18) (Tclass.LinkedList.List LinkedList.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |9405|
 :pattern ( ($IsBox bx@@18 (Tclass.LinkedList.List LinkedList.List$T@@6)))
)))
(assert (forall ((v@@10 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@10 (TMap t0@@5 t1@@2)) (forall ((bx@@19 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@10) bx@@19) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@19) t1@@2) ($IsBox bx@@19 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |8844|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@19))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@10) bx@@19))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |8845|
 :pattern ( ($Is MapType v@@10 (TMap t0@@5 t1@@2)))
)))
(assert (forall ((d@@52 T@U) (|_System._tuple#3$T0@@7| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple3.___hMake3_q d@@52) (exists ((|_System._tuple#3$T1@@7| T@U) (|_System._tuple#3$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@52 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |9328|
 :pattern ( ($IsAlloc DatatypeTypeType d@@52 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@6))
)))) ($IsAllocBox (_System.Tuple3._0 d@@52) |_System._tuple#3$T0@@7| $h@@6))
 :qid |unknown.0:0|
 :skolemid |9329|
 :pattern ( ($IsAllocBox (_System.Tuple3._0 d@@52) |_System._tuple#3$T0@@7| $h@@6))
)))
(assert (forall ((d@@53 T@U) (|_System._tuple#3$T1@@8| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple3.___hMake3_q d@@53) (exists ((|_System._tuple#3$T0@@8| T@U) (|_System._tuple#3$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@53 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |9330|
 :pattern ( ($IsAlloc DatatypeTypeType d@@53 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@7))
)))) ($IsAllocBox (_System.Tuple3._1 d@@53) |_System._tuple#3$T1@@8| $h@@7))
 :qid |unknown.0:0|
 :skolemid |9331|
 :pattern ( ($IsAllocBox (_System.Tuple3._1 d@@53) |_System._tuple#3$T1@@8| $h@@7))
)))
(assert (forall ((d@@54 T@U) (|_System._tuple#3$T2@@9| T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_System.Tuple3.___hMake3_q d@@54) (exists ((|_System._tuple#3$T0@@9| T@U) (|_System._tuple#3$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@54 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@8)
 :qid |unknown.0:0|
 :skolemid |9332|
 :pattern ( ($IsAlloc DatatypeTypeType d@@54 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@8))
)))) ($IsAllocBox (_System.Tuple3._2 d@@54) |_System._tuple#3$T2@@9| $h@@8))
 :qid |unknown.0:0|
 :skolemid |9333|
 :pattern ( ($IsAllocBox (_System.Tuple3._2 d@@54) |_System._tuple#3$T2@@9| $h@@8))
)))
(assert (forall (($ly@@25 T@U) (|p#0@@3| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg_k#canCall| (Lit DatatypeTypeType |p#0@@3|) (Lit DatatypeTypeType |st#0@@4|)) (and ($Is DatatypeTypeType |p#0@@3| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |st#0@@4| Tclass.StackMachine.State))) (and (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType |p#0@@3|))))) (let ((|p#16| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |p#0@@3|)))))
(let ((|instr#15| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (LinkedList.List.hd (Lit DatatypeTypeType |p#0@@3|))))))
 (and (|StackMachine.__default.interpProg_k#canCall| |p#16| (Lit DatatypeTypeType |st#0@@4|)) (|StackMachine.__default.interpInstr#canCall| |instr#15| (StackMachine.__default.interpProg_k ($LS $ly@@25) |p#16| (Lit DatatypeTypeType |st#0@@4|))))))) (= (StackMachine.__default.interpProg_k ($LS $ly@@25) (Lit DatatypeTypeType |p#0@@3|) (Lit DatatypeTypeType |st#0@@4|)) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType |p#0@@3|)) (let ((|p#15| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |p#0@@3|)))))
(let ((|instr#14| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (LinkedList.List.hd (Lit DatatypeTypeType |p#0@@3|))))))
(Lit DatatypeTypeType (StackMachine.__default.interpInstr |instr#14| (Lit DatatypeTypeType (StackMachine.__default.interpProg_k ($LS $ly@@25) |p#15| (Lit DatatypeTypeType |st#0@@4|))))))) |st#0@@4|))))
 :qid |Compilerdfy.233:12|
 :weight 3
 :skolemid |9613|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $ly@@25) (Lit DatatypeTypeType |p#0@@3|) (Lit DatatypeTypeType |st#0@@4|)))
)))
(assert (forall ((d@@55 T@U) (LinkedList.List$T@@7 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (LinkedList.List.Cons_q d@@55) ($IsAlloc DatatypeTypeType d@@55 (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@9))) ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@55) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@9))
 :qid |unknown.0:0|
 :skolemid |9588|
 :pattern ( ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@55) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@9))
)))
(assert (forall ((d@@56 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) ($Is DatatypeTypeType d@@56 Tclass.DafnyAST.BinOp)) ($IsAlloc DatatypeTypeType d@@56 Tclass.DafnyAST.BinOp $h@@10))
 :qid |unknown.0:0|
 :skolemid |9451|
 :pattern ( ($IsAlloc DatatypeTypeType d@@56 Tclass.DafnyAST.BinOp $h@@10))
)))
(assert (forall ((d@@57 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) ($Is DatatypeTypeType d@@57 Tclass.DafnyAST.Expr)) ($IsAlloc DatatypeTypeType d@@57 Tclass.DafnyAST.Expr $h@@11))
 :qid |unknown.0:0|
 :skolemid |9490|
 :pattern ( ($IsAlloc DatatypeTypeType d@@57 Tclass.DafnyAST.Expr $h@@11))
)))
(assert (forall ((d@@58 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) ($Is DatatypeTypeType d@@58 Tclass.DafnyAST.Stmt)) ($IsAlloc DatatypeTypeType d@@58 Tclass.DafnyAST.Stmt $h@@12))
 :qid |unknown.0:0|
 :skolemid |9533|
 :pattern ( ($IsAlloc DatatypeTypeType d@@58 Tclass.DafnyAST.Stmt $h@@12))
)))
(assert (forall ((d@@59 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) ($Is DatatypeTypeType d@@59 Tclass.DafnyAST.InterpResult)) ($IsAlloc DatatypeTypeType d@@59 Tclass.DafnyAST.InterpResult $h@@13))
 :qid |unknown.0:0|
 :skolemid |9555|
 :pattern ( ($IsAlloc DatatypeTypeType d@@59 Tclass.DafnyAST.InterpResult $h@@13))
)))
(assert (forall ((d@@60 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) ($Is DatatypeTypeType d@@60 Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType d@@60 Tclass.StackMachine.Instr $h@@14))
 :qid |unknown.0:0|
 :skolemid |9653|
 :pattern ( ($IsAlloc DatatypeTypeType d@@60 Tclass.StackMachine.Instr $h@@14))
)))
(assert (forall ((d@@61 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) ($Is DatatypeTypeType d@@61 Tclass.StackMachine.State)) ($IsAlloc DatatypeTypeType d@@61 Tclass.StackMachine.State $h@@15))
 :qid |unknown.0:0|
 :skolemid |9680|
 :pattern ( ($IsAlloc DatatypeTypeType d@@61 Tclass.StackMachine.State $h@@15))
)))
(assert (= (Tag Tclass.DafnyAST.Stmt) Tagclass.DafnyAST.Stmt))
(assert (= (TagFamily Tclass.DafnyAST.Stmt) tytagFamily$Stmt))
(assert (= (Tag Tclass.StackMachine.Instr) Tagclass.StackMachine.Instr))
(assert (= (TagFamily Tclass.StackMachine.Instr) tytagFamily$Instr))
(assert (= (Tag Tclass.DafnyAST.Expr) Tagclass.DafnyAST.Expr))
(assert (= (TagFamily Tclass.DafnyAST.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.DafnyAST.InterpResult) Tagclass.DafnyAST.InterpResult))
(assert (= (TagFamily Tclass.DafnyAST.InterpResult) tytagFamily$InterpResult))
(assert (= (Tag Tclass.DafnyAST.BinOp) Tagclass.DafnyAST.BinOp))
(assert (= (TagFamily Tclass.DafnyAST.BinOp) tytagFamily$BinOp))
(assert (= (Tag Tclass.StackMachine.State) Tagclass.StackMachine.State))
(assert (= (TagFamily Tclass.StackMachine.State) tytagFamily$State))
(assert (forall ((d@@62 T@U) ) (!  (=> ($Is DatatypeTypeType d@@62 Tclass.StackMachine.Instr) (or (or (or (or (or (StackMachine.Instr.PushConst_q d@@62) (StackMachine.Instr.PushVar_q d@@62)) (StackMachine.Instr.PopAdd_q d@@62)) (StackMachine.Instr.PopSub_q d@@62)) (StackMachine.Instr.PopPrint_q d@@62)) (StackMachine.Instr.PopVar_q d@@62)))
 :qid |unknown.0:0|
 :skolemid |9655|
 :pattern ( (StackMachine.Instr.PopVar_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopPrint_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopSub_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopAdd_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushVar_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushConst_q d@@62) ($Is DatatypeTypeType d@@62 Tclass.StackMachine.Instr))
)))
(assert (= |#DafnyAST.BinOp.Add| (Lit DatatypeTypeType |#DafnyAST.BinOp.Add|)))
(assert (= |#DafnyAST.BinOp.Sub| (Lit DatatypeTypeType |#DafnyAST.BinOp.Sub|)))
(assert (= |#DafnyAST.Stmt.Skip| (Lit DatatypeTypeType |#DafnyAST.Stmt.Skip|)))
(assert (= |#LinkedList.List.Nil| (Lit DatatypeTypeType |#LinkedList.List.Nil|)))
(assert (= |#StackMachine.Instr.PopAdd| (Lit DatatypeTypeType |#StackMachine.Instr.PopAdd|)))
(assert (= |#StackMachine.Instr.PopSub| (Lit DatatypeTypeType |#StackMachine.Instr.PopSub|)))
(assert (= |#StackMachine.Instr.PopPrint| (Lit DatatypeTypeType |#StackMachine.Instr.PopPrint|)))
(assert (forall ((|a#15#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Var| |a#15#0#0@@0|) Tclass.DafnyAST.Expr) ($Is SeqType |a#15#0#0@@0| (TSeq TChar)))
 :qid |Compilerdfy.28:11|
 :skolemid |9469|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Var| |a#15#0#0@@0|) Tclass.DafnyAST.Expr))
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
(assert (forall ((d@@63 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (DafnyAST.Expr.Var_q d@@63) ($IsAlloc DatatypeTypeType d@@63 Tclass.DafnyAST.Expr $h@@16))) ($IsAlloc SeqType (DafnyAST.Expr.v d@@63) (TSeq TChar) $h@@16))
 :qid |unknown.0:0|
 :skolemid |9470|
 :pattern ( ($IsAlloc SeqType (DafnyAST.Expr.v d@@63) (TSeq TChar) $h@@16))
)))
(assert (forall ((d@@64 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (DafnyAST.Stmt.Assign_q d@@64) ($IsAlloc DatatypeTypeType d@@64 Tclass.DafnyAST.Stmt $h@@17))) ($IsAlloc SeqType (DafnyAST.Stmt.v d@@64) (TSeq TChar) $h@@17))
 :qid |unknown.0:0|
 :skolemid |9513|
 :pattern ( ($IsAlloc SeqType (DafnyAST.Stmt.v d@@64) (TSeq TChar) $h@@17))
)))
(assert (forall ((d@@65 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (DafnyAST.InterpResult.InterpResult_q d@@65) ($IsAlloc DatatypeTypeType d@@65 Tclass.DafnyAST.InterpResult $h@@18))) ($IsAlloc SeqType (DafnyAST.InterpResult.output d@@65) (TSeq TInt) $h@@18))
 :qid |unknown.0:0|
 :skolemid |9547|
 :pattern ( ($IsAlloc SeqType (DafnyAST.InterpResult.output d@@65) (TSeq TInt) $h@@18))
)))
(assert (forall ((d@@66 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (StackMachine.Instr.PushVar_q d@@66) ($IsAlloc DatatypeTypeType d@@66 Tclass.StackMachine.Instr $h@@19))) ($IsAlloc SeqType (StackMachine.Instr.v d@@66) (TSeq TChar) $h@@19))
 :qid |unknown.0:0|
 :skolemid |9632|
 :pattern ( ($IsAlloc SeqType (StackMachine.Instr.v d@@66) (TSeq TChar) $h@@19))
)))
(assert (forall ((d@@67 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (StackMachine.Instr.PopVar_q d@@67) ($IsAlloc DatatypeTypeType d@@67 Tclass.StackMachine.Instr $h@@20))) ($IsAlloc SeqType (StackMachine.Instr.v d@@67) (TSeq TChar) $h@@20))
 :qid |unknown.0:0|
 :skolemid |9648|
 :pattern ( ($IsAlloc SeqType (StackMachine.Instr.v d@@67) (TSeq TChar) $h@@20))
)))
(assert (forall ((d@@68 T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (StackMachine.State.State_q d@@68) ($IsAlloc DatatypeTypeType d@@68 Tclass.StackMachine.State $h@@21))) ($IsAlloc DatatypeTypeType (StackMachine.State.stack d@@68) (Tclass.LinkedList.List TInt) $h@@21))
 :qid |unknown.0:0|
 :skolemid |9668|
 :pattern ( ($IsAlloc DatatypeTypeType (StackMachine.State.stack d@@68) (Tclass.LinkedList.List TInt) $h@@21))
)))
(assert (forall ((d@@69 T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (StackMachine.State.State_q d@@69) ($IsAlloc DatatypeTypeType d@@69 Tclass.StackMachine.State $h@@22))) ($IsAlloc SeqType (StackMachine.State.output d@@69) (TSeq TInt) $h@@22))
 :qid |unknown.0:0|
 :skolemid |9670|
 :pattern ( ($IsAlloc SeqType (StackMachine.State.output d@@69) (TSeq TInt) $h@@22))
)))
(assert (forall ((|a#38#0#0@@0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) (d@@70 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#38#1#0|) ($Box DatatypeTypeType d@@70)) (< (DtRank d@@70) (DtRank (|#StackMachine.State.State| |a#38#0#0@@0| |a#38#1#0| |a#38#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |9675|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#38#1#0|) ($Box DatatypeTypeType d@@70)) (|#StackMachine.State.State| |a#38#0#0@@0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) (d@@71 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#62#0#0|) ($Box DatatypeTypeType d@@71)) (< (DtRank d@@71) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#62#0#0| |a#62#1#0|))))
 :qid |Compilerdfy.55:40|
 :skolemid |9550|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#62#0#0|) ($Box DatatypeTypeType d@@71)) (|#DafnyAST.InterpResult.InterpResult| |a#62#0#0| |a#62#1#0|))
)))
(assert (forall ((d@@72 T@U) ) (!  (=> (|$IsA#DafnyAST.Stmt| d@@72) (or (or (or (DafnyAST.Stmt.Skip_q d@@72) (DafnyAST.Stmt.Print_q d@@72)) (DafnyAST.Stmt.Assign_q d@@72)) (DafnyAST.Stmt.Seq_q d@@72)))
 :qid |unknown.0:0|
 :skolemid |9534|
 :pattern ( (|$IsA#DafnyAST.Stmt| d@@72))
)))
(assert (forall ((d@@73 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (DafnyAST.InterpResult.InterpResult_q d@@73) ($IsAlloc DatatypeTypeType d@@73 Tclass.DafnyAST.InterpResult $h@@23))) ($IsAlloc MapType (DafnyAST.InterpResult.ctx d@@73) (TMap (TSeq TChar) TInt) $h@@23))
 :qid |unknown.0:0|
 :skolemid |9546|
 :pattern ( ($IsAlloc MapType (DafnyAST.InterpResult.ctx d@@73) (TMap (TSeq TChar) TInt) $h@@23))
)))
(assert (forall ((d@@74 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (StackMachine.State.State_q d@@74) ($IsAlloc DatatypeTypeType d@@74 Tclass.StackMachine.State $h@@24))) ($IsAlloc MapType (StackMachine.State.regs d@@74) (TMap (TSeq TChar) TInt) $h@@24))
 :qid |unknown.0:0|
 :skolemid |9669|
 :pattern ( ($IsAlloc MapType (StackMachine.State.regs d@@74) (TMap (TSeq TChar) TInt) $h@@24))
)))
(assert (forall ((d@@75 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (_System.Tuple2.___hMake2_q d@@75) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@75 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@25)
 :qid |unknown.0:0|
 :skolemid |9247|
 :pattern ( ($IsAlloc DatatypeTypeType d@@75 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@25))
)))) ($IsAllocBox (_System.Tuple2._0 d@@75) |_System._tuple#2$T0@@6| $h@@25))
 :qid |unknown.0:0|
 :skolemid |9248|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@75) |_System._tuple#2$T0@@6| $h@@25))
)))
(assert (forall ((d@@76 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (_System.Tuple2.___hMake2_q d@@76) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@76 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@26)
 :qid |unknown.0:0|
 :skolemid |9249|
 :pattern ( ($IsAlloc DatatypeTypeType d@@76 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@26))
)))) ($IsAllocBox (_System.Tuple2._1 d@@76) |_System._tuple#2$T1@@7| $h@@26))
 :qid |unknown.0:0|
 :skolemid |9250|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@76) |_System._tuple#2$T1@@7| $h@@26))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |9016|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((d@@77 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (DafnyAST.Expr.Op_q d@@77) ($IsAlloc DatatypeTypeType d@@77 Tclass.DafnyAST.Expr $h@@27))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.op d@@77) Tclass.DafnyAST.BinOp $h@@27))
 :qid |unknown.0:0|
 :skolemid |9480|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.op d@@77) Tclass.DafnyAST.BinOp $h@@27))
)))
(assert (forall ((d@@78 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (DafnyAST.Expr.Op_q d@@78) ($IsAlloc DatatypeTypeType d@@78 Tclass.DafnyAST.Expr $h@@28))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e1 d@@78) Tclass.DafnyAST.Expr $h@@28))
 :qid |unknown.0:0|
 :skolemid |9481|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e1 d@@78) Tclass.DafnyAST.Expr $h@@28))
)))
(assert (forall ((d@@79 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (DafnyAST.Expr.Op_q d@@79) ($IsAlloc DatatypeTypeType d@@79 Tclass.DafnyAST.Expr $h@@29))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e2 d@@79) Tclass.DafnyAST.Expr $h@@29))
 :qid |unknown.0:0|
 :skolemid |9482|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e2 d@@79) Tclass.DafnyAST.Expr $h@@29))
)))
(assert (forall ((d@@80 T@U) ($h@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (DafnyAST.Stmt.Print_q d@@80) ($IsAlloc DatatypeTypeType d@@80 Tclass.DafnyAST.Stmt $h@@30))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@80) Tclass.DafnyAST.Expr $h@@30))
 :qid |unknown.0:0|
 :skolemid |9504|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@80) Tclass.DafnyAST.Expr $h@@30))
)))
(assert (forall ((d@@81 T@U) ($h@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (DafnyAST.Stmt.Assign_q d@@81) ($IsAlloc DatatypeTypeType d@@81 Tclass.DafnyAST.Stmt $h@@31))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@81) Tclass.DafnyAST.Expr $h@@31))
 :qid |unknown.0:0|
 :skolemid |9514|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@81) Tclass.DafnyAST.Expr $h@@31))
)))
(assert (forall ((d@@82 T@U) ($h@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@32) (and (DafnyAST.Stmt.Seq_q d@@82) ($IsAlloc DatatypeTypeType d@@82 Tclass.DafnyAST.Stmt $h@@32))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s1 d@@82) Tclass.DafnyAST.Stmt $h@@32))
 :qid |unknown.0:0|
 :skolemid |9526|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s1 d@@82) Tclass.DafnyAST.Stmt $h@@32))
)))
(assert (forall ((d@@83 T@U) ($h@@33 T@U) ) (!  (=> (and ($IsGoodHeap $h@@33) (and (DafnyAST.Stmt.Seq_q d@@83) ($IsAlloc DatatypeTypeType d@@83 Tclass.DafnyAST.Stmt $h@@33))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s2 d@@83) Tclass.DafnyAST.Stmt $h@@33))
 :qid |unknown.0:0|
 :skolemid |9527|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s2 d@@83) Tclass.DafnyAST.Stmt $h@@33))
)))
(assert (forall (($ly@@26 T@U) (|s#0@@12| T@U) (|ctx#0@@6| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt_k#canCall| |s#0@@12| |ctx#0@@6|) (and ($Is DatatypeTypeType |s#0@@12| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@6| (TMap (TSeq TChar) TInt)))) ($Is DatatypeTypeType (DafnyAST.__default.interpStmt_k $ly@@26 |s#0@@12| |ctx#0@@6|) Tclass.DafnyAST.InterpResult))
 :qid |Compilerdfy.57:12|
 :skolemid |9438|
 :pattern ( (DafnyAST.__default.interpStmt_k $ly@@26 |s#0@@12| |ctx#0@@6|))
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
(assert (forall ((|s#0@@13| T@U) (|ctx#0@@7| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt#canCall| |s#0@@13| |ctx#0@@7|) (and ($Is DatatypeTypeType |s#0@@13| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@7| (TMap (TSeq TChar) TInt)))) ($Is SeqType (DafnyAST.__default.interpStmt |s#0@@13| |ctx#0@@7|) (TSeq TInt)))
 :qid |Compilerdfy.70:23|
 :skolemid |9442|
 :pattern ( (DafnyAST.__default.interpStmt |s#0@@13| |ctx#0@@7|))
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
(assert (forall ((|a#16#0#0@@0| T@U) ) (! (= (|#DafnyAST.Expr.Var| (Lit SeqType |a#16#0#0@@0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Var| |a#16#0#0@@0|)))
 :qid |Compilerdfy.28:11|
 :skolemid |9471|
 :pattern ( (|#DafnyAST.Expr.Var| (Lit SeqType |a#16#0#0@@0|)))
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
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |8805|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall (($ly@@27 T@U) (|e#0@@7| T@U) (|ctx#0@@8| T@U) ) (!  (=> (or (|DafnyAST.__default.interpExpr#canCall| |e#0@@7| |ctx#0@@8|) (and ($Is DatatypeTypeType |e#0@@7| Tclass.DafnyAST.Expr) ($Is MapType |ctx#0@@8| (TMap (TSeq TChar) TInt)))) (and (=> (not (DafnyAST.Expr.Const_q |e#0@@7|)) (=> (not (DafnyAST.Expr.Var_q |e#0@@7|)) (and (=> (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@7|)) (let ((|e2#34| (DafnyAST.Expr.e2 |e#0@@7|)))
(let ((|e1#34| (DafnyAST.Expr.e1 |e#0@@7|)))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#34| |ctx#0@@8|) (|DafnyAST.__default.interpExpr#canCall| |e2#34| |ctx#0@@8|))))) (=> (not (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@7|))) (let ((|e2#35| (DafnyAST.Expr.e2 |e#0@@7|)))
(let ((|e1#35| (DafnyAST.Expr.e1 |e#0@@7|)))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#35| |ctx#0@@8|) (|DafnyAST.__default.interpExpr#canCall| |e2#35| |ctx#0@@8|)))))))) (= (DafnyAST.__default.interpExpr ($LS $ly@@27) |e#0@@7| |ctx#0@@8|) (ite (DafnyAST.Expr.Const_q |e#0@@7|) (let ((|n#16| (DafnyAST.Expr.n |e#0@@7|)))
|n#16|) (ite (DafnyAST.Expr.Var_q |e#0@@7|) (let ((|v#16@@0| (DafnyAST.Expr.v |e#0@@7|)))
(ite (|Set#IsMember| (|Map#Domain| |ctx#0@@8|) ($Box SeqType |v#16@@0|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@8|) ($Box SeqType |v#16@@0|)))) 0)) (ite (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@7|)) (let ((|e2#32| (DafnyAST.Expr.e2 |e#0@@7|)))
(let ((|e1#32| (DafnyAST.Expr.e1 |e#0@@7|)))
(+ (DafnyAST.__default.interpExpr $ly@@27 |e1#32| |ctx#0@@8|) (DafnyAST.__default.interpExpr $ly@@27 |e2#32| |ctx#0@@8|)))) (let ((|e2#33| (DafnyAST.Expr.e2 |e#0@@7|)))
(let ((|e1#33| (DafnyAST.Expr.e1 |e#0@@7|)))
(- (DafnyAST.__default.interpExpr $ly@@27 |e1#33| |ctx#0@@8|) (DafnyAST.__default.interpExpr $ly@@27 |e2#33| |ctx#0@@8|))))))))))
 :qid |Compilerdfy.44:12|
 :skolemid |9433|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@27) |e#0@@7| |ctx#0@@8|))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |9011|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall (($ly@@28 T@U) (|e#0@@8| T@U) ) (!  (=> (or (|Compiler.__default.compileExpr#canCall| |e#0@@8|) ($Is DatatypeTypeType |e#0@@8| Tclass.DafnyAST.Expr)) (and (=> (not (DafnyAST.Expr.Const_q |e#0@@8|)) (=> (not (DafnyAST.Expr.Var_q |e#0@@8|)) (and (=> (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@8|)) (let ((|e2#10| (DafnyAST.Expr.e2 |e#0@@8|)))
(let ((|e1#10| (DafnyAST.Expr.e1 |e#0@@8|)))
 (and (and (|Compiler.__default.compileExpr#canCall| |e2#10|) (|Compiler.__default.compileExpr#canCall| |e1#10|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileExpr $ly@@28 |e2#10|) (Compiler.__default.compileExpr $ly@@28 |e1#10|)))))) (=> (not (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@8|))) (let ((|e2#11| (DafnyAST.Expr.e2 |e#0@@8|)))
(let ((|e1#11| (DafnyAST.Expr.e1 |e#0@@8|)))
 (and (and (|Compiler.__default.compileExpr#canCall| |e2#11|) (|Compiler.__default.compileExpr#canCall| |e1#11|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileExpr $ly@@28 |e2#11|) (Compiler.__default.compileExpr $ly@@28 |e1#11|))))))))) (= (Compiler.__default.compileExpr ($LS $ly@@28) |e#0@@8|) (ite (DafnyAST.Expr.Const_q |e#0@@8|) (let ((|n#4| (DafnyAST.Expr.n |e#0@@8|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (|#StackMachine.Instr.PushConst| |n#4|)) (Lit DatatypeTypeType |#LinkedList.List.Nil|))) (ite (DafnyAST.Expr.Var_q |e#0@@8|) (let ((|v#4@@1| (DafnyAST.Expr.v |e#0@@8|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (|#StackMachine.Instr.PushVar| |v#4@@1|)) (Lit DatatypeTypeType |#LinkedList.List.Nil|))) (ite (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@8|)) (let ((|e2#8| (DafnyAST.Expr.e2 |e#0@@8|)))
(let ((|e1#8| (DafnyAST.Expr.e1 |e#0@@8|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopAdd|)) (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Compiler.__default.compileExpr $ly@@28 |e2#8|) (Compiler.__default.compileExpr $ly@@28 |e1#8|))))) (let ((|e2#9| (DafnyAST.Expr.e2 |e#0@@8|)))
(let ((|e1#9| (DafnyAST.Expr.e1 |e#0@@8|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopSub|)) (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Compiler.__default.compileExpr $ly@@28 |e2#9|) (Compiler.__default.compileExpr $ly@@28 |e1#9|)))))))))))
 :qid |Compilerdfy.253:12|
 :skolemid |9689|
 :pattern ( (Compiler.__default.compileExpr ($LS $ly@@28) |e#0@@8|))
)))
(assert (forall ((|p#0@@4| T@U) (|input#0@@1| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg#canCall| |p#0@@4| |input#0@@1|) (and ($Is DatatypeTypeType |p#0@@4| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is MapType |input#0@@1| (TMap (TSeq TChar) TInt)))) ($Is SeqType (StackMachine.__default.interpProg |p#0@@4| |input#0@@1|) (TSeq TInt)))
 :qid |Compilerdfy.242:23|
 :skolemid |9615|
 :pattern ( (StackMachine.__default.interpProg |p#0@@4| |input#0@@1|))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|DafnyAST.InterpResult#Equal| a@@1 b@@1)  (and (|Map#Equal| (DafnyAST.InterpResult.ctx a@@1) (DafnyAST.InterpResult.ctx b@@1)) (|Seq#Equal| (DafnyAST.InterpResult.output a@@1) (DafnyAST.InterpResult.output b@@1))))
 :qid |unknown.0:0|
 :skolemid |9558|
 :pattern ( (|DafnyAST.InterpResult#Equal| a@@1 b@@1))
)))
(assert (forall (($ly@@29 T@U) (|p#0@@5| T@U) (|st#0@@5| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg_k#canCall| |p#0@@5| |st#0@@5|) (and ($Is DatatypeTypeType |p#0@@5| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |st#0@@5| Tclass.StackMachine.State))) ($Is DatatypeTypeType (StackMachine.__default.interpProg_k $ly@@29 |p#0@@5| |st#0@@5|) Tclass.StackMachine.State))
 :qid |Compilerdfy.233:12|
 :skolemid |9610|
 :pattern ( (StackMachine.__default.interpProg_k $ly@@29 |p#0@@5| |st#0@@5|))
)))
(assert (forall ((d@@84 T@U) ) (!  (=> ($Is DatatypeTypeType d@@84 Tclass.DafnyAST.Stmt) (or (or (or (DafnyAST.Stmt.Skip_q d@@84) (DafnyAST.Stmt.Print_q d@@84)) (DafnyAST.Stmt.Assign_q d@@84)) (DafnyAST.Stmt.Seq_q d@@84)))
 :qid |unknown.0:0|
 :skolemid |9535|
 :pattern ( (DafnyAST.Stmt.Seq_q d@@84) ($Is DatatypeTypeType d@@84 Tclass.DafnyAST.Stmt))
 :pattern ( (DafnyAST.Stmt.Assign_q d@@84) ($Is DatatypeTypeType d@@84 Tclass.DafnyAST.Stmt))
 :pattern ( (DafnyAST.Stmt.Print_q d@@84) ($Is DatatypeTypeType d@@84 Tclass.DafnyAST.Stmt))
 :pattern ( (DafnyAST.Stmt.Skip_q d@@84) ($Is DatatypeTypeType d@@84 Tclass.DafnyAST.Stmt))
)))
(assert (forall ((h@@3 T@U) (v@@11 T@U) ) (! ($IsAlloc intType v@@11 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |8850|
 :pattern ( ($IsAlloc intType v@@11 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@12 T@U) ) (! ($IsAlloc charType v@@12 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |8853|
 :pattern ( ($IsAlloc charType v@@12 TChar h@@4))
)))
(assert (forall ((LinkedList.List$T@@8 T@U) (|a#2#0#0@@3| T@U) (|a#2#1#0@@2| T@U) ($h@@34 T@U) ) (!  (=> ($IsGoodHeap $h@@34) (= ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@3| |a#2#1#0@@2|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@34)  (and ($IsAllocBox |a#2#0#0@@3| LinkedList.List$T@@8 $h@@34) ($IsAlloc DatatypeTypeType |a#2#1#0@@2| (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@34))))
 :qid |unknown.0:0|
 :skolemid |9586|
 :pattern ( ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@3| |a#2#1#0@@2|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@34))
)))
(assert (forall ((v@@13 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@13 (TSeq t0@@6)) (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length| v@@13))) ($IsBox (|Seq#Index| v@@13 i@@7) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |8842|
 :pattern ( (|Seq#Index| v@@13 i@@7))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |8843|
 :pattern ( ($Is SeqType v@@13 (TSeq t0@@6)))
)))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@0 T@U) (v@@14 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@14)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |9066|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |9067|
 :pattern ( (|Map#Items| m@@11))
)))
(assert (forall (($ly@@30 T@U) (|e#0@@9| T@U) ) (!  (=> (or (|Compiler.__default.compileExpr#canCall| (Lit DatatypeTypeType |e#0@@9|)) ($Is DatatypeTypeType |e#0@@9| Tclass.DafnyAST.Expr)) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@9|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@9|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@9|))))))) (let ((|e2#14| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|e1#14| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@9|)))))
 (and (and (|Compiler.__default.compileExpr#canCall| |e2#14|) (|Compiler.__default.compileExpr#canCall| |e1#14|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileExpr ($LS $ly@@30) |e2#14|) (Compiler.__default.compileExpr ($LS $ly@@30) |e1#14|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@9|)))))))) (let ((|e2#15| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|e1#15| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@9|)))))
 (and (and (|Compiler.__default.compileExpr#canCall| |e2#15|) (|Compiler.__default.compileExpr#canCall| |e1#15|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileExpr ($LS $ly@@30) |e2#15|) (Compiler.__default.compileExpr ($LS $ly@@30) |e1#15|))))))))) (= (Compiler.__default.compileExpr ($LS $ly@@30) (Lit DatatypeTypeType |e#0@@9|)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@9|)) (let ((|n#6| (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType |e#0@@9|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#StackMachine.Instr.PushConst| |n#6|))) (Lit DatatypeTypeType |#LinkedList.List.Nil|)))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@9|)) (let ((|v#6@@1| (Lit SeqType (DafnyAST.Expr.v (Lit DatatypeTypeType |e#0@@9|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#StackMachine.Instr.PushVar| |v#6@@1|))) (Lit DatatypeTypeType |#LinkedList.List.Nil|)))) (ite (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@9|)))) (let ((|e2#12| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|e1#12| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@9|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopAdd|)) (Lit DatatypeTypeType (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $ly@@30) |e2#12|)) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $ly@@30) |e1#12|)))))))) (let ((|e2#13| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@9|)))))
(let ((|e1#13| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@9|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopSub|)) (Lit DatatypeTypeType (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $ly@@30) |e2#13|)) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $ly@@30) |e1#13|))))))))))))))
 :qid |Compilerdfy.253:12|
 :weight 3
 :skolemid |9690|
 :pattern ( (Compiler.__default.compileExpr ($LS $ly@@30) (Lit DatatypeTypeType |e#0@@9|)))
)))
(assert (forall ((s@@6 T@U) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| s@@6))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@8))) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |9056|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@8))))
)))
(assert (forall ((v@@15 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@15 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@15) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@15) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@15) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |8846|
 :pattern ( ($Is MapType v@@15 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@16 T@U) ) (! ($Is intType v@@16 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |8829|
 :pattern ( ($Is intType v@@16 TInt))
)))
(assert (forall ((v@@17 T@U) ) (! ($Is charType v@@17 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |8832|
 :pattern ( ($Is charType v@@17 TChar))
)))
(assert (forall ((|a#42#0#0@@0| T@U) (|a#42#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Stmt.Assign| |a#42#0#0@@0| |a#42#1#0@@0|) Tclass.DafnyAST.Stmt)  (and ($Is SeqType |a#42#0#0@@0| (TSeq TChar)) ($Is DatatypeTypeType |a#42#1#0@@0| Tclass.DafnyAST.Expr)))
 :qid |Compilerdfy.37:14|
 :skolemid |9512|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Stmt.Assign| |a#42#0#0@@0| |a#42#1#0@@0|) Tclass.DafnyAST.Stmt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |dAST#0| () T@U)
(declare-fun |##ctx#1@0| () T@U)
(declare-fun |optimized#0@0| () T@U)
(declare-fun |##ctx#2@0| () T@U)
(declare-fun |dSM#0@0| () T@U)
(declare-fun |##input#1@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |dSM#0| () T@U)
(declare-fun |optimized#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Interop.DafnyCompiler.Compile)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) ($IsAlloc DatatypeTypeType |dAST#0| Tclass.DafnyAST.Stmt $Heap@@0)) (=> (and (and (= |##ctx#1@0| (Lit MapType |Map#Empty|)) ($IsAlloc MapType |##ctx#1@0| (TMap (TSeq TChar) TInt) $Heap@@0)) (and (|DafnyAST.__default.interpStmt#canCall| |dAST#0| (Lit MapType |Map#Empty|)) (|DafnyAST.__default.interpStmt#canCall| |dAST#0| (Lit MapType |Map#Empty|)))) (=> (and (and (and ($IsAlloc DatatypeTypeType |dAST#0| Tclass.DafnyAST.Stmt $Heap@@0) (|Rewriter.__default.simplifyStmt#canCall| |dAST#0|)) (and (|Rewriter.__default.simplifyStmt#canCall| |dAST#0|) (= |optimized#0@0| (Rewriter.__default.simplifyStmt ($LS $LZ) |dAST#0|)))) (and (and ($IsAlloc DatatypeTypeType |optimized#0@0| Tclass.DafnyAST.Stmt $Heap@@0) (= |##ctx#2@0| (Lit MapType |Map#Empty|))) (and ($IsAlloc MapType |##ctx#2@0| (TMap (TSeq TChar) TInt) $Heap@@0) (|DafnyAST.__default.interpStmt#canCall| |optimized#0@0| (Lit MapType |Map#Empty|))))) (=> (and (and (and (and (|DafnyAST.__default.interpStmt#canCall| |optimized#0@0| (Lit MapType |Map#Empty|)) ($IsAlloc DatatypeTypeType |optimized#0@0| Tclass.DafnyAST.Stmt $Heap@@0)) (and (|Compiler.__default.compileStmt#canCall| |optimized#0@0|) (|Compiler.__default.compileStmt#canCall| |optimized#0@0|))) (and (and (= |dSM#0@0| (Compiler.__default.compileStmt ($LS $LZ) |optimized#0@0|)) ($IsAlloc DatatypeTypeType |dSM#0@0| (Tclass.LinkedList.List Tclass.StackMachine.Instr) $Heap@@0)) (and (= |##input#1@0| (Lit MapType |Map#Empty|)) ($IsAlloc MapType |##input#1@0| (TMap (TSeq TChar) TInt) $Heap@@0)))) (and (and (and (|StackMachine.__default.interpProg#canCall| |dSM#0@0| (Lit MapType |Map#Empty|)) (|StackMachine.__default.interpProg#canCall| |dSM#0@0| (Lit MapType |Map#Empty|))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (forall ((|input#1| T@U) ) (!  (=> ($Is MapType |input#1| (TMap (TSeq TChar) TInt)) (and (and (and (and (|Compiler.__default.compileStmt#canCall| |optimized#0@0|) (let ((|dt_update_tmp#0#1| StackMachine.__default.EmptyState))
 (and (StackMachine.State.State_q |dt_update_tmp#0#1|) (StackMachine.State.State_q |dt_update_tmp#0#1|)))) (|StackMachine.__default.interpProg_k#canCall| (Compiler.__default.compileStmt ($LS $LZ) |optimized#0@0|) (let ((|dt_update_tmp#0#1@@0| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#1| |input#1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#1@@0|) |dt_update#regs#0#1| (StackMachine.State.output |dt_update_tmp#0#1@@0|)))))) (StackMachine.State.State_q (StackMachine.__default.interpProg_k ($LS $LZ) (Compiler.__default.compileStmt ($LS $LZ) |optimized#0@0|) (let ((|dt_update_tmp#0#1@@1| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#1@@0| |input#1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#1@@1|) |dt_update#regs#0#1@@0| (StackMachine.State.output |dt_update_tmp#0#1@@1|))))))) (and (|DafnyAST.__default.interpStmt_k#canCall| |optimized#0@0| |input#1|) (DafnyAST.InterpResult.InterpResult_q (DafnyAST.__default.interpStmt_k ($LS $LZ) |optimized#0@0| |input#1|)))))
 :qid |Compilerdfy.327:20|
 :skolemid |9697|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $LZ) |optimized#0@0| |input#1|))
 :pattern ( (StackMachine.__default.interpProg_k ($LS $LZ) (Compiler.__default.compileStmt ($LS $LZ) |optimized#0@0|) (let ((|dt_update_tmp#0#1@@2| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#1@@1| |input#1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#1@@2|) |dt_update#regs#0#1@@1| (StackMachine.State.output |dt_update_tmp#0#1@@2|))))))
 :pattern ( (|#StackMachine.State.State| (StackMachine.State.stack StackMachine.__default.EmptyState) |input#1| (StackMachine.State.output StackMachine.__default.EmptyState)))
)) (forall ((|input#1@@0| T@U) ) (!  (=> ($Is MapType |input#1@@0| (TMap (TSeq TChar) TInt)) (|Seq#Equal| (StackMachine.State.output (StackMachine.__default.interpProg_k ($LS $LZ) (Compiler.__default.compileStmt ($LS $LZ) |optimized#0@0|) (let ((|dt_update_tmp#0#1@@3| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#1@@2| |input#1@@0|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#1@@3|) |dt_update#regs#0#1@@2| (StackMachine.State.output |dt_update_tmp#0#1@@3|)))))) (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k ($LS $LZ) |optimized#0@0| |input#1@@0|))))
 :qid |Compilerdfy.327:20|
 :skolemid |9699|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $LZ) |optimized#0@0| |input#1@@0|))
 :pattern ( (StackMachine.__default.interpProg_k ($LS $LZ) (Compiler.__default.compileStmt ($LS $LZ) |optimized#0@0|) (let ((|dt_update_tmp#0#1@@4| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#1@@3| |input#1@@0|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#1@@4|) |dt_update#regs#0#1@@3| (StackMachine.State.output |dt_update_tmp#0#1@@4|))))))
 :pattern ( (|#StackMachine.State.State| (StackMachine.State.stack StackMachine.__default.EmptyState) |input#1@@0| (StackMachine.State.output StackMachine.__default.EmptyState)))
))) (and (= $Heap@@0 $Heap@0) (= (ControlFlow 0 2) (- 0 1)))))) (forall ((|input#1@@1| T@U) ) (!  (=> ($Is MapType |input#1@@1| (TMap (TSeq TChar) TInt)) (|Seq#Equal| (DafnyAST.__default.interpStmt |dAST#0| |input#1@@1|) (StackMachine.__default.interpProg |dSM#0@0| |input#1@@1|)))
 :qid |Compilerdfy.601:22|
 :skolemid |9412|
 :pattern ( (StackMachine.__default.interpProg |dSM#0@0| |input#1@@1|))
 :pattern ( (DafnyAST.__default.interpStmt |dAST#0| |input#1@@1|))
))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (and ($Is DatatypeTypeType |dAST#0| Tclass.DafnyAST.Stmt) ($IsAlloc DatatypeTypeType |dAST#0| Tclass.DafnyAST.Stmt $Heap@@0)) (|$IsA#DafnyAST.Stmt| |dAST#0|)) (and ($Is DatatypeTypeType |dSM#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType |dSM#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr) $Heap@@0))) (and (and (and ($Is DatatypeTypeType |optimized#0| Tclass.DafnyAST.Stmt) ($IsAlloc DatatypeTypeType |optimized#0| Tclass.DafnyAST.Stmt $Heap@@0)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 3) 2)))) anon0_correct))))
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
