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
(declare-fun Tagclass.StackMachine.Instr () T@U)
(declare-fun Tagclass.LinkedList.List () T@U)
(declare-fun Tagclass.StackMachine.State () T@U)
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
(declare-fun tytagFamily$Instr () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |$IsA#StackMachine.State| (T@U) Bool)
(declare-fun |#StackMachine.Instr.PushVar| (T@U) T@U)
(declare-fun |#StackMachine.Instr.PopVar| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |#LinkedList.List.Nil| () T@U)
(declare-fun |#StackMachine.Instr.PopAdd| () T@U)
(declare-fun |#StackMachine.Instr.PopSub| () T@U)
(declare-fun |#StackMachine.Instr.PopPrint| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |LinkedList.List#Equal| (T@U T@U) Bool)
(declare-fun |StackMachine.State#Equal| (T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun LinkedList.List.Nil_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopVar_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun |#StackMachine.Instr.PushConst| (Int) T@U)
(declare-fun StackMachine.__default.interpProg_k (T@U T@U T@U) T@U)
(declare-fun |StackMachine.__default.interpProg_k#canCall| (T@U T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |$IsA#LinkedList.List| (T@U) Bool)
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
(declare-fun |Map#Empty| () T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.StackMachine.Instr Tagclass.LinkedList.List Tagclass.StackMachine.State |##LinkedList.List.Cons| |##LinkedList.List.Nil| |##StackMachine.Instr.PushConst| |##StackMachine.Instr.PushVar| |##StackMachine.Instr.PopAdd| |##StackMachine.Instr.PopSub| |##StackMachine.Instr.PopPrint| |##StackMachine.Instr.PopVar| |##StackMachine.State.State| |tytagFamily$_tuple#2| tytagFamily$Instr tytagFamily$List tytagFamily$State)
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
(assert (forall ((d T@U) ) (!  (=> (|$IsA#StackMachine.State| d) (StackMachine.State.State_q d))
 :qid |unknown.0:0|
 :skolemid |3794|
 :pattern ( (|$IsA#StackMachine.State| d))
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
(assert (= (DatatypeCtorId |#LinkedList.List.Nil|) |##LinkedList.List.Nil|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopAdd|) |##StackMachine.Instr.PopAdd|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopSub|) |##StackMachine.Instr.PopSub|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopPrint|) |##StackMachine.Instr.PopPrint|))
(assert (forall ((LinkedList._default.Concat$T@@1 T@U) ($ly@@1 T@U) (|l1#0@@1| T@U) (|l2#0@@1| T@U) ) (!  (=> (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@1 |l1#0@@1| |l2#0@@1|) (and ($Is DatatypeTypeType |l1#0@@1| (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)) ($Is DatatypeTypeType |l2#0@@1| (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)))) ($Is DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@1 $ly@@1 |l1#0@@1| |l2#0@@1|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@1)))
 :qid |unknown.0:0|
 :skolemid |3690|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@1 $ly@@1 |l1#0@@1| |l2#0@@1|))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass.StackMachine.State) (StackMachine.State.State_q d@@1))
 :qid |unknown.0:0|
 :skolemid |3795|
 :pattern ( (StackMachine.State.State_q d@@1) ($Is DatatypeTypeType d@@1 Tclass.StackMachine.State))
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
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopAdd| Tclass.StackMachine.Instr))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopSub| Tclass.StackMachine.Instr))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopPrint| Tclass.StackMachine.Instr))
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
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@1| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@1| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |3345|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@1| |a#2#1#0@@1|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@2) (= (DatatypeCtorId d@@2) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |3337|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (LinkedList.List.Cons_q d@@3) (= (DatatypeCtorId d@@3) |##LinkedList.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |3696|
 :pattern ( (LinkedList.List.Cons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (LinkedList.List.Nil_q d@@4) (= (DatatypeCtorId d@@4) |##LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |3708|
 :pattern ( (LinkedList.List.Nil_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (StackMachine.Instr.PushConst_q d@@5) (= (DatatypeCtorId d@@5) |##StackMachine.Instr.PushConst|))
 :qid |unknown.0:0|
 :skolemid |3733|
 :pattern ( (StackMachine.Instr.PushConst_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (StackMachine.Instr.PushVar_q d@@6) (= (DatatypeCtorId d@@6) |##StackMachine.Instr.PushVar|))
 :qid |unknown.0:0|
 :skolemid |3741|
 :pattern ( (StackMachine.Instr.PushVar_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (StackMachine.Instr.PopAdd_q d@@7) (= (DatatypeCtorId d@@7) |##StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |3750|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (StackMachine.Instr.PopSub_q d@@8) (= (DatatypeCtorId d@@8) |##StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |3752|
 :pattern ( (StackMachine.Instr.PopSub_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (StackMachine.Instr.PopPrint_q d@@9) (= (DatatypeCtorId d@@9) |##StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |3754|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (StackMachine.Instr.PopVar_q d@@10) (= (DatatypeCtorId d@@10) |##StackMachine.Instr.PopVar|))
 :qid |unknown.0:0|
 :skolemid |3757|
 :pattern ( (StackMachine.Instr.PopVar_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (! (= (StackMachine.State.State_q d@@11) (= (DatatypeCtorId d@@11) |##StackMachine.State.State|))
 :qid |unknown.0:0|
 :skolemid |3777|
 :pattern ( (StackMachine.State.State_q d@@11))
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
(assert (forall ((d@@12 T@U) ) (!  (=> (StackMachine.State.State_q d@@12) (exists ((|a#32#0#0| T@U) (|a#32#1#0| T@U) (|a#32#2#0| T@U) ) (! (= d@@12 (|#StackMachine.State.State| |a#32#0#0| |a#32#1#0| |a#32#2#0|))
 :qid |Compilerdfy.206:26|
 :skolemid |3778|
)))
 :qid |unknown.0:0|
 :skolemid |3779|
 :pattern ( (StackMachine.State.State_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@13) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@13 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |3338|
)))
 :qid |unknown.0:0|
 :skolemid |3339|
 :pattern ( (_System.Tuple2.___hMake2_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (LinkedList.List.Cons_q d@@14) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@14 (|#LinkedList.List.Cons| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |Compilerdfy.168:12|
 :skolemid |3697|
)))
 :qid |unknown.0:0|
 :skolemid |3698|
 :pattern ( (LinkedList.List.Cons_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (LinkedList.List.Nil_q d@@15) (= d@@15 |#LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |3709|
 :pattern ( (LinkedList.List.Nil_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (StackMachine.Instr.PopAdd_q d@@16) (= d@@16 |#StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |3751|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (StackMachine.Instr.PopSub_q d@@17) (= d@@17 |#StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |3753|
 :pattern ( (StackMachine.Instr.PopSub_q d@@17))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (StackMachine.Instr.PopPrint_q d@@18) (= d@@18 |#StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |3755|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@18))
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
(assert (forall ((d@@19 T@U) ) (!  (=> (StackMachine.Instr.PushConst_q d@@19) (exists ((|a#1#0#0@@1| Int) ) (! (= d@@19 (|#StackMachine.Instr.PushConst| |a#1#0#0@@1|))
 :qid |Compilerdfy.192:17|
 :skolemid |3734|
)))
 :qid |unknown.0:0|
 :skolemid |3735|
 :pattern ( (StackMachine.Instr.PushConst_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (StackMachine.Instr.PushVar_q d@@20) (exists ((|a#6#0#0| T@U) ) (! (= d@@20 (|#StackMachine.Instr.PushVar| |a#6#0#0|))
 :qid |Compilerdfy.193:15|
 :skolemid |3742|
)))
 :qid |unknown.0:0|
 :skolemid |3743|
 :pattern ( (StackMachine.Instr.PushVar_q d@@20))
)))
(assert (forall ((d@@21 T@U) ) (!  (=> (StackMachine.Instr.PopVar_q d@@21) (exists ((|a#25#0#0| T@U) ) (! (= d@@21 (|#StackMachine.Instr.PopVar| |a#25#0#0|))
 :qid |Compilerdfy.197:14|
 :skolemid |3758|
)))
 :qid |unknown.0:0|
 :skolemid |3759|
 :pattern ( (StackMachine.Instr.PopVar_q d@@21))
)))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |3112|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h) ($IsAlloc T@@1 v@@1 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2927|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h))
)))
(assert (forall (($ly@@2 T@U) (|p#0| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg_k#canCall| |p#0| |st#0@@0|) (and ($Is DatatypeTypeType |p#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |st#0@@0| Tclass.StackMachine.State))) (and (=> (LinkedList.List.Cons_q |p#0|) (let ((|p#6| (LinkedList.List.tl |p#0|)))
(let ((|instr#5| ($Unbox DatatypeTypeType (LinkedList.List.hd |p#0|))))
 (and (|StackMachine.__default.interpProg_k#canCall| |p#6| |st#0@@0|) (|StackMachine.__default.interpInstr#canCall| |instr#5| (StackMachine.__default.interpProg_k $ly@@2 |p#6| |st#0@@0|)))))) (= (StackMachine.__default.interpProg_k ($LS $ly@@2) |p#0| |st#0@@0|) (ite (LinkedList.List.Cons_q |p#0|) (let ((|p#5| (LinkedList.List.tl |p#0|)))
(let ((|instr#4| ($Unbox DatatypeTypeType (LinkedList.List.hd |p#0|))))
(StackMachine.__default.interpInstr |instr#4| (StackMachine.__default.interpProg_k $ly@@2 |p#5| |st#0@@0|)))) |st#0@@0|))))
 :qid |Compilerdfy.233:12|
 :skolemid |3725|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $ly@@2) |p#0| |st#0@@0|))
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
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.StackMachine.Instr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.StackMachine.Instr)))
 :qid |unknown.0:0|
 :skolemid |3500|
 :pattern ( ($IsBox bx@@2 Tclass.StackMachine.Instr))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.StackMachine.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.StackMachine.State)))
 :qid |unknown.0:0|
 :skolemid |3527|
 :pattern ( ($IsBox bx@@3 Tclass.StackMachine.State))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|StackMachine.State#Equal| a@@2 b@@2)  (and (and (|LinkedList.List#Equal| (StackMachine.State.stack a@@2) (StackMachine.State.stack b@@2)) (|Map#Equal| (StackMachine.State.regs a@@2) (StackMachine.State.regs b@@2))) (|Seq#Equal| (StackMachine.State.output a@@2) (StackMachine.State.output b@@2))))
 :qid |unknown.0:0|
 :skolemid |3796|
 :pattern ( (|StackMachine.State#Equal| a@@2 b@@2))
)))
(assert (forall ((s@@1 T@U) (i@@2 Int) (v@@2 T@U) ) (!  (and (=> (= i@@2 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@2) v@@2)) (=> (or (not (= i@@2 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@2) (|Seq#Index| s@@1 i@@2))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |3113|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@2))
)))
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
(assert (forall (($ly@@3 T@U) (|p#0@@0| T@U) (|st#0@@1| T@U) ) (! (= (StackMachine.__default.interpProg_k ($LS $ly@@3) |p#0@@0| |st#0@@1|) (StackMachine.__default.interpProg_k $ly@@3 |p#0@@0| |st#0@@1|))
 :qid |Compilerdfy.233:12|
 :skolemid |3721|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $ly@@3) |p#0@@0| |st#0@@1|))
)))
(assert (forall ((|instr#0@@0| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|StackMachine.__default.interpInstr#canCall| |instr#0@@0| |st#0@@2|) (and ($Is DatatypeTypeType |instr#0@@0| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0@@2| Tclass.StackMachine.State))) ($Is DatatypeTypeType (StackMachine.__default.interpInstr |instr#0@@0| |st#0@@2|) Tclass.StackMachine.State))
 :qid |Compilerdfy.210:24|
 :skolemid |3717|
 :pattern ( (StackMachine.__default.interpInstr |instr#0@@0| |st#0@@2|))
)))
(assert (forall ((d@@22 T@U) ) (!  (=> (|$IsA#LinkedList.List| d@@22) (or (LinkedList.List.Cons_q d@@22) (LinkedList.List.Nil_q d@@22)))
 :qid |unknown.0:0|
 :skolemid |3712|
 :pattern ( (|$IsA#LinkedList.List| d@@22))
)))
(assert (forall ((|instr#0@@1| T@U) (|st#0@@3| T@U) ) (!  (=> (or (|StackMachine.__default.interpInstr#canCall| |instr#0@@1| |st#0@@3|) (and ($Is DatatypeTypeType |instr#0@@1| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0@@3| Tclass.StackMachine.State))) (and (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (StackMachine.Instr.PushConst_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|dt_update_tmp#0#5| |st#0@@3|))
 (and (StackMachine.State.State_q |dt_update_tmp#0#5|) (StackMachine.State.State_q |dt_update_tmp#0#5|))))))) (=> (not (StackMachine.Instr.PushConst_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))) (and (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (=> (StackMachine.Instr.PushVar_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|)))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (and (and (StackMachine.State.State_q |st#0@@3|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))) (let ((|v#10| (StackMachine.Instr.v ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@1|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@3|))))))))
 (and (and (StackMachine.State.State_q |st#0@@3|) (=> (|Set#IsMember| (|Map#Domain| (StackMachine.State.regs |st#0@@3|)) ($Box SeqType |v#10|)) (StackMachine.State.State_q |st#0@@3|))) (let ((|dt_update_tmp#1#5| |st#0@@3|))
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
(assert (forall (($Heap T@U) (LinkedList._default.Concat$T@@2 T@U) ($ly@@4 T@U) (|l1#0@@2| T@U) (|l2#0@@2| T@U) ) (!  (=> (and (or (|LinkedList.__default.Concat#canCall| LinkedList._default.Concat$T@@2 |l1#0@@2| |l2#0@@2|) (and (and ($Is DatatypeTypeType |l1#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2)) ($IsAlloc DatatypeTypeType |l1#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap)) (and ($Is DatatypeTypeType |l2#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2)) ($IsAlloc DatatypeTypeType |l2#0@@2| (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@2 $ly@@4 |l1#0@@2| |l2#0@@2|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap))
 :qid |Compilerdfy.171:12|
 :skolemid |3691|
 :pattern ( ($IsAlloc DatatypeTypeType (LinkedList.__default.Concat LinkedList._default.Concat$T@@2 $ly@@4 |l1#0@@2| |l2#0@@2|) (Tclass.LinkedList.List LinkedList._default.Concat$T@@2) $Heap))
)))
(assert (forall ((LinkedList.List$T@@3 T@U) (d@@23 T@U) ) (!  (=> ($Is DatatypeTypeType d@@23 (Tclass.LinkedList.List LinkedList.List$T@@3)) (or (LinkedList.List.Cons_q d@@23) (LinkedList.List.Nil_q d@@23)))
 :qid |unknown.0:0|
 :skolemid |3713|
 :pattern ( (LinkedList.List.Nil_q d@@23) ($Is DatatypeTypeType d@@23 (Tclass.LinkedList.List LinkedList.List$T@@3)))
 :pattern ( (LinkedList.List.Cons_q d@@23) ($Is DatatypeTypeType d@@23 (Tclass.LinkedList.List LinkedList.List$T@@3)))
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
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2915|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TChar) (and (= ($Box charType ($Unbox charType bx@@5)) bx@@5) ($Is charType ($Unbox charType bx@@5) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |2918|
 :pattern ( ($IsBox bx@@5 TChar))
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
(assert (forall ((v@@4 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@1) h@@0) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2955|
 :pattern ( (|Set#IsMember| v@@4 bx@@6))
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
(assert (forall ((v@@5 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@2) h@@1) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@3) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2961|
 :pattern ( (|Seq#Index| v@@5 i@@3))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2962|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@2) h@@1))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (|#StackMachine.State.State| (Lit DatatypeTypeType |a#34#0#0|) (Lit MapType |a#34#1#0|) (Lit SeqType |a#34#2#0|)) (Lit DatatypeTypeType (|#StackMachine.State.State| |a#34#0#0| |a#34#1#0| |a#34#2#0|)))
 :qid |Compilerdfy.206:26|
 :skolemid |3784|
 :pattern ( (|#StackMachine.State.State| (Lit DatatypeTypeType |a#34#0#0|) (Lit MapType |a#34#1#0|) (Lit SeqType |a#34#2#0|)))
)))
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
(assert (forall ((|a#9#0#0| T@U) ) (! (= (StackMachine.Instr.v (|#StackMachine.Instr.PushVar| |a#9#0#0|)) |a#9#0#0|)
 :qid |Compilerdfy.193:15|
 :skolemid |3747|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#9#0#0|))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PopVar| |a#24#0#0|)) |##StackMachine.Instr.PopVar|)
 :qid |Compilerdfy.197:14|
 :skolemid |3756|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#24#0#0|))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (= (StackMachine.Instr.v (|#StackMachine.Instr.PopVar| |a#28#0#0|)) |a#28#0#0|)
 :qid |Compilerdfy.197:14|
 :skolemid |3763|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#28#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2913|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((v@@6 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@6 (TMap t0@@3 t1@@0) h@@2) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@7) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@7) t1@@0 h@@2) ($IsAllocBox bx@@7 t0@@3 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |2963|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@7))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@7))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |2964|
 :pattern ( ($IsAlloc MapType v@@6 (TMap t0@@3 t1@@0) h@@2))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) ) (! (< (DtRank |a#36#0#0|) (DtRank (|#StackMachine.State.State| |a#36#0#0| |a#36#1#0| |a#36#2#0|)))
 :qid |Compilerdfy.206:26|
 :skolemid |3786|
 :pattern ( (|#StackMachine.State.State| |a#36#0#0| |a#36#1#0| |a#36#2#0|))
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
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |3173|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((|a#2#0#0@@2| Int) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#2#0#0@@2|) Tclass.StackMachine.Instr) ($Is intType (int_2_U |a#2#0#0@@2|) TInt))
 :qid |Compilerdfy.192:17|
 :skolemid |3736|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#2#0#0@@2|) Tclass.StackMachine.Instr))
)))
(assert (forall ((bx@@8 T@U) (s@@3 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@8 (TMap s@@3 t@@9)) (and (= ($Box MapType ($Unbox MapType bx@@8)) bx@@8) ($Is MapType ($Unbox MapType bx@@8) (TMap s@@3 t@@9))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |2924|
 :pattern ( ($IsBox bx@@8 (TMap s@@3 t@@9)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |3343|
 :pattern ( ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
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
(assert (forall ((d@@24 T@U) (LinkedList.List$T@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (LinkedList.List.Cons_q d@@24) ($IsAlloc DatatypeTypeType d@@24 (Tclass.LinkedList.List LinkedList.List$T@@5) $h@@1))) ($IsAllocBox (LinkedList.List.hd d@@24) LinkedList.List$T@@5 $h@@1))
 :qid |unknown.0:0|
 :skolemid |3701|
 :pattern ( ($IsAllocBox (LinkedList.List.hd d@@24) LinkedList.List$T@@5 $h@@1))
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
(assert (forall ((d@@25 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (StackMachine.Instr.PushConst_q d@@25) ($IsAlloc DatatypeTypeType d@@25 Tclass.StackMachine.Instr $h@@2))) ($IsAlloc intType (int_2_U (StackMachine.Instr.n d@@25)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |3737|
 :pattern ( ($IsAlloc intType (int_2_U (StackMachine.Instr.n d@@25)) TInt $h@@2))
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
(assert (forall ((d@@26 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@26)) (DtRank d@@26))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2972|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@26)))
)))
(assert (forall ((LinkedList._default.Concat$T@@3 T@U) ($ly@@5 T@U) (|l1#0@@3| T@U) (|l2#0@@3| T@U) ) (! (= (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 ($LS $ly@@5) |l1#0@@3| |l2#0@@3|) (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 $ly@@5 |l1#0@@3| |l2#0@@3|))
 :qid |unknown.0:0|
 :skolemid |3688|
 :pattern ( (LinkedList.__default.Concat LinkedList._default.Concat$T@@3 ($LS $ly@@5) |l1#0@@3| |l2#0@@3|))
)))
(assert (forall ((bx@@10 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@10)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@10))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2920|
 :pattern ( ($IsBox bx@@10 (TSet t@@10)))
)))
(assert (forall ((bx@@11 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@11)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@11))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2923|
 :pattern ( ($IsBox bx@@11 (TSeq t@@11)))
)))
(assert (forall ((LinkedList.List$T@@6 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass.LinkedList.List LinkedList.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass.LinkedList.List LinkedList.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |3503|
 :pattern ( ($IsBox bx@@12 (Tclass.LinkedList.List LinkedList.List$T@@6)))
)))
(assert (forall ((v@@10 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@10 (TMap t0@@5 t1@@2)) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@10) bx@@13) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@13) t1@@2) ($IsBox bx@@13 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |2943|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@13))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@10) bx@@13))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |2944|
 :pattern ( ($Is MapType v@@10 (TMap t0@@5 t1@@2)))
)))
(assert (forall (($ly@@6 T@U) (|p#0@@1| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg_k#canCall| (Lit DatatypeTypeType |p#0@@1|) (Lit DatatypeTypeType |st#0@@4|)) (and ($Is DatatypeTypeType |p#0@@1| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |st#0@@4| Tclass.StackMachine.State))) (and (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType |p#0@@1|))))) (let ((|p#8| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |p#0@@1|)))))
(let ((|instr#7| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (LinkedList.List.hd (Lit DatatypeTypeType |p#0@@1|))))))
 (and (|StackMachine.__default.interpProg_k#canCall| |p#8| (Lit DatatypeTypeType |st#0@@4|)) (|StackMachine.__default.interpInstr#canCall| |instr#7| (StackMachine.__default.interpProg_k ($LS $ly@@6) |p#8| (Lit DatatypeTypeType |st#0@@4|))))))) (= (StackMachine.__default.interpProg_k ($LS $ly@@6) (Lit DatatypeTypeType |p#0@@1|) (Lit DatatypeTypeType |st#0@@4|)) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType |p#0@@1|)) (let ((|p#7| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType |p#0@@1|)))))
(let ((|instr#6| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (LinkedList.List.hd (Lit DatatypeTypeType |p#0@@1|))))))
(Lit DatatypeTypeType (StackMachine.__default.interpInstr |instr#6| (Lit DatatypeTypeType (StackMachine.__default.interpProg_k ($LS $ly@@6) |p#7| (Lit DatatypeTypeType |st#0@@4|))))))) |st#0@@4|))))
 :qid |Compilerdfy.233:12|
 :weight 3
 :skolemid |3726|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $ly@@6) (Lit DatatypeTypeType |p#0@@1|) (Lit DatatypeTypeType |st#0@@4|)))
)))
(assert (forall ((d@@27 T@U) (LinkedList.List$T@@7 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (LinkedList.List.Cons_q d@@27) ($IsAlloc DatatypeTypeType d@@27 (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@3))) ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@27) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@3))
 :qid |unknown.0:0|
 :skolemid |3702|
 :pattern ( ($IsAlloc DatatypeTypeType (LinkedList.List.tl d@@27) (Tclass.LinkedList.List LinkedList.List$T@@7) $h@@3))
)))
(assert (forall ((d@@28 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@28 Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType d@@28 Tclass.StackMachine.Instr $h@@4))
 :qid |unknown.0:0|
 :skolemid |3766|
 :pattern ( ($IsAlloc DatatypeTypeType d@@28 Tclass.StackMachine.Instr $h@@4))
)))
(assert (forall ((d@@29 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@29 Tclass.StackMachine.State)) ($IsAlloc DatatypeTypeType d@@29 Tclass.StackMachine.State $h@@5))
 :qid |unknown.0:0|
 :skolemid |3793|
 :pattern ( ($IsAlloc DatatypeTypeType d@@29 Tclass.StackMachine.State $h@@5))
)))
(assert (= (Tag Tclass.StackMachine.Instr) Tagclass.StackMachine.Instr))
(assert (= (TagFamily Tclass.StackMachine.Instr) tytagFamily$Instr))
(assert (= (Tag Tclass.StackMachine.State) Tagclass.StackMachine.State))
(assert (= (TagFamily Tclass.StackMachine.State) tytagFamily$State))
(assert (forall ((d@@30 T@U) ) (!  (=> ($Is DatatypeTypeType d@@30 Tclass.StackMachine.Instr) (or (or (or (or (or (StackMachine.Instr.PushConst_q d@@30) (StackMachine.Instr.PushVar_q d@@30)) (StackMachine.Instr.PopAdd_q d@@30)) (StackMachine.Instr.PopSub_q d@@30)) (StackMachine.Instr.PopPrint_q d@@30)) (StackMachine.Instr.PopVar_q d@@30)))
 :qid |unknown.0:0|
 :skolemid |3768|
 :pattern ( (StackMachine.Instr.PopVar_q d@@30) ($Is DatatypeTypeType d@@30 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopPrint_q d@@30) ($Is DatatypeTypeType d@@30 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopSub_q d@@30) ($Is DatatypeTypeType d@@30 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopAdd_q d@@30) ($Is DatatypeTypeType d@@30 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushVar_q d@@30) ($Is DatatypeTypeType d@@30 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushConst_q d@@30) ($Is DatatypeTypeType d@@30 Tclass.StackMachine.Instr))
)))
(assert (= |#LinkedList.List.Nil| (Lit DatatypeTypeType |#LinkedList.List.Nil|)))
(assert (= |#StackMachine.Instr.PopAdd| (Lit DatatypeTypeType |#StackMachine.Instr.PopAdd|)))
(assert (= |#StackMachine.Instr.PopSub| (Lit DatatypeTypeType |#StackMachine.Instr.PopSub|)))
(assert (= |#StackMachine.Instr.PopPrint| (Lit DatatypeTypeType |#StackMachine.Instr.PopPrint|)))
(assert (forall ((|a#7#0#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#7#0#0@@1|) Tclass.StackMachine.Instr) ($Is SeqType |a#7#0#0@@1| (TSeq TChar)))
 :qid |Compilerdfy.193:15|
 :skolemid |3744|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#7#0#0@@1|) Tclass.StackMachine.Instr))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#26#0#0|) Tclass.StackMachine.Instr) ($Is SeqType |a#26#0#0| (TSeq TChar)))
 :qid |Compilerdfy.197:14|
 :skolemid |3760|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#26#0#0|) Tclass.StackMachine.Instr))
)))
(assert (forall ((d@@31 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (StackMachine.Instr.PushVar_q d@@31) ($IsAlloc DatatypeTypeType d@@31 Tclass.StackMachine.Instr $h@@6))) ($IsAlloc SeqType (StackMachine.Instr.v d@@31) (TSeq TChar) $h@@6))
 :qid |unknown.0:0|
 :skolemid |3745|
 :pattern ( ($IsAlloc SeqType (StackMachine.Instr.v d@@31) (TSeq TChar) $h@@6))
)))
(assert (forall ((d@@32 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (StackMachine.Instr.PopVar_q d@@32) ($IsAlloc DatatypeTypeType d@@32 Tclass.StackMachine.Instr $h@@7))) ($IsAlloc SeqType (StackMachine.Instr.v d@@32) (TSeq TChar) $h@@7))
 :qid |unknown.0:0|
 :skolemid |3761|
 :pattern ( ($IsAlloc SeqType (StackMachine.Instr.v d@@32) (TSeq TChar) $h@@7))
)))
(assert (forall ((d@@33 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (StackMachine.State.State_q d@@33) ($IsAlloc DatatypeTypeType d@@33 Tclass.StackMachine.State $h@@8))) ($IsAlloc DatatypeTypeType (StackMachine.State.stack d@@33) (Tclass.LinkedList.List TInt) $h@@8))
 :qid |unknown.0:0|
 :skolemid |3781|
 :pattern ( ($IsAlloc DatatypeTypeType (StackMachine.State.stack d@@33) (Tclass.LinkedList.List TInt) $h@@8))
)))
(assert (forall ((d@@34 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (StackMachine.State.State_q d@@34) ($IsAlloc DatatypeTypeType d@@34 Tclass.StackMachine.State $h@@9))) ($IsAlloc SeqType (StackMachine.State.output d@@34) (TSeq TInt) $h@@9))
 :qid |unknown.0:0|
 :skolemid |3783|
 :pattern ( ($IsAlloc SeqType (StackMachine.State.output d@@34) (TSeq TInt) $h@@9))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) (d@@35 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#38#1#0|) ($Box DatatypeTypeType d@@35)) (< (DtRank d@@35) (DtRank (|#StackMachine.State.State| |a#38#0#0| |a#38#1#0| |a#38#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |3788|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#38#1#0|) ($Box DatatypeTypeType d@@35)) (|#StackMachine.State.State| |a#38#0#0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall ((d@@36 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (StackMachine.State.State_q d@@36) ($IsAlloc DatatypeTypeType d@@36 Tclass.StackMachine.State $h@@10))) ($IsAlloc MapType (StackMachine.State.regs d@@36) (TMap (TSeq TChar) TInt) $h@@10))
 :qid |unknown.0:0|
 :skolemid |3782|
 :pattern ( ($IsAlloc MapType (StackMachine.State.regs d@@36) (TMap (TSeq TChar) TInt) $h@@10))
)))
(assert (forall ((d@@37 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_System.Tuple2.___hMake2_q d@@37) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@37 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@11)
 :qid |unknown.0:0|
 :skolemid |3346|
 :pattern ( ($IsAlloc DatatypeTypeType d@@37 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@11))
)))) ($IsAllocBox (_System.Tuple2._0 d@@37) |_System._tuple#2$T0@@6| $h@@11))
 :qid |unknown.0:0|
 :skolemid |3347|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@37) |_System._tuple#2$T0@@6| $h@@11))
)))
(assert (forall ((d@@38 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple2.___hMake2_q d@@38) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@38 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |3348|
 :pattern ( ($IsAlloc DatatypeTypeType d@@38 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@12))
)))) ($IsAllocBox (_System.Tuple2._1 d@@38) |_System._tuple#2$T1@@7| $h@@12))
 :qid |unknown.0:0|
 :skolemid |3349|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@38) |_System._tuple#2$T1@@7| $h@@12))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |3115|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3350|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
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
(assert (forall ((|a#3#0#0@@1| Int) ) (! (= (|#StackMachine.Instr.PushConst| (LitInt |a#3#0#0@@1|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#3#0#0@@1|)))
 :qid |Compilerdfy.192:17|
 :skolemid |3738|
 :pattern ( (|#StackMachine.Instr.PushConst| (LitInt |a#3#0#0@@1|)))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#StackMachine.Instr.PushVar| (Lit SeqType |a#8#0#0|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#8#0#0|)))
 :qid |Compilerdfy.193:15|
 :skolemid |3746|
 :pattern ( (|#StackMachine.Instr.PushVar| (Lit SeqType |a#8#0#0|)))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (= (|#StackMachine.Instr.PopVar| (Lit SeqType |a#27#0#0|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#27#0#0|)))
 :qid |Compilerdfy.197:14|
 :skolemid |3762|
 :pattern ( (|#StackMachine.Instr.PopVar| (Lit SeqType |a#27#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2904|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3110|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall (($ly@@7 T@U) (|p#0@@2| T@U) (|st#0@@5| T@U) ) (!  (=> (or (|StackMachine.__default.interpProg_k#canCall| |p#0@@2| |st#0@@5|) (and ($Is DatatypeTypeType |p#0@@2| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |st#0@@5| Tclass.StackMachine.State))) ($Is DatatypeTypeType (StackMachine.__default.interpProg_k $ly@@7 |p#0@@2| |st#0@@5|) Tclass.StackMachine.State))
 :qid |Compilerdfy.233:12|
 :skolemid |3723|
 :pattern ( (StackMachine.__default.interpProg_k $ly@@7 |p#0@@2| |st#0@@5|))
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
(assert (forall ((LinkedList.List$T@@8 T@U) (|a#2#0#0@@3| T@U) (|a#2#1#0@@2| T@U) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@3| |a#2#1#0@@2|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@13)  (and ($IsAllocBox |a#2#0#0@@3| LinkedList.List$T@@8 $h@@13) ($IsAlloc DatatypeTypeType |a#2#1#0@@2| (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@13))))
 :qid |unknown.0:0|
 :skolemid |3700|
 :pattern ( ($IsAlloc DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@3| |a#2#1#0@@2|) (Tclass.LinkedList.List LinkedList.List$T@@8) $h@@13))
)))
(assert (forall ((v@@13 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@13 (TSeq t0@@6)) (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| v@@13))) ($IsBox (|Seq#Index| v@@13 i@@4) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2941|
 :pattern ( (|Seq#Index| v@@13 i@@4))
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
(assert (forall ((s@@6 T@U) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| s@@6))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@5))) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |3155|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@5))))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |p1#0| () T@U)
(declare-fun |p2#0| () T@U)
(declare-fun |st#0@@6| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Compiler.__default.interpProg_k__Concat)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (|$IsA#LinkedList.List| |p1#0|)) (and (|$IsA#LinkedList.List| |p2#0|) (|$IsA#StackMachine.State| |st#0@@6|))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@0 $Heap@0)) (and (forall ((|$ih#p10#0| T@U) (|$ih#p20#0| T@U) (|$ih#st0#0| T@U) ) (!  (=> (and (and (and (and ($Is DatatypeTypeType |$ih#p10#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($Is DatatypeTypeType |$ih#p20#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr))) ($Is DatatypeTypeType |$ih#st0#0| Tclass.StackMachine.State)) (U_2_bool (Lit boolType (bool_2_U true)))) (or (< (DtRank |$ih#p10#0|) (DtRank |p1#0|)) (and (= (DtRank |$ih#p10#0|) (DtRank |p1#0|)) (or (< (DtRank |$ih#p20#0|) (DtRank |p2#0|)) (and (= (DtRank |$ih#p20#0|) (DtRank |p2#0|)) (< (DtRank |$ih#st0#0|) (DtRank |st#0@@6|))))))) (|StackMachine.State#Equal| (StackMachine.__default.interpProg_k ($LS $LZ) (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) |$ih#p10#0| |$ih#p20#0|) |$ih#st0#0|) (StackMachine.__default.interpProg_k ($LS $LZ) |$ih#p10#0| (StackMachine.__default.interpProg_k ($LS $LZ) |$ih#p20#0| |$ih#st0#0|))))
 :qid |Compilerdfy.271:28|
 :skolemid |3528|
 :pattern ( (StackMachine.__default.interpProg_k ($LS $LZ) |$ih#p10#0| (StackMachine.__default.interpProg_k ($LS $LZ) |$ih#p20#0| |$ih#st0#0|)))
 :pattern ( (StackMachine.__default.interpProg_k ($LS $LZ) (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS $LZ) |$ih#p10#0| |$ih#p20#0|) |$ih#st0#0|))
)) (= (ControlFlow 0 2) (- 0 1)))) (|StackMachine.State#Equal| (StackMachine.__default.interpProg_k ($LS ($LS $LZ)) (LinkedList.__default.Concat Tclass.StackMachine.Instr ($LS ($LS $LZ)) |p1#0| |p2#0|) |st#0@@6|) (StackMachine.__default.interpProg_k ($LS ($LS $LZ)) |p1#0| (StackMachine.__default.interpProg_k ($LS ($LS $LZ)) |p2#0| |st#0@@6|)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (and ($Is DatatypeTypeType |p1#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType |p1#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr) $Heap@@0)) (|$IsA#LinkedList.List| |p1#0|)) (and (and ($Is DatatypeTypeType |p2#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr)) ($IsAlloc DatatypeTypeType |p2#0| (Tclass.LinkedList.List Tclass.StackMachine.Instr) $Heap@@0)) (|$IsA#LinkedList.List| |p2#0|))) (and (and (and ($Is DatatypeTypeType |st#0@@6| Tclass.StackMachine.State) ($IsAlloc DatatypeTypeType |st#0@@6| Tclass.StackMachine.State $Heap@@0)) (|$IsA#StackMachine.State| |st#0@@6|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 3) 2)))) anon0_correct))))
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
