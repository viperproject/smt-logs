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
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.List () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.List.Cons| (Int T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun charType () T@T)
(declare-fun _module.List.head (T@U) Int)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TChar TInt TagChar TagInt TagSeq alloc Tagclass._module.List |##_module.List.Nil| |##_module.List.Cons| tytagFamily$List)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.List.Nil| Tclass._module.List))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1439|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1440|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1336|
 :pattern ( (Lit T x@@2))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |1579|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2065|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |2068|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1347|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| Int) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |Datatypedfy.4:28|
 :skolemid |2069|
)))
 :qid |unknown.0:0|
 :skolemid |2070|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2066|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |1545|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0) ($IsAlloc T@@1 v@@0 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1360|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@1 h@@1) ($IsAllocBox bx@@0 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1432|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@2 h@@2) ($IsAlloc T@@2 v@@1 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1431|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@2 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.List) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.List)))
 :qid |unknown.0:0|
 :skolemid |1965|
 :pattern ( ($IsBox bx@@1 Tclass._module.List))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |1546|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.List| d@@3) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |2079|
 :pattern ( (|$IsA#_module.List| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.List) (or (_module.List.Nil_q d@@4) (_module.List.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |2080|
 :pattern ( (_module.List.Cons_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.List))
 :pattern ( (_module.List.Nil_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.List))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1438|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1348|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (= (Ctor charType) 9))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |1351|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v@@3 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@3) ($Is T@@3 v@@3 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1359|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1542|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |Datatypedfy.4:28|
 :skolemid |2067|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| Int) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |Datatypedfy.4:28|
 :skolemid |2075|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#9#0#0| Int) (|a#9#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)) |a#9#1#0|)
 :qid |Datatypedfy.4:28|
 :skolemid |2076|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((v@@4 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@0) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1394|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1395|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1328|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1329|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1346|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall ((|a#10#0#0| Int) (|a#10#1#0| T@U) ) (! (< (DtRank |a#10#1#0|) (DtRank (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)))
 :qid |Datatypedfy.4:28|
 :skolemid |2077|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |1342|
 :pattern ( (|char#FromInt| n))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2280|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |1544|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.List $h))) ($IsAlloc intType (int_2_U (_module.List.head d@@5)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |2072|
 :pattern ( ($IsAlloc intType (int_2_U (_module.List.head d@@5)) TInt $h))
)))
(assert (forall ((bx@@4 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1356|
 :pattern ( ($IsBox bx@@4 (TSeq t@@6)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |1343|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@6 Tclass._module.List)) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.List $h@@0))
 :qid |unknown.0:0|
 :skolemid |2078|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass._module.List $h@@0))
)))
(assert (= (Tag Tclass._module.List) Tagclass._module.List))
(assert (= (TagFamily Tclass._module.List) tytagFamily$List))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.List $h@@1))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) Tclass._module.List $h@@1))
 :qid |unknown.0:0|
 :skolemid |2073|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@7) Tclass._module.List $h@@1))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1337|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert (forall ((|a#6#0#0| Int) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) Tclass._module.List)  (and ($Is intType (int_2_U |a#6#0#0|) TInt) ($Is DatatypeTypeType |a#6#1#0| Tclass._module.List)))
 :qid |Datatypedfy.4:28|
 :skolemid |2071|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) Tclass._module.List))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1543|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@4 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1382|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@6 T@U) ) (! ($IsAlloc charType v@@6 TChar h@@5)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |1385|
 :pattern ( ($IsAlloc charType v@@6 TChar h@@5))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1374|
 :pattern ( (|Seq#Index| v@@7 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1375|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@2)))
)))
(assert (forall ((s@@5 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@2))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |1588|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@2))))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1361|
 :pattern ( ($Is intType v@@8 TInt))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is charType v@@9 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |1364|
 :pattern ( ($Is charType v@@9 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |xs#0| () T@U)
(declare-fun |_mcc#0#0_0@0| () Int)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |tail#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |let#0_1#0#0| () Int)
(declare-fun |x#0_0@0| () Int)
(declare-fun |prefix##0_0@0| () T@U)
(declare-fun |prefix#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.PrintSum)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon5_Else_correct true))
(let ((anon5_Then_correct  (=> (= |xs#0| (|#_module.List.Cons| |_mcc#0#0_0@0| |_mcc#1#0_0@0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#1#0_0@0| Tclass._module.List) ($IsAlloc DatatypeTypeType |_mcc#1#0_0@0| Tclass._module.List $Heap)) (and ($Is DatatypeTypeType |tail#0_0@0| Tclass._module.List) ($IsAlloc DatatypeTypeType |tail#0_0@0| Tclass._module.List $Heap))) (=> (and (and (and (= |let#0_0#0#0| |_mcc#1#0_0@0|) ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.List)) (and (= |tail#0_0@0| |let#0_0#0#0|) (= |let#0_1#0#0| |_mcc#0#0_0@0|))) (and (and ($Is intType (int_2_U |let#0_1#0#0|) TInt) (= |x#0_0@0| |let#0_1#0#0|)) (and (= |prefix##0_0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 43))) ($Box charType (|char#FromInt| 32))))) (= (ControlFlow 0 3) (- 0 2))))) (or (< (DtRank |tail#0_0@0|) (DtRank |xs#0|)) (and (= (DtRank |tail#0_0@0|) (DtRank |xs#0|)) (< (|Seq#Rank| |prefix##0_0@0|) (|Seq#Rank| |prefix#0|)))))))))
(let ((anon4_Else_correct  (=> (or (not (= |xs#0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 5) 3) anon5_Then_correct) (=> (= (ControlFlow 0 5) 4) anon5_Else_correct)))))
(let ((anon4_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 6) 1) anon4_Then_correct) (=> (= (ControlFlow 0 6) 5) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |xs#0| Tclass._module.List) ($IsAlloc DatatypeTypeType |xs#0| Tclass._module.List $Heap)) (|$IsA#_module.List| |xs#0|)) (and (and ($Is SeqType |prefix#0| (TSeq TChar)) ($IsAlloc SeqType |prefix#0| (TSeq TChar) $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 7) 6)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
