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
(declare-fun Tagclass.M1.State () T@U)
(declare-fun |##M1.State.StateCons| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$State () T@U)
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
(declare-fun M1.State.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M1.Path () T@U)
(declare-fun Tclass.M1.Artifact () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun M1.State.StateCons_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M1.State () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M1.__default.GetSt (T@U T@U) T@U)
(declare-fun |M1.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun M1.__default.DomSt (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |M1.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#1| (T@U T@U) T@U)
(declare-fun |$IsA#M1.State| (T@U) Bool)
(declare-fun $AlwaysAllocated (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun M1.__default.Oracle (T@U T@U) T@U)
(declare-fun |M1.__default.Oracle#canCall| (T@U T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#M1.State.StateCons| (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun M1.__default.Extends (T@U T@U) Bool)
(declare-fun |M1.__default.Extends#canCall| (T@U T@U) Bool)
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
(assert (distinct TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.M1.State |##M1.State.StateCons| |tytagFamily$_tuple#2| tytagFamily$State)
)
(assert  (and (= (Ctor MapType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M1.State.StateCons_q d) ($IsAlloc DatatypeTypeType d Tclass.M1.State $h))) ($IsAlloc MapType (M1.State.m d) (TMap Tclass.M1.Path Tclass.M1.Artifact) $h))
 :qid |unknown.0:0|
 :skolemid |2524|
 :pattern ( ($IsAlloc MapType (M1.State.m d) (TMap Tclass.M1.Path Tclass.M1.Artifact) $h))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0| T@U) (|st#0| T@U) ) (!  (=> (or (|M1.__default.GetSt#canCall| |p#0| |st#0|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0| Tclass.M1.Path) ($Is DatatypeTypeType |st#0| Tclass.M1.State)) (|Set#IsMember| (M1.__default.DomSt |st#0|) |p#0|)))) (and (M1.State.StateCons_q |st#0|) (= (M1.__default.GetSt |p#0| |st#0|) (MapType0Select BoxType BoxType (|Map#Elements| (M1.State.m |st#0|)) |p#0|))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |2087|
 :pattern ( (M1.__default.GetSt |p#0| |st#0|))
))))
(assert (= (Ctor SetType) 6))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@0| T@U) ) (!  (=> (or (|M1.__default.DomSt#canCall| |st#0@@0|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@0| Tclass.M1.State))) (and (forall ((|p#0@@0| T@U) ) (!  (=> ($IsBox |p#0@@0| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@0|) |p#0@@0|) (|Set#IsMember| (|Map#Domain| (M1.State.m |st#0@@0|)) |p#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.441:20|
 :skolemid |2091|
 :pattern ( (|Set#IsMember| (|Map#Domain| (M1.State.m |st#0@@0|)) |p#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@0|) |p#0@@0|))
)) ($Is SetType (M1.__default.DomSt |st#0@@0|) (TSet Tclass.M1.Path))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |2092|
 :pattern ( (M1.__default.DomSt |st#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@1| T@U) ) (!  (=> (or (|M1.__default.DomSt#canCall| |st#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@1| Tclass.M1.State))) (and (M1.State.StateCons_q |st#0@@1|) (= (M1.__default.DomSt |st#0@@1|) (|Set#FromBoogieMap| (|lambda#1| Tclass.M1.Path (|Map#Domain| (M1.State.m |st#0@@1|)))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |2094|
 :pattern ( (M1.__default.DomSt |st#0@@1|))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#M1.State| d@@0) (M1.State.StateCons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |2529|
 :pattern ( (|$IsA#M1.State| d@@0))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Set#IsMember| |l#1| |$y#0|)))
 :qid |CloudMakeParallelBuildsdfy.153:8|
 :skolemid |7203|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#0|))
)))
(assert ($AlwaysAllocated Tclass.M1.Path))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@1))
 :qid |unknown.0:0|
 :skolemid |1852|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@1| T@U) (|st#0@@2| T@U) ) (!  (=> (or (|M1.__default.GetSt#canCall| (Lit BoxType |p#0@@1|) (Lit DatatypeTypeType |st#0@@2|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@1| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@2| Tclass.M1.State)) (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@2|))) (Lit BoxType |p#0@@1|))))) (and (M1.State.StateCons_q (Lit DatatypeTypeType |st#0@@2|)) (= (M1.__default.GetSt (Lit BoxType |p#0@@1|) (Lit DatatypeTypeType |st#0@@2|)) (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M1.State.m (Lit DatatypeTypeType |st#0@@2|)))) (Lit BoxType |p#0@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |2089|
 :pattern ( (M1.__default.GetSt (Lit BoxType |p#0@@1|) (Lit DatatypeTypeType |st#0@@2|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@2| T@U) (|st#0@@3| T@U) ) (!  (=> (or (|M1.__default.Oracle#canCall| |p#0@@2| |st#0@@3|) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@2| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@3| Tclass.M1.State)))) ($IsBox (M1.__default.Oracle |p#0@@2| |st#0@@3|) Tclass.M1.Artifact))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |2268|
 :pattern ( (M1.__default.Oracle |p#0@@2| |st#0@@3|))
))))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass.M1.State) (M1.State.StateCons_q d@@2))
 :qid |unknown.0:0|
 :skolemid |2530|
 :pattern ( (M1.State.StateCons_q d@@2) ($Is DatatypeTypeType d@@2 Tclass.M1.State))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1840|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@3| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|M1.__default.GetSt#canCall| |p#0@@3| |st#0@@4|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@3| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@4| Tclass.M1.State)) (|Set#IsMember| (M1.__default.DomSt |st#0@@4|) |p#0@@3|)))) ($IsBox (M1.__default.GetSt |p#0@@3| |st#0@@4|) Tclass.M1.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |2084|
 :pattern ( (M1.__default.GetSt |p#0@@3| |st#0@@4|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (|p#0@@4| T@U) (|st#0@@5| T@U) ) (!  (=> (and (or (|M1.__default.GetSt#canCall| |p#0@@4| |st#0@@5|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@4| Tclass.M1.Path) ($IsAllocBox |p#0@@4| Tclass.M1.Path $Heap)) (and ($Is DatatypeTypeType |st#0@@5| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@5| Tclass.M1.State $Heap))) (|Set#IsMember| (M1.__default.DomSt |st#0@@5|) |p#0@@4|)))) ($IsGoodHeap $Heap)) ($IsAllocBox (M1.__default.GetSt |p#0@@4| |st#0@@5|) Tclass.M1.Artifact $Heap))
 :qid |CloudMakeParallelBuildsdfy.435:18|
 :skolemid |2085|
 :pattern ( ($IsAllocBox (M1.__default.GetSt |p#0@@4| |st#0@@5|) Tclass.M1.Artifact $Heap))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1399|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o T@U) ) (!  (=> (|Set#IsMember| a o) (|Set#IsMember| b o))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |1530|
 :pattern ( (|Set#IsMember| a o))
 :pattern ( (|Set#IsMember| b o))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |1531|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1833|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (M1.State.StateCons_q d@@4) (= (DatatypeCtorId d@@4) |##M1.State.StateCons|))
 :qid |unknown.0:0|
 :skolemid |2519|
 :pattern ( (M1.State.StateCons_q d@@4))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1410|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |1537|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@5) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@5 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1834|
)))
 :qid |unknown.0:0|
 :skolemid |1835|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@6| T@U) ) (!  (=> (or (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@6|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@6| Tclass.M1.State))) (and (M1.State.StateCons_q (Lit DatatypeTypeType |st#0@@6|)) (= (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@6|)) (|Set#FromBoogieMap| (|lambda#1| Tclass.M1.Path (|Map#Domain| (M1.State.m (Lit DatatypeTypeType |st#0@@6|))))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :weight 3
 :skolemid |2095|
 :pattern ( (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@6|)))
))))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1430|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1431|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (M1.State.StateCons_q d@@6) (exists ((|a#1#0#0@@0| T@U) ) (! (= d@@6 (|#M1.State.StateCons| |a#1#0#0@@0|))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2520|
)))
 :qid |unknown.0:0|
 :skolemid |2521|
 :pattern ( (M1.State.StateCons_q d@@6))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1423|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@5| T@U) (|st#0@@7| T@U) ) (!  (=> (or (|M1.__default.GetSt#canCall| |p#0@@5| (Lit DatatypeTypeType |st#0@@7|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@5| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@7| Tclass.M1.State)) (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@7|))) |p#0@@5|)))) (and (M1.State.StateCons_q (Lit DatatypeTypeType |st#0@@7|)) (= (M1.__default.GetSt |p#0@@5| (Lit DatatypeTypeType |st#0@@7|)) (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M1.State.m (Lit DatatypeTypeType |st#0@@7|)))) |p#0@@5|))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |2088|
 :pattern ( (M1.__default.GetSt |p#0@@5| (Lit DatatypeTypeType |st#0@@7|)))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.M1.State) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.M1.State)))
 :qid |unknown.0:0|
 :skolemid |2083|
 :pattern ( ($IsBox bx@@1 Tclass.M1.State))
)))
(assert (forall ((|a#6#0#0| T@U) (bx@@2 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#6#0#0|) bx@@2) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#6#0#0|) bx@@2))) (DtRank (|#M1.State.StateCons| |a#6#0#0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2528|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#6#0#0|) bx@@2) (|#M1.State.StateCons| |a#6#0#0|))
)))
(assert (forall ((|a#2#0#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.State.StateCons| |a#2#0#0@@1|) Tclass.M1.State) ($Is MapType |a#2#0#0@@1| (TMap Tclass.M1.Path Tclass.M1.Artifact)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2522|
 :pattern ( ($Is DatatypeTypeType (|#M1.State.StateCons| |a#2#0#0@@1|) Tclass.M1.State))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1422|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((ty T@U) ) (!  (=> ($AlwaysAllocated ty) (forall ((h@@0 T@U) (v@@2 T@U) ) (!  (=> ($IsBox v@@2 ty) ($IsAllocBox v@@2 ty h@@0))
 :qid |DafnyPreludebpl.337:13|
 :skolemid |1463|
 :pattern ( ($IsAllocBox v@@2 ty h@@0))
)))
 :qid |DafnyPreludebpl.335:17|
 :skolemid |1464|
 :pattern ( ($AlwaysAllocated ty))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@1) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@1))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1451|
 :pattern ( (|Set#IsMember| v@@3 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1452|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@1))
)))
(assert (forall ((t@@1 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@1 u)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |1393|
 :pattern ( (TMap t@@1 u))
)))
(assert (forall ((t@@2 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |1394|
 :pattern ( (TMap t@@2 u@@0))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@3 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |1395|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1832|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1837|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1838|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1847|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1849|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1385|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1386|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((|a#0#0#0@@0| T@U) ) (! (= (DatatypeCtorId (|#M1.State.StateCons| |a#0#0#0@@0|)) |##M1.State.StateCons|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2518|
 :pattern ( (|#M1.State.StateCons| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) ) (! (= (M1.State.m (|#M1.State.StateCons| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2526|
 :pattern ( (|#M1.State.StateCons| |a#4#0#0@@0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1409|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@2 t1@@0) h@@2) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@4) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@4) t1@@0 h@@2) ($IsAllocBox bx@@4 t0@@2 h@@2)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |1459|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@4))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@4))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |1460|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@2 t1@@0) h@@2))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1848|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1850|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#2#0#0@@2| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#M1.State.StateCons| |a#2#0#0@@2|) Tclass.M1.State $h@@1) ($IsAlloc MapType |a#2#0#0@@2| (TMap Tclass.M1.Path Tclass.M1.Artifact) $h@@1)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2523|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.State.StateCons| |a#2#0#0@@2|) Tclass.M1.State $h@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@8| T@U) (|st'#0| T@U) ) (!  (=> (or (|M1.__default.Extends#canCall| (Lit DatatypeTypeType |st#0@@8|) (Lit DatatypeTypeType |st'#0|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@8| Tclass.M1.State) ($Is DatatypeTypeType |st'#0| Tclass.M1.State)))) (and (and (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@8|)) (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0|))) (=> (|Set#Subset| (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@8|)) (M1.__default.DomSt (Lit DatatypeTypeType |st'#0|))) (and (forall ((|p#2| T@U) ) (!  (=> ($IsBox |p#2| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@8|)) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@8|))) |p#2|) (and (|M1.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st'#0|)) (|M1.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st#0@@8|))))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2285|
 :pattern ( (M1.__default.GetSt |p#2| |st#0@@8|))
 :pattern ( (M1.__default.GetSt |p#2| |st'#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@8|) |p#2|))
)) (=> (forall ((|p#2@@0| T@U) ) (!  (=> ($IsBox |p#2@@0| Tclass.M1.Path) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@8|))) |p#2@@0|) (= (M1.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st'#0|)) (M1.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st#0@@8|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2287|
 :pattern ( (M1.__default.GetSt |p#2@@0| |st#0@@8|))
 :pattern ( (M1.__default.GetSt |p#2@@0| |st'#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@8|) |p#2@@0|))
)) (forall ((|p#3| T@U) ) (!  (=> ($IsBox |p#3| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@8|)) (=> (not (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@8|))) |p#3|)) (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0|)) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st'#0|))) |p#3|) (and (|M1.__default.GetSt#canCall| |p#3| (Lit DatatypeTypeType |st'#0|)) (|M1.__default.Oracle#canCall| |p#3| (Lit DatatypeTypeType |st#0@@8|))))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2286|
 :pattern ( (M1.__default.Oracle |p#3| |st#0@@8|))
 :pattern ( (M1.__default.GetSt |p#3| |st'#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0|) |p#3|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@8|) |p#3|))
)))))) (= (M1.__default.Extends (Lit DatatypeTypeType |st#0@@8|) (Lit DatatypeTypeType |st'#0|))  (and (and (|Set#Subset| (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@8|)) (M1.__default.DomSt (Lit DatatypeTypeType |st'#0|))) (forall ((|p#2@@1| T@U) ) (!  (=> ($IsBox |p#2@@1| Tclass.M1.Path) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@8|))) |p#2@@1|) (= (M1.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st'#0|)) (M1.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st#0@@8|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2283|
 :pattern ( (M1.__default.GetSt |p#2@@1| |st#0@@8|))
 :pattern ( (M1.__default.GetSt |p#2@@1| |st'#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@8|) |p#2@@1|))
))) (forall ((|p#3@@0| T@U) ) (!  (=> ($IsBox |p#3@@0| Tclass.M1.Path) (=> (and (not (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@8|))) |p#3@@0|)) (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st'#0|))) |p#3@@0|)) (= (M1.__default.GetSt |p#3@@0| (Lit DatatypeTypeType |st'#0|)) (M1.__default.Oracle |p#3@@0| (Lit DatatypeTypeType |st#0@@8|)))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2284|
 :pattern ( (M1.__default.Oracle |p#3@@0| |st#0@@8|))
 :pattern ( (M1.__default.GetSt |p#3@@0| |st'#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0|) |p#3@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@8|) |p#3@@0|))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :weight 3
 :skolemid |2288|
 :pattern ( (M1.__default.Extends (Lit DatatypeTypeType |st#0@@8|) (Lit DatatypeTypeType |st'#0|)))
))))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |1669|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@5 T@U) (s T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@5 (TMap s t@@6)) (and (= ($Box MapType ($Unbox MapType bx@@5)) bx@@5) ($Is MapType ($Unbox MapType bx@@5) (TMap s t@@6))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |1420|
 :pattern ( ($IsBox bx@@5 (TMap s t@@6)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1839|
 :pattern ( ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@3 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@1 t2 (MapType1Store t0@@3 t1@@1 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7202|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1836|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|p#0@@6| T@U) (|st#0@@9| T@U) ) (!  (=> (and (or (|M1.__default.Oracle#canCall| |p#0@@6| |st#0@@9|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@6| Tclass.M1.Path) ($IsAllocBox |p#0@@6| Tclass.M1.Path $Heap@@0)) (and ($Is DatatypeTypeType |st#0@@9| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@9| Tclass.M1.State $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (M1.__default.Oracle |p#0@@6| |st#0@@9|) Tclass.M1.Artifact $Heap@@0))
 :qid |CloudMakeParallelBuildsdfy.104:18|
 :skolemid |2269|
 :pattern ( ($IsAllocBox (M1.__default.Oracle |p#0@@6| |st#0@@9|) Tclass.M1.Artifact $Heap@@0))
))))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |1657|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |1658|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |1659|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |1660|
 :pattern ( (|Map#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |1668|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@6) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |1666|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |1667|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@6))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1468|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((bx@@7 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1416|
 :pattern ( ($IsBox bx@@7 (TSet t@@7)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@10| T@U) (|st'#0@@0| T@U) ) (!  (=> (or (|M1.__default.Extends#canCall| |st#0@@10| |st'#0@@0|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@10| Tclass.M1.State) ($Is DatatypeTypeType |st'#0@@0| Tclass.M1.State)))) (and (and (and (|M1.__default.DomSt#canCall| |st#0@@10|) (|M1.__default.DomSt#canCall| |st'#0@@0|)) (=> (|Set#Subset| (M1.__default.DomSt |st#0@@10|) (M1.__default.DomSt |st'#0@@0|)) (and (forall ((|p#0@@7| T@U) ) (!  (=> ($IsBox |p#0@@7| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| |st#0@@10|) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#0@@7|) (and (|M1.__default.GetSt#canCall| |p#0@@7| |st'#0@@0|) (|M1.__default.GetSt#canCall| |p#0@@7| |st#0@@10|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2279|
 :pattern ( (M1.__default.GetSt |p#0@@7| |st#0@@10|))
 :pattern ( (M1.__default.GetSt |p#0@@7| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#0@@7|))
)) (=> (forall ((|p#0@@8| T@U) ) (!  (=> ($IsBox |p#0@@8| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#0@@8|) (= (M1.__default.GetSt |p#0@@8| |st'#0@@0|) (M1.__default.GetSt |p#0@@8| |st#0@@10|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2281|
 :pattern ( (M1.__default.GetSt |p#0@@8| |st#0@@10|))
 :pattern ( (M1.__default.GetSt |p#0@@8| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#0@@8|))
)) (forall ((|p#1| T@U) ) (!  (=> ($IsBox |p#1| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| |st#0@@10|) (=> (not (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#1|)) (and (|M1.__default.DomSt#canCall| |st'#0@@0|) (=> (|Set#IsMember| (M1.__default.DomSt |st'#0@@0|) |p#1|) (and (|M1.__default.GetSt#canCall| |p#1| |st'#0@@0|) (|M1.__default.Oracle#canCall| |p#1| |st#0@@10|)))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2280|
 :pattern ( (M1.__default.Oracle |p#1| |st#0@@10|))
 :pattern ( (M1.__default.GetSt |p#1| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@0|) |p#1|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#1|))
)))))) (= (M1.__default.Extends |st#0@@10| |st'#0@@0|)  (and (and (|Set#Subset| (M1.__default.DomSt |st#0@@10|) (M1.__default.DomSt |st'#0@@0|)) (forall ((|p#0@@9| T@U) ) (!  (=> ($IsBox |p#0@@9| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#0@@9|) (= (M1.__default.GetSt |p#0@@9| |st'#0@@0|) (M1.__default.GetSt |p#0@@9| |st#0@@10|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2277|
 :pattern ( (M1.__default.GetSt |p#0@@9| |st#0@@10|))
 :pattern ( (M1.__default.GetSt |p#0@@9| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#0@@9|))
))) (forall ((|p#1@@0| T@U) ) (!  (=> ($IsBox |p#1@@0| Tclass.M1.Path) (=> (and (not (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#1@@0|)) (|Set#IsMember| (M1.__default.DomSt |st'#0@@0|) |p#1@@0|)) (= (M1.__default.GetSt |p#1@@0| |st'#0@@0|) (M1.__default.Oracle |p#1@@0| |st#0@@10|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2278|
 :pattern ( (M1.__default.Oracle |p#1@@0| |st#0@@10|))
 :pattern ( (M1.__default.GetSt |p#1@@0| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@0|) |p#1@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#1@@0|))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :skolemid |2282|
 :pattern ( (M1.__default.Extends |st#0@@10| |st'#0@@0|))
))))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@4 t1@@2)) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@8) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@8) t1@@2) ($IsBox bx@@8 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |1439|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@8))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@8))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |1440|
 :pattern ( ($Is MapType v@@7 (TMap t0@@4 t1@@2)))
)))
(assert (= (Tag Tclass.M1.State) Tagclass.M1.State))
(assert (= (TagFamily Tclass.M1.State) tytagFamily$State))
(assert (forall ((d@@8 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple2.___hMake2_q d@@8) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |1842|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@2))
)))) ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@2))
 :qid |unknown.0:0|
 :skolemid |1843|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@8) |_System._tuple#2$T0@@6| $h@@2))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple2.___hMake2_q d@@9) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |1844|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@3))
)))) ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@3))
 :qid |unknown.0:0|
 :skolemid |1845|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@9) |_System._tuple#2$T1@@7| $h@@3))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1846|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#3#0#0@@0| T@U) ) (! (= (|#M1.State.StateCons| (Lit MapType |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#M1.State.StateCons| |a#3#0#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2525|
 :pattern ( (|#M1.State.StateCons| (Lit MapType |a#3#0#0@@0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1400|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (d@@10 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#5#0#0@@0|) ($Box DatatypeTypeType d@@10)) (< (DtRank d@@10) (DtRank (|#M1.State.StateCons| |a#5#0#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2527|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#5#0#0@@0|) ($Box DatatypeTypeType d@@10)) (|#M1.State.StateCons| |a#5#0#0@@0|))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@8)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |1661|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |1662|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((v@@9 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@9 (TMap t0@@5 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@9) (TSet t0@@5)) ($Is SetType (|Map#Values| v@@9) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@9) (TSet (Tclass._System.Tuple2 t0@@5 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |1441|
 :pattern ( ($Is MapType v@@9 (TMap t0@@5 t1@@3)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |st0#0| () T@U)
(declare-fun |st2#0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@@1 () T@U)
(declare-fun |st1#0| () T@U)
(declare-fun |p#0_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id Impl$$M1.__default.Lemma__ExtendsTransitive)
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
 (=> (= (ControlFlow 0 0) 11) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> false (=> (|M1.__default.Extends#canCall| |st0#0| |st2#0|) (or (M1.__default.Extends |st0#0| |st2#0|) (|Set#Subset| (M1.__default.DomSt |st0#0|) (M1.__default.DomSt |st2#0|)))))) (=> (=> false (=> (|M1.__default.Extends#canCall| |st0#0| |st2#0|) (or (M1.__default.Extends |st0#0| |st2#0|) (|Set#Subset| (M1.__default.DomSt |st0#0|) (M1.__default.DomSt |st2#0|))))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> false (=> (|M1.__default.Extends#canCall| |st0#0| |st2#0|) (or (M1.__default.Extends |st0#0| |st2#0|) (forall ((|p#10| T@U) ) (!  (=> ($IsBox |p#10| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#10|) (= (M1.__default.GetSt |p#10| |st2#0|) (M1.__default.GetSt |p#10| |st0#0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2326|
 :pattern ( (M1.__default.GetSt |p#10| |st0#0|))
 :pattern ( (M1.__default.GetSt |p#10| |st2#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#10|))
)))))) (=> (=> false (=> (|M1.__default.Extends#canCall| |st0#0| |st2#0|) (or (M1.__default.Extends |st0#0| |st2#0|) (forall ((|p#10@@0| T@U) ) (!  (=> ($IsBox |p#10@@0| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#10@@0|) (= (M1.__default.GetSt |p#10@@0| |st2#0|) (M1.__default.GetSt |p#10@@0| |st0#0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2326|
 :pattern ( (M1.__default.GetSt |p#10@@0| |st0#0|))
 :pattern ( (M1.__default.GetSt |p#10@@0| |st2#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#10@@0|))
))))) (=> (= (ControlFlow 0 6) (- 0 5)) (=> false (=> (|M1.__default.Extends#canCall| |st0#0| |st2#0|) (or (M1.__default.Extends |st0#0| |st2#0|) (forall ((|p#11| T@U) ) (!  (=> ($IsBox |p#11| Tclass.M1.Path) (=> (and (not (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#11|)) (|Set#IsMember| (M1.__default.DomSt |st2#0|) |p#11|)) (= (M1.__default.GetSt |p#11| |st2#0|) (M1.__default.Oracle |p#11| |st0#0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2327|
 :pattern ( (M1.__default.Oracle |p#11| |st0#0|))
 :pattern ( (M1.__default.GetSt |p#11| |st2#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st2#0|) |p#11|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#11|))
))))))))))))
(let ((anon3_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@@1 $Heap@1)) (and (forall ((|p#0_1| T@U) ) (!  (=> (and ($IsBox |p#0_1| Tclass.M1.Path) (U_2_bool (Lit boolType (bool_2_U true)))) (= (M1.__default.Oracle |p#0_1| |st0#0|) (M1.__default.Oracle |p#0_1| |st1#0|)))
 :qid |CloudMakeParallelBuildsdfy.123:12|
 :skolemid |2331|
 :pattern ( (M1.__default.Oracle |p#0_1| |st1#0|))
 :pattern ( (M1.__default.Oracle |p#0_1| |st0#0|))
)) (= (ControlFlow 0 9) 6))) GeneratedUnifiedExit_correct)))
(let ((anon3_Then_correct  (=> ($IsBox |p#0_0@0| Tclass.M1.Path) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|M1.__default.Extends#canCall| |st0#0| |st1#0|) (or (M1.__default.Extends |st0#0| |st1#0|) (|Set#Subset| (M1.__default.DomSt |st0#0|) (M1.__default.DomSt |st1#0|))))) (=> (=> (|M1.__default.Extends#canCall| |st0#0| |st1#0|) (or (M1.__default.Extends |st0#0| |st1#0|) (|Set#Subset| (M1.__default.DomSt |st0#0|) (M1.__default.DomSt |st1#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|M1.__default.Extends#canCall| |st0#0| |st1#0|) (or (M1.__default.Extends |st0#0| |st1#0|) (forall ((|p#1@@1| T@U) ) (!  (=> ($IsBox |p#1@@1| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#1@@1|) (= (M1.__default.GetSt |p#1@@1| |st1#0|) (M1.__default.GetSt |p#1@@1| |st0#0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2271|
 :pattern ( (M1.__default.GetSt |p#1@@1| |st0#0|))
 :pattern ( (M1.__default.GetSt |p#1@@1| |st1#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#1@@1|))
))))) (=> (=> (|M1.__default.Extends#canCall| |st0#0| |st1#0|) (or (M1.__default.Extends |st0#0| |st1#0|) (forall ((|p#1@@2| T@U) ) (!  (=> ($IsBox |p#1@@2| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#1@@2|) (= (M1.__default.GetSt |p#1@@2| |st1#0|) (M1.__default.GetSt |p#1@@2| |st0#0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2271|
 :pattern ( (M1.__default.GetSt |p#1@@2| |st0#0|))
 :pattern ( (M1.__default.GetSt |p#1@@2| |st1#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#1@@2|))
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|M1.__default.Extends#canCall| |st0#0| |st1#0|) (or (M1.__default.Extends |st0#0| |st1#0|) (forall ((|p#2@@2| T@U) ) (!  (=> ($IsBox |p#2@@2| Tclass.M1.Path) (=> (and (not (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#2@@2|)) (|Set#IsMember| (M1.__default.DomSt |st1#0|) |p#2@@2|)) (= (M1.__default.GetSt |p#2@@2| |st1#0|) (M1.__default.Oracle |p#2@@2| |st0#0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2272|
 :pattern ( (M1.__default.Oracle |p#2@@2| |st0#0|))
 :pattern ( (M1.__default.GetSt |p#2@@2| |st1#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st1#0|) |p#2@@2|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#2@@2|))
))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (=> (= (ControlFlow 0 10) 2) anon3_Then_correct) (=> (= (ControlFlow 0 10) 9) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and ($Is DatatypeTypeType |st0#0| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st0#0| Tclass.M1.State $Heap@@1)) (|$IsA#M1.State| |st0#0|)) (and (and ($Is DatatypeTypeType |st1#0| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st1#0| Tclass.M1.State $Heap@@1)) (|$IsA#M1.State| |st1#0|))) (=> (and (and (and (and (and ($Is DatatypeTypeType |st2#0| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st2#0| Tclass.M1.State $Heap@@1)) (|$IsA#M1.State| |st2#0|)) (= 5 $FunctionContextHeight)) (and (|M1.__default.Extends#canCall| |st0#0| |st1#0|) (and (M1.__default.Extends |st0#0| |st1#0|) (and (and (|Set#Subset| (M1.__default.DomSt |st0#0|) (M1.__default.DomSt |st1#0|)) (forall ((|p#6| T@U) ) (!  (=> ($IsBox |p#6| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#6|) (= (M1.__default.GetSt |p#6| |st1#0|) (M1.__default.GetSt |p#6| |st0#0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2320|
 :pattern ( (M1.__default.GetSt |p#6| |st0#0|))
 :pattern ( (M1.__default.GetSt |p#6| |st1#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#6|))
))) (forall ((|p#7| T@U) ) (!  (=> ($IsBox |p#7| Tclass.M1.Path) (=> (and (not (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#7|)) (|Set#IsMember| (M1.__default.DomSt |st1#0|) |p#7|)) (= (M1.__default.GetSt |p#7| |st1#0|) (M1.__default.Oracle |p#7| |st0#0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2321|
 :pattern ( (M1.__default.Oracle |p#7| |st0#0|))
 :pattern ( (M1.__default.GetSt |p#7| |st1#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st1#0|) |p#7|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st0#0|) |p#7|))
)))))) (and (and (|M1.__default.Extends#canCall| |st1#0| |st2#0|) (and (M1.__default.Extends |st1#0| |st2#0|) (and (and (|Set#Subset| (M1.__default.DomSt |st1#0|) (M1.__default.DomSt |st2#0|)) (forall ((|p#8| T@U) ) (!  (=> ($IsBox |p#8| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st1#0|) |p#8|) (= (M1.__default.GetSt |p#8| |st2#0|) (M1.__default.GetSt |p#8| |st1#0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2324|
 :pattern ( (M1.__default.GetSt |p#8| |st1#0|))
 :pattern ( (M1.__default.GetSt |p#8| |st2#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st1#0|) |p#8|))
))) (forall ((|p#9| T@U) ) (!  (=> ($IsBox |p#9| Tclass.M1.Path) (=> (and (not (|Set#IsMember| (M1.__default.DomSt |st1#0|) |p#9|)) (|Set#IsMember| (M1.__default.DomSt |st2#0|) |p#9|)) (= (M1.__default.GetSt |p#9| |st2#0|) (M1.__default.Oracle |p#9| |st1#0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2325|
 :pattern ( (M1.__default.Oracle |p#9| |st1#0|))
 :pattern ( (M1.__default.GetSt |p#9| |st2#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st2#0|) |p#9|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st1#0|) |p#9|))
))))) (= (ControlFlow 0 11) 10))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
