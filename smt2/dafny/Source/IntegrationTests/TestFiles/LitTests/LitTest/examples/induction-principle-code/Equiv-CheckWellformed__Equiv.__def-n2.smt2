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
(declare-fun TInt () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.Equiv.MValue () T@U)
(declare-fun Tagclass.Equiv.VS () T@U)
(declare-fun |##Equiv.MValue.MValue| () T@U)
(declare-fun |##Equiv.MSeqValue.MSeqValue| () T@U)
(declare-fun Tagclass.Equiv.MSeqValue () T@U)
(declare-fun tytagFamily$MValue () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun Equiv.__default.AppendValue (T@U T@U) T@U)
(declare-fun |Equiv.__default.AppendValue#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.Equiv.MValue () T@U)
(declare-fun Tclass.Equiv.VS () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Equiv.MValue.MValue_q (T@U) Bool)
(declare-fun Equiv.MSeqValue.MSeqValue_q (T@U) Bool)
(declare-fun Tclass.Equiv.MSeqValue () T@U)
(declare-fun |#Equiv.MValue.MValue| (Int Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Equiv.MValue.v (T@U) Int)
(declare-fun Equiv.MSeqValue.vs (T@U) T@U)
(declare-fun Equiv.MValue.v_k (T@U) Int)
(declare-fun Equiv.MSeqValue.vs_k (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass.Equiv.MValue Tagclass.Equiv.VS |##Equiv.MValue.MValue| |##Equiv.MSeqValue.MSeqValue| Tagclass.Equiv.MSeqValue tytagFamily$MValue tytagFamily$VS tytagFamily$MSeqValue)
)
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|v#0| T@U) (|vs#0| T@U) ) (!  (=> (or (|Equiv.__default.AppendValue#canCall| |v#0| |vs#0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |v#0| Tclass.Equiv.MValue) ($Is DatatypeTypeType |vs#0| Tclass.Equiv.VS)))) ($Is DatatypeTypeType (Equiv.__default.AppendValue |v#0| |vs#0|) Tclass.Equiv.VS))
 :qid |Inductiondfy.43:30|
 :skolemid |737|
 :pattern ( (Equiv.__default.AppendValue |v#0| |vs#0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass.Equiv.MValue) (Equiv.MValue.MValue_q d))
 :qid |unknown.0:0|
 :skolemid |916|
 :pattern ( (Equiv.MValue.MValue_q d) ($Is DatatypeTypeType d Tclass.Equiv.MValue))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.Equiv.MSeqValue) (Equiv.MSeqValue.MSeqValue_q d@@0))
 :qid |unknown.0:0|
 :skolemid |936|
 :pattern ( (Equiv.MSeqValue.MSeqValue_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.Equiv.MSeqValue))
)))
(assert (forall ((|a#12#0#0| Int) (|a#12#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#Equiv.MValue.MValue| |a#12#0#0| |a#12#1#0|) Tclass.Equiv.MValue)  (and ($Is intType (int_2_U |a#12#0#0|) TInt) ($Is intType (int_2_U |a#12#1#0|) TInt)))
 :qid |Equivdfy.63:28|
 :skolemid |908|
 :pattern ( ($Is DatatypeTypeType (|#Equiv.MValue.MValue| |a#12#0#0| |a#12#1#0|) Tclass.Equiv.MValue))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SeqType) 4))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((d@@1 T@U) ) (! (= (Equiv.MValue.MValue_q d@@1) (= (DatatypeCtorId d@@1) |##Equiv.MValue.MValue|))
 :qid |unknown.0:0|
 :skolemid |905|
 :pattern ( (Equiv.MValue.MValue_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (Equiv.MSeqValue.MSeqValue_q d@@2) (= (DatatypeCtorId d@@2) |##Equiv.MSeqValue.MSeqValue|))
 :qid |unknown.0:0|
 :skolemid |920|
 :pattern ( (Equiv.MSeqValue.MSeqValue_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (Equiv.MValue.MValue_q d@@3) (exists ((|a#11#0#0| Int) (|a#11#1#0| Int) ) (! (= d@@3 (|#Equiv.MValue.MValue| |a#11#0#0| |a#11#1#0|))
 :qid |Equivdfy.63:28|
 :skolemid |906|
)))
 :qid |unknown.0:0|
 :skolemid |907|
 :pattern ( (Equiv.MValue.MValue_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (Equiv.MSeqValue.MSeqValue_q d@@4) (exists ((|a#17#0#0| T@U) (|a#17#1#0| T@U) ) (! (= d@@4 (|#Equiv.MSeqValue.MSeqValue| |a#17#0#0| |a#17#1#0|))
 :qid |Equivdfy.64:34|
 :skolemid |921|
)))
 :qid |unknown.0:0|
 :skolemid |922|
 :pattern ( (Equiv.MSeqValue.MSeqValue_q d@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|v#0@@0| T@U) (|vs#0@@0| T@U) ) (!  (=> (or (|Equiv.__default.AppendValue#canCall| |v#0@@0| |vs#0@@0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |v#0@@0| Tclass.Equiv.MValue) ($Is DatatypeTypeType |vs#0@@0| Tclass.Equiv.VS)))) (and (and (and (Equiv.MValue.MValue_q |v#0@@0|) (Equiv.MSeqValue.MSeqValue_q |vs#0@@0|)) (and (Equiv.MValue.MValue_q |v#0@@0|) (Equiv.MSeqValue.MSeqValue_q |vs#0@@0|))) (= (Equiv.__default.AppendValue |v#0@@0| |vs#0@@0|) (|#Equiv.MSeqValue.MSeqValue| (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (Equiv.MValue.v |v#0@@0|)))) (Equiv.MSeqValue.vs |vs#0@@0|)) (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (Equiv.MValue.v_k |v#0@@0|)))) (Equiv.MSeqValue.vs_k |vs#0@@0|))))))
 :qid |Inductiondfy.43:30|
 :skolemid |739|
 :pattern ( (Equiv.__default.AppendValue |v#0@@0| |vs#0@@0|))
))))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| |a#18#0#0| |a#18#1#0|) Tclass.Equiv.MSeqValue)  (and ($Is SeqType |a#18#0#0| (TSeq TInt)) ($Is SeqType |a#18#1#0| (TSeq TInt))))
 :qid |Equivdfy.64:34|
 :skolemid |924|
 :pattern ( ($Is DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| |a#18#0#0| |a#18#1#0|) Tclass.Equiv.MSeqValue))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.Equiv.MValue) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.Equiv.MValue)))
 :qid |unknown.0:0|
 :skolemid |677|
 :pattern ( ($IsBox bx@@0 Tclass.Equiv.MValue))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.Equiv.VS) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.Equiv.VS)))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( ($IsBox bx@@1 Tclass.Equiv.VS))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.Equiv.MSeqValue) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.Equiv.MSeqValue)))
 :qid |unknown.0:0|
 :skolemid |923|
 :pattern ( ($IsBox bx@@2 Tclass.Equiv.MSeqValue))
)))
(assert (forall ((s@@1 T@U) (i@@1 Int) (v@@0 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@0) i@@1) v@@0)) (=> (or (not (= i@@1 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@0) i@@1) (|Seq#Index| s@@1 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@0) i@@1))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| Int) ) (! (= (DatatypeCtorId (|#Equiv.MValue.MValue| |a#10#0#0| |a#10#1#0|)) |##Equiv.MValue.MValue|)
 :qid |Equivdfy.63:28|
 :skolemid |904|
 :pattern ( (|#Equiv.MValue.MValue| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#14#0#0| Int) (|a#14#1#0| Int) ) (! (= (Equiv.MValue.v (|#Equiv.MValue.MValue| |a#14#0#0| |a#14#1#0|)) |a#14#0#0|)
 :qid |Equivdfy.63:28|
 :skolemid |912|
 :pattern ( (|#Equiv.MValue.MValue| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((|a#15#0#0| Int) (|a#15#1#0| Int) ) (! (= (Equiv.MValue.v_k (|#Equiv.MValue.MValue| |a#15#0#0| |a#15#1#0|)) |a#15#1#0|)
 :qid |Equivdfy.63:28|
 :skolemid |913|
 :pattern ( (|#Equiv.MValue.MValue| |a#15#0#0| |a#15#1#0|))
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
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
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
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
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
 :skolemid |1216|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((|vs#0@@1| T@U) ) (! (= ($Is DatatypeTypeType |vs#0@@1| Tclass.Equiv.VS)  (and ($Is DatatypeTypeType |vs#0@@1| Tclass.Equiv.MSeqValue) (= (|Seq#Length| (Equiv.MSeqValue.vs |vs#0@@1|)) (|Seq#Length| (Equiv.MSeqValue.vs_k |vs#0@@1|)))))
 :qid |unknown.0:0|
 :skolemid |939|
 :pattern ( ($Is DatatypeTypeType |vs#0@@1| Tclass.Equiv.VS))
)))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@4 (TSeq t@@3)))
)))
(assert (= (Tag Tclass.Equiv.MValue) Tagclass.Equiv.MValue))
(assert (= (TagFamily Tclass.Equiv.MValue) tytagFamily$MValue))
(assert (= (Tag Tclass.Equiv.VS) Tagclass.Equiv.VS))
(assert (= (TagFamily Tclass.Equiv.VS) tytagFamily$VS))
(assert (= (Tag Tclass.Equiv.MSeqValue) Tagclass.Equiv.MSeqValue))
(assert (= (TagFamily Tclass.Equiv.MSeqValue) tytagFamily$MSeqValue))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s0@@0 n))) (=> (<= (|Seq#Length| s0@@0) n) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s1@@0 (- n (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n))
)))
(assert (forall ((|a#13#0#0| Int) (|a#13#1#0| Int) ) (! (= (|#Equiv.MValue.MValue| (LitInt |a#13#0#0|) (LitInt |a#13#1#0|)) (Lit DatatypeTypeType (|#Equiv.MValue.MValue| |a#13#0#0| |a#13#1#0|)))
 :qid |Equivdfy.63:28|
 :skolemid |911|
 :pattern ( (|#Equiv.MValue.MValue| (LitInt |a#13#0#0|) (LitInt |a#13#1#0|)))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (= (|#Equiv.MSeqValue.MSeqValue| (Lit SeqType |a#19#0#0|) (Lit SeqType |a#19#1#0|)) (Lit DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| |a#19#0#0| |a#19#1#0|)))
 :qid |Equivdfy.64:34|
 :skolemid |927|
 :pattern ( (|#Equiv.MSeqValue.MSeqValue| (Lit SeqType |a#19#0#0|) (Lit SeqType |a#19#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|v#0@@1| T@U) (|vs#0@@2| T@U) ) (!  (=> (or (|Equiv.__default.AppendValue#canCall| (Lit DatatypeTypeType |v#0@@1|) (Lit DatatypeTypeType |vs#0@@2|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |v#0@@1| Tclass.Equiv.MValue) ($Is DatatypeTypeType |vs#0@@2| Tclass.Equiv.VS)))) (and (and (and (Equiv.MValue.MValue_q (Lit DatatypeTypeType |v#0@@1|)) (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |vs#0@@2|))) (and (Equiv.MValue.MValue_q (Lit DatatypeTypeType |v#0@@1|)) (Equiv.MSeqValue.MSeqValue_q (Lit DatatypeTypeType |vs#0@@2|)))) (= (Equiv.__default.AppendValue (Lit DatatypeTypeType |v#0@@1|) (Lit DatatypeTypeType |vs#0@@2|)) (|#Equiv.MSeqValue.MSeqValue| (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt (Equiv.MValue.v (Lit DatatypeTypeType |v#0@@1|)))))) (Equiv.MSeqValue.vs (Lit DatatypeTypeType |vs#0@@2|))) (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt (Equiv.MValue.v_k (Lit DatatypeTypeType |v#0@@1|)))))) (Equiv.MSeqValue.vs_k (Lit DatatypeTypeType |vs#0@@2|)))))))
 :qid |Inductiondfy.43:30|
 :weight 3
 :skolemid |740|
 :pattern ( (Equiv.__default.AppendValue (Lit DatatypeTypeType |v#0@@1|) (Lit DatatypeTypeType |vs#0@@2|)))
))))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) ) (! (= ($Is SeqType v@@2 (TSeq t0@@1)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@2))) ($IsBox (|Seq#Index| v@@2 i@@2) t0@@1))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@2 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@2 (TSeq t0@@1)))
)))
(assert (forall ((s@@5 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@3))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@3))))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |v#0@@2| () T@U)
(declare-fun |vs#0@@3| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Equiv.__default.AppendValue)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct  (=> (Equiv.MValue.MValue_q |v#0@@2|) (=> (and (and (Equiv.MSeqValue.MSeqValue_q |vs#0@@3|) (Equiv.MValue.MValue_q |v#0@@2|)) (and (Equiv.MSeqValue.MSeqValue_q |vs#0@@3|) (= (ControlFlow 0 3) (- 0 2)))) ($Is DatatypeTypeType (|#Equiv.MSeqValue.MSeqValue| (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (Equiv.MValue.v |v#0@@2|)))) (Equiv.MSeqValue.vs |vs#0@@3|)) (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (Equiv.MValue.v_k |v#0@@2|)))) (Equiv.MSeqValue.vs_k |vs#0@@3|))) Tclass.Equiv.VS)))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |v#0@@2| Tclass.Equiv.MValue) ($Is DatatypeTypeType |vs#0@@3| Tclass.Equiv.VS)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
