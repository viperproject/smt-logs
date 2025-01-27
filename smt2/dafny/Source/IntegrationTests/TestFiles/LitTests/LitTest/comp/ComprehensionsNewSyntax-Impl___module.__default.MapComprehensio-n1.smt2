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
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
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
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.__default.FourMore (Int) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.__default.FourMore#canCall| (Int) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |lambda#3| (Int) T@U)
(declare-fun Div (Int Int) Int)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |lambda#5| () T@U)
(declare-fun |map$project$0#0#x#0| (Int) Int)
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
(assert (distinct TInt TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |tytagFamily$_tuple#2|)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |762|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#2| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Seq#Contains| |l#1| |$w#0|)))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |1202|
 :pattern ( (MapType0Select BoxType boolType (|lambda#2| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a T@U) (b T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a b t)) a)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |814|
 :pattern ( (|Map#Domain| (|Map#Glue| a b t)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)) b@@0)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |815|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |996|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |760|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |984|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|$w#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#4| |l#0@@0| |l#1@@0|) |$w#1|))  (and ($IsBox |$w#1| |l#0@@0|) (exists ((|a#0#0#0| Int) ) (!  (and (|Seq#Contains| |l#1@@0| ($Box intType (int_2_U |a#0#0#0|))) (= (U_2_int ($Unbox intType |$w#1|)) (_module.__default.FourMore |a#0#0#0|)))
 :qid |ComprehensionsNewSyntaxdfy.33:12|
 :skolemid |1027|
))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |1204|
 :pattern ( (MapType0Select BoxType boolType (|lambda#4| |l#0@@0| |l#1@@0|) |$w#1|))
)))
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |545|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |543|
 :pattern ( (Lit T x@@5))
)))
(assert (= (Ctor SeqType) 5))
(assert (forall ((s@@0 T@U) (bx T@U) (t@@1 T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t@@1)) ($IsBox bx t@@1)) ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t@@1)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |786|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t@@1)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0| Int) ) (!  (=> (or (|_module.__default.FourMore#canCall| |x#0|) (< 0 $FunctionContextHeight)) (= (_module.__default.FourMore |x#0|) (+ |x#0| 4)))
 :qid |ComprehensionsNewSyntaxdfy.14:19|
 :skolemid |1019|
 :pattern ( (_module.__default.FourMore |x#0|))
))))
(assert (= (Ctor MapType) 6))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 bx@@0) (and ($IsBox bx@@0 t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@1 bx@@0) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |816|
)) ($Is MapType (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |817|
 :pattern ( (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |985|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |977|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |554|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((m@@1 T@U) (bx@@1 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@1)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |681|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@1))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |978|
)))
 :qid |unknown.0:0|
 :skolemid |979|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@1)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@2) ($IsBox bx@@2 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |574|
 :pattern ( (|Set#IsMember| v@@0 bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |575|
 :pattern ( ($Is SetType v@@0 (TSet t0@@1)))
)))
(assert (forall ((s@@1 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@1)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |752|
 :pattern ( (|Seq#Build| s@@1 v@@1))
)))
(assert (forall ((|l#0@@1| Int) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#3| |l#0@@1|) |$w#0@@0|) ($Box intType (int_2_U (Div (U_2_int ($Unbox intType |$w#0@@0|)) |l#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |1203|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#3| |l#0@@1|) |$w#0@@0|))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@2 h) ($IsAlloc T@@1 v@@2 t@@2 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |567|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@2 h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@0| Int) ) (!  (=> (or (|_module.__default.FourMore#canCall| (LitInt |x#0@@0|)) (< 0 $FunctionContextHeight)) (= (_module.__default.FourMore (LitInt |x#0@@0|)) (LitInt (+ |x#0@@0| 4))))
 :qid |ComprehensionsNewSyntaxdfy.14:19|
 :weight 3
 :skolemid |1020|
 :pattern ( (_module.__default.FourMore (LitInt |x#0@@0|)))
))))
(assert (forall ((s@@2 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) (|Seq#Index| s@@2 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |753|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@3) i))
)))
(assert (forall ((s@@3 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| s@@3 x@@7) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@3))) (= (|Seq#Index| s@@3 i@@0) x@@7))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |758|
 :pattern ( (|Seq#Index| s@@3 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |759|
 :pattern ( (|Seq#Contains| s@@3 x@@7))
)))
(assert (forall ((x@@8 Int) (y Int) ) (! (= (Div x@@8 y) (div x@@8 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |867|
 :pattern ( (Div x@@8 y))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |555|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@4) t@@3) ($Is T@@2 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |566|
 :pattern ( ($IsBox ($Box T@@2 v@@4) t@@3))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |749|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@2) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@4) ($IsAllocBox bx@@4 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |595|
 :pattern ( (|Set#IsMember| v@@5 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |596|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@4 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@4 u)) t@@4)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |537|
 :pattern ( (TMap t@@4 u))
)))
(assert (forall ((t@@5 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@5 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |538|
 :pattern ( (TMap t@@5 u@@0))
)))
(assert (forall ((t@@6 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@6 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |539|
 :pattern ( (TMap t@@6 u@@1))
)))
(assert (forall ((|a#0#0#0@@0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0@@0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |976|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0@@0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |981|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |982|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((v@@6 T@U) (t0@@3 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@3) h@@1) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@1) t0@@3 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |601|
 :pattern ( (|Seq#Index| v@@6 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |602|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@3) h@@1))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSet (TSet t@@7)) t@@7)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |529|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSet t@@8)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |530|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TSeq (TSeq t@@9)) t@@9)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |535|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TSeq t@@10)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |536|
 :pattern ( (TSeq t@@10))
)))
(assert (forall ((x@@9 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |553|
 :pattern ( ($Box T@@3 x@@9))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) (t1@@1 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@7 (TMap t0@@4 t1@@1) h@@2) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@5) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@5) t1@@1 h@@2) ($IsAllocBox bx@@5 t0@@4 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |603|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@5))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@5))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |604|
 :pattern ( ($IsAlloc MapType v@@7 (TMap t0@@4 t1@@1) h@@2))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |813|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@6 T@U) (s@@5 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@6 (TMap s@@5 t@@11)) (and (= ($Box MapType ($Unbox MapType bx@@6)) bx@@6) ($Is MapType ($Unbox MapType bx@@6) (TMap s@@5 t@@11))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |564|
 :pattern ( ($IsBox bx@@6 (TMap s@@5 t@@11)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |983|
 :pattern ( ($IsBox bx@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@5 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@2 t2 (MapType1Store t0@@5 t1@@2 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 8)) (= (Ctor FieldType) 9)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 10)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1201|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@6 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@6 val@@4)) s@@6) (= (|Seq#Build_inv1| (|Seq#Build| s@@6 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |751|
 :pattern ( (|Seq#Build| s@@6 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |980|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |801|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |802|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@8 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@8)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |803|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |804|
 :pattern ( (|Map#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |812|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@9 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@9) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@9 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |810|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |811|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@9))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |612|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@8 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@12)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@12))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |560|
 :pattern ( ($IsBox bx@@8 (TSet t@@12)))
)))
(assert (forall ((bx@@9 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@9 (TSeq t@@13)) (and (= ($Box SeqType ($Unbox SeqType bx@@9)) bx@@9) ($Is SeqType ($Unbox SeqType bx@@9) (TSeq t@@13))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |563|
 :pattern ( ($IsBox bx@@9 (TSeq t@@13)))
)))
(assert (forall ((v@@10 T@U) (t0@@6 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@10 (TMap t0@@6 t1@@3)) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@10) bx@@10) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@10) t1@@3) ($IsBox bx@@10 t0@@6)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |583|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@10))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@10) bx@@10))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |584|
 :pattern ( ($Is MapType v@@10 (TMap t0@@6 t1@@3)))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
)))
(assert (forall ((|$w#1@@0| T@U) ) (! (= (MapType0Select BoxType BoxType |lambda#5| |$w#1@@0|) ($Box intType (int_2_U (|map$project$0#0#x#0| (U_2_int ($Unbox intType |$w#1@@0|))))))
 :qid |ComprehensionsNewSyntaxdfy.33:8|
 :skolemid |1205|
 :pattern ( (MapType0Select BoxType BoxType |lambda#5| |$w#1@@0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |546|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@11)) (Lit BoxType ($Box T@@4 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |544|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@11)))
)))
(assert (forall ((s@@7 T@U) ) (!  (=> (= (|Seq#Length| s@@7) 0) (= s@@7 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |750|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall ((h@@3 T@U) (v@@11 T@U) ) (! ($IsAlloc intType v@@11 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |589|
 :pattern ( ($IsAlloc intType v@@11 TInt h@@3))
)))
(assert (forall ((v@@12 T@U) (t0@@7 T@U) ) (! (= ($Is SeqType v@@12 (TSeq t0@@7)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@12))) ($IsBox (|Seq#Index| v@@12 i@@2) t0@@7))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |581|
 :pattern ( (|Seq#Index| v@@12 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |582|
 :pattern ( ($Is SeqType v@@12 (TSeq t0@@7)))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@13 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@13)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |805|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |806|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((s@@8 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@8))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@3))) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |795|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@3))))
)))
(assert (forall ((v@@14 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@14 (TMap t0@@8 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@14) (TSet t0@@8)) ($Is SetType (|Map#Values| v@@14) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@14) (TSet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |585|
 :pattern ( ($Is MapType v@@14 (TMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@15 T@U) ) (! ($Is intType v@@15 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |568|
 :pattern ( ($Is intType v@@15 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |x#2@0| () Int)
(declare-fun |x#prime#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |m#0@0| () T@U)
(declare-fun |x#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |m#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.MapComprehension)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon10_correct true))
(let ((anon16_Else_correct  (=> (and (not (and (|Seq#Contains| |s#0@0| ($Box intType (int_2_U |x#2@0|))) (|Seq#Contains| |s#0@0| ($Box intType (int_2_U |x#prime#0@0|))))) (= (ControlFlow 0 6) 3)) anon10_correct)))
(let ((anon16_Then_correct  (=> (and (|Seq#Contains| |s#0@0| ($Box intType (int_2_U |x#2@0|))) (|Seq#Contains| |s#0@0| ($Box intType (int_2_U |x#prime#0@0|)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (or (not (= (_module.__default.FourMore |x#2@0|) (_module.__default.FourMore |x#prime#0@0|))) (not true)) (= |x#2@0| |x#prime#0@0|))) (=> (or (or (not (= (_module.__default.FourMore |x#2@0|) (_module.__default.FourMore |x#prime#0@0|))) (not true)) (= |x#2@0| |x#prime#0@0|)) (=> (= (ControlFlow 0 4) 3) anon10_correct))))))
(let ((anon15_Else_correct  (=> (not (|Seq#Contains| |s#0@0| ($Box intType (int_2_U |x#2@0|)))) (and (=> (= (ControlFlow 0 8) 4) anon16_Then_correct) (=> (= (ControlFlow 0 8) 6) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (|Seq#Contains| |s#0@0| ($Box intType (int_2_U |x#2@0|))) (and (=> (= (ControlFlow 0 7) 4) anon16_Then_correct) (=> (= (ControlFlow 0 7) 6) anon16_Else_correct)))))
(let ((anon14_Else_correct  (=> (not (|Seq#Contains| |s#0@0| ($Box intType (int_2_U |x#2@0|)))) (and (=> (= (ControlFlow 0 10) 7) anon15_Then_correct) (=> (= (ControlFlow 0 10) 8) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (|Seq#Contains| |s#0@0| ($Box intType (int_2_U |x#2@0|))) (=> (and ($IsAlloc intType (int_2_U |x#2@0|) TInt $Heap) (|_module.__default.FourMore#canCall| |x#2@0|)) (and (=> (= (ControlFlow 0 9) 7) anon15_Then_correct) (=> (= (ControlFlow 0 9) 8) anon15_Else_correct))))))
(let ((anon13_Then_correct  (and (=> (= (ControlFlow 0 11) 9) anon14_Then_correct) (=> (= (ControlFlow 0 11) 10) anon14_Else_correct))))
(let ((anon13_Else_correct true))
(let ((anon3_correct  (=> (= |m#0@0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#2| TInt |s#0@0|)) (|lambda#3| (LitInt 2)) (TMap TInt TInt))) (and (=> (= (ControlFlow 0 12) 11) anon13_Then_correct) (=> (= (ControlFlow 0 12) 2) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (not (|Seq#Contains| |s#0@0| ($Box intType (int_2_U |x#0@0|)))) (= (ControlFlow 0 15) 12)) anon3_correct)))
(let ((anon12_Then_correct  (=> (|Seq#Contains| |s#0@0| ($Box intType (int_2_U |x#0@0|))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= (ControlFlow 0 13) 12) anon3_correct))))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 16) 13) anon12_Then_correct) (=> (= (ControlFlow 0 16) 15) anon12_Else_correct))))
(let ((anon11_Else_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |s#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 12)))) ($Box intType (int_2_U (LitInt 13)))) ($Box intType (int_2_U (LitInt 14))))))) (and (=> (= (ControlFlow 0 17) 16) anon11_Then_correct) (=> (= (ControlFlow 0 17) 1) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SeqType |s#0| (TSeq TInt)) ($IsAlloc SeqType |s#0| (TSeq TInt) $Heap)) true) (=> (and (and (and ($Is MapType |m#0| (TMap TInt TInt)) ($IsAlloc MapType |m#0| (TMap TInt TInt) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 18) 17))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
