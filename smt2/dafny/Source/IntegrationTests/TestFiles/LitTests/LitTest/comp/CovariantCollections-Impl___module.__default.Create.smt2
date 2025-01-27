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
(declare-fun TagSet () T@U)
(declare-fun TagMultiSet () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType () T@T)
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
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
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
(assert (distinct TagSet TagMultiSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |tytagFamily$_tuple#2|)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |772|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |773|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |771|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1111|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |768|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor MultiSetType) 4))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |695|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1099|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (= (Ctor SeqType) 5))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |901|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |1100|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1092|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |882|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |883|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |669|
 :pattern ( ($Unbox T x@@5))
)))
(assert (forall ((a@@2 T@U) (x@@6 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@6 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@2 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@2 x@@6) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |838|
 :pattern ( (|MultiSet#UnionOne| a@@2 x@@6) (|MultiSet#Multiplicity| a@@2 y@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1093|
)))
 :qid |unknown.0:0|
 :skolemid |1094|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 6))
(assert (forall ((v@@0 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |689|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |690|
 :pattern ( ($Is SetType v@@0 (TSet t0@@0)))
)))
(assert (forall ((a@@3 T@U) (x@@7 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@3 x@@7)) (+ (|MultiSet#Card| a@@3) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |839|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@3 x@@7)))
)))
(assert (forall ((s@@0 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@1)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |867|
 :pattern ( (|Seq#Build| s@@0 v@@1))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@2) t@@0 h) ($IsAlloc T@@0 v@@2 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |682|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@2) t@@0 h))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |868|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i))
)))
(assert  (and (and (forall ((t0@@1 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@1 t1 (MapType0Store t0@@1 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)))
(assert (forall ((m@@1 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@1 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@1) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |940|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@1) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |941|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |942|
 :pattern ( (|Map#Equal| m@@1 |m'|))
)))
(assert (forall ((a@@4 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@4 b) (= a@@4 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |793|
 :pattern ( (|Set#Equal| a@@4 b))
)))
(assert (forall ((a@@5 T@U) (b@@0 T@U) ) (!  (=> (|MultiSet#Equal| a@@5 b@@0) (= a@@5 b@@0))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |852|
 :pattern ( (|MultiSet#Equal| a@@5 b@@0))
)))
(assert (forall ((a@@6 T@U) (b@@1 T@U) ) (!  (=> (|Seq#Equal| a@@6 b@@1) (= a@@6 b@@1))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |884|
 :pattern ( (|Seq#Equal| a@@6 b@@1))
)))
(assert (forall ((m@@2 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@2 |m'@@0|) (= m@@2 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |943|
 :pattern ( (|Map#Equal| m@@2 |m'@@0|))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is MultiSetType v@@4 (TMultiSet t0@@2)) (forall ((bx@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@4 bx@@1)) ($IsBox bx@@1 t0@@2))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |693|
 :pattern ( (|MultiSet#Multiplicity| v@@4 bx@@1))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |694|
 :pattern ( ($Is MultiSetType v@@4 (TMultiSet t0@@2)))
)))
(assert (forall ((v@@5 T@U) (t@@1 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@5) t@@1) ($Is T@@1 v@@5 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |681|
 :pattern ( ($IsBox ($Box T@@1 v@@5) t@@1))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@2 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@2)) (<= (|MultiSet#Multiplicity| ms bx@@2) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |826|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@2))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |827|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|MultiSet#Card| s@@2))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |828|
 :pattern ( (|MultiSet#Card| s@@2))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |864|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@6 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@3) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@3) ($IsAllocBox bx@@3 t0@@3 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |710|
 :pattern ( (|Set#IsMember| v@@6 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |711|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@3) h@@0))
)))
(assert (forall ((o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |830|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1))
)))
(assert (forall ((t@@2 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@2 u@@1)) t@@2)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |652|
 :pattern ( (TMap t@@2 u@@1))
)))
(assert (forall ((t@@3 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@3 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |653|
 :pattern ( (TMap t@@3 u@@2))
)))
(assert (forall ((t@@4 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@4 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |654|
 :pattern ( (TMap t@@4 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1091|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1096|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1097|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1106|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1108|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((a@@7 T@U) (x@@8 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@7 x@@8) x@@8) (+ (|MultiSet#Multiplicity| a@@7 x@@8) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |836|
 :pattern ( (|MultiSet#UnionOne| a@@7 x@@8))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@7 (TSeq t0@@4) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@7))) ($IsAllocBox (|Seq#Index| v@@7 i@@0) t0@@4 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |716|
 :pattern ( (|Seq#Index| v@@7 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |717|
 :pattern ( ($IsAlloc SeqType v@@7 (TSeq t0@@4) h@@1))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSet (TSet t@@5)) t@@5)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |644|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSet t@@6)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |645|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@7)) t@@7)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |648|
 :pattern ( (TMultiSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TMultiSet t@@8)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |649|
 :pattern ( (TMultiSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TSeq (TSeq t@@9)) t@@9)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |650|
 :pattern ( (TSeq t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TSeq t@@10)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |651|
 :pattern ( (TSeq t@@10))
)))
(assert (forall ((x@@9 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |668|
 :pattern ( ($Box T@@2 x@@9))
)))
(assert (= (Ctor MapType) 8))
(assert (forall ((v@@8 T@U) (t0@@5 T@U) (t1@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@8 (TMap t0@@5 t1@@0) h@@2) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@8) bx@@4) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@4) t1@@0 h@@2) ($IsAllocBox bx@@4 t0@@5 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |718|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@8) bx@@4))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@8) bx@@4))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |719|
 :pattern ( ($IsAlloc MapType v@@8 (TMap t0@@5 t1@@0) h@@2))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1107|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((s@@4 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@4) 0) (= s@@4 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@4) 0)) (not true)) (exists ((x@@10 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@4 x@@10))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |831|
 :pattern ( (|MultiSet#Multiplicity| s@@4 x@@10))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |832|
 :pattern ( (|MultiSet#Card| s@@4))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |928|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((bx@@5 T@U) (s@@5 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@5 (TMap s@@5 t@@11)) (and (= ($Box MapType ($Unbox MapType bx@@5)) bx@@5) ($Is MapType ($Unbox MapType bx@@5) (TMap s@@5 t@@11))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |679|
 :pattern ( ($IsBox bx@@5 (TMap s@@5 t@@11)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1098|
 :pattern ( ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@6 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@3 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@1 t2 (MapType1Store t0@@6 t1@@1 t2 m@@3 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |1527|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@6 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@6 val@@4)) s@@6) (= (|Seq#Build_inv1| (|Seq#Build| s@@6 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |866|
 :pattern ( (|Seq#Build| s@@6 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1095|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |916|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |917|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@9 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@9)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |918|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |919|
 :pattern ( (|Map#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@8) item)  (and (|Set#IsMember| (|Map#Domain| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |927|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@8) item))
)))
(assert (forall ((m@@9 T@U) (v@@10 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@10) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@5) (= v@@10 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |925|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |926|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@10))
)))
(assert (forall ((m@@10 T@U) (u@@6 T@U) (|u'| T@U) (v@@11 T@U) ) (!  (and (=> (= |u'| u@@6) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@11)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@11)) |u'|) v@@11))) (=> (or (not (= |u'| u@@6)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@11)) |u'|) (|Set#IsMember| (|Map#Domain| m@@10) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@11)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@10) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |933|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@10 u@@6 v@@11)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@10 u@@6 v@@11)) |u'|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |727|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@7 T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@12)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@12))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |675|
 :pattern ( ($IsBox bx@@7 (TSet t@@12)))
)))
(assert (forall ((bx@@8 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@8 (TMultiSet t@@13)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@8)) bx@@8) ($Is MultiSetType ($Unbox MultiSetType bx@@8) (TMultiSet t@@13))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |677|
 :pattern ( ($IsBox bx@@8 (TMultiSet t@@13)))
)))
(assert (forall ((bx@@9 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@9 (TSeq t@@14)) (and (= ($Box SeqType ($Unbox SeqType bx@@9)) bx@@9) ($Is SeqType ($Unbox SeqType bx@@9) (TSeq t@@14))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |678|
 :pattern ( ($IsBox bx@@9 (TSeq t@@14)))
)))
(assert (forall ((v@@12 T@U) (t0@@7 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@12 (TMap t0@@7 t1@@2)) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@12) bx@@10) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@10) t1@@2) ($IsBox bx@@10 t0@@7)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |698|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@12) bx@@10))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@12) bx@@10))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |699|
 :pattern ( ($Is MapType v@@12 (TMap t0@@7 t1@@2)))
)))
(assert (forall ((a@@8 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@8 b@@2) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@8 o@@2) (|Set#IsMember| b@@2 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |791|
 :pattern ( (|Set#IsMember| a@@8 o@@2))
 :pattern ( (|Set#IsMember| b@@2 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |792|
 :pattern ( (|Set#Equal| a@@8 b@@2))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |1101|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
 :qid |unknown.0:0|
 :skolemid |1102|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |1103|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
 :qid |unknown.0:0|
 :skolemid |1104|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
)))
(assert (forall ((a@@9 T@U) (x@@11 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@9 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@11) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |837|
 :pattern ( (|MultiSet#UnionOne| a@@9 x@@11) (|MultiSet#Multiplicity| a@@9 y@@1))
)))
(assert (forall ((s@@7 T@U) ) (!  (=> (= (|Seq#Length| s@@7) 0) (= s@@7 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |865|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall ((a@@10 T@U) (x@@12 T@U) (o@@3 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@10 x@@12) o@@3))  (or (= o@@3 x@@12) (< 0 (|MultiSet#Multiplicity| a@@10 o@@3))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |835|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@10 x@@12) o@@3))
)))
(assert (forall ((a@@11 T@U) (b@@3 T@U) ) (! (= (|MultiSet#Equal| a@@11 b@@3) (forall ((o@@4 T@U) ) (! (= (|MultiSet#Multiplicity| a@@11 o@@4) (|MultiSet#Multiplicity| b@@3 o@@4))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |850|
 :pattern ( (|MultiSet#Multiplicity| a@@11 o@@4))
 :pattern ( (|MultiSet#Multiplicity| b@@3 o@@4))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |851|
 :pattern ( (|MultiSet#Equal| a@@11 b@@3))
)))
(assert (forall ((v@@13 T@U) (t0@@8 T@U) (h@@3 T@U) ) (! (= ($IsAlloc MultiSetType v@@13 (TMultiSet t0@@8) h@@3) (forall ((bx@@11 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@13 bx@@11)) ($IsAllocBox bx@@11 t0@@8 h@@3))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |714|
 :pattern ( (|MultiSet#Multiplicity| v@@13 bx@@11))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |715|
 :pattern ( ($IsAlloc MultiSetType v@@13 (TMultiSet t0@@8) h@@3))
)))
(assert (forall ((v@@14 T@U) (t0@@9 T@U) ) (! (= ($Is SeqType v@@14 (TSeq t0@@9)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@14))) ($IsBox (|Seq#Index| v@@14 i@@1) t0@@9))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |696|
 :pattern ( (|Seq#Index| v@@14 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |697|
 :pattern ( ($Is SeqType v@@14 (TSeq t0@@9)))
)))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@0 T@U) (v@@15 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@15)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |920|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |921|
 :pattern ( (|Map#Items| m@@11))
)))
(assert (forall ((s@@8 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@8))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@2))) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |910|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@2))))
)))
(assert (forall ((v@@16 T@U) (t0@@10 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@16 (TMap t0@@10 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@16) (TSet t0@@10)) ($Is SetType (|Map#Values| v@@16) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@16) (TSet (Tclass._System.Tuple2 t0@@10 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |700|
 :pattern ( ($Is MapType v@@16 (TMap t0@@10 t1@@3)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |$rhs#2@0| () T@U)
(declare-fun |p#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module._default.Create$T () T@U)
(declare-fun |m#0| () T@U)
(declare-fun |n#0| () T@U)
(declare-fun |o#0| () T@U)
(declare-fun |p#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Create)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (= |$rhs#0@0| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| |a#0|) |b#0|)) (= |$rhs#1@0| (|MultiSet#UnionOne| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0|) |b#0|))) (and (= |$rhs#2@0| (|Seq#Build| (|Seq#Build| |Seq#Empty| |a#0|) |b#0|)) (= |p#0@0| (|Map#Build| (|Map#Build| |Map#Empty| |a#0| |b#0|) |b#0| |a#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (|Set#Equal| |$rhs#0@0| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| |a#0|) |b#0|))) (=> (|Set#Equal| |$rhs#0@0| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| |a#0|) |b#0|)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (|MultiSet#Equal| |$rhs#1@0| (|MultiSet#UnionOne| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0|) |b#0|))) (=> (|MultiSet#Equal| |$rhs#1@0| (|MultiSet#UnionOne| (|MultiSet#UnionOne| |MultiSet#Empty| |a#0|) |b#0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Seq#Equal| |$rhs#2@0| (|Seq#Build| (|Seq#Build| |Seq#Empty| |a#0|) |b#0|))) (=> (|Seq#Equal| |$rhs#2@0| (|Seq#Build| (|Seq#Build| |Seq#Empty| |a#0|) |b#0|)) (=> (= (ControlFlow 0 2) (- 0 1)) (|Map#Equal| |p#0@0| (|Map#Build| (|Map#Build| |Map#Empty| |a#0| |b#0|) |b#0| |a#0|)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($IsBox |a#0| _module._default.Create$T) ($IsAllocBox |a#0| _module._default.Create$T $Heap))) (and (and ($IsBox |b#0| _module._default.Create$T) ($IsAllocBox |b#0| _module._default.Create$T $Heap)) (and ($Is SetType |m#0| (TSet _module._default.Create$T)) ($IsAlloc SetType |m#0| (TSet _module._default.Create$T) $Heap)))) (and (and (and ($Is MultiSetType |n#0| (TMultiSet _module._default.Create$T)) ($IsAlloc MultiSetType |n#0| (TMultiSet _module._default.Create$T) $Heap)) (and ($Is SeqType |o#0| (TSeq _module._default.Create$T)) ($IsAlloc SeqType |o#0| (TSeq _module._default.Create$T) $Heap))) (and (and ($Is MapType |p#0| (TMap _module._default.Create$T _module._default.Create$T)) ($IsAlloc MapType |p#0| (TMap _module._default.Create$T _module._default.Create$T) $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 6) 2))))) anon0_correct)))
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
