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
(declare-fun Tagclass.M3.State () T@U)
(declare-fun Tagclass.M3.Path () T@U)
(declare-fun Tagclass.M3.Artifact () T@U)
(declare-fun |##M3.Artifact.ArtifactCons| () T@U)
(declare-fun |##M3.State.StateCons| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$State () T@U)
(declare-fun tytagFamily$Path () T@U)
(declare-fun tytagFamily$Artifact () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun M3.State.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M3.Path () T@U)
(declare-fun Tclass.M3.Artifact () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun M3.State.StateCons_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M3.State () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M3.__default.DomSt (T@U) T@U)
(declare-fun |M3.__default.DomSt#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun M3.Artifact.ArtifactCons_q (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |M3.Artifact#Equal| (T@U T@U) Bool)
(declare-fun |M3.State#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun M3.__default.GetSt (T@U T@U) T@U)
(declare-fun |M3.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |#M3.Artifact.ArtifactCons| (Int) T@U)
(declare-fun |#M3.State.StateCons| (T@U) T@U)
(declare-fun M3.Artifact._h11 (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |lambda#1| (T@U T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun M3.__default.Union (T@U T@U) T@U)
(declare-fun |M3.__default.Union#canCall| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TagInt TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M3.State Tagclass.M3.Path Tagclass.M3.Artifact |##M3.Artifact.ArtifactCons| |##M3.State.StateCons| |tytagFamily$_tuple#2| tytagFamily$State tytagFamily$Path tytagFamily$Artifact)
)
(assert  (and (= (Ctor MapType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M3.State.StateCons_q d) ($IsAlloc DatatypeTypeType d Tclass.M3.State $h))) ($IsAlloc MapType (M3.State.m d) (TMap Tclass.M3.Path Tclass.M3.Artifact) $h))
 :qid |unknown.0:0|
 :skolemid |6942|
 :pattern ( ($IsAlloc MapType (M3.State.m d) (TMap Tclass.M3.Path Tclass.M3.Artifact) $h))
)))
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (b T@U) (y T@U) ) (!  (=> (|Set#IsMember| a y) (|Set#IsMember| (|Set#Union| a b) y))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |5089|
 :pattern ( (|Set#Union| a b) (|Set#IsMember| a y))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@0) (|Set#IsMember| (|Set#Union| a@@0 b@@0) y@@0))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |5090|
 :pattern ( (|Set#Union| a@@0 b@@0) (|Set#IsMember| b@@0 y@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0| T@U) ) (!  (=> (or (|M3.__default.DomSt#canCall| |st#0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0| Tclass.M3.State))) (and (M3.State.StateCons_q |st#0|) (= (M3.__default.DomSt |st#0|) (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Map#Domain| (M3.State.m |st#0|)))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |6478|
 :pattern ( (M3.__default.DomSt |st#0|))
))))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |CloudMakeParallelBuildsdfy.783:12|
 :skolemid |7204|
 :pattern ( (MapType0Select BoxType boolType (|lambda#0| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@1 b@@1 t)) a@@1)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |5241|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@1 b@@1 t)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@2 b@@2 t@@0)) b@@2)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |5242|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@2 b@@2 t@@0)))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@3 y@@1) (not (|Set#IsMember| (|Set#Difference| a@@3 b@@3) y@@1)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |5099|
 :pattern ( (|Set#Difference| a@@3 b@@3) (|Set#IsMember| b@@3 y@@1))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@0))
 :qid |unknown.0:0|
 :skolemid |5423|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@4 b@@4) b@@4) (|Set#Union| a@@4 b@@4))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |5093|
 :pattern ( (|Set#Union| (|Set#Union| a@@4 b@@4) b@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@5 b@@5) o)  (and (|Set#IsMember| a@@5 o) (not (|Set#IsMember| b@@5 o))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |5098|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@5 b@@5) o))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 Tclass.M3.Artifact) (M3.Artifact.ArtifactCons_q d@@1))
 :qid |unknown.0:0|
 :skolemid |6856|
 :pattern ( (M3.Artifact.ArtifactCons_q d@@1) ($Is DatatypeTypeType d@@1 Tclass.M3.Artifact))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass.M3.State) (M3.State.StateCons_q d@@2))
 :qid |unknown.0:0|
 :skolemid |6949|
 :pattern ( (M3.State.StateCons_q d@@2) ($Is DatatypeTypeType d@@2 Tclass.M3.State))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |5411|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (= (Ctor SetType) 6))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@0| T@U) ) (!  (=> (or (|M3.__default.DomSt#canCall| |st#0@@0|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@0| Tclass.M3.State))) (and (forall ((|p#0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |st#0@@0|) ($Box DatatypeTypeType |p#0|)) (|Set#IsMember| (|Map#Domain| (M3.State.m |st#0@@0|)) ($Box DatatypeTypeType |p#0|))))
 :qid |CloudMakeParallelBuildsdfy.441:20|
 :skolemid |6475|
 :pattern ( (|Set#IsMember| (|Map#Domain| (M3.State.m |st#0@@0|)) ($Box DatatypeTypeType |p#0|)))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@0|) ($Box DatatypeTypeType |p#0|)))
)) ($Is SetType (M3.__default.DomSt |st#0@@0|) (TSet Tclass.M3.Path))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |6476|
 :pattern ( (M3.__default.DomSt |st#0@@0|))
))))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (! (= (|M3.Artifact#Equal| a@@6 b@@6) (= a@@6 b@@6))
 :qid |unknown.0:0|
 :skolemid |6858|
 :pattern ( (|M3.Artifact#Equal| a@@6 b@@6))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (! (= (|M3.State#Equal| a@@7 b@@7) (= a@@7 b@@7))
 :qid |unknown.0:0|
 :skolemid |6951|
 :pattern ( (|M3.State#Equal| a@@7 b@@7))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4970|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@8 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@8 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |5243|
)) ($Is MapType (|Map#Glue| a@@8 b@@8 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |5244|
 :pattern ( (|Map#Glue| a@@8 b@@8 (TMap t0@@0 t1@@0)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@0| T@U) (|st#0@@1| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| |p#0@@0| |st#0@@1|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@0| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@1| Tclass.M3.State)) (|Set#IsMember| (M3.__default.DomSt |st#0@@1|) ($Box DatatypeTypeType |p#0@@0|))))) ($Is DatatypeTypeType (M3.__default.GetSt |p#0@@0| |st#0@@1|) Tclass.M3.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |6469|
 :pattern ( (M3.__default.GetSt |p#0@@0| |st#0@@1|))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |5412|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |5404|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (M3.Artifact.ArtifactCons_q d@@4) (= (DatatypeCtorId d@@4) |##M3.Artifact.ArtifactCons|))
 :qid |unknown.0:0|
 :skolemid |6847|
 :pattern ( (M3.Artifact.ArtifactCons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (M3.State.StateCons_q d@@5) (= (DatatypeCtorId d@@5) |##M3.State.StateCons|))
 :qid |unknown.0:0|
 :skolemid |6938|
 :pattern ( (M3.State.StateCons_q d@@5))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4981|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@9) (forall ((o@@0 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@0)) (not (|Set#IsMember| b@@9 o@@0)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |5106|
 :pattern ( (|Set#IsMember| a@@9 o@@0))
 :pattern ( (|Set#IsMember| b@@9 o@@0))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |5107|
 :pattern ( (|Set#Disjoint| a@@9 b@@9))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |5108|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@6) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@6 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |5405|
)))
 :qid |unknown.0:0|
 :skolemid |5406|
 :pattern ( (_System.Tuple2.___hMake2_q d@@6))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@1| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| |p#0@@1| |st#0@@2|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@1| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@2| Tclass.M3.State)) (|Set#IsMember| (M3.__default.DomSt |st#0@@2|) ($Box DatatypeTypeType |p#0@@1|))))) (and (M3.State.StateCons_q |st#0@@2|) (= (M3.__default.GetSt |p#0@@1| |st#0@@2|) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (M3.State.m |st#0@@2|)) ($Box DatatypeTypeType |p#0@@1|))))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |6471|
 :pattern ( (M3.__default.GetSt |p#0@@1| |st#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@3| T@U) ) (!  (=> (or (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@3|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@3| Tclass.M3.State))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@3|)) (= (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@3|)) (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Map#Domain| (M3.State.m (Lit DatatypeTypeType |st#0@@3|))))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :weight 3
 :skolemid |6479|
 :pattern ( (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@3|)))
))))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |5001|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |5002|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (M3.Artifact.ArtifactCons_q d@@7) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@7 (|#M3.Artifact.ArtifactCons| |a#1#0#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6848|
)))
 :qid |unknown.0:0|
 :skolemid |6849|
 :pattern ( (M3.Artifact.ArtifactCons_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (M3.State.StateCons_q d@@8) (exists ((|a#45#0#0| T@U) ) (! (= d@@8 (|#M3.State.StateCons| |a#45#0#0|))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6939|
)))
 :qid |unknown.0:0|
 :skolemid |6940|
 :pattern ( (M3.State.StateCons_q d@@8))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|M3.Artifact#Equal| a@@10 b@@10) (= (M3.Artifact._h11 a@@10) (M3.Artifact._h11 b@@10)))
 :qid |unknown.0:0|
 :skolemid |6857|
 :pattern ( (|M3.Artifact#Equal| a@@10 b@@10))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@2| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| (Lit DatatypeTypeType |p#0@@2|) (Lit DatatypeTypeType |st#0@@4|)) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@2| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@4| Tclass.M3.State)) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@4|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |p#0@@2|)))))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@4|)) (= (M3.__default.GetSt (Lit DatatypeTypeType |p#0@@2|) (Lit DatatypeTypeType |st#0@@4|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.State.m (Lit DatatypeTypeType |st#0@@4|)))) ($Box DatatypeTypeType (Lit DatatypeTypeType |p#0@@2|)))))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |6473|
 :pattern ( (M3.__default.GetSt (Lit DatatypeTypeType |p#0@@2|) (Lit DatatypeTypeType |st#0@@4|)))
))))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4994|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M3.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.M3.State)))
 :qid |unknown.0:0|
 :skolemid |5654|
 :pattern ( ($IsBox bx@@2 Tclass.M3.State))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M3.Path) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.M3.Path)))
 :qid |unknown.0:0|
 :skolemid |5655|
 :pattern ( ($IsBox bx@@3 Tclass.M3.Path))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M3.Artifact) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass.M3.Artifact)))
 :qid |unknown.0:0|
 :skolemid |5659|
 :pattern ( ($IsBox bx@@4 Tclass.M3.Artifact))
)))
(assert (forall ((|a#50#0#0| T@U) (bx@@5 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#50#0#0|) bx@@5) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#50#0#0|) bx@@5))) (DtRank (|#M3.State.StateCons| |a#50#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6946|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#50#0#0|) bx@@5) (|#M3.State.StateCons| |a#50#0#0|))
)))
(assert (forall ((m@@2 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@2 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@2) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |5252|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@2) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@2) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |5253|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |5254|
 :pattern ( (|Map#Equal| m@@2 |m'|))
)))
(assert (forall ((a@@11 T@U) (b@@11 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@11 b@@11) o@@1)  (or (|Set#IsMember| a@@11 o@@1) (|Set#IsMember| b@@11 o@@1)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |5088|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@11 b@@11) o@@1))
)))
(assert (forall ((a@@12 T@U) (b@@12 T@U) ) (!  (=> (|Set#Disjoint| a@@12 b@@12) (and (= (|Set#Difference| (|Set#Union| a@@12 b@@12) a@@12) b@@12) (= (|Set#Difference| (|Set#Union| a@@12 b@@12) b@@12) a@@12)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |5091|
 :pattern ( (|Set#Union| a@@12 b@@12))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#1| |l#0@@0| |l#1@@0| |l#2|) |$w#0@@0|) ($Box DatatypeTypeType (M3.__default.GetSt ($Unbox DatatypeTypeType |$w#0@@0|) (ite (|Set#IsMember| |l#0@@0| |$w#0@@0|) |l#1@@0| |l#2|))))
 :qid |CloudMakeParallelBuildsdfy.770:71|
 :skolemid |7205|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#1| |l#0@@0| |l#1@@0| |l#2|) |$w#0@@0|))
)))
(assert (forall ((a@@13 T@U) (b@@13 T@U) ) (!  (=> (|Set#Equal| a@@13 b@@13) (= a@@13 b@@13))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |5105|
 :pattern ( (|Set#Equal| a@@13 b@@13))
)))
(assert (forall ((m@@3 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@3 |m'@@0|) (= m@@3 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |5255|
 :pattern ( (|Map#Equal| m@@3 |m'@@0|))
)))
(assert (forall ((|a#46#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.State.StateCons| |a#46#0#0|) Tclass.M3.State) ($Is MapType |a#46#0#0| (TMap Tclass.M3.Path Tclass.M3.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6941|
 :pattern ( ($Is DatatypeTypeType (|#M3.State.StateCons| |a#46#0#0|) Tclass.M3.State))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |4982|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4993|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@7) ($IsAllocBox bx@@7 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |5022|
 :pattern ( (|Set#IsMember| v@@2 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |5023|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@3 u@@1)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |4964|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((t@@4 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |4965|
 :pattern ( (TMap t@@4 u@@2))
)))
(assert (forall ((t@@5 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@5 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |4966|
 :pattern ( (TMap t@@5 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |5403|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |5408|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |5409|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |5418|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |5420|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@5| T@U) (|st'#0| T@U) ) (!  (=> (or (|M3.__default.Union#canCall| |st#0@@5| |st'#0|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@5| Tclass.M3.State) ($Is DatatypeTypeType |st'#0| Tclass.M3.State)))) (and (let ((|result#0| (M3.__default.Union |st#0@@5| |st'#0|)))
 (and (|Set#Equal| (M3.__default.DomSt |result#0|) (|Set#Union| (M3.__default.DomSt |st#0@@5|) (M3.__default.DomSt |st'#0|))) (forall ((|p#0@@3| T@U) ) (!  (=> ($Is DatatypeTypeType |p#0@@3| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |result#0|) ($Box DatatypeTypeType |p#0@@3|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#0@@3| |result#0|) (M3.__default.GetSt |p#0@@3| (ite (|Set#IsMember| (M3.__default.DomSt |st#0@@5|) ($Box DatatypeTypeType |p#0@@3|)) |st#0@@5| |st'#0|)))))
 :qid |CloudMakeParallelBuildsdfy.27:14|
 :skolemid |5656|
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@5|) ($Box DatatypeTypeType |p#0@@3|)))
 :pattern ( (M3.__default.GetSt |p#0@@3| |result#0|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |result#0|) ($Box DatatypeTypeType |p#0@@3|)))
)))) ($Is DatatypeTypeType (M3.__default.Union |st#0@@5| |st'#0|) Tclass.M3.State)))
 :qid |CloudMakeParallelBuildsdfy.23:24|
 :skolemid |5657|
 :pattern ( (M3.__default.Union |st#0@@5| |st'#0|))
))))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |4956|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |4957|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#M3.Artifact.ArtifactCons| |a#0#0#0@@0|)) |##M3.Artifact.ArtifactCons|)
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6846|
 :pattern ( (|#M3.Artifact.ArtifactCons| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (M3.Artifact._h11 (|#M3.Artifact.ArtifactCons| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6853|
 :pattern ( (|#M3.Artifact.ArtifactCons| |a#4#0#0@@0|))
)))
(assert (forall ((|a#44#0#0| T@U) ) (! (= (DatatypeCtorId (|#M3.State.StateCons| |a#44#0#0|)) |##M3.State.StateCons|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6937|
 :pattern ( (|#M3.State.StateCons| |a#44#0#0|))
)))
(assert (forall ((|a#48#0#0| T@U) ) (! (= (M3.State.m (|#M3.State.StateCons| |a#48#0#0|)) |a#48#0#0|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6944|
 :pattern ( (|#M3.State.StateCons| |a#48#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4980|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (t1@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MapType v@@3 (TMap t0@@3 t1@@1) h@@1) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@8) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@8) t1@@1 h@@1) ($IsAllocBox bx@@8 t0@@3 h@@1)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |5030|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@8))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@8))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |5031|
 :pattern ( ($IsAlloc MapType v@@3 (TMap t0@@3 t1@@1) h@@1))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |5419|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |5421|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|p#0@@4| T@U) (|st#0@@6| T@U) ) (!  (=> (or (|M3.__default.GetSt#canCall| |p#0@@4| (Lit DatatypeTypeType |st#0@@6|)) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |p#0@@4| Tclass.M3.Path) ($Is DatatypeTypeType |st#0@@6| Tclass.M3.State)) (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@6|))) ($Box DatatypeTypeType |p#0@@4|))))) (and (M3.State.StateCons_q (Lit DatatypeTypeType |st#0@@6|)) (= (M3.__default.GetSt |p#0@@4| (Lit DatatypeTypeType |st#0@@6|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M3.State.m (Lit DatatypeTypeType |st#0@@6|)))) ($Box DatatypeTypeType |p#0@@4|))))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |6472|
 :pattern ( (M3.__default.GetSt |p#0@@4| (Lit DatatypeTypeType |st#0@@6|)))
))))
(assert (forall ((a@@14 T@U) (b@@14 T@U) ) (! (= (|Set#Union| a@@14 (|Set#Union| a@@14 b@@14)) (|Set#Union| a@@14 b@@14))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |5094|
 :pattern ( (|Set#Union| a@@14 (|Set#Union| a@@14 b@@14)))
)))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |5240|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((|a#2#0#0@@1| Int) ) (! (= ($Is DatatypeTypeType (|#M3.Artifact.ArtifactCons| |a#2#0#0@@1|) Tclass.M3.Artifact) ($Is intType (int_2_U |a#2#0#0@@1|) TInt))
 :qid |CloudMakeParallelBuildsdfy.780:36|
 :skolemid |6850|
 :pattern ( ($Is DatatypeTypeType (|#M3.Artifact.ArtifactCons| |a#2#0#0@@1|) Tclass.M3.Artifact))
)))
(assert (forall ((bx@@9 T@U) (s T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@9 (TMap s t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@9)) bx@@9) ($Is MapType ($Unbox MapType bx@@9) (TMap s t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |4991|
 :pattern ( ($IsBox bx@@9 (TMap s t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |5410|
 :pattern ( ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@4 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@4 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@2 t2 (MapType1Store t0@@4 t1@@2 t2 m@@4 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@5 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@5 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@5 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@6 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@6 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@6 y0@@1 y1@@0)))
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
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@1| |l#1@@1| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7206|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@1| |l#1@@1| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((a@@15 T@U) (b@@15 T@U) ) (! (= (|M3.State#Equal| a@@15 b@@15) (|Map#Equal| (M3.State.m a@@15) (M3.State.m b@@15)))
 :qid |unknown.0:0|
 :skolemid |6950|
 :pattern ( (|M3.State#Equal| a@@15 b@@15))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |5407|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@9 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (M3.Artifact.ArtifactCons_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass.M3.Artifact $h@@1))) ($IsAlloc intType (int_2_U (M3.Artifact._h11 d@@9)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |6851|
 :pattern ( ($IsAlloc intType (int_2_U (M3.Artifact._h11 d@@9)) TInt $h@@1))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@7) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |5228|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |5229|
 :pattern ( (|Map#Domain| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((v@@4 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@8) v@@4)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |5230|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |5231|
 :pattern ( (|Map#Values| m@@8))
)))
(assert (forall ((m@@9 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@9) item)  (and (|Set#IsMember| (|Map#Domain| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |5239|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@9) item))
)))
(assert (forall ((m@@10 T@U) (v@@5 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@10) v@@5) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@10) u@@5) (= v@@5 (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |5237|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@10) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |5238|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@10) v@@5))
)))
(assert (forall ((d@@10 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@10)) (DtRank d@@10))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |5039|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@10)))
)))
(assert (forall ((bx@@11 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |4987|
 :pattern ( ($IsBox bx@@11 (TSet t@@9)))
)))
(assert (forall ((v@@6 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@6 (TMap t0@@5 t1@@3)) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@12) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@12) t1@@3) ($IsBox bx@@12 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |5010|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@12))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |5011|
 :pattern ( ($Is MapType v@@6 (TMap t0@@5 t1@@3)))
)))
(assert (forall ((d@@11 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@11 Tclass.M3.Artifact)) ($IsAlloc DatatypeTypeType d@@11 Tclass.M3.Artifact $h@@2))
 :qid |unknown.0:0|
 :skolemid |6854|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 Tclass.M3.Artifact $h@@2))
)))
(assert (forall ((d@@12 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) ($Is DatatypeTypeType d@@12 Tclass.M3.Path)) ($IsAlloc DatatypeTypeType d@@12 Tclass.M3.Path $h@@3))
 :qid |unknown.0:0|
 :skolemid |6899|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 Tclass.M3.Path $h@@3))
)))
(assert (forall ((d@@13 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) ($Is DatatypeTypeType d@@13 Tclass.M3.State)) ($IsAlloc DatatypeTypeType d@@13 Tclass.M3.State $h@@4))
 :qid |unknown.0:0|
 :skolemid |6947|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 Tclass.M3.State $h@@4))
)))
(assert (= (Tag Tclass.M3.State) Tagclass.M3.State))
(assert (= (TagFamily Tclass.M3.State) tytagFamily$State))
(assert (= (Tag Tclass.M3.Path) Tagclass.M3.Path))
(assert (= (TagFamily Tclass.M3.Path) tytagFamily$Path))
(assert (= (Tag Tclass.M3.Artifact) Tagclass.M3.Artifact))
(assert (= (TagFamily Tclass.M3.Artifact) tytagFamily$Artifact))
(assert (forall ((a@@16 T@U) (b@@16 T@U) ) (! (= (|Set#Equal| a@@16 b@@16) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@16 o@@2) (|Set#IsMember| b@@16 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |5103|
 :pattern ( (|Set#IsMember| a@@16 o@@2))
 :pattern ( (|Set#IsMember| b@@16 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |5104|
 :pattern ( (|Set#Equal| a@@16 b@@16))
)))
(assert (forall ((d@@14 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@14) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |5413|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._0 d@@14) |_System._tuple#2$T0@@6| $h@@5))
 :qid |unknown.0:0|
 :skolemid |5414|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@14) |_System._tuple#2$T0@@6| $h@@5))
)))
(assert (forall ((d@@15 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple2.___hMake2_q d@@15) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |5415|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@6))
)))) ($IsAllocBox (_System.Tuple2._1 d@@15) |_System._tuple#2$T1@@7| $h@@6))
 :qid |unknown.0:0|
 :skolemid |5416|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@15) |_System._tuple#2$T1@@7| $h@@6))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@7| T@U) (|st'#0@@0| T@U) ) (!  (=> (or (|M3.__default.Union#canCall| |st#0@@7| |st'#0@@0|) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@7| Tclass.M3.State) ($Is DatatypeTypeType |st'#0@@0| Tclass.M3.State)))) (and (forall ((|p#1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1| Tclass.M3.Path) (and (and (|M3.__default.DomSt#canCall| |st#0@@7|) (|M3.__default.DomSt#canCall| |st'#0@@0|)) (=> (|Set#IsMember| (|Set#Union| (M3.__default.DomSt |st#0@@7|) (M3.__default.DomSt |st'#0@@0|)) ($Box DatatypeTypeType |p#1|)) (and (|M3.__default.DomSt#canCall| |st#0@@7|) (|M3.__default.GetSt#canCall| |p#1| (ite (|Set#IsMember| (M3.__default.DomSt |st#0@@7|) ($Box DatatypeTypeType |p#1|)) |st#0@@7| |st'#0@@0|))))))
 :qid |CloudMakeParallelBuildsdfy.770:19|
 :skolemid |5660|
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@7|) ($Box DatatypeTypeType |p#1|)))
 :pattern ( (|Set#IsMember| (|Set#Union| (M3.__default.DomSt |st#0@@7|) (M3.__default.DomSt |st'#0@@0|)) ($Box DatatypeTypeType |p#1|)))
)) (= (M3.__default.Union |st#0@@7| |st'#0@@0|) (|#M3.State.StateCons| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Set#Union| (M3.__default.DomSt |st#0@@7|) (M3.__default.DomSt |st'#0@@0|)))) (|lambda#1| (M3.__default.DomSt |st#0@@7|) |st#0@@7| |st'#0@@0|) (TMap Tclass.M3.Path Tclass.M3.Artifact))))))
 :qid |CloudMakeParallelBuildsdfy.23:24|
 :skolemid |5661|
 :pattern ( (M3.__default.Union |st#0@@7| |st'#0@@0|))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((|st#0@@8| T@U) (|st'#0@@1| T@U) ) (!  (=> (or (|M3.__default.Union#canCall| (Lit DatatypeTypeType |st#0@@8|) (Lit DatatypeTypeType |st'#0@@1|)) (and (< 4 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@8| Tclass.M3.State) ($Is DatatypeTypeType |st'#0@@1| Tclass.M3.State)))) (and (forall ((|p#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@0| Tclass.M3.Path) (and (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@8|)) (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@1|))) (=> (|Set#IsMember| (|Set#Union| (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@8|)) (M3.__default.DomSt (Lit DatatypeTypeType |st'#0@@1|))) ($Box DatatypeTypeType |p#1@@0|)) (and (|M3.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@8|)) (|M3.__default.GetSt#canCall| |p#1@@0| (ite (|Set#IsMember| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@8|))) ($Box DatatypeTypeType |p#1@@0|)) |st#0@@8| |st'#0@@1|))))))
 :qid |CloudMakeParallelBuildsdfy.770:19|
 :skolemid |5662|
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@8|) ($Box DatatypeTypeType |p#1@@0|)))
 :pattern ( (|Set#IsMember| (|Set#Union| (M3.__default.DomSt |st#0@@8|) (M3.__default.DomSt |st'#0@@1|)) ($Box DatatypeTypeType |p#1@@0|)))
)) (= (M3.__default.Union (Lit DatatypeTypeType |st#0@@8|) (Lit DatatypeTypeType |st'#0@@1|)) (|#M3.State.StateCons| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Set#Union| (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@8|)) (M3.__default.DomSt (Lit DatatypeTypeType |st'#0@@1|))))) (|lambda#1| (Lit SetType (M3.__default.DomSt (Lit DatatypeTypeType |st#0@@8|))) |st#0@@8| |st'#0@@1|) (TMap Tclass.M3.Path Tclass.M3.Artifact))))))
 :qid |CloudMakeParallelBuildsdfy.23:24|
 :weight 3
 :skolemid |5663|
 :pattern ( (M3.__default.Union (Lit DatatypeTypeType |st#0@@8|) (Lit DatatypeTypeType |st'#0@@1|)))
))))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |5417|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#47#0#0| T@U) ) (! (= (|#M3.State.StateCons| (Lit MapType |a#47#0#0|)) (Lit DatatypeTypeType (|#M3.State.StateCons| |a#47#0#0|)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6943|
 :pattern ( (|#M3.State.StateCons| (Lit MapType |a#47#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4971|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((|a#49#0#0| T@U) (d@@16 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#49#0#0|) ($Box DatatypeTypeType d@@16)) (< (DtRank d@@16) (DtRank (|#M3.State.StateCons| |a#49#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |6945|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#49#0#0|) ($Box DatatypeTypeType d@@16)) (|#M3.State.StateCons| |a#49#0#0|))
)))
(assert (forall ((h@@2 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |5016|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@2))
)))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@0 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@8)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |5232|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |5233|
 :pattern ( (|Map#Items| m@@11))
)))
(assert (forall ((v@@9 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@9 (TMap t0@@6 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@9) (TSet t0@@6)) ($Is SetType (|Map#Values| v@@9) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@9) (TSet (Tclass._System.Tuple2 t0@@6 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |5012|
 :pattern ( ($Is MapType v@@9 (TMap t0@@6 t1@@4)))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4995|
 :pattern ( ($Is intType v@@10 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |##st#6@0| () T@U)
(declare-fun |st#0@@9| () T@U)
(declare-fun |p#3@0| () T@U)
(declare-fun |st'#0@@2| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |result#Z#0@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |##st#10@0| () T@U)
(declare-fun |p#4@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M3.__default.Union)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon10_correct true))
(let ((anon8_correct  (=> (and (= |##st#6@0| (ite (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#3@0|)) |st#0@@9| |st'#0@@2|)) ($IsAlloc DatatypeTypeType |##st#6@0| Tclass.M3.State $Heap)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (|Set#IsMember| (M3.__default.DomSt |##st#6@0|) ($Box DatatypeTypeType |p#3@0|))) (=> (and (and (|Set#IsMember| (M3.__default.DomSt |##st#6@0|) ($Box DatatypeTypeType |p#3@0|)) (|M3.__default.GetSt#canCall| |p#3@0| (ite (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#3@0|)) |st#0@@9| |st'#0@@2|))) (and (M3.Artifact.ArtifactCons_q (M3.__default.GetSt |p#3@0| (ite (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#3@0|)) |st#0@@9| |st'#0@@2|))) (= (ControlFlow 0 17) 13))) anon10_correct)))))
(let ((anon23_Else_correct  (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#3@0|))) (= (ControlFlow 0 20) 17)) anon8_correct)))
(let ((anon23_Then_correct  (=> (and (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#3@0|)) (= (ControlFlow 0 19) 17)) anon8_correct)))
(let ((anon22_Then_correct  (=> (|Set#IsMember| (M3.__default.DomSt |result#Z#0@0|) ($Box DatatypeTypeType |p#3@0|)) (=> (and ($IsAlloc DatatypeTypeType |p#3@0| Tclass.M3.Path $Heap) ($IsAlloc DatatypeTypeType |result#Z#0@0| Tclass.M3.State $Heap)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (|Set#IsMember| (M3.__default.DomSt |result#Z#0@0|) ($Box DatatypeTypeType |p#3@0|))) (=> (and (|Set#IsMember| (M3.__default.DomSt |result#Z#0@0|) ($Box DatatypeTypeType |p#3@0|)) (|M3.__default.GetSt#canCall| |p#3@0| |result#Z#0@0|)) (=> (and (and (M3.Artifact.ArtifactCons_q (M3.__default.GetSt |p#3@0| |result#Z#0@0|)) ($IsAlloc DatatypeTypeType |p#3@0| Tclass.M3.Path $Heap)) (and ($IsAlloc DatatypeTypeType |st#0@@9| Tclass.M3.State $Heap) (|M3.__default.DomSt#canCall| |st#0@@9|))) (and (=> (= (ControlFlow 0 21) 19) anon23_Then_correct) (=> (= (ControlFlow 0 21) 20) anon23_Else_correct)))))))))
(let ((anon22_Else_correct  (=> (and (not (|Set#IsMember| (M3.__default.DomSt |result#Z#0@0|) ($Box DatatypeTypeType |p#3@0|))) (= (ControlFlow 0 16) 13)) anon10_correct)))
(let ((anon21_Then_correct  (=> (and (and ($Is DatatypeTypeType |p#3@0| Tclass.M3.Path) ($IsAlloc DatatypeTypeType |p#3@0| Tclass.M3.Path $Heap)) (and ($IsAlloc DatatypeTypeType |result#Z#0@0| Tclass.M3.State $Heap) (|M3.__default.DomSt#canCall| |result#Z#0@0|))) (and (=> (= (ControlFlow 0 23) 21) anon22_Then_correct) (=> (= (ControlFlow 0 23) 16) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |p#3@0| Tclass.M3.Path) ($IsAlloc DatatypeTypeType |p#3@0| Tclass.M3.Path $Heap))) (= (ControlFlow 0 15) 13)) anon10_correct)))
(let ((anon20_Then_correct  (=> (|Set#Equal| (M3.__default.DomSt |result#Z#0@0|) (|Set#Union| (M3.__default.DomSt |st#0@@9|) (M3.__default.DomSt |st'#0@@2|))) (and (=> (= (ControlFlow 0 24) 23) anon21_Then_correct) (=> (= (ControlFlow 0 24) 15) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (and (not (|Set#Equal| (M3.__default.DomSt |result#Z#0@0|) (|Set#Union| (M3.__default.DomSt |st#0@@9|) (M3.__default.DomSt |st'#0@@2|)))) (= (ControlFlow 0 14) 13)) anon10_correct)))
(let ((anon19_Then_correct  (=> ($Is DatatypeTypeType (M3.__default.Union |st#0@@9| |st'#0@@2|) Tclass.M3.State) (=> (and ($IsAlloc DatatypeTypeType |st#0@@9| Tclass.M3.State $Heap) ($IsAlloc DatatypeTypeType |st'#0@@2| Tclass.M3.State $Heap)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (and (|M3.State#Equal| |st#0@@9| |st#0@@9|) (|M3.State#Equal| |st'#0@@2| |st'#0@@2|)) (or (< (DtRank |st#0@@9|) (DtRank |st#0@@9|)) (and (= (DtRank |st#0@@9|) (DtRank |st#0@@9|)) (< (DtRank |st'#0@@2|) (DtRank |st'#0@@2|)))))) (=> (or (and (|M3.State#Equal| |st#0@@9| |st#0@@9|) (|M3.State#Equal| |st'#0@@2| |st'#0@@2|)) (or (< (DtRank |st#0@@9|) (DtRank |st#0@@9|)) (and (= (DtRank |st#0@@9|) (DtRank |st#0@@9|)) (< (DtRank |st'#0@@2|) (DtRank |st'#0@@2|))))) (=> (and (and (or (and (|M3.State#Equal| |st#0@@9| |st#0@@9|) (|M3.State#Equal| |st'#0@@2| |st'#0@@2|)) (|M3.__default.Union#canCall| |st#0@@9| |st'#0@@2|)) (M3.State.StateCons_q (M3.__default.Union |st#0@@9| |st'#0@@2|))) (and (= |let#0#0#0| (M3.__default.Union |st#0@@9| |st'#0@@2|)) (|M3.__default.Union#canCall| |st#0@@9| |st'#0@@2|))) (=> (and (and (and ($Is DatatypeTypeType |let#0#0#0| Tclass.M3.State) (= |result#Z#0@0| |let#0#0#0|)) (and ($IsAlloc DatatypeTypeType |result#Z#0@0| Tclass.M3.State $Heap) (|M3.__default.DomSt#canCall| |result#Z#0@0|))) (and (and ($IsAlloc DatatypeTypeType |st#0@@9| Tclass.M3.State $Heap) (|M3.__default.DomSt#canCall| |st#0@@9|)) (and ($IsAlloc DatatypeTypeType |st'#0@@2| Tclass.M3.State $Heap) (|M3.__default.DomSt#canCall| |st'#0@@2|)))) (and (=> (= (ControlFlow 0 25) 24) anon20_Then_correct) (=> (= (ControlFlow 0 25) 14) anon20_Else_correct))))))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (let ((|result#1| (M3.__default.Union |st#0@@9| |st'#0@@2|)))
(|Set#Equal| (M3.__default.DomSt |result#1|) (|Set#Union| (M3.__default.DomSt |st#0@@9|) (M3.__default.DomSt |st'#0@@2|))))) (=> (let ((|result#1@@0| (M3.__default.Union |st#0@@9| |st'#0@@2|)))
(|Set#Equal| (M3.__default.DomSt |result#1@@0|) (|Set#Union| (M3.__default.DomSt |st#0@@9|) (M3.__default.DomSt |st'#0@@2|)))) (=> (= (ControlFlow 0 2) (- 0 1)) (let ((|result#1@@1| (M3.__default.Union |st#0@@9| |st'#0@@2|)))
(forall ((|p#2| T@U) ) (!  (=> ($Is DatatypeTypeType |p#2| Tclass.M3.Path) (=> (|Set#IsMember| (M3.__default.DomSt |result#1@@1|) ($Box DatatypeTypeType |p#2|)) (|M3.Artifact#Equal| (M3.__default.GetSt |p#2| |result#1@@1|) (M3.__default.GetSt |p#2| (ite (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#2|)) |st#0@@9| |st'#0@@2|)))))
 :qid |CloudMakeParallelBuildsdfy.27:14|
 :skolemid |5664|
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#2|)))
 :pattern ( (M3.__default.GetSt |p#2| |result#1@@1|))
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |result#1@@1|) ($Box DatatypeTypeType |p#2|)))
))))))))
(let ((anon17_correct  (=> (and (and (= (M3.__default.Union |st#0@@9| |st'#0@@2|) (|#M3.State.StateCons| (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| Tclass.M3.Path (|Set#Union| (M3.__default.DomSt |st#0@@9|) (M3.__default.DomSt |st'#0@@2|)))) (|lambda#1| (M3.__default.DomSt |st#0@@9|) |st#0@@9| |st'#0@@2|) (TMap Tclass.M3.Path Tclass.M3.Artifact)))) (forall ((|p#1@@1| T@U) ) (!  (=> ($Is DatatypeTypeType |p#1@@1| Tclass.M3.Path) (and (and (|M3.__default.DomSt#canCall| |st#0@@9|) (|M3.__default.DomSt#canCall| |st'#0@@2|)) (=> (|Set#IsMember| (|Set#Union| (M3.__default.DomSt |st#0@@9|) (M3.__default.DomSt |st'#0@@2|)) ($Box DatatypeTypeType |p#1@@1|)) (and (|M3.__default.DomSt#canCall| |st#0@@9|) (|M3.__default.GetSt#canCall| |p#1@@1| (ite (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#1@@1|)) |st#0@@9| |st'#0@@2|))))))
 :qid |CloudMakeParallelBuildsdfy.770:19|
 :skolemid |5670|
 :pattern ( (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#1@@1|)))
 :pattern ( (|Set#IsMember| (|Set#Union| (M3.__default.DomSt |st#0@@9|) (M3.__default.DomSt |st'#0@@2|)) ($Box DatatypeTypeType |p#1@@1|)))
))) (and ($Is DatatypeTypeType (M3.__default.Union |st#0@@9| |st'#0@@2|) Tclass.M3.State) (= (ControlFlow 0 4) 2))) GeneratedUnifiedExit_correct)))
(let ((anon16_correct  (=> (and (= |##st#10@0| (ite (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#4@0|)) |st#0@@9| |st'#0@@2|)) ($IsAlloc DatatypeTypeType |##st#10@0| Tclass.M3.State $Heap)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (|Set#IsMember| (M3.__default.DomSt |##st#10@0|) ($Box DatatypeTypeType |p#4@0|))) (=> (and (and (|Set#IsMember| (M3.__default.DomSt |##st#10@0|) ($Box DatatypeTypeType |p#4@0|)) (|M3.__default.GetSt#canCall| |p#4@0| (ite (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#4@0|)) |st#0@@9| |st'#0@@2|))) (and (M3.Artifact.ArtifactCons_q (M3.__default.GetSt |p#4@0| (ite (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#4@0|)) |st#0@@9| |st'#0@@2|))) (= (ControlFlow 0 7) 4))) anon17_correct)))))
(let ((anon26_Else_correct  (=> (and (not (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#4@0|))) (= (ControlFlow 0 10) 7)) anon16_correct)))
(let ((anon26_Then_correct  (=> (and (|Set#IsMember| (M3.__default.DomSt |st#0@@9|) ($Box DatatypeTypeType |p#4@0|)) (= (ControlFlow 0 9) 7)) anon16_correct)))
(let ((anon25_Then_correct  (=> (and (and (|Set#IsMember| (|Set#Union| (M3.__default.DomSt |st#0@@9|) (M3.__default.DomSt |st'#0@@2|)) ($Box DatatypeTypeType |p#4@0|)) ($IsAlloc DatatypeTypeType |p#4@0| Tclass.M3.Path $Heap)) (and ($IsAlloc DatatypeTypeType |st#0@@9| Tclass.M3.State $Heap) (|M3.__default.DomSt#canCall| |st#0@@9|))) (and (=> (= (ControlFlow 0 11) 9) anon26_Then_correct) (=> (= (ControlFlow 0 11) 10) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (and (not (|Set#IsMember| (|Set#Union| (M3.__default.DomSt |st#0@@9|) (M3.__default.DomSt |st'#0@@2|)) ($Box DatatypeTypeType |p#4@0|))) (= (ControlFlow 0 6) 4)) anon17_correct)))
(let ((anon24_Then_correct  (=> (and ($Is DatatypeTypeType |p#4@0| Tclass.M3.Path) ($IsAlloc DatatypeTypeType |p#4@0| Tclass.M3.Path $Heap)) (=> (and (and ($IsAlloc DatatypeTypeType |st#0@@9| Tclass.M3.State $Heap) (|M3.__default.DomSt#canCall| |st#0@@9|)) (and ($IsAlloc DatatypeTypeType |st'#0@@2| Tclass.M3.State $Heap) (|M3.__default.DomSt#canCall| |st'#0@@2|))) (and (=> (= (ControlFlow 0 12) 11) anon25_Then_correct) (=> (= (ControlFlow 0 12) 6) anon25_Else_correct))))))
(let ((anon24_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |p#4@0| Tclass.M3.Path) ($IsAlloc DatatypeTypeType |p#4@0| Tclass.M3.Path $Heap))) (= (ControlFlow 0 5) 4)) anon17_correct)))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#4| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 27) 25) anon19_Then_correct) (=> (= (ControlFlow 0 27) 12) anon24_Then_correct)) (=> (= (ControlFlow 0 27) 5) anon24_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |st#0@@9| Tclass.M3.State) ($Is DatatypeTypeType |st'#0@@2| Tclass.M3.State)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 28) 27))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
