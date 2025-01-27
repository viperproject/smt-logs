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
(declare-fun Tagclass.DafnyAST.Expr () T@U)
(declare-fun Tagclass.StackMachine.Instr () T@U)
(declare-fun Tagclass.LinkedList.List () T@U)
(declare-fun Tagclass.DafnyAST.BinOp () T@U)
(declare-fun Tagclass.DafnyAST.Stmt () T@U)
(declare-fun Tagclass.StackMachine.State () T@U)
(declare-fun Tagclass.DafnyAST.InterpResult () T@U)
(declare-fun |##DafnyAST.BinOp.Add| () T@U)
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
(declare-fun |##StackMachine.Instr.PushConst| () T@U)
(declare-fun |##StackMachine.Instr.PushVar| () T@U)
(declare-fun |##StackMachine.Instr.PopAdd| () T@U)
(declare-fun |##StackMachine.Instr.PopSub| () T@U)
(declare-fun |##StackMachine.Instr.PopPrint| () T@U)
(declare-fun |##StackMachine.Instr.PopVar| () T@U)
(declare-fun |##StackMachine.State.State| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$Instr () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$BinOp () T@U)
(declare-fun tytagFamily$Stmt () T@U)
(declare-fun tytagFamily$State () T@U)
(declare-fun tytagFamily$InterpResult () T@U)
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
(declare-fun |#DafnyAST.Stmt.Assign| (T@U T@U) T@U)
(declare-fun |#DafnyAST.InterpResult.InterpResult| (T@U T@U) T@U)
(declare-fun |#DafnyAST.Expr.Op| (T@U T@U T@U) T@U)
(declare-fun Tclass.DafnyAST.Expr () T@U)
(declare-fun Tclass.DafnyAST.BinOp () T@U)
(declare-fun |$IsA#StackMachine.State| (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Compiler.__default.compileStmt (T@U T@U) T@U)
(declare-fun |Compiler.__default.compileStmt#canCall| (T@U) Bool)
(declare-fun DafnyAST.Stmt.Skip_q (T@U) Bool)
(declare-fun DafnyAST.Stmt.Print_q (T@U) Bool)
(declare-fun DafnyAST.Stmt.e (T@U) T@U)
(declare-fun |Compiler.__default.compileExpr#canCall| (T@U) Bool)
(declare-fun DafnyAST.Stmt.Assign_q (T@U) Bool)
(declare-fun DafnyAST.Stmt.s2 (T@U) T@U)
(declare-fun DafnyAST.Stmt.s1 (T@U) T@U)
(declare-fun |#LinkedList.List.Nil| () T@U)
(declare-fun |#StackMachine.Instr.PopPrint| () T@U)
(declare-fun Compiler.__default.compileExpr (T@U T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun DafnyAST.Stmt.v (T@U) T@U)
(declare-fun |#StackMachine.Instr.PopVar| (T@U) T@U)
(declare-fun |#DafnyAST.Expr.Var| (T@U) T@U)
(declare-fun |#StackMachine.Instr.PushVar| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun DafnyAST.Expr.op (T@U) T@U)
(declare-fun DafnyAST.Expr.e1 (T@U) T@U)
(declare-fun DafnyAST.Expr.e2 (T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |#DafnyAST.BinOp.Add| () T@U)
(declare-fun |#DafnyAST.BinOp.Sub| () T@U)
(declare-fun |#DafnyAST.Stmt.Skip| () T@U)
(declare-fun |#StackMachine.Instr.PopAdd| () T@U)
(declare-fun |#StackMachine.Instr.PopSub| () T@U)
(declare-fun DafnyAST.InterpResult.InterpResult_q (T@U) Bool)
(declare-fun Tclass.DafnyAST.InterpResult () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun StackMachine.__default.EmptyState () T@U)
(declare-fun DafnyAST.__default.interpStmt_k (T@U T@U T@U) T@U)
(declare-fun |DafnyAST.__default.interpStmt_k#canCall| (T@U T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |DafnyAST.__default.interpExpr#canCall| (T@U T@U) Bool)
(declare-fun DafnyAST.InterpResult.ctx (T@U) T@U)
(declare-fun DafnyAST.__default.interpExpr (T@U T@U T@U) Int)
(declare-fun DafnyAST.InterpResult.output (T@U) T@U)
(declare-fun |LinkedList.List#Equal| (T@U T@U) Bool)
(declare-fun |StackMachine.State#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
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
(declare-fun |#DafnyAST.Expr.Const| (Int) T@U)
(declare-fun |#DafnyAST.Stmt.Print| (T@U) T@U)
(declare-fun |#StackMachine.Instr.PushConst| (Int) T@U)
(declare-fun StackMachine.__default.interpProg_k (T@U T@U T@U) T@U)
(declare-fun |StackMachine.__default.interpProg_k#canCall| (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |Map#Empty| () T@U)
(declare-fun DafnyAST.Expr.n (T@U) Int)
(declare-fun DafnyAST.Expr.v (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.LinkedList.List_0 (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.DafnyAST.Expr Tagclass.StackMachine.Instr Tagclass.LinkedList.List Tagclass.DafnyAST.BinOp Tagclass.DafnyAST.Stmt Tagclass.StackMachine.State Tagclass.DafnyAST.InterpResult |##DafnyAST.BinOp.Add| |##DafnyAST.BinOp.Sub| |##DafnyAST.Expr.Const| |##DafnyAST.Expr.Var| |##DafnyAST.Expr.Op| |##DafnyAST.Stmt.Skip| |##DafnyAST.Stmt.Print| |##DafnyAST.Stmt.Assign| |##DafnyAST.Stmt.Seq| |##DafnyAST.InterpResult.InterpResult| |##LinkedList.List.Cons| |##LinkedList.List.Nil| |##StackMachine.Instr.PushConst| |##StackMachine.Instr.PushVar| |##StackMachine.Instr.PopAdd| |##StackMachine.Instr.PopSub| |##StackMachine.Instr.PopPrint| |##StackMachine.Instr.PopVar| |##StackMachine.State.State| |tytagFamily$_tuple#2| tytagFamily$Expr tytagFamily$Instr tytagFamily$List tytagFamily$BinOp tytagFamily$Stmt tytagFamily$State tytagFamily$InterpResult)
)
(assert  (and (and (and (and (and (and (= (Ctor DatatypeTypeType) 3) (= (Ctor SeqType) 4)) (= (Ctor SetType) 5)) (= (Ctor MapType) 6)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)))
(assert (forall ((|instr#0| T@U) (|st#0| T@U) ) (!  (=> (or (|StackMachine.__default.interpInstr#canCall| (Lit DatatypeTypeType |instr#0|) (Lit DatatypeTypeType |st#0|)) (and ($Is DatatypeTypeType |instr#0| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0| Tclass.StackMachine.State))) (and (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushConst_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (let ((|dt_update_tmp#0#7| (Lit DatatypeTypeType |st#0|)))
 (and (StackMachine.State.State_q |dt_update_tmp#0#7|) (StackMachine.State.State_q |dt_update_tmp#0#7|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushConst_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushVar_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (let ((|v#14| (Lit SeqType (StackMachine.Instr.v (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))
 (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (=> (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType (StackMachine.State.regs (Lit DatatypeTypeType |st#0|))))) ($Box SeqType |v#14|)) (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)))) (let ((|dt_update_tmp#1#7| (Lit DatatypeTypeType |st#0|)))
 (and (StackMachine.State.State_q |dt_update_tmp#1#7|) (StackMachine.State.State_q |dt_update_tmp#1#7|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushVar_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopAdd_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (let ((|dt_update_tmp#2#7| (Lit DatatypeTypeType |st#0|)))
 (and (StackMachine.State.State_q |dt_update_tmp#2#7|) (StackMachine.State.State_q |dt_update_tmp#2#7|)))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopAdd_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopSub_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (let ((|dt_update_tmp#3#7| (Lit DatatypeTypeType |st#0|)))
 (and (StackMachine.State.State_q |dt_update_tmp#3#7|) (StackMachine.State.State_q |dt_update_tmp#3#7|)))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopSub_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopPrint_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (let ((|dt_update_tmp#4#7| (Lit DatatypeTypeType |st#0|)))
 (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (StackMachine.State.State_q |dt_update_tmp#4#7|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopPrint_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))) (let ((|dt_update_tmp#5#7| (Lit DatatypeTypeType |st#0|)))
 (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (StackMachine.State.State_q |dt_update_tmp#5#7|)))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))) (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))))))) (= (StackMachine.__default.interpInstr (Lit DatatypeTypeType |instr#0|) (Lit DatatypeTypeType |st#0|)) (ite (StackMachine.Instr.PushConst_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (let ((|tl#36| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))
(let ((|n#18| (LitInt (StackMachine.Instr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))
(let ((|dt_update_tmp#0#6| (Lit DatatypeTypeType |st#0|)))
(let ((|dt_update#stack#0#6| (Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box intType (int_2_U |n#18|)) |tl#36|))))
(Lit DatatypeTypeType (|#StackMachine.State.State| |dt_update#stack#0#6| (Lit MapType (StackMachine.State.regs |dt_update_tmp#0#6|)) (Lit SeqType (StackMachine.State.output |dt_update_tmp#0#6|)))))))) (ite (StackMachine.Instr.PushVar_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (let ((|tl#37| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))
(let ((|v#12| (Lit SeqType (StackMachine.Instr.v (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))
(let ((|val#6| (ite (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType (StackMachine.State.regs (Lit DatatypeTypeType |st#0|))))) ($Box SeqType |v#12|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (StackMachine.State.regs (Lit DatatypeTypeType |st#0|)))) ($Box SeqType |v#12|)))) 0)))
(let ((|dt_update_tmp#1#6| (Lit DatatypeTypeType |st#0|)))
(let ((|dt_update#stack#1#6| (|#LinkedList.List.Cons| ($Box intType (int_2_U |val#6|)) |tl#37|)))
(|#StackMachine.State.State| |dt_update#stack#1#6| (Lit MapType (StackMachine.State.regs |dt_update_tmp#1#6|)) (Lit SeqType (StackMachine.State.output |dt_update_tmp#1#6|)))))))) (ite (StackMachine.Instr.PopAdd_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))) (let ((|tl#38| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))
(let ((|n1#12| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))))
(let ((|n2#12| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))
(let ((|dt_update_tmp#2#6| (Lit DatatypeTypeType |st#0|)))
(let ((|dt_update#stack#2#6| (Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box intType (int_2_U (LitInt (+ |n1#12| |n2#12|)))) |tl#38|))))
(Lit DatatypeTypeType (|#StackMachine.State.State| |dt_update#stack#2#6| (Lit MapType (StackMachine.State.regs |dt_update_tmp#2#6|)) (Lit SeqType (StackMachine.State.output |dt_update_tmp#2#6|))))))))) |st#0|) |st#0|) (ite (StackMachine.Instr.PopSub_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))) (let ((|tl#39| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))
(let ((|n1#13| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))))
(let ((|n2#13| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))
(let ((|dt_update_tmp#3#6| (Lit DatatypeTypeType |st#0|)))
(let ((|dt_update#stack#3#6| (Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box intType (int_2_U (LitInt (- |n1#13| |n2#13|)))) |tl#39|))))
(Lit DatatypeTypeType (|#StackMachine.State.State| |dt_update#stack#3#6| (Lit MapType (StackMachine.State.regs |dt_update_tmp#3#6|)) (Lit SeqType (StackMachine.State.output |dt_update_tmp#3#6|))))))))) |st#0|) |st#0|) (ite (StackMachine.Instr.PopPrint_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (let ((|tl#40| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))
(let ((|n#19| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))
(let ((|dt_update_tmp#4#6| (Lit DatatypeTypeType |st#0|)))
(let ((|dt_update#output#0#6| (|Seq#Append| (StackMachine.State.output (Lit DatatypeTypeType |st#0|)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#19|))))))
(let ((|dt_update#stack#4#6| |tl#40|))
(|#StackMachine.State.State| |dt_update#stack#4#6| (Lit MapType (StackMachine.State.regs |dt_update_tmp#4#6|)) |dt_update#output#0#6|)))))) |st#0|) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))) (let ((|tl#41| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))
(let ((|n#20| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))))
(let ((|v#13| (Lit SeqType (StackMachine.Instr.v (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0|)))))))))))))
(let ((|dt_update_tmp#5#6| (Lit DatatypeTypeType |st#0|)))
(let ((|dt_update#regs#0#6| (|Map#Build| (Lit MapType (StackMachine.State.regs (Lit DatatypeTypeType |st#0|))) ($Box SeqType |v#13|) ($Box intType (int_2_U |n#20|)))))
(let ((|dt_update#stack#5#6| |tl#41|))
(|#StackMachine.State.State| |dt_update#stack#5#6| |dt_update#regs#0#6| (Lit SeqType (StackMachine.State.output |dt_update_tmp#5#6|))))))))) (Lit DatatypeTypeType |st#0|))))))))))
 :qid |Compilerdfy.210:24|
 :weight 3
 :skolemid |3720|
 :pattern ( (StackMachine.__default.interpInstr (Lit DatatypeTypeType |instr#0|) (Lit DatatypeTypeType |st#0|)))
)))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (forall ((LinkedList._default.Concat$T T@U) ($ly T@U) (|l1#0| T@U) (|l2#0| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T (Lit DatatypeTypeType |l1#0|) (Lit DatatypeTypeType |l2#0|)) (and ($Is DatatypeTypeType |l1#0| (Tclass.LinkedList.List LinkedList._default.Concat$T)) ($Is DatatypeTypeType |l2#0| (Tclass.LinkedList.List LinkedList._default.Concat$T)))) (and (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType |l1#0|))))) (let ((|t#11| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |l1#0|)))))
(|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T |t#11| (Lit DatatypeTypeType |l2#0|)))) (= (LinkedList.__default.Concat LinkedList._default.Concat$T ($LS $ly) (Lit DatatypeTypeType |l1#0|) (Lit DatatypeTypeType |l2#0|)) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType |l1#0|)) (let ((|t#10| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |l1#0|)))))
(let ((|h#10| (Lit BoxType (LinkedList.List.hd (Lit DatatypeTypeType |l1#0|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| |h#10| (Lit DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T ($LS $ly) |t#10| (Lit DatatypeTypeType |l2#0|))))))) |l2#0|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |3694|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T ($LS $ly) (Lit DatatypeTypeType |l1#0|) (Lit DatatypeTypeType |l2#0|)))
)))
(assert (forall ((|a#51#0#0| T@U) (|a#51#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Stmt.Seq| |a#51#0#0| |a#51#1#0|) Tclass.DafnyAST.Stmt)  (and ($Is DatatypeTypeType |a#51#0#0| Tclass.DafnyAST.Stmt) ($Is DatatypeTypeType |a#51#1#0| Tclass.DafnyAST.Stmt)))
 :qid |Compilerdfy.38:11|
 :skolemid |3653|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Stmt.Seq| |a#51#0#0| |a#51#1#0|) Tclass.DafnyAST.Stmt))
)))
(assert (forall ((LinkedList._default.Concat$T@@0 T@U) ($ly@@0 T@U) (|l1#0@@0| T@U) (|l2#0@@0| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@0 |l1#0@@0| |l2#0@@0|) (and ($Is DatatypeTypeType |l1#0@@0| (Tclass.LinkedList.List LinkedList._default.Concat$T@@0)) ($Is DatatypeTypeType |l2#0@@0| (Tclass.LinkedList.List LinkedList._default.Concat$T@@0)))) (and (=> (LinkedList.List.Cons_q |l1#0@@0|) (let ((|t#9| (LinkedList.List.tl |l1#0@@0|)))
(|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@0 |t#9| |l2#0@@0|))) (= (LinkedList.__default.Concat LinkedList._default.Concat$T@@0 ($LS $ly@@0) |l1#0@@0| |l2#0@@0|) (ite (LinkedList.List.Cons_q |l1#0@@0|) (let ((|t#8| (LinkedList.List.tl |l1#0@@0|)))
(let ((|h#8| (LinkedList.List.hd |l1#0@@0|)))
(|#LinkedList.List.Cons| |h#8| (LinkedList.__default.Concat LinkedList._default.Concat$T@@0 $ly@@0 |t#8| |l2#0@@0|)))) |l2#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |3693|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@0 ($LS $ly@@0) |l1#0@@0| |l2#0@@0|))
)))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#41#2#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#41#2#0| i))) (DtRank (|#StackMachine.State.State| |a#41#0#0| |a#41#1#0| |a#41#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |3791|
 :pattern ( (|Seq#Index| |a#41#2#0| i) (|#StackMachine.State.State| |a#41#0#0| |a#41#1#0| |a#41#2#0|))
)))
(assert (forall ((|a#45#0#0| T@U) (|a#45#1#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#45#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#45#0#0| i@@0))) (DtRank (|#DafnyAST.Stmt.Assign| |a#45#0#0| |a#45#1#0|))))
 :qid |Compilerdfy.37:14|
 :skolemid |3645|
 :pattern ( (|Seq#Index| |a#45#0#0| i@@0) (|#DafnyAST.Stmt.Assign| |a#45#0#0| |a#45#1#0|))
)))
(assert (forall ((|a#65#0#0| T@U) (|a#65#1#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#65#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#65#1#0| i@@1))) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#65#0#0| |a#65#1#0|))))
 :qid |Compilerdfy.55:40|
 :skolemid |3681|
 :pattern ( (|Seq#Index| |a#65#1#0| i@@1) (|#DafnyAST.InterpResult.InterpResult| |a#65#0#0| |a#65#1#0|))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) (|a#22#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Op| |a#22#0#0| |a#22#1#0| |a#22#2#0|) Tclass.DafnyAST.Expr)  (and (and ($Is DatatypeTypeType |a#22#0#0| Tclass.DafnyAST.BinOp) ($Is DatatypeTypeType |a#22#1#0| Tclass.DafnyAST.Expr)) ($Is DatatypeTypeType |a#22#2#0| Tclass.DafnyAST.Expr)))
 :qid |Compilerdfy.29:10|
 :skolemid |3607|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Op| |a#22#0#0| |a#22#1#0| |a#22#2#0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#StackMachine.State| d) (StackMachine.State.State_q d))
 :qid |unknown.0:0|
 :skolemid |3794|
 :pattern ( (|$IsA#StackMachine.State| d))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|s#0| T@U) ) (!  (=> (or (|Compiler.__default.compileStmt#canCall| (Lit DatatypeTypeType |s#0|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0| Tclass.DafnyAST.Stmt))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0|))))) (let ((|e#6| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0|)))))
(|Compiler.__default.compileExpr#canCall| |e#6|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0|))))) (let ((|e#7| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0|)))))
(|Compiler.__default.compileExpr#canCall| |e#7|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0|)))))) (let ((|s2#3| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0|)))))
(let ((|s1#3| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0|)))))
 (and (and (|Compiler.__default.compileStmt#canCall| |s2#3|) (|Compiler.__default.compileStmt#canCall| |s1#3|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileStmt ($LS $ly@@1) |s2#3|) (Compiler.__default.compileStmt ($LS $ly@@1) |s1#3|)))))))))) (= (Compiler.__default.compileStmt ($LS $ly@@1) (Lit DatatypeTypeType |s#0|)) (ite (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0|)) |#LinkedList.List.Nil| (ite (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0|)) (let ((|e#4| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopPrint|)) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $LZ) |e#4|))))) (ite (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0|)) (let ((|e#5| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0|)))))
(let ((|v#2| (Lit SeqType (DafnyAST.Stmt.v (Lit DatatypeTypeType |s#0|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#StackMachine.Instr.PopVar| |v#2|))) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $LZ) |e#5|)))))) (let ((|s2#2| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0|)))))
(let ((|s1#2| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0|)))))
(Lit DatatypeTypeType (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Lit DatatypeTypeType (Compiler.__default.compileStmt ($LS $ly@@1) |s2#2|)) (Lit DatatypeTypeType (Compiler.__default.compileStmt ($LS $ly@@1) |s1#2|))))))))))))
 :qid |Compilerdfy.262:12|
 :weight 3
 :skolemid |3521|
 :pattern ( (Compiler.__default.compileStmt ($LS $ly@@1) (Lit DatatypeTypeType |s#0|)))
))))
(assert (forall ((|a#18#0#0| T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| |a#18#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#18#0#0| i@@2))) (DtRank (|#DafnyAST.Expr.Var| |a#18#0#0|))))
 :qid |Compilerdfy.28:11|
 :skolemid |3601|
 :pattern ( (|Seq#Index| |a#18#0#0| i@@2) (|#DafnyAST.Expr.Var| |a#18#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| |a#10#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#10#0#0| i@@3))) (DtRank (|#StackMachine.Instr.PushVar| |a#10#0#0|))))
 :qid |Compilerdfy.193:15|
 :skolemid |3748|
 :pattern ( (|Seq#Index| |a#10#0#0| i@@3) (|#StackMachine.Instr.PushVar| |a#10#0#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| |a#29#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#29#0#0| i@@4))) (DtRank (|#StackMachine.Instr.PopVar| |a#29#0#0|))))
 :qid |Compilerdfy.197:14|
 :skolemid |3764|
 :pattern ( (|Seq#Index| |a#29#0#0| i@@4) (|#StackMachine.Instr.PopVar| |a#29#0#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Op| |a#20#0#0| |a#20#1#0| |a#20#2#0|)) |##DafnyAST.Expr.Op|)
 :qid |Compilerdfy.29:10|
 :skolemid |3603|
 :pattern ( (|#DafnyAST.Expr.Op| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) (|a#24#2#0| T@U) ) (! (= (DafnyAST.Expr.op (|#DafnyAST.Expr.Op| |a#24#0#0| |a#24#1#0| |a#24#2#0|)) |a#24#0#0|)
 :qid |Compilerdfy.29:10|
 :skolemid |3612|
 :pattern ( (|#DafnyAST.Expr.Op| |a#24#0#0| |a#24#1#0| |a#24#2#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) (|a#26#2#0| T@U) ) (! (= (DafnyAST.Expr.e1 (|#DafnyAST.Expr.Op| |a#26#0#0| |a#26#1#0| |a#26#2#0|)) |a#26#1#0|)
 :qid |Compilerdfy.29:10|
 :skolemid |3614|
 :pattern ( (|#DafnyAST.Expr.Op| |a#26#0#0| |a#26#1#0| |a#26#2#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) (|a#28#2#0| T@U) ) (! (= (DafnyAST.Expr.e2 (|#DafnyAST.Expr.Op| |a#28#0#0| |a#28#1#0| |a#28#2#0|)) |a#28#2#0|)
 :qid |Compilerdfy.29:10|
 :skolemid |3616|
 :pattern ( (|#DafnyAST.Expr.Op| |a#28#0#0| |a#28#1#0| |a#28#2#0|))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) (|a#31#2#0| T@U) ) (! (= (DatatypeCtorId (|#StackMachine.State.State| |a#31#0#0| |a#31#1#0| |a#31#2#0|)) |##StackMachine.State.State|)
 :qid |Compilerdfy.206:26|
 :skolemid |3776|
 :pattern ( (|#StackMachine.State.State| |a#31#0#0| |a#31#1#0| |a#31#2#0|))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) ) (! (= (StackMachine.State.stack (|#StackMachine.State.State| |a#35#0#0| |a#35#1#0| |a#35#2#0|)) |a#35#0#0|)
 :qid |Compilerdfy.206:26|
 :skolemid |3785|
 :pattern ( (|#StackMachine.State.State| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) ) (! (= (StackMachine.State.regs (|#StackMachine.State.State| |a#37#0#0| |a#37#1#0| |a#37#2#0|)) |a#37#1#0|)
 :qid |Compilerdfy.206:26|
 :skolemid |3787|
 :pattern ( (|#StackMachine.State.State| |a#37#0#0| |a#37#1#0| |a#37#2#0|))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (= (StackMachine.State.output (|#StackMachine.State.State| |a#40#0#0| |a#40#1#0| |a#40#2#0|)) |a#40#2#0|)
 :qid |Compilerdfy.206:26|
 :skolemid |3790|
 :pattern ( (|#StackMachine.State.State| |a#40#0#0| |a#40#1#0| |a#40#2#0|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@0))
 :qid |unknown.0:0|
 :skolemid |3356|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#DafnyAST.BinOp.Add|) |##DafnyAST.BinOp.Add|))
(assert (= (DatatypeCtorId |#DafnyAST.BinOp.Sub|) |##DafnyAST.BinOp.Sub|))
(assert (= (DatatypeCtorId |#DafnyAST.Stmt.Skip|) |##DafnyAST.Stmt.Skip|))
(assert (= (DatatypeCtorId |#LinkedList.List.Nil|) |##LinkedList.List.Nil|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopAdd|) |##StackMachine.Instr.PopAdd|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopSub|) |##StackMachine.Instr.PopSub|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopPrint|) |##StackMachine.Instr.PopPrint|))
(assert (forall ((LinkedList._default.Concat$T@@1 T@U) ($ly@@2 T@U) (|l1#0@@1| T@U) (|l2#0@@1| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@1 |l1#0@@1| |l2#0@@1|) (and ($Is DatatypeTypeType |l1#0@@1| (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)) ($Is DatatypeTypeType |l2#0@@1| (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)))) ($Is DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@1 $ly@@2 |l1#0@@1| |l2#0@@1|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)))
 :qid |unknown.0:0|
 :skolemid |3690|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@1 $ly@@2 |l1#0@@1| |l2#0@@1|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|Compiler.__default.compileStmt#canCall| |s#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@0| Tclass.DafnyAST.Stmt))) (and (=> (not (DafnyAST.Stmt.Skip_q |s#0@@0|)) (and (=> (DafnyAST.Stmt.Print_q |s#0@@0|) (let ((|e#2| (DafnyAST.Stmt.e |s#0@@0|)))
(|Compiler.__default.compileExpr#canCall| |e#2|))) (=> (not (DafnyAST.Stmt.Print_q |s#0@@0|)) (and (=> (DafnyAST.Stmt.Assign_q |s#0@@0|) (let ((|e#3| (DafnyAST.Stmt.e |s#0@@0|)))
(|Compiler.__default.compileExpr#canCall| |e#3|))) (=> (not (DafnyAST.Stmt.Assign_q |s#0@@0|)) (let ((|s2#1| (DafnyAST.Stmt.s2 |s#0@@0|)))
(let ((|s1#1| (DafnyAST.Stmt.s1 |s#0@@0|)))
 (and (and (|Compiler.__default.compileStmt#canCall| |s2#1|) (|Compiler.__default.compileStmt#canCall| |s1#1|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileStmt $ly@@3 |s2#1|) (Compiler.__default.compileStmt $ly@@3 |s1#1|)))))))))) (= (Compiler.__default.compileStmt ($LS $ly@@3) |s#0@@0|) (ite (DafnyAST.Stmt.Skip_q |s#0@@0|) |#LinkedList.List.Nil| (ite (DafnyAST.Stmt.Print_q |s#0@@0|) (let ((|e#0| (DafnyAST.Stmt.e |s#0@@0|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopPrint|)) (Compiler.__default.compileExpr ($LS $LZ) |e#0|))) (ite (DafnyAST.Stmt.Assign_q |s#0@@0|) (let ((|e#1| (DafnyAST.Stmt.e |s#0@@0|)))
(let ((|v#0| (DafnyAST.Stmt.v |s#0@@0|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (|#StackMachine.Instr.PopVar| |v#0|)) (Compiler.__default.compileExpr ($LS $LZ) |e#1|)))) (let ((|s2#0| (DafnyAST.Stmt.s2 |s#0@@0|)))
(let ((|s1#0| (DafnyAST.Stmt.s1 |s#0@@0|)))
(LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Compiler.__default.compileStmt $ly@@3 |s2#0|) (Compiler.__default.compileStmt $ly@@3 |s1#0|))))))))))
 :qid |Compilerdfy.262:12|
 :skolemid |3520|
 :pattern ( (Compiler.__default.compileStmt ($LS $ly@@3) |s#0@@0|))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass.DafnyAST.InterpResult) (DafnyAST.InterpResult.InterpResult_q d@@1))
 :qid |unknown.0:0|
 :skolemid |3685|
 :pattern ( (DafnyAST.InterpResult.InterpResult_q d@@1) ($Is DatatypeTypeType d@@1 Tclass.DafnyAST.InterpResult))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass.StackMachine.State) (StackMachine.State.State_q d@@2))
 :qid |unknown.0:0|
 :skolemid |3795|
 :pattern ( (StackMachine.State.State_q d@@2) ($Is DatatypeTypeType d@@2 Tclass.StackMachine.State))
)))
(assert (forall ((LinkedList.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |3711|
 :pattern ( ($IsAlloc DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T) $h))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |3344|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#DafnyAST.BinOp.Add| Tclass.DafnyAST.BinOp))
(assert ($Is DatatypeTypeType |#DafnyAST.BinOp.Sub| Tclass.DafnyAST.BinOp))
(assert ($Is DatatypeTypeType |#DafnyAST.Stmt.Skip| Tclass.DafnyAST.Stmt))
(assert ($Is DatatypeTypeType StackMachine.__default.EmptyState Tclass.StackMachine.State))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopAdd| Tclass.StackMachine.Instr))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopSub| Tclass.StackMachine.Instr))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopPrint| Tclass.StackMachine.Instr))
(assert (forall (($ly@@4 T@U) (|s#0@@1| T@U) (|ctx#0| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt_k#canCall| (Lit DatatypeTypeType |s#0@@1|) (Lit MapType |ctx#0|)) (and ($Is DatatypeTypeType |s#0@@1| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0@@1|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@1|))))) (let ((|e#22| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@1|)))))
(|DafnyAST.__default.interpExpr#canCall| |e#22| (Lit MapType |ctx#0|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@1|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@1|))))) (let ((|e#23| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@1|)))))
(|DafnyAST.__default.interpExpr#canCall| |e#23| (Lit MapType |ctx#0|)))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@1|)))))) (let ((|s2#11| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0@@1|)))))
(let ((|s1#11| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0@@1|)))))
 (and (|DafnyAST.__default.interpStmt_k#canCall| |s1#11| (Lit MapType |ctx#0|)) (let ((|ctx1#11| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k ($LS $ly@@4) |s1#11| (Lit MapType |ctx#0|)))))
(|DafnyAST.__default.interpStmt_k#canCall| |s2#11| |ctx1#11|)))))))))) (= (DafnyAST.__default.interpStmt_k ($LS $ly@@4) (Lit DatatypeTypeType |s#0@@1|) (Lit MapType |ctx#0|)) (ite (DafnyAST.Stmt.Skip_q (Lit DatatypeTypeType |s#0@@1|)) (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |ctx#0|) (Lit SeqType |Seq#Empty|)) (ite (DafnyAST.Stmt.Print_q (Lit DatatypeTypeType |s#0@@1|)) (let ((|e#20| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@1|)))))
(Lit DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |ctx#0|) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt (DafnyAST.__default.interpExpr ($LS $LZ) |e#20| (Lit MapType |ctx#0|)))))))))) (ite (DafnyAST.Stmt.Assign_q (Lit DatatypeTypeType |s#0@@1|)) (let ((|e#21| (Lit DatatypeTypeType (DafnyAST.Stmt.e (Lit DatatypeTypeType |s#0@@1|)))))
(let ((|v#10| (Lit SeqType (DafnyAST.Stmt.v (Lit DatatypeTypeType |s#0@@1|)))))
(|#DafnyAST.InterpResult.InterpResult| (|Map#Build| (Lit MapType |ctx#0|) ($Box SeqType |v#10|) ($Box intType (int_2_U (LitInt (DafnyAST.__default.interpExpr ($LS $LZ) |e#21| (Lit MapType |ctx#0|)))))) (Lit SeqType |Seq#Empty|)))) (let ((|s2#10| (Lit DatatypeTypeType (DafnyAST.Stmt.s2 (Lit DatatypeTypeType |s#0@@1|)))))
(let ((|s1#10| (Lit DatatypeTypeType (DafnyAST.Stmt.s1 (Lit DatatypeTypeType |s#0@@1|)))))
(let ((|o1#10| (DafnyAST.InterpResult.output (Lit DatatypeTypeType (DafnyAST.__default.interpStmt_k ($LS $ly@@4) |s1#10| (Lit MapType |ctx#0|))))))
(let ((|ctx1#10| (DafnyAST.InterpResult.ctx (Lit DatatypeTypeType (DafnyAST.__default.interpStmt_k ($LS $ly@@4) |s1#10| (Lit MapType |ctx#0|))))))
(let ((|o2#10| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k ($LS $ly@@4) |s2#10| |ctx1#10|))))
(let ((|ctx2#10| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k ($LS $ly@@4) |s2#10| |ctx1#10|))))
(|#DafnyAST.InterpResult.InterpResult| |ctx2#10| (|Seq#Append| |o1#10| |o2#10|))))))))))))))
 :qid |Compilerdfy.57:12|
 :weight 3
 :skolemid |3570|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $ly@@4) (Lit DatatypeTypeType |s#0@@1|) (Lit MapType |ctx#0|)))
)))
(assert (forall (($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType StackMachine.__default.EmptyState Tclass.StackMachine.State $h@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3727|
 :pattern ( ($IsAlloc DatatypeTypeType StackMachine.__default.EmptyState Tclass.StackMachine.State $h@@0))
)))
(assert (forall ((LinkedList.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |3710|
 :pattern ( ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|LinkedList.List#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |3716|
 :pattern ( (|LinkedList.List#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|StackMachine.State#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |3797|
 :pattern ( (|StackMachine.State#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (LinkedList.List.Cons_q a@@1) (LinkedList.List.Cons_q b@@1)) (= (|LinkedList.List#Equal| a@@1 b@@1)  (and (= (LinkedList.List.hd a@@1) (LinkedList.List.hd b@@1)) (|LinkedList.List#Equal| (LinkedList.List.tl a@@1) (LinkedList.List.tl b@@1)))))
 :qid |unknown.0:0|
 :skolemid |3714|
 :pattern ( (|LinkedList.List#Equal| a@@1 b@@1) (LinkedList.List.Cons_q a@@1))
 :pattern ( (|LinkedList.List#Equal| a@@1 b@@1) (LinkedList.List.Cons_q b@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2905|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2903|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |3146|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((LinkedList.List$T@@1 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@1))  (and ($IsBox |a#2#0#0@@0| LinkedList.List$T@@1) ($Is DatatypeTypeType |a#2#1#0@@0| (Tclass.LinkedList.List LinkedList.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |3699|
 :pattern ( ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@1)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@1| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@1| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |3345|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |3337|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (DafnyAST.BinOp.Add_q d@@4) (= (DatatypeCtorId d@@4) |##DafnyAST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |3575|
 :pattern ( (DafnyAST.BinOp.Add_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (DafnyAST.BinOp.Sub_q d@@5) (= (DatatypeCtorId d@@5) |##DafnyAST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |3577|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (DafnyAST.Expr.Const_q d@@6) (= (DatatypeCtorId d@@6) |##DafnyAST.Expr.Const|))
 :qid |unknown.0:0|
 :skolemid |3586|
 :pattern ( (DafnyAST.Expr.Const_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (DafnyAST.Expr.Var_q d@@7) (= (DatatypeCtorId d@@7) |##DafnyAST.Expr.Var|))
 :qid |unknown.0:0|
 :skolemid |3594|
 :pattern ( (DafnyAST.Expr.Var_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (DafnyAST.Expr.Op_q d@@8) (= (DatatypeCtorId d@@8) |##DafnyAST.Expr.Op|))
 :qid |unknown.0:0|
 :skolemid |3604|
 :pattern ( (DafnyAST.Expr.Op_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (DafnyAST.Stmt.Skip_q d@@9) (= (DatatypeCtorId d@@9) |##DafnyAST.Stmt.Skip|))
 :qid |unknown.0:0|
 :skolemid |3625|
 :pattern ( (DafnyAST.Stmt.Skip_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (DafnyAST.Stmt.Print_q d@@10) (= (DatatypeCtorId d@@10) |##DafnyAST.Stmt.Print|))
 :qid |unknown.0:0|
 :skolemid |3628|
 :pattern ( (DafnyAST.Stmt.Print_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (DafnyAST.Stmt.Assign_q d@@11) (= (DatatypeCtorId d@@11) |##DafnyAST.Stmt.Assign|))
 :qid |unknown.0:0|
 :skolemid |3637|
 :pattern ( (DafnyAST.Stmt.Assign_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (! (= (DafnyAST.Stmt.Seq_q d@@12) (= (DatatypeCtorId d@@12) |##DafnyAST.Stmt.Seq|))
 :qid |unknown.0:0|
 :skolemid |3650|
 :pattern ( (DafnyAST.Stmt.Seq_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (! (= (DafnyAST.InterpResult.InterpResult_q d@@13) (= (DatatypeCtorId d@@13) |##DafnyAST.InterpResult.InterpResult|))
 :qid |unknown.0:0|
 :skolemid |3670|
 :pattern ( (DafnyAST.InterpResult.InterpResult_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (! (= (LinkedList.List.Cons_q d@@14) (= (DatatypeCtorId d@@14) |##LinkedList.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |3696|
 :pattern ( (LinkedList.List.Cons_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (! (= (LinkedList.List.Nil_q d@@15) (= (DatatypeCtorId d@@15) |##LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |3708|
 :pattern ( (LinkedList.List.Nil_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (! (= (StackMachine.Instr.PushConst_q d@@16) (= (DatatypeCtorId d@@16) |##StackMachine.Instr.PushConst|))
 :qid |unknown.0:0|
 :skolemid |3733|
 :pattern ( (StackMachine.Instr.PushConst_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (! (= (StackMachine.Instr.PushVar_q d@@17) (= (DatatypeCtorId d@@17) |##StackMachine.Instr.PushVar|))
 :qid |unknown.0:0|
 :skolemid |3741|
 :pattern ( (StackMachine.Instr.PushVar_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (! (= (StackMachine.Instr.PopAdd_q d@@18) (= (DatatypeCtorId d@@18) |##StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |3750|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (! (= (StackMachine.Instr.PopSub_q d@@19) (= (DatatypeCtorId d@@19) |##StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |3752|
 :pattern ( (StackMachine.Instr.PopSub_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (! (= (StackMachine.Instr.PopPrint_q d@@20) (= (DatatypeCtorId d@@20) |##StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |3754|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (! (= (StackMachine.Instr.PopVar_q d@@21) (= (DatatypeCtorId d@@21) |##StackMachine.Instr.PopVar|))
 :qid |unknown.0:0|
 :skolemid |3757|
 :pattern ( (StackMachine.Instr.PopVar_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (! (= (StackMachine.State.State_q d@@22) (= (DatatypeCtorId d@@22) |##StackMachine.State.State|))
 :qid |unknown.0:0|
 :skolemid |3777|
 :pattern ( (StackMachine.State.State_q d@@22))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |3127|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |3128|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2914|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@23 T@U) ) (!  (=> (DafnyAST.Expr.Op_q d@@23) (exists ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (= d@@23 (|#DafnyAST.Expr.Op| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
 :qid |Compilerdfy.29:10|
 :skolemid |3605|
)))
 :qid |unknown.0:0|
 :skolemid |3606|
 :pattern ( (DafnyAST.Expr.Op_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (StackMachine.State.State_q d@@24) (exists ((|a#32#0#0| T@U) (|a#32#1#0| T@U) (|a#32#2#0| T@U) ) (! (= d@@24 (|#StackMachine.State.State| |a#32#0#0| |a#32#1#0| |a#32#2#0|))
 :qid |Compilerdfy.206:26|
 :skolemid |3778|
)))
 :qid |unknown.0:0|
 :skolemid |3779|
 :pattern ( (StackMachine.State.State_q d@@24))
)))
(assert (forall ((d@@25 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@25) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@25 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |3338|
)))
 :qid |unknown.0:0|
 :skolemid |3339|
 :pattern ( (_System.Tuple2.___hMake2_q d@@25))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> (DafnyAST.Stmt.Assign_q d@@26) (exists ((|a#41#0#0@@0| T@U) (|a#41#1#0@@0| T@U) ) (! (= d@@26 (|#DafnyAST.Stmt.Assign| |a#41#0#0@@0| |a#41#1#0@@0|))
 :qid |Compilerdfy.37:14|
 :skolemid |3638|
)))
 :qid |unknown.0:0|
 :skolemid |3639|
 :pattern ( (DafnyAST.Stmt.Assign_q d@@26))
)))
(assert (forall ((d@@27 T@U) ) (!  (=> (DafnyAST.Stmt.Seq_q d@@27) (exists ((|a#50#0#0| T@U) (|a#50#1#0| T@U) ) (! (= d@@27 (|#DafnyAST.Stmt.Seq| |a#50#0#0| |a#50#1#0|))
 :qid |Compilerdfy.38:11|
 :skolemid |3651|
)))
 :qid |unknown.0:0|
 :skolemid |3652|
 :pattern ( (DafnyAST.Stmt.Seq_q d@@27))
)))
(assert (forall ((d@@28 T@U) ) (!  (=> (DafnyAST.InterpResult.InterpResult_q d@@28) (exists ((|a#58#0#0| T@U) (|a#58#1#0| T@U) ) (! (= d@@28 (|#DafnyAST.InterpResult.InterpResult| |a#58#0#0| |a#58#1#0|))
 :qid |Compilerdfy.55:40|
 :skolemid |3671|
)))
 :qid |unknown.0:0|
 :skolemid |3672|
 :pattern ( (DafnyAST.InterpResult.InterpResult_q d@@28))
)))
(assert (forall ((d@@29 T@U) ) (!  (=> (LinkedList.List.Cons_q d@@29) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@29 (|#LinkedList.List.Cons| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |Compilerdfy.168:12|
 :skolemid |3697|
)))
 :qid |unknown.0:0|
 :skolemid |3698|
 :pattern ( (LinkedList.List.Cons_q d@@29))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> (DafnyAST.BinOp.Add_q d@@30) (= d@@30 |#DafnyAST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |3576|
 :pattern ( (DafnyAST.BinOp.Add_q d@@30))
)))
(assert (forall ((d@@31 T@U) ) (!  (=> (DafnyAST.BinOp.Sub_q d@@31) (= d@@31 |#DafnyAST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |3578|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@31))
)))
(assert (forall ((d@@32 T@U) ) (!  (=> (DafnyAST.Stmt.Skip_q d@@32) (= d@@32 |#DafnyAST.Stmt.Skip|))
 :qid |unknown.0:0|
 :skolemid |3626|
 :pattern ( (DafnyAST.Stmt.Skip_q d@@32))
)))
(assert (forall ((d@@33 T@U) ) (!  (=> (LinkedList.List.Nil_q d@@33) (= d@@33 |#LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |3709|
 :pattern ( (LinkedList.List.Nil_q d@@33))
)))
(assert (forall ((d@@34 T@U) ) (!  (=> (StackMachine.Instr.PopAdd_q d@@34) (= d@@34 |#StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |3751|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@34))
)))
(assert (forall ((d@@35 T@U) ) (!  (=> (StackMachine.Instr.PopSub_q d@@35) (= d@@35 |#StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |3753|
 :pattern ( (StackMachine.Instr.PopSub_q d@@35))
)))
(assert (forall ((d@@36 T@U) ) (!  (=> (StackMachine.Instr.PopPrint_q d@@36) (= d@@36 |#StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |3755|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@36))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2934|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2935|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@37 T@U) ) (!  (=> (DafnyAST.Expr.Const_q d@@37) (exists ((|a#9#0#0| Int) ) (! (= d@@37 (|#DafnyAST.Expr.Const| |a#9#0#0|))
 :qid |Compilerdfy.27:13|
 :skolemid |3587|
)))
 :qid |unknown.0:0|
 :skolemid |3588|
 :pattern ( (DafnyAST.Expr.Const_q d@@37))
)))
(assert (forall ((d@@38 T@U) ) (!  (=> (DafnyAST.Expr.Var_q d@@38) (exists ((|a#14#0#0| T@U) ) (! (= d@@38 (|#DafnyAST.Expr.Var| |a#14#0#0|))
 :qid |Compilerdfy.28:11|
 :skolemid |3595|
)))
 :qid |unknown.0:0|
 :skolemid |3596|
 :pattern ( (DafnyAST.Expr.Var_q d@@38))
)))
(assert (forall ((d@@39 T@U) ) (!  (=> (DafnyAST.Stmt.Print_q d@@39) (exists ((|a#35#0#0@@0| T@U) ) (! (= d@@39 (|#DafnyAST.Stmt.Print| |a#35#0#0@@0|))
 :qid |Compilerdfy.36:13|
 :skolemid |3629|
)))
 :qid |unknown.0:0|
 :skolemid |3630|
 :pattern ( (DafnyAST.Stmt.Print_q d@@39))
)))
(assert (forall ((d@@40 T@U) ) (!  (=> (StackMachine.Instr.PushConst_q d@@40) (exists ((|a#1#0#0@@1| Int) ) (! (= d@@40 (|#StackMachine.Instr.PushConst| |a#1#0#0@@1|))
 :qid |Compilerdfy.192:17|
 :skolemid |3734|
)))
 :qid |unknown.0:0|
 :skolemid |3735|
 :pattern ( (StackMachine.Instr.PushConst_q d@@40))
)))
(assert (forall ((d@@41 T@U) ) (!  (=> (StackMachine.Instr.PushVar_q d@@41) (exists ((|a#6#0#0| T@U) ) (! (= d@@41 (|#StackMachine.Instr.PushVar| |a#6#0#0|))
 :qid |Compilerdfy.193:15|
 :skolemid |3742|
)))
 :qid |unknown.0:0|
 :skolemid |3743|
 :pattern ( (StackMachine.Instr.PushVar_q d@@41))
)))
(assert (forall ((d@@42 T@U) ) (!  (=> (StackMachine.Instr.PopVar_q d@@42) (exists ((|a#25#0#0| T@U) ) (! (= d@@42 (|#StackMachine.Instr.PopVar| |a#25#0#0|))
 :qid |Compilerdfy.197:14|
 :skolemid |3758|
)))
 :qid |unknown.0:0|
 :skolemid |3759|
 :pattern ( (StackMachine.Instr.PopVar_q d@@42))
)))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |3112|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((|a#59#0#0| T@U) (|a#59#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| |a#59#0#0| |a#59#1#0|) Tclass.DafnyAST.InterpResult)  (and ($Is MapType |a#59#0#0| (TMap (TSeq TChar) TInt)) ($Is SeqType |a#59#1#0| (TSeq TInt))))
 :qid |Compilerdfy.55:40|
 :skolemid |3673|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| |a#59#0#0| |a#59#1#0|) Tclass.DafnyAST.InterpResult))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h) ($IsAlloc T@@1 v@@1 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2927|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h))
)))
(assert (forall (($ly@@5 T@U) (|p#0| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg_k#canCall| |p#0| |st#0@@0|) (and ($Is DatatypeTypeType |p#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |st#0@@0| Tclass.StackMachine.State))) (and (=> (LinkedList.List.Cons_q |p#0|) (let ((|p#6| (LinkedList.List.tl |p#0|)))
(let ((|instr#5| ($Unbox DatatypeTypeType (LinkedList.List.hd |p#0|))))
 (and (|StackMachine.__default.interpProg_k#canCall| |p#6| |st#0@@0|) (|StackMachine.__default.interpInstr#canCall| |instr#5| (StackMachine.__default.interpProg_k $ly@@5 |p#6| |st#0@@0|)))))) (= (StackMachine.__default.interpProg_k ($LS $ly@@5) |p#0| |st#0@@0|) (ite (LinkedList.List.Cons_q |p#0|) (let ((|p#5| (LinkedList.List.tl |p#0|)))
(let ((|instr#4| ($Unbox DatatypeTypeType (LinkedList.List.hd |p#0|))))
(StackMachine.__default.interpInstr |instr#4| (StackMachine.__default.interpProg_k $ly@@5 |p#5| |st#0@@0|)))) |st#0@@0|))))
 :qid |Compilerdfy.233:12|
 :skolemid |3725|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $ly@@5) |p#0| |st#0@@0|))
)))
(assert (forall ((|a#33#0#0| T@U) (|a#33#1#0| T@U) (|a#33#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.State.State| |a#33#0#0| |a#33#1#0| |a#33#2#0|) Tclass.StackMachine.State)  (and (and ($Is DatatypeTypeType |a#33#0#0| (Tclass.LinkedList.List TInt)) ($Is MapType |a#33#1#0| (TMap (TSeq TChar) TInt))) ($Is SeqType |a#33#2#0| (TSeq TInt))))
 :qid |Compilerdfy.206:26|
 :skolemid |3780|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.State.State| |a#33#0#0| |a#33#1#0| |a#33#2#0|) Tclass.StackMachine.State))
)))
(assert (forall ((LinkedList.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.LinkedList.List LinkedList.List$T@@2)) Tagclass.LinkedList.List) (= (TagFamily (Tclass.LinkedList.List LinkedList.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |3501|
 :pattern ( (Tclass.LinkedList.List LinkedList.List$T@@2))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) (bx@@1 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#39#1#0|) bx@@1) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#39#1#0|) bx@@1))) (DtRank (|#StackMachine.State.State| |a#39#0#0| |a#39#1#0| |a#39#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |3789|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#39#1#0|) bx@@1) (|#StackMachine.State.State| |a#39#0#0| |a#39#1#0| |a#39#2#0|))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |3114|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((|a#63#0#0| T@U) (|a#63#1#0| T@U) (bx@@2 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#63#0#0|) bx@@2) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#63#0#0|) bx@@2))) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#63#0#0| |a#63#1#0|))))
 :qid |Compilerdfy.55:40|
 :skolemid |3679|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#63#0#0|) bx@@2) (|#DafnyAST.InterpResult.InterpResult| |a#63#0#0| |a#63#1#0|))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.DafnyAST.Expr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.DafnyAST.Expr)))
 :qid |unknown.0:0|
 :skolemid |3499|
 :pattern ( ($IsBox bx@@3 Tclass.DafnyAST.Expr))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.StackMachine.Instr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.StackMachine.Instr)))
 :qid |unknown.0:0|
 :skolemid |3500|
 :pattern ( ($IsBox bx@@4 Tclass.StackMachine.Instr))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.DafnyAST.BinOp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.DafnyAST.BinOp)))
 :qid |unknown.0:0|
 :skolemid |3508|
 :pattern ( ($IsBox bx@@5 Tclass.DafnyAST.BinOp))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.DafnyAST.Stmt) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.DafnyAST.Stmt)))
 :qid |unknown.0:0|
 :skolemid |3517|
 :pattern ( ($IsBox bx@@6 Tclass.DafnyAST.Stmt))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.StackMachine.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass.StackMachine.State)))
 :qid |unknown.0:0|
 :skolemid |3527|
 :pattern ( ($IsBox bx@@7 Tclass.StackMachine.State))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.DafnyAST.InterpResult) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass.DafnyAST.InterpResult)))
 :qid |unknown.0:0|
 :skolemid |3532|
 :pattern ( ($IsBox bx@@8 Tclass.DafnyAST.InterpResult))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|StackMachine.State#Equal| a@@2 b@@2)  (and (and (|LinkedList.List#Equal| (StackMachine.State.stack a@@2) (StackMachine.State.stack b@@2)) (|Map#Equal| (StackMachine.State.regs a@@2) (StackMachine.State.regs b@@2))) (|Seq#Equal| (StackMachine.State.output a@@2) (StackMachine.State.output b@@2))))
 :qid |unknown.0:0|
 :skolemid |3796|
 :pattern ( (|StackMachine.State#Equal| a@@2 b@@2))
)))
(assert (forall ((|a#36#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Stmt.Print| |a#36#0#0|) Tclass.DafnyAST.Stmt) ($Is DatatypeTypeType |a#36#0#0| Tclass.DafnyAST.Expr))
 :qid |Compilerdfy.36:13|
 :skolemid |3631|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Stmt.Print| |a#36#0#0|) Tclass.DafnyAST.Stmt))
)))
(assert (forall ((s@@1 T@U) (i@@5 Int) (v@@2 T@U) ) (!  (and (=> (= i@@5 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@5) v@@2)) (=> (or (not (= i@@5 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@5) (|Seq#Index| s@@1 i@@5))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |3113|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@5))
)))
(assert (= StackMachine.__default.EmptyState (Lit DatatypeTypeType (|#StackMachine.State.State| (Lit DatatypeTypeType |#LinkedList.List.Nil|) (Lit MapType |Map#Empty|) (Lit SeqType |Seq#Empty|)))))
(assert (forall ((m@@1 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@1 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@1) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |3185|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@1) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |3186|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |3187|
 :pattern ( (|Map#Equal| m@@1 |m'|))
)))
(assert (forall (($ly@@6 T@U) (|e#0@@0| T@U) (|ctx#0@@0| T@U) ) (! (= (DafnyAST.__default.interpExpr ($LS $ly@@6) |e#0@@0| |ctx#0@@0|) (DafnyAST.__default.interpExpr $ly@@6 |e#0@@0| |ctx#0@@0|))
 :qid |Compilerdfy.44:12|
 :skolemid |3559|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@6) |e#0@@0| |ctx#0@@0|))
)))
(assert (forall (($ly@@7 T@U) (|s#0@@2| T@U) (|ctx#0@@1| T@U) ) (! (= (DafnyAST.__default.interpStmt_k ($LS $ly@@7) |s#0@@2| |ctx#0@@1|) (DafnyAST.__default.interpStmt_k $ly@@7 |s#0@@2| |ctx#0@@1|))
 :qid |Compilerdfy.57:12|
 :skolemid |3565|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $ly@@7) |s#0@@2| |ctx#0@@1|))
)))
(assert (forall (($ly@@8 T@U) (|p#0@@0| T@U) (|st#0@@1| T@U) ) (! (= (StackMachine.__default.interpProg_k ($LS $ly@@8) |p#0@@0| |st#0@@1|) (StackMachine.__default.interpProg_k $ly@@8 |p#0@@0| |st#0@@1|))
 :qid |Compilerdfy.233:12|
 :skolemid |3721|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $ly@@8) |p#0@@0| |st#0@@1|))
)))
(assert (forall (($ly@@9 T@U) (|e#0@@1| T@U) (|ctx#0@@2| T@U) ) (!  (=> (or (|DafnyAST.__default.interpExpr#canCall| (Lit DatatypeTypeType |e#0@@1|) (Lit MapType |ctx#0@@2|)) (and ($Is DatatypeTypeType |e#0@@1| Tclass.DafnyAST.Expr) ($Is MapType |ctx#0@@2| (TMap (TSeq TChar) TInt)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@1|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@1|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@1|))))))) (let ((|e2#22| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@1|)))))
(let ((|e1#22| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@1|)))))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#22| (Lit MapType |ctx#0@@2|)) (|DafnyAST.__default.interpExpr#canCall| |e2#22| (Lit MapType |ctx#0@@2|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@1|)))))))) (let ((|e2#23| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@1|)))))
(let ((|e1#23| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@1|)))))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#23| (Lit MapType |ctx#0@@2|)) (|DafnyAST.__default.interpExpr#canCall| |e2#23| (Lit MapType |ctx#0@@2|))))))))) (= (DafnyAST.__default.interpExpr ($LS $ly@@9) (Lit DatatypeTypeType |e#0@@1|) (Lit MapType |ctx#0@@2|)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@1|)) (let ((|n#10| (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType |e#0@@1|)))))
|n#10|) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@1|)) (let ((|v#10@@0| (Lit SeqType (DafnyAST.Expr.v (Lit DatatypeTypeType |e#0@@1|)))))
(ite (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType |ctx#0@@2|))) ($Box SeqType |v#10@@0|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |ctx#0@@2|)) ($Box SeqType |v#10@@0|)))) 0)) (ite (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@1|)))) (let ((|e2#20| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@1|)))))
(let ((|e1#20| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@1|)))))
(LitInt (+ (DafnyAST.__default.interpExpr ($LS $ly@@9) |e1#20| (Lit MapType |ctx#0@@2|)) (DafnyAST.__default.interpExpr ($LS $ly@@9) |e2#20| (Lit MapType |ctx#0@@2|)))))) (let ((|e2#21| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@1|)))))
(let ((|e1#21| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@1|)))))
(LitInt (- (DafnyAST.__default.interpExpr ($LS $ly@@9) |e1#21| (Lit MapType |ctx#0@@2|)) (DafnyAST.__default.interpExpr ($LS $ly@@9) |e2#21| (Lit MapType |ctx#0@@2|))))))))))))
 :qid |Compilerdfy.44:12|
 :weight 3
 :skolemid |3564|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@9) (Lit DatatypeTypeType |e#0@@1|) (Lit MapType |ctx#0@@2|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@10 T@U) (|e#0@@2| T@U) ) (!  (=> (or (|Compiler.__default.compileExpr#canCall| |e#0@@2|) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@2| Tclass.DafnyAST.Expr))) (and (=> (not (DafnyAST.Expr.Const_q |e#0@@2|)) (=> (not (DafnyAST.Expr.Var_q |e#0@@2|)) (and (=> (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@2|)) (let ((|e2#2| (DafnyAST.Expr.e2 |e#0@@2|)))
(let ((|e1#2| (DafnyAST.Expr.e1 |e#0@@2|)))
 (and (and (|Compiler.__default.compileExpr#canCall| |e2#2|) (|Compiler.__default.compileExpr#canCall| |e1#2|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileExpr $ly@@10 |e2#2|) (Compiler.__default.compileExpr $ly@@10 |e1#2|)))))) (=> (not (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@2|))) (let ((|e2#3| (DafnyAST.Expr.e2 |e#0@@2|)))
(let ((|e1#3| (DafnyAST.Expr.e1 |e#0@@2|)))
 (and (and (|Compiler.__default.compileExpr#canCall| |e2#3|) (|Compiler.__default.compileExpr#canCall| |e1#3|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileExpr $ly@@10 |e2#3|) (Compiler.__default.compileExpr $ly@@10 |e1#3|))))))))) (= (Compiler.__default.compileExpr ($LS $ly@@10) |e#0@@2|) (ite (DafnyAST.Expr.Const_q |e#0@@2|) (let ((|n#0| (DafnyAST.Expr.n |e#0@@2|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (|#StackMachine.Instr.PushConst| |n#0|)) (Lit DatatypeTypeType |#LinkedList.List.Nil|))) (ite (DafnyAST.Expr.Var_q |e#0@@2|) (let ((|v#0@@0| (DafnyAST.Expr.v |e#0@@2|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (|#StackMachine.Instr.PushVar| |v#0@@0|)) (Lit DatatypeTypeType |#LinkedList.List.Nil|))) (ite (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@2|)) (let ((|e2#0| (DafnyAST.Expr.e2 |e#0@@2|)))
(let ((|e1#0| (DafnyAST.Expr.e1 |e#0@@2|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopAdd|)) (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Compiler.__default.compileExpr $ly@@10 |e2#0|) (Compiler.__default.compileExpr $ly@@10 |e1#0|))))) (let ((|e2#1| (DafnyAST.Expr.e2 |e#0@@2|)))
(let ((|e1#1| (DafnyAST.Expr.e1 |e#0@@2|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopSub|)) (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Compiler.__default.compileExpr $ly@@10 |e2#1|) (Compiler.__default.compileExpr $ly@@10 |e1#1|)))))))))))
 :qid |Compilerdfy.253:12|
 :skolemid |3506|
 :pattern ( (Compiler.__default.compileExpr ($LS $ly@@10) |e#0@@2|))
))))
(assert (forall ((|instr#0@@0| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|StackMachine.__default.interpInstr#canCall| |instr#0@@0| |st#0@@2|) (and ($Is DatatypeTypeType |instr#0@@0| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0@@2| Tclass.StackMachine.State))) ($Is DatatypeTypeType (StackMachine.__default.interpInstr |instr#0@@0| |st#0@@2|) Tclass.StackMachine.State))
 :qid |Compilerdfy.210:24|
 :skolemid |3717|
 :pattern ( (StackMachine.__default.interpInstr |instr#0@@0| |st#0@@2|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@11 T@U) (|e#0@@3| T@U) ) (!  (=> (or (|Compiler.__default.compileExpr#canCall| (Lit DatatypeTypeType |e#0@@3|)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@3| Tclass.DafnyAST.Expr))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@3|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@3|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@3|))))))) (let ((|e2#6| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@3|)))))
(let ((|e1#6| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@3|)))))
 (and (and (|Compiler.__default.compileExpr#canCall| |e2#6|) (|Compiler.__default.compileExpr#canCall| |e1#6|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileExpr ($LS $ly@@11) |e2#6|) (Compiler.__default.compileExpr ($LS $ly@@11) |e1#6|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@3|)))))))) (let ((|e2#7| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@3|)))))
(let ((|e1#7| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@3|)))))
 (and (and (|Compiler.__default.compileExpr#canCall| |e2#7|) (|Compiler.__default.compileExpr#canCall| |e1#7|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileExpr ($LS $ly@@11) |e2#7|) (Compiler.__default.compileExpr ($LS $ly@@11) |e1#7|))))))))) (= (Compiler.__default.compileExpr ($LS $ly@@11) (Lit DatatypeTypeType |e#0@@3|)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@3|)) (let ((|n#2| (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType |e#0@@3|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#StackMachine.Instr.PushConst| |n#2|))) (Lit DatatypeTypeType |#LinkedList.List.Nil|)))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@3|)) (let ((|v#2@@0| (Lit SeqType (DafnyAST.Expr.v (Lit DatatypeTypeType |e#0@@3|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#StackMachine.Instr.PushVar| |v#2@@0|))) (Lit DatatypeTypeType |#LinkedList.List.Nil|)))) (ite (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@3|)))) (let ((|e2#4| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@3|)))))
(let ((|e1#4| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@3|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopAdd|)) (Lit DatatypeTypeType (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $ly@@11) |e2#4|)) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $ly@@11) |e1#4|)))))))) (let ((|e2#5| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@3|)))))
(let ((|e1#5| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@3|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopSub|)) (Lit DatatypeTypeType (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $ly@@11) |e2#5|)) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $ly@@11) |e1#5|))))))))))))))
 :qid |Compilerdfy.253:12|
 :weight 3
 :skolemid |3507|
 :pattern ( (Compiler.__default.compileExpr ($LS $ly@@11) (Lit DatatypeTypeType |e#0@@3|)))
))))
(assert (forall ((|instr#0@@1| T@U) (|st#0@@3| T@U) ) (!  (=> (or (|StackMachine.__default.interpInstr#canCall| |instr#0@@1| |st#0@@3|) (and ($Is DatatypeTypeType |instr#0@@1| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0@@3| Tclass.StackMachine.State))) (and (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (StackMachine.Instr.PushConst_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|dt_update_tmp#0#5| |st#0@@3|))
 (and (StackMachine.State.State_q |dt_update_tmp#0#5|) (StackMachine.State.State_q |dt_update_tmp#0#5|))))))) (=> (not (StackMachine.Instr.PushConst_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (StackMachine.Instr.PushVar_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|v#10@@1| (StackMachine.Instr.v ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
 (and (and (StackMachine.State.State_q |st#0@@3|) (=> (|Set#IsMember| (|Map#Domain| (StackMachine.State.regs |st#0@@3|)) ($Box SeqType |v#10@@1|)) (StackMachine.State.State_q |st#0@@3|))) (let ((|dt_update_tmp#1#5| |st#0@@3|))
 (and (StackMachine.State.State_q |dt_update_tmp#1#5|) (StackMachine.State.State_q |dt_update_tmp#1#5|))))))))) (=> (not (StackMachine.Instr.PushVar_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (StackMachine.Instr.PopAdd_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (LinkedList.List.Cons_q (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|dt_update_tmp#2#5| |st#0@@3|))
 (and (StackMachine.State.State_q |dt_update_tmp#2#5|) (StackMachine.State.State_q |dt_update_tmp#2#5|)))))))))))) (=> (not (StackMachine.Instr.PopAdd_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (StackMachine.Instr.PopSub_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (LinkedList.List.Cons_q (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|dt_update_tmp#3#5| |st#0@@3|))
 (and (StackMachine.State.State_q |dt_update_tmp#3#5|) (StackMachine.State.State_q |dt_update_tmp#3#5|)))))))))))) (=> (not (StackMachine.Instr.PopSub_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (StackMachine.Instr.PopPrint_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|dt_update_tmp#4#5| |st#0@@3|))
 (and (StackMachine.State.State_q |st#0@@3|) (StackMachine.State.State_q |dt_update_tmp#4#5|))))))))) (=> (not (StackMachine.Instr.PopPrint_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|dt_update_tmp#5#5| |st#0@@3|))
 (and (StackMachine.State.State_q |st#0@@3|) (StackMachine.State.State_q |dt_update_tmp#5#5|)))))))) (=> (not (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))))))))))) (= (StackMachine.__default.interpInstr |instr#0@@1| |st#0@@3|) (ite (StackMachine.Instr.PushConst_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (let ((|tl#24| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))))
(let ((|n#12| (StackMachine.Instr.n ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
(let ((|dt_update_tmp#0#4| |st#0@@3|))
(let ((|dt_update#stack#0#4| (|#LinkedList.List.Cons| ($Box intType (int_2_U |n#12|)) |tl#24|)))
(|#StackMachine.State.State| |dt_update#stack#0#4| (StackMachine.State.regs |dt_update_tmp#0#4|) (StackMachine.State.output |dt_update_tmp#0#4|)))))) (ite (StackMachine.Instr.PushVar_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (let ((|tl#25| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))))
(let ((|v#8| (StackMachine.Instr.v ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
(let ((|val#4| (ite (|Set#IsMember| (|Map#Domain| (StackMachine.State.regs |st#0@@3|)) ($Box SeqType |v#8|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (StackMachine.State.regs |st#0@@3|)) ($Box SeqType |v#8|)))) 0)))
(let ((|dt_update_tmp#1#4| |st#0@@3|))
(let ((|dt_update#stack#1#4| (|#LinkedList.List.Cons| ($Box intType (int_2_U |val#4|)) |tl#25|)))
(|#StackMachine.State.State| |dt_update#stack#1#4| (StackMachine.State.regs |dt_update_tmp#1#4|) (StackMachine.State.output |dt_update_tmp#1#4|))))))) (ite (StackMachine.Instr.PopAdd_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (ite (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (ite (LinkedList.List.Cons_q (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (let ((|tl#26| (LinkedList.List.tl (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))))))
(let ((|n1#8| (U_2_int ($Unbox intType (LinkedList.List.hd (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))))))))
(let ((|n2#8| (U_2_int ($Unbox intType (LinkedList.List.hd ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))))
(let ((|dt_update_tmp#2#4| |st#0@@3|))
(let ((|dt_update#stack#2#4| (|#LinkedList.List.Cons| ($Box intType (int_2_U (+ |n1#8| |n2#8|))) |tl#26|)))
(|#StackMachine.State.State| |dt_update#stack#2#4| (StackMachine.State.regs |dt_update_tmp#2#4|) (StackMachine.State.output |dt_update_tmp#2#4|))))))) |st#0@@3|) |st#0@@3|) (ite (StackMachine.Instr.PopSub_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (ite (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (ite (LinkedList.List.Cons_q (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (let ((|tl#27| (LinkedList.List.tl (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))))))
(let ((|n1#9| (U_2_int ($Unbox intType (LinkedList.List.hd (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))))))))
(let ((|n2#9| (U_2_int ($Unbox intType (LinkedList.List.hd ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))))
(let ((|dt_update_tmp#3#4| |st#0@@3|))
(let ((|dt_update#stack#3#4| (|#LinkedList.List.Cons| ($Box intType (int_2_U (- |n1#9| |n2#9|))) |tl#27|)))
(|#StackMachine.State.State| |dt_update#stack#3#4| (StackMachine.State.regs |dt_update_tmp#3#4|) (StackMachine.State.output |dt_update_tmp#3#4|))))))) |st#0@@3|) |st#0@@3|) (ite (StackMachine.Instr.PopPrint_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (ite (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (let ((|tl#28| (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
(let ((|n#13| (U_2_int ($Unbox intType (LinkedList.List.hd ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))))
(let ((|dt_update_tmp#4#4| |st#0@@3|))
(let ((|dt_update#output#0#4| (|Seq#Append| (StackMachine.State.output |st#0@@3|) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#13|))))))
(let ((|dt_update#stack#4#4| |tl#28|))
(|#StackMachine.State.State| |dt_update#stack#4#4| (StackMachine.State.regs |dt_update_tmp#4#4|) |dt_update#output#0#4|)))))) |st#0@@3|) (ite (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (let ((|tl#29| (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
(let ((|n#14| (U_2_int ($Unbox intType (LinkedList.List.hd ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))))
(let ((|v#9| (StackMachine.Instr.v ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
(let ((|dt_update_tmp#5#4| |st#0@@3|))
(let ((|dt_update#regs#0#4| (|Map#Build| (StackMachine.State.regs |st#0@@3|) ($Box SeqType |v#9|) ($Box intType (int_2_U |n#14|)))))
(let ((|dt_update#stack#5#4| |tl#29|))
(|#StackMachine.State.State| |dt_update#stack#5#4| |dt_update#regs#0#4| (StackMachine.State.output |dt_update_tmp#5#4|)))))))) |st#0@@3|)))))))))
 :qid |Compilerdfy.210:24|
 :skolemid |3719|
 :pattern ( (StackMachine.__default.interpInstr |instr#0@@1| |st#0@@3|))
)))
(assert (forall (($Heap T@U) (LinkedList._default.Concat$T@@2 T@U) ($ly@@12 T@U) (|l1#0@@2| T@U) (|l2#0@@2| T@U) ) (!  (=> (and (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@2 |l1#0@@2| |l2#0@@2|) (and (and ($Is DatatypeTypeType |l1#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2)) ($IsAlloc DatatypeTypeType |l1#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap)) (and ($Is DatatypeTypeType |l2#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2)) ($IsAlloc DatatypeTypeType |l2#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@2 $ly@@12 |l1#0@@2| |l2#0@@2|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap))
 :qid |Compilerdfy.171:12|
 :skolemid |3691|
 :pattern ( ($IsAlloc DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@2 $ly@@12 |l1#0@@2| |l2#0@@2|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap))
)))
(assert (forall ((LinkedList.List$T@@3 T@U) (d@@43 T@U) ) (!  (=> ($Is DatatypeTypeType d@@43 (Tclass.LinkedList.List LinkedList.List$T@@3)) (or (LinkedList.List.Cons_q d@@43) (LinkedList.List.Nil_q d@@43)))
 :qid |unknown.0:0|
 :skolemid |3713|
 :pattern ( (LinkedList.List.Nil_q d@@43) ($Is DatatypeTypeType d@@43 (Tclass.LinkedList.List LinkedList.List$T@@3)))
 :pattern ( (LinkedList.List.Cons_q d@@43) ($Is DatatypeTypeType d@@43 (Tclass.LinkedList.List LinkedList.List$T@@3)))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (|Seq#Equal| a@@3 b@@3) (= a@@3 b@@3))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |3129|
 :pattern ( (|Seq#Equal| a@@3 b@@3))
)))
(assert (forall ((m@@2 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@2 |m'@@0|) (= m@@2 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |3188|
 :pattern ( (|Map#Equal| m@@2 |m'@@0|))
)))
(assert (forall ((d@@44 T@U) ) (!  (=> ($Is DatatypeTypeType d@@44 Tclass.DafnyAST.BinOp) (or (DafnyAST.BinOp.Add_q d@@44) (DafnyAST.BinOp.Sub_q d@@44)))
 :qid |unknown.0:0|
 :skolemid |3581|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@44) ($Is DatatypeTypeType d@@44 Tclass.DafnyAST.BinOp))
 :pattern ( (DafnyAST.BinOp.Add_q d@@44) ($Is DatatypeTypeType d@@44 Tclass.DafnyAST.BinOp))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2915|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TChar) (and (= ($Box charType ($Unbox charType bx@@10)) bx@@10) ($Is charType ($Unbox charType bx@@10) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |2918|
 :pattern ( ($IsBox bx@@10 TChar))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2926|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3109|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (and (LinkedList.List.Nil_q a@@4) (LinkedList.List.Nil_q b@@4)) (|LinkedList.List#Equal| a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |3715|
 :pattern ( (|LinkedList.List#Equal| a@@4 b@@4) (LinkedList.List.Nil_q a@@4))
 :pattern ( (|LinkedList.List#Equal| a@@4 b@@4) (LinkedList.List.Nil_q b@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@1) h@@0) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@11) ($IsAllocBox bx@@11 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2955|
 :pattern ( (|Set#IsMember| v@@4 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2956|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@2 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@2 u@@1)) t@@2)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |2897|
 :pattern ( (TMap t@@2 u@@1))
)))
(assert (forall ((t@@3 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@3 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |2898|
 :pattern ( (TMap t@@3 u@@2))
)))
(assert (forall ((t@@4 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@4 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |2899|
 :pattern ( (TMap t@@4 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |3336|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |3341|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |3342|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |3351|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |3353|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall ((|a#40#0#0@@0| T@U) (|a#40#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Stmt.Assign| |a#40#0#0@@0| |a#40#1#0@@0|)) |##DafnyAST.Stmt.Assign|)
 :qid |Compilerdfy.37:14|
 :skolemid |3636|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#40#0#0@@0| |a#40#1#0@@0|))
)))
(assert (forall ((|a#44#0#0| T@U) (|a#44#1#0| T@U) ) (! (= (DafnyAST.Stmt.v (|#DafnyAST.Stmt.Assign| |a#44#0#0| |a#44#1#0|)) |a#44#0#0|)
 :qid |Compilerdfy.37:14|
 :skolemid |3644|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#44#0#0| |a#44#1#0|))
)))
(assert (forall ((|a#47#0#0| T@U) (|a#47#1#0| T@U) ) (! (= (DafnyAST.Stmt.e (|#DafnyAST.Stmt.Assign| |a#47#0#0| |a#47#1#0|)) |a#47#1#0|)
 :qid |Compilerdfy.37:14|
 :skolemid |3647|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#47#0#0| |a#47#1#0|))
)))
(assert (forall ((|a#49#0#0| T@U) (|a#49#1#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Stmt.Seq| |a#49#0#0| |a#49#1#0|)) |##DafnyAST.Stmt.Seq|)
 :qid |Compilerdfy.38:11|
 :skolemid |3649|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#49#0#0| |a#49#1#0|))
)))
(assert (forall ((|a#53#0#0| T@U) (|a#53#1#0| T@U) ) (! (= (DafnyAST.Stmt.s1 (|#DafnyAST.Stmt.Seq| |a#53#0#0| |a#53#1#0|)) |a#53#0#0|)
 :qid |Compilerdfy.38:11|
 :skolemid |3657|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#53#0#0| |a#53#1#0|))
)))
(assert (forall ((|a#55#0#0| T@U) (|a#55#1#0| T@U) ) (! (= (DafnyAST.Stmt.s2 (|#DafnyAST.Stmt.Seq| |a#55#0#0| |a#55#1#0|)) |a#55#1#0|)
 :qid |Compilerdfy.38:11|
 :skolemid |3659|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#55#0#0| |a#55#1#0|))
)))
(assert (forall ((|a#57#0#0| T@U) (|a#57#1#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.InterpResult.InterpResult| |a#57#0#0| |a#57#1#0|)) |##DafnyAST.InterpResult.InterpResult|)
 :qid |Compilerdfy.55:40|
 :skolemid |3669|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| |a#57#0#0| |a#57#1#0|))
)))
(assert (forall ((|a#61#0#0| T@U) (|a#61#1#0| T@U) ) (! (= (DafnyAST.InterpResult.ctx (|#DafnyAST.InterpResult.InterpResult| |a#61#0#0| |a#61#1#0|)) |a#61#0#0|)
 :qid |Compilerdfy.55:40|
 :skolemid |3677|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| |a#61#0#0| |a#61#1#0|))
)))
(assert (forall ((|a#64#0#0| T@U) (|a#64#1#0| T@U) ) (! (= (DafnyAST.InterpResult.output (|#DafnyAST.InterpResult.InterpResult| |a#64#0#0| |a#64#1#0|)) |a#64#1#0|)
 :qid |Compilerdfy.55:40|
 :skolemid |3680|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| |a#64#0#0| |a#64#1#0|))
)))
(assert (forall ((|a#0#0#0@@0| T@U) (|a#0#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#LinkedList.List.Cons| |a#0#0#0@@0| |a#0#1#0@@0|)) |##LinkedList.List.Cons|)
 :qid |Compilerdfy.168:12|
 :skolemid |3695|
 :pattern ( (|#LinkedList.List.Cons| |a#0#0#0@@0| |a#0#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (LinkedList.List.hd (|#LinkedList.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#0#0@@0|)
 :qid |Compilerdfy.168:12|
 :skolemid |3704|
 :pattern ( (|#LinkedList.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#6#0#0@@1| T@U) (|a#6#1#0@@0| T@U) ) (! (= (LinkedList.List.tl (|#LinkedList.List.Cons| |a#6#0#0@@1| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |Compilerdfy.168:12|
 :skolemid |3706|
 :pattern ( (|#LinkedList.List.Cons| |a#6#0#0@@1| |a#6#1#0@@0|))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@2) h@@1) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@6) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2961|
 :pattern ( (|Seq#Index| v@@5 i@@6))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2962|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@2) h@@1))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) (|a#23#2#0| T@U) ) (! (= (|#DafnyAST.Expr.Op| (Lit DatatypeTypeType |a#23#0#0|) (Lit DatatypeTypeType |a#23#1#0|) (Lit DatatypeTypeType |a#23#2#0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |a#23#0#0| |a#23#1#0| |a#23#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |3611|
 :pattern ( (|#DafnyAST.Expr.Op| (Lit DatatypeTypeType |a#23#0#0|) (Lit DatatypeTypeType |a#23#1#0|) (Lit DatatypeTypeType |a#23#2#0|)))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (|#StackMachine.State.State| (Lit DatatypeTypeType |a#34#0#0|) (Lit MapType |a#34#1#0|) (Lit SeqType |a#34#2#0|)) (Lit DatatypeTypeType (|#StackMachine.State.State| |a#34#0#0| |a#34#1#0| |a#34#2#0|)))
 :qid |Compilerdfy.206:26|
 :skolemid |3784|
 :pattern ( (|#StackMachine.State.State| (Lit DatatypeTypeType |a#34#0#0|) (Lit MapType |a#34#1#0|) (Lit SeqType |a#34#2#0|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@13 T@U) (|e#0@@4| T@U) ) (!  (=> (or (|Compiler.__default.compileExpr#canCall| |e#0@@4|) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@4| Tclass.DafnyAST.Expr))) ($Is DatatypeTypeType (Compiler.__default.compileExpr $ly@@13 |e#0@@4|) (Tclass.LinkedList.List Tclass.StackMachine.Instr)))
 :qid |Compilerdfy.253:12|
 :skolemid |3504|
 :pattern ( (Compiler.__default.compileExpr $ly@@13 |e#0@@4|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@14 T@U) (|s#0@@3| T@U) ) (!  (=> (or (|Compiler.__default.compileStmt#canCall| |s#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |s#0@@3| Tclass.DafnyAST.Stmt))) ($Is DatatypeTypeType (Compiler.__default.compileStmt $ly@@14 |s#0@@3|) (Tclass.LinkedList.List Tclass.StackMachine.Instr)))
 :qid |Compilerdfy.262:12|
 :skolemid |3518|
 :pattern ( (Compiler.__default.compileStmt $ly@@14 |s#0@@3|))
))))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSet (TSet t@@5)) t@@5)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2889|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSet t@@6)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2890|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSeq (TSeq t@@7)) t@@7)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2895|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSeq t@@8)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2896|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((LinkedList.List$T@@4 T@U) ) (! (= (Tclass.LinkedList.List_0 (Tclass.LinkedList.List LinkedList.List$T@@4)) LinkedList.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |3502|
 :pattern ( (Tclass.LinkedList.List LinkedList.List$T@@4))
)))
(assert (forall ((|a#8#0#0| Int) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Const| |a#8#0#0|)) |##DafnyAST.Expr.Const|)
 :qid |Compilerdfy.27:13|
 :skolemid |3585|
 :pattern ( (|#DafnyAST.Expr.Const| |a#8#0#0|))
)))
(assert (forall ((|a#12#0#0| Int) ) (! (= (DafnyAST.Expr.n (|#DafnyAST.Expr.Const| |a#12#0#0|)) |a#12#0#0|)
 :qid |Compilerdfy.27:13|
 :skolemid |3592|
 :pattern ( (|#DafnyAST.Expr.Const| |a#12#0#0|))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Expr.Var| |a#13#0#0|)) |##DafnyAST.Expr.Var|)
 :qid |Compilerdfy.28:11|
 :skolemid |3593|
 :pattern ( (|#DafnyAST.Expr.Var| |a#13#0#0|))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (DafnyAST.Expr.v (|#DafnyAST.Expr.Var| |a#17#0#0|)) |a#17#0#0|)
 :qid |Compilerdfy.28:11|
 :skolemid |3600|
 :pattern ( (|#DafnyAST.Expr.Var| |a#17#0#0|))
)))
(assert (forall ((|a#34#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#DafnyAST.Stmt.Print| |a#34#0#0@@0|)) |##DafnyAST.Stmt.Print|)
 :qid |Compilerdfy.36:13|
 :skolemid |3627|
 :pattern ( (|#DafnyAST.Stmt.Print| |a#34#0#0@@0|))
)))
(assert (forall ((|a#38#0#0| T@U) ) (! (= (DafnyAST.Stmt.e (|#DafnyAST.Stmt.Print| |a#38#0#0|)) |a#38#0#0|)
 :qid |Compilerdfy.36:13|
 :skolemid |3634|
 :pattern ( (|#DafnyAST.Stmt.Print| |a#38#0#0|))
)))
(assert (forall ((|a#0#0#0@@1| Int) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PushConst| |a#0#0#0@@1|)) |##StackMachine.Instr.PushConst|)
 :qid |Compilerdfy.192:17|
 :skolemid |3732|
 :pattern ( (|#StackMachine.Instr.PushConst| |a#0#0#0@@1|))
)))
(assert (forall ((|a#4#0#0@@1| Int) ) (! (= (StackMachine.Instr.n (|#StackMachine.Instr.PushConst| |a#4#0#0@@1|)) |a#4#0#0@@1|)
 :qid |Compilerdfy.192:17|
 :skolemid |3739|
 :pattern ( (|#StackMachine.Instr.PushConst| |a#4#0#0@@1|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PushVar| |a#5#0#0|)) |##StackMachine.Instr.PushVar|)
 :qid |Compilerdfy.193:15|
 :skolemid |3740|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0@@0| T@U) ) (! (= (StackMachine.Instr.v (|#StackMachine.Instr.PushVar| |a#9#0#0@@0|)) |a#9#0#0@@0|)
 :qid |Compilerdfy.193:15|
 :skolemid |3747|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#9#0#0@@0|))
)))
(assert (forall ((|a#24#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PopVar| |a#24#0#0@@0|)) |##StackMachine.Instr.PopVar|)
 :qid |Compilerdfy.197:14|
 :skolemid |3756|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#24#0#0@@0|))
)))
(assert (forall ((|a#28#0#0@@0| T@U) ) (! (= (StackMachine.Instr.v (|#StackMachine.Instr.PopVar| |a#28#0#0@@0|)) |a#28#0#0@@0|)
 :qid |Compilerdfy.197:14|
 :skolemid |3763|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#28#0#0@@0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2913|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((v@@6 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@6 (TMap t0@@3 t1@@0) h@@2) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@12) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@12) t1@@0 h@@2) ($IsAllocBox bx@@12 t0@@3 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |2963|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@12))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |2964|
 :pattern ( ($IsAlloc MapType v@@6 (TMap t0@@3 t1@@0) h@@2))
)))
(assert (forall ((|a#25#0#0@@0| T@U) (|a#25#1#0| T@U) (|a#25#2#0| T@U) ) (! (< (DtRank |a#25#0#0@@0|) (DtRank (|#DafnyAST.Expr.Op| |a#25#0#0@@0| |a#25#1#0| |a#25#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |3613|
 :pattern ( (|#DafnyAST.Expr.Op| |a#25#0#0@@0| |a#25#1#0| |a#25#2#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) (|a#27#2#0| T@U) ) (! (< (DtRank |a#27#1#0|) (DtRank (|#DafnyAST.Expr.Op| |a#27#0#0| |a#27#1#0| |a#27#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |3615|
 :pattern ( (|#DafnyAST.Expr.Op| |a#27#0#0| |a#27#1#0| |a#27#2#0|))
)))
(assert (forall ((|a#29#0#0@@0| T@U) (|a#29#1#0| T@U) (|a#29#2#0| T@U) ) (! (< (DtRank |a#29#2#0|) (DtRank (|#DafnyAST.Expr.Op| |a#29#0#0@@0| |a#29#1#0| |a#29#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |3617|
 :pattern ( (|#DafnyAST.Expr.Op| |a#29#0#0@@0| |a#29#1#0| |a#29#2#0|))
)))
(assert (forall ((|a#36#0#0@@0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) ) (! (< (DtRank |a#36#0#0@@0|) (DtRank (|#StackMachine.State.State| |a#36#0#0@@0| |a#36#1#0| |a#36#2#0|)))
 :qid |Compilerdfy.206:26|
 :skolemid |3786|
 :pattern ( (|#StackMachine.State.State| |a#36#0#0@@0| |a#36#1#0| |a#36#2#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) (|a#42#2#0| T@U) ) (! (< (|Seq#Rank| |a#42#2#0|) (DtRank (|#StackMachine.State.State| |a#42#0#0| |a#42#1#0| |a#42#2#0|)))
 :qid |Compilerdfy.206:26|
 :skolemid |3792|
 :pattern ( (|#StackMachine.State.State| |a#42#0#0| |a#42#1#0| |a#42#2#0|))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3352|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3354|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#46#0#0| T@U) (|a#46#1#0| T@U) ) (! (< (|Seq#Rank| |a#46#0#0|) (DtRank (|#DafnyAST.Stmt.Assign| |a#46#0#0| |a#46#1#0|)))
 :qid |Compilerdfy.37:14|
 :skolemid |3646|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#46#0#0| |a#46#1#0|))
)))
(assert (forall ((|a#48#0#0| T@U) (|a#48#1#0| T@U) ) (! (< (DtRank |a#48#1#0|) (DtRank (|#DafnyAST.Stmt.Assign| |a#48#0#0| |a#48#1#0|)))
 :qid |Compilerdfy.37:14|
 :skolemid |3648|
 :pattern ( (|#DafnyAST.Stmt.Assign| |a#48#0#0| |a#48#1#0|))
)))
(assert (forall ((|a#54#0#0| T@U) (|a#54#1#0| T@U) ) (! (< (DtRank |a#54#0#0|) (DtRank (|#DafnyAST.Stmt.Seq| |a#54#0#0| |a#54#1#0|)))
 :qid |Compilerdfy.38:11|
 :skolemid |3658|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#54#0#0| |a#54#1#0|))
)))
(assert (forall ((|a#56#0#0| T@U) (|a#56#1#0| T@U) ) (! (< (DtRank |a#56#1#0|) (DtRank (|#DafnyAST.Stmt.Seq| |a#56#0#0| |a#56#1#0|)))
 :qid |Compilerdfy.38:11|
 :skolemid |3660|
 :pattern ( (|#DafnyAST.Stmt.Seq| |a#56#0#0| |a#56#1#0|))
)))
(assert (forall ((|a#66#0#0| T@U) (|a#66#1#0| T@U) ) (! (< (|Seq#Rank| |a#66#1#0|) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#66#0#0| |a#66#1#0|)))
 :qid |Compilerdfy.55:40|
 :skolemid |3682|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| |a#66#0#0| |a#66#1#0|))
)))
(assert (forall ((|a#5#0#0@@1| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@1|) (DtRank (|#LinkedList.List.Cons| |a#5#0#0@@1| |a#5#1#0@@0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |3705|
 :pattern ( (|#LinkedList.List.Cons| |a#5#0#0@@1| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (< (DtRank |a#7#1#0@@0|) (DtRank (|#LinkedList.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |3707|
 :pattern ( (|#LinkedList.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|))
)))
(assert (forall (($ly@@15 T@U) (|e#0@@5| T@U) ) (! (= (Compiler.__default.compileExpr ($LS $ly@@15) |e#0@@5|) (Compiler.__default.compileExpr $ly@@15 |e#0@@5|))
 :qid |Compilerdfy.253:12|
 :skolemid |3497|
 :pattern ( (Compiler.__default.compileExpr ($LS $ly@@15) |e#0@@5|))
)))
(assert (forall (($ly@@16 T@U) (|s#0@@4| T@U) ) (! (= (Compiler.__default.compileStmt ($LS $ly@@16) |s#0@@4|) (Compiler.__default.compileStmt $ly@@16 |s#0@@4|))
 :qid |Compilerdfy.262:12|
 :skolemid |3515|
 :pattern ( (Compiler.__default.compileStmt ($LS $ly@@16) |s#0@@4|))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |3173|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((|a#10#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Const| |a#10#0#0@@0|) Tclass.DafnyAST.Expr) ($Is intType (int_2_U |a#10#0#0@@0|) TInt))
 :qid |Compilerdfy.27:13|
 :skolemid |3589|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Const| |a#10#0#0@@0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((|a#2#0#0@@2| Int) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#2#0#0@@2|) Tclass.StackMachine.Instr) ($Is intType (int_2_U |a#2#0#0@@2|) TInt))
 :qid |Compilerdfy.192:17|
 :skolemid |3736|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#2#0#0@@2|) Tclass.StackMachine.Instr))
)))
(assert (forall ((bx@@13 T@U) (s@@3 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@13 (TMap s@@3 t@@9)) (and (= ($Box MapType ($Unbox MapType bx@@13)) bx@@13) ($Is MapType ($Unbox MapType bx@@13) (TMap s@@3 t@@9))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |2924|
 :pattern ( ($IsBox bx@@13 (TMap s@@3 t@@9)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@14)) bx@@14) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@14) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |3343|
 :pattern ( ($IsBox bx@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((|a#19#0#0| T@U) ) (! (< (|Seq#Rank| |a#19#0#0|) (DtRank (|#DafnyAST.Expr.Var| |a#19#0#0|)))
 :qid |Compilerdfy.28:11|
 :skolemid |3602|
 :pattern ( (|#DafnyAST.Expr.Var| |a#19#0#0|))
)))
(assert (forall ((|a#39#0#0@@0| T@U) ) (! (< (DtRank |a#39#0#0@@0|) (DtRank (|#DafnyAST.Stmt.Print| |a#39#0#0@@0|)))
 :qid |Compilerdfy.36:13|
 :skolemid |3635|
 :pattern ( (|#DafnyAST.Stmt.Print| |a#39#0#0@@0|))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (< (|Seq#Rank| |a#11#0#0|) (DtRank (|#StackMachine.Instr.PushVar| |a#11#0#0|)))
 :qid |Compilerdfy.193:15|
 :skolemid |3749|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#11#0#0|))
)))
(assert (forall ((|a#30#0#0| T@U) ) (! (< (|Seq#Rank| |a#30#0#0|) (DtRank (|#StackMachine.Instr.PopVar| |a#30#0#0|)))
 :qid |Compilerdfy.197:14|
 :skolemid |3765|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#30#0#0|))
)))
(assert (forall ((d@@45 T@U) (LinkedList.List$T@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (LinkedList.List.Cons_q d@@45) ($IsAlloc DatatypeTypeType d@@45 (Tclass.LinkedList.List LinkedList.List$T@@5) $h@@2))) ($IsAllocBox (LinkedList.List.hd d@@45) LinkedList.List$T@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |3701|
 :pattern ( ($IsAllocBox (LinkedList.List.hd d@@45) LinkedList.List$T@@5 $h@@2))
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
 :skolemid |9878|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall (($ly@@17 T@U) (|s#0@@5| T@U) (|ctx#0@@3| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt_k#canCall| |s#0@@5| |ctx#0@@3|) (and ($Is DatatypeTypeType |s#0@@5| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@3| (TMap (TSeq TChar) TInt)))) (and (=> (not (DafnyAST.Stmt.Skip_q |s#0@@5|)) (and (=> (DafnyAST.Stmt.Print_q |s#0@@5|) (let ((|e#18| (DafnyAST.Stmt.e |s#0@@5|)))
(|DafnyAST.__default.interpExpr#canCall| |e#18| |ctx#0@@3|))) (=> (not (DafnyAST.Stmt.Print_q |s#0@@5|)) (and (=> (DafnyAST.Stmt.Assign_q |s#0@@5|) (let ((|e#19| (DafnyAST.Stmt.e |s#0@@5|)))
(|DafnyAST.__default.interpExpr#canCall| |e#19| |ctx#0@@3|))) (=> (not (DafnyAST.Stmt.Assign_q |s#0@@5|)) (let ((|s2#9| (DafnyAST.Stmt.s2 |s#0@@5|)))
(let ((|s1#9| (DafnyAST.Stmt.s1 |s#0@@5|)))
 (and (|DafnyAST.__default.interpStmt_k#canCall| |s1#9| |ctx#0@@3|) (let ((|ctx1#9| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k $ly@@17 |s1#9| |ctx#0@@3|))))
(|DafnyAST.__default.interpStmt_k#canCall| |s2#9| |ctx1#9|)))))))))) (= (DafnyAST.__default.interpStmt_k ($LS $ly@@17) |s#0@@5| |ctx#0@@3|) (ite (DafnyAST.Stmt.Skip_q |s#0@@5|) (|#DafnyAST.InterpResult.InterpResult| |ctx#0@@3| (Lit SeqType |Seq#Empty|)) (ite (DafnyAST.Stmt.Print_q |s#0@@5|) (let ((|e#16| (DafnyAST.Stmt.e |s#0@@5|)))
(|#DafnyAST.InterpResult.InterpResult| |ctx#0@@3| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (DafnyAST.__default.interpExpr ($LS $LZ) |e#16| |ctx#0@@3|)))))) (ite (DafnyAST.Stmt.Assign_q |s#0@@5|) (let ((|e#17| (DafnyAST.Stmt.e |s#0@@5|)))
(let ((|v#8@@0| (DafnyAST.Stmt.v |s#0@@5|)))
(|#DafnyAST.InterpResult.InterpResult| (|Map#Build| |ctx#0@@3| ($Box SeqType |v#8@@0|) ($Box intType (int_2_U (DafnyAST.__default.interpExpr ($LS $LZ) |e#17| |ctx#0@@3|)))) (Lit SeqType |Seq#Empty|)))) (let ((|s2#8| (DafnyAST.Stmt.s2 |s#0@@5|)))
(let ((|s1#8| (DafnyAST.Stmt.s1 |s#0@@5|)))
(let ((|o1#8| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k $ly@@17 |s1#8| |ctx#0@@3|))))
(let ((|ctx1#8| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k $ly@@17 |s1#8| |ctx#0@@3|))))
(let ((|o2#8| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k $ly@@17 |s2#8| |ctx1#8|))))
(let ((|ctx2#8| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k $ly@@17 |s2#8| |ctx1#8|))))
(|#DafnyAST.InterpResult.InterpResult| |ctx2#8| (|Seq#Append| |o1#8| |o2#8|))))))))))))))
 :qid |Compilerdfy.57:12|
 :skolemid |3569|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $ly@@17) |s#0@@5| |ctx#0@@3|))
)))
(assert (forall ((s@@4 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@4 val@@4)) s@@4) (= (|Seq#Build_inv1| (|Seq#Build| s@@4 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |3111|
 :pattern ( (|Seq#Build| s@@4 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |3340|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@46 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (DafnyAST.Expr.Const_q d@@46) ($IsAlloc DatatypeTypeType d@@46 Tclass.DafnyAST.Expr $h@@3))) ($IsAlloc intType (int_2_U (DafnyAST.Expr.n d@@46)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |3590|
 :pattern ( ($IsAlloc intType (int_2_U (DafnyAST.Expr.n d@@46)) TInt $h@@3))
)))
(assert (forall ((d@@47 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (StackMachine.Instr.PushConst_q d@@47) ($IsAlloc DatatypeTypeType d@@47 Tclass.StackMachine.Instr $h@@4))) ($IsAlloc intType (int_2_U (StackMachine.Instr.n d@@47)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |3737|
 :pattern ( ($IsAlloc intType (int_2_U (StackMachine.Instr.n d@@47)) TInt $h@@4))
)))
(assert (forall ((d@@48 T@U) ) (!  (=> ($Is DatatypeTypeType d@@48 Tclass.DafnyAST.Expr) (or (or (DafnyAST.Expr.Const_q d@@48) (DafnyAST.Expr.Var_q d@@48)) (DafnyAST.Expr.Op_q d@@48)))
 :qid |unknown.0:0|
 :skolemid |3620|
 :pattern ( (DafnyAST.Expr.Op_q d@@48) ($Is DatatypeTypeType d@@48 Tclass.DafnyAST.Expr))
 :pattern ( (DafnyAST.Expr.Var_q d@@48) ($Is DatatypeTypeType d@@48 Tclass.DafnyAST.Expr))
 :pattern ( (DafnyAST.Expr.Const_q d@@48) ($Is DatatypeTypeType d@@48 Tclass.DafnyAST.Expr))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |3161|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |3162|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@7 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@7)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |3163|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |3164|
 :pattern ( (|Map#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@8) item)  (and (|Set#IsMember| (|Map#Domain| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |3172|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@8) item))
)))
(assert (forall ((m@@9 T@U) (v@@8 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@8) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@5) (= v@@8 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |3170|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |3171|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@8))
)))
(assert (forall ((m@@10 T@U) (u@@6 T@U) (|u'| T@U) (v@@9 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@9)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@9)) |u'|) v@@9))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@9)) |u'|) (|Set#IsMember| (|Map#Domain| m@@10) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@9)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@10) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |3178|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@9)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@9)) |u'|))
)))
(assert (forall ((d@@49 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@49)) (DtRank d@@49))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2972|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@49)))
)))
(assert (forall ((LinkedList._default.Concat$T@@3 T@U) ($ly@@18 T@U) (|l1#0@@3| T@U) (|l2#0@@3| T@U) ) (! (= (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 ($LS $ly@@18) |l1#0@@3| |l2#0@@3|) (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 $ly@@18 |l1#0@@3| |l2#0@@3|))
 :qid |unknown.0:0|
 :skolemid |3688|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 ($LS $ly@@18) |l1#0@@3| |l2#0@@3|))
)))
(assert (forall ((bx@@15 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@10)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@10))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2920|
 :pattern ( ($IsBox bx@@15 (TSet t@@10)))
)))
(assert (forall ((bx@@16 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@16 (TSeq t@@11)) (and (= ($Box SeqType ($Unbox SeqType bx@@16)) bx@@16) ($Is SeqType ($Unbox SeqType bx@@16) (TSeq t@@11))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2923|
 :pattern ( ($IsBox bx@@16 (TSeq t@@11)))
)))
(assert (forall ((LinkedList.List$T@@6 T@U) (bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (Tclass.LinkedList.List LinkedList.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@17)) bx@@17) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@17) (Tclass.LinkedList.List LinkedList.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |3503|
 :pattern ( ($IsBox bx@@17 (Tclass.LinkedList.List LinkedList.List$T@@6)))
)))
(assert (forall ((v@@10 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@10 (TMap t0@@5 t1@@2)) (forall ((bx@@18 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@10) bx@@18) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@18) t1@@2) ($IsBox bx@@18 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |2943|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@18))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@10) bx@@18))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |2944|
 :pattern ( ($Is MapType v@@10 (TMap t0@@5 t1@@2)))
)))
(assert (forall (($ly@@19 T@U) (|p#0@@1| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg_k#canCall| (Lit DatatypeTypeType |p#0@@1|) (Lit DatatypeTypeType |st#0@@4|)) (and ($Is DatatypeTypeType |p#0@@1| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |st#0@@4| Tclass.StackMachine.State))) (and (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType |p#0@@1|))))) (let ((|p#8| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |p#0@@1|)))))
(let ((|instr#7| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (LinkedList.List.hd (Lit DatatypeTypeType |p#0@@1|))))))
 (and (|StackMachine.__default.interpProg_k#canCall| |p#8| (Lit DatatypeTypeType |st#0@@4|)) (|StackMachine.__default.interpInstr#canCall| |instr#7| (StackMachine.__default.interpProg_k ($LS $ly@@19) |p#8| (Lit DatatypeTypeType |st#0@@4|))))))) (= (StackMachine.__default.interpProg_k ($LS $ly@@19) (Lit DatatypeTypeType |p#0@@1|) (Lit DatatypeTypeType |st#0@@4|)) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType |p#0@@1|)) (let ((|p#7| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |p#0@@1|)))))
(let ((|instr#6| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (LinkedList.List.hd (Lit DatatypeTypeType |p#0@@1|))))))
(Lit DatatypeTypeType (StackMachine.__default.interpInstr |instr#6| (Lit DatatypeTypeType (StackMachine.__default.interpProg_k ($LS $ly@@19) |p#7| (Lit DatatypeTypeType |st#0@@4|))))))) |st#0@@4|))))
 :qid |Compilerdfy.233:12|
 :weight 3
 :skolemid |3726|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $ly@@19) (Lit DatatypeTypeType |p#0@@1|) (Lit DatatypeTypeType |st#0@@4|)))
)))
(assert (forall ((d@@50 T@U) (LinkedList.List$T@@7 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (LinkedList.List.Cons_q d@@50) ($IsAlloc DatatypeTypeType d@@50 (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@5))) ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@50) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@5))
 :qid |unknown.0:0|
 :skolemid |3702|
 :pattern ( ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@50) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@5))
)))
(assert (forall ((d@@51 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@51 Tclass.DafnyAST.BinOp)) ($IsAlloc DatatypeTypeType d@@51 Tclass.DafnyAST.BinOp $h@@6))
 :qid |unknown.0:0|
 :skolemid |3579|
 :pattern ( ($IsAlloc DatatypeTypeType d@@51 Tclass.DafnyAST.BinOp $h@@6))
)))
(assert (forall ((d@@52 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) ($Is DatatypeTypeType d@@52 Tclass.DafnyAST.Expr)) ($IsAlloc DatatypeTypeType d@@52 Tclass.DafnyAST.Expr $h@@7))
 :qid |unknown.0:0|
 :skolemid |3618|
 :pattern ( ($IsAlloc DatatypeTypeType d@@52 Tclass.DafnyAST.Expr $h@@7))
)))
(assert (forall ((d@@53 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) ($Is DatatypeTypeType d@@53 Tclass.DafnyAST.Stmt)) ($IsAlloc DatatypeTypeType d@@53 Tclass.DafnyAST.Stmt $h@@8))
 :qid |unknown.0:0|
 :skolemid |3661|
 :pattern ( ($IsAlloc DatatypeTypeType d@@53 Tclass.DafnyAST.Stmt $h@@8))
)))
(assert (forall ((d@@54 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) ($Is DatatypeTypeType d@@54 Tclass.DafnyAST.InterpResult)) ($IsAlloc DatatypeTypeType d@@54 Tclass.DafnyAST.InterpResult $h@@9))
 :qid |unknown.0:0|
 :skolemid |3683|
 :pattern ( ($IsAlloc DatatypeTypeType d@@54 Tclass.DafnyAST.InterpResult $h@@9))
)))
(assert (forall ((d@@55 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) ($Is DatatypeTypeType d@@55 Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType d@@55 Tclass.StackMachine.Instr $h@@10))
 :qid |unknown.0:0|
 :skolemid |3766|
 :pattern ( ($IsAlloc DatatypeTypeType d@@55 Tclass.StackMachine.Instr $h@@10))
)))
(assert (forall ((d@@56 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) ($Is DatatypeTypeType d@@56 Tclass.StackMachine.State)) ($IsAlloc DatatypeTypeType d@@56 Tclass.StackMachine.State $h@@11))
 :qid |unknown.0:0|
 :skolemid |3793|
 :pattern ( ($IsAlloc DatatypeTypeType d@@56 Tclass.StackMachine.State $h@@11))
)))
(assert (= (Tag Tclass.DafnyAST.Expr) Tagclass.DafnyAST.Expr))
(assert (= (TagFamily Tclass.DafnyAST.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.StackMachine.Instr) Tagclass.StackMachine.Instr))
(assert (= (TagFamily Tclass.StackMachine.Instr) tytagFamily$Instr))
(assert (= (Tag Tclass.DafnyAST.BinOp) Tagclass.DafnyAST.BinOp))
(assert (= (TagFamily Tclass.DafnyAST.BinOp) tytagFamily$BinOp))
(assert (= (Tag Tclass.DafnyAST.Stmt) Tagclass.DafnyAST.Stmt))
(assert (= (TagFamily Tclass.DafnyAST.Stmt) tytagFamily$Stmt))
(assert (= (Tag Tclass.StackMachine.State) Tagclass.StackMachine.State))
(assert (= (TagFamily Tclass.StackMachine.State) tytagFamily$State))
(assert (= (Tag Tclass.DafnyAST.InterpResult) Tagclass.DafnyAST.InterpResult))
(assert (= (TagFamily Tclass.DafnyAST.InterpResult) tytagFamily$InterpResult))
(assert (forall ((d@@57 T@U) ) (!  (=> ($Is DatatypeTypeType d@@57 Tclass.StackMachine.Instr) (or (or (or (or (or (StackMachine.Instr.PushConst_q d@@57) (StackMachine.Instr.PushVar_q d@@57)) (StackMachine.Instr.PopAdd_q d@@57)) (StackMachine.Instr.PopSub_q d@@57)) (StackMachine.Instr.PopPrint_q d@@57)) (StackMachine.Instr.PopVar_q d@@57)))
 :qid |unknown.0:0|
 :skolemid |3768|
 :pattern ( (StackMachine.Instr.PopVar_q d@@57) ($Is DatatypeTypeType d@@57 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopPrint_q d@@57) ($Is DatatypeTypeType d@@57 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopSub_q d@@57) ($Is DatatypeTypeType d@@57 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopAdd_q d@@57) ($Is DatatypeTypeType d@@57 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushVar_q d@@57) ($Is DatatypeTypeType d@@57 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushConst_q d@@57) ($Is DatatypeTypeType d@@57 Tclass.StackMachine.Instr))
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
 :skolemid |3597|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Var| |a#15#0#0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((|a#7#0#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#7#0#0@@1|) Tclass.StackMachine.Instr) ($Is SeqType |a#7#0#0@@1| (TSeq TChar)))
 :qid |Compilerdfy.193:15|
 :skolemid |3744|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#7#0#0@@1|) Tclass.StackMachine.Instr))
)))
(assert (forall ((|a#26#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#26#0#0@@0|) Tclass.StackMachine.Instr) ($Is SeqType |a#26#0#0@@0| (TSeq TChar)))
 :qid |Compilerdfy.197:14|
 :skolemid |3760|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#26#0#0@@0|) Tclass.StackMachine.Instr))
)))
(assert (forall ((d@@58 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (DafnyAST.Expr.Var_q d@@58) ($IsAlloc DatatypeTypeType d@@58 Tclass.DafnyAST.Expr $h@@12))) ($IsAlloc SeqType (DafnyAST.Expr.v d@@58) (TSeq TChar) $h@@12))
 :qid |unknown.0:0|
 :skolemid |3598|
 :pattern ( ($IsAlloc SeqType (DafnyAST.Expr.v d@@58) (TSeq TChar) $h@@12))
)))
(assert (forall ((d@@59 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (DafnyAST.Stmt.Assign_q d@@59) ($IsAlloc DatatypeTypeType d@@59 Tclass.DafnyAST.Stmt $h@@13))) ($IsAlloc SeqType (DafnyAST.Stmt.v d@@59) (TSeq TChar) $h@@13))
 :qid |unknown.0:0|
 :skolemid |3641|
 :pattern ( ($IsAlloc SeqType (DafnyAST.Stmt.v d@@59) (TSeq TChar) $h@@13))
)))
(assert (forall ((d@@60 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (DafnyAST.InterpResult.InterpResult_q d@@60) ($IsAlloc DatatypeTypeType d@@60 Tclass.DafnyAST.InterpResult $h@@14))) ($IsAlloc SeqType (DafnyAST.InterpResult.output d@@60) (TSeq TInt) $h@@14))
 :qid |unknown.0:0|
 :skolemid |3675|
 :pattern ( ($IsAlloc SeqType (DafnyAST.InterpResult.output d@@60) (TSeq TInt) $h@@14))
)))
(assert (forall ((d@@61 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (StackMachine.Instr.PushVar_q d@@61) ($IsAlloc DatatypeTypeType d@@61 Tclass.StackMachine.Instr $h@@15))) ($IsAlloc SeqType (StackMachine.Instr.v d@@61) (TSeq TChar) $h@@15))
 :qid |unknown.0:0|
 :skolemid |3745|
 :pattern ( ($IsAlloc SeqType (StackMachine.Instr.v d@@61) (TSeq TChar) $h@@15))
)))
(assert (forall ((d@@62 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (StackMachine.Instr.PopVar_q d@@62) ($IsAlloc DatatypeTypeType d@@62 Tclass.StackMachine.Instr $h@@16))) ($IsAlloc SeqType (StackMachine.Instr.v d@@62) (TSeq TChar) $h@@16))
 :qid |unknown.0:0|
 :skolemid |3761|
 :pattern ( ($IsAlloc SeqType (StackMachine.Instr.v d@@62) (TSeq TChar) $h@@16))
)))
(assert (forall ((d@@63 T@U) ($h@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (StackMachine.State.State_q d@@63) ($IsAlloc DatatypeTypeType d@@63 Tclass.StackMachine.State $h@@17))) ($IsAlloc DatatypeTypeType (StackMachine.State.stack d@@63) (Tclass.LinkedList.List TInt) $h@@17))
 :qid |unknown.0:0|
 :skolemid |3781|
 :pattern ( ($IsAlloc DatatypeTypeType (StackMachine.State.stack d@@63) (Tclass.LinkedList.List TInt) $h@@17))
)))
(assert (forall ((d@@64 T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (StackMachine.State.State_q d@@64) ($IsAlloc DatatypeTypeType d@@64 Tclass.StackMachine.State $h@@18))) ($IsAlloc SeqType (StackMachine.State.output d@@64) (TSeq TInt) $h@@18))
 :qid |unknown.0:0|
 :skolemid |3783|
 :pattern ( ($IsAlloc SeqType (StackMachine.State.output d@@64) (TSeq TInt) $h@@18))
)))
(assert (forall ((|a#38#0#0@@0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) (d@@65 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#38#1#0|) ($Box DatatypeTypeType d@@65)) (< (DtRank d@@65) (DtRank (|#StackMachine.State.State| |a#38#0#0@@0| |a#38#1#0| |a#38#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |3788|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#38#1#0|) ($Box DatatypeTypeType d@@65)) (|#StackMachine.State.State| |a#38#0#0@@0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall ((|a#62#0#0| T@U) (|a#62#1#0| T@U) (d@@66 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#62#0#0|) ($Box DatatypeTypeType d@@66)) (< (DtRank d@@66) (DtRank (|#DafnyAST.InterpResult.InterpResult| |a#62#0#0| |a#62#1#0|))))
 :qid |Compilerdfy.55:40|
 :skolemid |3678|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#62#0#0|) ($Box DatatypeTypeType d@@66)) (|#DafnyAST.InterpResult.InterpResult| |a#62#0#0| |a#62#1#0|))
)))
(assert (forall ((d@@67 T@U) ) (!  (=> (|$IsA#DafnyAST.Stmt| d@@67) (or (or (or (DafnyAST.Stmt.Skip_q d@@67) (DafnyAST.Stmt.Print_q d@@67)) (DafnyAST.Stmt.Assign_q d@@67)) (DafnyAST.Stmt.Seq_q d@@67)))
 :qid |unknown.0:0|
 :skolemid |3662|
 :pattern ( (|$IsA#DafnyAST.Stmt| d@@67))
)))
(assert (forall ((d@@68 T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (DafnyAST.InterpResult.InterpResult_q d@@68) ($IsAlloc DatatypeTypeType d@@68 Tclass.DafnyAST.InterpResult $h@@19))) ($IsAlloc MapType (DafnyAST.InterpResult.ctx d@@68) (TMap (TSeq TChar) TInt) $h@@19))
 :qid |unknown.0:0|
 :skolemid |3674|
 :pattern ( ($IsAlloc MapType (DafnyAST.InterpResult.ctx d@@68) (TMap (TSeq TChar) TInt) $h@@19))
)))
(assert (forall ((d@@69 T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (StackMachine.State.State_q d@@69) ($IsAlloc DatatypeTypeType d@@69 Tclass.StackMachine.State $h@@20))) ($IsAlloc MapType (StackMachine.State.regs d@@69) (TMap (TSeq TChar) TInt) $h@@20))
 :qid |unknown.0:0|
 :skolemid |3782|
 :pattern ( ($IsAlloc MapType (StackMachine.State.regs d@@69) (TMap (TSeq TChar) TInt) $h@@20))
)))
(assert (forall ((d@@70 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (_System.Tuple2.___hMake2_q d@@70) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@70 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@21)
 :qid |unknown.0:0|
 :skolemid |3346|
 :pattern ( ($IsAlloc DatatypeTypeType d@@70 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@21))
)))) ($IsAllocBox (_System.Tuple2._0 d@@70) |_System._tuple#2$T0@@6| $h@@21))
 :qid |unknown.0:0|
 :skolemid |3347|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@70) |_System._tuple#2$T0@@6| $h@@21))
)))
(assert (forall ((d@@71 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (_System.Tuple2.___hMake2_q d@@71) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@71 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@22)
 :qid |unknown.0:0|
 :skolemid |3348|
 :pattern ( ($IsAlloc DatatypeTypeType d@@71 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@22))
)))) ($IsAllocBox (_System.Tuple2._1 d@@71) |_System._tuple#2$T1@@7| $h@@22))
 :qid |unknown.0:0|
 :skolemid |3349|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@71) |_System._tuple#2$T1@@7| $h@@22))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |3115|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((d@@72 T@U) ($h@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (DafnyAST.Expr.Op_q d@@72) ($IsAlloc DatatypeTypeType d@@72 Tclass.DafnyAST.Expr $h@@23))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.op d@@72) Tclass.DafnyAST.BinOp $h@@23))
 :qid |unknown.0:0|
 :skolemid |3608|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.op d@@72) Tclass.DafnyAST.BinOp $h@@23))
)))
(assert (forall ((d@@73 T@U) ($h@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (DafnyAST.Expr.Op_q d@@73) ($IsAlloc DatatypeTypeType d@@73 Tclass.DafnyAST.Expr $h@@24))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e1 d@@73) Tclass.DafnyAST.Expr $h@@24))
 :qid |unknown.0:0|
 :skolemid |3609|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e1 d@@73) Tclass.DafnyAST.Expr $h@@24))
)))
(assert (forall ((d@@74 T@U) ($h@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (DafnyAST.Expr.Op_q d@@74) ($IsAlloc DatatypeTypeType d@@74 Tclass.DafnyAST.Expr $h@@25))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e2 d@@74) Tclass.DafnyAST.Expr $h@@25))
 :qid |unknown.0:0|
 :skolemid |3610|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e2 d@@74) Tclass.DafnyAST.Expr $h@@25))
)))
(assert (forall ((d@@75 T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (DafnyAST.Stmt.Print_q d@@75) ($IsAlloc DatatypeTypeType d@@75 Tclass.DafnyAST.Stmt $h@@26))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@75) Tclass.DafnyAST.Expr $h@@26))
 :qid |unknown.0:0|
 :skolemid |3632|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@75) Tclass.DafnyAST.Expr $h@@26))
)))
(assert (forall ((d@@76 T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (DafnyAST.Stmt.Assign_q d@@76) ($IsAlloc DatatypeTypeType d@@76 Tclass.DafnyAST.Stmt $h@@27))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@76) Tclass.DafnyAST.Expr $h@@27))
 :qid |unknown.0:0|
 :skolemid |3642|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.e d@@76) Tclass.DafnyAST.Expr $h@@27))
)))
(assert (forall ((d@@77 T@U) ($h@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (DafnyAST.Stmt.Seq_q d@@77) ($IsAlloc DatatypeTypeType d@@77 Tclass.DafnyAST.Stmt $h@@28))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s1 d@@77) Tclass.DafnyAST.Stmt $h@@28))
 :qid |unknown.0:0|
 :skolemid |3654|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s1 d@@77) Tclass.DafnyAST.Stmt $h@@28))
)))
(assert (forall ((d@@78 T@U) ($h@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (DafnyAST.Stmt.Seq_q d@@78) ($IsAlloc DatatypeTypeType d@@78 Tclass.DafnyAST.Stmt $h@@29))) ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s2 d@@78) Tclass.DafnyAST.Stmt $h@@29))
 :qid |unknown.0:0|
 :skolemid |3655|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Stmt.s2 d@@78) Tclass.DafnyAST.Stmt $h@@29))
)))
(assert (forall (($ly@@20 T@U) (|s#0@@6| T@U) (|ctx#0@@4| T@U) ) (!  (=> (or (|DafnyAST.__default.interpStmt_k#canCall| |s#0@@6| |ctx#0@@4|) (and ($Is DatatypeTypeType |s#0@@6| Tclass.DafnyAST.Stmt) ($Is MapType |ctx#0@@4| (TMap (TSeq TChar) TInt)))) ($Is DatatypeTypeType (DafnyAST.__default.interpStmt_k $ly@@20 |s#0@@6| |ctx#0@@4|) Tclass.DafnyAST.InterpResult))
 :qid |Compilerdfy.57:12|
 :skolemid |3567|
 :pattern ( (DafnyAST.__default.interpStmt_k $ly@@20 |s#0@@6| |ctx#0@@4|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3350|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#43#0#0| T@U) (|a#43#1#0| T@U) ) (! (= (|#DafnyAST.Stmt.Assign| (Lit SeqType |a#43#0#0|) (Lit DatatypeTypeType |a#43#1#0|)) (Lit DatatypeTypeType (|#DafnyAST.Stmt.Assign| |a#43#0#0| |a#43#1#0|)))
 :qid |Compilerdfy.37:14|
 :skolemid |3643|
 :pattern ( (|#DafnyAST.Stmt.Assign| (Lit SeqType |a#43#0#0|) (Lit DatatypeTypeType |a#43#1#0|)))
)))
(assert (forall ((|a#52#0#0| T@U) (|a#52#1#0| T@U) ) (! (= (|#DafnyAST.Stmt.Seq| (Lit DatatypeTypeType |a#52#0#0|) (Lit DatatypeTypeType |a#52#1#0|)) (Lit DatatypeTypeType (|#DafnyAST.Stmt.Seq| |a#52#0#0| |a#52#1#0|)))
 :qid |Compilerdfy.38:11|
 :skolemid |3656|
 :pattern ( (|#DafnyAST.Stmt.Seq| (Lit DatatypeTypeType |a#52#0#0|) (Lit DatatypeTypeType |a#52#1#0|)))
)))
(assert (forall ((|a#60#0#0| T@U) (|a#60#1#0| T@U) ) (! (= (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |a#60#0#0|) (Lit SeqType |a#60#1#0|)) (Lit DatatypeTypeType (|#DafnyAST.InterpResult.InterpResult| |a#60#0#0| |a#60#1#0|)))
 :qid |Compilerdfy.55:40|
 :skolemid |3676|
 :pattern ( (|#DafnyAST.InterpResult.InterpResult| (Lit MapType |a#60#0#0|) (Lit SeqType |a#60#1#0|)))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#LinkedList.List.Cons| (Lit BoxType |a#3#0#0@@0|) (Lit DatatypeTypeType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#LinkedList.List.Cons| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |3703|
 :pattern ( (|#LinkedList.List.Cons| (Lit BoxType |a#3#0#0@@0|) (Lit DatatypeTypeType |a#3#1#0@@0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2906|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#11#0#0@@0| Int) ) (! (= (|#DafnyAST.Expr.Const| (LitInt |a#11#0#0@@0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Const| |a#11#0#0@@0|)))
 :qid |Compilerdfy.27:13|
 :skolemid |3591|
 :pattern ( (|#DafnyAST.Expr.Const| (LitInt |a#11#0#0@@0|)))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= (|#DafnyAST.Expr.Var| (Lit SeqType |a#16#0#0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Var| |a#16#0#0|)))
 :qid |Compilerdfy.28:11|
 :skolemid |3599|
 :pattern ( (|#DafnyAST.Expr.Var| (Lit SeqType |a#16#0#0|)))
)))
(assert (forall ((|a#37#0#0@@0| T@U) ) (! (= (|#DafnyAST.Stmt.Print| (Lit DatatypeTypeType |a#37#0#0@@0|)) (Lit DatatypeTypeType (|#DafnyAST.Stmt.Print| |a#37#0#0@@0|)))
 :qid |Compilerdfy.36:13|
 :skolemid |3633|
 :pattern ( (|#DafnyAST.Stmt.Print| (Lit DatatypeTypeType |a#37#0#0@@0|)))
)))
(assert (forall ((|a#3#0#0@@1| Int) ) (! (= (|#StackMachine.Instr.PushConst| (LitInt |a#3#0#0@@1|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#3#0#0@@1|)))
 :qid |Compilerdfy.192:17|
 :skolemid |3738|
 :pattern ( (|#StackMachine.Instr.PushConst| (LitInt |a#3#0#0@@1|)))
)))
(assert (forall ((|a#8#0#0@@0| T@U) ) (! (= (|#StackMachine.Instr.PushVar| (Lit SeqType |a#8#0#0@@0|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#8#0#0@@0|)))
 :qid |Compilerdfy.193:15|
 :skolemid |3746|
 :pattern ( (|#StackMachine.Instr.PushVar| (Lit SeqType |a#8#0#0@@0|)))
)))
(assert (forall ((|a#27#0#0@@0| T@U) ) (! (= (|#StackMachine.Instr.PopVar| (Lit SeqType |a#27#0#0@@0|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#27#0#0@@0|)))
 :qid |Compilerdfy.197:14|
 :skolemid |3762|
 :pattern ( (|#StackMachine.Instr.PopVar| (Lit SeqType |a#27#0#0@@0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2904|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall (($ly@@21 T@U) (|e#0@@6| T@U) (|ctx#0@@5| T@U) ) (!  (=> (or (|DafnyAST.__default.interpExpr#canCall| |e#0@@6| |ctx#0@@5|) (and ($Is DatatypeTypeType |e#0@@6| Tclass.DafnyAST.Expr) ($Is MapType |ctx#0@@5| (TMap (TSeq TChar) TInt)))) (and (=> (not (DafnyAST.Expr.Const_q |e#0@@6|)) (=> (not (DafnyAST.Expr.Var_q |e#0@@6|)) (and (=> (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@6|)) (let ((|e2#18| (DafnyAST.Expr.e2 |e#0@@6|)))
(let ((|e1#18| (DafnyAST.Expr.e1 |e#0@@6|)))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#18| |ctx#0@@5|) (|DafnyAST.__default.interpExpr#canCall| |e2#18| |ctx#0@@5|))))) (=> (not (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@6|))) (let ((|e2#19| (DafnyAST.Expr.e2 |e#0@@6|)))
(let ((|e1#19| (DafnyAST.Expr.e1 |e#0@@6|)))
 (and (|DafnyAST.__default.interpExpr#canCall| |e1#19| |ctx#0@@5|) (|DafnyAST.__default.interpExpr#canCall| |e2#19| |ctx#0@@5|)))))))) (= (DafnyAST.__default.interpExpr ($LS $ly@@21) |e#0@@6| |ctx#0@@5|) (ite (DafnyAST.Expr.Const_q |e#0@@6|) (let ((|n#8| (DafnyAST.Expr.n |e#0@@6|)))
|n#8|) (ite (DafnyAST.Expr.Var_q |e#0@@6|) (let ((|v#8@@1| (DafnyAST.Expr.v |e#0@@6|)))
(ite (|Set#IsMember| (|Map#Domain| |ctx#0@@5|) ($Box SeqType |v#8@@1|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@5|) ($Box SeqType |v#8@@1|)))) 0)) (ite (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0@@6|)) (let ((|e2#16| (DafnyAST.Expr.e2 |e#0@@6|)))
(let ((|e1#16| (DafnyAST.Expr.e1 |e#0@@6|)))
(+ (DafnyAST.__default.interpExpr $ly@@21 |e1#16| |ctx#0@@5|) (DafnyAST.__default.interpExpr $ly@@21 |e2#16| |ctx#0@@5|)))) (let ((|e2#17| (DafnyAST.Expr.e2 |e#0@@6|)))
(let ((|e1#17| (DafnyAST.Expr.e1 |e#0@@6|)))
(- (DafnyAST.__default.interpExpr $ly@@21 |e1#17| |ctx#0@@5|) (DafnyAST.__default.interpExpr $ly@@21 |e2#17| |ctx#0@@5|))))))))))
 :qid |Compilerdfy.44:12|
 :skolemid |3563|
 :pattern ( (DafnyAST.__default.interpExpr ($LS $ly@@21) |e#0@@6| |ctx#0@@5|))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3110|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall (($ly@@22 T@U) (|p#0@@2| T@U) (|st#0@@5| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg_k#canCall| |p#0@@2| |st#0@@5|) (and ($Is DatatypeTypeType |p#0@@2| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |st#0@@5| Tclass.StackMachine.State))) ($Is DatatypeTypeType (StackMachine.__default.interpProg_k $ly@@22 |p#0@@2| |st#0@@5|) Tclass.StackMachine.State))
 :qid |Compilerdfy.233:12|
 :skolemid |3723|
 :pattern ( (StackMachine.__default.interpProg_k $ly@@22 |p#0@@2| |st#0@@5|))
)))
(assert (forall ((d@@79 T@U) ) (!  (=> ($Is DatatypeTypeType d@@79 Tclass.DafnyAST.Stmt) (or (or (or (DafnyAST.Stmt.Skip_q d@@79) (DafnyAST.Stmt.Print_q d@@79)) (DafnyAST.Stmt.Assign_q d@@79)) (DafnyAST.Stmt.Seq_q d@@79)))
 :qid |unknown.0:0|
 :skolemid |3663|
 :pattern ( (DafnyAST.Stmt.Seq_q d@@79) ($Is DatatypeTypeType d@@79 Tclass.DafnyAST.Stmt))
 :pattern ( (DafnyAST.Stmt.Assign_q d@@79) ($Is DatatypeTypeType d@@79 Tclass.DafnyAST.Stmt))
 :pattern ( (DafnyAST.Stmt.Print_q d@@79) ($Is DatatypeTypeType d@@79 Tclass.DafnyAST.Stmt))
 :pattern ( (DafnyAST.Stmt.Skip_q d@@79) ($Is DatatypeTypeType d@@79 Tclass.DafnyAST.Stmt))
)))
(assert (forall ((h@@3 T@U) (v@@11 T@U) ) (! ($IsAlloc intType v@@11 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2949|
 :pattern ( ($IsAlloc intType v@@11 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@12 T@U) ) (! ($IsAlloc charType v@@12 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |2952|
 :pattern ( ($IsAlloc charType v@@12 TChar h@@4))
)))
(assert (forall ((LinkedList.List$T@@8 T@U) (|a#2#0#0@@3| T@U) (|a#2#1#0@@2| T@U) ($h@@30 T@U) ) (!  (=> ($IsGoodHeap $h@@30) (= ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@3| |a#2#1#0@@2|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@30)  (and ($IsAllocBox |a#2#0#0@@3| LinkedList.List$T@@8 $h@@30) ($IsAlloc DatatypeTypeType |a#2#1#0@@2| (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@30))))
 :qid |unknown.0:0|
 :skolemid |3700|
 :pattern ( ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@3| |a#2#1#0@@2|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@30))
)))
(assert (forall ((v@@13 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@13 (TSeq t0@@6)) (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length| v@@13))) ($IsBox (|Seq#Index| v@@13 i@@7) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2941|
 :pattern ( (|Seq#Index| v@@13 i@@7))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2942|
 :pattern ( ($Is SeqType v@@13 (TSeq t0@@6)))
)))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@0 T@U) (v@@14 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@14)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |3165|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |3166|
 :pattern ( (|Map#Items| m@@11))
)))
(assert (forall ((s@@6 T@U) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| s@@6))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@8))) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |3155|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@8))))
)))
(assert (forall ((v@@15 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@15 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@15) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@15) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@15) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |2945|
 :pattern ( ($Is MapType v@@15 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@16 T@U) ) (! ($Is intType v@@16 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2928|
 :pattern ( ($Is intType v@@16 TInt))
)))
(assert (forall ((v@@17 T@U) ) (! ($Is charType v@@17 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |2931|
 :pattern ( ($Is charType v@@17 TChar))
)))
(assert (forall ((|a#42#0#0@@0| T@U) (|a#42#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Stmt.Assign| |a#42#0#0@@0| |a#42#1#0@@0|) Tclass.DafnyAST.Stmt)  (and ($Is SeqType |a#42#0#0@@0| (TSeq TChar)) ($Is DatatypeTypeType |a#42#1#0@@0| Tclass.DafnyAST.Expr)))
 :qid |Compilerdfy.37:14|
 :skolemid |3640|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Stmt.Assign| |a#42#0#0@@0| |a#42#1#0@@0|) Tclass.DafnyAST.Stmt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@@7| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(set-info :boogie-vc-id Impl$$Compiler.__default.compileStmtCorrect)
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
 (=> (= (ControlFlow 0 0) 6) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((|input#1| T@U) ) (!  (=> ($Is MapType |input#1| (TMap (TSeq TChar) TInt)) (|Seq#Equal| (StackMachine.State.output (StackMachine.__default.interpProg_k ($LS ($LS $LZ)) (Compiler.__default.compileStmt ($LS ($LS $LZ)) |s#0@@7|) (let ((|dt_update_tmp#0#1| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#1| |input#1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#1|) |dt_update#regs#0#1| (StackMachine.State.output |dt_update_tmp#0#1|)))))) (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k ($LS ($LS $LZ)) |s#0@@7| |input#1|))))
 :qid |Compilerdfy.327:20|
 :skolemid |3543|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS ($LS $LZ)) |s#0@@7| |input#1|))
 :pattern ( (StackMachine.__default.interpProg_k ($LS ($LS $LZ)) (Compiler.__default.compileStmt ($LS ($LS $LZ)) |s#0@@7|) (let ((|dt_update_tmp#0#1@@0| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#1@@0| |input#1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#1@@0|) |dt_update#regs#0#1@@0| (StackMachine.State.output |dt_update_tmp#0#1@@0|))))))
 :pattern ( (|#StackMachine.State.State| (StackMachine.State.stack StackMachine.__default.EmptyState) |input#1| (StackMachine.State.output StackMachine.__default.EmptyState)))
)))))
(let ((anon3_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (= $Heap@0 $Heap@2)) (and (forall ((|input#0_1| T@U) ) (!  (=> (and ($Is MapType |input#0_1| (TMap (TSeq TChar) TInt)) (U_2_bool (Lit boolType (bool_2_U true)))) (|StackMachine.State#Equal| (StackMachine.__default.interpProg_k ($LS $LZ) (Compiler.__default.compileStmt ($LS $LZ) |s#0@@7|) (let ((|dt_update_tmp#1#0_11| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#1#0_11| |input#0_1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#1#0_11|) |dt_update#regs#1#0_11| (StackMachine.State.output |dt_update_tmp#1#0_11|))))) (let ((|output#0_0| (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k ($LS $LZ) |s#0@@7| (StackMachine.State.regs (let ((|dt_update_tmp#1#0_12| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#1#0_12| |input#0_1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#1#0_12|) |dt_update#regs#1#0_12| (StackMachine.State.output |dt_update_tmp#1#0_12|)))))))))
(let ((|ctx'#0_0| (DafnyAST.InterpResult.ctx (DafnyAST.__default.interpStmt_k ($LS $LZ) |s#0@@7| (StackMachine.State.regs (let ((|dt_update_tmp#1#0_12@@0| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#1#0_12@@0| |input#0_1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#1#0_12@@0|) |dt_update#regs#1#0_12@@0| (StackMachine.State.output |dt_update_tmp#1#0_12@@0|)))))))))
(let ((|dt_update_tmp#0#0_0| (let ((|dt_update_tmp#1#0_13| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#1#0_13| |input#0_1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#1#0_13|) |dt_update#regs#1#0_13| (StackMachine.State.output |dt_update_tmp#1#0_13|))))))
(let ((|dt_update#output#0#0_0| (|Seq#Append| (StackMachine.State.output (let ((|dt_update_tmp#1#0_14| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#1#0_14| |input#0_1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#1#0_14|) |dt_update#regs#1#0_14| (StackMachine.State.output |dt_update_tmp#1#0_14|))))) |output#0_0|)))
(let ((|dt_update#regs#0#0_0| |ctx'#0_0|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#0_0|) |dt_update#regs#0#0_0| |dt_update#output#0#0_0|))))))))
 :qid |Compilerdfy.331:12|
 :skolemid |3548|
 :pattern ( (StackMachine.State.output (let ((|dt_update_tmp#1#0_10| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#1#0_10| |input#0_1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#1#0_10|) |dt_update#regs#1#0_10| (StackMachine.State.output |dt_update_tmp#1#0_10|))))))
 :pattern ( (StackMachine.State.stack (let ((|dt_update_tmp#1#0_9| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#1#0_9| |input#0_1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#1#0_9|) |dt_update#regs#1#0_9| (StackMachine.State.output |dt_update_tmp#1#0_9|))))))
 :pattern ( (StackMachine.State.regs (let ((|dt_update_tmp#1#0_8| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#1#0_8| |input#0_1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#1#0_8|) |dt_update#regs#1#0_8| (StackMachine.State.output |dt_update_tmp#1#0_8|))))))
 :pattern ( (StackMachine.__default.interpProg_k ($LS $LZ) (Compiler.__default.compileStmt ($LS $LZ) |s#0@@7|) (let ((|dt_update_tmp#1#0_7| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#1#0_7| |input#0_1|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#1#0_7|) |dt_update#regs#1#0_7| (StackMachine.State.output |dt_update_tmp#1#0_7|))))))
 :pattern ( (|#StackMachine.State.State| (StackMachine.State.stack StackMachine.__default.EmptyState) |input#0_1| (StackMachine.State.output StackMachine.__default.EmptyState)))
)) (= (ControlFlow 0 4) 3))) GeneratedUnifiedExit_correct)))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (|$IsA#DafnyAST.Stmt| |s#0@@7|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@0 $Heap@0) (forall ((|$ih#s0#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |$ih#s0#0| Tclass.DafnyAST.Stmt) (U_2_bool (Lit boolType (bool_2_U true)))) (< (DtRank |$ih#s0#0|) (DtRank |s#0@@7|))) (forall ((|input#2| T@U) ) (!  (=> ($Is MapType |input#2| (TMap (TSeq TChar) TInt)) (|Seq#Equal| (StackMachine.State.output (StackMachine.__default.interpProg_k ($LS $LZ) (Compiler.__default.compileStmt ($LS $LZ) |$ih#s0#0|) (let ((|dt_update_tmp#0#3| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#3| |input#2|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#3|) |dt_update#regs#0#3| (StackMachine.State.output |dt_update_tmp#0#3|)))))) (DafnyAST.InterpResult.output (DafnyAST.__default.interpStmt_k ($LS $LZ) |$ih#s0#0| |input#2|))))
 :qid |Compilerdfy.327:20|
 :skolemid |3545|
 :pattern ( (DafnyAST.__default.interpStmt_k ($LS $LZ) |$ih#s0#0| |input#2|))
 :pattern ( (StackMachine.__default.interpProg_k ($LS $LZ) (Compiler.__default.compileStmt ($LS $LZ) |$ih#s0#0|) (let ((|dt_update_tmp#0#2| StackMachine.__default.EmptyState))
(let ((|dt_update#regs#0#2| |input#2|))
(|#StackMachine.State.State| (StackMachine.State.stack |dt_update_tmp#0#2|) |dt_update#regs#0#2| (StackMachine.State.output |dt_update_tmp#0#2|))))))
 :pattern ( (|#StackMachine.State.State| (StackMachine.State.stack StackMachine.__default.EmptyState) |input#2| (StackMachine.State.output StackMachine.__default.EmptyState)))
)))
 :qid |Compilerdfy.326:28|
 :skolemid |3546|
 :pattern ( (Compiler.__default.compileStmt ($LS $LZ) |$ih#s0#0|))
)))) (and (=> (= (ControlFlow 0 5) 1) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and ($Is DatatypeTypeType |s#0@@7| Tclass.DafnyAST.Stmt) ($IsAlloc DatatypeTypeType |s#0@@7| Tclass.DafnyAST.Stmt $Heap@@0)) (|$IsA#DafnyAST.Stmt| |s#0@@7|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct))))
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
