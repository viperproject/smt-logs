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
(declare-fun $FunctionContextHeight () Int)
(declare-fun M1.__default.Combine (T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |M1.__default.Combine#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass.M1.State () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |$let#0$canCall| (T@U) Bool)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |$let#0_st| (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |M1.__default.Union#canCall| (T@U T@U) Bool)
(declare-fun M1.__default.Union (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun M1.State.m (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass.M1.Path () T@U)
(declare-fun Tclass.M1.Artifact () T@U)
(declare-fun M1.State.StateCons_q (T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun M1.__default.GetSt (T@U T@U) T@U)
(declare-fun |M1.__default.GetSt#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun M1.__default.DomSt (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |M1.__default.DomSt#canCall| (T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
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
(declare-fun |M1.State#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun M1.__default.ValidState (T@U) Bool)
(declare-fun |M1.__default.ValidState#canCall| (T@U) Bool)
(declare-fun M1.__default.WellFounded (T@U) Bool)
(declare-fun |M1.__default.WellFounded#canCall| (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |#M1.State.StateCons| (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Equal| (T@U T@U) Bool)
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
(assert  (and (= (Ctor SetType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|sts#0| T@U) ) (!  (=> (or (|M1.__default.Combine#canCall| |sts#0|) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |sts#0| (TSet Tclass.M1.State))) (not (|Set#Equal| |sts#0| |Set#Empty|))))) (and (and (|$let#0$canCall| |sts#0|) (=> (not (|Set#Equal| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#0_st| |sts#0|))))) (and (|M1.__default.Combine#canCall| (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#0_st| |sts#0|))))) (|M1.__default.Union#canCall| (|$let#0_st| |sts#0|) (M1.__default.Combine $ly (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#0_st| |sts#0|))))))))) (= (M1.__default.Combine ($LS $ly) |sts#0|) (let ((|st#0| (|$let#0_st| |sts#0|)))
(ite (|Set#Equal| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0|))) |st#0| (M1.__default.Union |st#0| (M1.__default.Combine $ly (|Set#Difference| |sts#0| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0|))))))))))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |2152|
 :pattern ( (M1.__default.Combine ($LS $ly) |sts#0|) ($IsGoodHeap $Heap))
))))
(assert (= (Ctor MapType) 5))
(assert (forall ((d T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M1.State.StateCons_q d) ($IsAlloc DatatypeTypeType d Tclass.M1.State $h))) ($IsAlloc MapType (M1.State.m d) (TMap Tclass.M1.Path Tclass.M1.Artifact) $h))
 :qid |unknown.0:0|
 :skolemid |2524|
 :pattern ( ($IsAlloc MapType (M1.State.m d) (TMap Tclass.M1.Path Tclass.M1.Artifact) $h))
)))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1513|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0| T@U) (|st#0@@0| T@U) ) (!  (=> (or (|M1.__default.GetSt#canCall| |p#0| |st#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@0| Tclass.M1.State)) (|Set#IsMember| (M1.__default.DomSt |st#0@@0|) |p#0|)))) (and (M1.State.StateCons_q |st#0@@0|) (= (M1.__default.GetSt |p#0| |st#0@@0|) (MapType0Select BoxType BoxType (|Map#Elements| (M1.State.m |st#0@@0|)) |p#0|))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |2087|
 :pattern ( (M1.__default.GetSt |p#0| |st#0@@0|))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |1514|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |1518|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |1519|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@1| T@U) ) (!  (=> (or (|M1.__default.DomSt#canCall| |st#0@@1|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@1| Tclass.M1.State))) (and (forall ((|p#0@@0| T@U) ) (!  (=> ($IsBox |p#0@@0| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@1|) |p#0@@0|) (|Set#IsMember| (|Map#Domain| (M1.State.m |st#0@@1|)) |p#0@@0|)))
 :qid |CloudMakeParallelBuildsdfy.441:20|
 :skolemid |2091|
 :pattern ( (|Set#IsMember| (|Map#Domain| (M1.State.m |st#0@@1|)) |p#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@1|) |p#0@@0|))
)) ($Is SetType (M1.__default.DomSt |st#0@@1|) (TSet Tclass.M1.Path))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |2092|
 :pattern ( (M1.__default.DomSt |st#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@2| T@U) ) (!  (=> (or (|M1.__default.DomSt#canCall| |st#0@@2|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@2| Tclass.M1.State))) (and (M1.State.StateCons_q |st#0@@2|) (= (M1.__default.DomSt |st#0@@2|) (|Set#FromBoogieMap| (|lambda#1| Tclass.M1.Path (|Map#Domain| (M1.State.m |st#0@@2|)))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :skolemid |2094|
 :pattern ( (M1.__default.DomSt |st#0@@2|))
))))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#M1.State| d@@0) (M1.State.StateCons_q d@@0))
 :qid |unknown.0:0|
 :skolemid |2529|
 :pattern ( (|$IsA#M1.State| d@@0))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |1512|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) ($ly@@0 T@U) (|sts#0@@0| T@U) ) (!  (=> (and (or (|M1.__default.Combine#canCall| |sts#0@@0|) (and (< 4 $FunctionContextHeight) (and (and ($Is SetType |sts#0@@0| (TSet Tclass.M1.State)) ($IsAlloc SetType |sts#0@@0| (TSet Tclass.M1.State) $Heap@@0)) (not (|Set#Equal| |sts#0@@0| |Set#Empty|))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (M1.__default.Combine $ly@@0 |sts#0@@0|) Tclass.M1.State $Heap@@0))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |2149|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.__default.Combine $ly@@0 |sts#0@@0|) Tclass.M1.State $Heap@@0))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (|Set#IsMember| |l#1| |$y#0|)))
 :qid |CloudMakeParallelBuildsdfy.153:8|
 :skolemid |7203|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1|) |$y#0|))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |1528|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert ($AlwaysAllocated Tclass.M1.Path))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@1))
 :qid |unknown.0:0|
 :skolemid |1852|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@1| T@U) (|st#0@@3| T@U) ) (!  (=> (or (|M1.__default.GetSt#canCall| (Lit BoxType |p#0@@1|) (Lit DatatypeTypeType |st#0@@3|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@1| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@3| Tclass.M1.State)) (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@3|))) (Lit BoxType |p#0@@1|))))) (and (M1.State.StateCons_q (Lit DatatypeTypeType |st#0@@3|)) (= (M1.__default.GetSt (Lit BoxType |p#0@@1|) (Lit DatatypeTypeType |st#0@@3|)) (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M1.State.m (Lit DatatypeTypeType |st#0@@3|)))) (Lit BoxType |p#0@@1|)))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |2089|
 :pattern ( (M1.__default.GetSt (Lit BoxType |p#0@@1|) (Lit DatatypeTypeType |st#0@@3|)))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1509|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@2| T@U) (|st#0@@4| T@U) ) (!  (=> (or (|M1.__default.Oracle#canCall| |p#0@@2| |st#0@@4|) (and (< 1 $FunctionContextHeight) (and ($IsBox |p#0@@2| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@4| Tclass.M1.State)))) ($IsBox (M1.__default.Oracle |p#0@@2| |st#0@@4|) Tclass.M1.Artifact))
 :qid |CloudMakeParallelBuildsdfy.104:25|
 :skolemid |2268|
 :pattern ( (M1.__default.Oracle |p#0@@2| |st#0@@4|))
))))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |1522|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |1527|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 Tclass.M1.State) (M1.State.StateCons_q d@@2))
 :qid |unknown.0:0|
 :skolemid |2530|
 :pattern ( (M1.State.StateCons_q d@@2) ($Is DatatypeTypeType d@@2 Tclass.M1.State))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@5| T@U) (|st'#0| T@U) ) (!  (=> (or (|M1.__default.Union#canCall| |st#0@@5| |st'#0|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@5| Tclass.M1.State) ($Is DatatypeTypeType |st'#0| Tclass.M1.State)))) (and (let ((|result#0| (M1.__default.Union |st#0@@5| |st'#0|)))
 (and (|Set#Equal| (M1.__default.DomSt |result#0|) (|Set#Union| (M1.__default.DomSt |st#0@@5|) (M1.__default.DomSt |st'#0|))) (forall ((|p#0@@3| T@U) ) (!  (=> ($IsBox |p#0@@3| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |result#0|) |p#0@@3|) (= (M1.__default.GetSt |p#0@@3| |result#0|) (M1.__default.GetSt |p#0@@3| (ite (|Set#IsMember| (M1.__default.DomSt |st#0@@5|) |p#0@@3|) |st#0@@5| |st'#0|)))))
 :qid |CloudMakeParallelBuildsdfy.27:14|
 :skolemid |2125|
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@5|) |p#0@@3|))
 :pattern ( (M1.__default.GetSt |p#0@@3| |result#0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |result#0|) |p#0@@3|))
)))) ($Is DatatypeTypeType (M1.__default.Union |st#0@@5| |st'#0|) Tclass.M1.State)))
 :qid |CloudMakeParallelBuildsdfy.23:24|
 :skolemid |2126|
 :pattern ( (M1.__default.Union |st#0@@5| |st'#0|))
))))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1840|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@4| T@U) (|st#0@@6| T@U) ) (!  (=> (or (|M1.__default.GetSt#canCall| |p#0@@4| |st#0@@6|) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@4| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@6| Tclass.M1.State)) (|Set#IsMember| (M1.__default.DomSt |st#0@@6|) |p#0@@4|)))) ($IsBox (M1.__default.GetSt |p#0@@4| |st#0@@6|) Tclass.M1.Artifact))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :skolemid |2084|
 :pattern ( (M1.__default.GetSt |p#0@@4| |st#0@@6|))
))))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|M1.State#Equal| a@@7 b@@4) (= a@@7 b@@4))
 :qid |unknown.0:0|
 :skolemid |2532|
 :pattern ( (|M1.State#Equal| a@@7 b@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|p#0@@5| T@U) (|st#0@@7| T@U) ) (!  (=> (and (or (|M1.__default.GetSt#canCall| |p#0@@5| |st#0@@7|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsBox |p#0@@5| Tclass.M1.Path) ($IsAllocBox |p#0@@5| Tclass.M1.Path $Heap@@1)) (and ($Is DatatypeTypeType |st#0@@7| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@7| Tclass.M1.State $Heap@@1))) (|Set#IsMember| (M1.__default.DomSt |st#0@@7|) |p#0@@5|)))) ($IsGoodHeap $Heap@@1)) ($IsAllocBox (M1.__default.GetSt |p#0@@5| |st#0@@7|) Tclass.M1.Artifact $Heap@@1))
 :qid |CloudMakeParallelBuildsdfy.435:18|
 :skolemid |2085|
 :pattern ( ($IsAllocBox (M1.__default.GetSt |p#0@@5| |st#0@@7|) Tclass.M1.Artifact $Heap@@1))
))))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1399|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Subset| a@@8 b@@5) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@8 o@@2) (|Set#IsMember| b@@5 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |1530|
 :pattern ( (|Set#IsMember| a@@8 o@@2))
 :pattern ( (|Set#IsMember| b@@5 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |1531|
 :pattern ( (|Set#Subset| a@@8 b@@5))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |1841|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@8| T@U) ) (!  (=> (or (|M1.__default.ValidState#canCall| |st#0@@8|) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@8| Tclass.M1.State))) (and (forall ((|p#0@@6| T@U) ) (!  (=> ($IsBox |p#0@@6| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| |st#0@@8|) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@8|) |p#0@@6|) (|M1.__default.WellFounded#canCall| |p#0@@6|))))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2113|
 :pattern ( (M1.__default.WellFounded |p#0@@6|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@8|) |p#0@@6|))
)) (= (M1.__default.ValidState |st#0@@8|) (forall ((|p#0@@7| T@U) ) (!  (=> ($IsBox |p#0@@7| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@8|) |p#0@@7|) (M1.__default.WellFounded |p#0@@7|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2112|
 :pattern ( (M1.__default.WellFounded |p#0@@7|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@8|) |p#0@@7|))
)))))
 :qid |CloudMakeParallelBuildsdfy.13:30|
 :skolemid |2114|
 :pattern ( (M1.__default.ValidState |st#0@@8|))
))))
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
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1410|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@9 b@@6) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@9 o@@3)) (not (|Set#IsMember| b@@6 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |1535|
 :pattern ( (|Set#IsMember| a@@9 o@@3))
 :pattern ( (|Set#IsMember| b@@6 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |1536|
 :pattern ( (|Set#Disjoint| a@@9 b@@6))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|st#0@@9| T@U) ) (!  (=> (or (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@9|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@9| Tclass.M1.State))) (and (M1.State.StateCons_q (Lit DatatypeTypeType |st#0@@9|)) (= (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@9|)) (|Set#FromBoogieMap| (|lambda#1| Tclass.M1.Path (|Map#Domain| (M1.State.m (Lit DatatypeTypeType |st#0@@9|))))))))
 :qid |CloudMakeParallelBuildsdfy.9:24|
 :weight 3
 :skolemid |2095|
 :pattern ( (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@9|)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|st#0@@10| T@U) ) (!  (=> (or (|M1.__default.ValidState#canCall| (Lit DatatypeTypeType |st#0@@10|)) (and (< 2 $FunctionContextHeight) ($Is DatatypeTypeType |st#0@@10| Tclass.M1.State))) (and (forall ((|p#1| T@U) ) (!  (=> ($IsBox |p#1| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@10|)) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@10|))) |p#1|) (|M1.__default.WellFounded#canCall| |p#1|))))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2116|
 :pattern ( (M1.__default.WellFounded |p#1|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#1|))
)) (= (M1.__default.ValidState (Lit DatatypeTypeType |st#0@@10|)) (forall ((|p#1@@0| T@U) ) (!  (=> ($IsBox |p#1@@0| Tclass.M1.Path) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@10|))) |p#1@@0|) (M1.__default.WellFounded |p#1@@0|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2115|
 :pattern ( (M1.__default.WellFounded |p#1@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@10|) |p#1@@0|))
)))))
 :qid |CloudMakeParallelBuildsdfy.13:30|
 :weight 3
 :skolemid |2117|
 :pattern ( (M1.__default.ValidState (Lit DatatypeTypeType |st#0@@10|)))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1423|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((sts T@U) ) (!  (=> (|$let#0$canCall| sts) (and ($Is DatatypeTypeType (|$let#0_st| sts) Tclass.M1.State) (|Set#IsMember| sts ($Box DatatypeTypeType (|$let#0_st| sts)))))
 :qid |CloudMakeParallelBuildsdfy.39:5|
 :skolemid |2151|
 :pattern ( (|$let#0_st| sts))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|p#0@@8| T@U) (|st#0@@11| T@U) ) (!  (=> (or (|M1.__default.GetSt#canCall| |p#0@@8| (Lit DatatypeTypeType |st#0@@11|)) (and (< 2 $FunctionContextHeight) (and (and ($IsBox |p#0@@8| Tclass.M1.Path) ($Is DatatypeTypeType |st#0@@11| Tclass.M1.State)) (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@11|))) |p#0@@8|)))) (and (M1.State.StateCons_q (Lit DatatypeTypeType |st#0@@11|)) (= (M1.__default.GetSt |p#0@@8| (Lit DatatypeTypeType |st#0@@11|)) (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType (M1.State.m (Lit DatatypeTypeType |st#0@@11|)))) |p#0@@8|))))
 :qid |CloudMakeParallelBuildsdfy.10:24|
 :weight 3
 :skolemid |2088|
 :pattern ( (M1.__default.GetSt |p#0@@8| (Lit DatatypeTypeType |st#0@@11|)))
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
(assert (forall ((m@@2 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@2 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@2) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |1681|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@2) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@2) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |1682|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |1683|
 :pattern ( (|Map#Equal| m@@2 |m'|))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4)  (or (|Set#IsMember| a@@10 o@@4) (|Set#IsMember| b@@7 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |1517|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@10 b@@7) o@@4))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Disjoint| a@@11 b@@8) (and (= (|Set#Difference| (|Set#Union| a@@11 b@@8) a@@11) b@@8) (= (|Set#Difference| (|Set#Union| a@@11 b@@8) b@@8) a@@11)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |1520|
 :pattern ( (|Set#Union| a@@11 b@@8))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@2 T@U) (|sts#0@@1| T@U) ) (!  (=> (or (|M1.__default.Combine#canCall| (Lit SetType |sts#0@@1|)) (and (< 4 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) ($Is SetType |sts#0@@1| (TSet Tclass.M1.State))) (not (|Set#Equal| |sts#0@@1| |Set#Empty|))))) (and (and (|$let#0$canCall| (Lit SetType |sts#0@@1|)) (=> (not (|Set#Equal| |sts#0@@1| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#0_st| (Lit SetType |sts#0@@1|)))))) (and (|M1.__default.Combine#canCall| (|Set#Difference| |sts#0@@1| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#0_st| (Lit SetType |sts#0@@1|)))))) (|M1.__default.Union#canCall| (|$let#0_st| (Lit SetType |sts#0@@1|)) (M1.__default.Combine ($LS $ly@@1) (|Set#Difference| |sts#0@@1| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType (|$let#0_st| (Lit SetType |sts#0@@1|)))))))))) (= (M1.__default.Combine ($LS $ly@@1) (Lit SetType |sts#0@@1|)) (let ((|st#1| (|$let#0_st| (Lit SetType |sts#0@@1|))))
(ite (|Set#Equal| |sts#0@@1| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#1|))) |st#1| (M1.__default.Union |st#1| (M1.__default.Combine ($LS $ly@@1) (|Set#Difference| |sts#0@@1| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#1|))))))))))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :weight 3
 :skolemid |2153|
 :pattern ( (M1.__default.Combine ($LS $ly@@1) (Lit SetType |sts#0@@1|)) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Set#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1534|
 :pattern ( (|Set#Equal| a@@12 b@@9))
)))
(assert (forall ((m@@3 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@3 |m'@@0|) (= m@@3 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |1684|
 :pattern ( (|Map#Equal| m@@3 |m'@@0|))
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
(assert (forall ((t@@1 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@1 u@@1)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |1393|
 :pattern ( (TMap t@@1 u@@1))
)))
(assert (forall ((t@@2 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |1394|
 :pattern ( (TMap t@@2 u@@2))
)))
(assert (forall ((t@@3 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@3 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |1395|
 :pattern ( (TMap t@@3 u@@3))
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
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1409|
 :pattern ( ($Box T@@3 x@@7))
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
(assert (forall (($ly@@2 T@U) (|sts#0@@2| T@U) ) (! (= (M1.__default.Combine ($LS $ly@@2) |sts#0@@2|) (M1.__default.Combine $ly@@2 |sts#0@@2|))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |2146|
 :pattern ( (M1.__default.Combine ($LS $ly@@2) |sts#0@@2|))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |1523|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@12| T@U) (|st'#0@@0| T@U) ) (!  (=> (or (|M1.__default.Extends#canCall| (Lit DatatypeTypeType |st#0@@12|) (Lit DatatypeTypeType |st'#0@@0|)) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@12| Tclass.M1.State) ($Is DatatypeTypeType |st'#0@@0| Tclass.M1.State)))) (and (and (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@12|)) (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@0|))) (=> (|Set#Subset| (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@12|)) (M1.__default.DomSt (Lit DatatypeTypeType |st'#0@@0|))) (and (forall ((|p#2| T@U) ) (!  (=> ($IsBox |p#2| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@12|)) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@12|))) |p#2|) (and (|M1.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st'#0@@0|)) (|M1.__default.GetSt#canCall| |p#2| (Lit DatatypeTypeType |st#0@@12|))))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2285|
 :pattern ( (M1.__default.GetSt |p#2| |st#0@@12|))
 :pattern ( (M1.__default.GetSt |p#2| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@12|) |p#2|))
)) (=> (forall ((|p#2@@0| T@U) ) (!  (=> ($IsBox |p#2@@0| Tclass.M1.Path) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@12|))) |p#2@@0|) (= (M1.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st'#0@@0|)) (M1.__default.GetSt |p#2@@0| (Lit DatatypeTypeType |st#0@@12|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2287|
 :pattern ( (M1.__default.GetSt |p#2@@0| |st#0@@12|))
 :pattern ( (M1.__default.GetSt |p#2@@0| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@12|) |p#2@@0|))
)) (forall ((|p#3| T@U) ) (!  (=> ($IsBox |p#3| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st#0@@12|)) (=> (not (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@12|))) |p#3|)) (and (|M1.__default.DomSt#canCall| (Lit DatatypeTypeType |st'#0@@0|)) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st'#0@@0|))) |p#3|) (and (|M1.__default.GetSt#canCall| |p#3| (Lit DatatypeTypeType |st'#0@@0|)) (|M1.__default.Oracle#canCall| |p#3| (Lit DatatypeTypeType |st#0@@12|))))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2286|
 :pattern ( (M1.__default.Oracle |p#3| |st#0@@12|))
 :pattern ( (M1.__default.GetSt |p#3| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@0|) |p#3|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@12|) |p#3|))
)))))) (= (M1.__default.Extends (Lit DatatypeTypeType |st#0@@12|) (Lit DatatypeTypeType |st'#0@@0|))  (and (and (|Set#Subset| (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@12|)) (M1.__default.DomSt (Lit DatatypeTypeType |st'#0@@0|))) (forall ((|p#2@@1| T@U) ) (!  (=> ($IsBox |p#2@@1| Tclass.M1.Path) (=> (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@12|))) |p#2@@1|) (= (M1.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st'#0@@0|)) (M1.__default.GetSt |p#2@@1| (Lit DatatypeTypeType |st#0@@12|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2283|
 :pattern ( (M1.__default.GetSt |p#2@@1| |st#0@@12|))
 :pattern ( (M1.__default.GetSt |p#2@@1| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@12|) |p#2@@1|))
))) (forall ((|p#3@@0| T@U) ) (!  (=> ($IsBox |p#3@@0| Tclass.M1.Path) (=> (and (not (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st#0@@12|))) |p#3@@0|)) (|Set#IsMember| (Lit SetType (M1.__default.DomSt (Lit DatatypeTypeType |st'#0@@0|))) |p#3@@0|)) (= (M1.__default.GetSt |p#3@@0| (Lit DatatypeTypeType |st'#0@@0|)) (M1.__default.Oracle |p#3@@0| (Lit DatatypeTypeType |st#0@@12|)))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2284|
 :pattern ( (M1.__default.Oracle |p#3@@0| |st#0@@12|))
 :pattern ( (M1.__default.GetSt |p#3@@0| |st'#0@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@0|) |p#3@@0|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@12|) |p#3@@0|))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :weight 3
 :skolemid |2288|
 :pattern ( (M1.__default.Extends (Lit DatatypeTypeType |st#0@@12|) (Lit DatatypeTypeType |st'#0@@0|)))
))))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |1669|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
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
(assert  (and (and (and (and (and (and (forall ((t0@@3 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@4 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@1 t2 (MapType1Store t0@@3 t1@@1 t2 m@@4 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7202|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o $f))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|M1.State#Equal| a@@14 b@@11) (|Map#Equal| (M1.State.m a@@14) (M1.State.m b@@11)))
 :qid |unknown.0:0|
 :skolemid |2531|
 :pattern ( (|M1.State#Equal| a@@14 b@@11))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1836|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@3 T@U) (|p#0@@9| T@U) (|st#0@@13| T@U) ) (!  (=> (and (or (|M1.__default.Oracle#canCall| |p#0@@9| |st#0@@13|) (and (< 1 $FunctionContextHeight) (and (and ($IsBox |p#0@@9| Tclass.M1.Path) ($IsAllocBox |p#0@@9| Tclass.M1.Path $Heap@@3)) (and ($Is DatatypeTypeType |st#0@@13| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@13| Tclass.M1.State $Heap@@3))))) ($IsGoodHeap $Heap@@3)) ($IsAllocBox (M1.__default.Oracle |p#0@@9| |st#0@@13|) Tclass.M1.Artifact $Heap@@3))
 :qid |CloudMakeParallelBuildsdfy.104:18|
 :skolemid |2269|
 :pattern ( ($IsAllocBox (M1.__default.Oracle |p#0@@9| |st#0@@13|) Tclass.M1.Artifact $Heap@@3))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@4 T@U) (|st#0@@14| T@U) (|st'#0@@1| T@U) ) (!  (=> (and (or (|M1.__default.Union#canCall| |st#0@@14| |st'#0@@1|) (and (< 3 $FunctionContextHeight) (and (and ($Is DatatypeTypeType |st#0@@14| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st#0@@14| Tclass.M1.State $Heap@@4)) (and ($Is DatatypeTypeType |st'#0@@1| Tclass.M1.State) ($IsAlloc DatatypeTypeType |st'#0@@1| Tclass.M1.State $Heap@@4))))) ($IsGoodHeap $Heap@@4)) ($IsAlloc DatatypeTypeType (M1.__default.Union |st#0@@14| |st'#0@@1|) Tclass.M1.State $Heap@@4))
 :qid |CloudMakeParallelBuildsdfy.23:18|
 :skolemid |2127|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.__default.Union |st#0@@14| |st'#0@@1|) Tclass.M1.State $Heap@@4))
))))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@7) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |1657|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |1658|
 :pattern ( (|Map#Domain| m@@7))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@8) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |1659|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |1660|
 :pattern ( (|Map#Values| m@@8))
)))
(assert (forall ((m@@9 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@9) item)  (and (|Set#IsMember| (|Map#Domain| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@9) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |1668|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@9) item))
)))
(assert (forall ((m@@10 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@10) v@@6) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@10) u@@5) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |1666|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@10) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@10) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |1667|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@10) v@@6))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((|st#0@@15| T@U) (|st'#0@@2| T@U) ) (!  (=> (or (|M1.__default.Extends#canCall| |st#0@@15| |st'#0@@2|) (and (< 3 $FunctionContextHeight) (and ($Is DatatypeTypeType |st#0@@15| Tclass.M1.State) ($Is DatatypeTypeType |st'#0@@2| Tclass.M1.State)))) (and (and (and (|M1.__default.DomSt#canCall| |st#0@@15|) (|M1.__default.DomSt#canCall| |st'#0@@2|)) (=> (|Set#Subset| (M1.__default.DomSt |st#0@@15|) (M1.__default.DomSt |st'#0@@2|)) (and (forall ((|p#0@@10| T@U) ) (!  (=> ($IsBox |p#0@@10| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| |st#0@@15|) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@15|) |p#0@@10|) (and (|M1.__default.GetSt#canCall| |p#0@@10| |st'#0@@2|) (|M1.__default.GetSt#canCall| |p#0@@10| |st#0@@15|)))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2279|
 :pattern ( (M1.__default.GetSt |p#0@@10| |st#0@@15|))
 :pattern ( (M1.__default.GetSt |p#0@@10| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@15|) |p#0@@10|))
)) (=> (forall ((|p#0@@11| T@U) ) (!  (=> ($IsBox |p#0@@11| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@15|) |p#0@@11|) (= (M1.__default.GetSt |p#0@@11| |st'#0@@2|) (M1.__default.GetSt |p#0@@11| |st#0@@15|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2281|
 :pattern ( (M1.__default.GetSt |p#0@@11| |st#0@@15|))
 :pattern ( (M1.__default.GetSt |p#0@@11| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@15|) |p#0@@11|))
)) (forall ((|p#1@@1| T@U) ) (!  (=> ($IsBox |p#1@@1| Tclass.M1.Path) (and (|M1.__default.DomSt#canCall| |st#0@@15|) (=> (not (|Set#IsMember| (M1.__default.DomSt |st#0@@15|) |p#1@@1|)) (and (|M1.__default.DomSt#canCall| |st'#0@@2|) (=> (|Set#IsMember| (M1.__default.DomSt |st'#0@@2|) |p#1@@1|) (and (|M1.__default.GetSt#canCall| |p#1@@1| |st'#0@@2|) (|M1.__default.Oracle#canCall| |p#1@@1| |st#0@@15|)))))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2280|
 :pattern ( (M1.__default.Oracle |p#1@@1| |st#0@@15|))
 :pattern ( (M1.__default.GetSt |p#1@@1| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@2|) |p#1@@1|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@15|) |p#1@@1|))
)))))) (= (M1.__default.Extends |st#0@@15| |st'#0@@2|)  (and (and (|Set#Subset| (M1.__default.DomSt |st#0@@15|) (M1.__default.DomSt |st'#0@@2|)) (forall ((|p#0@@12| T@U) ) (!  (=> ($IsBox |p#0@@12| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |st#0@@15|) |p#0@@12|) (= (M1.__default.GetSt |p#0@@12| |st'#0@@2|) (M1.__default.GetSt |p#0@@12| |st#0@@15|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2277|
 :pattern ( (M1.__default.GetSt |p#0@@12| |st#0@@15|))
 :pattern ( (M1.__default.GetSt |p#0@@12| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@15|) |p#0@@12|))
))) (forall ((|p#1@@2| T@U) ) (!  (=> ($IsBox |p#1@@2| Tclass.M1.Path) (=> (and (not (|Set#IsMember| (M1.__default.DomSt |st#0@@15|) |p#1@@2|)) (|Set#IsMember| (M1.__default.DomSt |st'#0@@2|) |p#1@@2|)) (= (M1.__default.GetSt |p#1@@2| |st'#0@@2|) (M1.__default.Oracle |p#1@@2| |st#0@@15|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2278|
 :pattern ( (M1.__default.Oracle |p#1@@2| |st#0@@15|))
 :pattern ( (M1.__default.GetSt |p#1@@2| |st'#0@@2|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st'#0@@2|) |p#1@@2|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |st#0@@15|) |p#1@@2|))
))))))
 :qid |CloudMakeParallelBuildsdfy.112:27|
 :skolemid |2282|
 :pattern ( (M1.__default.Extends |st#0@@15| |st'#0@@2|))
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
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|Set#Equal| a@@15 b@@12) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@15 o@@5) (|Set#IsMember| b@@12 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1532|
 :pattern ( (|Set#IsMember| a@@15 o@@5))
 :pattern ( (|Set#IsMember| b@@12 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1533|
 :pattern ( (|Set#Equal| a@@15 b@@12))
)))
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
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1400|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (d@@10 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#5#0#0@@0|) ($Box DatatypeTypeType d@@10)) (< (DtRank d@@10) (DtRank (|#M1.State.StateCons| |a#5#0#0@@0|))))
 :qid |CloudMakeParallelBuildsdfy.433:30|
 :skolemid |2527|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#5#0#0@@0|) ($Box DatatypeTypeType d@@10)) (|#M1.State.StateCons| |a#5#0#0@@0|))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@3 T@U) (|sts#0@@3| T@U) ) (!  (=> (or (|M1.__default.Combine#canCall| |sts#0@@3|) (and (< 4 $FunctionContextHeight) (and ($Is SetType |sts#0@@3| (TSet Tclass.M1.State)) (not (|Set#Equal| |sts#0@@3| |Set#Empty|))))) ($Is DatatypeTypeType (M1.__default.Combine $ly@@3 |sts#0@@3|) Tclass.M1.State))
 :qid |CloudMakeParallelBuildsdfy.36:18|
 :skolemid |2148|
 :pattern ( (M1.__default.Combine $ly@@3 |sts#0@@3|))
))))
(assert (forall ((m@@11 T@U) ) (!  (or (= m@@11 |Map#Empty|) (exists ((k@@0 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@11) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@8)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |1661|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |1662|
 :pattern ( (|Map#Items| m@@11))
)))
(assert (forall ((v@@9 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@9 (TMap t0@@5 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@9) (TSet t0@@5)) ($Is SetType (|Map#Values| v@@9) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@9) (TSet (Tclass._System.Tuple2 t0@@5 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |1441|
 :pattern ( ($Is MapType v@@9 (TMap t0@@5 t1@@3)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |sts#0@@4| () T@U)
(declare-fun |st#0_0@0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |##sts#0_1@0| () T@U)
(declare-fun |##st'#0_0@0| () T@U)
(declare-fun |parent#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@5 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$M1.__default.Lemma__Combine)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon11_Else_correct true))
(let ((anon11_Then_correct true))
(let ((anon4_correct  (=> (=> (|Set#IsMember| |sts#0@@4| ($Box DatatypeTypeType |st#0_0@0|)) (=> (not (|Set#Equal| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|)))) (and (and (|$IsA#M1.State| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (|$IsA#M1.State| (M1.__default.Union |st#0_0@0| (M1.__default.Combine ($LS $LZ) (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|))))))) (and (|M1.__default.Combine#canCall| |sts#0@@4|) (and (|M1.__default.Combine#canCall| (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|)))) (|M1.__default.Union#canCall| |st#0_0@0| (M1.__default.Combine ($LS $LZ) (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|)))))))))) (=> (and (|Set#IsMember| |sts#0@@4| ($Box DatatypeTypeType |st#0_0@0|)) (or (|Set#Equal| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|))) (|M1.State#Equal| (M1.__default.Combine ($LS $LZ) |sts#0@@4|) (M1.__default.Union |st#0_0@0| (M1.__default.Combine ($LS $LZ) (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|)))))))) (and (=> (= (ControlFlow 0 9) 7) anon11_Then_correct) (=> (= (ControlFlow 0 9) 8) anon11_Else_correct))))))
(let ((anon10_Else_correct  (=> (and (|Set#Equal| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|))) (= (ControlFlow 0 12) 9)) anon4_correct)))
(let ((anon10_Then_correct  (=> (and (and (and (and (not (|Set#Equal| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|)))) ($IsAlloc SetType |sts#0@@4| (TSet Tclass.M1.State) $Heap@0)) (and (not (|Set#Equal| |sts#0@@4| |Set#Empty|)) (|M1.__default.Combine#canCall| |sts#0@@4|))) (and (and (M1.State.StateCons_q (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) ($IsAlloc DatatypeTypeType |st#0_0@0| Tclass.M1.State $Heap@0)) (and (= |##sts#0_1@0| (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|)))) ($IsAlloc SetType |##sts#0_1@0| (TSet Tclass.M1.State) $Heap@0)))) (and (and (and (not (|Set#Equal| |##sts#0_1@0| |Set#Empty|)) (|M1.__default.Combine#canCall| (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|))))) (and (M1.State.StateCons_q (M1.__default.Combine ($LS $LZ) (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|))))) (= |##st'#0_0@0| (M1.__default.Combine ($LS $LZ) (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|))))))) (and (and ($IsAlloc DatatypeTypeType |##st'#0_0@0| Tclass.M1.State $Heap@0) (|M1.__default.Union#canCall| |st#0_0@0| (M1.__default.Combine ($LS $LZ) (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|)))))) (and (M1.State.StateCons_q (M1.__default.Union |st#0_0@0| (M1.__default.Combine ($LS $LZ) (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_0@0|)))))) (= (ControlFlow 0 11) 9))))) anon4_correct)))
(let ((anon9_Then_correct  (=> (|Set#IsMember| |sts#0@@4| ($Box DatatypeTypeType |st#0_0@0|)) (and (=> (= (ControlFlow 0 13) 11) anon10_Then_correct) (=> (= (ControlFlow 0 13) 12) anon10_Else_correct)))))
(let ((anon9_Else_correct  (=> (and (not (|Set#IsMember| |sts#0@@4| ($Box DatatypeTypeType |st#0_0@0|))) (= (ControlFlow 0 10) 9)) anon4_correct)))
(let ((anon8_Then_correct  (=> ($Is DatatypeTypeType |st#0_0@0| Tclass.M1.State) (and (=> (= (ControlFlow 0 14) 13) anon9_Then_correct) (=> (= (ControlFlow 0 14) 10) anon9_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> false (=> (|M1.__default.ValidState#canCall| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (or (M1.__default.ValidState (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (forall ((|p#3@@1| T@U) ) (!  (=> ($IsBox |p#3@@1| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)) |p#3@@1|) (M1.__default.WellFounded |p#3@@1|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2169|
 :pattern ( (M1.__default.WellFounded |p#3@@1|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)) |p#3@@1|))
)))))) (=> (=> false (=> (|M1.__default.ValidState#canCall| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (or (M1.__default.ValidState (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (forall ((|p#3@@2| T@U) ) (!  (=> ($IsBox |p#3@@2| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)) |p#3@@2|) (M1.__default.WellFounded |p#3@@2|)))
 :qid |CloudMakeParallelBuildsdfy.15:12|
 :skolemid |2169|
 :pattern ( (M1.__default.WellFounded |p#3@@2|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)) |p#3@@2|))
))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> false (=> (|M1.__default.Extends#canCall| |parent#0| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (or (M1.__default.Extends |parent#0| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (|Set#Subset| (M1.__default.DomSt |parent#0|) (M1.__default.DomSt (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|))))))) (=> (=> false (=> (|M1.__default.Extends#canCall| |parent#0| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (or (M1.__default.Extends |parent#0| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (|Set#Subset| (M1.__default.DomSt |parent#0|) (M1.__default.DomSt (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> false (=> (|M1.__default.Extends#canCall| |parent#0| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (or (M1.__default.Extends |parent#0| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (forall ((|p#4| T@U) ) (!  (=> ($IsBox |p#4| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |parent#0|) |p#4|) (= (M1.__default.GetSt |p#4| (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)) (M1.__default.GetSt |p#4| |parent#0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2172|
 :pattern ( (M1.__default.GetSt |p#4| |parent#0|))
 :pattern ( (M1.__default.GetSt |p#4| (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |parent#0|) |p#4|))
)))))) (=> (=> false (=> (|M1.__default.Extends#canCall| |parent#0| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (or (M1.__default.Extends |parent#0| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (forall ((|p#4@@0| T@U) ) (!  (=> ($IsBox |p#4@@0| Tclass.M1.Path) (=> (|Set#IsMember| (M1.__default.DomSt |parent#0|) |p#4@@0|) (= (M1.__default.GetSt |p#4@@0| (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)) (M1.__default.GetSt |p#4@@0| |parent#0|))))
 :qid |CloudMakeParallelBuildsdfy.115:13|
 :skolemid |2172|
 :pattern ( (M1.__default.GetSt |p#4@@0| |parent#0|))
 :pattern ( (M1.__default.GetSt |p#4@@0| (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |parent#0|) |p#4@@0|))
))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (=> (|M1.__default.Extends#canCall| |parent#0| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (or (M1.__default.Extends |parent#0| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)) (forall ((|p#5| T@U) ) (!  (=> ($IsBox |p#5| Tclass.M1.Path) (=> (and (not (|Set#IsMember| (M1.__default.DomSt |parent#0|) |p#5|)) (|Set#IsMember| (M1.__default.DomSt (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)) |p#5|)) (= (M1.__default.GetSt |p#5| (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)) (M1.__default.Oracle |p#5| |parent#0|))))
 :qid |CloudMakeParallelBuildsdfy.116:13|
 :skolemid |2174|
 :pattern ( (M1.__default.Oracle |p#5| |parent#0|))
 :pattern ( (M1.__default.GetSt |p#5| (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt (M1.__default.Combine ($LS ($LS $LZ)) |sts#0@@4|)) |p#5|))
 :pattern ( (|Set#IsMember| (M1.__default.DomSt |parent#0|) |p#5|))
))))))))))))))
(let ((anon8_Else_correct  (=> (and (forall ((|st#0_1| T@U) ) (!  (=> (and ($Is DatatypeTypeType |st#0_1| Tclass.M1.State) (and (|Set#IsMember| |sts#0@@4| ($Box DatatypeTypeType |st#0_1|)) (or (|Set#Equal| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_1|))) (|M1.State#Equal| (M1.__default.Combine ($LS $LZ) |sts#0@@4|) (M1.__default.Union |st#0_1| (M1.__default.Combine ($LS $LZ) (|Set#Difference| |sts#0@@4| (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_1|))))))))) (M1.__default.Extends |parent#0| (M1.__default.Combine ($LS $LZ) |sts#0@@4|)))
 :qid |CloudMakeParallelBuildsdfy.50:12|
 :skolemid |2186|
 :pattern ( (|Set#UnionOne| |Set#Empty| ($Box DatatypeTypeType |st#0_1|)))
 :pattern ( (|Set#IsMember| |sts#0@@4| ($Box DatatypeTypeType |st#0_1|)))
)) (= (ControlFlow 0 6) 2)) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@5 alloc false)) (|$IsA#M1.State| |parent#0|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@5 $Heap@0) (forall ((|$ih#sts0#0| T@U) ) (!  (=> (and (and ($Is SetType |$ih#sts0#0| (TSet Tclass.M1.State)) (and (not (|Set#Equal| |$ih#sts0#0| |Set#Empty|)) (forall ((|st#2| T@U) ) (!  (=> ($Is DatatypeTypeType |st#2| Tclass.M1.State) (and (=> (|Set#IsMember| |$ih#sts0#0| ($Box DatatypeTypeType |st#2|)) (M1.__default.ValidState |st#2|)) (=> (|Set#IsMember| |$ih#sts0#0| ($Box DatatypeTypeType |st#2|)) (M1.__default.Extends |parent#0| |st#2|))))
 :qid |CloudMakeParallelBuildsdfy.47:21|
 :skolemid |2178|
 :pattern ( (M1.__default.Extends |parent#0| |st#2|))
 :pattern ( (M1.__default.ValidState |st#2|))
 :pattern ( (|Set#IsMember| |$ih#sts0#0| ($Box DatatypeTypeType |st#2|)))
)))) (and (|Set#Subset| |$ih#sts0#0| |sts#0@@4|) (not (|Set#Subset| |sts#0@@4| |$ih#sts0#0|)))) (and (M1.__default.ValidState (M1.__default.Combine ($LS $LZ) |$ih#sts0#0|)) (M1.__default.Extends |parent#0| (M1.__default.Combine ($LS $LZ) |$ih#sts0#0|))))
 :qid |CloudMakeParallelBuildsdfy.45:23|
 :skolemid |2179|
 :pattern ( (M1.__default.Combine ($LS $LZ) |$ih#sts0#0|))
)))) (and (=> (= (ControlFlow 0 15) 14) anon8_Then_correct) (=> (= (ControlFlow 0 15) 6) anon8_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@5) ($IsHeapAnchor $Heap@@5)) (and ($Is SetType |sts#0@@4| (TSet Tclass.M1.State)) ($IsAlloc SetType |sts#0@@4| (TSet Tclass.M1.State) $Heap@@5))) (=> (and (and (and ($Is DatatypeTypeType |parent#0| Tclass.M1.State) ($IsAlloc DatatypeTypeType |parent#0| Tclass.M1.State $Heap@@5)) (|$IsA#M1.State| |parent#0|)) (and (and (= 5 $FunctionContextHeight) (not (|Set#Equal| |sts#0@@4| |Set#Empty|))) (and (forall ((|st#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |st#1@@0| Tclass.M1.State) (and (=> (|Set#IsMember| |sts#0@@4| ($Box DatatypeTypeType |st#1@@0|)) (M1.__default.ValidState |st#1@@0|)) (=> (|Set#IsMember| |sts#0@@4| ($Box DatatypeTypeType |st#1@@0|)) (M1.__default.Extends |parent#0| |st#1@@0|))))
 :qid |CloudMakeParallelBuildsdfy.47:21|
 :skolemid |2168|
 :pattern ( (M1.__default.Extends |parent#0| |st#1@@0|))
 :pattern ( (M1.__default.ValidState |st#1@@0|))
 :pattern ( (|Set#IsMember| |sts#0@@4| ($Box DatatypeTypeType |st#1@@0|)))
)) (= (ControlFlow 0 16) 15)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
