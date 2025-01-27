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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagISet () T@U)
(declare-fun TagIMap () T@U)
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
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#17| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun |IMap#Subtract| (T@U T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun TISet (T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |IMap#Empty| () T@U)
(declare-fun |ISet#Equal| (T@U T@U) Bool)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |ISet#FromSet| (T@U) T@U)
(declare-fun |ISet#Difference| (T@U T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun IMapType () T@T)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun |ISet#Empty| () T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |ISet#Subset| (T@U T@U) Bool)
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
(assert (distinct TInt TReal TagInt TagReal TagSet TagISet TagIMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |tytagFamily$_tuple#2|)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#17| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Set#IsMember| |l#1| |$y#0|)))
 :qid |unknown.0:0|
 :skolemid |917|
 :pattern ( (MapType0Select BoxType boolType (|lambda#17| |l#0| |l#1|) |$y#0|))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |472|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((m@@1 T@U) (s T@U) (u T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| (|IMap#Subtract| m@@1 s)) u)) (= (MapType0Select BoxType BoxType (|IMap#Elements| (|IMap#Subtract| m@@1 s)) u) (MapType0Select BoxType BoxType (|IMap#Elements| m@@1) u)))
 :qid |DafnyPreludebpl.1628:15|
 :skolemid |328|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| (|IMap#Subtract| m@@1 s)) u))
)))
(assert  (and (and (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 5)
 :qid |ctor:MapType0Type|
)) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |48|
 :pattern ( (MapType0Select BoxType boolType v bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |49|
 :pattern ( ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |454|
)))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 6))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@1)))
)))
(assert (forall ((v@@1 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@1) t h) ($IsAlloc T@@0 v@@1 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@1) t h))
)))
(assert (forall ((u@@0 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u@@0)))
 :qid |DafnyPreludebpl.1571:15|
 :skolemid |315|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u@@0))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|ISet#Equal| a b) (forall ((o T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType a o)) (U_2_bool (MapType0Select BoxType boolType b o)))
 :qid |DafnyPreludebpl.869:32|
 :skolemid |172|
 :pattern ( (MapType0Select BoxType boolType a o))
 :pattern ( (MapType0Select BoxType boolType b o))
)))
 :qid |DafnyPreludebpl.868:15|
 :skolemid |173|
 :pattern ( (|ISet#Equal| a b))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |IMap#Empty|) (exists ((k T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@2) k))
 :qid |DafnyPreludebpl.1525:32|
 :skolemid |303|
)))
 :qid |DafnyPreludebpl.1523:15|
 :skolemid |304|
 :pattern ( (|IMap#Domain| m@@2))
)))
(assert (forall ((m@@3 T@U) ) (!  (or (= m@@3 |IMap#Empty|) (exists ((v@@2 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@3) v@@2))
 :qid |DafnyPreludebpl.1528:32|
 :skolemid |305|
)))
 :qid |DafnyPreludebpl.1526:15|
 :skolemid |306|
 :pattern ( (|IMap#Values| m@@3))
)))
(assert (forall ((s@@0 T@U) (bx@@1 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#FromSet| s@@0) bx@@1)) (|Set#IsMember| s@@0 bx@@1))
 :qid |DafnyPreludebpl.819:15|
 :skolemid |155|
 :pattern ( (MapType0Select BoxType boolType (|ISet#FromSet| s@@0) bx@@1))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (o@@0 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@0 b@@0) o@@0))  (and (U_2_bool (MapType0Select BoxType boolType a@@0 o@@0)) (not (U_2_bool (MapType0Select BoxType boolType b@@0 o@@0)))))
 :qid |DafnyPreludebpl.858:15|
 :skolemid |168|
 :pattern ( (MapType0Select BoxType boolType (|ISet#Difference| a@@0 b@@0) o@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@3 (TISet t0@@2) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@3 bx@@2)) ($IsAllocBox bx@@2 t0@@2 h@@0))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |69|
 :pattern ( (MapType0Select BoxType boolType v@@3 bx@@2))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |70|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@3 (TISet t0@@2) h@@0))
)))
(assert (forall ((m@@4 T@U) (item T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@4) item))  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@4) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1564:15|
 :skolemid |314|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Items| m@@4) item))
)))
(assert (forall ((m@@5 T@U) (v@@4 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@5) v@@4)) (exists ((u@@1 T@U) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@5) u@@1)) (= v@@4 (MapType0Select BoxType BoxType (|IMap#Elements| m@@5) u@@1)))
 :qid |DafnyPreludebpl.1552:10|
 :skolemid |312|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| m@@5) u@@1))
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| m@@5) u@@1))
)))
 :qid |DafnyPreludebpl.1550:15|
 :skolemid |313|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Values| m@@5) v@@4))
)))
(assert (= (Ctor IMapType) 7))
(assert (forall ((v@@5 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc IMapType v@@5 (TIMap t0@@3 t1@@0) h@@1) (forall ((bx@@3 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@5) bx@@3)) (and ($IsAllocBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@5) bx@@3) t1@@0 h@@1) ($IsAllocBox bx@@3 t0@@3 h@@1)))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |77|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@5) bx@@3))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@5) bx@@3))
)))
 :qid |DafnyPreludebpl.324:15|
 :skolemid |78|
 :pattern ( ($IsAlloc IMapType v@@5 (TIMap t0@@3 t1@@0) h@@1))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|ISet#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.870:15|
 :skolemid |174|
 :pattern ( (|ISet#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (y T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType b@@2 y)) (not (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@2 b@@2) y))))
 :qid |DafnyPreludebpl.860:15|
 :skolemid |169|
 :pattern ( (|ISet#Difference| a@@2 b@@2) (MapType0Select BoxType boolType b@@2 y))
)))
(assert (forall ((m@@6 T@U) ) (! (= (= m@@6 |IMap#Empty|) (= (|IMap#Domain| m@@6) |ISet#Empty|))
 :qid |DafnyPreludebpl.1533:15|
 :skolemid |309|
 :pattern ( (|IMap#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (! (= (= m@@7 |IMap#Empty|) (= (|IMap#Values| m@@7) |ISet#Empty|))
 :qid |DafnyPreludebpl.1536:15|
 :skolemid |310|
 :pattern ( (|IMap#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (! (= (= m@@8 |IMap#Empty|) (= (|IMap#Items| m@@8) |ISet#Empty|))
 :qid |DafnyPreludebpl.1539:15|
 :skolemid |311|
 :pattern ( (|IMap#Items| m@@8))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |IMap#Empty|) (exists ((k@@0 T@U) (v@@6 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@6))))
 :qid |DafnyPreludebpl.1531:32|
 :skolemid |307|
)))
 :qid |DafnyPreludebpl.1529:15|
 :skolemid |308|
 :pattern ( (|IMap#Items| m@@9))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TReal) (and (= ($Box realType ($Unbox realType bx@@5)) bx@@5) ($Is realType ($Unbox realType bx@@5) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@5 TReal))
)))
(assert (forall ((v@@7 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@7) t@@0) ($Is T@@1 v@@7 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@7) t@@0))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SetType v@@8 (TSet t0@@4) h@@2) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@8 bx@@6) ($IsAllocBox bx@@6 t0@@4 h@@2))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@8 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@8 (TSet t0@@4) h@@2))
)))
(assert (forall ((t@@1 T@U) (u@@2 T@U) ) (! (= (Inv0_TIMap (TIMap t@@1 u@@2)) t@@1)
 :qid |DafnyPreludebpl.62:15|
 :skolemid |12|
 :pattern ( (TIMap t@@1 u@@2))
)))
(assert (forall ((t@@2 T@U) (u@@3 T@U) ) (! (= (Inv1_TIMap (TIMap t@@2 u@@3)) u@@3)
 :qid |DafnyPreludebpl.63:15|
 :skolemid |13|
 :pattern ( (TIMap t@@2 u@@3))
)))
(assert (forall ((t@@3 T@U) (u@@4 T@U) ) (! (= (Tag (TIMap t@@3 u@@4)) TagIMap)
 :qid |DafnyPreludebpl.64:15|
 :skolemid |14|
 :pattern ( (TIMap t@@3 u@@4))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |467|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |469|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TISet (TISet t@@6)) t@@6)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |3|
 :pattern ( (TISet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TISet t@@7)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |4|
 :pattern ( (TISet t@@7))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((v@@9 T@U) (t0@@5 T@U) (t1@@1 T@U) ) (! (= ($Is IMapType v@@9 (TIMap t0@@5 t1@@1)) (forall ((bx@@7 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@9) bx@@7)) (and ($IsBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@9) bx@@7) t1@@1) ($IsBox bx@@7 t0@@5)))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |58|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@9) bx@@7))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@9) bx@@7))
)))
 :qid |DafnyPreludebpl.273:15|
 :skolemid |59|
 :pattern ( ($Is IMapType v@@9 (TIMap t0@@5 t1@@1)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |470|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((bx@@8 T@U) (s@@1 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@8 (TIMap s@@1 t@@8)) (and (= ($Box IMapType ($Unbox IMapType bx@@8)) bx@@8) ($Is IMapType ($Unbox IMapType bx@@8) (TIMap s@@1 t@@8))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |37|
 :pattern ( ($IsBox bx@@8 (TIMap s@@1 t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@9)) bx@@9) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@9) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsBox bx@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((o@@1 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o@@1)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |154|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o@@1))
)))
(assert  (and (and (and (forall ((t0@@6 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@10 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@2 t2 (MapType1Store t0@@6 t1@@2 t2 m@@10 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@11 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@11 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@11 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@12 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@12 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@12 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 8)) (= (Ctor FieldType) 9)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |914|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@10 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@9)))
)))
(assert (forall ((bx@@11 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@11 (TISet t@@10)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@11)) bx@@11) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@11) (TISet t@@10))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |33|
 :pattern ( ($IsBox bx@@11 (TISet t@@10)))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|ISet#Subset| a@@3 b@@3) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType a@@3 o@@2)) (U_2_bool (MapType0Select BoxType boolType b@@3 o@@2)))
 :qid |DafnyPreludebpl.865:33|
 :skolemid |170|
 :pattern ( (MapType0Select BoxType boolType a@@3 o@@2))
 :pattern ( (MapType0Select BoxType boolType b@@3 o@@2))
)))
 :qid |DafnyPreludebpl.864:15|
 :skolemid |171|
 :pattern ( (|ISet#Subset| a@@3 b@@3))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
)))
(assert (forall ((m@@13 T@U) (s@@2 T@U) ) (! (= (|IMap#Domain| (|IMap#Subtract| m@@13 s@@2)) (|ISet#Difference| (|IMap#Domain| m@@13) (|ISet#FromSet| s@@2)))
 :qid |DafnyPreludebpl.1625:15|
 :skolemid |327|
 :pattern ( (|IMap#Domain| (|IMap#Subtract| m@@13 s@@2)))
)))
(assert (forall ((h@@3 T@U) (v@@10 T@U) ) (! ($IsAlloc intType v@@10 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@10 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@11 T@U) ) (! ($IsAlloc realType v@@11 TReal h@@4)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@11 TReal h@@4))
)))
(assert (forall ((v@@12 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> ($Is IMapType v@@12 (TIMap t0@@7 t1@@3)) (and (and ($Is (MapType0Type BoxType boolType) (|IMap#Domain| v@@12) (TISet t0@@7)) ($Is (MapType0Type BoxType boolType) (|IMap#Values| v@@12) (TISet t1@@3))) ($Is (MapType0Type BoxType boolType) (|IMap#Items| v@@12) (TISet (Tclass._System.Tuple2 t0@@7 t1@@3)))))
 :qid |DafnyPreludebpl.281:15|
 :skolemid |60|
 :pattern ( ($Is IMapType v@@12 (TIMap t0@@7 t1@@3)))
)))
(assert (forall ((v@@13 T@U) ) (! ($Is intType v@@13 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@13 TInt))
)))
(assert (forall ((v@@14 T@U) ) (! ($Is realType v@@14 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@14 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |m'#0@0| () T@U)
(declare-fun |m#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |u#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#0| () Int)
(declare-fun |$rhs#0@0| () Real)
(declare-fun |y#0| () Int)
(declare-fun |$rhs#1@0| () Real)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |m'#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.TestIMapSubtraction)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon3_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (|ISet#Equal| (|IMap#Domain| |m'#0@0|) (|ISet#Difference| (|IMap#Domain| |m#0|) (|lambda#17| TInt |s#0|))))))
(let ((anon5_Else_correct  (=> (and (not (|Set#IsMember| |s#0| ($Box intType (int_2_U |u#0@0|)))) (= (ControlFlow 0 5) 3)) anon3_correct)))
(let ((anon5_Then_correct  (=> (and (|Set#IsMember| |s#0| ($Box intType (int_2_U |u#0@0|))) (= (ControlFlow 0 4) 3)) anon3_correct)))
(let ((anon4_Then_correct  (and (=> (= (ControlFlow 0 6) 4) anon5_Then_correct) (=> (= (ControlFlow 0 6) 5) anon5_Else_correct))))
(let ((anon4_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 7) (- 0 14)) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m#0|) ($Box intType (int_2_U |x#0|))))) (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m#0|) ($Box intType (int_2_U |x#0|)))) (=> (= |$rhs#0@0| (U_2_real ($Unbox realType (MapType0Select BoxType BoxType (|IMap#Elements| |m#0|) ($Box intType (int_2_U |x#0|)))))) (and (=> (= (ControlFlow 0 7) (- 0 13)) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m#0|) ($Box intType (int_2_U |y#0|))))) (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m#0|) ($Box intType (int_2_U |y#0|)))) (=> (and (= |$rhs#1@0| (U_2_real ($Unbox realType (MapType0Select BoxType BoxType (|IMap#Elements| |m#0|) ($Box intType (int_2_U |y#0|)))))) (= |m'#0@0| (|IMap#Subtract| |m#0| |s#0|))) (and (=> (= (ControlFlow 0 7) (- 0 12)) (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m'#0@0|) ($Box intType (int_2_U |x#0|)))))) (=> (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m'#0@0|) ($Box intType (int_2_U |x#0|))))) (and (=> (= (ControlFlow 0 7) (- 0 11)) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m'#0@0|) ($Box intType (int_2_U |y#0|))))) (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m'#0@0|) ($Box intType (int_2_U |y#0|)))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m'#0@0|) ($Box intType (int_2_U |y#0|))))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (= (U_2_real ($Unbox realType (MapType0Select BoxType BoxType (|IMap#Elements| |m'#0@0|) ($Box intType (int_2_U |y#0|))))) |$rhs#1@0|)) (=> (= (U_2_real ($Unbox realType (MapType0Select BoxType BoxType (|IMap#Elements| |m'#0@0|) ($Box intType (int_2_U |y#0|))))) |$rhs#1@0|) (and (=> (= (ControlFlow 0 7) (- 0 8)) (|ISet#Subset| (|IMap#Domain| |m'#0@0|) (|IMap#Domain| |m#0|))) (=> (|ISet#Subset| (|IMap#Domain| |m'#0@0|) (|IMap#Domain| |m#0|)) (and (=> (= (ControlFlow 0 7) 6) anon4_Then_correct) (=> (= (ControlFlow 0 7) 1) anon4_Else_correct))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is IMapType |m#0| (TIMap TInt TReal)) ($IsAlloc IMapType |m#0| (TIMap TInt TReal) $Heap)) (and ($Is SetType |s#0| (TSet TInt)) ($IsAlloc SetType |s#0| (TSet TInt) $Heap))) (=> (and (and (and (and ($Is IMapType |m'#0| (TIMap TInt TReal)) ($IsAlloc IMapType |m'#0| (TIMap TInt TReal) $Heap)) true) (and (= 0 $FunctionContextHeight) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m#0|) ($Box intType (int_2_U |x#0|)))))) (and (and (|Set#IsMember| |s#0| ($Box intType (int_2_U |x#0|))) (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m#0|) ($Box intType (int_2_U |y#0|))))) (and (not (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#0|)))) (= (ControlFlow 0 15) 7)))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
