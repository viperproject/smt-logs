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
(declare-fun TagSet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(declare-fun |Seq#SameUntil| (T@U T@U Int) Bool)
(declare-fun |MultiSet#Subset| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet TagMultiSet TagSeq alloc)
)
(assert (= (Tag TInt) TagInt))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor MultiSetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o T@U) ) (!  (=> (|Set#IsMember| a o) (|Set#IsMember| b o))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o))
 :pattern ( (|Set#IsMember| b o))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (= (Ctor SetType) 4))
(assert (forall ((v@@0 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v@@0 bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@0)))
)))
(assert (forall ((v@@1 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t h) ($IsAlloc T@@1 v@@1 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t h))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|MultiSet#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |209|
 :pattern ( (|MultiSet#Equal| a@@0 b@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) ) (! (= ($Is MultiSetType v@@2 (TMultiSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@2 bx@@0)) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |50|
 :pattern ( (|MultiSet#Multiplicity| v@@2 bx@@0))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |51|
 :pattern ( ($Is MultiSetType v@@2 (TMultiSet t0@@1)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@3 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@0) ($Is T@@2 v@@3 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@2 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@2)) (<= (|MultiSet#Multiplicity| ms bx@@2) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@2))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@2) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@3) ($IsAllocBox bx@@3 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@4 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@2) h@@0))
)))
(assert (forall ((o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0))
)))
(assert (= (Ctor SeqType) 5))
(assert (forall ((v@@5 T@U) (t0@@3 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@3) h@@1) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i) t0@@3 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@3) h@@1))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |5|
 :pattern ( (TMultiSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TMultiSet t@@4)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |6|
 :pattern ( (TMultiSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((s@@1 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@1) 0) (= s@@1 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@1) 0)) (not true)) (exists ((x@@5 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@1 x@@5))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@1 x@@5))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@1))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@4 t1 t2 (MapType0Store t0@@4 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((t0@@5 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@5 t1@@0 (MapType1Store t0@@5 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
 :skolemid |559|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@4 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@7)))
)))
(assert (forall ((bx@@5 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@5 (TMultiSet t@@8)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@5)) bx@@5) ($Is MultiSetType ($Unbox MultiSetType bx@@5) (TMultiSet t@@8))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@5 (TMultiSet t@@8)))
)))
(assert (forall ((bx@@6 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@6 (TSeq t@@9)))
)))
(assert (forall ((s0 T@U) (s1 T@U) (n Int) ) (! (= (|Seq#SameUntil| s0 s1 n) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j n)) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1232:19|
 :skolemid |242|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
)))
 :qid |DafnyPreludebpl.1229:15|
 :skolemid |243|
 :pattern ( (|Seq#SameUntil| s0 s1 n))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@6)) (Lit BoxType ($Box T@@4 x@@6)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@6)))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|MultiSet#Equal| a@@1 b@@1) (forall ((o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| a@@1 o@@1) (|MultiSet#Multiplicity| b@@1 o@@1))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |207|
 :pattern ( (|MultiSet#Multiplicity| a@@1 o@@1))
 :pattern ( (|MultiSet#Multiplicity| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|MultiSet#Subset| a@@2 b@@2) (forall ((o@@2 T@U) ) (! (<= (|MultiSet#Multiplicity| a@@2 o@@2) (|MultiSet#Multiplicity| b@@2 o@@2))
 :qid |DafnyPreludebpl.1041:19|
 :skolemid |205|
 :pattern ( (|MultiSet#Multiplicity| a@@2 o@@2))
 :pattern ( (|MultiSet#Multiplicity| b@@2 o@@2))
)))
 :qid |DafnyPreludebpl.1038:15|
 :skolemid |206|
 :pattern ( (|MultiSet#Subset| a@@2 b@@2))
)))
(assert (forall ((v@@6 T@U) (t0@@6 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MultiSetType v@@6 (TMultiSet t0@@6) h@@2) (forall ((bx@@7 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@6 bx@@7)) ($IsAllocBox bx@@7 t0@@6 h@@2))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |71|
 :pattern ( (|MultiSet#Multiplicity| v@@6 bx@@7))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |72|
 :pattern ( ($IsAlloc MultiSetType v@@6 (TMultiSet t0@@6) h@@2))
)))
(assert (forall ((h@@3 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@3))
)))
(assert (forall ((v@@8 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@7)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@0) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@8 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@7)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@9 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c1#0@0| () Bool)
(declare-fun |q#0| () T@U)
(declare-fun |x#19@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |c0#0@0| () Bool)
(declare-fun |x#17@0| () T@U)
(declare-fun |b3#0@0| () Bool)
(declare-fun |ms#0| () T@U)
(declare-fun |x#15@0| () T@U)
(declare-fun |b2#0@0| () Bool)
(declare-fun |x#13@0| () T@U)
(declare-fun |b1#0@0| () Bool)
(declare-fun |x#11@0| () T@U)
(declare-fun |b0#0@0| () Bool)
(declare-fun |x#9@0| () T@U)
(declare-fun |a3#0@0| () Bool)
(declare-fun |s#0| () T@U)
(declare-fun |x#7@0| () T@U)
(declare-fun |a2#0@0| () Bool)
(declare-fun |x#5@0| () T@U)
(declare-fun |a1#0@0| () Bool)
(declare-fun |x#3@0| () T@U)
(declare-fun |a0#0@0| () Bool)
(declare-fun |x#1@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Orderings)
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
 (=> (= (ControlFlow 0 0) 33) (let ((anon20_correct  (=> (and (= |c1#0@0| (exists ((|x#18| T@U) ) (!  (and ($Is SeqType |x#18| (TSeq TInt)) (and (<= (|Seq#Length| |x#18|) (|Seq#Length| |q#0|)) (|Seq#SameUntil| |x#18| |q#0| (|Seq#Length| |x#18|))))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.167:20|
 :skolemid |558|
))) (= (ControlFlow 0 2) (- 0 1))) (U_2_bool (Lit boolType (bool_2_U true))))))
(let ((anon30_Else_correct  (=> (and (not (and ($Is SeqType |x#19@0| (TSeq TInt)) ($IsAlloc SeqType |x#19@0| (TSeq TInt) $Heap))) (= (ControlFlow 0 4) 2)) anon20_correct)))
(let ((anon30_Then_correct  (=> (and (and ($Is SeqType |x#19@0| (TSeq TInt)) ($IsAlloc SeqType |x#19@0| (TSeq TInt) $Heap)) (= (ControlFlow 0 3) 2)) anon20_correct)))
(let ((anon18_correct  (=> (= |c0#0@0| (exists ((|x#16| T@U) ) (!  (and ($Is SeqType |x#16| (TSeq TInt)) (and (< (|Seq#Length| |x#16|) (|Seq#Length| |q#0|)) (|Seq#SameUntil| |x#16| |q#0| (|Seq#Length| |x#16|))))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.166:20|
 :skolemid |557|
))) (and (=> (= (ControlFlow 0 5) 3) anon30_Then_correct) (=> (= (ControlFlow 0 5) 4) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (and (not (and ($Is SeqType |x#17@0| (TSeq TInt)) ($IsAlloc SeqType |x#17@0| (TSeq TInt) $Heap))) (= (ControlFlow 0 7) 5)) anon18_correct)))
(let ((anon29_Then_correct  (=> (and (and ($Is SeqType |x#17@0| (TSeq TInt)) ($IsAlloc SeqType |x#17@0| (TSeq TInt) $Heap)) (= (ControlFlow 0 6) 5)) anon18_correct)))
(let ((anon16_correct  (=> (= |b3#0@0| (exists ((|x#14| T@U) ) (!  (and ($Is MultiSetType |x#14| (TMultiSet TInt)) (and (|MultiSet#Subset| |ms#0| |x#14|) (not (|MultiSet#Equal| |ms#0| |x#14|))))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.164:20|
 :skolemid |556|
 :pattern ( (|MultiSet#Subset| |ms#0| |x#14|))
))) (and (=> (= (ControlFlow 0 8) 6) anon29_Then_correct) (=> (= (ControlFlow 0 8) 7) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not (and ($Is MultiSetType |x#15@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |x#15@0| (TMultiSet TInt) $Heap))) (= (ControlFlow 0 10) 8)) anon16_correct)))
(let ((anon28_Then_correct  (=> (and (and ($Is MultiSetType |x#15@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |x#15@0| (TMultiSet TInt) $Heap)) (= (ControlFlow 0 9) 8)) anon16_correct)))
(let ((anon14_correct  (=> (= |b2#0@0| (exists ((|x#12| T@U) ) (!  (and ($Is MultiSetType |x#12| (TMultiSet TInt)) (|MultiSet#Subset| |ms#0| |x#12|))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.163:20|
 :skolemid |555|
 :pattern ( (|MultiSet#Subset| |ms#0| |x#12|))
))) (and (=> (= (ControlFlow 0 11) 9) anon28_Then_correct) (=> (= (ControlFlow 0 11) 10) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (and (not (and ($Is MultiSetType |x#13@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |x#13@0| (TMultiSet TInt) $Heap))) (= (ControlFlow 0 13) 11)) anon14_correct)))
(let ((anon27_Then_correct  (=> (and (and ($Is MultiSetType |x#13@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |x#13@0| (TMultiSet TInt) $Heap)) (= (ControlFlow 0 12) 11)) anon14_correct)))
(let ((anon12_correct  (=> (= |b1#0@0| (exists ((|x#10| T@U) ) (!  (and ($Is MultiSetType |x#10| (TMultiSet TInt)) (|MultiSet#Subset| |x#10| |ms#0|))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.162:20|
 :skolemid |554|
 :pattern ( (|MultiSet#Subset| |x#10| |ms#0|))
))) (and (=> (= (ControlFlow 0 14) 12) anon27_Then_correct) (=> (= (ControlFlow 0 14) 13) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (not (and ($Is MultiSetType |x#11@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |x#11@0| (TMultiSet TInt) $Heap))) (= (ControlFlow 0 16) 14)) anon12_correct)))
(let ((anon26_Then_correct  (=> (and (and ($Is MultiSetType |x#11@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |x#11@0| (TMultiSet TInt) $Heap)) (= (ControlFlow 0 15) 14)) anon12_correct)))
(let ((anon10_correct  (=> (= |b0#0@0| (exists ((|x#8| T@U) ) (!  (and ($Is MultiSetType |x#8| (TMultiSet TInt)) (and (|MultiSet#Subset| |x#8| |ms#0|) (not (|MultiSet#Equal| |x#8| |ms#0|))))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.161:20|
 :skolemid |553|
 :pattern ( (|MultiSet#Subset| |x#8| |ms#0|))
))) (and (=> (= (ControlFlow 0 17) 15) anon26_Then_correct) (=> (= (ControlFlow 0 17) 16) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not (and ($Is MultiSetType |x#9@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |x#9@0| (TMultiSet TInt) $Heap))) (= (ControlFlow 0 19) 17)) anon10_correct)))
(let ((anon25_Then_correct  (=> (and (and ($Is MultiSetType |x#9@0| (TMultiSet TInt)) ($IsAlloc MultiSetType |x#9@0| (TMultiSet TInt) $Heap)) (= (ControlFlow 0 18) 17)) anon10_correct)))
(let ((anon8_correct  (=> (= |a3#0@0| (exists ((|x#6| T@U) ) (!  (and ($Is SetType |x#6| (TSet TInt)) (and (|Set#Subset| |s#0| |x#6|) (not (|Set#Subset| |x#6| |s#0|))))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.159:20|
 :skolemid |552|
 :pattern ( (|Set#Subset| |s#0| |x#6|))
))) (and (=> (= (ControlFlow 0 20) 18) anon25_Then_correct) (=> (= (ControlFlow 0 20) 19) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (not (and ($Is SetType |x#7@0| (TSet TInt)) ($IsAlloc SetType |x#7@0| (TSet TInt) $Heap))) (= (ControlFlow 0 22) 20)) anon8_correct)))
(let ((anon24_Then_correct  (=> (and (and ($Is SetType |x#7@0| (TSet TInt)) ($IsAlloc SetType |x#7@0| (TSet TInt) $Heap)) (= (ControlFlow 0 21) 20)) anon8_correct)))
(let ((anon6_correct  (=> (= |a2#0@0| (exists ((|x#4| T@U) ) (!  (and ($Is SetType |x#4| (TSet TInt)) (|Set#Subset| |s#0| |x#4|))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.158:20|
 :skolemid |551|
 :pattern ( (|Set#Subset| |s#0| |x#4|))
))) (and (=> (= (ControlFlow 0 23) 21) anon24_Then_correct) (=> (= (ControlFlow 0 23) 22) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (not (and ($Is SetType |x#5@0| (TSet TInt)) ($IsAlloc SetType |x#5@0| (TSet TInt) $Heap))) (= (ControlFlow 0 25) 23)) anon6_correct)))
(let ((anon23_Then_correct  (=> (and (and ($Is SetType |x#5@0| (TSet TInt)) ($IsAlloc SetType |x#5@0| (TSet TInt) $Heap)) (= (ControlFlow 0 24) 23)) anon6_correct)))
(let ((anon4_correct  (=> (= |a1#0@0| (exists ((|x#2| T@U) ) (!  (and ($Is SetType |x#2| (TSet TInt)) (|Set#Subset| |x#2| |s#0|))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.157:20|
 :skolemid |550|
 :pattern ( (|Set#Subset| |x#2| |s#0|))
))) (and (=> (= (ControlFlow 0 26) 24) anon23_Then_correct) (=> (= (ControlFlow 0 26) 25) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (not (and ($Is SetType |x#3@0| (TSet TInt)) ($IsAlloc SetType |x#3@0| (TSet TInt) $Heap))) (= (ControlFlow 0 28) 26)) anon4_correct)))
(let ((anon22_Then_correct  (=> (and (and ($Is SetType |x#3@0| (TSet TInt)) ($IsAlloc SetType |x#3@0| (TSet TInt) $Heap)) (= (ControlFlow 0 27) 26)) anon4_correct)))
(let ((anon2_correct  (=> (= |a0#0@0| (exists ((|x#0| T@U) ) (!  (and ($Is SetType |x#0| (TSet TInt)) (and (|Set#Subset| |x#0| |s#0|) (not (|Set#Subset| |s#0| |x#0|))))
 :qid |sometermsdonotlooklikethetriggerstheymatchdfy.156:20|
 :skolemid |549|
 :pattern ( (|Set#Subset| |x#0| |s#0|))
))) (and (=> (= (ControlFlow 0 29) 27) anon22_Then_correct) (=> (= (ControlFlow 0 29) 28) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not (and ($Is SetType |x#1@0| (TSet TInt)) ($IsAlloc SetType |x#1@0| (TSet TInt) $Heap))) (= (ControlFlow 0 31) 29)) anon2_correct)))
(let ((anon21_Then_correct  (=> (and (and ($Is SetType |x#1@0| (TSet TInt)) ($IsAlloc SetType |x#1@0| (TSet TInt) $Heap)) (= (ControlFlow 0 30) 29)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 32) 30) anon21_Then_correct) (=> (= (ControlFlow 0 32) 31) anon21_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is SetType |s#0| (TSet TInt)) ($IsAlloc SetType |s#0| (TSet TInt) $Heap)) (and ($Is MultiSetType |ms#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |ms#0| (TMultiSet TInt) $Heap))) (and (and ($Is SeqType |q#0| (TSeq TInt)) ($IsAlloc SeqType |q#0| (TSeq TInt) $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 33) 32)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
