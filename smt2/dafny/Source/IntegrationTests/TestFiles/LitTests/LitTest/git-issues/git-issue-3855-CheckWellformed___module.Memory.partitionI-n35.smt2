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
(declare-fun Tagclass._module.Object () T@U)
(declare-fun Tagclass._module.Region () T@U)
(declare-fun Tagclass._module.Memory () T@U)
(declare-fun Tagclass._module.Memory? () T@U)
(declare-fun Tagclass._module.Object? () T@U)
(declare-fun |##_module.Region.Frozen| () T@U)
(declare-fun |##_module.Region.Heap| () T@U)
(declare-fun |##_module.Region.Stack| () T@U)
(declare-fun |##_module.Region.Frame| () T@U)
(declare-fun |##_module.Region.Isolate| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Object () T@U)
(declare-fun tytagFamily$Region () T@U)
(declare-fun tytagFamily$Memory () T@U)
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
(declare-fun _module.Memory.ownedBy (T@U T@U T@U) T@U)
(declare-fun |_module.Memory.ownedBy#canCall| (T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Memory () T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass._module.Object () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Region () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.Object.region (T@U) T@U)
(declare-fun |_module.Region#Equal| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Object? () T@U)
(declare-fun _module.Region.Heap_q (T@U) Bool)
(declare-fun _module.Region.region (T@U) T@U)
(declare-fun _module.Region.Stack_q (T@U) Bool)
(declare-fun _module.Region.Frame_q (T@U) Bool)
(declare-fun _module.Region.prev (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#54| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Region.Frozen| () T@U)
(declare-fun |#_module.Region.Isolate| () T@U)
(declare-fun Tclass._module.Memory? () T@U)
(declare-fun _module.Memory.allRegions (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |_module.Memory.allRegions#canCall| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#122| (T@U T@U T@U) T@U)
(declare-fun _module.Memory.partitionIntoRegions (T@U T@U) T@U)
(declare-fun |_module.Memory.partitionIntoRegions#canCall| (T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun |lambda#129| (T@U T@U) T@U)
(declare-fun |$IsA#_module.Region| (T@U) Bool)
(declare-fun |lambda#117| (T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.Region.Frozen_q (T@U) Bool)
(declare-fun _module.Region.Isolate_q (T@U) Bool)
(declare-fun |#_module.Region.Heap| (T@U) T@U)
(declare-fun |#_module.Region.Stack| (T@U) T@U)
(declare-fun |#_module.Region.Frame| (T@U) T@U)
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
(assert (distinct TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.Object Tagclass._module.Region Tagclass._module.Memory Tagclass._module.Memory? Tagclass._module.Object? |##_module.Region.Frozen| |##_module.Region.Heap| |##_module.Region.Stack| |##_module.Region.Frame| |##_module.Region.Isolate| |tytagFamily$_tuple#2| tytagFamily$Object tytagFamily$Region tytagFamily$Memory)
)
(assert  (and (and (= (Ctor refType) 3) (= (Ctor SetType) 4)) (= (Ctor DatatypeTypeType) 5)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this T@U) (|os#0| T@U) (|region#0| T@U) ) (!  (=> (or (|_module.Memory.ownedBy#canCall| this |os#0| |region#0|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.Memory)) ($Is SetType |os#0| (TSet Tclass._module.Object))) ($Is DatatypeTypeType |region#0| Tclass._module.Region)))) (and (forall ((|o#0| T@U) ) (!  (=> (and ($Is refType |o#0| Tclass._module.Object) (|Set#IsMember| |os#0| ($Box refType |o#0|))) (= (|_module.Region#Equal| (_module.Object.region |o#0|) |region#0|) (|Set#IsMember| (_module.Memory.ownedBy this |os#0| |region#0|) ($Box refType |o#0|))))
 :qid |gitissue3855dfy.595:18|
 :skolemid |1167|
 :pattern ( (|Set#IsMember| (_module.Memory.ownedBy this |os#0| |region#0|) ($Box refType |o#0|)))
 :pattern ( (_module.Object.region |o#0|))
 :pattern ( (|Set#IsMember| |os#0| ($Box refType |o#0|)))
)) ($Is SetType (_module.Memory.ownedBy this |os#0| |region#0|) (TSet Tclass._module.Object))))
 :qid |gitissue3855dfy.594:10|
 :skolemid |1168|
 :pattern ( (_module.Memory.ownedBy this |os#0| |region#0|))
))))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass._module.Object?)) ($Is DatatypeTypeType (_module.Object.region $o) Tclass._module.Region))
 :qid |unknown.0:0|
 :skolemid |740|
 :pattern ( (_module.Object.region $o))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (_module.Region.Heap_q a) (_module.Region.Heap_q b)) (= (|_module.Region#Equal| a b) (= (_module.Region.region a) (_module.Region.region b))))
 :qid |unknown.0:0|
 :skolemid |733|
 :pattern ( (|_module.Region#Equal| a b) (_module.Region.Heap_q a))
 :pattern ( (|_module.Region#Equal| a b) (_module.Region.Heap_q b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Region.Stack_q a@@0) (_module.Region.Stack_q b@@0)) (= (|_module.Region#Equal| a@@0 b@@0) (= (_module.Region.region a@@0) (_module.Region.region b@@0))))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( (|_module.Region#Equal| a@@0 b@@0) (_module.Region.Stack_q a@@0))
 :pattern ( (|_module.Region#Equal| a@@0 b@@0) (_module.Region.Stack_q b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Region.Frame_q a@@1) (_module.Region.Frame_q b@@1)) (= (|_module.Region#Equal| a@@1 b@@1) (= (_module.Region.prev a@@1) (_module.Region.prev b@@1))))
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( (|_module.Region#Equal| a@@1 b@@1) (_module.Region.Frame_q a@@1))
 :pattern ( (|_module.Region#Equal| a@@1 b@@1) (_module.Region.Frame_q b@@1))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#54| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |gitissue3855dfy.19:10|
 :skolemid |1418|
 :pattern ( (MapType0Select BoxType boolType (|lambda#54| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a@@2 b@@2 t)) a@@2)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |286|
 :pattern ( (|Map#Domain| (|Map#Glue| a@@2 b@@2 t)))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@3 b@@3 t@@0)) b@@3)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |287|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@3 b@@3 t@@0)))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (and (and (and (= (Ctor FieldType) 7) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert  (=> (< 2 $FunctionContextHeight) (forall (($h T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass._module.Object?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))) ($IsAlloc DatatypeTypeType (_module.Object.region $o@@0) Tclass._module.Region $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |741|
 :pattern ( (_module.Object.region $o@@0) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))
))))
(assert (= (DatatypeCtorId |#_module.Region.Frozen|) |##_module.Region.Frozen|))
(assert (= (DatatypeCtorId |#_module.Region.Isolate|) |##_module.Region.Isolate|))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Object?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($Is refType $o@@1 Tclass._module.Object?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.Memory?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.Memory?)))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( ($Is refType $o@@2 Tclass._module.Memory?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Object $h@@0) ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Memory $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Memory? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1378|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Memory $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Memory? $h@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@0 T@U) (|os#0@@0| T@U) ) (!  (=> (or (|_module.Memory.allRegions#canCall| this@@0 (Lit SetType |os#0@@0|)) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Memory)) ($Is SetType |os#0@@0| (TSet Tclass._module.Object))))) (= (_module.Memory.allRegions this@@0 (Lit SetType |os#0@@0|)) (|Set#FromBoogieMap| (|lambda#122| Tclass._module.Object (Lit SetType |os#0@@0|) |os#0@@0|))))
 :qid |gitissue3855dfy.600:10|
 :weight 3
 :skolemid |1187|
 :pattern ( (_module.Memory.allRegions this@@0 (Lit SetType |os#0@@0|)))
))))
(assert (= (Ctor MapType) 9))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((this@@1 T@U) (|os#0@@1| T@U) ) (!  (=> (or (|_module.Memory.partitionIntoRegions#canCall| this@@1 |os#0@@1|) (and (< 4 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Memory)) ($Is SetType |os#0@@1| (TSet Tclass._module.Object))))) (and (and (and (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.Object) (|Set#IsMember| |os#0@@1| ($Box refType |o#0@@0|))) (|Set#IsMember| (|Map#Domain| (_module.Memory.partitionIntoRegions this@@1 |os#0@@1|)) ($Box DatatypeTypeType (_module.Object.region |o#0@@0|))))
 :qid |gitissue3855dfy.614:18|
 :skolemid |1194|
 :pattern ( (_module.Object.region |o#0@@0|))
 :pattern ( (|Set#IsMember| |os#0@@1| ($Box refType |o#0@@0|)))
)) (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.Object) (|Set#IsMember| |os#0@@1| ($Box refType |o#1|))) (|Set#IsMember| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Memory.partitionIntoRegions this@@1 |os#0@@1|)) ($Box DatatypeTypeType (_module.Object.region |o#1|)))) ($Box refType |o#1|)))
 :qid |gitissue3855dfy.615:18|
 :skolemid |1195|
 :pattern ( (_module.Object.region |o#1|))
 :pattern ( (|Set#IsMember| |os#0@@1| ($Box refType |o#1|)))
))) (forall ((|o1#0| T@U) (|o2#0| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |o1#0| Tclass._module.Region) ($Is DatatypeTypeType |o2#0| Tclass._module.Region)) (and (|Set#IsMember| (_module.Memory.allRegions this@@1 |os#0@@1|) ($Box DatatypeTypeType |o1#0|)) (|Set#IsMember| (_module.Memory.allRegions this@@1 |os#0@@1|) ($Box DatatypeTypeType |o2#0|)))) (ite (|_module.Region#Equal| |o1#0| |o2#0|) (|Set#Equal| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Memory.partitionIntoRegions this@@1 |os#0@@1|)) ($Box DatatypeTypeType |o1#0|))) ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Memory.partitionIntoRegions this@@1 |os#0@@1|)) ($Box DatatypeTypeType |o2#0|)))) (|Set#Disjoint| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Memory.partitionIntoRegions this@@1 |os#0@@1|)) ($Box DatatypeTypeType |o1#0|))) ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Memory.partitionIntoRegions this@@1 |os#0@@1|)) ($Box DatatypeTypeType |o2#0|))))))
 :qid |gitissue3855dfy.616:18|
 :skolemid |1196|
 :pattern ( ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Memory.partitionIntoRegions this@@1 |os#0@@1|)) ($Box DatatypeTypeType |o2#0|))) ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Memory.partitionIntoRegions this@@1 |os#0@@1|)) ($Box DatatypeTypeType |o1#0|))))
 :pattern ( ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Memory.partitionIntoRegions this@@1 |os#0@@1|)) ($Box DatatypeTypeType |o2#0|))) (|Set#IsMember| (_module.Memory.allRegions this@@1 |os#0@@1|) ($Box DatatypeTypeType |o1#0|)))
 :pattern ( ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| (_module.Memory.partitionIntoRegions this@@1 |os#0@@1|)) ($Box DatatypeTypeType |o1#0|))) (|Set#IsMember| (_module.Memory.allRegions this@@1 |os#0@@1|) ($Box DatatypeTypeType |o2#0|)))
 :pattern ( (|Set#IsMember| (_module.Memory.allRegions this@@1 |os#0@@1|) ($Box DatatypeTypeType |o2#0|)) (|Set#IsMember| (_module.Memory.allRegions this@@1 |os#0@@1|) ($Box DatatypeTypeType |o1#0|)))
))) ($Is MapType (_module.Memory.partitionIntoRegions this@@1 |os#0@@1|) (TMap Tclass._module.Region (TSet Tclass._module.Object)))))
 :qid |gitissue3855dfy.613:10|
 :skolemid |1197|
 :pattern ( (_module.Memory.partitionIntoRegions this@@1 |os#0@@1|))
))))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region))
(assert ($Is DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region))
(assert (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |699|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Region.Frozen| Tclass._module.Region $h@@2))
)))
(assert (forall (($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) ($IsAlloc DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Region.Isolate| Tclass._module.Region $h@@3))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((this@@2 T@U) (|os#0@@2| T@U) ) (!  (=> (or (|_module.Memory.partitionIntoRegions#canCall| this@@2 (Lit SetType |os#0@@2|)) (and (< 4 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Memory)) ($Is SetType |os#0@@2| (TSet Tclass._module.Object))))) (and (forall ((|region#0@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |region#0@@0| Tclass._module.Region) (and (|_module.Memory.allRegions#canCall| this@@2 (Lit SetType |os#0@@2|)) (=> (|Set#IsMember| (_module.Memory.allRegions this@@2 (Lit SetType |os#0@@2|)) ($Box DatatypeTypeType |region#0@@0|)) (|_module.Memory.ownedBy#canCall| this@@2 (Lit SetType |os#0@@2|) |region#0@@0|))))
 :qid |gitissue3855dfy.621:7|
 :skolemid |1202|
 :pattern ( (_module.Memory.ownedBy this@@2 |os#0@@2| |region#0@@0|))
 :pattern ( (|Set#IsMember| (_module.Memory.allRegions this@@2 |os#0@@2|) ($Box DatatypeTypeType |region#0@@0|)))
)) (= (_module.Memory.partitionIntoRegions this@@2 (Lit SetType |os#0@@2|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#54| Tclass._module.Region (_module.Memory.allRegions this@@2 (Lit SetType |os#0@@2|)))) (|lambda#129| this@@2 (Lit SetType |os#0@@2|)) (TMap Tclass._module.Region (TSet Tclass._module.Object))))))
 :qid |gitissue3855dfy.613:10|
 :weight 3
 :skolemid |1203|
 :pattern ( (_module.Memory.partitionIntoRegions this@@2 (Lit SetType |os#0@@2|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@3 T@U) (|os#0@@3| T@U) (|region#0@@1| T@U) ) (!  (=> (or (|_module.Memory.ownedBy#canCall| (Lit refType this@@3) (Lit SetType |os#0@@3|) (Lit DatatypeTypeType |region#0@@1|)) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Memory)) ($Is SetType |os#0@@3| (TSet Tclass._module.Object))) ($Is DatatypeTypeType |region#0@@1| Tclass._module.Region)))) (and (forall ((|o#3| T@U) ) (!  (=> ($Is refType |o#3| Tclass._module.Object) (=> (|Set#IsMember| (Lit SetType |os#0@@3|) ($Box refType |o#3|)) (and (|$IsA#_module.Region| (_module.Object.region |o#3|)) (|$IsA#_module.Region| (Lit DatatypeTypeType |region#0@@1|)))))
 :qid |gitissue3855dfy.597:7|
 :skolemid |1175|
 :pattern ( (_module.Object.region |o#3|))
 :pattern ( (|Set#IsMember| |os#0@@3| ($Box refType |o#3|)))
)) (= (_module.Memory.ownedBy (Lit refType this@@3) (Lit SetType |os#0@@3|) (Lit DatatypeTypeType |region#0@@1|)) (|Set#FromBoogieMap| (|lambda#117| Tclass._module.Object (Lit SetType |os#0@@3|) |region#0@@1|)))))
 :qid |gitissue3855dfy.594:10|
 :weight 3
 :skolemid |1176|
 :pattern ( (_module.Memory.ownedBy (Lit refType this@@3) (Lit SetType |os#0@@3|) (Lit DatatypeTypeType |region#0@@1|)))
))))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Object? $h@@4))
)))
(assert (forall (($o@@4 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.Memory? $h@@5)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Memory? $h@@5))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#129| |l#0@@0| |l#1@@0|) |$w#0@@0|) ($Box SetType (_module.Memory.ownedBy |l#0@@0| |l#1@@0| ($Unbox DatatypeTypeType |$w#0@@0|))))
 :qid |gitissue3855dfy.613:10|
 :skolemid |1426|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#129| |l#0@@0| |l#1@@0|) |$w#0@@0|))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|_module.Region#Equal| a@@4 b@@4) (= a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |737|
 :pattern ( (|_module.Region#Equal| a@@4 b@@4))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@4 T@U) (|os#0@@4| T@U) (|region#0@@2| T@U) ) (!  (=> (or (|_module.Memory.ownedBy#canCall| this@@4 |os#0@@4| |region#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.Memory)) ($Is SetType |os#0@@4| (TSet Tclass._module.Object))) ($Is DatatypeTypeType |region#0@@2| Tclass._module.Region)))) (and (forall ((|o#1@@0| T@U) ) (!  (=> ($Is refType |o#1@@0| Tclass._module.Object) (=> (|Set#IsMember| |os#0@@4| ($Box refType |o#1@@0|)) (and (|$IsA#_module.Region| (_module.Object.region |o#1@@0|)) (|$IsA#_module.Region| |region#0@@2|))))
 :qid |gitissue3855dfy.597:7|
 :skolemid |1171|
 :pattern ( (_module.Object.region |o#1@@0|))
 :pattern ( (|Set#IsMember| |os#0@@4| ($Box refType |o#1@@0|)))
)) (= (_module.Memory.ownedBy this@@4 |os#0@@4| |region#0@@2|) (|Set#FromBoogieMap| (|lambda#117| Tclass._module.Object |os#0@@4| |region#0@@2|)))))
 :qid |gitissue3855dfy.594:10|
 :skolemid |1172|
 :pattern ( (_module.Memory.ownedBy this@@4 |os#0@@4| |region#0@@2|))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@5 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@5 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@5 b@@5 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@5 b@@5 (TMap t0@@0 t1@@0)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@6)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@6) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@6))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@6))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Region.Frozen_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Region.Frozen|))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( (_module.Region.Frozen_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Region.Heap_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Region.Heap|))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( (_module.Region.Heap_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Region.Stack_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Region.Stack|))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( (_module.Region.Stack_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.Region.Frame_q d@@4) (= (DatatypeCtorId d@@4) |##_module.Region.Frame|))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (_module.Region.Frame_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_module.Region.Isolate_q d@@5) (= (DatatypeCtorId d@@5) |##_module.Region.Isolate|))
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( (_module.Region.Isolate_q d@@5))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (! (= (|Set#Disjoint| a@@6 b@@6) (forall ((o T@U) ) (!  (or (not (|Set#IsMember| a@@6 o)) (not (|Set#IsMember| b@@6 o)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@6 o))
 :pattern ( (|Set#IsMember| b@@6 o))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@6 b@@6))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@6) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@6 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.Region.Frozen_q d@@7) (= d@@7 |#_module.Region.Frozen|))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( (_module.Region.Frozen_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.Region.Isolate_q d@@8) (= d@@8 |#_module.Region.Isolate|))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( (_module.Region.Isolate_q d@@8))
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
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.Region.Heap_q d@@9) (exists ((|a#25#0#0| T@U) ) (! (= d@@9 (|#_module.Region.Heap| |a#25#0#0|))
 :qid |gitissue3855dfy.19:33|
 :skolemid |702|
)))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( (_module.Region.Heap_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_module.Region.Stack_q d@@10) (exists ((|a#30#0#0| T@U) ) (! (= d@@10 (|#_module.Region.Stack| |a#30#0#0|))
 :qid |gitissue3855dfy.19:58|
 :skolemid |711|
)))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (_module.Region.Stack_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (_module.Region.Frame_q d@@11) (exists ((|a#35#0#0| T@U) ) (! (= d@@11 (|#_module.Region.Frame| |a#35#0#0|))
 :qid |gitissue3855dfy.19:84|
 :skolemid |720|
)))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( (_module.Region.Frame_q d@@11))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@5 T@U) (|os#0@@5| T@U) (|region#0@@3| T@U) ) (!  (=> (or (|_module.Memory.ownedBy#canCall| this@@5 (Lit SetType |os#0@@5|) (Lit DatatypeTypeType |region#0@@3|)) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Memory)) ($Is SetType |os#0@@5| (TSet Tclass._module.Object))) ($Is DatatypeTypeType |region#0@@3| Tclass._module.Region)))) (and (forall ((|o#2| T@U) ) (!  (=> ($Is refType |o#2| Tclass._module.Object) (=> (|Set#IsMember| (Lit SetType |os#0@@5|) ($Box refType |o#2|)) (and (|$IsA#_module.Region| (_module.Object.region |o#2|)) (|$IsA#_module.Region| (Lit DatatypeTypeType |region#0@@3|)))))
 :qid |gitissue3855dfy.597:7|
 :skolemid |1173|
 :pattern ( (_module.Object.region |o#2|))
 :pattern ( (|Set#IsMember| |os#0@@5| ($Box refType |o#2|)))
)) (= (_module.Memory.ownedBy this@@5 (Lit SetType |os#0@@5|) (Lit DatatypeTypeType |region#0@@3|)) (|Set#FromBoogieMap| (|lambda#117| Tclass._module.Object (Lit SetType |os#0@@5|) |region#0@@3|)))))
 :qid |gitissue3855dfy.594:10|
 :weight 3
 :skolemid |1174|
 :pattern ( (_module.Memory.ownedBy this@@5 (Lit SetType |os#0@@5|) (Lit DatatypeTypeType |region#0@@3|)))
))))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@1 h) ($IsAlloc T@@1 v@@0 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@1 h))
)))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((this@@6 T@U) (|os#0@@6| T@U) ) (!  (=> (or (|_module.Memory.partitionIntoRegions#canCall| this@@6 |os#0@@6|) (and (< 4 $FunctionContextHeight) (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 Tclass._module.Memory)) ($Is SetType |os#0@@6| (TSet Tclass._module.Object))))) (and (forall ((|region#0@@4| T@U) ) (!  (=> ($Is DatatypeTypeType |region#0@@4| Tclass._module.Region) (and (|_module.Memory.allRegions#canCall| this@@6 |os#0@@6|) (=> (|Set#IsMember| (_module.Memory.allRegions this@@6 |os#0@@6|) ($Box DatatypeTypeType |region#0@@4|)) (|_module.Memory.ownedBy#canCall| this@@6 |os#0@@6| |region#0@@4|))))
 :qid |gitissue3855dfy.621:7|
 :skolemid |1200|
 :pattern ( (_module.Memory.ownedBy this@@6 |os#0@@6| |region#0@@4|))
 :pattern ( (|Set#IsMember| (_module.Memory.allRegions this@@6 |os#0@@6|) ($Box DatatypeTypeType |region#0@@4|)))
)) (= (_module.Memory.partitionIntoRegions this@@6 |os#0@@6|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#54| Tclass._module.Region (_module.Memory.allRegions this@@6 |os#0@@6|))) (|lambda#129| this@@6 |os#0@@6|) (TMap Tclass._module.Region (TSet Tclass._module.Object))))))
 :qid |gitissue3855dfy.613:10|
 :skolemid |1201|
 :pattern ( (_module.Memory.partitionIntoRegions this@@6 |os#0@@6|))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Object)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsBox bx@@2 Tclass._module.Object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Region) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass._module.Region)))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsBox bx@@3 Tclass._module.Region))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Memory) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Memory)))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsBox bx@@4 Tclass._module.Memory))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Memory?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Memory?)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsBox bx@@5 Tclass._module.Memory?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Object?)))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsBox bx@@6 Tclass._module.Object?))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0|) Tclass._module.Region) ($Is refType |a#26#0#0| Tclass._module.Object))
 :qid |gitissue3855dfy.19:33|
 :skolemid |704|
 :pattern ( ($Is DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0|) Tclass._module.Region))
)))
(assert (forall ((|a#31#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0|) Tclass._module.Region) ($Is refType |a#31#0#0| Tclass._module.Object))
 :qid |gitissue3855dfy.19:58|
 :skolemid |713|
 :pattern ( ($Is DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0|) Tclass._module.Region))
)))
(assert (forall ((|a#36#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0|) Tclass._module.Region) ($Is refType |a#36#0#0| Tclass._module.Object))
 :qid |gitissue3855dfy.19:84|
 :skolemid |722|
 :pattern ( ($Is DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0|) Tclass._module.Region))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Object)  (and ($Is refType |c#0@@1| Tclass._module.Object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |802|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Object))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Memory)  (and ($Is refType |c#0@@2| Tclass._module.Memory?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1377|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Memory))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Memory?))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@7 T@U) (|os#0@@7| T@U) ) (!  (=> (or (|_module.Memory.allRegions#canCall| this@@7 |os#0@@7|) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 Tclass._module.Memory)) ($Is SetType |os#0@@7| (TSet Tclass._module.Object))))) (and (forall ((|o#0@@1| T@U) ) (!  (=> (and ($Is refType |o#0@@1| Tclass._module.Object) (|Set#IsMember| |os#0@@7| ($Box refType |o#0@@1|))) (|Set#IsMember| (_module.Memory.allRegions this@@7 |os#0@@7|) ($Box DatatypeTypeType (_module.Object.region |o#0@@1|))))
 :qid |gitissue3855dfy.601:19|
 :skolemid |1180|
 :pattern ( (_module.Object.region |o#0@@1|))
 :pattern ( (|Set#IsMember| |os#0@@7| ($Box refType |o#0@@1|)))
)) ($Is SetType (_module.Memory.allRegions this@@7 |os#0@@7|) (TSet Tclass._module.Region))))
 :qid |gitissue3855dfy.600:10|
 :skolemid |1181|
 :pattern ( (_module.Memory.allRegions this@@7 |os#0@@7|))
))))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#122| |l#0@@1| |l#1@@1| |l#2|) |$y#0|)) (exists ((|o#1@@1| T@U) ) (!  (and (and ($Is refType |o#1@@1| |l#0@@1|) (|Set#IsMember| |l#1@@1| ($Box refType |o#1@@1|))) (= |$y#0| ($Box DatatypeTypeType (_module.Object.region |o#1@@1|))))
 :qid |gitissue3855dfy.603:7|
 :skolemid |1184|
 :pattern ( (_module.Object.region |o#1@@1|))
 :pattern ( (|Set#IsMember| |l#2| ($Box refType |o#1@@1|)))
)))
 :qid |gitissue3855dfy.87:7|
 :skolemid |1425|
 :pattern ( (MapType0Select BoxType boolType (|lambda#122| |l#0@@1| |l#1@@1| |l#2|) |$y#0|))
)))
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@7 b@@7) (= a@@7 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@7 b@@7))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap T@U) (this@@8 T@U) (|os#0@@8| T@U) (|region#0@@5| T@U) ) (!  (=> (and (or (|_module.Memory.ownedBy#canCall| this@@8 |os#0@@8| |region#0@@5|) (and (< 3 $FunctionContextHeight) (and (and (and (or (not (= this@@8 null)) (not true)) ($IsAlloc refType this@@8 Tclass._module.Memory $Heap)) (and ($Is SetType |os#0@@8| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0@@8| (TSet Tclass._module.Object) $Heap))) (and ($Is DatatypeTypeType |region#0@@5| Tclass._module.Region) ($IsAlloc DatatypeTypeType |region#0@@5| Tclass._module.Region $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (_module.Memory.ownedBy this@@8 |os#0@@8| |region#0@@5|) (TSet Tclass._module.Object) $Heap))
 :qid |gitissue3855dfy.594:10|
 :skolemid |1169|
 :pattern ( ($IsAlloc SetType (_module.Memory.ownedBy this@@8 |os#0@@8| |region#0@@5|) (TSet Tclass._module.Object) $Heap))
))))
(assert (forall ((|a#26#0#0@@0| T@U) ($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0@@0|) Tclass._module.Region $h@@7) ($IsAlloc refType |a#26#0#0@@0| Tclass._module.Object $h@@7)))
 :qid |gitissue3855dfy.19:33|
 :skolemid |705|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Heap| |a#26#0#0@@0|) Tclass._module.Region $h@@7))
)))
(assert (forall ((|a#31#0#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0@@0|) Tclass._module.Region $h@@8) ($IsAlloc refType |a#31#0#0@@0| Tclass._module.Object $h@@8)))
 :qid |gitissue3855dfy.19:58|
 :skolemid |714|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Stack| |a#31#0#0@@0|) Tclass._module.Region $h@@8))
)))
(assert (forall ((|a#36#0#0@@0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0@@0|) Tclass._module.Region $h@@9) ($IsAlloc refType |a#36#0#0@@0| Tclass._module.Object $h@@9)))
 :qid |gitissue3855dfy.19:84|
 :skolemid |723|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Region.Frame| |a#36#0#0@@0|) Tclass._module.Region $h@@9))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@9 T@U) (|os#0@@9| T@U) ) (!  (=> (or (|_module.Memory.allRegions#canCall| (Lit refType this@@9) (Lit SetType |os#0@@9|)) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.Memory)) ($Is SetType |os#0@@9| (TSet Tclass._module.Object))))) (= (_module.Memory.allRegions (Lit refType this@@9) (Lit SetType |os#0@@9|)) (|Set#FromBoogieMap| (|lambda#122| Tclass._module.Object (Lit SetType |os#0@@9|) |os#0@@9|))))
 :qid |gitissue3855dfy.600:10|
 :weight 3
 :skolemid |1189|
 :pattern ( (_module.Memory.allRegions (Lit refType this@@9) (Lit SetType |os#0@@9|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@10 T@U) (|os#0@@10| T@U) ) (!  (=> (and (or (|_module.Memory.allRegions#canCall| this@@10 |os#0@@10|) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@10 null)) (not true)) ($IsAlloc refType this@@10 Tclass._module.Memory $Heap@@0)) (and ($Is SetType |os#0@@10| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0@@10| (TSet Tclass._module.Object) $Heap@@0))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc SetType (_module.Memory.allRegions this@@10 |os#0@@10|) (TSet Tclass._module.Region) $Heap@@0))
 :qid |gitissue3855dfy.600:10|
 :skolemid |1182|
 :pattern ( ($IsAlloc SetType (_module.Memory.allRegions this@@10 |os#0@@10|) (TSet Tclass._module.Region) $Heap@@0))
))))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (!  (=> (and (_module.Region.Frozen_q a@@8) (_module.Region.Frozen_q b@@8)) (|_module.Region#Equal| a@@8 b@@8))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( (|_module.Region#Equal| a@@8 b@@8) (_module.Region.Frozen_q a@@8))
 :pattern ( (|_module.Region#Equal| a@@8 b@@8) (_module.Region.Frozen_q b@@8))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (!  (=> (and (_module.Region.Isolate_q a@@9) (_module.Region.Isolate_q b@@9)) (|_module.Region#Equal| a@@9 b@@9))
 :qid |unknown.0:0|
 :skolemid |736|
 :pattern ( (|_module.Region#Equal| a@@9 b@@9) (_module.Region.Isolate_q a@@9))
 :pattern ( (|_module.Region#Equal| a@@9 b@@9) (_module.Region.Isolate_q b@@9))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@7) ($IsAllocBox bx@@7 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@7))
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
(assert (forall ((|a#24#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Region.Heap| |a#24#0#0|)) |##_module.Region.Heap|)
 :qid |gitissue3855dfy.19:33|
 :skolemid |700|
 :pattern ( (|#_module.Region.Heap| |a#24#0#0|))
)))
(assert (forall ((|a#28#0#0| T@U) ) (! (= (_module.Region.region (|#_module.Region.Heap| |a#28#0#0|)) |a#28#0#0|)
 :qid |gitissue3855dfy.19:33|
 :skolemid |708|
 :pattern ( (|#_module.Region.Heap| |a#28#0#0|))
)))
(assert (forall ((|a#29#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Region.Stack| |a#29#0#0|)) |##_module.Region.Stack|)
 :qid |gitissue3855dfy.19:58|
 :skolemid |709|
 :pattern ( (|#_module.Region.Stack| |a#29#0#0|))
)))
(assert (forall ((|a#33#0#0| T@U) ) (! (= (_module.Region.region (|#_module.Region.Stack| |a#33#0#0|)) |a#33#0#0|)
 :qid |gitissue3855dfy.19:58|
 :skolemid |717|
 :pattern ( (|#_module.Region.Stack| |a#33#0#0|))
)))
(assert (forall ((|a#34#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Region.Frame| |a#34#0#0|)) |##_module.Region.Frame|)
 :qid |gitissue3855dfy.19:84|
 :skolemid |718|
 :pattern ( (|#_module.Region.Frame| |a#34#0#0|))
)))
(assert (forall ((|a#38#0#0| T@U) ) (! (= (_module.Region.prev (|#_module.Region.Frame| |a#38#0#0|)) |a#38#0#0|)
 :qid |gitissue3855dfy.19:84|
 :skolemid |726|
 :pattern ( (|#_module.Region.Frame| |a#38#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (t1@@1 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MapType v@@3 (TMap t0@@3 t1@@1) h@@1) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@8) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@8) t1@@1 h@@1) ($IsAllocBox bx@@8 t0@@3 h@@1)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@8))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@8))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@11 T@U) (|os#0@@11| T@U) ) (!  (=> (and (or (|_module.Memory.partitionIntoRegions#canCall| this@@11 |os#0@@11|) (and (< 4 $FunctionContextHeight) (and (and (or (not (= this@@11 null)) (not true)) ($IsAlloc refType this@@11 Tclass._module.Memory $Heap@@1)) (and ($Is SetType |os#0@@11| (TSet Tclass._module.Object)) ($IsAlloc SetType |os#0@@11| (TSet Tclass._module.Object) $Heap@@1))))) ($IsGoodHeap $Heap@@1)) ($IsAlloc MapType (_module.Memory.partitionIntoRegions this@@11 |os#0@@11|) (TMap Tclass._module.Region (TSet Tclass._module.Object)) $Heap@@1))
 :qid |gitissue3855dfy.613:10|
 :skolemid |1198|
 :pattern ( ($IsAlloc MapType (_module.Memory.partitionIntoRegions this@@11 |os#0@@11|) (TMap Tclass._module.Region (TSet Tclass._module.Object)) $Heap@@1))
))))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@9 T@U) (s T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@9 (TMap s t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@9)) bx@@9) ($Is MapType ($Unbox MapType bx@@9) (TMap s t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@9 (TMap s t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (forall ((t0@@4 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@2 t2 (MapType1Store t0@@4 t1@@2 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@2| T@U) (|l#1@@2| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@2| |l#2@@0| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@2| $o@@5) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1406|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@2| |l#2@@0| |l#3|) $o@@5 $f))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (|$IsA#_module.Region| d@@12) (or (or (or (or (_module.Region.Frozen_q d@@12) (_module.Region.Heap_q d@@12)) (_module.Region.Stack_q d@@12)) (_module.Region.Frame_q d@@12)) (_module.Region.Isolate_q d@@12)))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( (|$IsA#_module.Region| d@@12))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@3| T@U) (|l#2@@1| T@U) (|$y#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#117| |l#0@@3| |l#1@@3| |l#2@@1|) |$y#0@@0|))  (and ($IsBox |$y#0@@0| |l#0@@3|) (and (|Set#IsMember| |l#1@@3| |$y#0@@0|) (|_module.Region#Equal| (_module.Object.region ($Unbox refType |$y#0@@0|)) |l#2@@1|))))
 :qid |gitissue3855dfy.87:7|
 :skolemid |1424|
 :pattern ( (MapType0Select BoxType boolType (|lambda#117| |l#0@@3| |l#1@@3| |l#2@@1|) |$y#0@@0|))
)))
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
(assert (forall ((d@@13 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@13)) (DtRank d@@13))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@13)))
)))
(assert (forall ((bx@@11 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@9)))
)))
(assert (forall ((v@@6 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (! (= ($Is MapType v@@6 (TMap t0@@5 t1@@3)) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@12) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@12) t1@@3) ($IsBox bx@@12 t0@@5)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@12))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@6 (TMap t0@@5 t1@@3)))
)))
(assert (= (Tag Tclass._module.Object) Tagclass._module.Object))
(assert (= (TagFamily Tclass._module.Object) tytagFamily$Object))
(assert (= (Tag Tclass._module.Region) Tagclass._module.Region))
(assert (= (TagFamily Tclass._module.Region) tytagFamily$Region))
(assert (= (Tag Tclass._module.Memory) Tagclass._module.Memory))
(assert (= (TagFamily Tclass._module.Memory) tytagFamily$Memory))
(assert (= (Tag Tclass._module.Memory?) Tagclass._module.Memory?))
(assert (= (TagFamily Tclass._module.Memory?) tytagFamily$Memory))
(assert (= (Tag Tclass._module.Object?) Tagclass._module.Object?))
(assert (= (TagFamily Tclass._module.Object?) tytagFamily$Object))
(assert  (=> (<= 4 $FunctionContextHeight) (forall ((this@@12 T@U) (|os#0@@12| T@U) ) (!  (=> (or (|_module.Memory.partitionIntoRegions#canCall| (Lit refType this@@12) (Lit SetType |os#0@@12|)) (and (< 4 $FunctionContextHeight) (and (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.Memory)) ($Is SetType |os#0@@12| (TSet Tclass._module.Object))))) (and (forall ((|region#0@@6| T@U) ) (!  (=> ($Is DatatypeTypeType |region#0@@6| Tclass._module.Region) (and (|_module.Memory.allRegions#canCall| (Lit refType this@@12) (Lit SetType |os#0@@12|)) (=> (|Set#IsMember| (Lit SetType (_module.Memory.allRegions (Lit refType this@@12) (Lit SetType |os#0@@12|))) ($Box DatatypeTypeType |region#0@@6|)) (|_module.Memory.ownedBy#canCall| (Lit refType this@@12) (Lit SetType |os#0@@12|) |region#0@@6|))))
 :qid |gitissue3855dfy.621:7|
 :skolemid |1204|
 :pattern ( (_module.Memory.ownedBy this@@12 |os#0@@12| |region#0@@6|))
 :pattern ( (|Set#IsMember| (_module.Memory.allRegions this@@12 |os#0@@12|) ($Box DatatypeTypeType |region#0@@6|)))
)) (= (_module.Memory.partitionIntoRegions (Lit refType this@@12) (Lit SetType |os#0@@12|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#54| Tclass._module.Region (Lit SetType (_module.Memory.allRegions (Lit refType this@@12) (Lit SetType |os#0@@12|))))) (|lambda#129| (Lit refType this@@12) (Lit SetType |os#0@@12|)) (TMap Tclass._module.Region (TSet Tclass._module.Object))))))
 :qid |gitissue3855dfy.613:10|
 :weight 3
 :skolemid |1205|
 :pattern ( (_module.Memory.partitionIntoRegions (Lit refType this@@12) (Lit SetType |os#0@@12|)))
))))
(assert (= |#_module.Region.Frozen| (Lit DatatypeTypeType |#_module.Region.Frozen|)))
(assert (= |#_module.Region.Isolate| (Lit DatatypeTypeType |#_module.Region.Isolate|)))
(assert (forall ((d@@14 T@U) ) (!  (=> ($Is DatatypeTypeType d@@14 Tclass._module.Region) (or (or (or (or (_module.Region.Frozen_q d@@14) (_module.Region.Heap_q d@@14)) (_module.Region.Stack_q d@@14)) (_module.Region.Frame_q d@@14)) (_module.Region.Isolate_q d@@14)))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( (_module.Region.Isolate_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Region))
 :pattern ( (_module.Region.Frame_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Region))
 :pattern ( (_module.Region.Stack_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Region))
 :pattern ( (_module.Region.Heap_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Region))
 :pattern ( (_module.Region.Frozen_q d@@14) ($Is DatatypeTypeType d@@14 Tclass._module.Region))
)))
(assert (forall ((a@@10 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@10 b@@10) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@10 o@@0) (|Set#IsMember| b@@10 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@10 o@@0))
 :pattern ( (|Set#IsMember| b@@10 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@10 b@@10))
)))
(assert (forall ((d@@15 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple2.___hMake2_q d@@15) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@10))
)))) ($IsAllocBox (_System.Tuple2._0 d@@15) |_System._tuple#2$T0@@6| $h@@10))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@15) |_System._tuple#2$T0@@6| $h@@10))
)))
(assert (forall ((d@@16 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_System.Tuple2.___hMake2_q d@@16) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@16 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@11)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@11))
)))) ($IsAllocBox (_System.Tuple2._1 d@@16) |_System._tuple#2$T1@@7| $h@@11))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@16) |_System._tuple#2$T1@@7| $h@@11))
)))
(assert (forall ((d@@17 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.Region.Heap_q d@@17) ($IsAlloc DatatypeTypeType d@@17 Tclass._module.Region $h@@12))) ($IsAlloc refType (_module.Region.region d@@17) Tclass._module.Object $h@@12))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@17) Tclass._module.Object $h@@12))
)))
(assert (forall ((d@@18 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_module.Region.Stack_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.Region $h@@13))) ($IsAlloc refType (_module.Region.region d@@18) Tclass._module.Object $h@@13))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($IsAlloc refType (_module.Region.region d@@18) Tclass._module.Object $h@@13))
)))
(assert (forall ((d@@19 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_module.Region.Frame_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.Region $h@@14))) ($IsAlloc refType (_module.Region.prev d@@19) Tclass._module.Object $h@@14))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($IsAlloc refType (_module.Region.prev d@@19) Tclass._module.Object $h@@14))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (= (|#_module.Region.Heap| (Lit refType |a#27#0#0|)) (Lit DatatypeTypeType (|#_module.Region.Heap| |a#27#0#0|)))
 :qid |gitissue3855dfy.19:33|
 :skolemid |707|
 :pattern ( (|#_module.Region.Heap| (Lit refType |a#27#0#0|)))
)))
(assert (forall ((|a#32#0#0| T@U) ) (! (= (|#_module.Region.Stack| (Lit refType |a#32#0#0|)) (Lit DatatypeTypeType (|#_module.Region.Stack| |a#32#0#0|)))
 :qid |gitissue3855dfy.19:58|
 :skolemid |716|
 :pattern ( (|#_module.Region.Stack| (Lit refType |a#32#0#0|)))
)))
(assert (forall ((|a#37#0#0| T@U) ) (! (= (|#_module.Region.Frame| (Lit refType |a#37#0#0|)) (Lit DatatypeTypeType (|#_module.Region.Frame| |a#37#0#0|)))
 :qid |gitissue3855dfy.19:84|
 :skolemid |725|
 :pattern ( (|#_module.Region.Frame| (Lit refType |a#37#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((this@@13 T@U) (|os#0@@13| T@U) ) (!  (=> (or (|_module.Memory.allRegions#canCall| this@@13 |os#0@@13|) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@13 null)) (not true)) ($Is refType this@@13 Tclass._module.Memory)) ($Is SetType |os#0@@13| (TSet Tclass._module.Object))))) (= (_module.Memory.allRegions this@@13 |os#0@@13|) (|Set#FromBoogieMap| (|lambda#122| Tclass._module.Object |os#0@@13| |os#0@@13|))))
 :qid |gitissue3855dfy.600:10|
 :skolemid |1185|
 :pattern ( (_module.Memory.allRegions this@@13 |os#0@@13|))
))))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@7 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@7)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((v@@8 T@U) (t0@@6 T@U) (t1@@4 T@U) ) (!  (=> ($Is MapType v@@8 (TMap t0@@6 t1@@4)) (and (and ($Is SetType (|Map#Domain| v@@8) (TSet t0@@6)) ($Is SetType (|Map#Values| v@@8) (TSet t1@@4))) ($Is SetType (|Map#Items| v@@8) (TSet (Tclass._System.Tuple2 t0@@6 t1@@4)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@8 (TMap t0@@6 t1@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |o1#2@0| () T@U)
(declare-fun |o2#2@0| () T@U)
(declare-fun |partition#0| () T@U)
(declare-fun this@@14 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |os#0@@14| () T@U)
(declare-fun |o#5@0| () T@U)
(declare-fun |o#4@0| () T@U)
(declare-fun |region#1@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Memory.partitionIntoRegions)
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
 (=> (= (ControlFlow 0 0) 30) (let ((anon13_correct true))
(let ((anon23_Else_correct  (=> (not (|_module.Region#Equal| |o1#2@0| |o2#2@0|)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType |o1#2@0|))) (=> (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType |o1#2@0|)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType |o2#2@0|))) (=> (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType |o2#2@0|)) (=> (and (|Set#Disjoint| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o1#2@0|))) ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o2#2@0|)))) (= (ControlFlow 0 15) 10)) anon13_correct))))))))
(let ((anon23_Then_correct  (=> (|_module.Region#Equal| |o1#2@0| |o2#2@0|) (and (=> (= (ControlFlow 0 12) (- 0 14)) (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType |o1#2@0|))) (=> (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType |o1#2@0|)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType |o2#2@0|))) (=> (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType |o2#2@0|)) (=> (and (|Set#Equal| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o1#2@0|))) ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o2#2@0|)))) (= (ControlFlow 0 12) 10)) anon13_correct))))))))
(let ((anon22_Then_correct  (=> (and (and (and ($IsAllocBox ($Box refType this@@14) Tclass._module.Memory? $Heap@@2) ($IsAlloc SetType |os#0@@14| (TSet Tclass._module.Object) $Heap@@2)) (and (|_module.Memory.allRegions#canCall| this@@14 |os#0@@14|) (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |o1#2@0|)))) (and (and ($IsAllocBox ($Box refType this@@14) Tclass._module.Memory? $Heap@@2) ($IsAlloc SetType |os#0@@14| (TSet Tclass._module.Object) $Heap@@2)) (and (|_module.Memory.allRegions#canCall| this@@14 |os#0@@14|) (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |o2#2@0|))))) (and (=> (= (ControlFlow 0 18) 12) anon23_Then_correct) (=> (= (ControlFlow 0 18) 15) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (=> (and (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |o1#2@0|)) (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |o2#2@0|))) (ite (|_module.Region#Equal| |o1#2@0| |o2#2@0|) (|Set#Equal| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o1#2@0|))) ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o2#2@0|)))) (|Set#Disjoint| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o1#2@0|))) ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o2#2@0|)))))) (= (ControlFlow 0 11) 10)) anon13_correct)))
(let ((anon8_correct  (=> (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.Object) (|Set#IsMember| |os#0@@14| ($Box refType |o#3@@0|))) (|Set#IsMember| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType (_module.Object.region |o#3@@0|)))) ($Box refType |o#3@@0|)))
 :qid |gitissue3855dfy.615:18|
 :skolemid |1210|
 :pattern ( (_module.Object.region |o#3@@0|))
 :pattern ( (|Set#IsMember| |os#0@@14| ($Box refType |o#3@@0|)))
)) (=> (and (and ($Is DatatypeTypeType |o1#2@0| Tclass._module.Region) ($IsAlloc DatatypeTypeType |o1#2@0| Tclass._module.Region $Heap@@2)) (and ($Is DatatypeTypeType |o2#2@0| Tclass._module.Region) ($IsAlloc DatatypeTypeType |o2#2@0| Tclass._module.Region $Heap@@2))) (and (=> (= (ControlFlow 0 19) 18) anon22_Then_correct) (=> (= (ControlFlow 0 19) 11) anon22_Else_correct))))))
(let ((anon21_Else_correct  (=> (and (=> (|Set#IsMember| |os#0@@14| ($Box refType |o#5@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType (_module.Object.region |o#5@0|)))) ($Box refType |o#5@0|))) (= (ControlFlow 0 23) 19)) anon8_correct)))
(let ((anon21_Then_correct  (=> (|Set#IsMember| |os#0@@14| ($Box refType |o#5@0|)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (or (not (= |o#5@0| null)) (not true))) (=> (or (not (= |o#5@0| null)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType (_module.Object.region |o#5@0|)))) (=> (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType (_module.Object.region |o#5@0|))) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType (_module.Object.region |o#5@0|)))) ($Box refType |o#5@0|)) (= (ControlFlow 0 20) 19)) anon8_correct))))))))
(let ((anon5_correct  (=> (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.Object) (|Set#IsMember| |os#0@@14| ($Box refType |o#2@@0|))) (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType (_module.Object.region |o#2@@0|))))
 :qid |gitissue3855dfy.614:18|
 :skolemid |1209|
 :pattern ( (_module.Object.region |o#2@@0|))
 :pattern ( (|Set#IsMember| |os#0@@14| ($Box refType |o#2@@0|)))
)) (=> (and ($Is refType |o#5@0| Tclass._module.Object) ($IsAlloc refType |o#5@0| Tclass._module.Object $Heap@@2)) (and (=> (= (ControlFlow 0 24) 20) anon21_Then_correct) (=> (= (ControlFlow 0 24) 23) anon21_Else_correct))))))
(let ((anon20_Else_correct  (=> (and (=> (|Set#IsMember| |os#0@@14| ($Box refType |o#4@0|)) (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType (_module.Object.region |o#4@0|)))) (= (ControlFlow 0 27) 24)) anon5_correct)))
(let ((anon20_Then_correct  (=> (|Set#IsMember| |os#0@@14| ($Box refType |o#4@0|)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (not (= |o#4@0| null)) (not true))) (=> (or (not (= |o#4@0| null)) (not true)) (=> (and (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType (_module.Object.region |o#4@0|))) (= (ControlFlow 0 25) 24)) anon5_correct))))))
(let ((anon19_Then_correct  (=> (and (and ($Is MapType (_module.Memory.partitionIntoRegions this@@14 |os#0@@14|) (TMap Tclass._module.Region (TSet Tclass._module.Object))) ($Is MapType |partition#0| (TMap Tclass._module.Region (TSet Tclass._module.Object)))) (and ($Is refType |o#4@0| Tclass._module.Object) ($IsAlloc refType |o#4@0| Tclass._module.Object $Heap@@2))) (and (=> (= (ControlFlow 0 28) 25) anon20_Then_correct) (=> (= (ControlFlow 0 28) 27) anon20_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall ((|o#2@@1| T@U) ) (!  (=> (and ($Is refType |o#2@@1| Tclass._module.Object) (|Set#IsMember| |os#0@@14| ($Box refType |o#2@@1|))) (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType (_module.Object.region |o#2@@1|))))
 :qid |gitissue3855dfy.614:18|
 :skolemid |1206|
 :pattern ( (_module.Object.region |o#2@@1|))
 :pattern ( (|Set#IsMember| |os#0@@14| ($Box refType |o#2@@1|)))
))) (=> (forall ((|o#2@@2| T@U) ) (!  (=> (and ($Is refType |o#2@@2| Tclass._module.Object) (|Set#IsMember| |os#0@@14| ($Box refType |o#2@@2|))) (|Set#IsMember| (|Map#Domain| |partition#0|) ($Box DatatypeTypeType (_module.Object.region |o#2@@2|))))
 :qid |gitissue3855dfy.614:18|
 :skolemid |1206|
 :pattern ( (_module.Object.region |o#2@@2|))
 :pattern ( (|Set#IsMember| |os#0@@14| ($Box refType |o#2@@2|)))
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((|o#3@@1| T@U) ) (!  (=> (and ($Is refType |o#3@@1| Tclass._module.Object) (|Set#IsMember| |os#0@@14| ($Box refType |o#3@@1|))) (|Set#IsMember| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType (_module.Object.region |o#3@@1|)))) ($Box refType |o#3@@1|)))
 :qid |gitissue3855dfy.615:18|
 :skolemid |1207|
 :pattern ( (_module.Object.region |o#3@@1|))
 :pattern ( (|Set#IsMember| |os#0@@14| ($Box refType |o#3@@1|)))
))) (=> (forall ((|o#3@@2| T@U) ) (!  (=> (and ($Is refType |o#3@@2| Tclass._module.Object) (|Set#IsMember| |os#0@@14| ($Box refType |o#3@@2|))) (|Set#IsMember| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType (_module.Object.region |o#3@@2|)))) ($Box refType |o#3@@2|)))
 :qid |gitissue3855dfy.615:18|
 :skolemid |1207|
 :pattern ( (_module.Object.region |o#3@@2|))
 :pattern ( (|Set#IsMember| |os#0@@14| ($Box refType |o#3@@2|)))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|o1#1| T@U) (|o2#1| T@U) ) (!  (=> (and (and ($Is DatatypeTypeType |o1#1| Tclass._module.Region) ($Is DatatypeTypeType |o2#1| Tclass._module.Region)) (and (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |o1#1|)) (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |o2#1|)))) (ite (|_module.Region#Equal| |o1#1| |o2#1|) (|Set#Equal| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o1#1|))) ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o2#1|)))) (|Set#Disjoint| ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o1#1|))) ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o2#1|))))))
 :qid |gitissue3855dfy.616:18|
 :skolemid |1208|
 :pattern ( ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o2#1|))) ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o1#1|))))
 :pattern ( ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o2#1|))) (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |o1#1|)))
 :pattern ( ($Unbox SetType (MapType0Select BoxType BoxType (|Map#Elements| |partition#0|) ($Box DatatypeTypeType |o1#1|))) (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |o2#1|)))
 :pattern ( (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |o2#1|)) (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |o1#1|)))
)))))))))
(let ((anon17_correct  (=> (= (_module.Memory.partitionIntoRegions this@@14 |os#0@@14|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#54| Tclass._module.Region (_module.Memory.allRegions this@@14 |os#0@@14|))) (|lambda#129| this@@14 |os#0@@14|) (TMap Tclass._module.Region (TSet Tclass._module.Object)))) (=> (and (and (forall ((|region#0@@7| T@U) ) (!  (=> ($Is DatatypeTypeType |region#0@@7| Tclass._module.Region) (and (|_module.Memory.allRegions#canCall| this@@14 |os#0@@14|) (=> (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |region#0@@7|)) (|_module.Memory.ownedBy#canCall| this@@14 |os#0@@14| |region#0@@7|))))
 :qid |gitissue3855dfy.621:7|
 :skolemid |1214|
 :pattern ( (_module.Memory.ownedBy this@@14 |os#0@@14| |region#0@@7|))
 :pattern ( (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |region#0@@7|)))
)) ($Is MapType (_module.Memory.partitionIntoRegions this@@14 |os#0@@14|) (TMap Tclass._module.Region (TSet Tclass._module.Object)))) (and (= (_module.Memory.partitionIntoRegions this@@14 |os#0@@14|) |partition#0|) (= (ControlFlow 0 5) 2))) GeneratedUnifiedExit_correct))))
(let ((anon25_Else_correct  (=> (and (not (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |region#1@0|))) (= (ControlFlow 0 8) 5)) anon17_correct)))
(let ((anon25_Then_correct  (=> (and (|Set#IsMember| (_module.Memory.allRegions this@@14 |os#0@@14|) ($Box DatatypeTypeType |region#1@0|)) ($IsAllocBox ($Box refType this@@14) Tclass._module.Memory? $Heap@@2)) (=> (and (and ($IsAlloc SetType |os#0@@14| (TSet Tclass._module.Object) $Heap@@2) ($IsAlloc DatatypeTypeType |region#1@0| Tclass._module.Region $Heap@@2)) (and (|_module.Memory.ownedBy#canCall| this@@14 |os#0@@14| |region#1@0|) (= (ControlFlow 0 7) 5))) anon17_correct))))
(let ((anon24_Then_correct  (=> (and (and (and ($Is DatatypeTypeType |region#1@0| Tclass._module.Region) ($IsAlloc DatatypeTypeType |region#1@0| Tclass._module.Region $Heap@@2)) ($IsAllocBox ($Box refType this@@14) Tclass._module.Memory? $Heap@@2)) (and ($IsAlloc SetType |os#0@@14| (TSet Tclass._module.Object) $Heap@@2) (|_module.Memory.allRegions#canCall| this@@14 |os#0@@14|))) (and (=> (= (ControlFlow 0 9) 7) anon25_Then_correct) (=> (= (ControlFlow 0 9) 8) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |region#1@0| Tclass._module.Region) ($IsAlloc DatatypeTypeType |region#1@0| Tclass._module.Region $Heap@@2))) (= (ControlFlow 0 6) 5)) anon17_correct)))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (and (and (=> (= (ControlFlow 0 29) 28) anon19_Then_correct) (=> (= (ControlFlow 0 29) 9) anon24_Then_correct)) (=> (= (ControlFlow 0 29) 6) anon24_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (and (or (not (= this@@14 null)) (not true)) (and ($Is refType this@@14 Tclass._module.Memory) ($IsAlloc refType this@@14 Tclass._module.Memory $Heap@@2))) ($Is SetType |os#0@@14| (TSet Tclass._module.Object))) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 30) 29))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
