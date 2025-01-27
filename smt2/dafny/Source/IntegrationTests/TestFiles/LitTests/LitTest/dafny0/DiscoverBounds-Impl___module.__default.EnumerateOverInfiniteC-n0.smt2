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
(declare-fun TBool () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagISet () T@U)
(declare-fun TagMap () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#4| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Glue| (T@U T@U T@U) T@U)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.LessThanFour (Int) Bool)
(declare-fun |_module.__default.LessThanFour#canCall| (Int) Bool)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun TISet (T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |IMap#Empty| () T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |lambda#7| (T@U) T@U)
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
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet TagISet TagMap TagIMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |tytagFamily$_tuple#2|)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Set#IsMember| |l#1| |$y#0|)))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |575|
 :pattern ( (MapType0Select BoxType boolType (|lambda#4| |l#0| |l#1|) |$y#0|))
)))
(assert (forall ((a@@2 T@U) (b T@U) (t T@U) ) (! (= (|IMap#Domain| (|IMap#Glue| a@@2 b t)) a@@2)
 :qid |DafnyPreludebpl.1576:15|
 :skolemid |316|
 :pattern ( (|IMap#Domain| (|IMap#Glue| a@@2 b t)))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (t@@0 T@U) ) (! (= (|IMap#Elements| (|IMap#Glue| a@@3 b@@0 t@@0)) b@@0)
 :qid |DafnyPreludebpl.1579:15|
 :skolemid |317|
 :pattern ( (|IMap#Elements| (|IMap#Glue| a@@3 b@@0 t@@0)))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |476|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0| Int) ) (!  (=> (or (|_module.__default.LessThanFour#canCall| |x#0|) (< 0 $FunctionContextHeight)) (= (_module.__default.LessThanFour |x#0|) (< |x#0| 4)))
 :qid |DiscoverBoundsdfy.77:24|
 :skolemid |538|
 :pattern ( (_module.__default.LessThanFour |x#0|))
))))
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
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |458|
)))
 :qid |unknown.0:0|
 :skolemid |459|
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@0| Int) ) (!  (=> (or (|_module.__default.LessThanFour#canCall| (LitInt |x#0@@0|)) (< 0 $FunctionContextHeight)) (= (_module.__default.LessThanFour (LitInt |x#0@@0|)) (U_2_bool (Lit boolType (bool_2_U (< |x#0@@0| 4))))))
 :qid |DiscoverBoundsdfy.77:24|
 :weight 3
 :skolemid |539|
 :pattern ( (_module.__default.LessThanFour (LitInt |x#0@@0|)))
))))
(assert (forall ((v@@1 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@1 h) ($IsAlloc T@@1 v@@1 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@1 h))
)))
(assert (forall ((u T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u)))
 :qid |DafnyPreludebpl.1571:15|
 :skolemid |315|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u))
)))
(assert (forall ((m@@1 T@U) ) (!  (or (= m@@1 |IMap#Empty|) (exists ((k T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@1) k))
 :qid |DafnyPreludebpl.1525:32|
 :skolemid |303|
)))
 :qid |DafnyPreludebpl.1523:15|
 :skolemid |304|
 :pattern ( (|IMap#Domain| m@@1))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |IMap#Empty|) (exists ((v@@2 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@2) v@@2))
 :qid |DafnyPreludebpl.1528:32|
 :skolemid |305|
)))
 :qid |DafnyPreludebpl.1526:15|
 :skolemid |306|
 :pattern ( (|IMap#Values| m@@2))
)))
(assert (forall ((|l#0@@0| T@U) (|$w#0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#7| |l#0@@0|) |$w#0|) |l#0@@0|)
 :qid |DiscoverBoundsdfy.101:12|
 :skolemid |576|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#7| |l#0@@0|) |$w#0|))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@3 (TISet t0@@2) h@@0) (forall ((bx@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@3 bx@@1)) ($IsAllocBox bx@@1 t0@@2 h@@0))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |69|
 :pattern ( (MapType0Select BoxType boolType v@@3 bx@@1))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |70|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@3 (TISet t0@@2) h@@0))
)))
(assert (forall ((m@@3 T@U) (item T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select BoxType BoxType (|IMap#Elements| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1564:15|
 :skolemid |314|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))
)))
(assert (forall ((m@@4 T@U) (v@@4 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@4)) (exists ((u@@0 T@U) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0)) (= v@@4 (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0)))
 :qid |DafnyPreludebpl.1552:10|
 :skolemid |312|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0))
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0))
)))
 :qid |DafnyPreludebpl.1550:15|
 :skolemid |313|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@4))
)))
(assert (= (Ctor IMapType) 7))
(assert (forall ((v@@5 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc IMapType v@@5 (TIMap t0@@3 t1@@0) h@@1) (forall ((bx@@2 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@5) bx@@2)) (and ($IsAllocBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@5) bx@@2) t1@@0 h@@1) ($IsAllocBox bx@@2 t0@@3 h@@1)))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |77|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@5) bx@@2))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@5) bx@@2))
)))
 :qid |DafnyPreludebpl.324:15|
 :skolemid |78|
 :pattern ( ($IsAlloc IMapType v@@5 (TIMap t0@@3 t1@@0) h@@1))
)))
(assert (forall ((m@@5 T@U) ) (! (= (= m@@5 |IMap#Empty|) (= (|IMap#Domain| m@@5) |ISet#Empty|))
 :qid |DafnyPreludebpl.1533:15|
 :skolemid |309|
 :pattern ( (|IMap#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (! (= (= m@@6 |IMap#Empty|) (= (|IMap#Values| m@@6) |ISet#Empty|))
 :qid |DafnyPreludebpl.1536:15|
 :skolemid |310|
 :pattern ( (|IMap#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (! (= (= m@@7 |IMap#Empty|) (= (|IMap#Items| m@@7) |ISet#Empty|))
 :qid |DafnyPreludebpl.1539:15|
 :skolemid |311|
 :pattern ( (|IMap#Items| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |IMap#Empty|) (exists ((k@@0 T@U) (v@@6 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@6))))
 :qid |DafnyPreludebpl.1531:32|
 :skolemid |307|
)))
 :qid |DafnyPreludebpl.1529:15|
 :skolemid |308|
 :pattern ( (|IMap#Items| m@@8))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TBool) (and (= ($Box boolType ($Unbox boolType bx@@4)) bx@@4) ($Is boolType ($Unbox boolType bx@@4) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@4 TBool))
)))
(assert (forall ((v@@7 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@7) t@@2) ($Is T@@2 v@@7 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@7) t@@2))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SetType v@@8 (TSet t0@@4) h@@2) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@8 bx@@5) ($IsAllocBox bx@@5 t0@@4 h@@2))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@8 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@8 (TSet t0@@4) h@@2))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@1)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((t@@4 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@2))
)))
(assert (forall ((t@@5 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@5 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@3))
)))
(assert (forall ((t@@6 T@U) (u@@4 T@U) ) (! (= (Inv0_TIMap (TIMap t@@6 u@@4)) t@@6)
 :qid |DafnyPreludebpl.62:15|
 :skolemid |12|
 :pattern ( (TIMap t@@6 u@@4))
)))
(assert (forall ((t@@7 T@U) (u@@5 T@U) ) (! (= (Inv1_TIMap (TIMap t@@7 u@@5)) u@@5)
 :qid |DafnyPreludebpl.63:15|
 :skolemid |13|
 :pattern ( (TIMap t@@7 u@@5))
)))
(assert (forall ((t@@8 T@U) (u@@6 T@U) ) (! (= (Tag (TIMap t@@8 u@@6)) TagIMap)
 :qid |DafnyPreludebpl.64:15|
 :skolemid |14|
 :pattern ( (TIMap t@@8 u@@6))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |471|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |473|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Inv0_TSet (TSet t@@9)) t@@9)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Tag (TSet t@@10)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Inv0_TISet (TISet t@@11)) t@@11)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |3|
 :pattern ( (TISet t@@11))
)))
(assert (forall ((t@@12 T@U) ) (! (= (Tag (TISet t@@12)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |4|
 :pattern ( (TISet t@@12))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (= (Ctor MapType) 8))
(assert (forall ((v@@9 T@U) (t0@@5 T@U) (t1@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc MapType v@@9 (TMap t0@@5 t1@@1) h@@3) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@9) bx@@6) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@6) t1@@1 h@@3) ($IsAllocBox bx@@6 t0@@5 h@@3)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@9) bx@@6))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@9) bx@@6))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@9 (TMap t0@@5 t1@@1) h@@3))
)))
(assert (forall ((v@@10 T@U) (t0@@6 T@U) (t1@@2 T@U) ) (! (= ($Is IMapType v@@10 (TIMap t0@@6 t1@@2)) (forall ((bx@@7 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@10) bx@@7)) (and ($IsBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@10) bx@@7) t1@@2) ($IsBox bx@@7 t0@@6)))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |58|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@10) bx@@7))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@10) bx@@7))
)))
 :qid |DafnyPreludebpl.273:15|
 :skolemid |59|
 :pattern ( ($Is IMapType v@@10 (TIMap t0@@6 t1@@2)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |472|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |474|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((u@@7 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@7))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@7))
)))
(assert (forall ((bx@@8 T@U) (s T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@8 (TMap s t@@13)) (and (= ($Box MapType ($Unbox MapType bx@@8)) bx@@8) ($Is MapType ($Unbox MapType bx@@8) (TMap s t@@13))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@8 (TMap s t@@13)))
)))
(assert (forall ((bx@@9 T@U) (s@@0 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@9 (TIMap s@@0 t@@14)) (and (= ($Box IMapType ($Unbox IMapType bx@@9)) bx@@9) ($Is IMapType ($Unbox IMapType bx@@9) (TIMap s@@0 t@@14))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |37|
 :pattern ( ($IsBox bx@@9 (TIMap s@@0 t@@14)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((o@@1 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o@@1)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |154|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o@@1))
)))
(assert  (and (and (and (forall ((t0@@7 T@T) (t1@@3 T@T) (t2 T@T) (val@@1 T@U) (m@@9 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@7 t1@@3 t2 (MapType1Store t0@@7 t1@@3 t2 m@@9 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@10 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@10 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@10 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@11 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@11 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@11 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 9)) (= (Ctor FieldType) 10)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |574|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> (forall ((bx@@11 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType a@@4 bx@@11)) (and ($IsBox bx@@11 t0@@8) ($IsBox (MapType0Select BoxType BoxType b@@1 bx@@11) t1@@4)))
 :qid |DafnyPreludebpl.1585:11|
 :skolemid |318|
)) ($Is IMapType (|IMap#Glue| a@@4 b@@1 (TIMap t0@@8 t1@@4)) (TIMap t0@@8 t1@@4)))
 :qid |DafnyPreludebpl.1582:15|
 :skolemid |319|
 :pattern ( (|IMap#Glue| a@@4 b@@1 (TIMap t0@@8 t1@@4)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@12 T@U) ) (!  (or (= m@@12 |Map#Empty|) (exists ((k@@1 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@12) k@@1)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@12))
)))
(assert (forall ((m@@13 T@U) ) (!  (or (= m@@13 |Map#Empty|) (exists ((v@@11 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@13) v@@11)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@13))
)))
(assert (forall ((m@@14 T@U) (item@@0 T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@14) item@@0)  (and (|Set#IsMember| (|Map#Domain| m@@14) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@14) (_System.Tuple2._0 ($Unbox DatatypeTypeType item@@0))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item@@0)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@14) item@@0))
)))
(assert (forall ((m@@15 T@U) (v@@12 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@15) v@@12) (exists ((u@@8 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@15) u@@8) (= v@@12 (MapType0Select BoxType BoxType (|Map#Elements| m@@15) u@@8)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@15) u@@8))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@15) u@@8))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@15) v@@12))
)))
(assert (forall ((m@@16 T@U) (u@@9 T@U) (|u'| T@U) (v@@13 T@U) ) (!  (and (=> (= |u'| u@@9) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@16 u@@9 v@@13)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@16 u@@9 v@@13)) |u'|) v@@13))) (=> (or (not (= |u'| u@@9)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@16 u@@9 v@@13)) |u'|) (|Set#IsMember| (|Map#Domain| m@@16) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@16 u@@9 v@@13)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@16) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |290|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@16 u@@9 v@@13)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@16 u@@9 v@@13)) |u'|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@12 T@U) (t@@15 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@15)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@15))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@12 (TSet t@@15)))
)))
(assert (forall ((bx@@13 T@U) (t@@16 T@U) ) (!  (=> ($IsBox bx@@13 (TISet t@@16)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@13)) bx@@13) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@13) (TISet t@@16))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |33|
 :pattern ( ($IsBox bx@@13 (TISet t@@16)))
)))
(assert (forall ((v@@14 T@U) (t0@@9 T@U) (t1@@5 T@U) ) (! (= ($Is MapType v@@14 (TMap t0@@9 t1@@5)) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@14) bx@@14) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@14) bx@@14) t1@@5) ($IsBox bx@@14 t0@@9)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@14) bx@@14))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@14) bx@@14))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@14 (TMap t0@@9 t1@@5)))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
 :qid |unknown.0:0|
 :skolemid |467|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
 :qid |unknown.0:0|
 :skolemid |469|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |470|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((h@@4 T@U) (v@@15 T@U) ) (! ($IsAlloc intType v@@15 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@15 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@16 T@U) ) (! ($IsAlloc boolType v@@16 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@16 TBool h@@5))
)))
(assert (forall ((m@@17 T@U) ) (!  (or (= m@@17 |Map#Empty|) (exists ((k@@2 T@U) (v@@17 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@17) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@2 v@@17)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@17))
)))
(assert (forall ((v@@18 T@U) (t0@@10 T@U) (t1@@6 T@U) ) (!  (=> ($Is MapType v@@18 (TMap t0@@10 t1@@6)) (and (and ($Is SetType (|Map#Domain| v@@18) (TSet t0@@10)) ($Is SetType (|Map#Values| v@@18) (TSet t1@@6))) ($Is SetType (|Map#Items| v@@18) (TSet (Tclass._System.Tuple2 t0@@10 t1@@6)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@18 (TMap t0@@10 t1@@6)))
)))
(assert (forall ((v@@19 T@U) (t0@@11 T@U) (t1@@7 T@U) ) (!  (=> ($Is IMapType v@@19 (TIMap t0@@11 t1@@7)) (and (and ($Is (MapType0Type BoxType boolType) (|IMap#Domain| v@@19) (TISet t0@@11)) ($Is (MapType0Type BoxType boolType) (|IMap#Values| v@@19) (TISet t1@@7))) ($Is (MapType0Type BoxType boolType) (|IMap#Items| v@@19) (TISet (Tclass._System.Tuple2 t0@@11 t1@@7)))))
 :qid |DafnyPreludebpl.281:15|
 :skolemid |60|
 :pattern ( ($Is IMapType v@@19 (TIMap t0@@11 t1@@7)))
)))
(assert (forall ((v@@20 T@U) ) (! ($Is intType v@@20 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@20 TInt))
)))
(assert (forall ((v@@21 T@U) ) (! ($Is boolType v@@21 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@21 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |w#0@1| () T@U)
(declare-fun |z#1@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |m#0@0| () T@U)
(declare-fun |x#6@0| () Int)
(declare-fun |w#0@0| () T@U)
(declare-fun |x#4@0| () Int)
(declare-fun |u#0@1| () T@U)
(declare-fun |y#1@0| () Int)
(declare-fun |y#0@0| () Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |x#2@0| () Int)
(declare-fun |u#0@0| () T@U)
(declare-fun |x#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |u#0| () T@U)
(declare-fun |m#0| () T@U)
(declare-fun |w#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.EnumerateOverInfiniteCollections)
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
 (=> (= (ControlFlow 0 0) 34) (let ((anon19_correct  (=> (and (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |w#0@1|) ($Box intType (int_2_U |z#1@0|)))) (|_module.__default.LessThanFour#canCall| |z#1@0|)) (= (ControlFlow 0 8) (- 0 7))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |w#0@1|) ($Box intType (int_2_U 0)))) (_module.__default.LessThanFour (LitInt 0)))) (exists ((|$as#z0#0| Int) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |w#0@1|) ($Box intType (int_2_U |$as#z0#0|)))) (_module.__default.LessThanFour |$as#z0#0|))
 :qid |DiscoverBoundsdfy.105:7|
 :skolemid |544|
))))))
(let ((anon32_Else_correct  (=> (and (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |w#0@1|) ($Box intType (int_2_U |z#1@0|))))) (= (ControlFlow 0 10) 8)) anon19_correct)))
(let ((anon32_Then_correct  (=> (and (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |w#0@1|) ($Box intType (int_2_U |z#1@0|)))) ($IsAlloc intType (int_2_U |z#1@0|) TInt $Heap)) (and (|_module.__default.LessThanFour#canCall| |z#1@0|) (= (ControlFlow 0 9) 8))) anon19_correct)))
(let ((anon31_Then_correct  (and (=> (= (ControlFlow 0 11) 9) anon32_Then_correct) (=> (= (ControlFlow 0 11) 10) anon32_Else_correct))))
(let ((anon31_Else_correct true))
(let ((anon16_correct  (=> (= |w#0@1| (|IMap#Glue| (|lambda#4| TInt (|Map#Domain| |m#0@0|)) (|lambda#7| ($Box boolType (Lit boolType (bool_2_U true)))) (TIMap TInt TBool))) (and (=> (= (ControlFlow 0 12) 11) anon31_Then_correct) (=> (= (ControlFlow 0 12) 6) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| |m#0@0|) ($Box intType (int_2_U |x#6@0|)))) (= (ControlFlow 0 14) 12)) anon16_correct)))
(let ((anon30_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |m#0@0|) ($Box intType (int_2_U |x#6@0|))) (= (ControlFlow 0 13) 12)) anon16_correct)))
(let ((anon29_Then_correct  (and (=> (= (ControlFlow 0 15) 13) anon30_Then_correct) (=> (= (ControlFlow 0 15) 14) anon30_Else_correct))))
(let ((anon29_Else_correct true))
(let ((anon13_correct  (=> (= |w#0@0| (|IMap#Glue| (|lambda#4| TInt (|Map#Domain| |m#0@0|)) (|lambda#7| ($Box boolType (Lit boolType (bool_2_U true)))) (TIMap TInt TBool))) (and (=> (= (ControlFlow 0 16) 15) anon29_Then_correct) (=> (= (ControlFlow 0 16) 5) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (and (not (|Set#IsMember| (|Map#Domain| |m#0@0|) ($Box intType (int_2_U |x#4@0|)))) (= (ControlFlow 0 18) 16)) anon13_correct)))
(let ((anon28_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |m#0@0|) ($Box intType (int_2_U |x#4@0|))) (= (ControlFlow 0 17) 16)) anon13_correct)))
(let ((anon27_Then_correct  (and (=> (= (ControlFlow 0 19) 17) anon28_Then_correct) (=> (= (ControlFlow 0 19) 18) anon28_Else_correct))))
(let ((anon27_Else_correct true))
(let ((anon9_correct  (=> (=> (U_2_bool (MapType0Select BoxType boolType |u#0@1| ($Box intType (int_2_U |y#1@0|)))) (|_module.__default.LessThanFour#canCall| |y#1@0|)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (U_2_bool (MapType0Select BoxType boolType |u#0@1| ($Box intType (int_2_U (LitInt 0))))) (_module.__default.LessThanFour (LitInt 0)))) (exists ((|$as#y0#0| Int) ) (!  (and (U_2_bool (MapType0Select BoxType boolType |u#0@1| ($Box intType (int_2_U |$as#y0#0|)))) (_module.__default.LessThanFour |$as#y0#0|))
 :qid |DiscoverBoundsdfy.92:7|
 :skolemid |543|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (U_2_bool (MapType0Select BoxType boolType |u#0@1| ($Box intType (int_2_U (LitInt 0))))) (_module.__default.LessThanFour (LitInt 0)))) (exists ((|$as#y0#0@@0| Int) ) (!  (and (U_2_bool (MapType0Select BoxType boolType |u#0@1| ($Box intType (int_2_U |$as#y0#0@@0|)))) (_module.__default.LessThanFour |$as#y0#0@@0|))
 :qid |DiscoverBoundsdfy.92:7|
 :skolemid |543|
))) (=> (and (and (U_2_bool (MapType0Select BoxType boolType |u#0@1| ($Box intType (int_2_U |y#0@0|)))) (_module.__default.LessThanFour |y#0@0|)) (= |m#0@0| (Lit MapType (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 3))) ($Box boolType (Lit boolType (bool_2_U true)))) ($Box intType (int_2_U (LitInt 5))) ($Box boolType (Lit boolType (bool_2_U false))))))) (and (=> (= (ControlFlow 0 20) 19) anon27_Then_correct) (=> (= (ControlFlow 0 20) 4) anon27_Else_correct))))))))
(let ((anon26_Else_correct  (=> (and (not (U_2_bool (MapType0Select BoxType boolType |u#0@1| ($Box intType (int_2_U |y#1@0|))))) (= (ControlFlow 0 23) 20)) anon9_correct)))
(let ((anon26_Then_correct  (=> (and (and (U_2_bool (MapType0Select BoxType boolType |u#0@1| ($Box intType (int_2_U |y#1@0|)))) ($IsAlloc intType (int_2_U |y#1@0|) TInt $Heap)) (and (|_module.__default.LessThanFour#canCall| |y#1@0|) (= (ControlFlow 0 22) 20))) anon9_correct)))
(let ((anon25_Then_correct  (and (=> (= (ControlFlow 0 24) 22) anon26_Then_correct) (=> (= (ControlFlow 0 24) 23) anon26_Else_correct))))
(let ((anon25_Else_correct true))
(let ((anon6_correct  (=> (= |u#0@1| (|lambda#4| TInt |s#0@0|)) (and (=> (= (ControlFlow 0 25) 24) anon25_Then_correct) (=> (= (ControlFlow 0 25) 3) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (not (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |x#2@0|)))) (= (ControlFlow 0 27) 25)) anon6_correct)))
(let ((anon24_Then_correct  (=> (and (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |x#2@0|))) (= (ControlFlow 0 26) 25)) anon6_correct)))
(let ((anon23_Then_correct  (and (=> (= (ControlFlow 0 28) 26) anon24_Then_correct) (=> (= (ControlFlow 0 28) 27) anon24_Else_correct))))
(let ((anon23_Else_correct true))
(let ((anon3_correct  (=> (= |u#0@0| (|lambda#4| TInt |s#0@0|)) (and (=> (= (ControlFlow 0 29) 28) anon23_Then_correct) (=> (= (ControlFlow 0 29) 2) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (not (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |x#0@0|)))) (= (ControlFlow 0 31) 29)) anon3_correct)))
(let ((anon22_Then_correct  (=> (and (|Set#IsMember| |s#0@0| ($Box intType (int_2_U |x#0@0|))) (= (ControlFlow 0 30) 29)) anon3_correct)))
(let ((anon21_Then_correct  (and (=> (= (ControlFlow 0 32) 30) anon22_Then_correct) (=> (= (ControlFlow 0 32) 31) anon22_Else_correct))))
(let ((anon21_Else_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |s#0@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 5))))))) (and (=> (= (ControlFlow 0 33) 32) anon21_Then_correct) (=> (= (ControlFlow 0 33) 1) anon21_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SetType |s#0| (TSet TInt)) ($IsAlloc SetType |s#0| (TSet TInt) $Heap)) true) (=> (and (and (and (and ($Is (MapType0Type BoxType boolType) |u#0| (TISet TInt)) ($IsAlloc (MapType0Type BoxType boolType) |u#0| (TISet TInt) $Heap)) true) (and (and ($Is MapType |m#0| (TMap TInt TBool)) ($IsAlloc MapType |m#0| (TMap TInt TBool) $Heap)) true)) (and (and (and ($Is IMapType |w#0| (TIMap TInt TBool)) ($IsAlloc IMapType |w#0| (TIMap TInt TBool) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 34) 33)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
