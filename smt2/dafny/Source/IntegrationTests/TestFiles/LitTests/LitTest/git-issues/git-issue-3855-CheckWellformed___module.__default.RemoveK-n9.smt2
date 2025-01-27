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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.RemoveKey (T@U T@U Bool T@U T@U) T@U)
(declare-fun |_module.__default.RemoveKey#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun _module.__default.RemoveKeys (T@U T@U Bool T@U T@U) T@U)
(declare-fun reveal__module._default.RemoveKeys () Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Card| (T@U) Int)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |_module.__default.RemoveKeys#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Map#Subtract| (T@U T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#11| (T@U T@U T@U) T@U)
(declare-fun |lambda#12| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |Map#Empty| () T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |tytagFamily$_tuple#2|)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (= (Ctor MapType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.RemoveKey$X T@U) (_module._default.RemoveKey$Y T@U) ($reveal Bool) (|m#0| T@U) (|x#0| T@U) ) (!  (=> (or (|_module.__default.RemoveKey#canCall| _module._default.RemoveKey$X _module._default.RemoveKey$Y |m#0| |x#0|) (and (< 1 $FunctionContextHeight) (and ($Is MapType |m#0| (TMap _module._default.RemoveKey$X _module._default.RemoveKey$Y)) ($IsBox |x#0| _module._default.RemoveKey$X)))) (and (and (and (and (and (and (|Map#Equal| (_module.__default.RemoveKey _module._default.RemoveKey$X _module._default.RemoveKey$Y $reveal |m#0| |x#0|) (_module.__default.RemoveKeys _module._default.RemoveKey$X _module._default.RemoveKey$Y reveal__module._default.RemoveKeys |m#0| (|Set#UnionOne| |Set#Empty| |x#0|))) (<= (|Set#Card| (|Map#Domain| (_module.__default.RemoveKey _module._default.RemoveKey$X _module._default.RemoveKey$Y $reveal |m#0| |x#0|))) (|Set#Card| (|Map#Domain| |m#0|)))) (=> (|Set#IsMember| (|Map#Domain| |m#0|) |x#0|) (= (|Map#Card| (_module.__default.RemoveKey _module._default.RemoveKey$X _module._default.RemoveKey$Y $reveal |m#0| |x#0|)) (- (|Map#Card| |m#0|) 1)))) (=> (not (|Set#IsMember| (|Map#Domain| |m#0|) |x#0|)) (= (|Map#Card| (_module.__default.RemoveKey _module._default.RemoveKey$X _module._default.RemoveKey$Y $reveal |m#0| |x#0|)) (|Map#Card| |m#0|)))) (|Set#Equal| (|Map#Domain| (_module.__default.RemoveKey _module._default.RemoveKey$X _module._default.RemoveKey$Y $reveal |m#0| |x#0|)) (|Set#Difference| (|Map#Domain| |m#0|) (|Set#UnionOne| |Set#Empty| |x#0|)))) (forall ((|x'#0| T@U) ) (!  (=> (and ($IsBox |x'#0| _module._default.RemoveKey$X) (|Set#IsMember| (|Map#Domain| |m#0|) |x'#0|)) (= (= |x#0| |x'#0|)  (not (|Set#IsMember| (|Map#Domain| (_module.__default.RemoveKey _module._default.RemoveKey$X _module._default.RemoveKey$Y $reveal |m#0| |x#0|)) |x'#0|))))
 :qid |gitissue3855dfy.1218:20|
 :skolemid |640|
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.__default.RemoveKey _module._default.RemoveKey$X _module._default.RemoveKey$Y $reveal |m#0| |x#0|)) |x'#0|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0|) |x'#0|))
))) ($Is MapType (_module.__default.RemoveKey _module._default.RemoveKey$X _module._default.RemoveKey$Y $reveal |m#0| |x#0|) (TMap _module._default.RemoveKey$X _module._default.RemoveKey$Y))))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( (_module.__default.RemoveKey _module._default.RemoveKey$X _module._default.RemoveKey$Y $reveal |m#0| |x#0|))
))))
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
(assert (= (Ctor SetType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.RemoveKeys$X T@U) (_module._default.RemoveKeys$Y T@U) (|m#0@@0| T@U) (|xs#0| T@U) ) (!  (=> (or (|_module.__default.RemoveKeys#canCall| _module._default.RemoveKeys$X _module._default.RemoveKeys$Y |m#0@@0| |xs#0|) (and (< 0 $FunctionContextHeight) (and ($Is MapType |m#0@@0| (TMap _module._default.RemoveKeys$X _module._default.RemoveKeys$Y)) ($Is SetType |xs#0| (TSet _module._default.RemoveKeys$X))))) (= (_module.__default.RemoveKeys _module._default.RemoveKeys$X _module._default.RemoveKeys$Y true |m#0@@0| |xs#0|) (|Map#Subtract| |m#0@@0| |xs#0|)))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( (_module.__default.RemoveKeys _module._default.RemoveKeys$X _module._default.RemoveKeys$Y true |m#0@@0| |xs#0|))
))))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
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
(assert (= (Ctor DatatypeTypeType) 5))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@7 b@@4) o@@1)  (and (|Set#IsMember| a@@7 o@@1) (|Set#IsMember| b@@4 o@@1)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |137|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@7 b@@4) o@@1))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@8 b@@5) b@@5) (|Set#Union| a@@8 b@@5))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@8 b@@5) b@@5))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@9 b@@6) b@@6) (|Set#Intersection| a@@9 b@@6))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |140|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@9 b@@6) b@@6))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@2 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@10 b@@7) o@@2)  (and (|Set#IsMember| a@@10 o@@2) (not (|Set#IsMember| b@@7 o@@2))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@10 b@@7) o@@2))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (+ (|Set#Card| (|Set#Union| a@@11 b@@8)) (|Set#Card| (|Set#Intersection| a@@11 b@@8))) (+ (|Set#Card| a@@11) (|Set#Card| b@@8)))
 :qid |DafnyPreludebpl.745:15|
 :skolemid |142|
 :pattern ( (|Set#Card| (|Set#Union| a@@11 b@@8)))
 :pattern ( (|Set#Card| (|Set#Intersection| a@@11 b@@8)))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.RemoveKey$X@@0 T@U) (_module._default.RemoveKey$Y@@0 T@U) (|m#0@@1| T@U) (|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.RemoveKey#canCall| _module._default.RemoveKey$X@@0 _module._default.RemoveKey$Y@@0 |m#0@@1| |x#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is MapType |m#0@@1| (TMap _module._default.RemoveKey$X@@0 _module._default.RemoveKey$Y@@0)) ($IsBox |x#0@@0| _module._default.RemoveKey$X@@0)))) (= (_module.__default.RemoveKey _module._default.RemoveKey$X@@0 _module._default.RemoveKey$Y@@0 true |m#0@@1| |x#0@@0|) (let ((|m'#0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#11| _module._default.RemoveKey$X@@0 (|Map#Domain| |m#0@@1|) |x#0@@0|)) (|lambda#12| (|Map#Elements| |m#0@@1|)) (TMap _module._default.RemoveKey$X@@0 _module._default.RemoveKey$Y@@0))))
|m'#0|)))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( (_module.__default.RemoveKey _module._default.RemoveKey$X@@0 _module._default.RemoveKey$Y@@0 true |m#0@@1| |x#0@@0|))
))))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@12 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@9 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@12 b@@9 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@12 b@@9 (TMap t0@@0 t1@@0)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((|l#0| T@U) (|$w#0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#12| |l#0|) |$w#0|) (MapType0Select BoxType BoxType |l#0| |$w#0|))
 :qid |gitissue3855dfy.1220:47|
 :skolemid |1409|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#12| |l#0|) |$w#0|))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((m@@1 T@U) (s@@0 T@U) (u T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| (|Map#Subtract| m@@1 s@@0)) u) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Subtract| m@@1 s@@0)) u) (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u)))
 :qid |DafnyPreludebpl.1489:15|
 :skolemid |296|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Subtract| m@@1 s@@0)) u))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Disjoint| a@@13 b@@10) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@13 o@@3)) (not (|Set#IsMember| b@@10 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@13 o@@3))
 :pattern ( (|Set#IsMember| b@@10 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@13 b@@10))
)))
(assert (forall ((m@@2 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@2) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@2 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@2) bx@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert (forall ((m@@3 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@3 |m'|)  (and (forall ((u@@0 T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@3) u@@0) (|Set#IsMember| (|Map#Domain| |m'|) u@@0))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |297|
)) (forall ((u@@1 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@3) u@@1) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@3) u@@1) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@1)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |298|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |299|
 :pattern ( (|Map#Equal| m@@3 |m'|))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@14 b@@11) o@@4)  (or (|Set#IsMember| a@@14 o@@4) (|Set#IsMember| b@@11 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@14 b@@11) o@@4))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (!  (=> (|Set#Disjoint| a@@15 b@@12) (and (= (|Set#Difference| (|Set#Union| a@@15 b@@12) a@@15) b@@12) (= (|Set#Difference| (|Set#Union| a@@15 b@@12) b@@12) a@@15)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@15 b@@12))
)))
(assert (forall ((m@@4 T@U) ) (! (= (= (|Map#Card| m@@4) 0) (= m@@4 |Map#Empty|))
 :qid |DafnyPreludebpl.1382:15|
 :skolemid |272|
 :pattern ( (|Map#Card| m@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.RemoveKeys$X@@0 T@U) (_module._default.RemoveKeys$Y@@0 T@U) ($reveal@@0 Bool) (|m#0@@2| T@U) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.RemoveKeys#canCall| _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0 |m#0@@2| |xs#0@@0|) (and (< 0 $FunctionContextHeight) (and ($Is MapType |m#0@@2| (TMap _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0)) ($Is SetType |xs#0@@0| (TSet _module._default.RemoveKeys$X@@0))))) (and (and (and (and (forall ((|x#0@@1| T@U) ) (!  (=> ($IsBox |x#0@@1| _module._default.RemoveKeys$X@@0) (and (=> (and (|Set#IsMember| (|Map#Domain| |m#0@@2|) |x#0@@1|) (not (|Set#IsMember| |xs#0@@0| |x#0@@1|))) (|Set#IsMember| (|Map#Domain| (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0 $reveal@@0 |m#0@@2| |xs#0@@0|)) |x#0@@1|)) (=> (and (|Set#IsMember| (|Map#Domain| |m#0@@2|) |x#0@@1|) (not (|Set#IsMember| |xs#0@@0| |x#0@@1|))) (= (MapType0Select BoxType BoxType (|Map#Elements| (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0 $reveal@@0 |m#0@@2| |xs#0@@0|)) |x#0@@1|) (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@2|) |x#0@@1|)))))
 :qid |gitissue3855dfy.1203:20|
 :skolemid |626|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0 $reveal@@0 |m#0@@2| |xs#0@@0|)) |x#0@@1|))
)) (forall ((|x#1| T@U) ) (!  (=> ($IsBox |x#1| _module._default.RemoveKeys$X@@0) (and (=> (|Set#IsMember| (|Map#Domain| (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0 $reveal@@0 |m#0@@2| |xs#0@@0|)) |x#1|) (|Set#IsMember| (|Map#Domain| |m#0@@2|) |x#1|)) (=> (|Set#IsMember| (|Map#Domain| (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0 $reveal@@0 |m#0@@2| |xs#0@@0|)) |x#1|) (not (|Set#IsMember| |xs#0@@0| |x#1|)))))
 :qid |gitissue3855dfy.1204:20|
 :skolemid |627|
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0 $reveal@@0 |m#0@@2| |xs#0@@0|)) |x#1|))
))) (|Set#Equal| (|Map#Domain| (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0 $reveal@@0 |m#0@@2| |xs#0@@0|)) (|Set#Difference| (|Map#Domain| |m#0@@2|) |xs#0@@0|))) (forall ((|x#2| T@U) ) (!  (=> (and ($IsBox |x#2| _module._default.RemoveKeys$X@@0) (|Set#IsMember| (|Map#Domain| |m#0@@2|) |x#2|)) (= (|Set#IsMember| |xs#0@@0| |x#2|)  (not (|Set#IsMember| (|Map#Domain| (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0 $reveal@@0 |m#0@@2| |xs#0@@0|)) |x#2|))))
 :qid |gitissue3855dfy.1206:20|
 :skolemid |628|
 :pattern ( (|Set#IsMember| (|Map#Domain| (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0 $reveal@@0 |m#0@@2| |xs#0@@0|)) |x#2|))
 :pattern ( (|Set#IsMember| |xs#0@@0| |x#2|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@2|) |x#2|))
))) ($Is MapType (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0 $reveal@@0 |m#0@@2| |xs#0@@0|) (TMap _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0))))
 :qid |unknown.0:0|
 :skolemid |629|
 :pattern ( (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@0 _module._default.RemoveKeys$Y@@0 $reveal@@0 |m#0@@2| |xs#0@@0|))
))))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (!  (=> (|Set#Equal| a@@16 b@@13) (= a@@16 b@@13))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@16 b@@13))
)))
(assert (forall ((m@@5 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@5 |m'@@0|) (= m@@5 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |300|
 :pattern ( (|Map#Equal| m@@5 |m'@@0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.RemoveKeys$X@@1 T@U) (_module._default.RemoveKeys$Y@@1 T@U) (|m#0@@3| T@U) (|xs#0@@1| T@U) ) (!  (=> (or (|_module.__default.RemoveKeys#canCall| _module._default.RemoveKeys$X@@1 _module._default.RemoveKeys$Y@@1 (Lit MapType |m#0@@3|) (Lit SetType |xs#0@@1|)) (and (< 0 $FunctionContextHeight) (and ($Is MapType |m#0@@3| (TMap _module._default.RemoveKeys$X@@1 _module._default.RemoveKeys$Y@@1)) ($Is SetType |xs#0@@1| (TSet _module._default.RemoveKeys$X@@1))))) (= (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@1 _module._default.RemoveKeys$Y@@1 true (Lit MapType |m#0@@3|) (Lit SetType |xs#0@@1|)) (|Map#Subtract| |m#0@@3| |xs#0@@1|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |633|
 :pattern ( (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@1 _module._default.RemoveKeys$Y@@1 true (Lit MapType |m#0@@3|) (Lit SetType |xs#0@@1|)))
))))
(assert (forall ((a@@17 T@U) (b@@14 T@U) ) (!  (and (= (+ (+ (|Set#Card| (|Set#Difference| a@@17 b@@14)) (|Set#Card| (|Set#Difference| b@@14 a@@17))) (|Set#Card| (|Set#Intersection| a@@17 b@@14))) (|Set#Card| (|Set#Union| a@@17 b@@14))) (= (|Set#Card| (|Set#Difference| a@@17 b@@14)) (- (|Set#Card| a@@17) (|Set#Card| (|Set#Intersection| a@@17 b@@14)))))
 :qid |DafnyPreludebpl.761:15|
 :skolemid |145|
 :pattern ( (|Set#Card| (|Set#Difference| a@@17 b@@14)))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((s@@1 T@U) ) (! (<= 0 (|Set#Card| s@@1))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@1))
)))
(assert (forall ((m@@6 T@U) ) (! (<= 0 (|Map#Card| m@@6))
 :qid |DafnyPreludebpl.1380:15|
 :skolemid |271|
 :pattern ( (|Map#Card| m@@6))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|$w#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#11| |l#0@@0| |l#1| |l#2|) |$w#0@@0|))  (and ($IsBox |$w#0@@0| |l#0@@0|) (and (|Set#IsMember| |l#1| |$w#0@@0|) (or (not (= |$w#0@@0| |l#2|)) (not true)))))
 :qid |unknown.0:0|
 :skolemid |1408|
 :pattern ( (MapType0Select BoxType boolType (|lambda#11| |l#0@@0| |l#1| |l#2|) |$w#0@@0|))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@2) ($IsAllocBox bx@@2 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@3 T@U) (u@@2 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@2)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u@@2))
)))
(assert (forall ((t@@4 T@U) (u@@3 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@3)) u@@3)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@3))
)))
(assert (forall ((t@@5 T@U) (u@@4 T@U) ) (! (= (Tag (TMap t@@5 u@@4)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@4))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
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
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (t1@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MapType v@@3 (TMap t0@@3 t1@@1) h@@1) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@3) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@3) t1@@1 h@@1) ($IsAllocBox bx@@3 t0@@3 h@@1)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@3))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@3))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@3 (TMap t0@@3 t1@@1) h@@1))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((a@@18 T@U) (b@@15 T@U) ) (! (= (|Set#Union| a@@18 (|Set#Union| a@@18 b@@15)) (|Set#Union| a@@18 b@@15))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@18 (|Set#Union| a@@18 b@@15)))
)))
(assert (forall ((a@@19 T@U) (b@@16 T@U) ) (! (= (|Set#Intersection| a@@19 (|Set#Intersection| a@@19 b@@16)) (|Set#Intersection| a@@19 b@@16))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |141|
 :pattern ( (|Set#Intersection| a@@19 (|Set#Intersection| a@@19 b@@16)))
)))
(assert (forall ((u@@5 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@5))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@5))
)))
(assert (forall ((bx@@4 T@U) (s@@2 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@4 (TMap s@@2 t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@4)) bx@@4) ($Is MapType ($Unbox MapType bx@@4) (TMap s@@2 t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@4 (TMap s@@2 t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.RemoveKeys$X@@2 T@U) (_module._default.RemoveKeys$Y@@2 T@U) ($reveal@@1 Bool) (|m#0@@4| T@U) (|xs#0@@2| T@U) ) (!  (=> (and (or (|_module.__default.RemoveKeys#canCall| _module._default.RemoveKeys$X@@2 _module._default.RemoveKeys$Y@@2 |m#0@@4| |xs#0@@2|) (and (< 0 $FunctionContextHeight) (and (and ($Is MapType |m#0@@4| (TMap _module._default.RemoveKeys$X@@2 _module._default.RemoveKeys$Y@@2)) ($IsAlloc MapType |m#0@@4| (TMap _module._default.RemoveKeys$X@@2 _module._default.RemoveKeys$Y@@2) $Heap)) (and ($Is SetType |xs#0@@2| (TSet _module._default.RemoveKeys$X@@2)) ($IsAlloc SetType |xs#0@@2| (TSet _module._default.RemoveKeys$X@@2) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc MapType (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@2 _module._default.RemoveKeys$Y@@2 $reveal@@1 |m#0@@4| |xs#0@@2|) (TMap _module._default.RemoveKeys$X@@2 _module._default.RemoveKeys$Y@@2) $Heap))
 :qid |gitissue3855dfy.1202:22|
 :skolemid |630|
 :pattern ( ($IsAlloc MapType (_module.__default.RemoveKeys _module._default.RemoveKeys$X@@2 _module._default.RemoveKeys$Y@@2 $reveal@@1 |m#0@@4| |xs#0@@2|) (TMap _module._default.RemoveKeys$X@@2 _module._default.RemoveKeys$Y@@2) $Heap))
))))
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@7 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@2 t2 (MapType1Store t0@@4 t1@@2 t2 m@@7 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@8 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@8 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@8 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@9 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@9 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@9 y0@@1 y1@@0)))
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
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@0| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1406|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@0| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.RemoveKey$X@@1 T@U) (_module._default.RemoveKey$Y@@1 T@U) (|m#0@@5| T@U) (|x#0@@2| T@U) ) (!  (=> (or (|_module.__default.RemoveKey#canCall| _module._default.RemoveKey$X@@1 _module._default.RemoveKey$Y@@1 (Lit MapType |m#0@@5|) |x#0@@2|) (and (< 1 $FunctionContextHeight) (and ($Is MapType |m#0@@5| (TMap _module._default.RemoveKey$X@@1 _module._default.RemoveKey$Y@@1)) ($IsBox |x#0@@2| _module._default.RemoveKey$X@@1)))) (= (_module.__default.RemoveKey _module._default.RemoveKey$X@@1 _module._default.RemoveKey$Y@@1 true (Lit MapType |m#0@@5|) |x#0@@2|) (let ((|m'#1| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#11| _module._default.RemoveKey$X@@1 (|Map#Domain| |m#0@@5|) |x#0@@2|)) (|lambda#12| (|Map#Elements| (Lit MapType |m#0@@5|))) (TMap _module._default.RemoveKey$X@@1 _module._default.RemoveKey$Y@@1))))
|m'#1|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |645|
 :pattern ( (_module.__default.RemoveKey _module._default.RemoveKey$X@@1 _module._default.RemoveKey$Y@@1 true (Lit MapType |m#0@@5|) |x#0@@2|))
))))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@10) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@10))
)))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((v@@4 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@11) v@@4)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@11))
)))
(assert (forall ((m@@12 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@12) item)  (and (|Set#IsMember| (|Map#Domain| m@@12) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@12) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@12) item))
)))
(assert (forall ((m@@13 T@U) (v@@5 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@13) v@@5) (exists ((u@@6 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@13) u@@6) (= v@@5 (MapType0Select BoxType BoxType (|Map#Elements| m@@13) u@@6)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@13) u@@6))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@13) u@@6))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@13) v@@5))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((m@@14 T@U) ) (! (= (|Set#Card| (|Map#Domain| m@@14)) (|Map#Card| m@@14))
 :qid |DafnyPreludebpl.1396:15|
 :skolemid |279|
 :pattern ( (|Set#Card| (|Map#Domain| m@@14)))
 :pattern ( (|Map#Card| m@@14))
)))
(assert (forall ((m@@15 T@U) ) (! (= (|Set#Card| (|Map#Items| m@@15)) (|Map#Card| m@@15))
 :qid |DafnyPreludebpl.1402:15|
 :skolemid |281|
 :pattern ( (|Set#Card| (|Map#Items| m@@15)))
 :pattern ( (|Map#Card| m@@15))
)))
(assert (forall ((m@@16 T@U) ) (! (<= (|Set#Card| (|Map#Values| m@@16)) (|Map#Card| m@@16))
 :qid |DafnyPreludebpl.1399:15|
 :skolemid |280|
 :pattern ( (|Set#Card| (|Map#Values| m@@16)))
 :pattern ( (|Map#Card| m@@16))
)))
(assert (forall ((bx@@6 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@6 (TSet t@@9)))
)))
(assert (forall ((a@@20 T@U) (x@@9 T@U) ) (!  (=> (|Set#IsMember| a@@20 x@@9) (= (|Set#Card| (|Set#UnionOne| a@@20 x@@9)) (|Set#Card| a@@20)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |131|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@20 x@@9)))
)))
(assert (forall ((m@@17 T@U) (s@@3 T@U) ) (! (= (|Map#Domain| (|Map#Subtract| m@@17 s@@3)) (|Set#Difference| (|Map#Domain| m@@17) s@@3))
 :qid |DafnyPreludebpl.1486:15|
 :skolemid |295|
 :pattern ( (|Map#Domain| (|Map#Subtract| m@@17 s@@3)))
)))
(assert (forall ((v@@6 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@6 (TMap t0@@5 t1@@3)) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@7) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@7) t1@@3) ($IsBox bx@@7 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@7))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@7))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@6 (TMap t0@@5 t1@@3)))
)))
(assert (forall ((a@@21 T@U) (b@@17 T@U) ) (! (= (|Set#Equal| a@@21 b@@17) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@21 o@@5) (|Set#IsMember| b@@17 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@21 o@@5))
 :pattern ( (|Set#IsMember| b@@17 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@21 b@@17))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@0))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@0))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@1))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@1))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module._default.RemoveKey$X@@2 T@U) (_module._default.RemoveKey$Y@@2 T@U) ($reveal@@2 Bool) (|m#0@@6| T@U) (|x#0@@3| T@U) ) (!  (=> (and (or (|_module.__default.RemoveKey#canCall| _module._default.RemoveKey$X@@2 _module._default.RemoveKey$Y@@2 |m#0@@6| |x#0@@3|) (and (< 1 $FunctionContextHeight) (and (and ($Is MapType |m#0@@6| (TMap _module._default.RemoveKey$X@@2 _module._default.RemoveKey$Y@@2)) ($IsAlloc MapType |m#0@@6| (TMap _module._default.RemoveKey$X@@2 _module._default.RemoveKey$Y@@2) $Heap@@0)) (and ($IsBox |x#0@@3| _module._default.RemoveKey$X@@2) ($IsAllocBox |x#0@@3| _module._default.RemoveKey$X@@2 $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc MapType (_module.__default.RemoveKey _module._default.RemoveKey$X@@2 _module._default.RemoveKey$Y@@2 $reveal@@2 |m#0@@6| |x#0@@3|) (TMap _module._default.RemoveKey$X@@2 _module._default.RemoveKey$Y@@2) $Heap@@0))
 :qid |gitissue3855dfy.1212:22|
 :skolemid |642|
 :pattern ( ($IsAlloc MapType (_module.__default.RemoveKey _module._default.RemoveKey$X@@2 _module._default.RemoveKey$Y@@2 $reveal@@2 |m#0@@6| |x#0@@3|) (TMap _module._default.RemoveKey$X@@2 _module._default.RemoveKey$Y@@2) $Heap@@0))
))))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.RemoveKey$X@@3 T@U) (_module._default.RemoveKey$Y@@3 T@U) (|m#0@@7| T@U) (|x#0@@4| T@U) ) (!  (=> (or (|_module.__default.RemoveKey#canCall| _module._default.RemoveKey$X@@3 _module._default.RemoveKey$Y@@3 (Lit MapType |m#0@@7|) (Lit BoxType |x#0@@4|)) (and (< 1 $FunctionContextHeight) (and ($Is MapType |m#0@@7| (TMap _module._default.RemoveKey$X@@3 _module._default.RemoveKey$Y@@3)) ($IsBox |x#0@@4| _module._default.RemoveKey$X@@3)))) (= (_module.__default.RemoveKey _module._default.RemoveKey$X@@3 _module._default.RemoveKey$Y@@3 true (Lit MapType |m#0@@7|) (Lit BoxType |x#0@@4|)) (let ((|m'#2| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#11| _module._default.RemoveKey$X@@3 (|Map#Domain| |m#0@@7|) |x#0@@4|)) (|lambda#12| (|Map#Elements| (Lit MapType |m#0@@7|))) (TMap _module._default.RemoveKey$X@@3 _module._default.RemoveKey$Y@@3))))
|m'#2|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |646|
 :pattern ( (_module.__default.RemoveKey _module._default.RemoveKey$X@@3 _module._default.RemoveKey$Y@@3 true (Lit MapType |m#0@@7|) (Lit BoxType |x#0@@4|)))
))))
(assert (forall ((a@@22 T@U) (x@@11 T@U) ) (!  (=> (not (|Set#IsMember| a@@22 x@@11)) (= (|Set#Card| (|Set#UnionOne| a@@22 x@@11)) (+ (|Set#Card| a@@22) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |132|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@22 x@@11)))
)))
(assert (forall ((m@@18 T@U) ) (!  (or (= m@@18 |Map#Empty|) (exists ((k@@0 T@U) (v@@7 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@18) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@7)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@18))
)))
(assert (forall ((v@@8 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@8 (TMap t0@@6 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@8) (TSet t0@@6)) ($Is SetType (|Map#Values| v@@8) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@8) (TSet (Tclass._System.Tuple2 t0@@6 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@8 (TMap t0@@6 t1@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |m#0@@8| () T@U)
(declare-fun |x'#3@0| () T@U)
(declare-fun |x#0@@5| () T@U)
(declare-fun |m'#3| () T@U)
(declare-fun _module._default.RemoveKey$X@@4 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun _module._default.RemoveKey$Y@@4 () T@U)
(declare-fun reveal__module._default.RemoveKey () Bool)
(declare-fun |##xs#0@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |m'#Z#0@0| () T@U)
(declare-fun |x'#4@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.RemoveKey)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon11_correct true))
(let ((anon22_Else_correct  (=> (and (=> (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x'#3@0|) (= (= |x#0@@5| |x'#3@0|)  (not (|Set#IsMember| (|Map#Domain| |m'#3|) |x'#3@0|)))) (= (ControlFlow 0 19) 17)) anon11_correct)))
(let ((anon22_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x'#3@0|) (=> (and (= (= |x#0@@5| |x'#3@0|)  (not (|Set#IsMember| (|Map#Domain| |m'#3|) |x'#3@0|))) (= (ControlFlow 0 18) 17)) anon11_correct))))
(let ((anon8_correct  (=> (|Set#Equal| (|Map#Domain| |m'#3|) (|Set#Difference| (|Map#Domain| |m#0@@8|) (|Set#UnionOne| |Set#Empty| |x#0@@5|))) (=> (and ($IsBox |x'#3@0| _module._default.RemoveKey$X@@4) ($IsAllocBox |x'#3@0| _module._default.RemoveKey$X@@4 $Heap@@1)) (and (=> (= (ControlFlow 0 20) 18) anon22_Then_correct) (=> (= (ControlFlow 0 20) 19) anon22_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (=> (not (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x#0@@5|)) (= (|Map#Card| |m'#3|) (|Map#Card| |m#0@@8|))) (= (ControlFlow 0 22) 20)) anon8_correct)))
(let ((anon21_Then_correct  (=> (not (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x#0@@5|)) (=> (and (= (|Map#Card| |m'#3|) (|Map#Card| |m#0@@8|)) (= (ControlFlow 0 21) 20)) anon8_correct))))
(let ((anon20_Else_correct  (=> (=> (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x#0@@5|) (= (|Map#Card| |m'#3|) (- (|Map#Card| |m#0@@8|) 1))) (and (=> (= (ControlFlow 0 24) 21) anon21_Then_correct) (=> (= (ControlFlow 0 24) 22) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x#0@@5|) (= (|Map#Card| |m'#3|) (- (|Map#Card| |m#0@@8|) 1))) (and (=> (= (ControlFlow 0 23) 21) anon21_Then_correct) (=> (= (ControlFlow 0 23) 22) anon21_Else_correct)))))
(let ((anon19_Then_correct  (=> (and (and (and ($Is MapType (_module.__default.RemoveKey _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4 reveal__module._default.RemoveKey |m#0@@8| |x#0@@5|) (TMap _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4)) ($Is MapType |m'#3| (TMap _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4))) (and ($IsAlloc MapType |m#0@@8| (TMap _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4) $Heap@@1) (= |##xs#0@0| (|Set#UnionOne| |Set#Empty| |x#0@@5|)))) (and (and ($IsAlloc SetType |##xs#0@0| (TSet _module._default.RemoveKey$X@@4) $Heap@@1) (|_module.__default.RemoveKeys#canCall| _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4 |m#0@@8| (|Set#UnionOne| |Set#Empty| |x#0@@5|))) (and (|Map#Equal| |m'#3| (_module.__default.RemoveKeys _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4 reveal__module._default.RemoveKeys |m#0@@8| (|Set#UnionOne| |Set#Empty| |x#0@@5|))) (<= (|Set#Card| (|Map#Domain| |m'#3|)) (|Set#Card| (|Map#Domain| |m#0@@8|)))))) (and (=> (= (ControlFlow 0 25) 23) anon20_Then_correct) (=> (= (ControlFlow 0 25) 24) anon20_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 7)) (|Map#Equal| |m'#3| (_module.__default.RemoveKeys _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4 reveal__module._default.RemoveKeys |m#0@@8| (|Set#UnionOne| |Set#Empty| |x#0@@5|)))) (=> (|Map#Equal| |m'#3| (_module.__default.RemoveKeys _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4 reveal__module._default.RemoveKeys |m#0@@8| (|Set#UnionOne| |Set#Empty| |x#0@@5|))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (<= (|Set#Card| (|Map#Domain| |m'#3|)) (|Set#Card| (|Map#Domain| |m#0@@8|)))) (=> (<= (|Set#Card| (|Map#Domain| |m'#3|)) (|Set#Card| (|Map#Domain| |m#0@@8|))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x#0@@5|) (= (|Map#Card| |m'#3|) (- (|Map#Card| |m#0@@8|) 1)))) (=> (=> (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x#0@@5|) (= (|Map#Card| |m'#3|) (- (|Map#Card| |m#0@@8|) 1))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (not (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x#0@@5|)) (= (|Map#Card| |m'#3|) (|Map#Card| |m#0@@8|)))) (=> (=> (not (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x#0@@5|)) (= (|Map#Card| |m'#3|) (|Map#Card| |m#0@@8|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Set#Equal| (|Map#Domain| |m'#3|) (|Set#Difference| (|Map#Domain| |m#0@@8|) (|Set#UnionOne| |Set#Empty| |x#0@@5|)))) (=> (|Set#Equal| (|Map#Domain| |m'#3|) (|Set#Difference| (|Map#Domain| |m#0@@8|) (|Set#UnionOne| |Set#Empty| |x#0@@5|))) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|x'#2| T@U) ) (!  (=> (and ($IsBox |x'#2| _module._default.RemoveKey$X@@4) (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x'#2|)) (= (= |x#0@@5| |x'#2|)  (not (|Set#IsMember| (|Map#Domain| |m'#3|) |x'#2|))))
 :qid |gitissue3855dfy.1218:20|
 :skolemid |647|
 :pattern ( (|Set#IsMember| (|Map#Domain| |m'#3|) |x'#2|))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x'#2|))
)))))))))))))))
(let ((anon17_correct  (=> (= |let#0#0#0| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#11| _module._default.RemoveKey$X@@4 (|Map#Domain| |m#0@@8|) |x#0@@5|)) (|lambda#12| (|Map#Elements| |m#0@@8|)) (TMap _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4))) (=> (and ($Is MapType |let#0#0#0| (TMap _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4)) (= |m'#Z#0@0| |let#0#0#0|)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (|Set#Equal| (|Map#Domain| |m'#Z#0@0|) (|Set#Difference| (|Map#Domain| |m#0@@8|) (|Set#UnionOne| |Set#Empty| |x#0@@5|)))) (=> (|Set#Equal| (|Map#Domain| |m'#Z#0@0|) (|Set#Difference| (|Map#Domain| |m#0@@8|) (|Set#UnionOne| |Set#Empty| |x#0@@5|))) (=> (and (and (= (_module.__default.RemoveKey _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4 reveal__module._default.RemoveKey |m#0@@8| |x#0@@5|) |m'#Z#0@0|) ($Is MapType (_module.__default.RemoveKey _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4 reveal__module._default.RemoveKey |m#0@@8| |x#0@@5|) (TMap _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4))) (and (= (_module.__default.RemoveKey _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4 reveal__module._default.RemoveKey |m#0@@8| |x#0@@5|) |m'#3|) (= (ControlFlow 0 8) 2))) GeneratedUnifiedExit_correct)))))))
(let ((anon25_Else_correct  (=> (and (not (and (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x'#4@0|) (or (not (= |x'#4@0| |x#0@@5|)) (not true)))) (= (ControlFlow 0 13) 8)) anon17_correct)))
(let ((anon25_Then_correct  (=> (and (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x'#4@0|) (or (not (= |x'#4@0| |x#0@@5|)) (not true))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x'#4@0|)) (=> (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x'#4@0|) (=> (= (ControlFlow 0 11) 8) anon17_correct))))))
(let ((anon24_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x'#4@0|)) (and (=> (= (ControlFlow 0 15) 11) anon25_Then_correct) (=> (= (ControlFlow 0 15) 13) anon25_Else_correct)))))
(let ((anon24_Then_correct  (=> (|Set#IsMember| (|Map#Domain| |m#0@@8|) |x'#4@0|) (and (=> (= (ControlFlow 0 14) 11) anon25_Then_correct) (=> (= (ControlFlow 0 14) 13) anon25_Else_correct)))))
(let ((anon23_Then_correct  (=> (and ($IsBox |x'#4@0| _module._default.RemoveKey$X@@4) ($IsAllocBox |x'#4@0| _module._default.RemoveKey$X@@4 $Heap@@1)) (and (=> (= (ControlFlow 0 16) 14) anon24_Then_correct) (=> (= (ControlFlow 0 16) 15) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (not (and ($IsBox |x'#4@0| _module._default.RemoveKey$X@@4) ($IsAllocBox |x'#4@0| _module._default.RemoveKey$X@@4 $Heap@@1))) (= (ControlFlow 0 10) 8)) anon17_correct)))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (and (=> (= (ControlFlow 0 26) 25) anon19_Then_correct) (=> (= (ControlFlow 0 26) 16) anon23_Then_correct)) (=> (= (ControlFlow 0 26) 10) anon23_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and ($Is MapType |m#0@@8| (TMap _module._default.RemoveKey$X@@4 _module._default.RemoveKey$Y@@4)) ($IsBox |x#0@@5| _module._default.RemoveKey$X@@4)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 27) 26))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
