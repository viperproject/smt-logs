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
(declare-fun Tagclass.StackMachine.Instr () T@U)
(declare-fun Tagclass.LinkedList.List () T@U)
(declare-fun Tagclass.System.String () T@U)
(declare-fun Tagclass.System_mCollections_mGeneric.List () T@U)
(declare-fun |##LinkedList.List.Cons| () T@U)
(declare-fun |##LinkedList.List.Nil| () T@U)
(declare-fun |##StackMachine.Instr.PushConst| () T@U)
(declare-fun |##StackMachine.Instr.PushVar| () T@U)
(declare-fun |##StackMachine.Instr.PopAdd| () T@U)
(declare-fun |##StackMachine.Instr.PopSub| () T@U)
(declare-fun |##StackMachine.Instr.PopPrint| () T@U)
(declare-fun |##StackMachine.Instr.PopVar| () T@U)
(declare-fun Tagclass.System_mCollections_mGeneric.List? () T@U)
(declare-fun Tagclass.System.String? () T@U)
(declare-fun tytagFamily$Instr () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$String () T@U)
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
(declare-fun PrettyPrint.__default.prettyPrintNum (T@U Int T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |PrettyPrint.__default.prettyPrintNum#canCall| (Int T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Div (Int Int) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun charType () T@T)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun PrettyPrint.__default.prettyPrintInstr (T@U) T@U)
(declare-fun |PrettyPrint.__default.prettyPrintInstr#canCall| (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.StackMachine.Instr () T@U)
(declare-fun |#StackMachine.Instr.PushVar| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |#StackMachine.Instr.PopVar| (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.System_mCollections_mGeneric.List (T@U) T@U)
(declare-fun Tclass.System_mCollections_mGeneric.List? (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#LinkedList.List.Nil| () T@U)
(declare-fun |#StackMachine.Instr.PopAdd| () T@U)
(declare-fun |#StackMachine.Instr.PopSub| () T@U)
(declare-fun |#StackMachine.Instr.PopPrint| () T@U)
(declare-fun Tclass.System.String? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.System.String () T@U)
(declare-fun Tclass.LinkedList.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |#LinkedList.List.Cons| (T@U T@U) T@U)
(declare-fun LinkedList.List.Cons_q (T@U) Bool)
(declare-fun LinkedList.List.Nil_q (T@U) Bool)
(declare-fun StackMachine.Instr.PushConst_q (T@U) Bool)
(declare-fun StackMachine.Instr.PushVar_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopAdd_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopSub_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopPrint_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopVar_q (T@U) Bool)
(declare-fun |#StackMachine.Instr.PushConst| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#LinkedList.List| (T@U) Bool)
(declare-fun LinkedList.List.hd (T@U) T@U)
(declare-fun LinkedList.List.tl (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.LinkedList.List_0 (T@U) T@U)
(declare-fun Tclass.System_mCollections_mGeneric.List_0 (T@U) T@U)
(declare-fun StackMachine.Instr.n (T@U) Int)
(declare-fun StackMachine.Instr.v (T@U) T@U)
(declare-fun Tclass.System_mCollections_mGeneric.List?_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun $LZ () T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSeq alloc Tagclass.StackMachine.Instr Tagclass.LinkedList.List Tagclass.System.String Tagclass.System_mCollections_mGeneric.List |##LinkedList.List.Cons| |##LinkedList.List.Nil| |##StackMachine.Instr.PushConst| |##StackMachine.Instr.PushVar| |##StackMachine.Instr.PopAdd| |##StackMachine.Instr.PopSub| |##StackMachine.Instr.PopPrint| |##StackMachine.Instr.PopVar| Tagclass.System_mCollections_mGeneric.List? Tagclass.System.String? tytagFamily$Instr tytagFamily$List tytagFamily$String)
)
(assert  (and (= (Ctor SeqType) 3) (= (Ctor charType) 4)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|n#0| Int) (|zero#0| T@U) ) (!  (=> (or (|PrettyPrint.__default.prettyPrintNum#canCall| (LitInt |n#0|) |zero#0|) (and (< 0 $FunctionContextHeight) ($Is SeqType |zero#0| (TSeq TChar)))) (and (=> (or (not (= (LitInt |n#0|) (LitInt 0))) (not true)) (and (=> (U_2_bool (Lit boolType (bool_2_U (< |n#0| 0)))) (|PrettyPrint.__default.prettyPrintNum#canCall| (LitInt (- 0 |n#0|)) |zero#0|)) (=> (not (U_2_bool (Lit boolType (bool_2_U (< |n#0| 0))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (< |n#0| 10))))) (and (=> (>= (LitInt |n#0|) (LitInt 10)) (and (|PrettyPrint.__default.prettyPrintNum#canCall| (LitInt (Div |n#0| (LitInt 10))) (Lit SeqType |Seq#Empty|)) (|PrettyPrint.__default.prettyPrintNum#canCall| (LitInt (Mod |n#0| (LitInt 10))) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48))))))) (=> (> (LitInt 10) (LitInt |n#0|)) (|PrettyPrint.__default.prettyPrintNum#canCall| (LitInt |n#0|) |zero#0|))))))) (= (PrettyPrint.__default.prettyPrintNum ($LS $ly) (LitInt |n#0|) |zero#0|) (ite (= (LitInt |n#0|) (LitInt 0)) |zero#0| (ite (< |n#0| 0) (PrettyPrint.__default.prettyPrintNum ($LS $ly) (LitInt (- 0 |n#0|)) |zero#0|) (ite (< |n#0| 10) ($Unbox SeqType (|Seq#Index| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 49)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 50)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 51)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 52)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 53)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 54)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 55)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 56)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 57))))))) (LitInt |n#0|))) (ite (>= (LitInt |n#0|) (LitInt 10)) (|Seq#Append| (PrettyPrint.__default.prettyPrintNum ($LS $ly) (LitInt (Div |n#0| (LitInt 10))) (Lit SeqType |Seq#Empty|)) (PrettyPrint.__default.prettyPrintNum ($LS $ly) (LitInt (Mod |n#0| (LitInt 10))) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48)))))) (PrettyPrint.__default.prettyPrintNum ($LS $ly) (LitInt |n#0|) |zero#0|))))))))
 :qid |Compilerdfy.544:12|
 :weight 3
 :skolemid |8619|
 :pattern ( (PrettyPrint.__default.prettyPrintNum ($LS $ly) (LitInt |n#0|) |zero#0|))
))))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 5))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|instr#0| T@U) ) (!  (=> (or (|PrettyPrint.__default.prettyPrintInstr#canCall| |instr#0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |instr#0| Tclass.StackMachine.Instr))) ($Is SeqType (PrettyPrint.__default.prettyPrintInstr |instr#0|) (TSeq TChar)))
 :qid |Compilerdfy.554:29|
 :skolemid |8626|
 :pattern ( (PrettyPrint.__default.prettyPrintInstr |instr#0|))
))))
(assert (forall ((|a#10#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#10#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#10#0#0| i))) (DtRank (|#StackMachine.Instr.PushVar| |a#10#0#0|))))
 :qid |Compilerdfy.193:15|
 :skolemid |8707|
 :pattern ( (|Seq#Index| |a#10#0#0| i) (|#StackMachine.Instr.PushVar| |a#10#0#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#29#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#29#0#0| i@@0))) (DtRank (|#StackMachine.Instr.PopVar| |a#29#0#0|))))
 :qid |Compilerdfy.197:14|
 :skolemid |8723|
 :pattern ( (|Seq#Index| |a#29#0#0| i@@0) (|#StackMachine.Instr.PopVar| |a#29#0#0|))
)))
(assert (= (Ctor refType) 6))
(assert (forall ((System.Collections.Generic.List$T T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T) $h) ($IsAlloc refType |c#0| (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T) $h))
 :qid |unknown.0:0|
 :skolemid |8765|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T) $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#LinkedList.List.Nil|) |##LinkedList.List.Nil|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopAdd|) |##StackMachine.Instr.PopAdd|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopSub|) |##StackMachine.Instr.PopSub|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopPrint|) |##StackMachine.Instr.PopPrint|))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.System.String?)  (or (= $o null) (= (dtype $o) Tclass.System.String?)))
 :qid |unknown.0:0|
 :skolemid |8767|
 :pattern ( ($Is refType $o Tclass.System.String?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|n#0@@0| Int) (|zero#0@@0| T@U) ) (!  (=> (or (|PrettyPrint.__default.prettyPrintNum#canCall| |n#0@@0| |zero#0@@0|) (and (< 0 $FunctionContextHeight) ($Is SeqType |zero#0@@0| (TSeq TChar)))) (and (=> (or (not (= |n#0@@0| (LitInt 0))) (not true)) (and (=> (< |n#0@@0| 0) (|PrettyPrint.__default.prettyPrintNum#canCall| (- 0 |n#0@@0|) |zero#0@@0|)) (=> (<= 0 |n#0@@0|) (=> (<= 10 |n#0@@0|) (and (=> (>= |n#0@@0| (LitInt 10)) (and (|PrettyPrint.__default.prettyPrintNum#canCall| (Div |n#0@@0| (LitInt 10)) (Lit SeqType |Seq#Empty|)) (|PrettyPrint.__default.prettyPrintNum#canCall| (Mod |n#0@@0| (LitInt 10)) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48))))))) (=> (> (LitInt 10) |n#0@@0|) (|PrettyPrint.__default.prettyPrintNum#canCall| |n#0@@0| |zero#0@@0|))))))) (= (PrettyPrint.__default.prettyPrintNum ($LS $ly@@0) |n#0@@0| |zero#0@@0|) (ite (= |n#0@@0| (LitInt 0)) |zero#0@@0| (ite (< |n#0@@0| 0) (PrettyPrint.__default.prettyPrintNum $ly@@0 (- 0 |n#0@@0|) |zero#0@@0|) (ite (< |n#0@@0| 10) ($Unbox SeqType (|Seq#Index| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 49)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 50)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 51)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 52)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 53)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 54)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 55)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 56)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 57))))))) |n#0@@0|)) (ite (>= |n#0@@0| (LitInt 10)) (|Seq#Append| (PrettyPrint.__default.prettyPrintNum $ly@@0 (Div |n#0@@0| (LitInt 10)) (Lit SeqType |Seq#Empty|)) (PrettyPrint.__default.prettyPrintNum $ly@@0 (Mod |n#0@@0| (LitInt 10)) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48)))))) (PrettyPrint.__default.prettyPrintNum $ly@@0 |n#0@@0| |zero#0@@0|))))))))
 :qid |Compilerdfy.544:12|
 :skolemid |8618|
 :pattern ( (PrettyPrint.__default.prettyPrintNum ($LS $ly@@0) |n#0@@0| |zero#0@@0|))
))))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.System.String $h@@0) ($IsAlloc refType |c#0@@0| Tclass.System.String? $h@@0))
 :qid |unknown.0:0|
 :skolemid |8770|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.System.String $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.System.String? $h@@0))
)))
(assert (forall ((LinkedList.List$T T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T) $h@@1))
 :qid |unknown.0:0|
 :skolemid |8669|
 :pattern ( ($IsAlloc DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T) $h@@1))
)))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopAdd| Tclass.StackMachine.Instr))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopSub| Tclass.StackMachine.Instr))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopPrint| Tclass.StackMachine.Instr))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 7)) (= (Ctor BoxType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((System.Collections.Generic.List$T@@0 T@U) ($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@0) $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |8761|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@0) $h@@2))
)))
(assert (forall ((LinkedList.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |8668|
 :pattern ( ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T@@0)))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.System.String? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |8768|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.System.String? $h@@3))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |8123|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |8124|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |8022|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |8020|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |8263|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((LinkedList.List$T@@1 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.LinkedList.List LinkedList.List$T@@1))  (and ($IsBox |a#2#0#0| LinkedList.List$T@@1) ($Is DatatypeTypeType |a#2#1#0| (Tclass.LinkedList.List LinkedList.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |8657|
 :pattern ( ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.LinkedList.List LinkedList.List$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (LinkedList.List.Cons_q d) (= (DatatypeCtorId d) |##LinkedList.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |8654|
 :pattern ( (LinkedList.List.Cons_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (LinkedList.List.Nil_q d@@0) (= (DatatypeCtorId d@@0) |##LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |8666|
 :pattern ( (LinkedList.List.Nil_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (StackMachine.Instr.PushConst_q d@@1) (= (DatatypeCtorId d@@1) |##StackMachine.Instr.PushConst|))
 :qid |unknown.0:0|
 :skolemid |8692|
 :pattern ( (StackMachine.Instr.PushConst_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (StackMachine.Instr.PushVar_q d@@2) (= (DatatypeCtorId d@@2) |##StackMachine.Instr.PushVar|))
 :qid |unknown.0:0|
 :skolemid |8700|
 :pattern ( (StackMachine.Instr.PushVar_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (StackMachine.Instr.PopAdd_q d@@3) (= (DatatypeCtorId d@@3) |##StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |8709|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (StackMachine.Instr.PopSub_q d@@4) (= (DatatypeCtorId d@@4) |##StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |8711|
 :pattern ( (StackMachine.Instr.PopSub_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (StackMachine.Instr.PopPrint_q d@@5) (= (DatatypeCtorId d@@5) |##StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |8713|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (StackMachine.Instr.PopVar_q d@@6) (= (DatatypeCtorId d@@6) |##StackMachine.Instr.PopVar|))
 :qid |unknown.0:0|
 :skolemid |8716|
 :pattern ( (StackMachine.Instr.PopVar_q d@@6))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |8031|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (LinkedList.List.Cons_q d@@7) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@7 (|#LinkedList.List.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |Compilerdfy.168:12|
 :skolemid |8655|
)))
 :qid |unknown.0:0|
 :skolemid |8656|
 :pattern ( (LinkedList.List.Cons_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (LinkedList.List.Nil_q d@@8) (= d@@8 |#LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |8667|
 :pattern ( (LinkedList.List.Nil_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (StackMachine.Instr.PopAdd_q d@@9) (= d@@9 |#StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |8710|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (StackMachine.Instr.PopSub_q d@@10) (= d@@10 |#StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |8712|
 :pattern ( (StackMachine.Instr.PopSub_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (StackMachine.Instr.PopPrint_q d@@11) (= d@@11 |#StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |8714|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (StackMachine.Instr.PushConst_q d@@12) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@12 (|#StackMachine.Instr.PushConst| |a#1#0#0@@0|))
 :qid |Compilerdfy.192:17|
 :skolemid |8693|
)))
 :qid |unknown.0:0|
 :skolemid |8694|
 :pattern ( (StackMachine.Instr.PushConst_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (StackMachine.Instr.PushVar_q d@@13) (exists ((|a#6#0#0| T@U) ) (! (= d@@13 (|#StackMachine.Instr.PushVar| |a#6#0#0|))
 :qid |Compilerdfy.193:15|
 :skolemid |8701|
)))
 :qid |unknown.0:0|
 :skolemid |8702|
 :pattern ( (StackMachine.Instr.PushVar_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (StackMachine.Instr.PopVar_q d@@14) (exists ((|a#25#0#0| T@U) ) (! (= d@@14 (|#StackMachine.Instr.PopVar| |a#25#0#0|))
 :qid |Compilerdfy.197:14|
 :skolemid |8717|
)))
 :qid |unknown.0:0|
 :skolemid |8718|
 :pattern ( (StackMachine.Instr.PopVar_q d@@14))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |8229|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) (|n#0@@1| Int) (|zero#0@@1| T@U) ) (!  (=> (or (|PrettyPrint.__default.prettyPrintNum#canCall| (LitInt |n#0@@1|) (Lit SeqType |zero#0@@1|)) (and (< 0 $FunctionContextHeight) ($Is SeqType |zero#0@@1| (TSeq TChar)))) (and (=> (or (not (= (LitInt |n#0@@1|) (LitInt 0))) (not true)) (and (=> (U_2_bool (Lit boolType (bool_2_U (< |n#0@@1| 0)))) (|PrettyPrint.__default.prettyPrintNum#canCall| (LitInt (- 0 |n#0@@1|)) (Lit SeqType |zero#0@@1|))) (=> (not (U_2_bool (Lit boolType (bool_2_U (< |n#0@@1| 0))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (< |n#0@@1| 10))))) (and (=> (>= (LitInt |n#0@@1|) (LitInt 10)) (and (|PrettyPrint.__default.prettyPrintNum#canCall| (LitInt (Div |n#0@@1| (LitInt 10))) (Lit SeqType |Seq#Empty|)) (|PrettyPrint.__default.prettyPrintNum#canCall| (LitInt (Mod |n#0@@1| (LitInt 10))) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48))))))) (=> (> (LitInt 10) (LitInt |n#0@@1|)) (|PrettyPrint.__default.prettyPrintNum#canCall| (LitInt |n#0@@1|) (Lit SeqType |zero#0@@1|)))))))) (= (PrettyPrint.__default.prettyPrintNum ($LS $ly@@1) (LitInt |n#0@@1|) (Lit SeqType |zero#0@@1|)) (ite (= (LitInt |n#0@@1|) (LitInt 0)) |zero#0@@1| (ite (< |n#0@@1| 0) (PrettyPrint.__default.prettyPrintNum ($LS $ly@@1) (LitInt (- 0 |n#0@@1|)) (Lit SeqType |zero#0@@1|)) (ite (< |n#0@@1| 10) ($Unbox SeqType (|Seq#Index| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 49)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 50)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 51)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 52)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 53)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 54)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 55)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 56)))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 57))))))) (LitInt |n#0@@1|))) (ite (>= (LitInt |n#0@@1|) (LitInt 10)) (|Seq#Append| (PrettyPrint.__default.prettyPrintNum ($LS $ly@@1) (LitInt (Div |n#0@@1| (LitInt 10))) (Lit SeqType |Seq#Empty|)) (PrettyPrint.__default.prettyPrintNum ($LS $ly@@1) (LitInt (Mod |n#0@@1| (LitInt 10))) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48)))))) (PrettyPrint.__default.prettyPrintNum ($LS $ly@@1) (LitInt |n#0@@1|) (Lit SeqType |zero#0@@1|)))))))))
 :qid |Compilerdfy.544:12|
 :weight 3
 :skolemid |8620|
 :pattern ( (PrettyPrint.__default.prettyPrintNum ($LS $ly@@1) (LitInt |n#0@@1|) (Lit SeqType |zero#0@@1|)))
))))
(assert (forall ((System.Collections.Generic.List$T@@1 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@1))  (and ($Is refType |c#0@@1| (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@1)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |8764|
 :pattern ( ($Is refType |c#0@@1| (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@1)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@1)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0) ($IsAlloc T@@1 v@@0 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |8044|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@1 h@@1) ($IsAllocBox bx@@0 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |8116|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@2 h@@2) ($IsAlloc T@@2 v@@1 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |8115|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@2 h@@2))
)))
(assert (forall ((LinkedList.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.LinkedList.List LinkedList.List$T@@2)) Tagclass.LinkedList.List) (= (TagFamily (Tclass.LinkedList.List LinkedList.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |8631|
 :pattern ( (Tclass.LinkedList.List LinkedList.List$T@@2))
)))
(assert (forall ((System.Collections.Generic.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@2)) Tagclass.System_mCollections_mGeneric.List) (= (TagFamily (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |8635|
 :pattern ( (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@2))
)))
(assert (forall ((System.Collections.Generic.List$T@@3 T@U) ) (!  (and (= (Tag (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@3)) Tagclass.System_mCollections_mGeneric.List?) (= (TagFamily (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@3)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |8757|
 :pattern ( (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@3))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |8231|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.StackMachine.Instr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.StackMachine.Instr)))
 :qid |unknown.0:0|
 :skolemid |8625|
 :pattern ( ($IsBox bx@@1 Tclass.StackMachine.Instr))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.System.String) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.System.String)))
 :qid |unknown.0:0|
 :skolemid |8634|
 :pattern ( ($IsBox bx@@2 Tclass.System.String))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.System.String?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.System.String?)))
 :qid |unknown.0:0|
 :skolemid |8766|
 :pattern ( ($IsBox bx@@3 Tclass.System.String?))
)))
(assert (forall ((System.Collections.Generic.List$T@@4 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@4))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@4))))
 :qid |unknown.0:0|
 :skolemid |8760|
 :pattern ( ($Is refType $o@@2 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@4)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.System.String)  (and ($Is refType |c#0@@2| Tclass.System.String?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |8769|
 :pattern ( ($Is refType |c#0@@2| Tclass.System.String))
 :pattern ( ($Is refType |c#0@@2| Tclass.System.String?))
)))
(assert (forall ((s@@1 T@U) (i@@1 Int) (v@@2 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@1) v@@2)) (=> (or (not (= i@@1 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@1) (|Seq#Index| s@@1 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |8230|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@1))
)))
(assert (forall (($ly@@2 T@U) (|n#0@@2| Int) (|zero#0@@2| T@U) ) (! (= (PrettyPrint.__default.prettyPrintNum ($LS $ly@@2) |n#0@@2| |zero#0@@2|) (PrettyPrint.__default.prettyPrintNum $ly@@2 |n#0@@2| |zero#0@@2|))
 :qid |Compilerdfy.544:12|
 :skolemid |8614|
 :pattern ( (PrettyPrint.__default.prettyPrintNum ($LS $ly@@2) |n#0@@2| |zero#0@@2|))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (|$IsA#LinkedList.List| d@@15) (or (LinkedList.List.Cons_q d@@15) (LinkedList.List.Nil_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |8670|
 :pattern ( (|$IsA#LinkedList.List| d@@15))
)))
(assert (forall ((LinkedList.List$T@@3 T@U) (d@@16 T@U) ) (!  (=> ($Is DatatypeTypeType d@@16 (Tclass.LinkedList.List LinkedList.List$T@@3)) (or (LinkedList.List.Cons_q d@@16) (LinkedList.List.Nil_q d@@16)))
 :qid |unknown.0:0|
 :skolemid |8671|
 :pattern ( (LinkedList.List.Nil_q d@@16) ($Is DatatypeTypeType d@@16 (Tclass.LinkedList.List LinkedList.List$T@@3)))
 :pattern ( (LinkedList.List.Cons_q d@@16) ($Is DatatypeTypeType d@@16 (Tclass.LinkedList.List LinkedList.List$T@@3)))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |8344|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |8122|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |8032|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TChar) (and (= ($Box charType ($Unbox charType bx@@5)) bx@@5) ($Is charType ($Unbox charType bx@@5) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |8035|
 :pattern ( ($IsBox bx@@5 TChar))
)))
(assert (forall ((v@@3 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@3) ($Is T@@3 v@@3 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |8043|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |8226|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#LinkedList.List.Cons| |a#0#0#0| |a#0#1#0|)) |##LinkedList.List.Cons|)
 :qid |Compilerdfy.168:12|
 :skolemid |8653|
 :pattern ( (|#LinkedList.List.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (LinkedList.List.hd (|#LinkedList.List.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |Compilerdfy.168:12|
 :skolemid |8662|
 :pattern ( (|#LinkedList.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (LinkedList.List.tl (|#LinkedList.List.Cons| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |Compilerdfy.168:12|
 :skolemid |8664|
 :pattern ( (|#LinkedList.List.Cons| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall ((v@@4 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@2) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |8078|
 :pattern ( (|Seq#Index| v@@4 i@@2))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |8079|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |8012|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8013|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((LinkedList.List$T@@4 T@U) ) (! (= (Tclass.LinkedList.List_0 (Tclass.LinkedList.List LinkedList.List$T@@4)) LinkedList.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |8632|
 :pattern ( (Tclass.LinkedList.List LinkedList.List$T@@4))
)))
(assert (forall ((System.Collections.Generic.List$T@@5 T@U) ) (! (= (Tclass.System_mCollections_mGeneric.List_0 (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@5)) System.Collections.Generic.List$T@@5)
 :qid |unknown.0:0|
 :skolemid |8636|
 :pattern ( (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@5))
)))
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PushConst| |a#0#0#0@@0|)) |##StackMachine.Instr.PushConst|)
 :qid |Compilerdfy.192:17|
 :skolemid |8691|
 :pattern ( (|#StackMachine.Instr.PushConst| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (StackMachine.Instr.n (|#StackMachine.Instr.PushConst| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |Compilerdfy.192:17|
 :skolemid |8698|
 :pattern ( (|#StackMachine.Instr.PushConst| |a#4#0#0@@0|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PushVar| |a#5#0#0|)) |##StackMachine.Instr.PushVar|)
 :qid |Compilerdfy.193:15|
 :skolemid |8699|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (StackMachine.Instr.v (|#StackMachine.Instr.PushVar| |a#9#0#0|)) |a#9#0#0|)
 :qid |Compilerdfy.193:15|
 :skolemid |8706|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#9#0#0|))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PopVar| |a#24#0#0|)) |##StackMachine.Instr.PopVar|)
 :qid |Compilerdfy.197:14|
 :skolemid |8715|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#24#0#0|))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (= (StackMachine.Instr.v (|#StackMachine.Instr.PopVar| |a#28#0#0|)) |a#28#0#0|)
 :qid |Compilerdfy.197:14|
 :skolemid |8722|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#28#0#0|))
)))
(assert (forall ((System.Collections.Generic.List$T@@6 T@U) ) (! (= (Tclass.System_mCollections_mGeneric.List?_0 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@6)) System.Collections.Generic.List$T@@6)
 :qid |unknown.0:0|
 :skolemid |8758|
 :pattern ( (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@6))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |8030|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#LinkedList.List.Cons| |a#5#0#0@@0| |a#5#1#0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |8663|
 :pattern ( (|#LinkedList.List.Cons| |a#5#0#0@@0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (DtRank |a#7#1#0|) (DtRank (|#LinkedList.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |8665|
 :pattern ( (|#LinkedList.List.Cons| |a#7#0#0| |a#7#1#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@3 T@U) (|n#0@@3| Int) (|zero#0@@3| T@U) ) (!  (=> (or (|PrettyPrint.__default.prettyPrintNum#canCall| |n#0@@3| |zero#0@@3|) (and (< 0 $FunctionContextHeight) ($Is SeqType |zero#0@@3| (TSeq TChar)))) ($Is SeqType (PrettyPrint.__default.prettyPrintNum $ly@@3 |n#0@@3| |zero#0@@3|) (TSeq TChar)))
 :qid |Compilerdfy.544:12|
 :skolemid |8616|
 :pattern ( (PrettyPrint.__default.prettyPrintNum $ly@@3 |n#0@@3| |zero#0@@3|))
))))
(assert (forall ((|a#2#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#2#0#0@@0|) Tclass.StackMachine.Instr) ($Is intType (int_2_U |a#2#0#0@@0|) TInt))
 :qid |Compilerdfy.192:17|
 :skolemid |8695|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#2#0#0@@0|) Tclass.StackMachine.Instr))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |8026|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (< (|Seq#Rank| |a#11#0#0|) (DtRank (|#StackMachine.Instr.PushVar| |a#11#0#0|)))
 :qid |Compilerdfy.193:15|
 :skolemid |8708|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#11#0#0|))
)))
(assert (forall ((|a#30#0#0| T@U) ) (! (< (|Seq#Rank| |a#30#0#0|) (DtRank (|#StackMachine.Instr.PopVar| |a#30#0#0|)))
 :qid |Compilerdfy.197:14|
 :skolemid |8724|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#30#0#0|))
)))
(assert (forall ((d@@17 T@U) (LinkedList.List$T@@5 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (LinkedList.List.Cons_q d@@17) ($IsAlloc DatatypeTypeType d@@17 (Tclass.LinkedList.List LinkedList.List$T@@5) $h@@4))) ($IsAllocBox (LinkedList.List.hd d@@17) LinkedList.List$T@@5 $h@@4))
 :qid |unknown.0:0|
 :skolemid |8659|
 :pattern ( ($IsAllocBox (LinkedList.List.hd d@@17) LinkedList.List$T@@5 $h@@4))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |9877|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((x@@7 Int) (y@@0 Int) ) (! (= (Mod x@@7 y@@0) (mod x@@7 y@@0))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |8345|
 :pattern ( (Mod x@@7 y@@0))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |8228|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((d@@18 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (StackMachine.Instr.PushConst_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass.StackMachine.Instr $h@@5))) ($IsAlloc intType (int_2_U (StackMachine.Instr.n d@@18)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |8696|
 :pattern ( ($IsAlloc intType (int_2_U (StackMachine.Instr.n d@@18)) TInt $h@@5))
)))
(assert (forall ((d@@19 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@19)) (DtRank d@@19))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |8089|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@19)))
)))
(assert (forall ((bx@@6 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |8040|
 :pattern ( ($IsBox bx@@6 (TSeq t@@6)))
)))
(assert (forall ((LinkedList.List$T@@6 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.LinkedList.List LinkedList.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) (Tclass.LinkedList.List LinkedList.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |8633|
 :pattern ( ($IsBox bx@@7 (Tclass.LinkedList.List LinkedList.List$T@@6)))
)))
(assert (forall ((System.Collections.Generic.List$T@@7 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@7)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@7))))
 :qid |unknown.0:0|
 :skolemid |8637|
 :pattern ( ($IsBox bx@@8 (Tclass.System_mCollections_mGeneric.List System.Collections.Generic.List$T@@7)))
)))
(assert (forall ((System.Collections.Generic.List$T@@8 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@8)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@8))))
 :qid |unknown.0:0|
 :skolemid |8759|
 :pattern ( ($IsBox bx@@9 (Tclass.System_mCollections_mGeneric.List? System.Collections.Generic.List$T@@8)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |8027|
 :pattern ( (|char#ToInt| ch))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|instr#0@@0| T@U) ) (!  (=> (or (|PrettyPrint.__default.prettyPrintInstr#canCall| |instr#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |instr#0@@0| Tclass.StackMachine.Instr))) (and (=> (StackMachine.Instr.PushConst_q |instr#0@@0|) (let ((|n#1| (StackMachine.Instr.n |instr#0@@0|)))
(|PrettyPrint.__default.prettyPrintNum#canCall| |n#1| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48))))))) (= (PrettyPrint.__default.prettyPrintInstr |instr#0@@0|) (ite (StackMachine.Instr.PushConst_q |instr#0@@0|) (let ((|n#0@@4| (StackMachine.Instr.n |instr#0@@0|)))
(|Seq#Append| (|Seq#Append| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 67))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 40))) (PrettyPrint.__default.prettyPrintNum ($LS $LZ) |n#0@@4| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48)))))) (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 41))))) (ite (StackMachine.Instr.PushVar_q |instr#0@@0|) (let ((|v#0| (StackMachine.Instr.v |instr#0@@0|)))
(|Seq#Append| (|Seq#Append| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 86))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 40))) |v#0|) (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 41))))) (ite (StackMachine.Instr.PopAdd_q |instr#0@@0|) (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 65))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 100))) (ite (StackMachine.Instr.PopSub_q |instr#0@@0|) (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 98))) (ite (StackMachine.Instr.PopPrint_q |instr#0@@0|) (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 116))) (let ((|v#1| (StackMachine.Instr.v |instr#0@@0|)))
(|Seq#Append| (|Seq#Append| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 86))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 40))) |v#1|) (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 41)))))))))))))
 :qid |Compilerdfy.554:29|
 :skolemid |8628|
 :pattern ( (PrettyPrint.__default.prettyPrintInstr |instr#0@@0|))
))))
(assert (forall ((d@@20 T@U) (LinkedList.List$T@@7 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (LinkedList.List.Cons_q d@@20) ($IsAlloc DatatypeTypeType d@@20 (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@6))) ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@20) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@6))
 :qid |unknown.0:0|
 :skolemid |8660|
 :pattern ( ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@20) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@6))
)))
(assert (forall ((d@@21 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) ($Is DatatypeTypeType d@@21 Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType d@@21 Tclass.StackMachine.Instr $h@@7))
 :qid |unknown.0:0|
 :skolemid |8725|
 :pattern ( ($IsAlloc DatatypeTypeType d@@21 Tclass.StackMachine.Instr $h@@7))
)))
(assert (= (Tag Tclass.StackMachine.Instr) Tagclass.StackMachine.Instr))
(assert (= (TagFamily Tclass.StackMachine.Instr) tytagFamily$Instr))
(assert (= (Tag Tclass.System.String) Tagclass.System.String))
(assert (= (TagFamily Tclass.System.String) tytagFamily$String))
(assert (= (Tag Tclass.System.String?) Tagclass.System.String?))
(assert (= (TagFamily Tclass.System.String?) tytagFamily$String))
(assert (forall ((d@@22 T@U) ) (!  (=> ($Is DatatypeTypeType d@@22 Tclass.StackMachine.Instr) (or (or (or (or (or (StackMachine.Instr.PushConst_q d@@22) (StackMachine.Instr.PushVar_q d@@22)) (StackMachine.Instr.PopAdd_q d@@22)) (StackMachine.Instr.PopSub_q d@@22)) (StackMachine.Instr.PopPrint_q d@@22)) (StackMachine.Instr.PopVar_q d@@22)))
 :qid |unknown.0:0|
 :skolemid |8727|
 :pattern ( (StackMachine.Instr.PopVar_q d@@22) ($Is DatatypeTypeType d@@22 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopPrint_q d@@22) ($Is DatatypeTypeType d@@22 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopSub_q d@@22) ($Is DatatypeTypeType d@@22 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopAdd_q d@@22) ($Is DatatypeTypeType d@@22 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushVar_q d@@22) ($Is DatatypeTypeType d@@22 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushConst_q d@@22) ($Is DatatypeTypeType d@@22 Tclass.StackMachine.Instr))
)))
(assert (= |#LinkedList.List.Nil| (Lit DatatypeTypeType |#LinkedList.List.Nil|)))
(assert (= |#StackMachine.Instr.PopAdd| (Lit DatatypeTypeType |#StackMachine.Instr.PopAdd|)))
(assert (= |#StackMachine.Instr.PopSub| (Lit DatatypeTypeType |#StackMachine.Instr.PopSub|)))
(assert (= |#StackMachine.Instr.PopPrint| (Lit DatatypeTypeType |#StackMachine.Instr.PopPrint|)))
(assert (forall ((|a#7#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#7#0#0@@0|) Tclass.StackMachine.Instr) ($Is SeqType |a#7#0#0@@0| (TSeq TChar)))
 :qid |Compilerdfy.193:15|
 :skolemid |8703|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#7#0#0@@0|) Tclass.StackMachine.Instr))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#26#0#0|) Tclass.StackMachine.Instr) ($Is SeqType |a#26#0#0| (TSeq TChar)))
 :qid |Compilerdfy.197:14|
 :skolemid |8719|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#26#0#0|) Tclass.StackMachine.Instr))
)))
(assert (forall ((d@@23 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (StackMachine.Instr.PushVar_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass.StackMachine.Instr $h@@8))) ($IsAlloc SeqType (StackMachine.Instr.v d@@23) (TSeq TChar) $h@@8))
 :qid |unknown.0:0|
 :skolemid |8704|
 :pattern ( ($IsAlloc SeqType (StackMachine.Instr.v d@@23) (TSeq TChar) $h@@8))
)))
(assert (forall ((d@@24 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (StackMachine.Instr.PopVar_q d@@24) ($IsAlloc DatatypeTypeType d@@24 Tclass.StackMachine.Instr $h@@9))) ($IsAlloc SeqType (StackMachine.Instr.v d@@24) (TSeq TChar) $h@@9))
 :qid |unknown.0:0|
 :skolemid |8720|
 :pattern ( ($IsAlloc SeqType (StackMachine.Instr.v d@@24) (TSeq TChar) $h@@9))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|instr#0@@1| T@U) ) (!  (=> (or (|PrettyPrint.__default.prettyPrintInstr#canCall| (Lit DatatypeTypeType |instr#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |instr#0@@1| Tclass.StackMachine.Instr))) (and (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushConst_q (Lit DatatypeTypeType |instr#0@@1|))))) (let ((|n#3| (LitInt (StackMachine.Instr.n (Lit DatatypeTypeType |instr#0@@1|)))))
(|PrettyPrint.__default.prettyPrintNum#canCall| |n#3| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48))))))) (= (PrettyPrint.__default.prettyPrintInstr (Lit DatatypeTypeType |instr#0@@1|)) (ite (StackMachine.Instr.PushConst_q (Lit DatatypeTypeType |instr#0@@1|)) (let ((|n#2| (LitInt (StackMachine.Instr.n (Lit DatatypeTypeType |instr#0@@1|)))))
(|Seq#Append| (|Seq#Append| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 67))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 40))) (PrettyPrint.__default.prettyPrintNum ($LS $LZ) |n#2| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 48)))))) (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 41))))) (ite (StackMachine.Instr.PushVar_q (Lit DatatypeTypeType |instr#0@@1|)) (let ((|v#4| (Lit SeqType (StackMachine.Instr.v (Lit DatatypeTypeType |instr#0@@1|)))))
(|Seq#Append| (|Seq#Append| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 86))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 40))) |v#4|) (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 41))))) (ite (StackMachine.Instr.PopAdd_q (Lit DatatypeTypeType |instr#0@@1|)) (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 65))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 100))) (ite (StackMachine.Instr.PopSub_q (Lit DatatypeTypeType |instr#0@@1|)) (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 98))) (ite (StackMachine.Instr.PopPrint_q (Lit DatatypeTypeType |instr#0@@1|)) (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 116))) (let ((|v#5| (Lit SeqType (StackMachine.Instr.v (Lit DatatypeTypeType |instr#0@@1|)))))
(|Seq#Append| (|Seq#Append| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 80))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 86))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 40))) |v#5|) (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 41)))))))))))))
 :qid |Compilerdfy.554:29|
 :weight 3
 :skolemid |8629|
 :pattern ( (PrettyPrint.__default.prettyPrintInstr (Lit DatatypeTypeType |instr#0@@1|)))
))))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n@@0 Int) ) (!  (and (=> (< n@@0 (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@0) (|Seq#Index| s0@@0 n@@0))) (=> (<= (|Seq#Length| s0@@0) n@@0) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@0) (|Seq#Index| s1@@0 (- n@@0 (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |8232|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@0))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#LinkedList.List.Cons| (Lit BoxType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)) (Lit DatatypeTypeType (|#LinkedList.List.Cons| |a#3#0#0| |a#3#1#0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |8661|
 :pattern ( (|#LinkedList.List.Cons| (Lit BoxType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |8023|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((|a#3#0#0@@0| Int) ) (! (= (|#StackMachine.Instr.PushConst| (LitInt |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#3#0#0@@0|)))
 :qid |Compilerdfy.192:17|
 :skolemid |8697|
 :pattern ( (|#StackMachine.Instr.PushConst| (LitInt |a#3#0#0@@0|)))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#StackMachine.Instr.PushVar| (Lit SeqType |a#8#0#0|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#8#0#0|)))
 :qid |Compilerdfy.193:15|
 :skolemid |8705|
 :pattern ( (|#StackMachine.Instr.PushVar| (Lit SeqType |a#8#0#0|)))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (= (|#StackMachine.Instr.PopVar| (Lit SeqType |a#27#0#0|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#27#0#0|)))
 :qid |Compilerdfy.197:14|
 :skolemid |8721|
 :pattern ( (|#StackMachine.Instr.PopVar| (Lit SeqType |a#27#0#0|)))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |8021|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |8227|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@4 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |8066|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@6 T@U) ) (! ($IsAlloc charType v@@6 TChar h@@5)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |8069|
 :pattern ( ($IsAlloc charType v@@6 TChar h@@5))
)))
(assert (forall ((LinkedList.List$T@@8 T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@0| T@U) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@1| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@10)  (and ($IsAllocBox |a#2#0#0@@1| LinkedList.List$T@@8 $h@@10) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@10))))
 :qid |unknown.0:0|
 :skolemid |8658|
 :pattern ( ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@1| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@10))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@2)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@3) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |8058|
 :pattern ( (|Seq#Index| v@@7 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |8059|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@2)))
)))
(assert (forall ((s@@5 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@4))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |8272|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@4))))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |8045|
 :pattern ( ($Is intType v@@8 TInt))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is charType v@@9 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |8048|
 :pattern ( ($Is charType v@@9 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |it#0@0| () T@U)
(declare-fun |##instr#0_0@1| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |ds#0_0@1| () T@U)
(declare-fun |call2formal@s#0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call2formal@s#0@0| () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun call0formal@System.Collections.Generic.List$T@0 () T@U)
(declare-fun |call2formal@t#0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |it#0@1| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |ds#0_0@0| () T@U)
(declare-fun |defass#s#0_0@0| () Bool)
(declare-fun |s#0_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |p#0| () T@U)
(declare-fun call2formal@this () T@U)
(declare-fun call0formal@System.Collections.Generic.List$T () T@U)
(declare-fun call0formal@System.Collections.Generic.List$T@0@@0 () T@U)
(declare-fun |defass#l#0| () Bool)
(declare-fun |l#0@@0| () T@U)
(declare-fun |it#0| () T@U)
(declare-fun |ds#0_0| () T@U)
(declare-fun |defass#s#0_0| () Bool)
(declare-fun |s#0_0| () T@U)
(set-info :boogie-vc-id Impl$$PrettyPrint.__default.prettyPrint)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon9_Else_correct  (=> (LinkedList.List.Cons_q |it#0@0|) (and (=> (= (ControlFlow 0 6) (- 0 12)) (LinkedList.List.Cons_q |it#0@0|)) (=> (LinkedList.List.Cons_q |it#0@0|) (=> (= |##instr#0_0@1| ($Unbox DatatypeTypeType (LinkedList.List.hd |it#0@0|))) (=> (and (and ($IsAlloc DatatypeTypeType |##instr#0_0@1| Tclass.StackMachine.Instr $Heap@1) (|PrettyPrint.__default.prettyPrintInstr#canCall| ($Unbox DatatypeTypeType (LinkedList.List.hd |it#0@0|)))) (and (|PrettyPrint.__default.prettyPrintInstr#canCall| ($Unbox DatatypeTypeType (LinkedList.List.hd |it#0@0|))) (= |ds#0_0@1| (PrettyPrint.__default.prettyPrintInstr ($Unbox DatatypeTypeType (LinkedList.List.hd |it#0@0|)))))) (=> (and (and (and ($Is refType |call2formal@s#0| Tclass.System.String) ($IsAlloc refType |call2formal@s#0| Tclass.System.String $Heap)) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and ($Is refType |call2formal@s#0@0| Tclass.System.String) ($IsAlloc refType |call2formal@s#0@0| Tclass.System.String $Heap@2)) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4)))
 :qid |Compilerdfy.403:7|
 :skolemid |8776|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 6) (- 0 11)) true) (and (=> (= (ControlFlow 0 6) (- 0 10)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 6) (- 0 9)) true) (and (=> (= (ControlFlow 0 6) (- 0 8)) (forall (($o@@5 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@5) alloc)))) (= $o@@5 call2formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@5 $f@@0)))
 :qid |Compilerdfy.573:12|
 :skolemid |8645|
))) (=> (forall (($o@@6 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6) alloc)))) (= $o@@6 call2formal@this@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@6 $f@@1)))
 :qid |Compilerdfy.573:12|
 :skolemid |8645|
)) (=> (and (= call0formal@System.Collections.Generic.List$T@0 Tclass.System.String) (= |call2formal@t#0@0| ($Box refType |call2formal@s#0@0|))) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7)) (= $o@@7 call2formal@this@0)))
 :qid |Compilerdfy.385:22|
 :skolemid |8763|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@7))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (LinkedList.List.Cons_q |it#0@0|)) (=> (LinkedList.List.Cons_q |it#0@0|) (=> (and (= |it#0@1| (LinkedList.List.tl |it#0@0|)) (= (ControlFlow 0 6) (- 0 5))) (< (DtRank |it#0@1|) (DtRank |it#0@0|)))))))))))))))))))))
(let ((anon9_Then_correct  (=> (and (not (LinkedList.List.Cons_q |it#0@0|)) (= (ControlFlow 0 4) (- 0 3))) true)))
(let ((anon8_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 13) 4) anon9_Then_correct) (=> (= (ControlFlow 0 13) 6) anon9_Else_correct)))))
(let ((anon8_Then_correct true))
(let ((anon7_LoopBody_correct  (and (=> (= (ControlFlow 0 14) 2) anon8_Then_correct) (=> (= (ControlFlow 0 14) 13) anon8_Else_correct))))
(let ((anon7_LoopDone_correct true))
(let ((anon7_LoopHead_correct  (=> (and ($Is SeqType |ds#0_0@0| (TSeq TChar)) ($IsAlloc SeqType |ds#0_0@0| (TSeq TChar) $Heap@1)) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> |defass#s#0_0@0| (and ($Is refType |s#0_0@0| Tclass.System.String) ($IsAlloc refType |s#0_0@0| Tclass.System.String $Heap@1)))) (=> (and (and (and ($Is DatatypeTypeType |it#0@0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType |it#0@0| (Tclass.LinkedList.List Tclass.StackMachine.Instr) $Heap@1)) (and true (not false))) (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8)))
 :qid |Compilerdfy.568:5|
 :skolemid |8642|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@9 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9) $f@@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@9 $f@@2))))
 :qid |Compilerdfy.568:5|
 :skolemid |8643|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9) $f@@2))
)) (<= (DtRank |it#0@0|) (DtRank |p#0|))))) (and (=> (= (ControlFlow 0 15) 1) anon7_LoopDone_correct) (=> (= (ControlFlow 0 15) 14) anon7_LoopBody_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this (Tclass.System_mCollections_mGeneric.List call0formal@System.Collections.Generic.List$T)) ($IsAlloc refType call2formal@this (Tclass.System_mCollections_mGeneric.List call0formal@System.Collections.Generic.List$T) $Heap))) (= call0formal@System.Collections.Generic.List$T@0@@0 Tclass.System.String)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 (Tclass.System_mCollections_mGeneric.List call0formal@System.Collections.Generic.List$T@0@@0)) ($IsAlloc refType call2formal@this@0 (Tclass.System_mCollections_mGeneric.List call0formal@System.Collections.Generic.List$T@0@@0) $Heap@0)))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call2formal@this@0) alloc)))) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@10)))
 :qid |Compilerdfy.383:5|
 :skolemid |8762|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10))
))) (and ($HeapSucc $Heap $Heap@0) (= (ControlFlow 0 16) 15)))) anon7_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (and ($Is DatatypeTypeType |p#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType |p#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr) $Heap)) (|$IsA#LinkedList.List| |p#0|)) (=> |defass#l#0| (and ($Is refType |l#0@@0| (Tclass.System_mCollections_mGeneric.List Tclass.System.String)) ($IsAlloc refType |l#0@@0| (Tclass.System_mCollections_mGeneric.List Tclass.System.String) $Heap)))) (and (and ($Is DatatypeTypeType |it#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType |it#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr) $Heap)) true)) (and (and (and ($Is SeqType |ds#0_0| (TSeq TChar)) ($IsAlloc SeqType |ds#0_0| (TSeq TChar) $Heap)) true) (and (and (=> |defass#s#0_0| (and ($Is refType |s#0_0| Tclass.System.String) ($IsAlloc refType |s#0_0| Tclass.System.String $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 17) 16))))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
