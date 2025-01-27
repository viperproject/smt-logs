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
(declare-fun Tagclass.Equiv.MState () T@U)
(declare-fun Tagclass.Equiv.VS () T@U)
(declare-fun |##Equiv.MState.MState| () T@U)
(declare-fun |##Equiv.MSeqValue.MSeqValue| () T@U)
(declare-fun Tagclass.Equiv.MSeqValue () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$MState () T@U)
(declare-fun tytagFamily$VS () T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#Equiv.MSeqValue.MSeqValue| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Equiv.__default.AssignState (T@U T@U T@U) T@U)
(declare-fun |Equiv.__default.AssignState#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.Equiv.MState () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
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
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#9| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Equiv.__default.BindStartScope (T@U T@U T@U) T@U)
(declare-fun |Equiv.__default.BindStartScope#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Equiv.MSeqValue () T@U)
(declare-fun Equiv.MState.MState_q (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun Equiv.__default.EqSeqValue (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Equiv.__default.EqSeqValue#canCall| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Equiv.__default.EqValue#canCall| (Int Int) Bool)
(declare-fun Equiv.__default.EqValue (Int Int) Bool)
(declare-fun Equiv.__default.Inv (T@U) Bool)
(declare-fun |Equiv.__default.Inv#canCall| (T@U) Bool)
(declare-fun |Equiv.__default.EqCtx#canCall| (T@U T@U) Bool)
(declare-fun Equiv.__default.EqCtx (Bool T@U T@U) Bool)
(declare-fun reveal_Equiv._default.EqCtx () Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Equiv.__default.UpdateState__Pre#canCall| (T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.Equiv.MState Tagclass.Equiv.VS |##Equiv.MState.MState| |##Equiv.MSeqValue.MSeqValue| Tagclass.Equiv.MSeqValue |tytagFamily$_tuple#2| tytagFamily$MState tytagFamily$VS tytagFamily$MSeqValue)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#21#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#21#0#0| i))) (DtRank (|#Equiv.MSeqValue.MSeqValue| |a#21#0#0| |a#21#1#0|))))
 :qid |Equivdfy.64:34|
 :skolemid |929|
 :pattern ( (|Seq#Index| |a#21#0#0| i) (|#Equiv.MSeqValue.MSeqValue| |a#21#0#0| |a#21#1#0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| |a#24#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#24#1#0| i@@0))) (DtRank (|#Equiv.MSeqValue.MSeqValue| |a#24#0#0| |a#24#1#0|))))
 :qid |Equivdfy.64:34|
 :skolemid |932|
 :pattern ( (|Seq#Index| |a#24#1#0| i@@0) (|#Equiv.MSeqValue.MSeqValue| |a#24#0#0| |a#24#1#0|))
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
(assert (= (Ctor SeqType) 4))
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
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#9| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Seq#Contains| |l#1| |$y#0|)))
 :qid |unknown.0:0|
 :skolemid |1217|
 :pattern ( (MapType0Select BoxType boolType (|lambda#9| |l#0| |l#1|) |$y#0|))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@1 b@@1) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@1 b@@1) (|Set#IsMember| b@@1 y@@1))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@0| T@U) (|vars#0@@0| T@U) (|vals#0@@0| T@U) ) (!  (=> (or (|Equiv.__default.BindStartScope#canCall| |st#0@@0| |vars#0@@0| |vals#0@@0|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@0| Tclass.Equiv.MState) ($Is SeqType |vars#0@@0| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@0| Tclass.Equiv.VS)) (Equiv.__default.UpdateState__Pre |st#0@@0| |vars#0@@0| |vals#0@@0|)))) (and (|Equiv.__default.AssignState#canCall| |st#0@@0| |vars#0@@0| |vals#0@@0|) (= (Equiv.__default.BindStartScope |st#0@@0| |vars#0@@0| |vals#0@@0|) (Equiv.__default.AssignState |st#0@@0| |vars#0@@0| |vals#0@@0|))))
 :qid |Inductiondfy.58:33|
 :skolemid |775|
 :pattern ( (Equiv.__default.BindStartScope |st#0@@0| |vars#0@@0| |vals#0@@0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2) (|Set#Union| a@@2 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o)  (and (|Set#IsMember| a@@3 o) (not (|Set#IsMember| b@@3 o))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@3) o))
)))
(assert (forall ((|vs#0| T@U) ($h T@U) ) (! (= ($IsAlloc DatatypeTypeType |vs#0| Tclass.Equiv.VS $h) ($IsAlloc DatatypeTypeType |vs#0| Tclass.Equiv.MSeqValue $h))
 :qid |unknown.0:0|
 :skolemid |940|
 :pattern ( ($IsAlloc DatatypeTypeType |vs#0| Tclass.Equiv.VS $h))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.Equiv.MState) (Equiv.MState.MState_q d@@0))
 :qid |unknown.0:0|
 :skolemid |901|
 :pattern ( (Equiv.MState.MState_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.Equiv.MState))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass.Equiv.MSeqValue) (Equiv.MSeqValue.MSeqValue_q d@@1))
 :qid |unknown.0:0|
 :skolemid |936|
 :pattern ( (Equiv.MSeqValue.MSeqValue_q d@@1) ($Is DatatypeTypeType d@@1 Tclass.Equiv.MSeqValue))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((s T@U) (n Int) ) (!  (=> (= n 0) (= (|Seq#Drop| s n) s))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s n))
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
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@1| T@U) (|vars#0@@1| T@U) (|vals#0@@1| T@U) ) (!  (=> (or (|Equiv.__default.AssignState#canCall| |st#0@@1| |vars#0@@1| |vals#0@@1|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@1| Tclass.Equiv.MState) ($Is SeqType |vars#0@@1| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@1| Tclass.Equiv.VS)) (Equiv.__default.UpdateState__Pre |st#0@@1| |vars#0@@1| |vals#0@@1|)))) (and (Equiv.__default.Inv (Equiv.__default.AssignState |st#0@@1| |vars#0@@1| |vals#0@@1|)) ($Is DatatypeTypeType (Equiv.__default.AssignState |st#0@@1| |vars#0@@1| |vals#0@@1|) Tclass.Equiv.MState)))
 :qid |Inductiondfy.54:30|
 :skolemid |760|
 :pattern ( (Equiv.__default.AssignState |st#0@@1| |vars#0@@1| |vals#0@@1|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@2| T@U) (|vars#0@@2| T@U) (|vals#0@@2| T@U) ) (!  (=> (or (|Equiv.__default.BindStartScope#canCall| |st#0@@2| |vars#0@@2| |vals#0@@2|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@2| Tclass.Equiv.MState) ($Is SeqType |vars#0@@2| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@2| Tclass.Equiv.VS)) (Equiv.__default.UpdateState__Pre |st#0@@2| |vars#0@@2| |vals#0@@2|)))) (and (Equiv.__default.Inv (Equiv.__default.BindStartScope |st#0@@2| |vars#0@@2| |vals#0@@2|)) ($Is DatatypeTypeType (Equiv.__default.BindStartScope |st#0@@2| |vars#0@@2| |vals#0@@2|) Tclass.Equiv.MState)))
 :qid |Inductiondfy.58:33|
 :skolemid |773|
 :pattern ( (Equiv.__default.BindStartScope |st#0@@2| |vars#0@@2| |vals#0@@2|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@3| T@U) ) (!  (=> (or (|Equiv.__default.Inv#canCall| |st#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@3| Tclass.Equiv.MState))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (and (Equiv.MState.MState_q |st#0@@3|) (Equiv.MState.MState_q |st#0@@3|)) (|Equiv.__default.EqCtx#canCall| (Equiv.MState.ctx |st#0@@3|) (Equiv.MState.ctx_k |st#0@@3|)))) (= (Equiv.__default.Inv |st#0@@3|)  (and true (Equiv.__default.EqCtx reveal_Equiv._default.EqCtx (Equiv.MState.ctx |st#0@@3|) (Equiv.MState.ctx_k |st#0@@3|))))))
 :qid |Equivdfy.72:23|
 :skolemid |682|
 :pattern ( (Equiv.__default.Inv |st#0@@3|))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((s@@0 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (<= n@@0 (|Seq#Length| s@@0))) (= (|Seq#Length| (|Seq#Drop| s@@0 n@@0)) (- (|Seq#Length| s@@0) n@@0)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@0 n@@0)))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@2) (= (DatatypeCtorId d@@2) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (Equiv.MState.MState_q d@@3) (= (DatatypeCtorId d@@3) |##Equiv.MState.MState|))
 :qid |unknown.0:0|
 :skolemid |886|
 :pattern ( (Equiv.MState.MState_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (Equiv.MSeqValue.MSeqValue_q d@@4) (= (DatatypeCtorId d@@4) |##Equiv.MSeqValue.MSeqValue|))
 :qid |unknown.0:0|
 :skolemid |920|
 :pattern ( (Equiv.MSeqValue.MSeqValue_q d@@4))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@4 b@@4) (forall ((o@@0 T@U) ) (!  (or (not (|Set#IsMember| a@@4 o@@0)) (not (|Set#IsMember| b@@4 o@@0)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@4 o@@0))
 :pattern ( (|Set#IsMember| b@@4 o@@0))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@4 b@@4))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@5) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@5 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (Equiv.MState.MState_q d@@6) (exists ((|a#1#0#0@@0| T@U) (|a#1#1#0@@0| T@U) ) (! (= d@@6 (|#Equiv.MState.MState| |a#1#0#0@@0| |a#1#1#0@@0|))
 :qid |Equivdfy.62:28|
 :skolemid |887|
)))
 :qid |unknown.0:0|
 :skolemid |888|
 :pattern ( (Equiv.MState.MState_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (Equiv.MSeqValue.MSeqValue_q d@@7) (exists ((|a#17#0#0| T@U) (|a#17#1#0| T@U) ) (! (= d@@7 (|#Equiv.MSeqValue.MSeqValue| |a#17#0#0| |a#17#1#0|))
 :qid |Equivdfy.64:34|
 :skolemid |921|
)))
 :qid |unknown.0:0|
 :skolemid |922|
 :pattern ( (Equiv.MSeqValue.MSeqValue_q d@@7))
)))
(assert (= (Ctor SetType) 6))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|x#0@@0| T@U) (|y#0@@0| T@U) ) (!  (=> (or (|Equiv.__default.EqSeqValue#canCall| |x#0@@0| |y#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is SeqType |x#0@@0| (TSeq TInt)) ($Is SeqType |y#0@@0| (TSeq TInt))))) (and (=> (= (|Seq#Length| |x#0@@0|) (|Seq#Length| |y#0@@0|)) (forall ((|i#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| |x#0@@0|))) (|Equiv.__default.EqValue#canCall| (U_2_int ($Unbox intType (|Seq#Index| |x#0@@0| |i#0|))) (U_2_int ($Unbox intType (|Seq#Index| |y#0@@0| |i#0|)))))
 :qid |Equivdfy.24:15|
 :skolemid |645|
 :pattern ( ($Unbox intType (|Seq#Index| |y#0@@0| |i#0|)))
 :pattern ( ($Unbox intType (|Seq#Index| |x#0@@0| |i#0|)))
))) (= (Equiv.__default.EqSeqValue |x#0@@0| |y#0@@0|)  (and (= (|Seq#Length| |x#0@@0|) (|Seq#Length| |y#0@@0|)) (forall ((|i#0@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| |x#0@@0|))) (Equiv.__default.EqValue (U_2_int ($Unbox intType (|Seq#Index| |x#0@@0| |i#0@@0|))) (U_2_int ($Unbox intType (|Seq#Index| |y#0@@0| |i#0@@0|)))))
 :qid |Equivdfy.24:15|
 :skolemid |644|
 :pattern ( ($Unbox intType (|Seq#Index| |y#0@@0| |i#0@@0|)))
 :pattern ( ($Unbox intType (|Seq#Index| |x#0@@0| |i#0@@0|)))
))))))
 :qid |Equivdfy.21:30|
 :skolemid |646|
 :pattern ( (Equiv.__default.EqSeqValue |x#0@@0| |y#0@@0|))
))))
(assert (forall ((s@@1 T@U) (i@@1 Int) ) (!  (=> (and (< 0 i@@1) (<= i@@1 (|Seq#Length| s@@1))) (< (|Seq#Rank| (|Seq#Drop| s@@1 i@@1)) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@1 i@@1)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@1| Int) (|y#0@@1| Int) ) (!  (=> (or (|Equiv.__default.EqValue#canCall| (LitInt |x#0@@1|) (LitInt |y#0@@1|)) (< 0 $FunctionContextHeight)) (= (Equiv.__default.EqValue (LitInt |x#0@@1|) (LitInt |y#0@@1|)) (= (LitInt |x#0@@1|) (LitInt |y#0@@1|))))
 :qid |Equivdfy.16:27|
 :weight 3
 :skolemid |641|
 :pattern ( (Equiv.__default.EqValue (LitInt |x#0@@1|) (LitInt |y#0@@1|)))
))))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| |a#18#0#0| |a#18#1#0|) Tclass.Equiv.MSeqValue)  (and ($Is SeqType |a#18#0#0| (TSeq TInt)) ($Is SeqType |a#18#1#0| (TSeq TInt))))
 :qid |Equivdfy.64:34|
 :skolemid |924|
 :pattern ( ($Is DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| |a#18#0#0| |a#18#1#0|) Tclass.Equiv.MSeqValue))
)))
(assert (= (Ctor MapType) 7))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@4| T@U) ) (!  (=> (or (|Equiv.__default.Inv#canCall| (Lit DatatypeTypeType |st#0@@4|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@4| Tclass.Equiv.MState))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (and (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@4|)) (Equiv.MState.MState_q (Lit DatatypeTypeType |st#0@@4|))) (|Equiv.__default.EqCtx#canCall| (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@4|))) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@4|)))))) (= (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@4|))  (and true (Equiv.__default.EqCtx reveal_Equiv._default.EqCtx (Lit MapType (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@4|))) (Lit MapType (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@4|))))))))
 :qid |Equivdfy.72:23|
 :weight 3
 :skolemid |683|
 :pattern ( (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@4|)))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|ctx#0@@0| T@U) (|ctx'#0@@0| T@U) ) (!  (=> (or (|Equiv.__default.EqCtx#canCall| (Lit MapType |ctx#0@@0|) (Lit MapType |ctx'#0@@0|)) (and (< 0 $FunctionContextHeight) (and ($Is MapType |ctx#0@@0| (TMap (TSeq TChar) TInt)) ($Is MapType |ctx'#0@@0| (TMap (TSeq TChar) TInt))))) (= (Equiv.__default.EqCtx true (Lit MapType |ctx#0@@0|) (Lit MapType |ctx'#0@@0|))  (and (|Set#Equal| (|Map#Domain| (Lit MapType |ctx#0@@0|)) (|Map#Domain| (Lit MapType |ctx'#0@@0|))) (forall ((|x#1| T@U) ) (!  (=> (and ($Is SeqType |x#1| (TSeq TChar)) (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType |ctx#0@@0|))) ($Box SeqType |x#1|))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |ctx#0@@0|)) ($Box SeqType |x#1|)))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |ctx'#0@@0|)) ($Box SeqType |x#1|))))))
 :qid |Equivdfy.30:15|
 :skolemid |658|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx'#0@@0|) ($Box SeqType |x#1|))))
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@0|) ($Box SeqType |x#1|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |ctx#0@@0|) ($Box SeqType |x#1|)))
)))))
 :qid |Equivdfy.27:35|
 :weight 3
 :skolemid |659|
 :pattern ( (Equiv.__default.EqCtx true (Lit MapType |ctx#0@@0|) (Lit MapType |ctx'#0@@0|)))
))))
(assert (forall ((s@@2 T@U) (n@@1 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 n@@1) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length| s@@2) n@@1))) (= (|Seq#Index| (|Seq#Drop| s@@2 n@@1) j@@0) (|Seq#Index| s@@2 (+ j@@0 n@@1))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@2 n@@1) j@@0))
)))
(assert (forall ((m@@2 T@U) (n@@2 T@U) (u T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Merge| m@@2 n@@2)) u) (and (=> (not (|Set#IsMember| (|Map#Domain| n@@2) u)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@2 n@@2)) u) (MapType0Select BoxType BoxType (|Map#Elements| m@@2) u))) (=> (|Set#IsMember| (|Map#Domain| n@@2) u) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@2 n@@2)) u) (MapType0Select BoxType BoxType (|Map#Elements| n@@2) u)))))
 :qid |DafnyPreludebpl.1479:15|
 :skolemid |294|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@2 n@@2)) u))
)))
(assert (forall ((|a#2#0#0@@1| T@U) (|a#2#1#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#Equiv.MState.MState| |a#2#0#0@@1| |a#2#1#0@@1|) Tclass.Equiv.MState)  (and ($Is MapType |a#2#0#0@@1| (TMap (TSeq TChar) TInt)) ($Is MapType |a#2#1#0@@1| (TMap (TSeq TChar) TInt))))
 :qid |Equivdfy.62:28|
 :skolemid |889|
 :pattern ( ($Is DatatypeTypeType (|#Equiv.MState.MState| |a#2#0#0@@1| |a#2#1#0@@1|) Tclass.Equiv.MState))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) (bx@@1 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#6#0#0|) bx@@1) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#6#0#0|) bx@@1))) (DtRank (|#Equiv.MState.MState| |a#6#0#0| |a#6#1#0|))))
 :qid |Equivdfy.62:28|
 :skolemid |895|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#6#0#0|) bx@@1) (|#Equiv.MState.MState| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) (bx@@2 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#9#1#0|) bx@@2) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#9#1#0|) bx@@2))) (DtRank (|#Equiv.MState.MState| |a#9#0#0| |a#9#1#0|))))
 :qid |Equivdfy.62:28|
 :skolemid |898|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#9#1#0|) bx@@2) (|#Equiv.MState.MState| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.Equiv.MState) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.Equiv.MState)))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( ($IsBox bx@@3 Tclass.Equiv.MState))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.Equiv.VS) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.Equiv.VS)))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( ($IsBox bx@@4 Tclass.Equiv.VS))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.Equiv.MSeqValue) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.Equiv.MSeqValue)))
 :qid |unknown.0:0|
 :skolemid |923|
 :pattern ( ($IsBox bx@@5 Tclass.Equiv.MSeqValue))
)))
(assert (forall (($ly T@U) (|vars#0@@3| T@U) (|values#0| T@U) ) (! (= (Interp.__default.VarsAndValuesToContext ($LS $ly) |vars#0@@3| |values#0|) (Interp.__default.VarsAndValuesToContext $ly |vars#0@@3| |values#0|))
 :qid |Interpdfy.80:12|
 :skolemid |1210|
 :pattern ( (Interp.__default.VarsAndValuesToContext ($LS $ly) |vars#0@@3| |values#0|))
)))
(assert (forall (($ly@@0 T@U) (|vars#0@@4| T@U) (|values#0@@0| T@U) ) (!  (=> (or (|Interp.__default.VarsAndValuesToContext#canCall| |vars#0@@4| |values#0@@0|) (and (and ($Is SeqType |vars#0@@4| (TSeq (TSeq TChar))) ($Is SeqType |values#0@@0| (TSeq TInt))) (= (|Seq#Length| |vars#0@@4|) (|Seq#Length| |values#0@@0|)))) (and (|Set#Equal| (|Map#Domain| (Interp.__default.VarsAndValuesToContext $ly@@0 |vars#0@@4| |values#0@@0|)) (|Set#FromBoogieMap| (|lambda#9| (TSeq TChar) |vars#0@@4|))) ($Is MapType (Interp.__default.VarsAndValuesToContext $ly@@0 |vars#0@@4| |values#0@@0|) (TMap (TSeq TChar) TInt))))
 :qid |Interpdfy.80:12|
 :skolemid |1212|
 :pattern ( (Interp.__default.VarsAndValuesToContext $ly@@0 |vars#0@@4| |values#0@@0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|ctx#0@@1| T@U) (|ctx'#0@@1| T@U) ) (!  (=> (or (|Equiv.__default.EqCtx#canCall| |ctx#0@@1| |ctx'#0@@1|) (and (< 0 $FunctionContextHeight) (and ($Is MapType |ctx#0@@1| (TMap (TSeq TChar) TInt)) ($Is MapType |ctx'#0@@1| (TMap (TSeq TChar) TInt))))) (= (Equiv.__default.EqCtx true |ctx#0@@1| |ctx'#0@@1|)  (and (|Set#Equal| (|Map#Domain| |ctx#0@@1|) (|Map#Domain| |ctx'#0@@1|)) (forall ((|x#0@@2| T@U) ) (!  (=> (and ($Is SeqType |x#0@@2| (TSeq TChar)) (|Set#IsMember| (|Map#Domain| |ctx#0@@1|) ($Box SeqType |x#0@@2|))) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@1|) ($Box SeqType |x#0@@2|)))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx'#0@@1|) ($Box SeqType |x#0@@2|))))))
 :qid |Equivdfy.30:15|
 :skolemid |656|
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx'#0@@1|) ($Box SeqType |x#0@@2|))))
 :pattern ( ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |ctx#0@@1|) ($Box SeqType |x#0@@2|))))
 :pattern ( (|Set#IsMember| (|Map#Domain| |ctx#0@@1|) ($Box SeqType |x#0@@2|)))
)))))
 :qid |Equivdfy.27:35|
 :skolemid |657|
 :pattern ( (Equiv.__default.EqCtx true |ctx#0@@1| |ctx'#0@@1|))
))))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@5 b@@5) o@@1)  (or (|Set#IsMember| a@@5 o@@1) (|Set#IsMember| b@@5 o@@1)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@5 b@@5) o@@1))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@6 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@6 b@@6) a@@6) b@@6) (= (|Set#Difference| (|Set#Union| a@@6 b@@6) b@@6) a@@6)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@6 b@@6))
)))
(assert (forall ((s@@3 T@U) (x@@6 T@U) ) (! (= (|Seq#Contains| s@@3 x@@6) (exists ((i@@2 Int) ) (!  (and (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@3))) (= (|Seq#Index| s@@3 i@@2) x@@6))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@3 i@@2))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@3 x@@6))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@5| T@U) (|vars#0@@5| T@U) (|argvs#0| T@U) ) (!  (=> (or (|Equiv.__default.UpdateState__Pre#canCall| |st#0@@5| |vars#0@@5| |argvs#0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@5| Tclass.Equiv.MState) ($Is SeqType |vars#0@@5| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |argvs#0| Tclass.Equiv.VS)))) (and (and (|Equiv.__default.Inv#canCall| |st#0@@5|) (=> (Equiv.__default.Inv |st#0@@5|) (and (Equiv.MSeqValue.MSeqValue_q |argvs#0|) (=> (= (|Seq#Length| |vars#0@@5|) (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0|))) (and (and (Equiv.MSeqValue.MSeqValue_q |argvs#0|) (Equiv.MSeqValue.MSeqValue_q |argvs#0|)) (=> (= (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0|)) (|Seq#Length| (Equiv.MSeqValue.vs_k |argvs#0|))) (and (and (Equiv.MSeqValue.MSeqValue_q |argvs#0|) (Equiv.MSeqValue.MSeqValue_q |argvs#0|)) (|Equiv.__default.EqSeqValue#canCall| (Equiv.MSeqValue.vs |argvs#0|) (Equiv.MSeqValue.vs_k |argvs#0|))))))))) (= (Equiv.__default.UpdateState__Pre |st#0@@5| |vars#0@@5| |argvs#0|)  (and (and (Equiv.__default.Inv |st#0@@5|) (and (= (|Seq#Length| |vars#0@@5|) (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0|))) (= (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0|)) (|Seq#Length| (Equiv.MSeqValue.vs_k |argvs#0|))))) (Equiv.__default.EqSeqValue (Equiv.MSeqValue.vs |argvs#0|) (Equiv.MSeqValue.vs_k |argvs#0|))))))
 :qid |Inductiondfy.51:35|
 :skolemid |748|
 :pattern ( (Equiv.__default.UpdateState__Pre |st#0@@5| |vars#0@@5| |argvs#0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@3| Int) (|y#0@@2| Int) ) (!  (=> (or (|Equiv.__default.EqValue#canCall| |x#0@@3| |y#0@@2|) (< 0 $FunctionContextHeight)) (= (Equiv.__default.EqValue |x#0@@3| |y#0@@2|) (= |x#0@@3| |y#0@@2|)))
 :qid |Equivdfy.16:27|
 :skolemid |640|
 :pattern ( (Equiv.__default.EqValue |x#0@@3| |y#0@@2|))
))))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@7 b@@7) (= a@@7 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@7 b@@7))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (|Seq#Equal| a@@8 b@@8) (= a@@8 b@@8))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@8 b@@8))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TChar) (and (= ($Box charType ($Unbox charType bx@@7)) bx@@7) ($Is charType ($Unbox charType bx@@7) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@7 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@6| T@U) (|vars#0@@6| T@U) (|vals#0@@3| T@U) ) (!  (=> (or (|Equiv.__default.AssignState#canCall| (Lit DatatypeTypeType |st#0@@6|) (Lit SeqType |vars#0@@6|) (Lit DatatypeTypeType |vals#0@@3|)) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@6| Tclass.Equiv.MState) ($Is SeqType |vars#0@@6| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@3| Tclass.Equiv.VS)) (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.UpdateState__Pre (Lit DatatypeTypeType |st#0@@6|) (Lit SeqType |vars#0@@6|) (Lit DatatypeTypeType |vals#0@@3|)))))))) (and (and (and (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |vals#0@@3|)) (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@6|) (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |vals#0@@3|))))) (and (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |vals#0@@3|)) (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@6|) (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |vals#0@@3|)))))) (= (Equiv.__default.AssignState (Lit DatatypeTypeType |st#0@@6|) (Lit SeqType |vars#0@@6|) (Lit DatatypeTypeType |vals#0@@3|)) (let ((|ctx'#2| (Equiv.MState.ctx_k (Lit DatatypeTypeType |st#0@@6|))))
(let ((|ctx#2| (Equiv.MState.ctx (Lit DatatypeTypeType |st#0@@6|))))
(let ((|bindings#2| (Lit MapType (Interp.__default.VarsAndValuesToContext ($LS $LZ) (Lit SeqType |vars#0@@6|) (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |vals#0@@3|)))))))
(let ((|bindings'#2| (Lit MapType (Interp.__default.VarsAndValuesToContext ($LS $LZ) (Lit SeqType |vars#0@@6|) (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |vals#0@@3|)))))))
(let ((|ctx1#2| (|Map#Merge| |ctx#2| |bindings#2|)))
(let ((|ctx1'#2| (|Map#Merge| |ctx'#2| |bindings'#2|)))
(let ((|st'#2| (|#Equiv.MState.MState| |ctx1#2| |ctx1'#2|)))
|st'#2|))))))))))
 :qid |Inductiondfy.54:30|
 :weight 3
 :skolemid |764|
 :pattern ( (Equiv.__default.AssignState (Lit DatatypeTypeType |st#0@@6|) (Lit SeqType |vars#0@@6|) (Lit DatatypeTypeType |vals#0@@3|)))
))))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) (u@@0 T@U) ) (! (= (Inv0_TMap (TMap t@@1 u@@0)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@1 u@@0))
)))
(assert (forall ((t@@2 T@U) (u@@1 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@1)) u@@1)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@2 u@@1))
)))
(assert (forall ((t@@3 T@U) (u@@2 T@U) ) (! (= (Tag (TMap t@@3 u@@2)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@3 u@@2))
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
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) ) (! (= (Equiv.MSeqValue.vs_k (|#Equiv.MSeqValue.MSeqValue| |a#23#0#0| |a#23#1#0|)) |a#23#1#0|)
 :qid |Equivdfy.64:34|
 :skolemid |931|
 :pattern ( (|#Equiv.MSeqValue.MSeqValue| |a#23#0#0| |a#23#1#0|))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@3) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@3))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@0) h@@2) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@9) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@9) t1@@0 h@@2) ($IsAllocBox bx@@9 t0@@3 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@9))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@9))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@3 t1@@0) h@@2))
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
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) ) (! (< (|Seq#Rank| |a#22#0#0|) (DtRank (|#Equiv.MSeqValue.MSeqValue| |a#22#0#0| |a#22#1#0|)))
 :qid |Equivdfy.64:34|
 :skolemid |930|
 :pattern ( (|#Equiv.MSeqValue.MSeqValue| |a#22#0#0| |a#22#1#0|))
)))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (< (|Seq#Rank| |a#25#1#0|) (DtRank (|#Equiv.MSeqValue.MSeqValue| |a#25#0#0| |a#25#1#0|)))
 :qid |Equivdfy.64:34|
 :skolemid |933|
 :pattern ( (|#Equiv.MSeqValue.MSeqValue| |a#25#0#0| |a#25#1#0|))
)))
(assert (forall (($ly@@1 T@U) (|vars#0@@7| T@U) (|values#0@@1| T@U) ) (!  (=> (or (|Interp.__default.VarsAndValuesToContext#canCall| |vars#0@@7| |values#0@@1|) (and (and ($Is SeqType |vars#0@@7| (TSeq (TSeq TChar))) ($Is SeqType |values#0@@1| (TSeq TInt))) (= (|Seq#Length| |vars#0@@7|) (|Seq#Length| |values#0@@1|)))) (and (=> (not (|Seq#Equal| |vars#0@@7| |Seq#Empty|)) (|Interp.__default.VarsAndValuesToContext#canCall| (|Seq#Drop| |vars#0@@7| (LitInt 1)) (|Seq#Drop| |values#0@@1| (LitInt 1)))) (= (Interp.__default.VarsAndValuesToContext ($LS $ly@@1) |vars#0@@7| |values#0@@1|) (ite (|Seq#Equal| |vars#0@@7| |Seq#Empty|) |Map#Empty| (|Map#Merge| (|Map#Build| |Map#Empty| (|Seq#Index| |vars#0@@7| (LitInt 0)) (|Seq#Index| |values#0@@1| (LitInt 0))) (Interp.__default.VarsAndValuesToContext $ly@@1 (|Seq#Drop| |vars#0@@7| (LitInt 1)) (|Seq#Drop| |values#0@@1| (LitInt 1))))))))
 :qid |Interpdfy.80:12|
 :skolemid |1214|
 :pattern ( (Interp.__default.VarsAndValuesToContext ($LS $ly@@1) |vars#0@@7| |values#0@@1|))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@9 (|Set#Union| a@@9 b@@9)) (|Set#Union| a@@9 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@9 (|Set#Union| a@@9 b@@9)))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@7| T@U) (|vars#0@@8| T@U) (|vals#0@@4| T@U) ) (!  (=> (or (|Equiv.__default.BindStartScope#canCall| |st#0@@7| (Lit SeqType |vars#0@@8|) |vals#0@@4|) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@7| Tclass.Equiv.MState) ($Is SeqType |vars#0@@8| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@4| Tclass.Equiv.VS)) (Equiv.__default.UpdateState__Pre |st#0@@7| (Lit SeqType |vars#0@@8|) |vals#0@@4|)))) (and (|Equiv.__default.AssignState#canCall| |st#0@@7| (Lit SeqType |vars#0@@8|) |vals#0@@4|) (= (Equiv.__default.BindStartScope |st#0@@7| (Lit SeqType |vars#0@@8|) |vals#0@@4|) (Equiv.__default.AssignState |st#0@@7| (Lit SeqType |vars#0@@8|) |vals#0@@4|))))
 :qid |Inductiondfy.58:33|
 :weight 3
 :skolemid |776|
 :pattern ( (Equiv.__default.BindStartScope |st#0@@7| (Lit SeqType |vars#0@@8|) |vals#0@@4|))
))))
(assert (forall ((u@@3 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@3))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@3))
)))
(assert (forall ((bx@@10 T@U) (s@@5 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@10 (TMap s@@5 t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@10)) bx@@10) ($Is MapType ($Unbox MapType bx@@10) (TMap s@@5 t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@10 (TMap s@@5 t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1216|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((|vs#0@@0| T@U) ) (! (= ($Is DatatypeTypeType |vs#0@@0| Tclass.Equiv.VS)  (and ($Is DatatypeTypeType |vs#0@@0| Tclass.Equiv.MSeqValue) (= (|Seq#Length| (Equiv.MSeqValue.vs |vs#0@@0|)) (|Seq#Length| (Equiv.MSeqValue.vs_k |vs#0@@0|)))))
 :qid |unknown.0:0|
 :skolemid |939|
 :pattern ( ($Is DatatypeTypeType |vs#0@@0| Tclass.Equiv.VS))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@8) item)  (and (|Set#IsMember| (|Map#Domain| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@8) item))
)))
(assert (forall ((m@@9 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@6) (exists ((u@@4 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@4) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@4)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@4))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@4))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@6))
)))
(assert (forall ((m@@10 T@U) (u@@5 T@U) (|u'| T@U) (v@@7 T@U) ) (!  (and (=> (= |u'| u@@5) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@5 v@@7)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@5 v@@7)) |u'|) v@@7))) (=> (or (not (= |u'| u@@5)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@5 v@@7)) |u'|) (|Set#IsMember| (|Map#Domain| m@@10) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@5 v@@7)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@10) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@5 v@@7)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@5 v@@7)) |u'|))
)))
(assert (forall ((d@@8 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@8)) (DtRank d@@8))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@8)))
)))
(assert (forall ((s@@6 T@U) (n@@3 Int) (x@@8 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@6 n@@3) x@@8) (exists ((i@@4 Int) ) (!  (and (and (and (<= 0 n@@3) (<= n@@3 i@@4)) (< i@@4 (|Seq#Length| s@@6))) (= (|Seq#Index| s@@6 i@@4) x@@8))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |237|
 :pattern ( (|Seq#Index| s@@6 i@@4))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |238|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@6 n@@3) x@@8))
)))
(assert (forall ((bx@@12 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@12 (TSet t@@9)))
)))
(assert (forall ((bx@@13 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@13 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@13)) bx@@13) ($Is SeqType ($Unbox SeqType bx@@13) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@13 (TSeq t@@10)))
)))
(assert (forall ((v@@8 T@U) (t0@@5 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@8 (TMap t0@@5 t1@@2)) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@14) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@14) t1@@2) ($IsBox bx@@14 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@14))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@14))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@8 (TMap t0@@5 t1@@2)))
)))
(assert (forall (($ly@@2 T@U) (|vars#0@@9| T@U) (|values#0@@2| T@U) ) (!  (=> (or (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@9|) (Lit SeqType |values#0@@2|)) (and (and ($Is SeqType |vars#0@@9| (TSeq (TSeq TChar))) ($Is SeqType |values#0@@2| (TSeq TInt))) (= (|Seq#Length| (Lit SeqType |vars#0@@9|)) (|Seq#Length| (Lit SeqType |values#0@@2|))))) (and (=> (not (|Seq#Equal| |vars#0@@9| |Seq#Empty|)) (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType (|Seq#Drop| (Lit SeqType |vars#0@@9|) (LitInt 1))) (Lit SeqType (|Seq#Drop| (Lit SeqType |values#0@@2|) (LitInt 1))))) (= (Interp.__default.VarsAndValuesToContext ($LS $ly@@2) (Lit SeqType |vars#0@@9|) (Lit SeqType |values#0@@2|)) (ite (|Seq#Equal| |vars#0@@9| |Seq#Empty|) |Map#Empty| (|Map#Merge| (|Map#Build| |Map#Empty| (|Seq#Index| (Lit SeqType |vars#0@@9|) (LitInt 0)) (|Seq#Index| (Lit SeqType |values#0@@2|) (LitInt 0))) (Interp.__default.VarsAndValuesToContext ($LS $ly@@2) (Lit SeqType (|Seq#Drop| (Lit SeqType |vars#0@@9|) (LitInt 1))) (Lit SeqType (|Seq#Drop| (Lit SeqType |values#0@@2|) (LitInt 1)))))))))
 :qid |Interpdfy.80:12|
 :weight 3
 :skolemid |1215|
 :pattern ( (Interp.__default.VarsAndValuesToContext ($LS $ly@@2) (Lit SeqType |vars#0@@9|) (Lit SeqType |values#0@@2|)))
)))
(assert (forall ((d@@9 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@9 Tclass.Equiv.MState)) ($IsAlloc DatatypeTypeType d@@9 Tclass.Equiv.MState $h@@1))
 :qid |unknown.0:0|
 :skolemid |899|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 Tclass.Equiv.MState $h@@1))
)))
(assert (forall ((d@@10 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@10 Tclass.Equiv.MSeqValue)) ($IsAlloc DatatypeTypeType d@@10 Tclass.Equiv.MSeqValue $h@@2))
 :qid |unknown.0:0|
 :skolemid |934|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 Tclass.Equiv.MSeqValue $h@@2))
)))
(assert (= (Tag Tclass.Equiv.MState) Tagclass.Equiv.MState))
(assert (= (TagFamily Tclass.Equiv.MState) tytagFamily$MState))
(assert (= (Tag Tclass.Equiv.VS) Tagclass.Equiv.VS))
(assert (= (TagFamily Tclass.Equiv.VS) tytagFamily$VS))
(assert (= (Tag Tclass.Equiv.MSeqValue) Tagclass.Equiv.MSeqValue))
(assert (= (TagFamily Tclass.Equiv.MSeqValue) tytagFamily$MSeqValue))
(assert (forall ((s@@7 T@U) (n@@4 Int) (k@@0 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= n@@4 k@@0)) (< k@@0 (|Seq#Length| s@@7))) (= (|Seq#Index| (|Seq#Drop| s@@7 n@@4) (- k@@0 n@@4)) (|Seq#Index| s@@7 k@@0)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@7 k@@0) (|Seq#Drop| s@@7 n@@4))
)))
(assert (forall ((d@@11 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (Equiv.MSeqValue.MSeqValue_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass.Equiv.MSeqValue $h@@3))) ($IsAlloc SeqType (Equiv.MSeqValue.vs d@@11) (TSeq TInt) $h@@3))
 :qid |unknown.0:0|
 :skolemid |925|
 :pattern ( ($IsAlloc SeqType (Equiv.MSeqValue.vs d@@11) (TSeq TInt) $h@@3))
)))
(assert (forall ((d@@12 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (Equiv.MSeqValue.MSeqValue_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass.Equiv.MSeqValue $h@@4))) ($IsAlloc SeqType (Equiv.MSeqValue.vs_k d@@12) (TSeq TInt) $h@@4))
 :qid |unknown.0:0|
 :skolemid |926|
 :pattern ( ($IsAlloc SeqType (Equiv.MSeqValue.vs_k d@@12) (TSeq TInt) $h@@4))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@10 b@@10) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@10 o@@2) (|Set#IsMember| b@@10 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@10 o@@2))
 :pattern ( (|Set#IsMember| b@@10 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@10 b@@10))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@8| T@U) (|vars#0@@10| T@U) (|vals#0@@5| T@U) ) (!  (=> (or (|Equiv.__default.AssignState#canCall| |st#0@@8| (Lit SeqType |vars#0@@10|) |vals#0@@5|) (and (< 3 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@8| Tclass.Equiv.MState) ($Is SeqType |vars#0@@10| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@5| Tclass.Equiv.VS)) (Equiv.__default.UpdateState__Pre |st#0@@8| (Lit SeqType |vars#0@@10|) |vals#0@@5|)))) (and (and (and (Equiv.MSeqValue.MSeqValue_q |vals#0@@5|) (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@10|) (Equiv.MSeqValue.vs |vals#0@@5|))) (and (Equiv.MSeqValue.MSeqValue_q |vals#0@@5|) (|Interp.__default.VarsAndValuesToContext#canCall| (Lit SeqType |vars#0@@10|) (Equiv.MSeqValue.vs_k |vals#0@@5|)))) (= (Equiv.__default.AssignState |st#0@@8| (Lit SeqType |vars#0@@10|) |vals#0@@5|) (let ((|ctx'#1| (Equiv.MState.ctx_k |st#0@@8|)))
(let ((|ctx#1| (Equiv.MState.ctx |st#0@@8|)))
(let ((|bindings#1| (Interp.__default.VarsAndValuesToContext ($LS $LZ) (Lit SeqType |vars#0@@10|) (Equiv.MSeqValue.vs |vals#0@@5|))))
(let ((|bindings'#1| (Interp.__default.VarsAndValuesToContext ($LS $LZ) (Lit SeqType |vars#0@@10|) (Equiv.MSeqValue.vs_k |vals#0@@5|))))
(let ((|ctx1#1| (|Map#Merge| |ctx#1| |bindings#1|)))
(let ((|ctx1'#1| (|Map#Merge| |ctx'#1| |bindings'#1|)))
(let ((|st'#1| (|#Equiv.MState.MState| |ctx1#1| |ctx1'#1|)))
|st'#1|))))))))))
 :qid |Inductiondfy.54:30|
 :weight 3
 :skolemid |763|
 :pattern ( (Equiv.__default.AssignState |st#0@@8| (Lit SeqType |vars#0@@10|) |vals#0@@5|))
))))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) (d@@13 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#5#0#0@@0|) ($Box DatatypeTypeType d@@13)) (< (DtRank d@@13) (DtRank (|#Equiv.MState.MState| |a#5#0#0@@0| |a#5#1#0@@0|))))
 :qid |Equivdfy.62:28|
 :skolemid |894|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#5#0#0@@0|) ($Box DatatypeTypeType d@@13)) (|#Equiv.MState.MState| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) (d@@14 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#8#1#0|) ($Box DatatypeTypeType d@@14)) (< (DtRank d@@14) (DtRank (|#Equiv.MState.MState| |a#8#0#0| |a#8#1#0|))))
 :qid |Equivdfy.62:28|
 :skolemid |897|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#8#1#0|) ($Box DatatypeTypeType d@@14)) (|#Equiv.MState.MState| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((s@@8 T@U) (m@@11 Int) (n@@5 Int) ) (!  (=> (and (and (<= 0 m@@11) (<= 0 n@@5)) (<= (+ m@@11 n@@5) (|Seq#Length| s@@8))) (= (|Seq#Drop| (|Seq#Drop| s@@8 m@@11) n@@5) (|Seq#Drop| s@@8 (+ m@@11 n@@5))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@8 m@@11) n@@5))
)))
(assert (forall ((d@@15 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (Equiv.MState.MState_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass.Equiv.MState $h@@5))) ($IsAlloc MapType (Equiv.MState.ctx d@@15) (TMap (TSeq TChar) TInt) $h@@5))
 :qid |unknown.0:0|
 :skolemid |890|
 :pattern ( ($IsAlloc MapType (Equiv.MState.ctx d@@15) (TMap (TSeq TChar) TInt) $h@@5))
)))
(assert (forall ((d@@16 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (Equiv.MState.MState_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass.Equiv.MState $h@@6))) ($IsAlloc MapType (Equiv.MState.ctx_k d@@16) (TMap (TSeq TChar) TInt) $h@@6))
 :qid |unknown.0:0|
 :skolemid |891|
 :pattern ( ($IsAlloc MapType (Equiv.MState.ctx_k d@@16) (TMap (TSeq TChar) TInt) $h@@6))
)))
(assert (forall ((d@@17 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple2.___hMake2_q d@@17) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@17 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@17 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@7))
)))) ($IsAllocBox (_System.Tuple2._0 d@@17) |_System._tuple#2$T0@@6| $h@@7))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@17) |_System._tuple#2$T0@@6| $h@@7))
)))
(assert (forall ((d@@18 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_System.Tuple2.___hMake2_q d@@18) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@18 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@8)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@18 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@8))
)))) ($IsAllocBox (_System.Tuple2._1 d@@18) |_System._tuple#2$T1@@7| $h@@8))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@18) |_System._tuple#2$T1@@7| $h@@8))
)))
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
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (= (|#Equiv.MSeqValue.MSeqValue| (Lit SeqType |a#19#0#0|) (Lit SeqType |a#19#1#0|)) (Lit DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| |a#19#0#0| |a#19#1#0|)))
 :qid |Equivdfy.64:34|
 :skolemid |927|
 :pattern ( (|#Equiv.MSeqValue.MSeqValue| (Lit SeqType |a#19#0#0|) (Lit SeqType |a#19#1#0|)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((m@@12 T@U) (n@@6 T@U) ) (! (= (|Map#Domain| (|Map#Merge| m@@12 n@@6)) (|Set#Union| (|Map#Domain| m@@12) (|Map#Domain| n@@6)))
 :qid |DafnyPreludebpl.1476:15|
 :skolemid |293|
 :pattern ( (|Map#Domain| (|Map#Merge| m@@12 n@@6)))
)))
(assert (forall ((s@@9 T@U) ) (!  (=> (= (|Seq#Length| s@@9) 0) (= s@@9 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@9))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@9| T@U) (|vars#0@@11| T@U) (|argvs#0@@0| T@U) ) (!  (=> (or (|Equiv.__default.UpdateState__Pre#canCall| |st#0@@9| (Lit SeqType |vars#0@@11|) |argvs#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@9| Tclass.Equiv.MState) ($Is SeqType |vars#0@@11| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |argvs#0@@0| Tclass.Equiv.VS)))) (and (and (|Equiv.__default.Inv#canCall| |st#0@@9|) (=> (Equiv.__default.Inv |st#0@@9|) (and (Equiv.MSeqValue.MSeqValue_q |argvs#0@@0|) (=> (= (|Seq#Length| (Lit SeqType |vars#0@@11|)) (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0@@0|))) (and (and (Equiv.MSeqValue.MSeqValue_q |argvs#0@@0|) (Equiv.MSeqValue.MSeqValue_q |argvs#0@@0|)) (=> (= (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0@@0|)) (|Seq#Length| (Equiv.MSeqValue.vs_k |argvs#0@@0|))) (and (and (Equiv.MSeqValue.MSeqValue_q |argvs#0@@0|) (Equiv.MSeqValue.MSeqValue_q |argvs#0@@0|)) (|Equiv.__default.EqSeqValue#canCall| (Equiv.MSeqValue.vs |argvs#0@@0|) (Equiv.MSeqValue.vs_k |argvs#0@@0|))))))))) (= (Equiv.__default.UpdateState__Pre |st#0@@9| (Lit SeqType |vars#0@@11|) |argvs#0@@0|)  (and (and (Equiv.__default.Inv |st#0@@9|) (and (= (|Seq#Length| (Lit SeqType |vars#0@@11|)) (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0@@0|))) (= (|Seq#Length| (Equiv.MSeqValue.vs |argvs#0@@0|)) (|Seq#Length| (Equiv.MSeqValue.vs_k |argvs#0@@0|))))) (Equiv.__default.EqSeqValue (Equiv.MSeqValue.vs |argvs#0@@0|) (Equiv.MSeqValue.vs_k |argvs#0@@0|))))))
 :qid |Inductiondfy.51:35|
 :weight 3
 :skolemid |749|
 :pattern ( (Equiv.__default.UpdateState__Pre |st#0@@9| (Lit SeqType |vars#0@@11|) |argvs#0@@0|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@10| T@U) (|vars#0@@12| T@U) (|vals#0@@6| T@U) ) (!  (=> (or (|Equiv.__default.BindStartScope#canCall| (Lit DatatypeTypeType |st#0@@10|) (Lit SeqType |vars#0@@12|) (Lit DatatypeTypeType |vals#0@@6|)) (and (< 4 $FunctionContextHeight) (and (and (and ($Is DatatypeTypeType |st#0@@10| Tclass.Equiv.MState) ($Is SeqType |vars#0@@12| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |vals#0@@6| Tclass.Equiv.VS)) (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.UpdateState__Pre (Lit DatatypeTypeType |st#0@@10|) (Lit SeqType |vars#0@@12|) (Lit DatatypeTypeType |vals#0@@6|)))))))) (and (|Equiv.__default.AssignState#canCall| (Lit DatatypeTypeType |st#0@@10|) (Lit SeqType |vars#0@@12|) (Lit DatatypeTypeType |vals#0@@6|)) (= (Equiv.__default.BindStartScope (Lit DatatypeTypeType |st#0@@10|) (Lit SeqType |vars#0@@12|) (Lit DatatypeTypeType |vals#0@@6|)) (Lit DatatypeTypeType (Equiv.__default.AssignState (Lit DatatypeTypeType |st#0@@10|) (Lit SeqType |vars#0@@12|) (Lit DatatypeTypeType |vals#0@@6|))))))
 :qid |Inductiondfy.58:33|
 :weight 3
 :skolemid |777|
 :pattern ( (Equiv.__default.BindStartScope (Lit DatatypeTypeType |st#0@@10|) (Lit SeqType |vars#0@@12|) (Lit DatatypeTypeType |vals#0@@6|)))
))))
(assert (forall ((h@@3 T@U) (v@@9 T@U) ) (! ($IsAlloc intType v@@9 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@9 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@10 T@U) ) (! ($IsAlloc charType v@@10 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@10 TChar h@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@11| T@U) (|vars#0@@13| T@U) (|argvs#0@@1| T@U) ) (!  (=> (or (|Equiv.__default.UpdateState__Pre#canCall| (Lit DatatypeTypeType |st#0@@11|) (Lit SeqType |vars#0@@13|) (Lit DatatypeTypeType |argvs#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@11| Tclass.Equiv.MState) ($Is SeqType |vars#0@@13| (TSeq (TSeq TChar)))) ($Is DatatypeTypeType |argvs#0@@1| Tclass.Equiv.VS)))) (and (and (|Equiv.__default.Inv#canCall| (Lit DatatypeTypeType |st#0@@11|)) (=> (U_2_bool (Lit boolType (bool_2_U (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@11|))))) (and (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |argvs#0@@1|)) (=> (= (|Seq#Length| (Lit SeqType |vars#0@@13|)) (|Seq#Length| (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |argvs#0@@1|))))) (and (and (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |argvs#0@@1|)) (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |argvs#0@@1|))) (=> (= (|Seq#Length| (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |argvs#0@@1|)))) (|Seq#Length| (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |argvs#0@@1|))))) (and (and (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |argvs#0@@1|)) (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |argvs#0@@1|))) (|Equiv.__default.EqSeqValue#canCall| (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |argvs#0@@1|))) (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |argvs#0@@1|))))))))))) (= (Equiv.__default.UpdateState__Pre (Lit DatatypeTypeType |st#0@@11|) (Lit SeqType |vars#0@@13|) (Lit DatatypeTypeType |argvs#0@@1|))  (and (and (Equiv.__default.Inv (Lit DatatypeTypeType |st#0@@11|)) (and (= (|Seq#Length| (Lit SeqType |vars#0@@13|)) (|Seq#Length| (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |argvs#0@@1|))))) (= (|Seq#Length| (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |argvs#0@@1|)))) (|Seq#Length| (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |argvs#0@@1|))))))) (Equiv.__default.EqSeqValue (Lit SeqType (Equiv.MSeqValue.vs (Lit DatatypeTypeType |argvs#0@@1|))) (Lit SeqType (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |argvs#0@@1|))))))))
 :qid |Inductiondfy.51:35|
 :weight 3
 :skolemid |750|
 :pattern ( (Equiv.__default.UpdateState__Pre (Lit DatatypeTypeType |st#0@@11|) (Lit SeqType |vars#0@@13|) (Lit DatatypeTypeType |argvs#0@@1|)))
))))
(assert (forall ((v@@11 T@U) (t0@@6 T@U) ) (! (= ($Is SeqType v@@11 (TSeq t0@@6)) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| v@@11))) ($IsBox (|Seq#Index| v@@11 i@@5) t0@@6))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@11 i@@5))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@11 (TSeq t0@@6)))
)))
(assert (forall ((m@@13 T@U) ) (!  (or (= m@@13 |Map#Empty|) (exists ((k@@1 T@U) (v@@12 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@13) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@1 v@@12)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@13))
)))
(assert (forall ((s@@10 T@U) (i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| s@@10))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@10 i@@6))) (|Seq#Rank| s@@10)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@10 i@@6))))
)))
(assert (forall ((v@@13 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@13 (TMap t0@@7 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@13) (TSet t0@@7)) ($Is SetType (|Map#Values| v@@13) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@13) (TSet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@13 (TMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@14 T@U) ) (! ($Is intType v@@14 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@14 TInt))
)))
(assert (forall ((v@@15 T@U) ) (! ($Is charType v@@15 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@15 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |st'#0@@0| () T@U)
(declare-fun |st#0@@12| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |vars#0@@14| () T@U)
(declare-fun |vals#0@@7| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Equiv.__default.BindStartScope)
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
 (=> (= (ControlFlow 0 0) 8) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> (|Equiv.__default.Inv#canCall| |st'#0@@0|) (or (Equiv.__default.Inv |st'#0@@0|) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (=> (|Equiv.__default.Inv#canCall| |st'#0@@0|) (or (Equiv.__default.Inv |st'#0@@0|) (U_2_bool (Lit boolType (bool_2_U true))))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> (|Equiv.__default.Inv#canCall| |st'#0@@0|) (or (Equiv.__default.Inv |st'#0@@0|) (Equiv.__default.EqCtx reveal_Equiv._default.EqCtx (Equiv.MState.ctx |st'#0@@0|) (Equiv.MState.ctx_k |st'#0@@0|)))))))))
(let ((anon5_Else_correct  (=> ($IsAlloc DatatypeTypeType |st#0@@12| Tclass.Equiv.MState $Heap) (=> (and ($IsAlloc SeqType |vars#0@@14| (TSeq (TSeq TChar)) $Heap) ($IsAlloc DatatypeTypeType |vals#0@@7| Tclass.Equiv.VS $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (Equiv.__default.UpdateState__Pre |st#0@@12| |vars#0@@14| |vals#0@@7|)) (=> (and (and (and (Equiv.__default.UpdateState__Pre |st#0@@12| |vars#0@@14| |vals#0@@7|) (|Equiv.__default.AssignState#canCall| |st#0@@12| |vars#0@@14| |vals#0@@7|)) (and (Equiv.MState.MState_q (Equiv.__default.AssignState |st#0@@12| |vars#0@@14| |vals#0@@7|)) (= (Equiv.__default.BindStartScope |st#0@@12| |vars#0@@14| |vals#0@@7|) (Equiv.__default.AssignState |st#0@@12| |vars#0@@14| |vals#0@@7|)))) (and (and (|Equiv.__default.AssignState#canCall| |st#0@@12| |vars#0@@14| |vals#0@@7|) ($Is DatatypeTypeType (Equiv.__default.BindStartScope |st#0@@12| |vars#0@@14| |vals#0@@7|) Tclass.Equiv.MState)) (and (= (Equiv.__default.BindStartScope |st#0@@12| |vars#0@@14| |vals#0@@7|) |st'#0@@0|) (= (ControlFlow 0 5) 3)))) GeneratedUnifiedExit_correct))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) ($IsAlloc DatatypeTypeType |st#0@@12| Tclass.Equiv.MState $Heap)) (=> (and (and ($IsAlloc SeqType |vars#0@@14| (TSeq (TSeq TChar)) $Heap) ($IsAlloc DatatypeTypeType |vals#0@@7| Tclass.Equiv.VS $Heap)) (and (|Equiv.__default.UpdateState__Pre#canCall| |st#0@@12| |vars#0@@14| |vals#0@@7|) (Equiv.__default.UpdateState__Pre |st#0@@12| |vars#0@@14| |vals#0@@7|))) (and (=> (= (ControlFlow 0 7) 1) anon5_Then_correct) (=> (= (ControlFlow 0 7) 5) anon5_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |st#0@@12| Tclass.Equiv.MState)) (and (and ($Is SeqType |vars#0@@14| (TSeq (TSeq TChar))) ($Is DatatypeTypeType |vals#0@@7| Tclass.Equiv.VS)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 8) 7)))) anon0_correct)))
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
