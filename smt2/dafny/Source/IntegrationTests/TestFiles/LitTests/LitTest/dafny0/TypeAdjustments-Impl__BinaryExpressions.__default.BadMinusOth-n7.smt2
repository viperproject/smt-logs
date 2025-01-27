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
(declare-fun TagISet () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun |IMap#Subtract| (T@U T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun FieldType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TISet (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Subtract| (T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |IMap#Empty| () T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |ISet#FromSet| (T@U) T@U)
(declare-fun |ISet#Difference| (T@U T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun IMapType () T@T)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun |ISet#Empty| () T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagISet TagMap TagIMap alloc Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 tytagFamily$nat |tytagFamily$_tuple#2|)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| b y) (not (|Set#IsMember| (|Set#Difference| a b) y)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |760|
 :pattern ( (|Set#Difference| a b) (|Set#IsMember| b y))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1084|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@0 b@@0) o)  (and (|Set#IsMember| a@@0 o) (not (|Set#IsMember| b@@0 o))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |759|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@0 b@@0) o))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1072|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 4)))
(assert (forall ((m@@1 T@U) (s T@U) (u T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| (|IMap#Subtract| m@@1 s)) u)) (= (MapType0Select BoxType BoxType (|IMap#Elements| (|IMap#Subtract| m@@1 s)) u) (MapType0Select BoxType BoxType (|IMap#Elements| m@@1) u)))
 :qid |DafnyPreludebpl.1628:15|
 :skolemid |944|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| (|IMap#Subtract| m@@1 s)) u))
)))
(assert  (and (and (and (and (= (Ctor FieldType) 5) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |664|
 :pattern ( (MapType0Select BoxType boolType v bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |665|
 :pattern ( ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)))
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
(assert (forall ((m@@2 T@U) (s@@0 T@U) (u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Subtract| m@@2 s@@0)) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Subtract| m@@2 s@@0)) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| m@@2) u@@0)))
 :qid |DafnyPreludebpl.1489:15|
 :skolemid |912|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Subtract| m@@2 s@@0)) u@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1066|
)))
 :qid |unknown.0:0|
 :skolemid |1067|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |662|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |663|
 :pattern ( ($Is SetType v@@0 (TSet t0@@1)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |960|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v@@1 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t h@@0) ($IsAlloc T@@1 v@@1 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |655|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |727|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@1 h@@2) ($IsAlloc T@@2 v@@2 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |726|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@1 h@@2))
)))
(assert (forall ((u@@1 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u@@1)))
 :qid |DafnyPreludebpl.1571:15|
 :skolemid |931|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u@@1))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((m@@3 T@U) ) (!  (or (= m@@3 |IMap#Empty|) (exists ((k@@2 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@3) k@@2))
 :qid |DafnyPreludebpl.1525:32|
 :skolemid |919|
)))
 :qid |DafnyPreludebpl.1523:15|
 :skolemid |920|
 :pattern ( (|IMap#Domain| m@@3))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |IMap#Empty|) (exists ((v@@3 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@3))
 :qid |DafnyPreludebpl.1528:32|
 :skolemid |921|
)))
 :qid |DafnyPreludebpl.1526:15|
 :skolemid |922|
 :pattern ( (|IMap#Values| m@@4))
)))
(assert (forall ((s@@1 T@U) (bx@@3 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#FromSet| s@@1) bx@@3)) (|Set#IsMember| s@@1 bx@@3))
 :qid |DafnyPreludebpl.819:15|
 :skolemid |771|
 :pattern ( (MapType0Select BoxType boolType (|ISet#FromSet| s@@1) bx@@3))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (o@@1 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@1 b@@1) o@@1))  (and (U_2_bool (MapType0Select BoxType boolType a@@1 o@@1)) (not (U_2_bool (MapType0Select BoxType boolType b@@1 o@@1)))))
 :qid |DafnyPreludebpl.858:15|
 :skolemid |784|
 :pattern ( (MapType0Select BoxType boolType (|ISet#Difference| a@@1 b@@1) o@@1))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@4 (TISet t0@@2) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@4 bx@@4)) ($IsAllocBox bx@@4 t0@@2 h@@3))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |685|
 :pattern ( (MapType0Select BoxType boolType v@@4 bx@@4))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |686|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@4 (TISet t0@@2) h@@3))
)))
(assert (forall ((m@@5 T@U) (item T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@5) item))  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@5) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select BoxType BoxType (|IMap#Elements| m@@5) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1564:15|
 :skolemid |930|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Items| m@@5) item))
)))
(assert (forall ((m@@6 T@U) (v@@5 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@6) v@@5)) (exists ((u@@2 T@U) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@6) u@@2)) (= v@@5 (MapType0Select BoxType BoxType (|IMap#Elements| m@@6) u@@2)))
 :qid |DafnyPreludebpl.1552:10|
 :skolemid |928|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| m@@6) u@@2))
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| m@@6) u@@2))
)))
 :qid |DafnyPreludebpl.1550:15|
 :skolemid |929|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Values| m@@6) v@@5))
)))
(assert (= (Ctor IMapType) 9))
(assert (forall ((v@@6 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@4 T@U) ) (! (= ($IsAlloc IMapType v@@6 (TIMap t0@@3 t1@@0) h@@4) (forall ((bx@@5 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@6) bx@@5)) (and ($IsAllocBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@6) bx@@5) t1@@0 h@@4) ($IsAllocBox bx@@5 t0@@3 h@@4)))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |693|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@6) bx@@5))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@6) bx@@5))
)))
 :qid |DafnyPreludebpl.324:15|
 :skolemid |694|
 :pattern ( ($IsAlloc IMapType v@@6 (TIMap t0@@3 t1@@0) h@@4))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |733|
 :pattern ( ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (y@@0 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType b@@3 y@@0)) (not (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@3 b@@3) y@@0))))
 :qid |DafnyPreludebpl.860:15|
 :skolemid |785|
 :pattern ( (|ISet#Difference| a@@3 b@@3) (MapType0Select BoxType boolType b@@3 y@@0))
)))
(assert (forall ((m@@7 T@U) ) (! (= (= m@@7 |IMap#Empty|) (= (|IMap#Domain| m@@7) |ISet#Empty|))
 :qid |DafnyPreludebpl.1533:15|
 :skolemid |925|
 :pattern ( (|IMap#Domain| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (! (= (= m@@8 |IMap#Empty|) (= (|IMap#Values| m@@8) |ISet#Empty|))
 :qid |DafnyPreludebpl.1536:15|
 :skolemid |926|
 :pattern ( (|IMap#Values| m@@8))
)))
(assert (forall ((m@@9 T@U) ) (! (= (= m@@9 |IMap#Empty|) (= (|IMap#Items| m@@9) |ISet#Empty|))
 :qid |DafnyPreludebpl.1539:15|
 :skolemid |927|
 :pattern ( (|IMap#Items| m@@9))
)))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |IMap#Empty|) (exists ((k@@3 T@U) (v@@7 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@10) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@7))))
 :qid |DafnyPreludebpl.1531:32|
 :skolemid |923|
)))
 :qid |DafnyPreludebpl.1529:15|
 :skolemid |924|
 :pattern ( (|IMap#Items| m@@10))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |643|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((v@@8 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@8) t@@2) ($Is T@@3 v@@8 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |654|
 :pattern ( ($IsBox ($Box T@@3 v@@8) t@@2))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |837|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@9 T@U) (t0@@4 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SetType v@@9 (TSet t0@@4) h@@5) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@9 bx@@7) ($IsAllocBox bx@@7 t0@@4 h@@5))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |683|
 :pattern ( (|Set#IsMember| v@@9 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |684|
 :pattern ( ($IsAlloc SetType v@@9 (TSet t0@@4) h@@5))
)))
(assert (forall ((t@@3 T@U) (u@@3 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@3)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |625|
 :pattern ( (TMap t@@3 u@@3))
)))
(assert (forall ((t@@4 T@U) (u@@4 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@4)) u@@4)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |626|
 :pattern ( (TMap t@@4 u@@4))
)))
(assert (forall ((t@@5 T@U) (u@@5 T@U) ) (! (= (Tag (TMap t@@5 u@@5)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |627|
 :pattern ( (TMap t@@5 u@@5))
)))
(assert (forall ((t@@6 T@U) (u@@6 T@U) ) (! (= (Inv0_TIMap (TIMap t@@6 u@@6)) t@@6)
 :qid |DafnyPreludebpl.62:15|
 :skolemid |628|
 :pattern ( (TIMap t@@6 u@@6))
)))
(assert (forall ((t@@7 T@U) (u@@7 T@U) ) (! (= (Inv1_TIMap (TIMap t@@7 u@@7)) u@@7)
 :qid |DafnyPreludebpl.63:15|
 :skolemid |629|
 :pattern ( (TIMap t@@7 u@@7))
)))
(assert (forall ((t@@8 T@U) (u@@8 T@U) ) (! (= (Tag (TIMap t@@8 u@@8)) TagIMap)
 :qid |DafnyPreludebpl.64:15|
 :skolemid |630|
 :pattern ( (TIMap t@@8 u@@8))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |641|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (= (Ctor MapType) 10))
(assert (forall ((v@@10 T@U) (t0@@5 T@U) (t1@@1 T@U) (h@@6 T@U) ) (! (= ($IsAlloc MapType v@@10 (TMap t0@@5 t1@@1) h@@6) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@10) bx@@8) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@8) t1@@1 h@@6) ($IsAllocBox bx@@8 t0@@5 h@@6)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |691|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@8))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@10) bx@@8))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |692|
 :pattern ( ($IsAlloc MapType v@@10 (TMap t0@@5 t1@@1) h@@6))
)))
(assert (forall ((v@@11 T@U) (t0@@6 T@U) (t1@@2 T@U) ) (! (= ($Is IMapType v@@11 (TIMap t0@@6 t1@@2)) (forall ((bx@@9 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@11) bx@@9)) (and ($IsBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@11) bx@@9) t1@@2) ($IsBox bx@@9 t0@@6)))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |674|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@11) bx@@9))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@11) bx@@9))
)))
 :qid |DafnyPreludebpl.273:15|
 :skolemid |675|
 :pattern ( ($Is IMapType v@@11 (TIMap t0@@6 t1@@2)))
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
(assert (forall ((u@@9 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@9))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |901|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@9))
)))
(assert (forall ((bx@@10 T@U) (s@@3 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@10 (TMap s@@3 t@@13)) (and (= ($Box MapType ($Unbox MapType bx@@10)) bx@@10) ($Is MapType ($Unbox MapType bx@@10) (TMap s@@3 t@@13))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |652|
 :pattern ( ($IsBox bx@@10 (TMap s@@3 t@@13)))
)))
(assert (forall ((bx@@11 T@U) (s@@4 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@11 (TIMap s@@4 t@@14)) (and (= ($Box IMapType ($Unbox IMapType bx@@11)) bx@@11) ($Is IMapType ($Unbox IMapType bx@@11) (TIMap s@@4 t@@14))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |653|
 :pattern ( ($IsBox bx@@11 (TIMap s@@4 t@@14)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@12)) bx@@12) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@12) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1071|
 :pattern ( ($IsBox bx@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((o@@2 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o@@2)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |770|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o@@2))
)))
(assert  (and (forall ((t0@@7 T@T) (t1@@3 T@T) (t2 T@T) (val@@1 T@U) (m@@11 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@7 t1@@3 t2 (MapType1Store t0@@7 t1@@3 t2 m@@11 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
(assert (forall ((m@@15 T@U) ) (!  (or (= m@@15 |Map#Empty|) (exists ((v@@12 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@15) v@@12)
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
(assert (forall ((m@@17 T@U) (v@@13 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@17) v@@13) (exists ((u@@10 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@17) u@@10) (= v@@13 (MapType0Select BoxType BoxType (|Map#Elements| m@@17) u@@10)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |898|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@17) u@@10))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@17) u@@10))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |899|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@17) v@@13))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |700|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@13 T@U) (t@@15 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@15)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@15))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |648|
 :pattern ( ($IsBox bx@@13 (TSet t@@15)))
)))
(assert (forall ((bx@@14 T@U) (t@@16 T@U) ) (!  (=> ($IsBox bx@@14 (TISet t@@16)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@14)) bx@@14) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@14) (TISet t@@16))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |649|
 :pattern ( ($IsBox bx@@14 (TISet t@@16)))
)))
(assert (forall ((m@@18 T@U) (s@@5 T@U) ) (! (= (|Map#Domain| (|Map#Subtract| m@@18 s@@5)) (|Set#Difference| (|Map#Domain| m@@18) s@@5))
 :qid |DafnyPreludebpl.1486:15|
 :skolemid |911|
 :pattern ( (|Map#Domain| (|Map#Subtract| m@@18 s@@5)))
)))
(assert (forall ((v@@14 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (! (= ($Is MapType v@@14 (TMap t0@@8 t1@@4)) (forall ((bx@@15 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@14) bx@@15) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@14) bx@@15) t1@@4) ($IsBox bx@@15 t0@@8)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |671|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@14) bx@@15))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@14) bx@@15))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |672|
 :pattern ( ($Is MapType v@@14 (TMap t0@@8 t1@@4)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
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
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1078|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |634|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |632|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((m@@19 T@U) (s@@6 T@U) ) (! (= (|IMap#Domain| (|IMap#Subtract| m@@19 s@@6)) (|ISet#Difference| (|IMap#Domain| m@@19) (|ISet#FromSet| s@@6)))
 :qid |DafnyPreludebpl.1625:15|
 :skolemid |943|
 :pattern ( (|IMap#Domain| (|IMap#Subtract| m@@19 s@@6)))
)))
(assert (forall ((s@@7 T@U) ) (!  (=> (= (|Seq#Length| s@@7) 0) (= s@@7 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |838|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall ((h@@7 T@U) (v@@15 T@U) ) (! ($IsAlloc intType v@@15 TInt h@@7)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |677|
 :pattern ( ($IsAlloc intType v@@15 TInt h@@7))
)))
(assert (forall ((m@@20 T@U) ) (!  (or (= m@@20 |Map#Empty|) (exists ((k@@5 T@U) (v@@16 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@20) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@5 v@@16)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |893|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |894|
 :pattern ( (|Map#Items| m@@20))
)))
(assert (forall ((v@@17 T@U) (t0@@9 T@U) (t1@@5 T@U) ) (!  (=> ($Is MapType v@@17 (TMap t0@@9 t1@@5)) (and (and ($Is SetType (|Map#Domain| v@@17) (TSet t0@@9)) ($Is SetType (|Map#Values| v@@17) (TSet t1@@5))) ($Is SetType (|Map#Items| v@@17) (TSet (Tclass._System.Tuple2 t0@@9 t1@@5)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |673|
 :pattern ( ($Is MapType v@@17 (TMap t0@@9 t1@@5)))
)))
(assert (forall ((v@@18 T@U) (t0@@10 T@U) (t1@@6 T@U) ) (!  (=> ($Is IMapType v@@18 (TIMap t0@@10 t1@@6)) (and (and ($Is (MapType0Type BoxType boolType) (|IMap#Domain| v@@18) (TISet t0@@10)) ($Is (MapType0Type BoxType boolType) (|IMap#Values| v@@18) (TISet t1@@6))) ($Is (MapType0Type BoxType boolType) (|IMap#Items| v@@18) (TISet (Tclass._System.Tuple2 t0@@10 t1@@6)))))
 :qid |DafnyPreludebpl.281:15|
 :skolemid |676|
 :pattern ( ($Is IMapType v@@18 (TIMap t0@@10 t1@@6)))
)))
(assert (forall ((v@@19 T@U) ) (! ($Is intType v@@19 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |656|
 :pattern ( ($Is intType v@@19 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |mf'#0_0@0| () T@U)
(declare-fun |mf1#0| () T@U)
(declare-fun |s0#0| () T@U)
(declare-fun |mi'#0_0@0| () T@U)
(declare-fun |mi1#0| () T@U)
(declare-fun |$rhs#0_0@0| () T@U)
(declare-fun |$rhs#0_1@0| () T@U)
(declare-fun |q##0_0@0| () T@U)
(declare-fun SeqType () T@T)
(declare-fun |mf'#1_0@0| () T@U)
(declare-fun |mf0#0| () T@U)
(declare-fun |s1#0| () T@U)
(declare-fun |mi'#1_0@0| () T@U)
(declare-fun |mi0#0| () T@U)
(declare-fun |$rhs#1_0@0| () T@U)
(declare-fun |$rhs#1_1@0| () T@U)
(declare-fun |q##1_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |mf'#0_0| () T@U)
(declare-fun |mi'#0_0| () T@U)
(declare-fun |$rhs#0_0| () T@U)
(declare-fun |$rhs#0_1| () T@U)
(declare-fun |mf'#1_0| () T@U)
(declare-fun |mi'#1_0| () T@U)
(declare-fun |$rhs#1_0| () T@U)
(declare-fun |$rhs#1_1| () T@U)
(declare-fun $FunctionContextHeight () Int)
(assert (= (Ctor SeqType) 11))
(set-info :boogie-vc-id Impl$$BinaryExpressions.__default.BadMinusOther)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon5_Else_correct  (=> (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 8) (- 0 7))) false)))
(let ((anon5_Then_correct  (=> (= |mf'#0_0@0| (|Map#Subtract| |mf1#0| |s0#0|)) (=> (and (and (= |mi'#0_0@0| (|IMap#Subtract| |mi1#0| |s0#0|)) ($Is MapType |$rhs#0_0@0| (TMap TInt TInt))) (and ($Is IMapType |$rhs#0_1@0| (TIMap TInt TInt)) (= |q##0_0@0| (Lit SeqType |Seq#Empty|)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($Is MapType |$rhs#0_0@0| (TMap Tclass._System.nat Tclass._System.nat))) (=> ($Is MapType |$rhs#0_0@0| (TMap Tclass._System.nat Tclass._System.nat)) (=> (= (ControlFlow 0 5) (- 0 4)) ($Is IMapType |$rhs#0_1@0| (TIMap Tclass._System.nat Tclass._System.nat)))))))))
(let ((anon4_Then_correct  (=> (= |mf'#1_0@0| (|Map#Subtract| |mf0#0| |s1#0|)) (=> (and (and (= |mi'#1_0@0| (|IMap#Subtract| |mi0#0| |s1#0|)) ($Is MapType |$rhs#1_0@0| (TMap TInt Tclass._System.nat))) (and ($Is IMapType |$rhs#1_1@0| (TIMap TInt Tclass._System.nat)) (= |q##1_0@0| (Lit SeqType |Seq#Empty|)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is MapType |$rhs#1_0@0| (TMap Tclass._System.nat Tclass._System.nat))) (=> ($Is MapType |$rhs#1_0@0| (TMap Tclass._System.nat Tclass._System.nat)) (=> (= (ControlFlow 0 2) (- 0 1)) ($Is IMapType |$rhs#1_1@0| (TIMap Tclass._System.nat Tclass._System.nat)))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 9) 2) anon4_Then_correct) (=> (= (ControlFlow 0 9) 5) anon5_Then_correct)) (=> (= (ControlFlow 0 9) 8) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SetType |s0#0| (TSet Tclass._System.nat)) ($IsAlloc SetType |s0#0| (TSet Tclass._System.nat) $Heap)) (and ($Is MapType |mf0#0| (TMap Tclass._System.nat Tclass._System.nat)) ($IsAlloc MapType |mf0#0| (TMap Tclass._System.nat Tclass._System.nat) $Heap))) (=> (and (and (and ($Is IMapType |mi0#0| (TIMap Tclass._System.nat Tclass._System.nat)) ($IsAlloc IMapType |mi0#0| (TIMap Tclass._System.nat Tclass._System.nat) $Heap)) (and ($Is SetType |s1#0| (TSet TInt)) ($IsAlloc SetType |s1#0| (TSet TInt) $Heap))) (and (and ($Is MapType |mf1#0| (TMap TInt TInt)) ($IsAlloc MapType |mf1#0| (TMap TInt TInt) $Heap)) (and ($Is IMapType |mi1#0| (TIMap TInt TInt)) ($IsAlloc IMapType |mi1#0| (TIMap TInt TInt) $Heap)))) (=> (and (and (and (and (and ($Is MapType |mf'#0_0| (TMap TInt TInt)) ($IsAlloc MapType |mf'#0_0| (TMap TInt TInt) $Heap)) true) (and (and ($Is IMapType |mi'#0_0| (TIMap TInt TInt)) ($IsAlloc IMapType |mi'#0_0| (TIMap TInt TInt) $Heap)) true)) (and (and (and ($Is MapType |$rhs#0_0| (TMap TInt TInt)) true) (and ($Is IMapType |$rhs#0_1| (TIMap TInt TInt)) true)) (and (and ($Is MapType |mf'#1_0| (TMap TInt Tclass._System.nat)) ($IsAlloc MapType |mf'#1_0| (TMap TInt Tclass._System.nat) $Heap)) true))) (and (and (and (and ($Is IMapType |mi'#1_0| (TIMap TInt Tclass._System.nat)) ($IsAlloc IMapType |mi'#1_0| (TIMap TInt Tclass._System.nat) $Heap)) true) (and ($Is MapType |$rhs#1_0| (TMap TInt Tclass._System.nat)) true)) (and (and ($Is IMapType |$rhs#1_1| (TIMap TInt Tclass._System.nat)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 9))))) anon0_correct))))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 6))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
