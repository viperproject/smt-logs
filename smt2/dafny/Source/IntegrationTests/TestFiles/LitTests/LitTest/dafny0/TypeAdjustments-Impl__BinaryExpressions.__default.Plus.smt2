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
(declare-fun TagISet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun TagIMap () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |ISet#Union| (T@U T@U) T@U)
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
(declare-fun TISet (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Merge| (T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Empty| () T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |ISet#Disjoint| (T@U T@U) Bool)
(declare-fun |ISet#Difference| (T@U T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun IMapType () T@T)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |ISet#Empty| () T@U)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |IMap#Merge| (T@U T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
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
(assert (distinct TagSet TagISet TagMultiSet TagSeq TagMap TagIMap alloc Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 tytagFamily$nat |tytagFamily$_tuple#2|)
)
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| a y) (|Set#IsMember| (|Set#Union| a b) y))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |750|
 :pattern ( (|Set#Union| a b) (|Set#IsMember| a y))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@0) (|Set#IsMember| (|Set#Union| a@@0 b@@0) y@@0))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |751|
 :pattern ( (|Set#Union| a@@0 b@@0) (|Set#IsMember| b@@0 y@@0))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@1 b@@1) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |760|
 :pattern ( (|Set#Difference| a@@1 b@@1) (|Set#IsMember| b@@1 y@@1))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1084|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor MultiSetType) 4))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |668|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2) (|Set#Union| a@@2 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |754|
 :pattern ( (|Set#Union| (|Set#Union| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|ISet#Union| (|ISet#Union| a@@3 b@@3) b@@3) (|ISet#Union| a@@3 b@@3))
 :qid |DafnyPreludebpl.847:15|
 :skolemid |780|
 :pattern ( (|ISet#Union| (|ISet#Union| a@@3 b@@3) b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@4 b@@4) o)  (and (|Set#IsMember| a@@4 o) (not (|Set#IsMember| b@@4 o))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |759|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@4 b@@4) o))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1072|
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |734|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |735|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v@@0 (TISet t0@@1)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@0 bx)) ($IsBox bx t0@@1))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |664|
 :pattern ( (MapType0Select BoxType boolType v@@0 bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |665|
 :pattern ( ($Is (MapType0Type BoxType boolType) v@@0 (TISet t0@@1)))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |633|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |631|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |1073|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1065|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |642|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@5 b@@5) (forall ((o@@1 T@U) ) (!  (or (not (|Set#IsMember| a@@5 o@@1)) (not (|Set#IsMember| b@@5 o@@1)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |767|
 :pattern ( (|Set#IsMember| a@@5 o@@1))
 :pattern ( (|Set#IsMember| b@@5 o@@1))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |768|
 :pattern ( (|Set#Disjoint| a@@5 b@@5))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1066|
)))
 :qid |unknown.0:0|
 :skolemid |1067|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 9))
(assert (forall ((v@@1 T@U) (t0@@2 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@2)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@0) ($IsBox bx@@0 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |662|
 :pattern ( (|Set#IsMember| v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |663|
 :pattern ( ($Is SetType v@@1 (TSet t0@@2)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |960|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v@@2 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t h@@0) ($IsAlloc T@@1 v@@2 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |655|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |727|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@1 h@@2) ($IsAlloc T@@2 v@@3 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |726|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@3 t@@1 h@@2))
)))
(assert (forall ((m@@1 T@U) (n T@U) (u T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Merge| m@@1 n)) u) (and (=> (not (|Set#IsMember| (|Map#Domain| n) u)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@1 n)) u) (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u))) (=> (|Set#IsMember| (|Map#Domain| n) u) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@1 n)) u) (MapType0Select BoxType BoxType (|Map#Elements| n) u)))))
 :qid |DafnyPreludebpl.1479:15|
 :skolemid |910|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Merge| m@@1 n)) u))
)))
(assert (forall ((u@@0 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u@@0)))
 :qid |DafnyPreludebpl.1571:15|
 :skolemid |931|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u@@0))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@6 b@@6)) (+ (|MultiSet#Card| a@@6) (|MultiSet#Card| b@@6)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |814|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@6 b@@6)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |842|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |IMap#Empty|) (exists ((k@@2 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@2) k@@2))
 :qid |DafnyPreludebpl.1525:32|
 :skolemid |919|
)))
 :qid |DafnyPreludebpl.1523:15|
 :skolemid |920|
 :pattern ( (|IMap#Domain| m@@2))
)))
(assert (forall ((m@@3 T@U) ) (!  (or (= m@@3 |IMap#Empty|) (exists ((v@@4 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@3) v@@4))
 :qid |DafnyPreludebpl.1528:32|
 :skolemid |921|
)))
 :qid |DafnyPreludebpl.1526:15|
 :skolemid |922|
 :pattern ( (|IMap#Values| m@@3))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@7 b@@7) o@@2)  (or (|Set#IsMember| a@@7 o@@2) (|Set#IsMember| b@@7 o@@2)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |749|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@7 b@@7) o@@2))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@8 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@8 b@@8) a@@8) b@@8) (= (|Set#Difference| (|Set#Union| a@@8 b@@8) b@@8) a@@8)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |752|
 :pattern ( (|Set#Union| a@@8 b@@8))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (!  (=> (|ISet#Disjoint| a@@9 b@@9) (and (= (|ISet#Difference| (|ISet#Union| a@@9 b@@9) a@@9) b@@9) (= (|ISet#Difference| (|ISet#Union| a@@9 b@@9) b@@9) a@@9)))
 :qid |DafnyPreludebpl.838:15|
 :skolemid |778|
 :pattern ( (|ISet#Union| a@@9 b@@9))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) (o@@3 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@10 b@@10) o@@3))  (and (U_2_bool (MapType0Select BoxType boolType a@@10 o@@3)) (not (U_2_bool (MapType0Select BoxType boolType b@@10 o@@3)))))
 :qid |DafnyPreludebpl.858:15|
 :skolemid |784|
 :pattern ( (MapType0Select BoxType boolType (|ISet#Difference| a@@10 b@@10) o@@3))
)))
(assert (forall ((v@@5 T@U) (t0@@3 T@U) (h@@3 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@5 (TISet t0@@3) h@@3) (forall ((bx@@3 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@5 bx@@3)) ($IsAllocBox bx@@3 t0@@3 h@@3))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |685|
 :pattern ( (MapType0Select BoxType boolType v@@5 bx@@3))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |686|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@5 (TISet t0@@3) h@@3))
)))
(assert (forall ((m@@4 T@U) (item T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@4) item))  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@4) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1564:15|
 :skolemid |930|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Items| m@@4) item))
)))
(assert (forall ((m@@5 T@U) (v@@6 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@5) v@@6)) (exists ((u@@1 T@U) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@5) u@@1)) (= v@@6 (MapType0Select BoxType BoxType (|IMap#Elements| m@@5) u@@1)))
 :qid |DafnyPreludebpl.1552:10|
 :skolemid |928|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| m@@5) u@@1))
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| m@@5) u@@1))
)))
 :qid |DafnyPreludebpl.1550:15|
 :skolemid |929|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Values| m@@5) v@@6))
)))
(assert (= (Ctor IMapType) 10))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) (t1@@0 T@U) (h@@4 T@U) ) (! (= ($IsAlloc IMapType v@@7 (TIMap t0@@4 t1@@0) h@@4) (forall ((bx@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@7) bx@@4)) (and ($IsAllocBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@7) bx@@4) t1@@0 h@@4) ($IsAllocBox bx@@4 t0@@4 h@@4)))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |693|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@7) bx@@4))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@7) bx@@4))
)))
 :qid |DafnyPreludebpl.324:15|
 :skolemid |694|
 :pattern ( ($IsAlloc IMapType v@@7 (TIMap t0@@4 t1@@0) h@@4))
)))
(assert (forall ((v@@8 T@U) (t0@@5 T@U) ) (! (= ($Is MultiSetType v@@8 (TMultiSet t0@@5)) (forall ((bx@@5 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@8 bx@@5)) ($IsBox bx@@5 t0@@5))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |666|
 :pattern ( (|MultiSet#Multiplicity| v@@8 bx@@5))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |667|
 :pattern ( ($Is MultiSetType v@@8 (TMultiSet t0@@5)))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) (y@@2 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType a@@11 y@@2)) (U_2_bool (MapType0Select BoxType boolType (|ISet#Union| a@@11 b@@11) y@@2)))
 :qid |DafnyPreludebpl.834:15|
 :skolemid |776|
 :pattern ( (|ISet#Union| a@@11 b@@11) (MapType0Select BoxType boolType a@@11 y@@2))
)))
(assert (forall ((a@@12 T@U) (b@@12 T@U) (y@@3 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType b@@12 y@@3)) (U_2_bool (MapType0Select BoxType boolType (|ISet#Union| a@@12 b@@12) y@@3)))
 :qid |DafnyPreludebpl.836:15|
 :skolemid |777|
 :pattern ( (|ISet#Union| a@@12 b@@12) (MapType0Select BoxType boolType b@@12 y@@3))
)))
(assert (forall ((a@@13 T@U) (b@@13 T@U) (c T@U) ) (!  (=> (or (not (= a@@13 c)) (not true)) (=> (and ($HeapSucc a@@13 b@@13) ($HeapSucc b@@13 c)) ($HeapSucc a@@13 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |733|
 :pattern ( ($HeapSucc a@@13 b@@13) ($HeapSucc b@@13 c))
)))
(assert (forall ((a@@14 T@U) (b@@14 T@U) (y@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType b@@14 y@@4)) (not (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@14 b@@14) y@@4))))
 :qid |DafnyPreludebpl.860:15|
 :skolemid |785|
 :pattern ( (|ISet#Difference| a@@14 b@@14) (MapType0Select BoxType boolType b@@14 y@@4))
)))
(assert (forall ((m@@6 T@U) ) (! (= (= m@@6 |IMap#Empty|) (= (|IMap#Domain| m@@6) |ISet#Empty|))
 :qid |DafnyPreludebpl.1533:15|
 :skolemid |925|
 :pattern ( (|IMap#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (! (= (= m@@7 |IMap#Empty|) (= (|IMap#Values| m@@7) |ISet#Empty|))
 :qid |DafnyPreludebpl.1536:15|
 :skolemid |926|
 :pattern ( (|IMap#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (! (= (= m@@8 |IMap#Empty|) (= (|IMap#Items| m@@8) |ISet#Empty|))
 :qid |DafnyPreludebpl.1539:15|
 :skolemid |927|
 :pattern ( (|IMap#Items| m@@8))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |IMap#Empty|) (exists ((k@@3 T@U) (v@@9 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@9))))
 :qid |DafnyPreludebpl.1531:32|
 :skolemid |923|
)))
 :qid |DafnyPreludebpl.1529:15|
 :skolemid |924|
 :pattern ( (|IMap#Items| m@@9))
)))
(assert (forall ((v@@10 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@10) t@@2) ($Is T@@3 v@@10 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |654|
 :pattern ( ($IsBox ($Box T@@3 v@@10) t@@2))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@6 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@6)) (<= (|MultiSet#Multiplicity| ms bx@@6) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |799|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@6))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |800|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |801|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |837|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@11 T@U) (t0@@6 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SetType v@@11 (TSet t0@@6) h@@5) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@11 bx@@7) ($IsAllocBox bx@@7 t0@@6 h@@5))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |683|
 :pattern ( (|Set#IsMember| v@@11 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |684|
 :pattern ( ($IsAlloc SetType v@@11 (TSet t0@@6) h@@5))
)))
(assert (forall ((o@@4 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@4) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |803|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@4))
)))
(assert (forall ((t@@3 T@U) (u@@2 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@2)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |625|
 :pattern ( (TMap t@@3 u@@2))
)))
(assert (forall ((t@@4 T@U) (u@@3 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@3)) u@@3)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |626|
 :pattern ( (TMap t@@4 u@@3))
)))
(assert (forall ((t@@5 T@U) (u@@4 T@U) ) (! (= (Tag (TMap t@@5 u@@4)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |627|
 :pattern ( (TMap t@@5 u@@4))
)))
(assert (forall ((t@@6 T@U) (u@@5 T@U) ) (! (= (Inv0_TIMap (TIMap t@@6 u@@5)) t@@6)
 :qid |DafnyPreludebpl.62:15|
 :skolemid |628|
 :pattern ( (TIMap t@@6 u@@5))
)))
(assert (forall ((t@@7 T@U) (u@@6 T@U) ) (! (= (Inv1_TIMap (TIMap t@@7 u@@6)) u@@6)
 :qid |DafnyPreludebpl.63:15|
 :skolemid |629|
 :pattern ( (TIMap t@@7 u@@6))
)))
(assert (forall ((t@@8 T@U) (u@@7 T@U) ) (! (= (Tag (TIMap t@@8 u@@7)) TagIMap)
 :qid |DafnyPreludebpl.64:15|
 :skolemid |630|
 :pattern ( (TIMap t@@8 u@@7))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1064|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1069|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1070|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1079|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1081|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (= (Ctor SeqType) 11))
(assert (forall ((v@@12 T@U) (t0@@7 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SeqType v@@12 (TSeq t0@@7) h@@6) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@12))) ($IsAllocBox (|Seq#Index| v@@12 i) t0@@7 h@@6))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |689|
 :pattern ( (|Seq#Index| v@@12 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |690|
 :pattern ( ($IsAlloc SeqType v@@12 (TSeq t0@@7) h@@6))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TSet (TSet t@@9)) t@@9)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |617|
 :pattern ( (TSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TSet t@@10)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |618|
 :pattern ( (TSet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Inv0_TISet (TISet t@@11)) t@@11)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |619|
 :pattern ( (TISet t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Tag (TISet t@@12)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |620|
 :pattern ( (TISet t@@12))
)))
(assert (forall ((t@@13 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@13)) t@@13)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |621|
 :pattern ( (TMultiSet t@@13))
)))
(assert (forall ((t@@14 T@U) ) (! (= (Tag (TMultiSet t@@14)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |622|
 :pattern ( (TMultiSet t@@14))
)))
(assert (forall ((t@@15 T@U) ) (! (= (Inv0_TSeq (TSeq t@@15)) t@@15)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |623|
 :pattern ( (TSeq t@@15))
)))
(assert (forall ((t@@16 T@U) ) (! (= (Tag (TSeq t@@16)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |624|
 :pattern ( (TSeq t@@16))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |641|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (= (Ctor MapType) 12))
(assert (forall ((v@@13 T@U) (t0@@8 T@U) (t1@@1 T@U) (h@@7 T@U) ) (! (= ($IsAlloc MapType v@@13 (TMap t0@@8 t1@@1) h@@7) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@13) bx@@8) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@13) bx@@8) t1@@1 h@@7) ($IsAllocBox bx@@8 t0@@8 h@@7)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |691|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@13) bx@@8))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@13) bx@@8))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |692|
 :pattern ( ($IsAlloc MapType v@@13 (TMap t0@@8 t1@@1) h@@7))
)))
(assert (forall ((v@@14 T@U) (t0@@9 T@U) (t1@@2 T@U) ) (! (= ($Is IMapType v@@14 (TIMap t0@@9 t1@@2)) (forall ((bx@@9 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@14) bx@@9)) (and ($IsBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@14) bx@@9) t1@@2) ($IsBox bx@@9 t0@@9)))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |674|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@14) bx@@9))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@14) bx@@9))
)))
 :qid |DafnyPreludebpl.273:15|
 :skolemid |675|
 :pattern ( ($Is IMapType v@@14 (TIMap t0@@9 t1@@2)))
)))
(assert (forall ((m@@10 T@U) (n@@0 T@U) (u@@8 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| (|IMap#Merge| m@@10 n@@0)) u@@8)) (and (=> (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| n@@0) u@@8))) (= (MapType0Select BoxType BoxType (|IMap#Elements| (|IMap#Merge| m@@10 n@@0)) u@@8) (MapType0Select BoxType BoxType (|IMap#Elements| m@@10) u@@8))) (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| n@@0) u@@8)) (= (MapType0Select BoxType BoxType (|IMap#Elements| (|IMap#Merge| m@@10 n@@0)) u@@8) (MapType0Select BoxType BoxType (|IMap#Elements| n@@0) u@@8)))))
 :qid |DafnyPreludebpl.1618:15|
 :skolemid |942|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| (|IMap#Merge| m@@10 n@@0)) u@@8))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1080|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1082|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((a@@15 T@U) (b@@15 T@U) ) (! (= (|Set#Union| a@@15 (|Set#Union| a@@15 b@@15)) (|Set#Union| a@@15 b@@15))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |755|
 :pattern ( (|Set#Union| a@@15 (|Set#Union| a@@15 b@@15)))
)))
(assert (forall ((a@@16 T@U) (b@@16 T@U) ) (! (= (|ISet#Union| a@@16 (|ISet#Union| a@@16 b@@16)) (|ISet#Union| a@@16 b@@16))
 :qid |DafnyPreludebpl.849:15|
 :skolemid |781|
 :pattern ( (|ISet#Union| a@@16 (|ISet#Union| a@@16 b@@16)))
)))
(assert (forall ((s@@1 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@1) 0) (= s@@1 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@1) 0)) (not true)) (exists ((x@@6 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@1 x@@6))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |804|
 :pattern ( (|MultiSet#Multiplicity| s@@1 x@@6))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |805|
 :pattern ( (|MultiSet#Card| s@@1))
)))
(assert (forall ((u@@9 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@9))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |901|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@9))
)))
(assert (forall ((a@@17 T@U) (b@@17 T@U) (o@@5 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@17 b@@17) o@@5) (+ (|MultiSet#Multiplicity| a@@17 o@@5) (|MultiSet#Multiplicity| b@@17 o@@5)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |813|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@17 b@@17) o@@5))
)))
(assert (forall ((bx@@10 T@U) (s@@2 T@U) (t@@17 T@U) ) (!  (=> ($IsBox bx@@10 (TMap s@@2 t@@17)) (and (= ($Box MapType ($Unbox MapType bx@@10)) bx@@10) ($Is MapType ($Unbox MapType bx@@10) (TMap s@@2 t@@17))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |652|
 :pattern ( ($IsBox bx@@10 (TMap s@@2 t@@17)))
)))
(assert (forall ((bx@@11 T@U) (s@@3 T@U) (t@@18 T@U) ) (!  (=> ($IsBox bx@@11 (TIMap s@@3 t@@18)) (and (= ($Box IMapType ($Unbox IMapType bx@@11)) bx@@11) ($Is IMapType ($Unbox IMapType bx@@11) (TIMap s@@3 t@@18))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |653|
 :pattern ( ($IsBox bx@@11 (TIMap s@@3 t@@18)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1071|
 :pattern ( ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((o@@6 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o@@6)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |770|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o@@6))
)))
(assert  (and (forall ((t0@@10 T@T) (t1@@3 T@T) (t2 T@T) (val@@1 T@U) (m@@11 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@10 t1@@3 t2 (MapType1Store t0@@10 t1@@3 t2 m@@11 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@12 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@12 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@12 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@13 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@13 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@13 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8038|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1068|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@14 T@U) ) (!  (or (= m@@14 |Map#Empty|) (exists ((k@@4 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@14) k@@4)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |889|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |890|
 :pattern ( (|Map#Domain| m@@14))
)))
(assert (forall ((m@@15 T@U) ) (!  (or (= m@@15 |Map#Empty|) (exists ((v@@15 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@15) v@@15)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |891|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |892|
 :pattern ( (|Map#Values| m@@15))
)))
(assert (forall ((m@@16 T@U) (item@@0 T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@16) item@@0)  (and (|Set#IsMember| (|Map#Domain| m@@16) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@16) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item@@0)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |900|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@16) item@@0))
)))
(assert (forall ((m@@17 T@U) (v@@16 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@17) v@@16) (exists ((u@@10 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@17) u@@10) (= v@@16 (MapType0Select BoxType BoxType (|Map#Elements| m@@17) u@@10)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |898|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@17) u@@10))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@17) u@@10))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |899|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@17) v@@16))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |700|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@13 T@U) (t@@19 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@19)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@19))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |648|
 :pattern ( ($IsBox bx@@13 (TSet t@@19)))
)))
(assert (forall ((bx@@14 T@U) (t@@20 T@U) ) (!  (=> ($IsBox bx@@14 (TISet t@@20)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@14)) bx@@14) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@14) (TISet t@@20))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |649|
 :pattern ( ($IsBox bx@@14 (TISet t@@20)))
)))
(assert (forall ((bx@@15 T@U) (t@@21 T@U) ) (!  (=> ($IsBox bx@@15 (TMultiSet t@@21)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@15)) bx@@15) ($Is MultiSetType ($Unbox MultiSetType bx@@15) (TMultiSet t@@21))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |650|
 :pattern ( ($IsBox bx@@15 (TMultiSet t@@21)))
)))
(assert (forall ((bx@@16 T@U) (t@@22 T@U) ) (!  (=> ($IsBox bx@@16 (TSeq t@@22)) (and (= ($Box SeqType ($Unbox SeqType bx@@16)) bx@@16) ($Is SeqType ($Unbox SeqType bx@@16) (TSeq t@@22))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |651|
 :pattern ( ($IsBox bx@@16 (TSeq t@@22)))
)))
(assert (forall ((v@@17 T@U) (t0@@11 T@U) (t1@@4 T@U) ) (! (= ($Is MapType v@@17 (TMap t0@@11 t1@@4)) (forall ((bx@@17 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@17) bx@@17) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@17) bx@@17) t1@@4) ($IsBox bx@@17 t0@@11)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |671|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@17) bx@@17))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@17) bx@@17))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |672|
 :pattern ( ($Is MapType v@@17 (TMap t0@@11 t1@@4)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((a@@18 T@U) (b@@18 T@U) ) (! (= (|ISet#Disjoint| a@@18 b@@18) (forall ((o@@7 T@U) ) (!  (or (not (U_2_bool (MapType0Select BoxType boolType a@@18 o@@7))) (not (U_2_bool (MapType0Select BoxType boolType b@@18 o@@7))))
 :qid |DafnyPreludebpl.875:35|
 :skolemid |791|
 :pattern ( (MapType0Select BoxType boolType a@@18 o@@7))
 :pattern ( (MapType0Select BoxType boolType b@@18 o@@7))
)))
 :qid |DafnyPreludebpl.874:15|
 :skolemid |792|
 :pattern ( (|ISet#Disjoint| a@@18 b@@18))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |1074|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@1))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@1))
 :qid |unknown.0:0|
 :skolemid |1075|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@1))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |1076|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@2))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@2))
 :qid |unknown.0:0|
 :skolemid |1077|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@2))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n@@1 Int) ) (!  (and (=> (< n@@1 (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@1) (|Seq#Index| s0@@0 n@@1))) (=> (<= (|Seq#Length| s0@@0) n@@1) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@1) (|Seq#Index| s1@@0 (- n@@1 (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |843|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@1))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1078|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |634|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |632|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((m@@18 T@U) (n@@2 T@U) ) (! (= (|Map#Domain| (|Map#Merge| m@@18 n@@2)) (|Set#Union| (|Map#Domain| m@@18) (|Map#Domain| n@@2)))
 :qid |DafnyPreludebpl.1476:15|
 :skolemid |909|
 :pattern ( (|Map#Domain| (|Map#Merge| m@@18 n@@2)))
)))
(assert (forall ((m@@19 T@U) (n@@3 T@U) ) (! (= (|IMap#Domain| (|IMap#Merge| m@@19 n@@3)) (|ISet#Union| (|IMap#Domain| m@@19) (|IMap#Domain| n@@3)))
 :qid |DafnyPreludebpl.1615:15|
 :skolemid |941|
 :pattern ( (|IMap#Domain| (|IMap#Merge| m@@19 n@@3)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |838|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@18 T@U) (t0@@12 T@U) (h@@8 T@U) ) (! (= ($IsAlloc MultiSetType v@@18 (TMultiSet t0@@12) h@@8) (forall ((bx@@18 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@18 bx@@18)) ($IsAllocBox bx@@18 t0@@12 h@@8))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |687|
 :pattern ( (|MultiSet#Multiplicity| v@@18 bx@@18))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |688|
 :pattern ( ($IsAlloc MultiSetType v@@18 (TMultiSet t0@@12) h@@8))
)))
(assert (forall ((a@@19 T@U) (b@@19 T@U) (o@@8 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#Union| a@@19 b@@19) o@@8))  (or (U_2_bool (MapType0Select BoxType boolType a@@19 o@@8)) (U_2_bool (MapType0Select BoxType boolType b@@19 o@@8))))
 :qid |DafnyPreludebpl.832:15|
 :skolemid |775|
 :pattern ( (MapType0Select BoxType boolType (|ISet#Union| a@@19 b@@19) o@@8))
)))
(assert (forall ((v@@19 T@U) (t0@@13 T@U) ) (! (= ($Is SeqType v@@19 (TSeq t0@@13)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@19))) ($IsBox (|Seq#Index| v@@19 i@@0) t0@@13))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |669|
 :pattern ( (|Seq#Index| v@@19 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |670|
 :pattern ( ($Is SeqType v@@19 (TSeq t0@@13)))
)))
(assert (forall ((m@@20 T@U) ) (!  (or (= m@@20 |Map#Empty|) (exists ((k@@5 T@U) (v@@20 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@20) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@5 v@@20)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |893|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |894|
 :pattern ( (|Map#Items| m@@20))
)))
(assert (forall ((s@@5 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@1))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |883|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@1))))
)))
(assert (forall ((v@@21 T@U) (t0@@14 T@U) (t1@@5 T@U) ) (!  (=> ($Is MapType v@@21 (TMap t0@@14 t1@@5)) (and (and ($Is SetType (|Map#Domain| v@@21) (TSet t0@@14)) ($Is SetType (|Map#Values| v@@21) (TSet t1@@5))) ($Is SetType (|Map#Items| v@@21) (TSet (Tclass._System.Tuple2 t0@@14 t1@@5)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |673|
 :pattern ( ($Is MapType v@@21 (TMap t0@@14 t1@@5)))
)))
(assert (forall ((v@@22 T@U) (t0@@15 T@U) (t1@@6 T@U) ) (!  (=> ($Is IMapType v@@22 (TIMap t0@@15 t1@@6)) (and (and ($Is (MapType0Type BoxType boolType) (|IMap#Domain| v@@22) (TISet t0@@15)) ($Is (MapType0Type BoxType boolType) (|IMap#Values| v@@22) (TISet t1@@6))) ($Is (MapType0Type BoxType boolType) (|IMap#Items| v@@22) (TISet (Tclass._System.Tuple2 t0@@15 t1@@6)))))
 :qid |DafnyPreludebpl.281:15|
 :skolemid |676|
 :pattern ( ($Is IMapType v@@22 (TIMap t0@@15 t1@@6)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Impl$$BinaryExpressions.__default.Plus)
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
