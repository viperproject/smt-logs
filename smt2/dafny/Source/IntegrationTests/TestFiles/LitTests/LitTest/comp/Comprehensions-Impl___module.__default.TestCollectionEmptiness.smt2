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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagMultiSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |tytagFamily$_tuple#2|)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2461|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2462|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2460|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |2800|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2457|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor MultiSetType) 4))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |2384|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |2788|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1 (MapType0Store t0@@0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (= (Ctor refType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2450|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2451|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2349|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2347|
 :pattern ( (Lit T x@@6))
)))
(assert (= (Ctor SeqType) 9))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |2590|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |2789|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |2781|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2358|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@2 T@U) (x@@8 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@8 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@2 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@2 x@@8) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |2527|
 :pattern ( (|MultiSet#UnionOne| a@@2 x@@8) (|MultiSet#Multiplicity| a@@2 y@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |2782|
)))
 :qid |unknown.0:0|
 :skolemid |2783|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 10))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2378|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2379|
 :pattern ( ($Is SetType v@@0 (TSet t0@@1)))
)))
(assert (forall ((a@@3 T@U) (x@@9 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@3 x@@9)) (+ (|MultiSet#Card| a@@3) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |2528|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@3 x@@9)))
)))
(assert (forall ((s@@0 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@1)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |2556|
 :pattern ( (|Seq#Build| s@@0 v@@1))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@0) ($IsAlloc T@@1 v@@2 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2371|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2443|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@3 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@2 h@@2) ($IsAlloc T@@2 v@@3 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2442|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@3 t@@2 h@@2))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@4 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@4) i) v@@4)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@4) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |2557|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@4) i))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is MultiSetType v@@5 (TMultiSet t0@@2)) (forall ((bx@@2 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@5 bx@@2)) ($IsBox bx@@2 t0@@2))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |2382|
 :pattern ( (|MultiSet#Multiplicity| v@@5 bx@@2))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |2383|
 :pattern ( ($Is MultiSetType v@@5 (TMultiSet t0@@2)))
)))
(assert (forall ((a@@4 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@4 c)) (not true)) (=> (and ($HeapSucc a@@4 b) ($HeapSucc b c)) ($HeapSucc a@@4 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2449|
 :pattern ( ($HeapSucc a@@4 b) ($HeapSucc b c))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2359|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@6 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@6) t@@3) ($Is T@@3 v@@6 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2370|
 :pattern ( ($IsBox ($Box T@@3 v@@6) t@@3))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@4 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@4)) (<= (|MultiSet#Multiplicity| ms bx@@4) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |2515|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@4))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |2516|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|MultiSet#Card| s@@2))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |2517|
 :pattern ( (|MultiSet#Card| s@@2))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2553|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@7 T@U) (t0@@3 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@3) h@@3) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@5) ($IsAllocBox bx@@5 t0@@3 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2399|
 :pattern ( (|Set#IsMember| v@@7 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2400|
 :pattern ( ($IsAlloc SetType v@@7 (TSet t0@@3) h@@3))
)))
(assert (forall ((o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@2) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |2519|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@2))
)))
(assert (forall ((t@@4 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@4 u)) t@@4)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |2341|
 :pattern ( (TMap t@@4 u))
)))
(assert (forall ((t@@5 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@5 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |2342|
 :pattern ( (TMap t@@5 u@@0))
)))
(assert (forall ((t@@6 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@6 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |2343|
 :pattern ( (TMap t@@6 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |2780|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |2785|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |2786|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |2795|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |2797|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((a@@5 T@U) (x@@10 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@10) x@@10) (+ (|MultiSet#Multiplicity| a@@5 x@@10) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |2525|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@10))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@8 (TSeq t0@@4) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@8))) ($IsAllocBox (|Seq#Index| v@@8 i@@0) t0@@4 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2405|
 :pattern ( (|Seq#Index| v@@8 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2406|
 :pattern ( ($IsAlloc SeqType v@@8 (TSeq t0@@4) h@@4))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSet (TSet t@@7)) t@@7)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2333|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSet t@@8)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2334|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@9)) t@@9)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |2337|
 :pattern ( (TMultiSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TMultiSet t@@10)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |2338|
 :pattern ( (TMultiSet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Inv0_TSeq (TSeq t@@11)) t@@11)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2339|
 :pattern ( (TSeq t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Tag (TSeq t@@12)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2340|
 :pattern ( (TSeq t@@12))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@11)) x@@11)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2357|
 :pattern ( ($Box T@@4 x@@11))
)))
(assert (= (Ctor MapType) 11))
(assert (forall ((v@@9 T@U) (t0@@5 T@U) (t1@@0 T@U) (h@@5 T@U) ) (! (= ($IsAlloc MapType v@@9 (TMap t0@@5 t1@@0) h@@5) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@6) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@6) t1@@0 h@@5) ($IsAllocBox bx@@6 t0@@5 h@@5)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |2407|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@6))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@6))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |2408|
 :pattern ( ($IsAlloc MapType v@@9 (TMap t0@@5 t1@@0) h@@5))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2796|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2798|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((s@@4 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@4) 0) (= s@@4 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@4) 0)) (not true)) (exists ((x@@12 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@4 x@@12))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |2520|
 :pattern ( (|MultiSet#Multiplicity| s@@4 x@@12))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |2521|
 :pattern ( (|MultiSet#Card| s@@4))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |2617|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@7 T@U) (s@@5 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@7 (TMap s@@5 t@@13)) (and (= ($Box MapType ($Unbox MapType bx@@7)) bx@@7) ($Is MapType ($Unbox MapType bx@@7) (TMap s@@5 t@@13))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |2368|
 :pattern ( ($IsBox bx@@7 (TMap s@@5 t@@13)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |2787|
 :pattern ( ($IsBox bx@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (forall ((t0@@6 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@1 t2 (MapType1Store t0@@6 t1@@1 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |3336|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@6 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@6 val@@4)) s@@6) (= (|Seq#Build_inv1| (|Seq#Build| s@@6 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |2555|
 :pattern ( (|Seq#Build| s@@6 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |2784|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |2605|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |2606|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@10 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@10)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |2607|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |2608|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |2616|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@11 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@11) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@11 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |2614|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |2615|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@11))
)))
(assert (forall ((m@@8 T@U) (u@@4 T@U) (|u'| T@U) (v@@12 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@12)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@12)) |u'|) v@@12))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@12)) |u'|) (|Set#IsMember| (|Map#Domain| m@@8) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@12)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@8) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |2622|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@12)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@12)) |u'|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2416|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@9 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@14)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@14))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2364|
 :pattern ( ($IsBox bx@@9 (TSet t@@14)))
)))
(assert (forall ((bx@@10 T@U) (t@@15 T@U) ) (!  (=> ($IsBox bx@@10 (TMultiSet t@@15)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@10)) bx@@10) ($Is MultiSetType ($Unbox MultiSetType bx@@10) (TMultiSet t@@15))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |2366|
 :pattern ( ($IsBox bx@@10 (TMultiSet t@@15)))
)))
(assert (forall ((bx@@11 T@U) (t@@16 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@16)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@16))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2367|
 :pattern ( ($IsBox bx@@11 (TSeq t@@16)))
)))
(assert (forall ((v@@13 T@U) (t0@@7 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@13 (TMap t0@@7 t1@@2)) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@13) bx@@12) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@13) bx@@12) t1@@2) ($IsBox bx@@12 t0@@7)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |2387|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@13) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@13) bx@@12))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |2388|
 :pattern ( ($Is MapType v@@13 (TMap t0@@7 t1@@2)))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |2790|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
 :qid |unknown.0:0|
 :skolemid |2791|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |2792|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
 :qid |unknown.0:0|
 :skolemid |2793|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |2794|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@13 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@13))) (Lit BoxType ($Box intType (int_2_U x@@13))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2350|
 :pattern ( ($Box intType (int_2_U (LitInt x@@13))))
)))
(assert (forall ((x@@14 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@14)) (Lit BoxType ($Box T@@5 x@@14)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2348|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@14)))
)))
(assert (forall ((a@@6 T@U) (x@@15 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@6 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@15) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |2526|
 :pattern ( (|MultiSet#UnionOne| a@@6 x@@15) (|MultiSet#Multiplicity| a@@6 y@@1))
)))
(assert (forall ((s@@7 T@U) ) (!  (=> (= (|Seq#Length| s@@7) 0) (= s@@7 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2554|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall ((a@@7 T@U) (x@@16 T@U) (o@@3 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@7 x@@16) o@@3))  (or (= o@@3 x@@16) (< 0 (|MultiSet#Multiplicity| a@@7 o@@3))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |2524|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@7 x@@16) o@@3))
)))
(assert (forall ((v@@14 T@U) (t0@@8 T@U) (h@@6 T@U) ) (! (= ($IsAlloc MultiSetType v@@14 (TMultiSet t0@@8) h@@6) (forall ((bx@@13 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@14 bx@@13)) ($IsAllocBox bx@@13 t0@@8 h@@6))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |2403|
 :pattern ( (|MultiSet#Multiplicity| v@@14 bx@@13))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |2404|
 :pattern ( ($IsAlloc MultiSetType v@@14 (TMultiSet t0@@8) h@@6))
)))
(assert (forall ((h@@7 T@U) (v@@15 T@U) ) (! ($IsAlloc intType v@@15 TInt h@@7)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2393|
 :pattern ( ($IsAlloc intType v@@15 TInt h@@7))
)))
(assert (forall ((v@@16 T@U) (t0@@9 T@U) ) (! (= ($Is SeqType v@@16 (TSeq t0@@9)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@16))) ($IsBox (|Seq#Index| v@@16 i@@1) t0@@9))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2385|
 :pattern ( (|Seq#Index| v@@16 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2386|
 :pattern ( ($Is SeqType v@@16 (TSeq t0@@9)))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@3 T@U) (v@@17 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@17)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |2609|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |2610|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((s@@8 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@8))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@2))) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |2599|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@8 i@@2))))
)))
(assert (forall ((v@@18 T@U) (t0@@10 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@18 (TMap t0@@10 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@18) (TSet t0@@10)) ($Is SetType (|Map#Values| v@@18) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@18) (TSet (Tclass._System.Tuple2 t0@@10 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |2389|
 :pattern ( ($Is MapType v@@18 (TMap t0@@10 t1@@3)))
)))
(assert (forall ((v@@19 T@U) ) (! ($Is intType v@@19 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2372|
 :pattern ( ($Is intType v@@19 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestCollectionEmptiness)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
