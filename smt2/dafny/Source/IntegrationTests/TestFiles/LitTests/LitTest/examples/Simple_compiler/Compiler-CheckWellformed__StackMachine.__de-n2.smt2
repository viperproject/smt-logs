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
(declare-fun Tagclass.StackMachine.State () T@U)
(declare-fun Tagclass.LinkedList.List () T@U)
(declare-fun |##StackMachine.Instr.PushConst| () T@U)
(declare-fun |##StackMachine.Instr.PushVar| () T@U)
(declare-fun |##StackMachine.Instr.PopAdd| () T@U)
(declare-fun |##StackMachine.Instr.PopSub| () T@U)
(declare-fun |##StackMachine.Instr.PopPrint| () T@U)
(declare-fun |##StackMachine.Instr.PopVar| () T@U)
(declare-fun |##StackMachine.State.State| () T@U)
(declare-fun |##LinkedList.List.Cons| () T@U)
(declare-fun |##LinkedList.List.Nil| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Instr () T@U)
(declare-fun tytagFamily$State () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun |#StackMachine.State.State| (T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#StackMachine.Instr.PushVar| (T@U) T@U)
(declare-fun |#StackMachine.Instr.PopVar| (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun StackMachine.State.stack (T@U) T@U)
(declare-fun StackMachine.State.regs (T@U) T@U)
(declare-fun StackMachine.State.output (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun StackMachine.__default.interpInstr (T@U T@U) T@U)
(declare-fun |StackMachine.__default.interpInstr#canCall| (T@U T@U) Bool)
(declare-fun Tclass.StackMachine.Instr () T@U)
(declare-fun Tclass.StackMachine.State () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#StackMachine.Instr.PopAdd| () T@U)
(declare-fun |#StackMachine.Instr.PopSub| () T@U)
(declare-fun |#StackMachine.Instr.PopPrint| () T@U)
(declare-fun |#LinkedList.List.Nil| () T@U)
(declare-fun StackMachine.State.State_q (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun StackMachine.Instr.PushConst_q (T@U) Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun StackMachine.Instr.PushVar_q (T@U) Bool)
(declare-fun StackMachine.Instr.v (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun StackMachine.Instr.PopAdd_q (T@U) Bool)
(declare-fun LinkedList.List.Cons_q (T@U) Bool)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun LinkedList.List.tl (T@U) T@U)
(declare-fun StackMachine.Instr.PopSub_q (T@U) Bool)
(declare-fun StackMachine.Instr.PopPrint_q (T@U) Bool)
(declare-fun StackMachine.Instr.n (T@U) Int)
(declare-fun |#LinkedList.List.Cons| (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun LinkedList.List.hd (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.LinkedList.List (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun StackMachine.Instr.PopVar_q (T@U) Bool)
(declare-fun LinkedList.List.Nil_q (T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#StackMachine.Instr.PushConst| (Int) T@U)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.StackMachine.Instr Tagclass.StackMachine.State Tagclass.LinkedList.List |##StackMachine.Instr.PushConst| |##StackMachine.Instr.PushVar| |##StackMachine.Instr.PopAdd| |##StackMachine.Instr.PopSub| |##StackMachine.Instr.PopPrint| |##StackMachine.Instr.PopVar| |##StackMachine.State.State| |##LinkedList.List.Cons| |##LinkedList.List.Nil| |tytagFamily$_tuple#2| tytagFamily$Instr tytagFamily$State tytagFamily$List)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#41#0#0| T@U) (|a#41#1#0| T@U) (|a#41#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#41#2#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#41#2#0| i))) (DtRank (|#StackMachine.State.State| |a#41#0#0| |a#41#1#0| |a#41#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |2852|
 :pattern ( (|Seq#Index| |a#41#2#0| i) (|#StackMachine.State.State| |a#41#0#0| |a#41#1#0| |a#41#2#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#10#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#10#0#0| i@@0))) (DtRank (|#StackMachine.Instr.PushVar| |a#10#0#0|))))
 :qid |Compilerdfy.193:15|
 :skolemid |2809|
 :pattern ( (|Seq#Index| |a#10#0#0| i@@0) (|#StackMachine.Instr.PushVar| |a#10#0#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| |a#29#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#29#0#0| i@@1))) (DtRank (|#StackMachine.Instr.PopVar| |a#29#0#0|))))
 :qid |Compilerdfy.197:14|
 :skolemid |2825|
 :pattern ( (|Seq#Index| |a#29#0#0| i@@1) (|#StackMachine.Instr.PopVar| |a#29#0#0|))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| T@U) (|a#31#2#0| T@U) ) (! (= (DatatypeCtorId (|#StackMachine.State.State| |a#31#0#0| |a#31#1#0| |a#31#2#0|)) |##StackMachine.State.State|)
 :qid |Compilerdfy.206:26|
 :skolemid |2837|
 :pattern ( (|#StackMachine.State.State| |a#31#0#0| |a#31#1#0| |a#31#2#0|))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) (|a#35#2#0| T@U) ) (! (= (StackMachine.State.stack (|#StackMachine.State.State| |a#35#0#0| |a#35#1#0| |a#35#2#0|)) |a#35#0#0|)
 :qid |Compilerdfy.206:26|
 :skolemid |2846|
 :pattern ( (|#StackMachine.State.State| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) (|a#37#2#0| T@U) ) (! (= (StackMachine.State.regs (|#StackMachine.State.State| |a#37#0#0| |a#37#1#0| |a#37#2#0|)) |a#37#1#0|)
 :qid |Compilerdfy.206:26|
 :skolemid |2848|
 :pattern ( (|#StackMachine.State.State| |a#37#0#0| |a#37#1#0| |a#37#2#0|))
)))
(assert (forall ((|a#40#0#0| T@U) (|a#40#1#0| T@U) (|a#40#2#0| T@U) ) (! (= (StackMachine.State.output (|#StackMachine.State.State| |a#40#0#0| |a#40#1#0| |a#40#2#0|)) |a#40#2#0|)
 :qid |Compilerdfy.206:26|
 :skolemid |2851|
 :pattern ( (|#StackMachine.State.State| |a#40#0#0| |a#40#1#0| |a#40#2#0|))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |2629|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|instr#0| T@U) (|st#0| T@U) ) (!  (=> (or (|StackMachine.__default.interpInstr#canCall| |instr#0| |st#0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |instr#0| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0| Tclass.StackMachine.State)))) ($Is DatatypeTypeType (StackMachine.__default.interpInstr |instr#0| |st#0|) Tclass.StackMachine.State))
 :qid |Compilerdfy.210:24|
 :skolemid |2772|
 :pattern ( (StackMachine.__default.interpInstr |instr#0| |st#0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopAdd|) |##StackMachine.Instr.PopAdd|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopSub|) |##StackMachine.Instr.PopSub|))
(assert (= (DatatypeCtorId |#StackMachine.Instr.PopPrint|) |##StackMachine.Instr.PopPrint|))
(assert (= (DatatypeCtorId |#LinkedList.List.Nil|) |##LinkedList.List.Nil|))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.StackMachine.State) (StackMachine.State.State_q d@@0))
 :qid |unknown.0:0|
 :skolemid |2856|
 :pattern ( (StackMachine.State.State_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.StackMachine.State))
)))
(assert  (and (and (and (= (Ctor SeqType) 4) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|instr#0@@0| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|StackMachine.__default.interpInstr#canCall| |instr#0@@0| |st#0@@0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |instr#0@@0| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0@@0| Tclass.StackMachine.State)))) (and (and (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (=> (StackMachine.Instr.PushConst_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (let ((|dt_update_tmp#0#1| |st#0@@0|))
 (and (StackMachine.State.State_q |dt_update_tmp#0#1|) (StackMachine.State.State_q |dt_update_tmp#0#1|))))))) (=> (not (StackMachine.Instr.PushConst_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))) (and (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (=> (StackMachine.Instr.PushVar_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (let ((|v#2| (StackMachine.Instr.v ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))))
 (and (and (StackMachine.State.State_q |st#0@@0|) (=> (|Set#IsMember| (|Map#Domain| (StackMachine.State.regs |st#0@@0|)) ($Box SeqType |v#2|)) (StackMachine.State.State_q |st#0@@0|))) (let ((|dt_update_tmp#1#1| |st#0@@0|))
 (and (StackMachine.State.State_q |dt_update_tmp#1#1|) (StackMachine.State.State_q |dt_update_tmp#1#1|))))))))) (=> (not (StackMachine.Instr.PushVar_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))) (and (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (=> (StackMachine.Instr.PopAdd_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (=> (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (=> (LinkedList.List.Cons_q (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (let ((|dt_update_tmp#2#1| |st#0@@0|))
 (and (StackMachine.State.State_q |dt_update_tmp#2#1|) (StackMachine.State.State_q |dt_update_tmp#2#1|)))))))))))) (=> (not (StackMachine.Instr.PopAdd_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))) (and (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (=> (StackMachine.Instr.PopSub_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (=> (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (=> (LinkedList.List.Cons_q (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (let ((|dt_update_tmp#3#1| |st#0@@0|))
 (and (StackMachine.State.State_q |dt_update_tmp#3#1|) (StackMachine.State.State_q |dt_update_tmp#3#1|)))))))))))) (=> (not (StackMachine.Instr.PopSub_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))) (and (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (=> (StackMachine.Instr.PopPrint_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (=> (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (let ((|dt_update_tmp#4#1| |st#0@@0|))
 (and (StackMachine.State.State_q |st#0@@0|) (StackMachine.State.State_q |dt_update_tmp#4#1|))))))))) (=> (not (StackMachine.Instr.PopPrint_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))) (and (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (=> (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (and (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))) (let ((|dt_update_tmp#5#1| |st#0@@0|))
 (and (StackMachine.State.State_q |st#0@@0|) (StackMachine.State.State_q |dt_update_tmp#5#1|)))))))) (=> (not (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))) (and (StackMachine.State.State_q |st#0@@0|) (_System.Tuple2.___hMake2_q (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))))))))))))) (= (StackMachine.__default.interpInstr |instr#0@@0| |st#0@@0|) (ite (StackMachine.Instr.PushConst_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (let ((|tl#0| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))))
(let ((|n#0| (StackMachine.Instr.n ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))))
(let ((|dt_update_tmp#0#0| |st#0@@0|))
(let ((|dt_update#stack#0#0| (|#LinkedList.List.Cons| ($Box intType (int_2_U |n#0|)) |tl#0|)))
(|#StackMachine.State.State| |dt_update#stack#0#0| (StackMachine.State.regs |dt_update_tmp#0#0|) (StackMachine.State.output |dt_update_tmp#0#0|)))))) (ite (StackMachine.Instr.PushVar_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (let ((|tl#1| ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))))
(let ((|v#0| (StackMachine.Instr.v ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))))
(let ((|val#0| (ite (|Set#IsMember| (|Map#Domain| (StackMachine.State.regs |st#0@@0|)) ($Box SeqType |v#0|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (StackMachine.State.regs |st#0@@0|)) ($Box SeqType |v#0|)))) 0)))
(let ((|dt_update_tmp#1#0| |st#0@@0|))
(let ((|dt_update#stack#1#0| (|#LinkedList.List.Cons| ($Box intType (int_2_U |val#0|)) |tl#1|)))
(|#StackMachine.State.State| |dt_update#stack#1#0| (StackMachine.State.regs |dt_update_tmp#1#0|) (StackMachine.State.output |dt_update_tmp#1#0|))))))) (ite (StackMachine.Instr.PopAdd_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (ite (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (ite (LinkedList.List.Cons_q (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))) (let ((|tl#2| (LinkedList.List.tl (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))))))
(let ((|n1#0| (U_2_int ($Unbox intType (LinkedList.List.hd (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))))))))
(let ((|n2#0| (U_2_int ($Unbox intType (LinkedList.List.hd ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))))))
(let ((|dt_update_tmp#2#0| |st#0@@0|))
(let ((|dt_update#stack#2#0| (|#LinkedList.List.Cons| ($Box intType (int_2_U (+ |n1#0| |n2#0|))) |tl#2|)))
(|#StackMachine.State.State| |dt_update#stack#2#0| (StackMachine.State.regs |dt_update_tmp#2#0|) (StackMachine.State.output |dt_update_tmp#2#0|))))))) |st#0@@0|) |st#0@@0|) (ite (StackMachine.Instr.PopSub_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (ite (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (ite (LinkedList.List.Cons_q (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))) (let ((|tl#3| (LinkedList.List.tl (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))))))
(let ((|n1#1| (U_2_int ($Unbox intType (LinkedList.List.hd (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))))))))
(let ((|n2#1| (U_2_int ($Unbox intType (LinkedList.List.hd ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))))))
(let ((|dt_update_tmp#3#0| |st#0@@0|))
(let ((|dt_update#stack#3#0| (|#LinkedList.List.Cons| ($Box intType (int_2_U (- |n1#1| |n2#1|))) |tl#3|)))
(|#StackMachine.State.State| |dt_update#stack#3#0| (StackMachine.State.regs |dt_update_tmp#3#0|) (StackMachine.State.output |dt_update_tmp#3#0|))))))) |st#0@@0|) |st#0@@0|) (ite (StackMachine.Instr.PopPrint_q ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (ite (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (let ((|tl#4| (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))))
(let ((|n#1| (U_2_int ($Unbox intType (LinkedList.List.hd ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))))))
(let ((|dt_update_tmp#4#0| |st#0@@0|))
(let ((|dt_update#output#0#0| (|Seq#Append| (StackMachine.State.output |st#0@@0|) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#1|))))))
(let ((|dt_update#stack#4#0| |tl#4|))
(|#StackMachine.State.State| |dt_update#stack#4#0| (StackMachine.State.regs |dt_update_tmp#4#0|) |dt_update#output#0#0|)))))) |st#0@@0|) (ite (LinkedList.List.Cons_q ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|)))))) (let ((|tl#5| (LinkedList.List.tl ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))))
(let ((|n#2| (U_2_int ($Unbox intType (LinkedList.List.hd ($Unbox DatatypeTypeType (_System.Tuple2._1 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))))))
(let ((|v#1| (StackMachine.Instr.v ($Unbox DatatypeTypeType (_System.Tuple2._0 (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@0|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@0|))))))))
(let ((|dt_update_tmp#5#0| |st#0@@0|))
(let ((|dt_update#regs#0#0| (|Map#Build| (StackMachine.State.regs |st#0@@0|) ($Box SeqType |v#1|) ($Box intType (int_2_U |n#2|)))))
(let ((|dt_update#stack#5#0| |tl#5|))
(|#StackMachine.State.State| |dt_update#stack#5#0| |dt_update#regs#0#0| (StackMachine.State.output |dt_update_tmp#5#0|)))))))) |st#0@@0|)))))))))
 :qid |Compilerdfy.210:24|
 :skolemid |2774|
 :pattern ( (StackMachine.__default.interpInstr |instr#0@@0| |st#0@@0|))
))))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |2617|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopAdd| Tclass.StackMachine.Instr))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopSub| Tclass.StackMachine.Instr))
(assert ($Is DatatypeTypeType |#StackMachine.Instr.PopPrint| Tclass.StackMachine.Instr))
(assert (forall ((LinkedList.List$T T@U) ) (! ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T))
 :qid |unknown.0:0|
 :skolemid |2881|
 :pattern ( ($Is DatatypeTypeType |#LinkedList.List.Nil| (Tclass.LinkedList.List LinkedList.List$T)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2178|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2176|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |2419|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((LinkedList.List$T@@0 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@0))  (and ($IsBox |a#2#0#0@@0| LinkedList.List$T@@0) ($Is DatatypeTypeType |a#2#1#0@@0| (Tclass.LinkedList.List LinkedList.List$T@@0))))
 :qid |unknown.0:0|
 :skolemid |2870|
 :pattern ( ($Is DatatypeTypeType (|#LinkedList.List.Cons| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.LinkedList.List LinkedList.List$T@@0)))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@1) (= (DatatypeCtorId d@@1) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |2610|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (StackMachine.Instr.PushConst_q d@@2) (= (DatatypeCtorId d@@2) |##StackMachine.Instr.PushConst|))
 :qid |unknown.0:0|
 :skolemid |2794|
 :pattern ( (StackMachine.Instr.PushConst_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (StackMachine.Instr.PushVar_q d@@3) (= (DatatypeCtorId d@@3) |##StackMachine.Instr.PushVar|))
 :qid |unknown.0:0|
 :skolemid |2802|
 :pattern ( (StackMachine.Instr.PushVar_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (StackMachine.Instr.PopAdd_q d@@4) (= (DatatypeCtorId d@@4) |##StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |2811|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (StackMachine.Instr.PopSub_q d@@5) (= (DatatypeCtorId d@@5) |##StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |2813|
 :pattern ( (StackMachine.Instr.PopSub_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (StackMachine.Instr.PopPrint_q d@@6) (= (DatatypeCtorId d@@6) |##StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |2815|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (StackMachine.Instr.PopVar_q d@@7) (= (DatatypeCtorId d@@7) |##StackMachine.Instr.PopVar|))
 :qid |unknown.0:0|
 :skolemid |2818|
 :pattern ( (StackMachine.Instr.PopVar_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (! (= (StackMachine.State.State_q d@@8) (= (DatatypeCtorId d@@8) |##StackMachine.State.State|))
 :qid |unknown.0:0|
 :skolemid |2838|
 :pattern ( (StackMachine.State.State_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (! (= (LinkedList.List.Cons_q d@@9) (= (DatatypeCtorId d@@9) |##LinkedList.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |2867|
 :pattern ( (LinkedList.List.Cons_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (! (= (LinkedList.List.Nil_q d@@10) (= (DatatypeCtorId d@@10) |##LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2879|
 :pattern ( (LinkedList.List.Nil_q d@@10))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2187|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (StackMachine.State.State_q d@@11) (exists ((|a#32#0#0| T@U) (|a#32#1#0| T@U) (|a#32#2#0| T@U) ) (! (= d@@11 (|#StackMachine.State.State| |a#32#0#0| |a#32#1#0| |a#32#2#0|))
 :qid |Compilerdfy.206:26|
 :skolemid |2839|
)))
 :qid |unknown.0:0|
 :skolemid |2840|
 :pattern ( (StackMachine.State.State_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@12) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@12 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |2611|
)))
 :qid |unknown.0:0|
 :skolemid |2612|
 :pattern ( (_System.Tuple2.___hMake2_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (LinkedList.List.Cons_q d@@13) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@13 (|#LinkedList.List.Cons| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |Compilerdfy.168:12|
 :skolemid |2868|
)))
 :qid |unknown.0:0|
 :skolemid |2869|
 :pattern ( (LinkedList.List.Cons_q d@@13))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (StackMachine.Instr.PopAdd_q d@@14) (= d@@14 |#StackMachine.Instr.PopAdd|))
 :qid |unknown.0:0|
 :skolemid |2812|
 :pattern ( (StackMachine.Instr.PopAdd_q d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (StackMachine.Instr.PopSub_q d@@15) (= d@@15 |#StackMachine.Instr.PopSub|))
 :qid |unknown.0:0|
 :skolemid |2814|
 :pattern ( (StackMachine.Instr.PopSub_q d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (StackMachine.Instr.PopPrint_q d@@16) (= d@@16 |#StackMachine.Instr.PopPrint|))
 :qid |unknown.0:0|
 :skolemid |2816|
 :pattern ( (StackMachine.Instr.PopPrint_q d@@16))
)))
(assert (forall ((d@@17 T@U) ) (!  (=> (LinkedList.List.Nil_q d@@17) (= d@@17 |#LinkedList.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2880|
 :pattern ( (LinkedList.List.Nil_q d@@17))
)))
(assert (= (Ctor SetType) 6))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2207|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2208|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> (StackMachine.Instr.PushConst_q d@@18) (exists ((|a#1#0#0@@1| Int) ) (! (= d@@18 (|#StackMachine.Instr.PushConst| |a#1#0#0@@1|))
 :qid |Compilerdfy.192:17|
 :skolemid |2795|
)))
 :qid |unknown.0:0|
 :skolemid |2796|
 :pattern ( (StackMachine.Instr.PushConst_q d@@18))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> (StackMachine.Instr.PushVar_q d@@19) (exists ((|a#6#0#0| T@U) ) (! (= d@@19 (|#StackMachine.Instr.PushVar| |a#6#0#0|))
 :qid |Compilerdfy.193:15|
 :skolemid |2803|
)))
 :qid |unknown.0:0|
 :skolemid |2804|
 :pattern ( (StackMachine.Instr.PushVar_q d@@19))
)))
(assert (forall ((d@@20 T@U) ) (!  (=> (StackMachine.Instr.PopVar_q d@@20) (exists ((|a#25#0#0| T@U) ) (! (= d@@20 (|#StackMachine.Instr.PopVar| |a#25#0#0|))
 :qid |Compilerdfy.197:14|
 :skolemid |2819|
)))
 :qid |unknown.0:0|
 :skolemid |2820|
 :pattern ( (StackMachine.Instr.PopVar_q d@@20))
)))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |2385|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (= (Ctor MapType) 7))
(assert (forall ((|a#33#0#0| T@U) (|a#33#1#0| T@U) (|a#33#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.State.State| |a#33#0#0| |a#33#1#0| |a#33#2#0|) Tclass.StackMachine.State)  (and (and ($Is DatatypeTypeType |a#33#0#0| (Tclass.LinkedList.List TInt)) ($Is MapType |a#33#1#0| (TMap (TSeq TChar) TInt))) ($Is SeqType |a#33#2#0| (TSeq TInt))))
 :qid |Compilerdfy.206:26|
 :skolemid |2841|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.State.State| |a#33#0#0| |a#33#1#0| |a#33#2#0|) Tclass.StackMachine.State))
)))
(assert (forall ((LinkedList.List$T@@1 T@U) ) (!  (and (= (Tag (Tclass.LinkedList.List LinkedList.List$T@@1)) Tagclass.LinkedList.List) (= (TagFamily (Tclass.LinkedList.List LinkedList.List$T@@1)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |2776|
 :pattern ( (Tclass.LinkedList.List LinkedList.List$T@@1))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) (|a#39#2#0| T@U) (bx@@1 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#39#1#0|) bx@@1) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#39#1#0|) bx@@1))) (DtRank (|#StackMachine.State.State| |a#39#0#0| |a#39#1#0| |a#39#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |2850|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#39#1#0|) bx@@1) (|#StackMachine.State.State| |a#39#0#0| |a#39#1#0| |a#39#2#0|))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |2387|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.StackMachine.Instr) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.StackMachine.Instr)))
 :qid |unknown.0:0|
 :skolemid |2770|
 :pattern ( ($IsBox bx@@2 Tclass.StackMachine.Instr))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.StackMachine.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.StackMachine.State)))
 :qid |unknown.0:0|
 :skolemid |2771|
 :pattern ( ($IsBox bx@@3 Tclass.StackMachine.State))
)))
(assert (forall ((s@@1 T@U) (i@@2 Int) (v@@1 T@U) ) (!  (and (=> (= i@@2 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@2) v@@1)) (=> (or (not (= i@@2 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@2) (|Seq#Index| s@@1 i@@2))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |2386|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|instr#0@@1| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|StackMachine.__default.interpInstr#canCall| (Lit DatatypeTypeType |instr#0@@1|) (Lit DatatypeTypeType |st#0@@1|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |instr#0@@1| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0@@1| Tclass.StackMachine.State)))) (and (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushConst_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (let ((|dt_update_tmp#0#3| (Lit DatatypeTypeType |st#0@@1|)))
 (and (StackMachine.State.State_q |dt_update_tmp#0#3|) (StackMachine.State.State_q |dt_update_tmp#0#3|))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushConst_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushVar_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (let ((|v#6| (Lit SeqType (StackMachine.Instr.v (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))
 (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (=> (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType (StackMachine.State.regs (Lit DatatypeTypeType |st#0@@1|))))) ($Box SeqType |v#6|)) (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)))) (let ((|dt_update_tmp#1#3| (Lit DatatypeTypeType |st#0@@1|)))
 (and (StackMachine.State.State_q |dt_update_tmp#1#3|) (StackMachine.State.State_q |dt_update_tmp#1#3|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PushVar_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopAdd_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|))))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (let ((|dt_update_tmp#2#3| (Lit DatatypeTypeType |st#0@@1|)))
 (and (StackMachine.State.State_q |dt_update_tmp#2#3|) (StackMachine.State.State_q |dt_update_tmp#2#3|)))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopAdd_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopSub_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|))))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (let ((|dt_update_tmp#3#3| (Lit DatatypeTypeType |st#0@@1|)))
 (and (StackMachine.State.State_q |dt_update_tmp#3#3|) (StackMachine.State.State_q |dt_update_tmp#3#3|)))))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopSub_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopPrint_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (let ((|dt_update_tmp#4#3| (Lit DatatypeTypeType |st#0@@1|)))
 (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (StackMachine.State.State_q |dt_update_tmp#4#3|))))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (StackMachine.Instr.PopPrint_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))) (and (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (=> (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|))))))))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (and (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))) (let ((|dt_update_tmp#5#3| (Lit DatatypeTypeType |st#0@@1|)))
 (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (StackMachine.State.State_q |dt_update_tmp#5#3|)))))))) (=> (not (U_2_bool (Lit boolType (bool_2_U (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))) (and (StackMachine.State.State_q (Lit DatatypeTypeType |st#0@@1|)) (_System.Tuple2.___hMake2_q (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))))))))) (= (StackMachine.__default.interpInstr (Lit DatatypeTypeType |instr#0@@1|) (Lit DatatypeTypeType |st#0@@1|)) (ite (StackMachine.Instr.PushConst_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))) (let ((|tl#12| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))
(let ((|n#6| (LitInt (StackMachine.Instr.n (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))
(let ((|dt_update_tmp#0#2| (Lit DatatypeTypeType |st#0@@1|)))
(let ((|dt_update#stack#0#2| (Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box intType (int_2_U |n#6|)) |tl#12|))))
(Lit DatatypeTypeType (|#StackMachine.State.State| |dt_update#stack#0#2| (Lit MapType (StackMachine.State.regs |dt_update_tmp#0#2|)) (Lit SeqType (StackMachine.State.output |dt_update_tmp#0#2|)))))))) (ite (StackMachine.Instr.PushVar_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))) (let ((|tl#13| (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))
(let ((|v#4| (Lit SeqType (StackMachine.Instr.v (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))
(let ((|val#2| (ite (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType (StackMachine.State.regs (Lit DatatypeTypeType |st#0@@1|))))) ($Box SeqType |v#4|)) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (StackMachine.State.regs (Lit DatatypeTypeType |st#0@@1|)))) ($Box SeqType |v#4|)))) 0)))
(let ((|dt_update_tmp#1#2| (Lit DatatypeTypeType |st#0@@1|)))
(let ((|dt_update#stack#1#2| (|#LinkedList.List.Cons| ($Box intType (int_2_U |val#2|)) |tl#13|)))
(|#StackMachine.State.State| |dt_update#stack#1#2| (Lit MapType (StackMachine.State.regs |dt_update_tmp#1#2|)) (Lit SeqType (StackMachine.State.output |dt_update_tmp#1#2|)))))))) (ite (StackMachine.Instr.PopAdd_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))) (let ((|tl#14| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))))
(let ((|n1#4| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))))))
(let ((|n2#4| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))))
(let ((|dt_update_tmp#2#2| (Lit DatatypeTypeType |st#0@@1|)))
(let ((|dt_update#stack#2#2| (Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box intType (int_2_U (LitInt (+ |n1#4| |n2#4|)))) |tl#14|))))
(Lit DatatypeTypeType (|#StackMachine.State.State| |dt_update#stack#2#2| (Lit MapType (StackMachine.State.regs |dt_update_tmp#2#2|)) (Lit SeqType (StackMachine.State.output |dt_update_tmp#2#2|))))))))) |st#0@@1|) |st#0@@1|) (ite (StackMachine.Instr.PopSub_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))) (let ((|tl#15| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))))
(let ((|n1#5| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))))))
(let ((|n2#5| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))))
(let ((|dt_update_tmp#3#2| (Lit DatatypeTypeType |st#0@@1|)))
(let ((|dt_update#stack#3#2| (Lit DatatypeTypeType (|#LinkedList.List.Cons| ($Box intType (int_2_U (LitInt (- |n1#5| |n2#5|)))) |tl#15|))))
(Lit DatatypeTypeType (|#StackMachine.State.State| |dt_update#stack#3#2| (Lit MapType (StackMachine.State.regs |dt_update_tmp#3#2|)) (Lit SeqType (StackMachine.State.output |dt_update_tmp#3#2|))))))))) |st#0@@1|) |st#0@@1|) (ite (StackMachine.Instr.PopPrint_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))) (let ((|tl#16| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))
(let ((|n#7| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))))
(let ((|dt_update_tmp#4#2| (Lit DatatypeTypeType |st#0@@1|)))
(let ((|dt_update#output#0#2| (|Seq#Append| (StackMachine.State.output (Lit DatatypeTypeType |st#0@@1|)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#7|))))))
(let ((|dt_update#stack#4#2| |tl#16|))
(|#StackMachine.State.State| |dt_update#stack#4#2| (Lit MapType (StackMachine.State.regs |dt_update_tmp#4#2|)) |dt_update#output#0#2|)))))) |st#0@@1|) (ite (LinkedList.List.Cons_q (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))) (let ((|tl#17| (Lit DatatypeTypeType (LinkedList.List.tl (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))
(let ((|n#8| (LitInt (U_2_int ($Unbox intType (LinkedList.List.hd (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._1 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))))
(let ((|v#5| (Lit SeqType (StackMachine.Instr.v (Lit DatatypeTypeType ($Unbox DatatypeTypeType (_System.Tuple2._0 (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType |instr#0@@1|)) ($Box DatatypeTypeType (Lit DatatypeTypeType (StackMachine.State.stack (Lit DatatypeTypeType |st#0@@1|)))))))))))))
(let ((|dt_update_tmp#5#2| (Lit DatatypeTypeType |st#0@@1|)))
(let ((|dt_update#regs#0#2| (|Map#Build| (Lit MapType (StackMachine.State.regs (Lit DatatypeTypeType |st#0@@1|))) ($Box SeqType |v#5|) ($Box intType (int_2_U |n#8|)))))
(let ((|dt_update#stack#5#2| |tl#17|))
(|#StackMachine.State.State| |dt_update#stack#5#2| |dt_update#regs#0#2| (Lit SeqType (StackMachine.State.output |dt_update_tmp#5#2|))))))))) (Lit DatatypeTypeType |st#0@@1|))))))))))
 :qid |Compilerdfy.210:24|
 :weight 3
 :skolemid |2775|
 :pattern ( (StackMachine.__default.interpInstr (Lit DatatypeTypeType |instr#0@@1|) (Lit DatatypeTypeType |st#0@@1|)))
))))
(assert (forall ((LinkedList.List$T@@2 T@U) (d@@21 T@U) ) (!  (=> ($Is DatatypeTypeType d@@21 (Tclass.LinkedList.List LinkedList.List$T@@2)) (or (LinkedList.List.Cons_q d@@21) (LinkedList.List.Nil_q d@@21)))
 :qid |unknown.0:0|
 :skolemid |2884|
 :pattern ( (LinkedList.List.Nil_q d@@21) ($Is DatatypeTypeType d@@21 (Tclass.LinkedList.List LinkedList.List$T@@2)))
 :pattern ( (LinkedList.List.Cons_q d@@21) ($Is DatatypeTypeType d@@21 (Tclass.LinkedList.List LinkedList.List$T@@2)))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2188|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TChar) (and (= ($Box charType ($Unbox charType bx@@5)) bx@@5) ($Is charType ($Unbox charType bx@@5) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |2191|
 :pattern ( ($IsBox bx@@5 TChar))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@2) t@@0) ($Is T@@1 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2199|
 :pattern ( ($IsBox ($Box T@@1 v@@2) t@@0))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2382|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((t@@1 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@1 u)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |2170|
 :pattern ( (TMap t@@1 u))
)))
(assert (forall ((t@@2 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |2171|
 :pattern ( (TMap t@@2 u@@0))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@3 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |2172|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |2609|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|)) |_System._tuple#2$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |2614|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T1@@2|)
 :qid |unknown.0:0|
 :skolemid |2615|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |2624|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |2626|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall ((|a#0#0#0@@0| T@U) (|a#0#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#LinkedList.List.Cons| |a#0#0#0@@0| |a#0#1#0@@0|)) |##LinkedList.List.Cons|)
 :qid |Compilerdfy.168:12|
 :skolemid |2866|
 :pattern ( (|#LinkedList.List.Cons| |a#0#0#0@@0| |a#0#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (LinkedList.List.hd (|#LinkedList.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#0#0@@0|)
 :qid |Compilerdfy.168:12|
 :skolemid |2875|
 :pattern ( (|#LinkedList.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#6#0#0@@1| T@U) (|a#6#1#0@@0| T@U) ) (! (= (LinkedList.List.tl (|#LinkedList.List.Cons| |a#6#0#0@@1| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |Compilerdfy.168:12|
 :skolemid |2877|
 :pattern ( (|#LinkedList.List.Cons| |a#6#0#0@@1| |a#6#1#0@@0|))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| T@U) (|a#34#2#0| T@U) ) (! (= (|#StackMachine.State.State| (Lit DatatypeTypeType |a#34#0#0|) (Lit MapType |a#34#1#0|) (Lit SeqType |a#34#2#0|)) (Lit DatatypeTypeType (|#StackMachine.State.State| |a#34#0#0| |a#34#1#0| |a#34#2#0|)))
 :qid |Compilerdfy.206:26|
 :skolemid |2845|
 :pattern ( (|#StackMachine.State.State| (Lit DatatypeTypeType |a#34#0#0|) (Lit MapType |a#34#1#0|) (Lit SeqType |a#34#2#0|)))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2162|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2163|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2168|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2169|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((LinkedList.List$T@@3 T@U) ) (! (= (Tclass.LinkedList.List_0 (Tclass.LinkedList.List LinkedList.List$T@@3)) LinkedList.List$T@@3)
 :qid |unknown.0:0|
 :skolemid |2777|
 :pattern ( (Tclass.LinkedList.List LinkedList.List$T@@3))
)))
(assert (forall ((|a#0#0#0@@1| Int) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PushConst| |a#0#0#0@@1|)) |##StackMachine.Instr.PushConst|)
 :qid |Compilerdfy.192:17|
 :skolemid |2793|
 :pattern ( (|#StackMachine.Instr.PushConst| |a#0#0#0@@1|))
)))
(assert (forall ((|a#4#0#0@@1| Int) ) (! (= (StackMachine.Instr.n (|#StackMachine.Instr.PushConst| |a#4#0#0@@1|)) |a#4#0#0@@1|)
 :qid |Compilerdfy.192:17|
 :skolemid |2800|
 :pattern ( (|#StackMachine.Instr.PushConst| |a#4#0#0@@1|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PushVar| |a#5#0#0|)) |##StackMachine.Instr.PushVar|)
 :qid |Compilerdfy.193:15|
 :skolemid |2801|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (StackMachine.Instr.v (|#StackMachine.Instr.PushVar| |a#9#0#0|)) |a#9#0#0|)
 :qid |Compilerdfy.193:15|
 :skolemid |2808|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#9#0#0|))
)))
(assert (forall ((|a#24#0#0| T@U) ) (! (= (DatatypeCtorId (|#StackMachine.Instr.PopVar| |a#24#0#0|)) |##StackMachine.Instr.PopVar|)
 :qid |Compilerdfy.197:14|
 :skolemid |2817|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#24#0#0|))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (= (StackMachine.Instr.v (|#StackMachine.Instr.PopVar| |a#28#0#0|)) |a#28#0#0|)
 :qid |Compilerdfy.197:14|
 :skolemid |2824|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#28#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2186|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) (|a#36#2#0| T@U) ) (! (< (DtRank |a#36#0#0|) (DtRank (|#StackMachine.State.State| |a#36#0#0| |a#36#1#0| |a#36#2#0|)))
 :qid |Compilerdfy.206:26|
 :skolemid |2847|
 :pattern ( (|#StackMachine.State.State| |a#36#0#0| |a#36#1#0| |a#36#2#0|))
)))
(assert (forall ((|a#42#0#0| T@U) (|a#42#1#0| T@U) (|a#42#2#0| T@U) ) (! (< (|Seq#Rank| |a#42#2#0|) (DtRank (|#StackMachine.State.State| |a#42#0#0| |a#42#1#0| |a#42#2#0|)))
 :qid |Compilerdfy.206:26|
 :skolemid |2853|
 :pattern ( (|#StackMachine.State.State| |a#42#0#0| |a#42#1#0| |a#42#2#0|))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2625|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2627|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#5#0#0@@1| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@1|) (DtRank (|#LinkedList.List.Cons| |a#5#0#0@@1| |a#5#1#0@@0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |2876|
 :pattern ( (|#LinkedList.List.Cons| |a#5#0#0@@1| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (< (DtRank |a#7#1#0@@0|) (DtRank (|#LinkedList.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |2878|
 :pattern ( (|#LinkedList.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |2446|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((|a#2#0#0@@1| Int) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#2#0#0@@1|) Tclass.StackMachine.Instr) ($Is intType (int_2_U |a#2#0#0@@1|) TInt))
 :qid |Compilerdfy.192:17|
 :skolemid |2797|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#2#0#0@@1|) Tclass.StackMachine.Instr))
)))
(assert (forall ((bx@@6 T@U) (s@@3 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@6 (TMap s@@3 t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@6)) bx@@6) ($Is MapType ($Unbox MapType bx@@6) (TMap s@@3 t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |2197|
 :pattern ( ($IsBox bx@@6 (TMap s@@3 t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))))
 :qid |unknown.0:0|
 :skolemid |2616|
 :pattern ( ($IsBox bx@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (< (|Seq#Rank| |a#11#0#0|) (DtRank (|#StackMachine.Instr.PushVar| |a#11#0#0|)))
 :qid |Compilerdfy.193:15|
 :skolemid |2810|
 :pattern ( (|#StackMachine.Instr.PushVar| |a#11#0#0|))
)))
(assert (forall ((|a#30#0#0| T@U) ) (! (< (|Seq#Rank| |a#30#0#0|) (DtRank (|#StackMachine.Instr.PopVar| |a#30#0#0|)))
 :qid |Compilerdfy.197:14|
 :skolemid |2826|
 :pattern ( (|#StackMachine.Instr.PopVar| |a#30#0#0|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
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
 :skolemid |9866|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@4 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@4 val@@4)) s@@4) (= (|Seq#Build_inv1| (|Seq#Build| s@@4 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |2384|
 :pattern ( (|Seq#Build| s@@4 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |2613|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |2434|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |2435|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@3 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@3)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |2436|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |2437|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |2445|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@4 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@4) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@4 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |2443|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |2444|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@4))
)))
(assert (forall ((m@@8 T@U) (u@@4 T@U) (|u'| T@U) (v@@5 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@5)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@5)) |u'|) v@@5))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@5)) |u'|) (|Set#IsMember| (|Map#Domain| m@@8) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@5)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@8) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |2451|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@5)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@5)) |u'|))
)))
(assert (forall ((d@@22 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@22)) (DtRank d@@22))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2245|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@22)))
)))
(assert (forall ((bx@@8 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2193|
 :pattern ( ($IsBox bx@@8 (TSet t@@9)))
)))
(assert (forall ((bx@@9 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@9 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@9)) bx@@9) ($Is SeqType ($Unbox SeqType bx@@9) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2196|
 :pattern ( ($IsBox bx@@9 (TSeq t@@10)))
)))
(assert (forall ((LinkedList.List$T@@4 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass.LinkedList.List LinkedList.List$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass.LinkedList.List LinkedList.List$T@@4))))
 :qid |unknown.0:0|
 :skolemid |2778|
 :pattern ( ($IsBox bx@@10 (Tclass.LinkedList.List LinkedList.List$T@@4)))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (t1@@1 T@U) ) (! (= ($Is MapType v@@6 (TMap t0@@2 t1@@1)) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@11) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@11) t1@@1) ($IsBox bx@@11 t0@@2)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |2216|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@11))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@11))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |2217|
 :pattern ( ($Is MapType v@@6 (TMap t0@@2 t1@@1)))
)))
(assert (= (Tag Tclass.StackMachine.Instr) Tagclass.StackMachine.Instr))
(assert (= (TagFamily Tclass.StackMachine.Instr) tytagFamily$Instr))
(assert (= (Tag Tclass.StackMachine.State) Tagclass.StackMachine.State))
(assert (= (TagFamily Tclass.StackMachine.State) tytagFamily$State))
(assert (forall ((d@@23 T@U) ) (!  (=> ($Is DatatypeTypeType d@@23 Tclass.StackMachine.Instr) (or (or (or (or (or (StackMachine.Instr.PushConst_q d@@23) (StackMachine.Instr.PushVar_q d@@23)) (StackMachine.Instr.PopAdd_q d@@23)) (StackMachine.Instr.PopSub_q d@@23)) (StackMachine.Instr.PopPrint_q d@@23)) (StackMachine.Instr.PopVar_q d@@23)))
 :qid |unknown.0:0|
 :skolemid |2829|
 :pattern ( (StackMachine.Instr.PopVar_q d@@23) ($Is DatatypeTypeType d@@23 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopPrint_q d@@23) ($Is DatatypeTypeType d@@23 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopSub_q d@@23) ($Is DatatypeTypeType d@@23 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PopAdd_q d@@23) ($Is DatatypeTypeType d@@23 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushVar_q d@@23) ($Is DatatypeTypeType d@@23 Tclass.StackMachine.Instr))
 :pattern ( (StackMachine.Instr.PushConst_q d@@23) ($Is DatatypeTypeType d@@23 Tclass.StackMachine.Instr))
)))
(assert (= |#StackMachine.Instr.PopAdd| (Lit DatatypeTypeType |#StackMachine.Instr.PopAdd|)))
(assert (= |#StackMachine.Instr.PopSub| (Lit DatatypeTypeType |#StackMachine.Instr.PopSub|)))
(assert (= |#StackMachine.Instr.PopPrint| (Lit DatatypeTypeType |#StackMachine.Instr.PopPrint|)))
(assert (= |#LinkedList.List.Nil| (Lit DatatypeTypeType |#LinkedList.List.Nil|)))
(assert (forall ((|a#7#0#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#7#0#0@@1|) Tclass.StackMachine.Instr) ($Is SeqType |a#7#0#0@@1| (TSeq TChar)))
 :qid |Compilerdfy.193:15|
 :skolemid |2805|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#7#0#0@@1|) Tclass.StackMachine.Instr))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#26#0#0|) Tclass.StackMachine.Instr) ($Is SeqType |a#26#0#0| (TSeq TChar)))
 :qid |Compilerdfy.197:14|
 :skolemid |2821|
 :pattern ( ($Is DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#26#0#0|) Tclass.StackMachine.Instr))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) (|a#38#2#0| T@U) (d@@24 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#38#1#0|) ($Box DatatypeTypeType d@@24)) (< (DtRank d@@24) (DtRank (|#StackMachine.State.State| |a#38#0#0| |a#38#1#0| |a#38#2#0|))))
 :qid |Compilerdfy.206:26|
 :skolemid |2849|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#38#1#0|) ($Box DatatypeTypeType d@@24)) (|#StackMachine.State.State| |a#38#0#0| |a#38#1#0| |a#38#2#0|))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s0@@0 n))) (=> (<= (|Seq#Length| s0@@0) n) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s1@@0 (- n (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |2388|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2623|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#LinkedList.List.Cons| (Lit BoxType |a#3#0#0@@0|) (Lit DatatypeTypeType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#LinkedList.List.Cons| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |Compilerdfy.168:12|
 :skolemid |2874|
 :pattern ( (|#LinkedList.List.Cons| (Lit BoxType |a#3#0#0@@0|) (Lit DatatypeTypeType |a#3#1#0@@0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2179|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0@@1| Int) ) (! (= (|#StackMachine.Instr.PushConst| (LitInt |a#3#0#0@@1|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PushConst| |a#3#0#0@@1|)))
 :qid |Compilerdfy.192:17|
 :skolemid |2799|
 :pattern ( (|#StackMachine.Instr.PushConst| (LitInt |a#3#0#0@@1|)))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#StackMachine.Instr.PushVar| (Lit SeqType |a#8#0#0|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PushVar| |a#8#0#0|)))
 :qid |Compilerdfy.193:15|
 :skolemid |2807|
 :pattern ( (|#StackMachine.Instr.PushVar| (Lit SeqType |a#8#0#0|)))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (= (|#StackMachine.Instr.PopVar| (Lit SeqType |a#27#0#0|)) (Lit DatatypeTypeType (|#StackMachine.Instr.PopVar| |a#27#0#0|)))
 :qid |Compilerdfy.197:14|
 :skolemid |2823|
 :pattern ( (|#StackMachine.Instr.PopVar| (Lit SeqType |a#27#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2177|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((s@@5 T@U) ) (!  (=> (= (|Seq#Length| s@@5) 0) (= s@@5 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2383|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((v@@7 T@U) (t0@@3 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@3)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@3) t0@@3))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2214|
 :pattern ( (|Seq#Index| v@@7 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2215|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@3)))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@8)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |2438|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |2439|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((s@@6 T@U) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@6))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@4))) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |2428|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@6 i@@4))))
)))
(assert (forall ((v@@9 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (!  (=> ($Is MapType v@@9 (TMap t0@@4 t1@@2)) (and (and ($Is SetType (|Map#Domain| v@@9) (TSet t0@@4)) ($Is SetType (|Map#Values| v@@9) (TSet t1@@2))) ($Is SetType (|Map#Items| v@@9) (TSet (Tclass._System.Tuple2 t0@@4 t1@@2)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |2218|
 :pattern ( ($Is MapType v@@9 (TMap t0@@4 t1@@2)))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2201|
 :pattern ( ($Is intType v@@10 TInt))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is charType v@@11 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |2204|
 :pattern ( ($Is charType v@@11 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |st#0@@2| () T@U)
(declare-fun |v#Z#1@0| () T@U)
(declare-fun |let#24#0#0| () Int)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#4#0| () T@U)
(declare-fun |let#22#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |tl#Z#4@0| () T@U)
(declare-fun |let#23#0#0| () T@U)
(declare-fun |_mcc#7#0| () T@U)
(declare-fun |_mcc#12#0| () Int)
(declare-fun |_mcc#13#0| () T@U)
(declare-fun |_mcc#6#0| () Int)
(declare-fun |_mcc#19#0| () T@U)
(declare-fun |_mcc#24#0| () Int)
(declare-fun |_mcc#25#0| () T@U)
(declare-fun |_mcc#18#0| () Int)
(declare-fun |_mcc#30#0| () Int)
(declare-fun |_mcc#31#0| () T@U)
(declare-fun |_mcc#38#0| () Int)
(declare-fun |_mcc#39#0| () T@U)
(declare-fun |_mcc#36#0| () T@U)
(declare-fun |_mcc#2#0| () Int)
(declare-fun |instr#0@@2| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$StackMachine.__default.interpInstr)
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
 (=> (= (ControlFlow 0 0) 46) (let ((anon9_correct true))
(let ((anon39_Else_correct  (=> (and (and (not (|Set#IsMember| (|Map#Domain| (StackMachine.State.regs |st#0@@2|)) ($Box SeqType |v#Z#1@0|))) (= |let#24#0#0| (LitInt 0))) (and ($Is intType (int_2_U |let#24#0#0|) TInt) (= (ControlFlow 0 40) 37))) anon9_correct)))
(let ((anon39_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| (StackMachine.State.regs |st#0@@2|)) ($Box SeqType |v#Z#1@0|)) (StackMachine.State.State_q |st#0@@2|)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (|Set#IsMember| (|Map#Domain| (StackMachine.State.regs |st#0@@2|)) ($Box SeqType |v#Z#1@0|))) (=> (|Set#IsMember| (|Map#Domain| (StackMachine.State.regs |st#0@@2|)) ($Box SeqType |v#Z#1@0|)) (=> (and (and (= |let#24#0#0| (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (StackMachine.State.regs |st#0@@2|)) ($Box SeqType |v#Z#1@0|))))) (StackMachine.State.State_q |st#0@@2|)) (and ($Is intType (int_2_U |let#24#0#0|) TInt) (= (ControlFlow 0 38) 37))) anon9_correct))))))
(let ((anon38_Then_correct  (=> (= |_mcc#0#0| (|#StackMachine.Instr.PushVar| |_mcc#4#0|)) (=> (and (and (and ($Is SeqType |_mcc#4#0| (TSeq TChar)) (= |let#22#0#0| |_mcc#1#0|)) (and ($Is DatatypeTypeType |let#22#0#0| (Tclass.LinkedList.List TInt)) (= |tl#Z#4@0| |let#22#0#0|))) (and (and (= |let#23#0#0| |_mcc#4#0|) ($Is SeqType |let#23#0#0| (TSeq TChar))) (and (= |v#Z#1@0| |let#23#0#0|) (StackMachine.State.State_q |st#0@@2|)))) (and (=> (= (ControlFlow 0 41) 38) anon39_Then_correct) (=> (= (ControlFlow 0 41) 40) anon39_Else_correct))))))
(let ((anon43_Else_correct true))
(let ((anon43_Then_correct true))
(let ((anon42_Else_correct  (=> (or (not (= |_mcc#7#0| (|#LinkedList.List.Cons| ($Box intType (int_2_U |_mcc#12#0|)) |_mcc#13#0|))) (not true)) (and (=> (= (ControlFlow 0 33) 31) anon43_Then_correct) (=> (= (ControlFlow 0 33) 32) anon43_Else_correct)))))
(let ((anon42_Then_correct true))
(let ((anon41_Then_correct  (=> (and (= |_mcc#1#0| (|#LinkedList.List.Cons| ($Box intType (int_2_U |_mcc#6#0|)) |_mcc#7#0|)) ($Is DatatypeTypeType |_mcc#7#0| (Tclass.LinkedList.List TInt))) (and (=> (= (ControlFlow 0 34) 30) anon42_Then_correct) (=> (= (ControlFlow 0 34) 33) anon42_Else_correct)))))
(let ((anon44_Else_correct true))
(let ((anon44_Then_correct true))
(let ((anon41_Else_correct  (=> (or (not (= |_mcc#1#0| (|#LinkedList.List.Cons| ($Box intType (int_2_U |_mcc#6#0|)) |_mcc#7#0|))) (not true)) (and (=> (= (ControlFlow 0 29) 27) anon44_Then_correct) (=> (= (ControlFlow 0 29) 28) anon44_Else_correct)))))
(let ((anon40_Then_correct  (=> (= |_mcc#0#0| |#StackMachine.Instr.PopAdd|) (and (=> (= (ControlFlow 0 35) 34) anon41_Then_correct) (=> (= (ControlFlow 0 35) 29) anon41_Else_correct)))))
(let ((anon48_Else_correct true))
(let ((anon48_Then_correct true))
(let ((anon47_Else_correct  (=> (or (not (= |_mcc#19#0| (|#LinkedList.List.Cons| ($Box intType (int_2_U |_mcc#24#0|)) |_mcc#25#0|))) (not true)) (and (=> (= (ControlFlow 0 23) 21) anon48_Then_correct) (=> (= (ControlFlow 0 23) 22) anon48_Else_correct)))))
(let ((anon47_Then_correct true))
(let ((anon46_Then_correct  (=> (and (= |_mcc#1#0| (|#LinkedList.List.Cons| ($Box intType (int_2_U |_mcc#18#0|)) |_mcc#19#0|)) ($Is DatatypeTypeType |_mcc#19#0| (Tclass.LinkedList.List TInt))) (and (=> (= (ControlFlow 0 24) 20) anon47_Then_correct) (=> (= (ControlFlow 0 24) 23) anon47_Else_correct)))))
(let ((anon49_Else_correct true))
(let ((anon49_Then_correct true))
(let ((anon46_Else_correct  (=> (or (not (= |_mcc#1#0| (|#LinkedList.List.Cons| ($Box intType (int_2_U |_mcc#18#0|)) |_mcc#19#0|))) (not true)) (and (=> (= (ControlFlow 0 19) 17) anon49_Then_correct) (=> (= (ControlFlow 0 19) 18) anon49_Else_correct)))))
(let ((anon45_Then_correct  (=> (= |_mcc#0#0| |#StackMachine.Instr.PopSub|) (and (=> (= (ControlFlow 0 25) 24) anon46_Then_correct) (=> (= (ControlFlow 0 25) 19) anon46_Else_correct)))))
(let ((anon52_Else_correct true))
(let ((anon52_Then_correct true))
(let ((anon51_Else_correct  (=> (or (not (= |_mcc#1#0| (|#LinkedList.List.Cons| ($Box intType (int_2_U |_mcc#30#0|)) |_mcc#31#0|))) (not true)) (and (=> (= (ControlFlow 0 14) 12) anon52_Then_correct) (=> (= (ControlFlow 0 14) 13) anon52_Else_correct)))))
(let ((anon51_Then_correct true))
(let ((anon50_Then_correct  (=> (= |_mcc#0#0| |#StackMachine.Instr.PopPrint|) (and (=> (= (ControlFlow 0 15) 11) anon51_Then_correct) (=> (= (ControlFlow 0 15) 14) anon51_Else_correct)))))
(let ((anon55_Else_correct true))
(let ((anon55_Then_correct true))
(let ((anon54_Else_correct  (=> (or (not (= |_mcc#1#0| (|#LinkedList.List.Cons| ($Box intType (int_2_U |_mcc#38#0|)) |_mcc#39#0|))) (not true)) (and (=> (= (ControlFlow 0 8) 6) anon55_Then_correct) (=> (= (ControlFlow 0 8) 7) anon55_Else_correct)))))
(let ((anon54_Then_correct true))
(let ((anon53_Then_correct  (=> (and (= |_mcc#0#0| (|#StackMachine.Instr.PopVar| |_mcc#36#0|)) ($Is SeqType |_mcc#36#0| (TSeq TChar))) (and (=> (= (ControlFlow 0 9) 5) anon54_Then_correct) (=> (= (ControlFlow 0 9) 8) anon54_Else_correct)))))
(let ((anon53_Else_correct true))
(let ((anon50_Else_correct  (=> (or (not (= |_mcc#0#0| |#StackMachine.Instr.PopPrint|)) (not true)) (and (=> (= (ControlFlow 0 10) 9) anon53_Then_correct) (=> (= (ControlFlow 0 10) 4) anon53_Else_correct)))))
(let ((anon45_Else_correct  (=> (or (not (= |_mcc#0#0| |#StackMachine.Instr.PopSub|)) (not true)) (and (=> (= (ControlFlow 0 16) 15) anon50_Then_correct) (=> (= (ControlFlow 0 16) 10) anon50_Else_correct)))))
(let ((anon40_Else_correct  (=> (or (not (= |_mcc#0#0| |#StackMachine.Instr.PopAdd|)) (not true)) (and (=> (= (ControlFlow 0 26) 25) anon45_Then_correct) (=> (= (ControlFlow 0 26) 16) anon45_Else_correct)))))
(let ((anon38_Else_correct  (=> (or (not (= |_mcc#0#0| (|#StackMachine.Instr.PushVar| |_mcc#4#0|))) (not true)) (and (=> (= (ControlFlow 0 36) 35) anon40_Then_correct) (=> (= (ControlFlow 0 36) 26) anon40_Else_correct)))))
(let ((anon37_Else_correct  (=> (or (not (= |_mcc#0#0| (|#StackMachine.Instr.PushConst| |_mcc#2#0|))) (not true)) (and (=> (= (ControlFlow 0 42) 41) anon38_Then_correct) (=> (= (ControlFlow 0 42) 36) anon38_Else_correct)))))
(let ((anon37_Then_correct true))
(let ((anon36_Then_correct  (=> (= (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |instr#0@@2|) ($Box DatatypeTypeType (StackMachine.State.stack |st#0@@2|))) (|#_System._tuple#2._#Make2| ($Box DatatypeTypeType |_mcc#0#0|) ($Box DatatypeTypeType |_mcc#1#0|))) (=> (and ($Is DatatypeTypeType |_mcc#0#0| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |_mcc#1#0| (Tclass.LinkedList.List TInt))) (and (=> (= (ControlFlow 0 43) 3) anon37_Then_correct) (=> (= (ControlFlow 0 43) 42) anon37_Else_correct))))))
(let ((anon36_Else_correct true))
(let ((anon35_Else_correct  (=> (StackMachine.State.State_q |st#0@@2|) (and (=> (= (ControlFlow 0 44) 43) anon36_Then_correct) (=> (= (ControlFlow 0 44) 2) anon36_Else_correct)))))
(let ((anon35_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 45) 1) anon35_Then_correct) (=> (= (ControlFlow 0 45) 44) anon35_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |instr#0@@2| Tclass.StackMachine.Instr) ($Is DatatypeTypeType |st#0@@2| Tclass.StackMachine.State)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 46) 45))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
