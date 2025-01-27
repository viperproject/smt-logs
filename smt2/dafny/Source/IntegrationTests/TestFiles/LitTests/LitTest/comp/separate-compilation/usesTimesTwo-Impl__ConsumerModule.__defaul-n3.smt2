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
(declare-fun TagChar () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.CoolLibraryName_mLibraryModule.Pair () T@U)
(declare-fun |##CoolLibraryName.LibraryModule.Pair.Pair| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Pair () T@U)
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
(declare-fun Tclass._System.nat () T@U)
(declare-fun CoolLibraryName_mLibraryModule.Pair.Pair_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.CoolLibraryName_mLibraryModule.Pair (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#CoolLibraryName.LibraryModule.Pair.Pair| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun charType () T@T)
(declare-fun Tclass.CoolLibraryName_mLibraryModule.Pair_0 (T@U) T@U)
(declare-fun Tclass.CoolLibraryName_mLibraryModule.Pair_1 (T@U) T@U)
(declare-fun CoolLibraryName_mLibraryModule.Pair.first (T@U) T@U)
(declare-fun CoolLibraryName_mLibraryModule.Pair.second (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
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
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TChar TagChar TagSeq alloc Tagclass._System.nat Tagclass.CoolLibraryName_mLibraryModule.Pair |##CoolLibraryName.LibraryModule.Pair.Pair| tytagFamily$nat tytagFamily$Pair)
)
(assert (= (Tag TChar) TagChar))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((CoolLibraryName.LibraryModule.Pair$T T@U) (CoolLibraryName.LibraryModule.Pair$U T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T CoolLibraryName.LibraryModule.Pair$U)) (CoolLibraryName_mLibraryModule.Pair.Pair_q d))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (CoolLibraryName_mLibraryModule.Pair.Pair_q d) ($Is DatatypeTypeType d (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T CoolLibraryName.LibraryModule.Pair$U)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((CoolLibraryName.LibraryModule.Pair$T@@0 T@U) (CoolLibraryName.LibraryModule.Pair$U@@0 T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#14#0#0| |a#14#1#0|) (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@0 CoolLibraryName.LibraryModule.Pair$U@@0))  (and ($IsBox |a#14#0#0| CoolLibraryName.LibraryModule.Pair$T@@0) ($IsBox |a#14#1#0| CoolLibraryName.LibraryModule.Pair$U@@0)))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($Is DatatypeTypeType (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#14#0#0| |a#14#1#0|) (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@0 CoolLibraryName.LibraryModule.Pair$U@@0)))
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
(assert (forall ((CoolLibraryName.LibraryModule.Pair$T@@1 T@U) (CoolLibraryName.LibraryModule.Pair$U@@1 T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@1 CoolLibraryName.LibraryModule.Pair$U@@1) $h@@0)  (and ($IsAllocBox |a#14#0#0@@0| CoolLibraryName.LibraryModule.Pair$T@@1 $h@@0) ($IsAllocBox |a#14#1#0@@0| CoolLibraryName.LibraryModule.Pair$U@@1 $h@@0))))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($IsAlloc DatatypeTypeType (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@1 CoolLibraryName.LibraryModule.Pair$U@@1) $h@@0))
)))
(assert (forall ((d@@0 T@U) ) (! (= (CoolLibraryName_mLibraryModule.Pair.Pair_q d@@0) (= (DatatypeCtorId d@@0) |##CoolLibraryName.LibraryModule.Pair.Pair|))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( (CoolLibraryName_mLibraryModule.Pair.Pair_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (CoolLibraryName_mLibraryModule.Pair.Pair_q d@@1) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= d@@1 (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#13#0#0| |a#13#1#0|))
 :qid |timesTwodfy.17:34|
 :skolemid |586|
)))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( (CoolLibraryName_mLibraryModule.Pair.Pair_q d@@1))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h) ($IsAlloc T@@1 v@@0 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@1 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i) v@@1)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@1) i))
)))
(assert (= (Ctor charType) 5))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TChar) (and (= ($Box charType ($Unbox charType bx@@1)) bx@@1) ($Is charType ($Unbox charType bx@@1) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@1 TChar))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@1) ($Is T@@2 v@@2 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((CoolLibraryName.LibraryModule.Pair$T@@2 T@U) (CoolLibraryName.LibraryModule.Pair$U@@2 T@U) ) (! (= (Tclass.CoolLibraryName_mLibraryModule.Pair_0 (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@2 CoolLibraryName.LibraryModule.Pair$U@@2)) CoolLibraryName.LibraryModule.Pair$T@@2)
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@2 CoolLibraryName.LibraryModule.Pair$U@@2))
)))
(assert (forall ((CoolLibraryName.LibraryModule.Pair$T@@3 T@U) (CoolLibraryName.LibraryModule.Pair$U@@3 T@U) ) (! (= (Tclass.CoolLibraryName_mLibraryModule.Pair_1 (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@3 CoolLibraryName.LibraryModule.Pair$U@@3)) CoolLibraryName.LibraryModule.Pair$U@@3)
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@3 CoolLibraryName.LibraryModule.Pair$U@@3))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (DatatypeCtorId (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#12#0#0| |a#12#1#0|)) |##CoolLibraryName.LibraryModule.Pair.Pair|)
 :qid |timesTwodfy.17:34|
 :skolemid |584|
 :pattern ( (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (CoolLibraryName_mLibraryModule.Pair.first (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#16#0#0| |a#16#1#0|)) |a#16#0#0|)
 :qid |timesTwodfy.17:34|
 :skolemid |595|
 :pattern ( (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= (CoolLibraryName_mLibraryModule.Pair.second (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#18#0#0| |a#18#1#0|)) |a#18#1#0|)
 :qid |timesTwodfy.17:34|
 :skolemid |597|
 :pattern ( (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#18#0#0| |a#18#1#0|))
)))
(assert (forall ((v@@3 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#17#0#0| |a#17#1#0|)))
 :qid |timesTwodfy.17:34|
 :skolemid |596|
 :pattern ( (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#17#0#0| |a#17#1#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#19#0#0| |a#19#1#0|)))
 :qid |timesTwodfy.17:34|
 :skolemid |598|
 :pattern ( (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#19#0#0| |a#19#1#0|))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((CoolLibraryName.LibraryModule.Pair$T@@4 T@U) (CoolLibraryName.LibraryModule.Pair$U@@4 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@4 CoolLibraryName.LibraryModule.Pair$U@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@4 CoolLibraryName.LibraryModule.Pair$U@@4))))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($IsBox bx@@2 (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@4 CoolLibraryName.LibraryModule.Pair$U@@4)))
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
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 9)
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
 :skolemid |663|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((CoolLibraryName.LibraryModule.Pair$T@@5 T@U) (CoolLibraryName.LibraryModule.Pair$U@@5 T@U) ) (!  (and (= (Tag (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@5 CoolLibraryName.LibraryModule.Pair$U@@5)) Tagclass.CoolLibraryName_mLibraryModule.Pair) (= (TagFamily (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@5 CoolLibraryName.LibraryModule.Pair$U@@5)) tytagFamily$Pair))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@5 CoolLibraryName.LibraryModule.Pair$U@@5))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@3 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@3 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@3)) bx@@3) ($Is SeqType ($Unbox SeqType bx@@3) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@3 (TSeq t@@4)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((d@@3 T@U) (CoolLibraryName.LibraryModule.Pair$T@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (CoolLibraryName_mLibraryModule.Pair.Pair_q d@@3) (exists ((CoolLibraryName.LibraryModule.Pair$U@@6 T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@6 CoolLibraryName.LibraryModule.Pair$U@@6) $h@@1)
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@6 CoolLibraryName.LibraryModule.Pair$U@@6) $h@@1))
)))) ($IsAllocBox (CoolLibraryName_mLibraryModule.Pair.first d@@3) CoolLibraryName.LibraryModule.Pair$T@@6 $h@@1))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($IsAllocBox (CoolLibraryName_mLibraryModule.Pair.first d@@3) CoolLibraryName.LibraryModule.Pair$T@@6 $h@@1))
)))
(assert (forall ((d@@4 T@U) (CoolLibraryName.LibraryModule.Pair$U@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (CoolLibraryName_mLibraryModule.Pair.Pair_q d@@4) (exists ((CoolLibraryName.LibraryModule.Pair$T@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@7 CoolLibraryName.LibraryModule.Pair$U@@7) $h@@2)
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass.CoolLibraryName_mLibraryModule.Pair CoolLibraryName.LibraryModule.Pair$T@@7 CoolLibraryName.LibraryModule.Pair$U@@7) $h@@2))
)))) ($IsAllocBox (CoolLibraryName_mLibraryModule.Pair.second d@@4) CoolLibraryName.LibraryModule.Pair$U@@7 $h@@2))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( ($IsAllocBox (CoolLibraryName_mLibraryModule.Pair.second d@@4) CoolLibraryName.LibraryModule.Pair$U@@7 $h@@2))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= (|#CoolLibraryName.LibraryModule.Pair.Pair| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|)) (Lit DatatypeTypeType (|#CoolLibraryName.LibraryModule.Pair.Pair| |a#15#0#0| |a#15#1#0|)))
 :qid |timesTwodfy.17:34|
 :skolemid |594|
 :pattern ( (|#CoolLibraryName.LibraryModule.Pair.Pair| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@1)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@1))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@2)))
)))
(assert (forall ((s@@5 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@2))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@2))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is charType v@@6 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@6 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |p#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$ConsumerModule.__default.MakeAPair)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |p#0| (Tclass.CoolLibraryName_mLibraryModule.Pair Tclass._System.nat (TSeq TChar))) ($IsAlloc DatatypeTypeType |p#0| (Tclass.CoolLibraryName_mLibraryModule.Pair Tclass._System.nat (TSeq TChar)) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
