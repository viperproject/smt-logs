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
(declare-fun Tagclass.Seq.List () T@U)
(declare-fun Tagclass.Seq.Box () T@U)
(declare-fun |##Seq.List.Nil| () T@U)
(declare-fun |##Seq.List.Cons| () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Box () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#Seq.List.Cons| (T@U T@U) T@U)
(declare-fun Tclass.Seq.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun Tclass.Seq.Box (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Seq.__default.Length (T@U T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Seq.List.Nil| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Seq.List.Nil_q (T@U) Bool)
(declare-fun Seq.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Seq.List.t (T@U) T@U)
(declare-fun Seq.List._h1 (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.Seq.List_0 (T@U) T@U)
(declare-fun Tclass.Seq.Box_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |$let#0_l| (T@U T@U) T@U)
(declare-fun |$let#0$canCall| (T@U T@U) Bool)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun |Seq.__default.Length#canCall| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass.Seq.List Tagclass.Seq.Box |##Seq.List.Nil| |##Seq.List.Cons| tytagFamily$List tytagFamily$Box)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor SeqType) 4)))
(assert (forall ((Seq.List$T T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#Seq.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Seq.List Seq.List$T) $h)  (and ($IsAllocBox |a#6#0#0| Seq.List$T $h) ($IsAlloc SeqType |a#6#1#0| (Tclass.Seq.Box (Tclass.Seq.List Seq.List$T)) $h))))
 :qid |unknown.0:0|
 :skolemid |1038|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Seq.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Seq.List Seq.List$T) $h))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#11#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#11#1#0| i))) (DtRank (|#Seq.List.Cons| |a#11#0#0| |a#11#1#0|))))
 :qid |gitissue1875dfy.25:33|
 :skolemid |1045|
 :pattern ( (|Seq#Index| |a#11#1#0| i) (|#Seq.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((Seq.Box$T T@U) (|b#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc SeqType |b#0| (Tclass.Seq.Box Seq.Box$T) $h@@0) ($IsAlloc SeqType |b#0| (TSeq Seq.Box$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1028|
 :pattern ( ($IsAlloc SeqType |b#0| (Tclass.Seq.Box Seq.Box$T) $h@@0))
)))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |765|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (forall ((Seq._default.Length$T T@U) ($ly T@U) (|l#0| T@U) ) (! (= (Seq.__default.Length Seq._default.Length$T ($LS $ly) |l#0|) (Seq.__default.Length Seq._default.Length$T $ly |l#0|))
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( (Seq.__default.Length Seq._default.Length$T ($LS $ly) |l#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#Seq.List.Nil|) |##Seq.List.Nil|))
(assert (forall ((Seq.List$T@@0 T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#Seq.List.Nil| (Tclass.Seq.List Seq.List$T@@0) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1032|
 :pattern ( ($IsAlloc DatatypeTypeType |#Seq.List.Nil| (Tclass.Seq.List Seq.List$T@@0) $h@@1))
)))
(assert (forall ((Seq.List$T@@1 T@U) ) (! ($Is DatatypeTypeType |#Seq.List.Nil| (Tclass.Seq.List Seq.List$T@@1))
 :qid |unknown.0:0|
 :skolemid |1031|
 :pattern ( ($Is DatatypeTypeType |#Seq.List.Nil| (Tclass.Seq.List Seq.List$T@@1)))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |550|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |548|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((d T@U) ) (! (= (Seq.List.Nil_q d) (= (DatatypeCtorId d) |##Seq.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1029|
 :pattern ( (Seq.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Seq.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##Seq.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |1034|
 :pattern ( (Seq.List.Cons_q d@@0))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |559|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (Seq.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#Seq.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |gitissue1875dfy.25:33|
 :skolemid |1035|
)))
 :qid |unknown.0:0|
 :skolemid |1036|
 :pattern ( (Seq.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Seq.List.Nil_q d@@2) (= d@@2 |#Seq.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1030|
 :pattern ( (Seq.List.Nil_q d@@2))
)))
(assert (forall ((Seq.List$T@@2 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#Seq.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Seq.List Seq.List$T@@2))  (and ($IsBox |a#6#0#0@@0| Seq.List$T@@2) ($Is SeqType |a#6#1#0@@0| (Tclass.Seq.Box (Tclass.Seq.List Seq.List$T@@2)))))
 :qid |unknown.0:0|
 :skolemid |1037|
 :pattern ( ($Is DatatypeTypeType (|#Seq.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Seq.List Seq.List$T@@2)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |572|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((Seq.List$T@@3 T@U) ) (!  (and (= (Tag (Tclass.Seq.List Seq.List$T@@3)) Tagclass.Seq.List) (= (TagFamily (Tclass.Seq.List Seq.List$T@@3)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |1014|
 :pattern ( (Tclass.Seq.List Seq.List$T@@3))
)))
(assert (forall ((Seq.Box$T@@0 T@U) ) (!  (and (= (Tag (Tclass.Seq.Box Seq.Box$T@@0)) Tagclass.Seq.Box) (= (TagFamily (Tclass.Seq.Box Seq.Box$T@@0)) tytagFamily$Box))
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( (Tclass.Seq.Box Seq.Box$T@@0))
)))
(assert (forall ((s T@U) (x@@6 T@U) ) (! (= (|Seq#Contains| s x@@6) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s))) (= (|Seq#Index| s i@@0) x@@6))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |763|
 :pattern ( (|Seq#Index| s i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |764|
 :pattern ( (|Seq#Contains| s x@@6))
)))
(assert (forall ((Seq.Box$T@@1 T@U) (|b#0@@0| T@U) ) (! (= ($Is SeqType |b#0@@0| (Tclass.Seq.Box Seq.Box$T@@1))  (and ($Is SeqType |b#0@@0| (TSeq Seq.Box$T@@1)) (= (|Seq#Length| |b#0@@0|) (LitInt 1))))
 :qid |unknown.0:0|
 :skolemid |1027|
 :pattern ( ($Is SeqType |b#0@@0| (Tclass.Seq.Box Seq.Box$T@@1)))
)))
(assert (forall ((Seq.List$T@@4 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.Seq.List Seq.List$T@@4)) (or (Seq.List.Nil_q d@@3) (Seq.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1048|
 :pattern ( (Seq.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Seq.List Seq.List$T@@4)))
 :pattern ( (Seq.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Seq.List Seq.List$T@@4)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |560|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |571|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |754|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#Seq.List.Cons| |a#4#0#0| |a#4#1#0|)) |##Seq.List.Cons|)
 :qid |gitissue1875dfy.25:33|
 :skolemid |1033|
 :pattern ( (|#Seq.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (Seq.List.t (|#Seq.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |gitissue1875dfy.25:33|
 :skolemid |1042|
 :pattern ( (|#Seq.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (Seq.List._h1 (|#Seq.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |gitissue1875dfy.25:33|
 :skolemid |1044|
 :pattern ( (|#Seq.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@1) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |606|
 :pattern ( (|Seq#Index| v@@1 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |607|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |540|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |541|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((Seq.List$T@@5 T@U) ) (! (= (Tclass.Seq.List_0 (Tclass.Seq.List Seq.List$T@@5)) Seq.List$T@@5)
 :qid |unknown.0:0|
 :skolemid |1015|
 :pattern ( (Tclass.Seq.List Seq.List$T@@5))
)))
(assert (forall ((Seq.Box$T@@2 T@U) ) (! (= (Tclass.Seq.Box_0 (Tclass.Seq.Box Seq.Box$T@@2)) Seq.Box$T@@2)
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( (Tclass.Seq.Box Seq.Box$T@@2))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |558|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#Seq.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |gitissue1875dfy.25:33|
 :skolemid |1043|
 :pattern ( (|#Seq.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (< (|Seq#Rank| |a#12#1#0|) (DtRank (|#Seq.List.Cons| |a#12#0#0| |a#12#1#0|)))
 :qid |gitissue1875dfy.25:33|
 :skolemid |1046|
 :pattern ( (|#Seq.List.Cons| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((Seq._default.Length$T@@0 T@U) (q T@U) ) (!  (=> (|$let#0$canCall| Seq._default.Length$T@@0 q) (and ($Is DatatypeTypeType (|$let#0_l| Seq._default.Length$T@@0 q) (Tclass.Seq.List Seq._default.Length$T@@0)) (|Seq#Contains| q ($Box DatatypeTypeType (|$let#0_l| Seq._default.Length$T@@0 q)))))
 :qid |gitissue1875dfy.32:9|
 :skolemid |1022|
 :pattern ( (|$let#0_l| Seq._default.Length$T@@0 q))
)))
(assert (forall ((d@@4 T@U) (Seq.List$T@@6 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (Seq.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass.Seq.List Seq.List$T@@6) $h@@2))) ($IsAllocBox (Seq.List.t d@@4) Seq.List$T@@6 $h@@2))
 :qid |unknown.0:0|
 :skolemid |1039|
 :pattern ( ($IsAllocBox (Seq.List.t d@@4) Seq.List$T@@6 $h@@2))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2610|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |617|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((Seq._default.Length$T@@1 T@U) ($ly@@0 T@U) ($Heap T@U) (|l#0@@1| T@U) ) (!  (=> (or (|Seq.__default.Length#canCall| Seq._default.Length$T@@1 |l#0@@1|) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap) ($Is DatatypeTypeType |l#0@@1| (Tclass.Seq.List Seq._default.Length$T@@1))))) (and (=> (not (Seq.List.Nil_q |l#0@@1|)) (let ((|q#2| (Seq.List._h1 |l#0@@1|)))
 (and (|$let#0$canCall| Seq._default.Length$T@@1 |q#2|) (|Seq.__default.Length#canCall| Seq._default.Length$T@@1 (|$let#0_l| Seq._default.Length$T@@1 |q#2|))))) (= (Seq.__default.Length Seq._default.Length$T@@1 ($LS $ly@@0) |l#0@@1|) (ite (Seq.List.Nil_q |l#0@@1|) 0 (let ((|q#0| (Seq.List._h1 |l#0@@1|)))
(let ((|l#1@@0| (|$let#0_l| Seq._default.Length$T@@1 |q#0|)))
(Seq.__default.Length Seq._default.Length$T@@1 $ly@@0 |l#1@@0|)))))))
 :qid |unknown.0:0|
 :skolemid |1023|
 :pattern ( (Seq.__default.Length Seq._default.Length$T@@1 ($LS $ly@@0) |l#0@@1|) ($IsGoodHeap $Heap))
))))
(assert (forall ((bx@@0 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@0 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@0)) bx@@0) ($Is SeqType ($Unbox SeqType bx@@0) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |568|
 :pattern ( ($IsBox bx@@0 (TSeq t@@3)))
)))
(assert (forall ((Seq.List$T@@7 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.Seq.List Seq.List$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass.Seq.List Seq.List$T@@7))))
 :qid |unknown.0:0|
 :skolemid |1016|
 :pattern ( ($IsBox bx@@1 (Tclass.Seq.List Seq.List$T@@7)))
)))
(assert (forall ((Seq.Box$T@@3 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass.Seq.Box Seq.Box$T@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (Tclass.Seq.Box Seq.Box$T@@3))))
 :qid |unknown.0:0|
 :skolemid |1021|
 :pattern ( ($IsBox bx@@2 (Tclass.Seq.Box Seq.Box$T@@3)))
)))
(assert (= |#Seq.List.Nil| (Lit DatatypeTypeType |#Seq.List.Nil|)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((Seq._default.Length$T@@2 T@U) ($ly@@1 T@U) ($Heap@@0 T@U) (|l#0@@2| T@U) ) (!  (=> (or (|Seq.__default.Length#canCall| Seq._default.Length$T@@2 (Lit DatatypeTypeType |l#0@@2|)) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) ($Is DatatypeTypeType |l#0@@2| (Tclass.Seq.List Seq._default.Length$T@@2))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (Seq.List.Nil_q (Lit DatatypeTypeType |l#0@@2|)))))) (let ((|q#4| (Lit SeqType (Seq.List._h1 (Lit DatatypeTypeType |l#0@@2|)))))
 (and (|$let#0$canCall| Seq._default.Length$T@@2 |q#4|) (|Seq.__default.Length#canCall| Seq._default.Length$T@@2 (|$let#0_l| Seq._default.Length$T@@2 |q#4|))))) (= (Seq.__default.Length Seq._default.Length$T@@2 ($LS $ly@@1) (Lit DatatypeTypeType |l#0@@2|)) (ite (Seq.List.Nil_q (Lit DatatypeTypeType |l#0@@2|)) 0 (let ((|q#3| (Lit SeqType (Seq.List._h1 (Lit DatatypeTypeType |l#0@@2|)))))
(let ((|l#2@@0| (|$let#0_l| Seq._default.Length$T@@2 |q#3|)))
(Seq.__default.Length Seq._default.Length$T@@2 ($LS $ly@@1) |l#2@@0|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1024|
 :pattern ( (Seq.__default.Length Seq._default.Length$T@@2 ($LS $ly@@1) (Lit DatatypeTypeType |l#0@@2|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#Seq.List.Cons| (Lit BoxType |a#7#0#0|) (Lit SeqType |a#7#1#0|)) (Lit DatatypeTypeType (|#Seq.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |gitissue1875dfy.25:33|
 :skolemid |1041|
 :pattern ( (|#Seq.List.Cons| (Lit BoxType |a#7#0#0|) (Lit SeqType |a#7#1#0|)))
)))
(assert (forall ((d@@6 T@U) (Seq.List$T@@8 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (Seq.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.Seq.List Seq.List$T@@8) $h@@3))) ($IsAlloc SeqType (Seq.List._h1 d@@6) (Tclass.Seq.Box (Tclass.Seq.List Seq.List$T@@8)) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( ($IsAlloc SeqType (Seq.List._h1 d@@6) (Tclass.Seq.Box (Tclass.Seq.List Seq.List$T@@8)) $h@@3))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |551|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |549|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |755|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |594|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@2) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |586|
 :pattern ( (|Seq#Index| v@@3 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |587|
 :pattern ( ($Is SeqType v@@3 (TSeq t0@@2)))
)))
(assert (forall ((s@@2 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@3))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |800|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@3))))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |573|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Seq._default.Length$T@@3 () T@U)
(declare-fun |q#Z#0@0| () T@U)
(declare-fun |l#3@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |l#0@@3| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |t#Z#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Seq.__default.Length)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon7_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#Seq.List.Nil|) (Tclass.Seq.List Seq._default.Length$T@@3)) (|Seq#Contains| |q#Z#0@0| ($Box DatatypeTypeType |#Seq.List.Nil|))) (exists ((|l#4| T@U) ) (!  (and ($Is DatatypeTypeType |l#4| (Tclass.Seq.List Seq._default.Length$T@@3)) (|Seq#Contains| |q#Z#0@0| ($Box DatatypeTypeType |l#4|)))
 :qid |gitissue1875dfy.32:13|
 :skolemid |1025|
)))) (=> (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#Seq.List.Nil|) (Tclass.Seq.List Seq._default.Length$T@@3)) (|Seq#Contains| |q#Z#0@0| ($Box DatatypeTypeType |#Seq.List.Nil|))) (exists ((|l#4@@0| T@U) ) (!  (and ($Is DatatypeTypeType |l#4@@0| (Tclass.Seq.List Seq._default.Length$T@@3)) (|Seq#Contains| |q#Z#0@0| ($Box DatatypeTypeType |l#4@@0|)))
 :qid |gitissue1875dfy.32:13|
 :skolemid |1025|
))) (=> (and (and (and ($Is DatatypeTypeType |l#3@0| (Tclass.Seq.List Seq._default.Length$T@@3)) ($IsAlloc DatatypeTypeType |l#3@0| (Tclass.Seq.List Seq._default.Length$T@@3) $Heap@@1)) (|Seq#Contains| |q#Z#0@0| ($Box DatatypeTypeType |l#3@0|))) (and ($IsAlloc DatatypeTypeType |l#3@0| (Tclass.Seq.List Seq._default.Length$T@@3) $Heap@@1) (= (ControlFlow 0 5) (- 0 4)))) (< (DtRank |l#3@0|) (DtRank |l#0@@3|)))))))
(let ((anon13_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |l#3@0| (Tclass.Seq.List Seq._default.Length$T@@3)) ($IsAlloc DatatypeTypeType |l#3@0| (Tclass.Seq.List Seq._default.Length$T@@3) $Heap@@1))) (= (ControlFlow 0 8) 5)) anon7_correct)))
(let ((anon13_Then_correct  (=> (and (and ($Is DatatypeTypeType |l#3@0| (Tclass.Seq.List Seq._default.Length$T@@3)) ($IsAlloc DatatypeTypeType |l#3@0| (Tclass.Seq.List Seq._default.Length$T@@3) $Heap@@1)) (= (ControlFlow 0 7) 5)) anon7_correct)))
(let ((anon12_Then_correct  (=> (= |l#0@@3| (|#Seq.List.Cons| |_mcc#0#0| |_mcc#1#0|)) (=> (and (and (and ($IsBox |_mcc#0#0| Seq._default.Length$T@@3) ($Is SeqType |_mcc#1#0| (Tclass.Seq.Box (Tclass.Seq.List Seq._default.Length$T@@3)))) (and (= |let#0#0#0| |_mcc#1#0|) ($Is SeqType |let#0#0#0| (Tclass.Seq.Box (Tclass.Seq.List Seq._default.Length$T@@3))))) (and (and (= |q#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#0#0|)) (and ($IsBox |let#1#0#0| Seq._default.Length$T@@3) (= |t#Z#0@0| |let#1#0#0|)))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |q#Z#0@0|)))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (|Seq#Contains| |q#Z#0@0| (|Seq#Index| |q#Z#0@0| (LitInt 0)))) (=> (|Seq#Contains| |q#Z#0@0| (|Seq#Index| |q#Z#0@0| (LitInt 0))) (and (=> (= (ControlFlow 0 9) 7) anon13_Then_correct) (=> (= (ControlFlow 0 9) 8) anon13_Else_correct)))))))))
(let ((anon12_Else_correct true))
(let ((anon11_Else_correct  (=> (or (not (= |l#0@@3| |#Seq.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 12) 9) anon12_Then_correct) (=> (= (ControlFlow 0 12) 3) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (and (=> (= (ControlFlow 0 13) 1) anon10_Then_correct) (=> (= (ControlFlow 0 13) 2) anon11_Then_correct)) (=> (= (ControlFlow 0 13) 12) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) ($Is DatatypeTypeType |l#0@@3| (Tclass.Seq.List Seq._default.Length$T@@3))) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 14) 13))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
