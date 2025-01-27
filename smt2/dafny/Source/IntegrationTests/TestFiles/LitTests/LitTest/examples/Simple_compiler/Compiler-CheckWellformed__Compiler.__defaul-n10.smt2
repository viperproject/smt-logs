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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.DafnyAST.Expr () T@U)
(declare-fun Tagclass.StackMachine.Instr () T@U)
(declare-fun Tagclass.LinkedList.List () T@U)
(declare-fun Tagclass.DafnyAST.BinOp () T@U)
(declare-fun |##DafnyAST.BinOp.Add| () T@U)
(declare-fun |##DafnyAST.BinOp.Sub| () T@U)
(declare-fun |##DafnyAST.Expr.Const| () T@U)
(declare-fun |##DafnyAST.Expr.Var| () T@U)
(declare-fun |##DafnyAST.Expr.Op| () T@U)
(declare-fun |##LinkedList.List.Cons| () T@U)
(declare-fun |##LinkedList.List.Nil| () T@U)
(declare-fun |##StackMachine.Instr.PushConst| () T@U)
(declare-fun |##StackMachine.Instr.PushVar| () T@U)
(declare-fun |##StackMachine.Instr.PopAdd| () T@U)
(declare-fun |##StackMachine.Instr.PopSub| () T@U)
(declare-fun |##StackMachine.Instr.PopPrint| () T@U)
(declare-fun |##StackMachine.Instr.PopVar| () T@U)
(declare-fun tytagFamily$Expr () T@U)
(declare-fun tytagFamily$Instr () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$BinOp () T@U)
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
(declare-fun LinkedList.__default.Concat (T@U T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |LinkedList.__default.Concat#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.LinkedList.List (T@U) T@U)
(declare-fun LinkedList.List.Cons_q (T@U) Bool)
(declare-fun LinkedList.List.tl (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun LinkedList.List.hd (T@U) T@U)
(declare-fun |#LinkedList.List.Cons| (T@U T@U) T@U)
(declare-fun |#DafnyAST.Expr.Op| (T@U T@U T@U) T@U)
(declare-fun Tclass.DafnyAST.Expr () T@U)
(declare-fun Tclass.DafnyAST.BinOp () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#DafnyAST.Expr.Var| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |#StackMachine.Instr.PushVar| (T@U) T@U)
(declare-fun |#StackMachine.Instr.PopVar| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun DafnyAST.Expr.op (T@U) T@U)
(declare-fun DafnyAST.Expr.e1 (T@U) T@U)
(declare-fun DafnyAST.Expr.e2 (T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#DafnyAST.BinOp.Add| () T@U)
(declare-fun |#DafnyAST.BinOp.Sub| () T@U)
(declare-fun |#LinkedList.List.Nil| () T@U)
(declare-fun |#StackMachine.Instr.PopAdd| () T@U)
(declare-fun |#StackMachine.Instr.PopSub| () T@U)
(declare-fun |#StackMachine.Instr.PopPrint| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.StackMachine.Instr () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DafnyAST.BinOp.Add_q (T@U) Bool)
(declare-fun DafnyAST.BinOp.Sub_q (T@U) Bool)
(declare-fun DafnyAST.Expr.Const_q (T@U) Bool)
(declare-fun DafnyAST.Expr.Var_q (T@U) Bool)
(declare-fun DafnyAST.Expr.Op_q (T@U) Bool)
(declare-fun LinkedList.List.Nil_q (T@U) Bool)
(declare-fun StackMachine.Instr.PushConst_q (T@U) Bool)
(declare-fun StackMachine.Instr.PushVar_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopAdd_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopSub_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopPrint_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopVar_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#DafnyAST.Expr.Const| (Int) T@U)
(declare-fun |#StackMachine.Instr.PushConst| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Compiler.__default.compileExpr (T@U T@U) T@U)
(declare-fun |Compiler.__default.compileExpr#canCall| (T@U) Bool)
(declare-fun DafnyAST.Expr.n (T@U) Int)
(declare-fun DafnyAST.Expr.v (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun SeqType () T@T)
(declare-fun charType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.LinkedList.List_0 (T@U) T@U)
(declare-fun StackMachine.Instr.n (T@U) Int)
(declare-fun StackMachine.Instr.v (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TChar TInt TagChar TagInt TagSeq alloc Tagclass.DafnyAST.Expr Tagclass.StackMachine.Instr Tagclass.LinkedList.List Tagclass.DafnyAST.BinOp |##DafnyAST.BinOp.Add| |##DafnyAST.BinOp.Sub| |##DafnyAST.Expr.Const| |##DafnyAST.Expr.Var| |##DafnyAST.Expr.Op| |##LinkedList.List.Cons| |##LinkedList.List.Nil| |##StackMachine.Instr.PushConst| |##StackMachine.Instr.PushVar| |##StackMachine.Instr.PopAdd| |##StackMachine.Instr.PopSub| |##StackMachine.Instr.PopPrint| |##StackMachine.Instr.PopVar| tytagFamily$Expr tytagFamily$Instr tytagFamily$List tytagFamily$BinOp)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor BoxType) 4)))
(assert (forall ((LinkedList._default.Concat$T T@U) ($ly T@U) (|l1#0| T@U) (|l2#0| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T (Lit DatatypeTypeType |l1#0|) (Lit DatatypeTypeType |l2#0|)) (and ($Is DatatypeTypeType |l1#0| (Tclass.LinkedList.List LinkedList._default.Concat$T)) ($Is DatatypeTypeType |l2#0| (Tclass.LinkedList.List LinkedList._default.Concat$T)))) (and (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType |l1#0|))))) (let ((|t#11| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |l1#0|)))))
(|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T |t#11| (Lit DatatypeTypeType |l2#0|)))) (= (LinkedList.__default.Concat LinkedList._default.Concat$T ($LS $ly) (Lit DatatypeTypeType |l1#0|) (Lit DatatypeTypeType |l2#0|)) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType |l1#0|)) (let ((|t#10| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |l1#0|)))))
(let ((|h#10| (Lit BoxType (LinkedList.List.hd (Lit DatatypeTypeType |l1#0|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| |h#10| (Lit DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T ($LS $ly) |t#10| (Lit DatatypeTypeType |l2#0|))))))) |l2#0|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |3694|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T ($LS $ly) (Lit DatatypeTypeType |l1#0|) (Lit DatatypeTypeType |l2#0|)))
)))
(assert (forall ((LinkedList._default.Concat$T@@0 T@U) ($ly@@0 T@U) (|l1#0@@0| T@U) (|l2#0@@0| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@0 |l1#0@@0| |l2#0@@0|) (and ($Is DatatypeTypeType |l1#0@@0| (Tclass.LinkedList.List LinkedList._default.Concat$T@@0)) ($Is DatatypeTypeType |l2#0@@0| (Tclass.LinkedList.List LinkedList._default.Concat$T@@0)))) (and (=> (LinkedList.List.Cons_q |l1#0@@0|) (let ((|t#9| (LinkedList.List.tl |l1#0@@0|)))
(|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@0 |t#9| |l2#0@@0|))) (= (LinkedList.__default.Concat LinkedList._default.Concat$T@@0 ($LS $ly@@0) |l1#0@@0| |l2#0@@0|) (ite (LinkedList.List.Cons_q |l1#0@@0|) (let ((|t#8| (LinkedList.List.tl |l1#0@@0|)))
(let ((|h#8| (LinkedList.List.hd |l1#0@@0|)))
(|#LinkedList.List.Cons| |h#8| (LinkedList.__default.Concat LinkedList._default.Concat$T@@0 $ly@@0 |t#8| |l2#0@@0|)))) |l2#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |3693|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@0 ($LS $ly@@0) |l1#0@@0| |l2#0@@0|))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) (|a#22#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Op| |a#22#0#0| |a#22#1#0| |a#22#2#0|) Tclass.DafnyAST.Expr)  (and (and ($Is DatatypeTypeType |a#22#0#0| Tclass.DafnyAST.BinOp) ($Is DatatypeTypeType |a#22#1#0| Tclass.DafnyAST.Expr)) ($Is DatatypeTypeType |a#22#2#0| Tclass.DafnyAST.Expr)))
 :qid |Compilerdfy.29:10|
 :skolemid |3607|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Op| |a#22#0#0| |a#22#1#0| |a#22#2#0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((|a#18#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#18#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#18#0#0| i))) (DtRank (|#DafnyAST.Expr.Var| |a#18#0#0|))))
 :qid |Compilerdfy.28:11|
 :skolemid |3601|
 :pattern ( (|Seq#Index| |a#18#0#0| i) (|#DafnyAST.Expr.Var| |a#18#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#10#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#10#0#0| i@@0))) (DtRank (|#StackMachine.Instr.PushVar| |a#10#0#0|))))
 :qid |Compilerdfy.193:15|
 :skolemid |3748|
 :pattern ( (|Seq#Index| |a#10#0#0| i@@0) (|#StackMachine.Instr.PushVar| |a#10#0#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#29#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#29#0#0| i@@1))) (DtRank (|#StackMachine.Instr.PopVar| |a#29#0#0|))))
 :qid |Compilerdfy.197:14|
 :skolemid |3764|
 :pattern ( (|Seq#Index| |a#29#0#0| i@@1) (|#StackMachine.Instr.PopVar| |a#29#0#0|))
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
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#DafnyAST.BinOp.Add|) |##DafnyAST.BinOp.Add|))
(assert (= (DatatypeCtorId |#DafnyAST.BinOp.Sub|) |##DafnyAST.BinOp.Sub|))
(assert (= (DatatypeCtorId |#LinkedList.List.Nil|) |##LinkedList.List.Nil|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopAdd|) |##StackMachine.Instr.PopAdd|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopSub|) |##StackMachine.Instr.PopSub|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopPrint|) |##StackMachine.Instr.PopPrint|))
(assert (forall ((LinkedList._default.Concat$T@@1 T@U) ($ly@@1 T@U) (|l1#0@@1| T@U) (|l2#0@@1| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@1 |l1#0@@1| |l2#0@@1|) (and ($Is DatatypeTypeType |l1#0@@1| (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)) ($Is DatatypeTypeType |l2#0@@1| (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)))) ($Is DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@1 $ly@@1 |l1#0@@1| |l2#0@@1|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)))
 :qid |unknown.0:0|
 :skolemid |3690|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@1 $ly@@1 |l1#0@@1| |l2#0@@1|))
)))
(assert (forall ((LinkedList.List$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |3711|
 :pattern ( ($IsAlloc DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T) $h))
)))
(assert ($Is DatatypeTypeType |#DafnyAST.BinOp.Add| Tclass.DafnyAST.BinOp))
(assert ($Is DatatypeTypeType |#DafnyAST.BinOp.Sub| Tclass.DafnyAST.BinOp))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopAdd| Tclass.StackMachine.Instr))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopSub| Tclass.StackMachine.Instr))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopPrint| Tclass.StackMachine.Instr))
(assert (forall ((LinkedList.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |3710|
 :pattern ( ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T@@0)))
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
(assert (forall ((LinkedList.List$T@@1 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.LinkedList.List LinkedList.List$T@@1))  (and ($IsBox |a#2#0#0| LinkedList.List$T@@1) ($Is DatatypeTypeType |a#2#1#0| (Tclass.LinkedList.List LinkedList.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |3699|
 :pattern ( ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.LinkedList.List LinkedList.List$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (DafnyAST.BinOp.Add_q d) (= (DatatypeCtorId d) |##DafnyAST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |3575|
 :pattern ( (DafnyAST.BinOp.Add_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (DafnyAST.BinOp.Sub_q d@@0) (= (DatatypeCtorId d@@0) |##DafnyAST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |3577|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (DafnyAST.Expr.Const_q d@@1) (= (DatatypeCtorId d@@1) |##DafnyAST.Expr.Const|))
 :qid |unknown.0:0|
 :skolemid |3586|
 :pattern ( (DafnyAST.Expr.Const_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (DafnyAST.Expr.Var_q d@@2) (= (DatatypeCtorId d@@2) |##DafnyAST.Expr.Var|))
 :qid |unknown.0:0|
 :skolemid |3594|
 :pattern ( (DafnyAST.Expr.Var_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (DafnyAST.Expr.Op_q d@@3) (= (DatatypeCtorId d@@3) |##DafnyAST.Expr.Op|))
 :qid |unknown.0:0|
 :skolemid |3604|
 :pattern ( (DafnyAST.Expr.Op_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (LinkedList.List.Cons_q d@@4) (= (DatatypeCtorId d@@4) |##LinkedList.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |3696|
 :pattern ( (LinkedList.List.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (LinkedList.List.Nil_q d@@5) (= (DatatypeCtorId d@@5) |##LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |3708|
 :pattern ( (LinkedList.List.Nil_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (StackMachine.Instr.PushConst_q d@@6) (= (DatatypeCtorId d@@6) |##StackMachine.Instr.PushConst|))
 :qid |unknown.0:0|
 :skolemid |3733|
 :pattern ( (StackMachine.Instr.PushConst_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (StackMachine.Instr.PushVar_q d@@7) (= (DatatypeCtorId d@@7) |##StackMachine.Instr.PushVar|))
 :qid |unknown.0:0|
 :skolemid |3741|
 :pattern ( (StackMachine.Instr.PushVar_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (StackMachine.Instr.PopAdd_q d@@8) (= (DatatypeCtorId d@@8) |##StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |3750|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (StackMachine.Instr.PopSub_q d@@9) (= (DatatypeCtorId d@@9) |##StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |3752|
 :pattern ( (StackMachine.Instr.PopSub_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (StackMachine.Instr.PopPrint_q d@@10) (= (DatatypeCtorId d@@10) |##StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |3754|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (StackMachine.Instr.PopVar_q d@@11) (= (DatatypeCtorId d@@11) |##StackMachine.Instr.PopVar|))
 :qid |unknown.0:0|
 :skolemid |3757|
 :pattern ( (StackMachine.Instr.PopVar_q d@@11))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2914|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (DafnyAST.Expr.Op_q d@@12) (exists ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (= d@@12 (|#DafnyAST.Expr.Op| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
 :qid |Compilerdfy.29:10|
 :skolemid |3605|
)))
 :qid |unknown.0:0|
 :skolemid |3606|
 :pattern ( (DafnyAST.Expr.Op_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (LinkedList.List.Cons_q d@@13) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@13 (|#LinkedList.List.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |Compilerdfy.168:12|
 :skolemid |3697|
)))
 :qid |unknown.0:0|
 :skolemid |3698|
 :pattern ( (LinkedList.List.Cons_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (DafnyAST.BinOp.Add_q d@@14) (= d@@14 |#DafnyAST.BinOp.Add|))
 :qid |unknown.0:0|
 :skolemid |3576|
 :pattern ( (DafnyAST.BinOp.Add_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (DafnyAST.BinOp.Sub_q d@@15) (= d@@15 |#DafnyAST.BinOp.Sub|))
 :qid |unknown.0:0|
 :skolemid |3578|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (LinkedList.List.Nil_q d@@16) (= d@@16 |#LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |3709|
 :pattern ( (LinkedList.List.Nil_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (StackMachine.Instr.PopAdd_q d@@17) (= d@@17 |#StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |3751|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (StackMachine.Instr.PopSub_q d@@18) (= d@@18 |#StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |3753|
 :pattern ( (StackMachine.Instr.PopSub_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (StackMachine.Instr.PopPrint_q d@@19) (= d@@19 |#StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |3755|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (DafnyAST.Expr.Const_q d@@20) (exists ((|a#9#0#0| Int) ) (! (= d@@20 (|#DafnyAST.Expr.Const| |a#9#0#0|))
 :qid |Compilerdfy.27:13|
 :skolemid |3587|
)))
 :qid |unknown.0:0|
 :skolemid |3588|
 :pattern ( (DafnyAST.Expr.Const_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> (DafnyAST.Expr.Var_q d@@21) (exists ((|a#14#0#0| T@U) ) (! (= d@@21 (|#DafnyAST.Expr.Var| |a#14#0#0|))
 :qid |Compilerdfy.28:11|
 :skolemid |3595|
)))
 :qid |unknown.0:0|
 :skolemid |3596|
 :pattern ( (DafnyAST.Expr.Var_q d@@21))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (StackMachine.Instr.PushConst_q d@@22) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@22 (|#StackMachine.Instr.PushConst| |a#1#0#0@@0|))
 :qid |Compilerdfy.192:17|
 :skolemid |3734|
)))
 :qid |unknown.0:0|
 :skolemid |3735|
 :pattern ( (StackMachine.Instr.PushConst_q d@@22))
)))
(assert (forall ((d@@23 T@U) ) (!  (=> (StackMachine.Instr.PushVar_q d@@23) (exists ((|a#6#0#0| T@U) ) (! (= d@@23 (|#StackMachine.Instr.PushVar| |a#6#0#0|))
 :qid |Compilerdfy.193:15|
 :skolemid |3742|
)))
 :qid |unknown.0:0|
 :skolemid |3743|
 :pattern ( (StackMachine.Instr.PushVar_q d@@23))
)))
(assert (forall ((d@@24 T@U) ) (!  (=> (StackMachine.Instr.PopVar_q d@@24) (exists ((|a#25#0#0| T@U) ) (! (= d@@24 (|#StackMachine.Instr.PopVar| |a#25#0#0|))
 :qid |Compilerdfy.197:14|
 :skolemid |3758|
)))
 :qid |unknown.0:0|
 :skolemid |3759|
 :pattern ( (StackMachine.Instr.PopVar_q d@@24))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2927|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((LinkedList.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.LinkedList.List LinkedList.List$T@@2)) Tagclass.LinkedList.List) (= (TagFamily (Tclass.LinkedList.List LinkedList.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |3501|
 :pattern ( (Tclass.LinkedList.List LinkedList.List$T@@2))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass.DafnyAST.Expr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass.DafnyAST.Expr)))
 :qid |unknown.0:0|
 :skolemid |3499|
 :pattern ( ($IsBox bx Tclass.DafnyAST.Expr))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.StackMachine.Instr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.StackMachine.Instr)))
 :qid |unknown.0:0|
 :skolemid |3500|
 :pattern ( ($IsBox bx@@0 Tclass.StackMachine.Instr))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.DafnyAST.BinOp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.DafnyAST.BinOp)))
 :qid |unknown.0:0|
 :skolemid |3508|
 :pattern ( ($IsBox bx@@1 Tclass.DafnyAST.BinOp))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) (|e#0| T@U) ) (!  (=> (or (|Compiler.__default.compileExpr#canCall| |e#0|) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |e#0| Tclass.DafnyAST.Expr))) (and (=> (not (DafnyAST.Expr.Const_q |e#0|)) (=> (not (DafnyAST.Expr.Var_q |e#0|)) (and (=> (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0|)) (let ((|e2#2| (DafnyAST.Expr.e2 |e#0|)))
(let ((|e1#2| (DafnyAST.Expr.e1 |e#0|)))
 (and (and (|Compiler.__default.compileExpr#canCall| |e2#2|) (|Compiler.__default.compileExpr#canCall| |e1#2|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileExpr $ly@@2 |e2#2|) (Compiler.__default.compileExpr $ly@@2 |e1#2|)))))) (=> (not (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0|))) (let ((|e2#3| (DafnyAST.Expr.e2 |e#0|)))
(let ((|e1#3| (DafnyAST.Expr.e1 |e#0|)))
 (and (and (|Compiler.__default.compileExpr#canCall| |e2#3|) (|Compiler.__default.compileExpr#canCall| |e1#3|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileExpr $ly@@2 |e2#3|) (Compiler.__default.compileExpr $ly@@2 |e1#3|))))))))) (= (Compiler.__default.compileExpr ($LS $ly@@2) |e#0|) (ite (DafnyAST.Expr.Const_q |e#0|) (let ((|n#0| (DafnyAST.Expr.n |e#0|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (|#StackMachine.Instr.PushConst| |n#0|)) (Lit DatatypeTypeType |#LinkedList.List.Nil|))) (ite (DafnyAST.Expr.Var_q |e#0|) (let ((|v#0| (DafnyAST.Expr.v |e#0|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (|#StackMachine.Instr.PushVar| |v#0|)) (Lit DatatypeTypeType |#LinkedList.List.Nil|))) (ite (DafnyAST.BinOp.Add_q (DafnyAST.Expr.op |e#0|)) (let ((|e2#0| (DafnyAST.Expr.e2 |e#0|)))
(let ((|e1#0| (DafnyAST.Expr.e1 |e#0|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopAdd|)) (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Compiler.__default.compileExpr $ly@@2 |e2#0|) (Compiler.__default.compileExpr $ly@@2 |e1#0|))))) (let ((|e2#1| (DafnyAST.Expr.e2 |e#0|)))
(let ((|e1#1| (DafnyAST.Expr.e1 |e#0|)))
(|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopSub|)) (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Compiler.__default.compileExpr $ly@@2 |e2#1|) (Compiler.__default.compileExpr $ly@@2 |e1#1|)))))))))))
 :qid |Compilerdfy.253:12|
 :skolemid |3506|
 :pattern ( (Compiler.__default.compileExpr ($LS $ly@@2) |e#0|))
))))
(assert (= (Ctor SeqType) 5))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@3 T@U) (|e#0@@0| T@U) ) (!  (=> (or (|Compiler.__default.compileExpr#canCall| (Lit DatatypeTypeType |e#0@@0|)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@0| Tclass.DafnyAST.Expr))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@0|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@0|)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@0|))))))) (let ((|e2#6| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@0|)))))
(let ((|e1#6| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@0|)))))
 (and (and (|Compiler.__default.compileExpr#canCall| |e2#6|) (|Compiler.__default.compileExpr#canCall| |e1#6|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileExpr ($LS $ly@@3) |e2#6|) (Compiler.__default.compileExpr ($LS $ly@@3) |e1#6|)))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@0|)))))))) (let ((|e2#7| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@0|)))))
(let ((|e1#7| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@0|)))))
 (and (and (|Compiler.__default.compileExpr#canCall| |e2#7|) (|Compiler.__default.compileExpr#canCall| |e1#7|)) (|LinkedList.__default.Concat#canCall| Tclass.StackMachine.Instr (Compiler.__default.compileExpr ($LS $ly@@3) |e2#7|) (Compiler.__default.compileExpr ($LS $ly@@3) |e1#7|))))))))) (= (Compiler.__default.compileExpr ($LS $ly@@3) (Lit DatatypeTypeType |e#0@@0|)) (ite (DafnyAST.Expr.Const_q (Lit DatatypeTypeType |e#0@@0|)) (let ((|n#2| (LitInt (DafnyAST.Expr.n (Lit DatatypeTypeType |e#0@@0|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#StackMachine.Instr.PushConst| |n#2|))) (Lit DatatypeTypeType |#LinkedList.List.Nil|)))) (ite (DafnyAST.Expr.Var_q (Lit DatatypeTypeType |e#0@@0|)) (let ((|v#2| (Lit SeqType (DafnyAST.Expr.v (Lit DatatypeTypeType |e#0@@0|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#StackMachine.Instr.PushVar| |v#2|))) (Lit DatatypeTypeType |#LinkedList.List.Nil|)))) (ite (DafnyAST.BinOp.Add_q (Lit DatatypeTypeType (DafnyAST.Expr.op (Lit DatatypeTypeType |e#0@@0|)))) (let ((|e2#4| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@0|)))))
(let ((|e1#4| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@0|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopAdd|)) (Lit DatatypeTypeType (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $ly@@3) |e2#4|)) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $ly@@3) |e1#4|)))))))) (let ((|e2#5| (Lit DatatypeTypeType (DafnyAST.Expr.e2 (Lit DatatypeTypeType |e#0@@0|)))))
(let ((|e1#5| (Lit DatatypeTypeType (DafnyAST.Expr.e1 (Lit DatatypeTypeType |e#0@@0|)))))
(Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box DatatypeTypeType (Lit DatatypeTypeType |#StackMachine.Instr.PopSub|)) (Lit DatatypeTypeType (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $ly@@3) |e2#5|)) (Lit DatatypeTypeType (Compiler.__default.compileExpr ($LS $ly@@3) |e1#5|))))))))))))))
 :qid |Compilerdfy.253:12|
 :weight 3
 :skolemid |3507|
 :pattern ( (Compiler.__default.compileExpr ($LS $ly@@3) (Lit DatatypeTypeType |e#0@@0|)))
))))
(assert (forall (($Heap T@U) (LinkedList._default.Concat$T@@2 T@U) ($ly@@4 T@U) (|l1#0@@2| T@U) (|l2#0@@2| T@U) ) (!  (=> (and (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@2 |l1#0@@2| |l2#0@@2|) (and (and ($Is DatatypeTypeType |l1#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2)) ($IsAlloc DatatypeTypeType |l1#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap)) (and ($Is DatatypeTypeType |l2#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2)) ($IsAlloc DatatypeTypeType |l2#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@2 $ly@@4 |l1#0@@2| |l2#0@@2|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap))
 :qid |Compilerdfy.171:12|
 :skolemid |3691|
 :pattern ( ($IsAlloc DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@2 $ly@@4 |l1#0@@2| |l2#0@@2|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap))
)))
(assert (forall ((LinkedList.List$T@@3 T@U) (d@@25 T@U) ) (!  (=> ($Is DatatypeTypeType d@@25 (Tclass.LinkedList.List LinkedList.List$T@@3)) (or (LinkedList.List.Cons_q d@@25) (LinkedList.List.Nil_q d@@25)))
 :qid |unknown.0:0|
 :skolemid |3713|
 :pattern ( (LinkedList.List.Nil_q d@@25) ($Is DatatypeTypeType d@@25 (Tclass.LinkedList.List LinkedList.List$T@@3)))
 :pattern ( (LinkedList.List.Cons_q d@@25) ($Is DatatypeTypeType d@@25 (Tclass.LinkedList.List LinkedList.List$T@@3)))
)))
(assert (forall ((d@@26 T@U) ) (!  (=> ($Is DatatypeTypeType d@@26 Tclass.DafnyAST.BinOp) (or (DafnyAST.BinOp.Add_q d@@26) (DafnyAST.BinOp.Sub_q d@@26)))
 :qid |unknown.0:0|
 :skolemid |3581|
 :pattern ( (DafnyAST.BinOp.Sub_q d@@26) ($Is DatatypeTypeType d@@26 Tclass.DafnyAST.BinOp))
 :pattern ( (DafnyAST.BinOp.Add_q d@@26) ($Is DatatypeTypeType d@@26 Tclass.DafnyAST.BinOp))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2915|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (= (Ctor charType) 6))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |2918|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2926|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3109|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#LinkedList.List.Cons| |a#0#0#0| |a#0#1#0|)) |##LinkedList.List.Cons|)
 :qid |Compilerdfy.168:12|
 :skolemid |3695|
 :pattern ( (|#LinkedList.List.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (LinkedList.List.hd (|#LinkedList.List.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |Compilerdfy.168:12|
 :skolemid |3704|
 :pattern ( (|#LinkedList.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (LinkedList.List.tl (|#LinkedList.List.Cons| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |Compilerdfy.168:12|
 :skolemid |3706|
 :pattern ( (|#LinkedList.List.Cons| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@2) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2961|
 :pattern ( (|Seq#Index| v@@1 i@@2))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2962|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) (|a#23#2#0| T@U) ) (! (= (|#DafnyAST.Expr.Op| (Lit DatatypeTypeType |a#23#0#0|) (Lit DatatypeTypeType |a#23#1#0|) (Lit DatatypeTypeType |a#23#2#0|)) (Lit DatatypeTypeType (|#DafnyAST.Expr.Op| |a#23#0#0| |a#23#1#0| |a#23#2#0|)))
 :qid |Compilerdfy.29:10|
 :skolemid |3611|
 :pattern ( (|#DafnyAST.Expr.Op| (Lit DatatypeTypeType |a#23#0#0|) (Lit DatatypeTypeType |a#23#1#0|) (Lit DatatypeTypeType |a#23#2#0|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@5 T@U) (|e#0@@1| T@U) ) (!  (=> (or (|Compiler.__default.compileExpr#canCall| |e#0@@1|) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType |e#0@@1| Tclass.DafnyAST.Expr))) ($Is DatatypeTypeType (Compiler.__default.compileExpr $ly@@5 |e#0@@1|) (Tclass.LinkedList.List Tclass.StackMachine.Instr)))
 :qid |Compilerdfy.253:12|
 :skolemid |3504|
 :pattern ( (Compiler.__default.compileExpr $ly@@5 |e#0@@1|))
))))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2895|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2896|
 :pattern ( (TSeq t@@2))
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
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PushConst| |a#0#0#0@@0|)) |##StackMachine.Instr.PushConst|)
 :qid |Compilerdfy.192:17|
 :skolemid |3732|
 :pattern ( (|#StackMachine.Instr.PushConst| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (StackMachine.Instr.n (|#StackMachine.Instr.PushConst| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |Compilerdfy.192:17|
 :skolemid |3739|
 :pattern ( (|#StackMachine.Instr.PushConst| |a#4#0#0@@0|))
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
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#LinkedList.List.Cons| |a#5#0#0@@0| |a#5#1#0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |3705|
 :pattern ( (|#LinkedList.List.Cons| |a#5#0#0@@0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (DtRank |a#7#1#0|) (DtRank (|#LinkedList.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |3707|
 :pattern ( (|#LinkedList.List.Cons| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall (($ly@@6 T@U) (|e#0@@2| T@U) ) (! (= (Compiler.__default.compileExpr ($LS $ly@@6) |e#0@@2|) (Compiler.__default.compileExpr $ly@@6 |e#0@@2|))
 :qid |Compilerdfy.253:12|
 :skolemid |3497|
 :pattern ( (Compiler.__default.compileExpr ($LS $ly@@6) |e#0@@2|))
)))
(assert (forall ((|a#10#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Const| |a#10#0#0@@0|) Tclass.DafnyAST.Expr) ($Is intType (int_2_U |a#10#0#0@@0|) TInt))
 :qid |Compilerdfy.27:13|
 :skolemid |3589|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Const| |a#10#0#0@@0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((|a#2#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#2#0#0@@0|) Tclass.StackMachine.Instr) ($Is intType (int_2_U |a#2#0#0@@0|) TInt))
 :qid |Compilerdfy.192:17|
 :skolemid |3736|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#2#0#0@@0|) Tclass.StackMachine.Instr))
)))
(assert (forall ((|a#19#0#0| T@U) ) (! (< (|Seq#Rank| |a#19#0#0|) (DtRank (|#DafnyAST.Expr.Var| |a#19#0#0|)))
 :qid |Compilerdfy.28:11|
 :skolemid |3602|
 :pattern ( (|#DafnyAST.Expr.Var| |a#19#0#0|))
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
(assert (forall ((d@@27 T@U) (LinkedList.List$T@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (LinkedList.List.Cons_q d@@27) ($IsAlloc DatatypeTypeType d@@27 (Tclass.LinkedList.List LinkedList.List$T@@5) $h@@0))) ($IsAllocBox (LinkedList.List.hd d@@27) LinkedList.List$T@@5 $h@@0))
 :qid |unknown.0:0|
 :skolemid |3701|
 :pattern ( ($IsAllocBox (LinkedList.List.hd d@@27) LinkedList.List$T@@5 $h@@0))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |9878|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@28 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (DafnyAST.Expr.Const_q d@@28) ($IsAlloc DatatypeTypeType d@@28 Tclass.DafnyAST.Expr $h@@1))) ($IsAlloc intType (int_2_U (DafnyAST.Expr.n d@@28)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |3590|
 :pattern ( ($IsAlloc intType (int_2_U (DafnyAST.Expr.n d@@28)) TInt $h@@1))
)))
(assert (forall ((d@@29 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (StackMachine.Instr.PushConst_q d@@29) ($IsAlloc DatatypeTypeType d@@29 Tclass.StackMachine.Instr $h@@2))) ($IsAlloc intType (int_2_U (StackMachine.Instr.n d@@29)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |3737|
 :pattern ( ($IsAlloc intType (int_2_U (StackMachine.Instr.n d@@29)) TInt $h@@2))
)))
(assert (forall ((d@@30 T@U) ) (!  (=> ($Is DatatypeTypeType d@@30 Tclass.DafnyAST.Expr) (or (or (DafnyAST.Expr.Const_q d@@30) (DafnyAST.Expr.Var_q d@@30)) (DafnyAST.Expr.Op_q d@@30)))
 :qid |unknown.0:0|
 :skolemid |3620|
 :pattern ( (DafnyAST.Expr.Op_q d@@30) ($Is DatatypeTypeType d@@30 Tclass.DafnyAST.Expr))
 :pattern ( (DafnyAST.Expr.Var_q d@@30) ($Is DatatypeTypeType d@@30 Tclass.DafnyAST.Expr))
 :pattern ( (DafnyAST.Expr.Const_q d@@30) ($Is DatatypeTypeType d@@30 Tclass.DafnyAST.Expr))
)))
(assert (forall ((d@@31 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@31)) (DtRank d@@31))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2972|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@31)))
)))
(assert (forall ((LinkedList._default.Concat$T@@3 T@U) ($ly@@7 T@U) (|l1#0@@3| T@U) (|l2#0@@3| T@U) ) (! (= (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 ($LS $ly@@7) |l1#0@@3| |l2#0@@3|) (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 $ly@@7 |l1#0@@3| |l2#0@@3|))
 :qid |unknown.0:0|
 :skolemid |3688|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 ($LS $ly@@7) |l1#0@@3| |l2#0@@3|))
)))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2923|
 :pattern ( ($IsBox bx@@4 (TSeq t@@3)))
)))
(assert (forall ((LinkedList.List$T@@6 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.LinkedList.List LinkedList.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass.LinkedList.List LinkedList.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |3503|
 :pattern ( ($IsBox bx@@5 (Tclass.LinkedList.List LinkedList.List$T@@6)))
)))
(assert (forall ((d@@32 T@U) (LinkedList.List$T@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (LinkedList.List.Cons_q d@@32) ($IsAlloc DatatypeTypeType d@@32 (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@3))) ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@32) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |3702|
 :pattern ( ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@32) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@3))
)))
(assert (forall ((d@@33 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@33 Tclass.DafnyAST.BinOp)) ($IsAlloc DatatypeTypeType d@@33 Tclass.DafnyAST.BinOp $h@@4))
 :qid |unknown.0:0|
 :skolemid |3579|
 :pattern ( ($IsAlloc DatatypeTypeType d@@33 Tclass.DafnyAST.BinOp $h@@4))
)))
(assert (forall ((d@@34 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@34 Tclass.DafnyAST.Expr)) ($IsAlloc DatatypeTypeType d@@34 Tclass.DafnyAST.Expr $h@@5))
 :qid |unknown.0:0|
 :skolemid |3618|
 :pattern ( ($IsAlloc DatatypeTypeType d@@34 Tclass.DafnyAST.Expr $h@@5))
)))
(assert (forall ((d@@35 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@35 Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType d@@35 Tclass.StackMachine.Instr $h@@6))
 :qid |unknown.0:0|
 :skolemid |3766|
 :pattern ( ($IsAlloc DatatypeTypeType d@@35 Tclass.StackMachine.Instr $h@@6))
)))
(assert (= (Tag Tclass.DafnyAST.Expr) Tagclass.DafnyAST.Expr))
(assert (= (TagFamily Tclass.DafnyAST.Expr) tytagFamily$Expr))
(assert (= (Tag Tclass.StackMachine.Instr) Tagclass.StackMachine.Instr))
(assert (= (TagFamily Tclass.StackMachine.Instr) tytagFamily$Instr))
(assert (= (Tag Tclass.DafnyAST.BinOp) Tagclass.DafnyAST.BinOp))
(assert (= (TagFamily Tclass.DafnyAST.BinOp) tytagFamily$BinOp))
(assert (forall ((d@@36 T@U) ) (!  (=> ($Is DatatypeTypeType d@@36 Tclass.StackMachine.Instr) (or (or (or (or (or (StackMachine.Instr.PushConst_q d@@36) (StackMachine.Instr.PushVar_q d@@36)) (StackMachine.Instr.PopAdd_q d@@36)) (StackMachine.Instr.PopSub_q d@@36)) (StackMachine.Instr.PopPrint_q d@@36)) (StackMachine.Instr.PopVar_q d@@36)))
 :qid |unknown.0:0|
 :skolemid |3768|
 :pattern ( (StackMachine.Instr.PopVar_q d@@36) ($Is DatatypeTypeType d@@36 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopPrint_q d@@36) ($Is DatatypeTypeType d@@36 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopSub_q d@@36) ($Is DatatypeTypeType d@@36 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopAdd_q d@@36) ($Is DatatypeTypeType d@@36 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushVar_q d@@36) ($Is DatatypeTypeType d@@36 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushConst_q d@@36) ($Is DatatypeTypeType d@@36 Tclass.StackMachine.Instr))
)))
(assert (= |#DafnyAST.BinOp.Add| (Lit DatatypeTypeType |#DafnyAST.BinOp.Add|)))
(assert (= |#DafnyAST.BinOp.Sub| (Lit DatatypeTypeType |#DafnyAST.BinOp.Sub|)))
(assert (= |#LinkedList.List.Nil| (Lit DatatypeTypeType |#LinkedList.List.Nil|)))
(assert (= |#StackMachine.Instr.PopAdd| (Lit DatatypeTypeType |#StackMachine.Instr.PopAdd|)))
(assert (= |#StackMachine.Instr.PopSub| (Lit DatatypeTypeType |#StackMachine.Instr.PopSub|)))
(assert (= |#StackMachine.Instr.PopPrint| (Lit DatatypeTypeType |#StackMachine.Instr.PopPrint|)))
(assert (forall ((|a#15#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#DafnyAST.Expr.Var| |a#15#0#0|) Tclass.DafnyAST.Expr) ($Is SeqType |a#15#0#0| (TSeq TChar)))
 :qid |Compilerdfy.28:11|
 :skolemid |3597|
 :pattern ( ($Is DatatypeTypeType (|#DafnyAST.Expr.Var| |a#15#0#0|) Tclass.DafnyAST.Expr))
)))
(assert (forall ((|a#7#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#7#0#0@@0|) Tclass.StackMachine.Instr) ($Is SeqType |a#7#0#0@@0| (TSeq TChar)))
 :qid |Compilerdfy.193:15|
 :skolemid |3744|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#7#0#0@@0|) Tclass.StackMachine.Instr))
)))
(assert (forall ((|a#26#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#26#0#0@@0|) Tclass.StackMachine.Instr) ($Is SeqType |a#26#0#0@@0| (TSeq TChar)))
 :qid |Compilerdfy.197:14|
 :skolemid |3760|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#26#0#0@@0|) Tclass.StackMachine.Instr))
)))
(assert (forall ((d@@37 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (DafnyAST.Expr.Var_q d@@37) ($IsAlloc DatatypeTypeType d@@37 Tclass.DafnyAST.Expr $h@@7))) ($IsAlloc SeqType (DafnyAST.Expr.v d@@37) (TSeq TChar) $h@@7))
 :qid |unknown.0:0|
 :skolemid |3598|
 :pattern ( ($IsAlloc SeqType (DafnyAST.Expr.v d@@37) (TSeq TChar) $h@@7))
)))
(assert (forall ((d@@38 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (StackMachine.Instr.PushVar_q d@@38) ($IsAlloc DatatypeTypeType d@@38 Tclass.StackMachine.Instr $h@@8))) ($IsAlloc SeqType (StackMachine.Instr.v d@@38) (TSeq TChar) $h@@8))
 :qid |unknown.0:0|
 :skolemid |3745|
 :pattern ( ($IsAlloc SeqType (StackMachine.Instr.v d@@38) (TSeq TChar) $h@@8))
)))
(assert (forall ((d@@39 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (StackMachine.Instr.PopVar_q d@@39) ($IsAlloc DatatypeTypeType d@@39 Tclass.StackMachine.Instr $h@@9))) ($IsAlloc SeqType (StackMachine.Instr.v d@@39) (TSeq TChar) $h@@9))
 :qid |unknown.0:0|
 :skolemid |3761|
 :pattern ( ($IsAlloc SeqType (StackMachine.Instr.v d@@39) (TSeq TChar) $h@@9))
)))
(assert (forall ((d@@40 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (DafnyAST.Expr.Op_q d@@40) ($IsAlloc DatatypeTypeType d@@40 Tclass.DafnyAST.Expr $h@@10))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.op d@@40) Tclass.DafnyAST.BinOp $h@@10))
 :qid |unknown.0:0|
 :skolemid |3608|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.op d@@40) Tclass.DafnyAST.BinOp $h@@10))
)))
(assert (forall ((d@@41 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (DafnyAST.Expr.Op_q d@@41) ($IsAlloc DatatypeTypeType d@@41 Tclass.DafnyAST.Expr $h@@11))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e1 d@@41) Tclass.DafnyAST.Expr $h@@11))
 :qid |unknown.0:0|
 :skolemid |3609|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e1 d@@41) Tclass.DafnyAST.Expr $h@@11))
)))
(assert (forall ((d@@42 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (DafnyAST.Expr.Op_q d@@42) ($IsAlloc DatatypeTypeType d@@42 Tclass.DafnyAST.Expr $h@@12))) ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e2 d@@42) Tclass.DafnyAST.Expr $h@@12))
 :qid |unknown.0:0|
 :skolemid |3610|
 :pattern ( ($IsAlloc DatatypeTypeType (DafnyAST.Expr.e2 d@@42) Tclass.DafnyAST.Expr $h@@12))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#LinkedList.List.Cons| (Lit BoxType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)) (Lit DatatypeTypeType (|#LinkedList.List.Cons| |a#3#0#0| |a#3#1#0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |3703|
 :pattern ( (|#LinkedList.List.Cons| (Lit BoxType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)))
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
(assert (forall ((|a#3#0#0@@0| Int) ) (! (= (|#StackMachine.Instr.PushConst| (LitInt |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#3#0#0@@0|)))
 :qid |Compilerdfy.192:17|
 :skolemid |3738|
 :pattern ( (|#StackMachine.Instr.PushConst| (LitInt |a#3#0#0@@0|)))
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
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3110|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2949|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@3 T@U) ) (! ($IsAlloc charType v@@3 TChar h@@2)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |2952|
 :pattern ( ($IsAlloc charType v@@3 TChar h@@2))
)))
(assert (forall ((LinkedList.List$T@@8 T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@0| T@U) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@1| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@13)  (and ($IsAllocBox |a#2#0#0@@1| LinkedList.List$T@@8 $h@@13) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@13))))
 :qid |unknown.0:0|
 :skolemid |3700|
 :pattern ( ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@1| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@13))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@3) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2941|
 :pattern ( (|Seq#Index| v@@4 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2942|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert (forall ((s@@1 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@4))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |3155|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@4))))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2928|
 :pattern ( ($Is intType v@@5 TInt))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is charType v@@6 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |2931|
 :pattern ( ($Is charType v@@6 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_mcc#2#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |_mcc#4#0| () T@U)
(declare-fun |e2#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |_mcc#3#0| () T@U)
(declare-fun |e1#Z#0@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |e#0@@3| () T@U)
(declare-fun |##l1#0@0| () T@U)
(declare-fun |let#2#0#0| () T@U)
(declare-fun |e2#Z#1@0| () T@U)
(declare-fun |let#3#0#0| () T@U)
(declare-fun |e1#Z#1@0| () T@U)
(declare-fun |##l1#1@0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |_mcc#0#0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Compiler.__default.compileExpr)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon17_Else_correct true))
(let ((anon17_Then_correct  (=> (and (and (and (= |_mcc#2#0| |#DafnyAST.BinOp.Sub|) (= |let#0#0#0| |_mcc#4#0|)) (and ($Is DatatypeTypeType |let#0#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#0@0| |let#0#0#0|))) (and (and (= |let#1#0#0| |_mcc#3#0|) ($Is DatatypeTypeType |let#1#0#0| Tclass.DafnyAST.Expr)) (and (= |e1#Z#0@0| |let#1#0#0|) ($IsAlloc DatatypeTypeType |e2#Z#0@0| Tclass.DafnyAST.Expr $Heap@@0)))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< (DtRank |e2#Z#0@0|) (DtRank |e#0@@3|))) (=> (< (DtRank |e2#Z#0@0|) (DtRank |e#0@@3|)) (=> (|Compiler.__default.compileExpr#canCall| |e2#Z#0@0|) (=> (and (and (= |##l1#0@0| (Compiler.__default.compileExpr ($LS $LZ) |e2#Z#0@0|)) ($IsAlloc DatatypeTypeType |##l1#0@0| (Tclass.LinkedList.List Tclass.StackMachine.Instr) $Heap@@0)) (and ($IsAlloc DatatypeTypeType |e1#Z#0@0| Tclass.DafnyAST.Expr $Heap@@0) (= (ControlFlow 0 9) (- 0 8)))) (< (DtRank |e1#Z#0@0|) (DtRank |e#0@@3|)))))))))
(let ((anon16_Else_correct  (=> (or (not (= |_mcc#2#0| |#DafnyAST.BinOp.Add|)) (not true)) (and (=> (= (ControlFlow 0 12) 9) anon17_Then_correct) (=> (= (ControlFlow 0 12) 11) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (and (and (and (= |_mcc#2#0| |#DafnyAST.BinOp.Add|) (= |let#2#0#0| |_mcc#4#0|)) (and ($Is DatatypeTypeType |let#2#0#0| Tclass.DafnyAST.Expr) (= |e2#Z#1@0| |let#2#0#0|))) (and (and (= |let#3#0#0| |_mcc#3#0|) ($Is DatatypeTypeType |let#3#0#0| Tclass.DafnyAST.Expr)) (and (= |e1#Z#1@0| |let#3#0#0|) ($IsAlloc DatatypeTypeType |e2#Z#1@0| Tclass.DafnyAST.Expr $Heap@@0)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (< (DtRank |e2#Z#1@0|) (DtRank |e#0@@3|))) (=> (< (DtRank |e2#Z#1@0|) (DtRank |e#0@@3|)) (=> (|Compiler.__default.compileExpr#canCall| |e2#Z#1@0|) (=> (and (and (= |##l1#1@0| (Compiler.__default.compileExpr ($LS $LZ) |e2#Z#1@0|)) ($IsAlloc DatatypeTypeType |##l1#1@0| (Tclass.LinkedList.List Tclass.StackMachine.Instr) $Heap@@0)) (and ($IsAlloc DatatypeTypeType |e1#Z#1@0| Tclass.DafnyAST.Expr $Heap@@0) (= (ControlFlow 0 6) (- 0 5)))) (< (DtRank |e1#Z#1@0|) (DtRank |e#0@@3|)))))))))
(let ((anon15_Then_correct  (=> (and (and (= |e#0@@3| (|#DafnyAST.Expr.Op| |_mcc#2#0| |_mcc#3#0| |_mcc#4#0|)) ($Is DatatypeTypeType |_mcc#2#0| Tclass.DafnyAST.BinOp)) (and ($Is DatatypeTypeType |_mcc#3#0| Tclass.DafnyAST.Expr) ($Is DatatypeTypeType |_mcc#4#0| Tclass.DafnyAST.Expr))) (and (=> (= (ControlFlow 0 13) 6) anon16_Then_correct) (=> (= (ControlFlow 0 13) 12) anon16_Else_correct)))))
(let ((anon15_Else_correct true))
(let ((anon14_Else_correct  (=> (or (not (= |e#0@@3| (|#DafnyAST.Expr.Var| |_mcc#1#0|))) (not true)) (and (=> (= (ControlFlow 0 14) 13) anon15_Then_correct) (=> (= (ControlFlow 0 14) 4) anon15_Else_correct)))))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct  (=> (or (not (= |e#0@@3| (|#DafnyAST.Expr.Const| |_mcc#0#0|))) (not true)) (and (=> (= (ControlFlow 0 15) 3) anon14_Then_correct) (=> (= (ControlFlow 0 15) 14) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (and (=> (= (ControlFlow 0 16) 1) anon12_Then_correct) (=> (= (ControlFlow 0 16) 2) anon13_Then_correct)) (=> (= (ControlFlow 0 16) 15) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) ($Is DatatypeTypeType |e#0@@3| Tclass.DafnyAST.Expr)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 17) 16))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
