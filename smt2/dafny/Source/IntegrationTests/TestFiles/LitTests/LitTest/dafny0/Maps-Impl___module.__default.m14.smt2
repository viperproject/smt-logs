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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#17| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.union (T@U T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |_module.__default.union#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |_module.__default.domain#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun _module.__default.domain (T@U T@U T@U) T@U)
(declare-fun |lambda#25| (T@U T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |lambda#35| (Int) T@U)
(declare-fun |lambda#23| () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |tytagFamily$_tuple#2|)
)
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
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
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
(assert (forall ((a@@4 T@U) (b@@1 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@4 b@@1 t)) a@@4)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |286|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@4 b@@1 t)))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@5 b@@2 t@@0)) b@@2)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |287|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@5 b@@2 t@@0)))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@3 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@6 b@@3) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@6 b@@3) (|Set#IsMember| b@@3 y@@2))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |472|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor MapType) 5))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.union$U T@U) (_module._default.union$V T@U) (|m#0| T@U) (|m'#0| T@U) ) (!  (=> (or (|_module.__default.union#canCall| _module._default.union$U _module._default.union$V (Lit MapType |m#0|) (Lit MapType |m'#0|)) (and (< 1 $FunctionContextHeight) (and (and ($Is MapType |m#0| (TMap _module._default.union$U _module._default.union$V)) ($Is MapType |m'#0| (TMap _module._default.union$U _module._default.union$V))) (|Set#Disjoint| (|Map#Domain| (Lit MapType |m#0|)) (|Map#Domain| (Lit MapType |m'#0|)))))) (and (and (|_module.__default.domain#canCall| _module._default.union$U _module._default.union$V (Lit MapType |m#0|)) (|_module.__default.domain#canCall| _module._default.union$U _module._default.union$V (Lit MapType |m'#0|))) (= (_module.__default.union _module._default.union$U _module._default.union$V (Lit MapType |m#0|) (Lit MapType |m'#0|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#17| _module._default.union$U (|Set#Union| (_module.__default.domain _module._default.union$U _module._default.union$V (Lit MapType |m#0|)) (_module.__default.domain _module._default.union$U _module._default.union$V (Lit MapType |m'#0|))))) (|lambda#25| (|Map#Domain| |m#0|) (|Map#Elements| (Lit MapType |m#0|)) (|Map#Elements| (Lit MapType |m'#0|))) (TMap _module._default.union$U _module._default.union$V)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |623|
 :pattern ( (_module.__default.union _module._default.union$U _module._default.union$V (Lit MapType |m#0|) (Lit MapType |m'#0|)))
))))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@7 b@@4) b@@4) (|Set#Union| a@@7 b@@4))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@7 b@@4) b@@4))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@1)  (and (|Set#IsMember| a@@8 o@@1) (not (|Set#IsMember| b@@5 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@8 b@@5) o@@1))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.union$U@@0 T@U) (_module._default.union$V@@0 T@U) (|m#0@@0| T@U) (|m'#0@@0| T@U) ) (!  (=> (and (or (|_module.__default.union#canCall| _module._default.union$U@@0 _module._default.union$V@@0 |m#0@@0| |m'#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and ($Is MapType |m#0@@0| (TMap _module._default.union$U@@0 _module._default.union$V@@0)) ($IsAlloc MapType |m#0@@0| (TMap _module._default.union$U@@0 _module._default.union$V@@0) $Heap)) (and ($Is MapType |m'#0@@0| (TMap _module._default.union$U@@0 _module._default.union$V@@0)) ($IsAlloc MapType |m'#0@@0| (TMap _module._default.union$U@@0 _module._default.union$V@@0) $Heap))) (|Set#Disjoint| (|Map#Domain| |m#0@@0|) (|Map#Domain| |m'#0@@0|))))) ($IsGoodHeap $Heap)) ($IsAlloc MapType (_module.__default.union _module._default.union$U@@0 _module._default.union$V@@0 |m#0@@0| |m'#0@@0|) (TMap _module._default.union$U@@0 _module._default.union$V@@0) $Heap))
 :qid |Mapsdfy.169:16|
 :skolemid |620|
 :pattern ( ($IsAlloc MapType (_module.__default.union _module._default.union$U@@0 _module._default.union$V@@0 |m#0@@0| |m'#0@@0|) (TMap _module._default.union$U@@0 _module._default.union$V@@0) $Heap))
))))
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
(assert (forall ((a@@9 T@U) (b@@6 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@9 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@6 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@9 b@@6 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@9 b@@6 (TMap t0@@0 t1@@0)))
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
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Disjoint| a@@10 b@@7) (forall ((o@@2 T@U) ) (!  (or (not (|Set#IsMember| a@@10 o@@2)) (not (|Set#IsMember| b@@7 o@@2)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@10 o@@2))
 :pattern ( (|Set#IsMember| b@@7 o@@2))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@10 b@@7))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
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
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert (forall ((|l#0@@0| Int) (|$w#1| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#35| |l#0@@0|) |$w#1|) ($Box intType (int_2_U (+ |l#0@@0| (U_2_int ($Unbox intType |$w#1|))))))
 :qid |unknown.0:0|
 :skolemid |920|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#35| |l#0@@0|) |$w#1|))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.domain$U T@U) (_module._default.domain$V T@U) (|m#0@@1| T@U) ) (!  (=> (or (|_module.__default.domain#canCall| _module._default.domain$U _module._default.domain$V |m#0@@1|) (and (< 0 $FunctionContextHeight) ($Is MapType |m#0@@1| (TMap _module._default.domain$U _module._default.domain$V)))) (= (_module.__default.domain _module._default.domain$U _module._default.domain$V |m#0@@1|) (|Set#FromBoogieMap| (|lambda#17| _module._default.domain$U (|Map#Domain| |m#0@@1|)))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (_module.__default.domain _module._default.domain$U _module._default.domain$V |m#0@@1|))
))))
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|$w#0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#25| |l#0@@1| |l#1@@0| |l#2|) |$w#0|) (ite (|Set#IsMember| |l#0@@1| |$w#0|) (MapType0Select BoxType BoxType |l#1@@0| |$w#0|) (MapType0Select BoxType BoxType |l#2| |$w#0|)))
 :qid |Mapsdfy.177:50|
 :skolemid |919|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#25| |l#0@@1| |l#1@@0| |l#2|) |$w#0|))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) (o@@3 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@11 b@@8) o@@3)  (or (|Set#IsMember| a@@11 o@@3) (|Set#IsMember| b@@8 o@@3)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@11 b@@8) o@@3))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Set#Disjoint| a@@12 b@@9) (and (= (|Set#Difference| (|Set#Union| a@@12 b@@9) a@@12) b@@9) (= (|Set#Difference| (|Set#Union| a@@12 b@@9) b@@9) a@@12)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@12 b@@9))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.domain$U@@0 T@U) (_module._default.domain$V@@0 T@U) (|m#0@@2| T@U) ) (!  (=> (or (|_module.__default.domain#canCall| _module._default.domain$U@@0 _module._default.domain$V@@0 (Lit MapType |m#0@@2|)) (and (< 0 $FunctionContextHeight) ($Is MapType |m#0@@2| (TMap _module._default.domain$U@@0 _module._default.domain$V@@0)))) (= (_module.__default.domain _module._default.domain$U@@0 _module._default.domain$V@@0 (Lit MapType |m#0@@2|)) (|Set#FromBoogieMap| (|lambda#17| _module._default.domain$U@@0 (|Map#Domain| |m#0@@2|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |605|
 :pattern ( (_module.__default.domain _module._default.domain$U@@0 _module._default.domain$V@@0 (Lit MapType |m#0@@2|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.domain$U@@1 T@U) (_module._default.domain$V@@1 T@U) (|m#0@@3| T@U) ) (!  (=> (or (|_module.__default.domain#canCall| _module._default.domain$U@@1 _module._default.domain$V@@1 |m#0@@3|) (and (< 0 $FunctionContextHeight) ($Is MapType |m#0@@3| (TMap _module._default.domain$U@@1 _module._default.domain$V@@1)))) (and (and (forall ((|i#0| T@U) ) (!  (=> ($IsBox |i#0| _module._default.domain$U@@1) (=> (|Set#IsMember| (_module.__default.domain _module._default.domain$U@@1 _module._default.domain$V@@1 |m#0@@3|) |i#0|) (|Set#IsMember| (|Map#Domain| |m#0@@3|) |i#0|)))
 :qid |Mapsdfy.155:19|
 :skolemid |599|
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@3|) |i#0|))
 :pattern ( (|Set#IsMember| (_module.__default.domain _module._default.domain$U@@1 _module._default.domain$V@@1 |m#0@@3|) |i#0|))
)) (forall ((|i#1| T@U) ) (!  (=> ($IsBox |i#1| _module._default.domain$U@@1) (=> (|Set#IsMember| (|Map#Domain| |m#0@@3|) |i#1|) (|Set#IsMember| (_module.__default.domain _module._default.domain$U@@1 _module._default.domain$V@@1 |m#0@@3|) |i#1|)))
 :qid |Mapsdfy.156:19|
 :skolemid |600|
 :pattern ( (|Set#IsMember| (_module.__default.domain _module._default.domain$U@@1 _module._default.domain$V@@1 |m#0@@3|) |i#1|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@3|) |i#1|))
))) ($Is SetType (_module.__default.domain _module._default.domain$U@@1 _module._default.domain$V@@1 |m#0@@3|) (TSet _module._default.domain$U@@1))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (_module.__default.domain _module._default.domain$U@@1 _module._default.domain$V@@1 |m#0@@3|))
))))
(assert (forall ((|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType |lambda#23| |$w#0@@0|) |$w#0@@0|)
 :qid |Mapsdfy.164:13|
 :skolemid |918|
 :pattern ( (MapType0Select BoxType BoxType |lambda#23| |$w#0@@0|))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (|Set#Equal| a@@13 b@@10) (= a@@13 b@@10))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@3 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@3 u)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u))
)))
(assert (forall ((t@@4 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@0))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@5 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@1))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.union$U@@1 T@U) (_module._default.union$V@@1 T@U) (|m#0@@4| T@U) (|m'#0@@1| T@U) ) (!  (=> (or (|_module.__default.union#canCall| _module._default.union$U@@1 _module._default.union$V@@1 |m#0@@4| |m'#0@@1|) (and (< 1 $FunctionContextHeight) (and (and ($Is MapType |m#0@@4| (TMap _module._default.union$U@@1 _module._default.union$V@@1)) ($Is MapType |m'#0@@1| (TMap _module._default.union$U@@1 _module._default.union$V@@1))) (|Set#Disjoint| (|Map#Domain| |m#0@@4|) (|Map#Domain| |m'#0@@1|))))) (and (and (|_module.__default.domain#canCall| _module._default.union$U@@1 _module._default.union$V@@1 |m#0@@4|) (|_module.__default.domain#canCall| _module._default.union$U@@1 _module._default.union$V@@1 |m'#0@@1|)) (= (_module.__default.union _module._default.union$U@@1 _module._default.union$V@@1 |m#0@@4| |m'#0@@1|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#17| _module._default.union$U@@1 (|Set#Union| (_module.__default.domain _module._default.union$U@@1 _module._default.union$V@@1 |m#0@@4|) (_module.__default.domain _module._default.union$U@@1 _module._default.union$V@@1 |m'#0@@1|)))) (|lambda#25| (|Map#Domain| |m#0@@4|) (|Map#Elements| |m#0@@4|) (|Map#Elements| |m'#0@@1|)) (TMap _module._default.union$U@@1 _module._default.union$V@@1)))))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( (_module.__default.union _module._default.union$U@@1 _module._default.union$V@@1 |m#0@@4| |m'#0@@1|))
))))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (t1@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MapType v@@3 (TMap t0@@3 t1@@1) h@@1) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@4) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@4) t1@@1 h@@1) ($IsAllocBox bx@@4 t0@@3 h@@1)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@4))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@4))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@3 (TMap t0@@3 t1@@1) h@@1))
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
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Union| a@@14 (|Set#Union| a@@14 b@@11)) (|Set#Union| a@@14 b@@11))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@14 (|Set#Union| a@@14 b@@11)))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@5 T@U) (s T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@5 (TMap s t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@5)) bx@@5) ($Is MapType ($Unbox MapType bx@@5) (TMap s t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@5 (TMap s t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@2 t2 (MapType1Store t0@@4 t1@@2 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@1| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |914|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@1| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.domain$U@@2 T@U) (_module._default.domain$V@@2 T@U) (|m#0@@5| T@U) ) (!  (=> (and (or (|_module.__default.domain#canCall| _module._default.domain$U@@2 _module._default.domain$V@@2 |m#0@@5|) (and (< 0 $FunctionContextHeight) (and ($Is MapType |m#0@@5| (TMap _module._default.domain$U@@2 _module._default.domain$V@@2)) ($IsAlloc MapType |m#0@@5| (TMap _module._default.domain$U@@2 _module._default.domain$V@@2) $Heap@@0)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc SetType (_module.__default.domain _module._default.domain$U@@2 _module._default.domain$V@@2 |m#0@@5|) (TSet _module._default.domain$U@@2) $Heap@@0))
 :qid |Mapsdfy.154:16|
 :skolemid |602|
 :pattern ( ($IsAlloc SetType (_module.__default.domain _module._default.domain$U@@2 _module._default.domain$V@@2 |m#0@@5|) (TSet _module._default.domain$U@@2) $Heap@@0))
))))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@4 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@4)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@5 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@5) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@5 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@5))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@7 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@9)))
)))
(assert (forall ((v@@6 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@6 (TMap t0@@5 t1@@3)) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@8) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@8) t1@@3) ($IsBox bx@@8 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@8))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@8))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@6 (TMap t0@@5 t1@@3)))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|Set#Equal| a@@15 b@@12) (forall ((o@@4 T@U) ) (! (= (|Set#IsMember| a@@15 o@@4) (|Set#IsMember| b@@12 o@@4))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@15 o@@4))
 :pattern ( (|Set#IsMember| b@@12 o@@4))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@15 b@@12))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.union$U@@2 T@U) (_module._default.union$V@@2 T@U) (|m#0@@6| T@U) (|m'#0@@2| T@U) ) (!  (=> (or (|_module.__default.union#canCall| _module._default.union$U@@2 _module._default.union$V@@2 |m#0@@6| |m'#0@@2|) (and (< 1 $FunctionContextHeight) (and (and ($Is MapType |m#0@@6| (TMap _module._default.union$U@@2 _module._default.union$V@@2)) ($Is MapType |m'#0@@2| (TMap _module._default.union$U@@2 _module._default.union$V@@2))) (|Set#Disjoint| (|Map#Domain| |m#0@@6|) (|Map#Domain| |m'#0@@2|))))) (and (and (and (and (forall ((|i#0@@0| T@U) ) (!  (=> ($IsBox |i#0@@0| _module._default.union$U@@2) (=> (|Set#IsMember| (|Map#Domain| (_module.__default.union _module._default.union$U@@2 _module._default.union$V@@2 |m#0@@6| |m'#0@@2|)) |i#0@@0|) (|Set#IsMember| (|Set#Union| (|Map#Domain| |m#0@@6|) (|Map#Domain| |m'#0@@2|)) |i#0@@0|)))
 :qid |Mapsdfy.172:19|
 :skolemid |615|
 :pattern ( (|Set#IsMember| (|Set#Union| (|Map#Domain| |m#0@@6|) (|Map#Domain| |m'#0@@2|)) |i#0@@0|))
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.__default.union _module._default.union$U@@2 _module._default.union$V@@2 |m#0@@6| |m'#0@@2|)) |i#0@@0|))
)) (forall ((|i#1@@0| T@U) ) (!  (=> ($IsBox |i#1@@0| _module._default.union$U@@2) (=> (|Set#IsMember| (|Set#Union| (|Map#Domain| |m#0@@6|) (|Map#Domain| |m'#0@@2|)) |i#1@@0|) (|Set#IsMember| (|Map#Domain| (_module.__default.union _module._default.union$U@@2 _module._default.union$V@@2 |m#0@@6| |m'#0@@2|)) |i#1@@0|)))
 :qid |Mapsdfy.173:19|
 :skolemid |616|
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.__default.union _module._default.union$U@@2 _module._default.union$V@@2 |m#0@@6| |m'#0@@2|)) |i#1@@0|))
 :pattern ( (|Set#IsMember| (|Set#Union| (|Map#Domain| |m#0@@6|) (|Map#Domain| |m'#0@@2|)) |i#1@@0|))
))) (forall ((|i#2| T@U) ) (!  (=> ($IsBox |i#2| _module._default.union$U@@2) (=> (|Set#IsMember| (|Map#Domain| |m#0@@6|) |i#2|) (= (MapType0Select BoxType BoxType (|Map#Elements| (_module.__default.union _module._default.union$U@@2 _module._default.union$V@@2 |m#0@@6| |m'#0@@2|)) |i#2|) (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@6|) |i#2|))))
 :qid |Mapsdfy.174:19|
 :skolemid |617|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@6|) |i#2|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (_module.__default.union _module._default.union$U@@2 _module._default.union$V@@2 |m#0@@6| |m'#0@@2|)) |i#2|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@6|) |i#2|))
))) (forall ((|i#3| T@U) ) (!  (=> ($IsBox |i#3| _module._default.union$U@@2) (=> (|Set#IsMember| (|Map#Domain| |m'#0@@2|) |i#3|) (= (MapType0Select BoxType BoxType (|Map#Elements| (_module.__default.union _module._default.union$U@@2 _module._default.union$V@@2 |m#0@@6| |m'#0@@2|)) |i#3|) (MapType0Select BoxType BoxType (|Map#Elements| |m'#0@@2|) |i#3|))))
 :qid |Mapsdfy.175:19|
 :skolemid |618|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| |m'#0@@2|) |i#3|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (_module.__default.union _module._default.union$U@@2 _module._default.union$V@@2 |m#0@@6| |m'#0@@2|)) |i#3|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m'#0@@2|) |i#3|))
))) ($Is MapType (_module.__default.union _module._default.union$U@@2 _module._default.union$V@@2 |m#0@@6| |m'#0@@2|) (TMap _module._default.union$U@@2 _module._default.union$V@@2))))
 :qid |unknown.0:0|
 :skolemid |619|
 :pattern ( (_module.__default.union _module._default.union$U@@2 _module._default.union$V@@2 |m#0@@6| |m'#0@@2|))
))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
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
(assert (forall ((h@@2 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@2))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@8)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((v@@9 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@9 (TMap t0@@6 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@9) (TSet t0@@6)) ($Is SetType (|Map#Values| v@@9) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@9) (TSet (Tclass._System.Tuple2 t0@@6 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@9 (TMap t0@@6 t1@@4)))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@10 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |u#0@0| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |$rhs#3@0| () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |$rhs#2@0| () T@U)
(declare-fun |i#2@0| () Int)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |x#0| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun |u#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.m14)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon8_correct  (and (=> (= (ControlFlow 0 4) (- 0 6)) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u#0@0|) ($Box intType (int_2_U (LitInt 1)))))) (LitInt 1))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u#0@0|) ($Box intType (int_2_U (LitInt 3)))))) (LitInt 4))) (=> (and (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u#0@0|) ($Box intType (int_2_U (LitInt 1)))))) (LitInt 1)) (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u#0@0|) ($Box intType (int_2_U (LitInt 3)))))) (LitInt 4))) (=> (and (and ($IsAlloc MapType |u#0@0| (TMap TInt TInt) $Heap@@1) (|_module.__default.domain#canCall| TInt TInt |u#0@0|)) (and (|_module.__default.domain#canCall| TInt TInt |u#0@0|) (= (ControlFlow 0 4) (- 0 3)))) (|Set#Equal| (_module.__default.domain TInt TInt |u#0@0|) (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))))))))))
(let ((anon13_Else_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u#0@0|) ($Box intType (int_2_U (LitInt 1)))))) (LitInt 1))) (not true)) (= (ControlFlow 0 9) 4)) anon8_correct)))
(let ((anon13_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |u#0@0|) ($Box intType (int_2_U (LitInt 1)))))) (LitInt 1)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (|Set#IsMember| (|Map#Domain| |u#0@0|) ($Box intType (int_2_U (LitInt 3))))) (=> (= (ControlFlow 0 7) 4) anon8_correct)))))
(let ((anon6_correct  (=> (= |$rhs#3@0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#17| TInt |$rhs#1@0|)) (|lambda#35| 1) (TMap TInt TInt))) (=> (and ($IsAlloc MapType |$rhs#2@0| (TMap TInt TInt) $Heap@@1) ($IsAlloc MapType |$rhs#3@0| (TMap TInt TInt) $Heap@@1)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (|Set#Disjoint| (|Map#Domain| |$rhs#2@0|) (|Map#Domain| |$rhs#3@0|))) (=> (and (and (|Set#Disjoint| (|Map#Domain| |$rhs#2@0|) (|Map#Domain| |$rhs#3@0|)) (|_module.__default.union#canCall| TInt TInt |$rhs#2@0| |$rhs#3@0|)) (and (|_module.__default.union#canCall| TInt TInt |$rhs#2@0| |$rhs#3@0|) (= |u#0@0| (_module.__default.union TInt TInt |$rhs#2@0| |$rhs#3@0|)))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (|Set#IsMember| (|Map#Domain| |u#0@0|) ($Box intType (int_2_U (LitInt 1))))) (and (=> (= (ControlFlow 0 10) 7) anon13_Then_correct) (=> (= (ControlFlow 0 10) 9) anon13_Else_correct)))))))))
(let ((anon12_Else_correct  (=> (and (not (|Set#IsMember| |$rhs#1@0| ($Box intType (int_2_U |i#2@0|)))) (= (ControlFlow 0 14) 10)) anon6_correct)))
(let ((anon12_Then_correct  (=> (and (|Set#IsMember| |$rhs#1@0| ($Box intType (int_2_U |i#2@0|))) (= (ControlFlow 0 13) 10)) anon6_correct)))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 15) 13) anon12_Then_correct) (=> (= (ControlFlow 0 15) 14) anon12_Else_correct))))
(let ((anon11_Else_correct true))
(let ((anon3_correct  (=> (= |$rhs#2@0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#17| TInt |$rhs#0@0|)) |lambda#23| (TMap TInt TInt))) (and (=> (= (ControlFlow 0 16) 15) anon11_Then_correct) (=> (= (ControlFlow 0 16) 2) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (not (|Set#IsMember| |$rhs#0@0| ($Box intType (int_2_U |i#0@0|)))) (= (ControlFlow 0 18) 16)) anon3_correct)))
(let ((anon10_Then_correct  (=> (and (|Set#IsMember| |$rhs#0@0| ($Box intType (int_2_U |i#0@0|))) (= (ControlFlow 0 17) 16)) anon3_correct)))
(let ((anon9_Then_correct  (and (=> (= (ControlFlow 0 19) 17) anon10_Then_correct) (=> (= (ControlFlow 0 19) 18) anon10_Else_correct))))
(let ((anon9_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and (= |$rhs#0@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))))) (= |$rhs#1@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4))))))) (and (=> (= (ControlFlow 0 20) 19) anon9_Then_correct) (=> (= (ControlFlow 0 20) 1) anon9_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and ($Is SetType |s#0| (TSet TInt)) ($IsAlloc SetType |s#0| (TSet TInt) $Heap@@1)) true) (and (and ($Is SetType |t#0| (TSet TInt)) ($IsAlloc SetType |t#0| (TSet TInt) $Heap@@1)) true)) (=> (and (and (and (and ($Is MapType |x#0| (TMap TInt TInt)) ($IsAlloc MapType |x#0| (TMap TInt TInt) $Heap@@1)) true) (and (and ($Is MapType |y#0| (TMap TInt TInt)) ($IsAlloc MapType |y#0| (TMap TInt TInt) $Heap@@1)) true)) (and (and (and ($Is MapType |u#0| (TMap TInt TInt)) ($IsAlloc MapType |u#0| (TMap TInt TInt) $Heap@@1)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 21) 20)))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
