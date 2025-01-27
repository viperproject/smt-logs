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
(declare-fun TagBool () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun class._module.Map? () T@U)
(declare-fun Tagclass._module.Map? () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun Tagclass._module.Map () T@U)
(declare-fun class._module.Node? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Map () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$M () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$head () T@U)
(declare-fun field$Spine () T@U)
(declare-fun field$key () T@U)
(declare-fun field$val () T@U)
(declare-fun field$next () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Node.key () T@U)
(declare-fun Tclass._module.Node? (T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Node.val () T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Map.Valid (T@U T@U T@U T@U) Bool)
(declare-fun |_module.Map.Valid#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Map (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun _module.Map.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.Map.Spine () T@U)
(declare-fun |_module.Map.SpineValid#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.Map.head () T@U)
(declare-fun _module.Map.SpineValid (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun _module.Map.M () T@U)
(declare-fun Tclass._module.Node (T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun _module.Node.next () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun _module.Node.Spine () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun Tclass._module.Map? (T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Tclass._module.Map?_0 (T@U) T@U)
(declare-fun Tclass._module.Map?_1 (T@U) T@U)
(declare-fun Tclass._module.Node?_0 (T@U) T@U)
(declare-fun Tclass._module.Node?_1 (T@U) T@U)
(declare-fun Tclass._module.Node_0 (T@U) T@U)
(declare-fun Tclass._module.Node_1 (T@U) T@U)
(declare-fun Tclass._module.Map_0 (T@U) T@U)
(declare-fun Tclass._module.Map_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
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
(assert (distinct TBool TagBool TagSet TagMap alloc allocName Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 class._module.Map? Tagclass._module.Map? Tagclass._module.Node? Tagclass._module.Node Tagclass._module.Map class._module.Node? tytagFamily$object |tytagFamily$_tuple#2| tytagFamily$Map tytagFamily$Node field$M field$Repr field$head field$Spine field$key field$val field$next)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_module.Node$Key T@U) (_module.Node$Value T@U) ($h T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._module.Node? _module.Node$Key _module.Node$Value)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.Node.key) _module.Node$Key))
 :qid |unknown.0:0|
 :skolemid |981|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.Node.key) (Tclass._module.Node? _module.Node$Key _module.Node$Value))
)))
(assert (forall ((_module.Node$Key@@0 T@U) (_module.Node$Value@@0 T@U) ($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.Node? _module.Node$Key@@0 _module.Node$Value@@0)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.Node.val) _module.Node$Value@@0))
 :qid |unknown.0:0|
 :skolemid |983|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.Node.val) (Tclass._module.Node? _module.Node$Key@@0 _module.Node$Value@@0))
)))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (= (Ctor SetType) 7))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.Map$Key T@U) (_module.Map$Value T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Map.Valid#canCall| _module.Map$Key _module.Map$Value $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.Map _module.Map$Key _module.Map$Value)) ($IsAlloc refType this (Tclass._module.Map _module.Map$Key _module.Map$Value) $Heap)))))) (=> (_module.Map.Valid _module.Map$Key _module.Map$Value $Heap this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Map.Repr)) ($Box refType this))))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (_module.Map.Valid _module.Map$Key _module.Map$Value $Heap this))
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
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (= (Ctor DatatypeTypeType) 8))
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
(assert (= (Ctor MapType) 9))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.Map$Key@@0 T@U) (_module.Map$Value@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Map.Valid#canCall| _module.Map$Key@@0 _module.Map$Value@@0 $Heap@@0 this@@0) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.Map _module.Map$Key@@0 _module.Map$Value@@0)) ($IsAlloc refType this@@0 (Tclass._module.Map _module.Map$Key@@0 _module.Map$Value@@0) $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Repr)) ($Box refType this@@0)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Repr))) (|_module.Map.SpineValid#canCall| _module.Map$Key@@0 _module.Map$Value@@0 $Heap@@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.head))))) (= (_module.Map.Valid _module.Map$Key@@0 _module.Map$Value@@0 $Heap@@0 this@@0)  (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Repr)) ($Box refType this@@0)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@0 _module.Map$Value@@0 ($LS $LZ) $Heap@@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.head)))) (forall ((|k#0| T@U) ) (!  (=> ($IsBox |k#0| _module.Map$Key@@0) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.M))) |k#0|) (exists ((|n#0| T@U) ) (!  (and ($Is refType |n#0| (Tclass._module.Node _module.Map$Key@@0 _module.Map$Value@@0)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0|) _module.Node.key) |k#0|)))
 :qid |b4dfy.24:36|
 :skolemid |558|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#0|)))
))))
 :qid |b4dfy.24:13|
 :skolemid |559|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.M))) |k#0|))
))) (forall ((|n#1| T@U) ) (!  (=> ($Is refType |n#1| (Tclass._module.Node _module.Map$Key@@0 _module.Map$Value@@0)) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#1|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#1|) _module.Node.key))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#1|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#1|) _module.Node.val) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#1|) _module.Node.key))))))
 :qid |b4dfy.25:13|
 :skolemid |560|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#1|) _module.Node.val))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#1|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#1|)))
))) (forall ((|n#2| T@U) (|n'#0| T@U) ) (!  (=> (and ($Is refType |n#2| (Tclass._module.Node _module.Map$Key@@0 _module.Map$Value@@0)) ($Is refType |n'#0| (Tclass._module.Node _module.Map$Key@@0 _module.Map$Value@@0))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#2|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n'#0|))) (or (not (= |n#2| |n'#0|)) (not true))) (or (not (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#2|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n'#0|) _module.Node.key))) (not true))))
 :qid |b4dfy.26:13|
 :skolemid |561|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n'#0|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#2|) _module.Node.key))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n'#0|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#2|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#2|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n'#0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n'#0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#2|)))
))) (forall ((|n#3| T@U) ) (!  (=> ($Is refType |n#3| (Tclass._module.Node _module.Map$Key@@0 _module.Map$Value@@0)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#3|)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#3|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.head)))) (not true))))
 :qid |b4dfy.27:13|
 :skolemid |562|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#3|) _module.Node.next)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#3|)))
))) (forall ((|n#4| T@U) (|n'#1| T@U) ) (!  (=> (and ($Is refType |n#4| (Tclass._module.Node _module.Map$Key@@0 _module.Map$Value@@0)) ($Is refType |n'#1| (Tclass._module.Node _module.Map$Key@@0 _module.Map$Value@@0))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n'#1|))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#4|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n'#1|) _module.Node.next)))) (= |n#4| |n'#1|)))
 :qid |b4dfy.28:13|
 :skolemid |563|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n'#1|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#4|) _module.Node.next)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n'#1|) _module.Node.next)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#4|)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#4|) _module.Node.next)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n'#1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n'#1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.Spine)) ($Box refType |n#4|)))
))))))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( (_module.Map.Valid _module.Map$Key@@0 _module.Map$Value@@0 $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Map$Key@@1 T@U) (_module.Map$Value@@1 T@U) ($ly T@U) ($Heap@@1 T@U) (|spine#0| T@U) (|n#0@@0| T@U) ) (!  (=> (or (|_module.Map.SpineValid#canCall| _module.Map$Key@@1 _module.Map$Value@@1 $Heap@@1 |spine#0| |n#0@@0|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is SetType |spine#0| (TSet (Tclass._module.Node _module.Map$Key@@1 _module.Map$Value@@1)))) ($Is refType |n#0@@0| (Tclass._module.Node? _module.Map$Key@@1 _module.Map$Value@@1))))) (and (=> (not (and (= |n#0@@0| null) (|Set#Equal| |spine#0| |Set#Empty|))) (=> (or (not (= |n#0@@0| null)) (not true)) (=> (|Set#IsMember| |spine#0| ($Box refType |n#0@@0|)) (=> (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@0|) _module.Node.Spine)) (|Set#Difference| |spine#0| (|Set#UnionOne| |Set#Empty| ($Box refType |n#0@@0|)))) (|_module.Map.SpineValid#canCall| _module.Map$Key@@1 _module.Map$Value@@1 $Heap@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@0|) _module.Node.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@0|) _module.Node.next))))))) (= (_module.Map.SpineValid _module.Map$Key@@1 _module.Map$Value@@1 ($LS $ly) $Heap@@1 |spine#0| |n#0@@0|)  (or (and (= |n#0@@0| null) (|Set#Equal| |spine#0| |Set#Empty|)) (and (and (and (or (not (= |n#0@@0| null)) (not true)) (|Set#IsMember| |spine#0| ($Box refType |n#0@@0|))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@0|) _module.Node.Spine)) (|Set#Difference| |spine#0| (|Set#UnionOne| |Set#Empty| ($Box refType |n#0@@0|))))) (_module.Map.SpineValid _module.Map$Key@@1 _module.Map$Value@@1 $ly $Heap@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@0|) _module.Node.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@0|) _module.Node.next))))))))
 :qid |unknown.0:0|
 :skolemid |608|
 :pattern ( (_module.Map.SpineValid _module.Map$Key@@1 _module.Map$Value@@1 ($LS $ly) $Heap@@1 |spine#0| |n#0@@0|) ($IsGoodHeap $Heap@@1))
))))
(assert (= (FDim _module.Map.M) 0))
(assert (= (FieldOfDecl class._module.Map? field$M) _module.Map.M))
(assert ($IsGhostField _module.Map.M))
(assert (= (FDim _module.Map.Repr) 0))
(assert (= (FieldOfDecl class._module.Map? field$Repr) _module.Map.Repr))
(assert ($IsGhostField _module.Map.Repr))
(assert (= (FDim _module.Map.Spine) 0))
(assert (= (FieldOfDecl class._module.Map? field$Spine) _module.Map.Spine))
(assert ($IsGhostField _module.Map.Spine))
(assert (= (FDim _module.Node.Spine) 0))
(assert (= (FieldOfDecl class._module.Node? field$Spine) _module.Node.Spine))
(assert ($IsGhostField _module.Node.Spine))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (= (FDim _module.Map.head) 0))
(assert (= (FieldOfDecl class._module.Map? field$head) _module.Map.head))
(assert  (not ($IsGhostField _module.Map.head)))
(assert (= (FDim _module.Node.key) 0))
(assert (= (FieldOfDecl class._module.Node? field$key) _module.Node.key))
(assert  (not ($IsGhostField _module.Node.key)))
(assert (= (FDim _module.Node.val) 0))
(assert (= (FieldOfDecl class._module.Node? field$val) _module.Node.val))
(assert  (not ($IsGhostField _module.Node.val)))
(assert (= (FDim _module.Node.next) 0))
(assert (= (FieldOfDecl class._module.Node? field$next) _module.Node.next))
(assert  (not ($IsGhostField _module.Node.next)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@2) (|Set#IsMember| b@@4 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@2))
 :pattern ( (|Set#IsMember| b@@4 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@3) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@3))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@5))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@3)) (not (|Set#IsMember| b@@5 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@3))
 :pattern ( (|Set#IsMember| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
)))
(assert (forall ((_module.Map$Key@@2 T@U) (_module.Map$Value@@2 T@U) ($ly@@0 T@U) ($Heap@@2 T@U) (|spine#0@@0| T@U) (|n#0@@1| T@U) ) (! (= (_module.Map.SpineValid _module.Map$Key@@2 _module.Map$Value@@2 ($LS $ly@@0) $Heap@@2 |spine#0@@0| |n#0@@1|) (_module.Map.SpineValid _module.Map$Key@@2 _module.Map$Value@@2 $ly@@0 $Heap@@2 |spine#0@@0| |n#0@@1|))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( (_module.Map.SpineValid _module.Map$Key@@2 _module.Map$Value@@2 ($LS $ly@@0) $Heap@@2 |spine#0@@0| |n#0@@1|))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((_module.Map$Key@@3 T@U) (_module.Map$Value@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.Map _module.Map$Key@@3 _module.Map$Value@@3))  (and ($Is refType |c#0@@0| (Tclass._module.Map? _module.Map$Key@@3 _module.Map$Value@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |977|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.Map _module.Map$Key@@3 _module.Map$Value@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.Map? _module.Map$Key@@3 _module.Map$Value@@3)))
)))
(assert (forall ((_module.Node$Key@@1 T@U) (_module.Node$Value@@1 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._module.Node _module.Node$Key@@1 _module.Node$Value@@1))  (and ($Is refType |c#0@@1| (Tclass._module.Node? _module.Node$Key@@1 _module.Node$Value@@1)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.Node _module.Node$Key@@1 _module.Node$Value@@1)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.Node? _module.Node$Key@@1 _module.Node$Value@@1)))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (or (= $o@@2 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@2)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1013|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((_module.Map$Key@@4 T@U) (_module.Map$Value@@4 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._module.Map? _module.Map$Key@@4 _module.Map$Value@@4))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._module.Map? _module.Map$Key@@4 _module.Map$Value@@4))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($Is refType $o@@3 (Tclass._module.Map? _module.Map$Key@@4 _module.Map$Value@@4)))
)))
(assert (forall ((_module.Node$Key@@2 T@U) (_module.Node$Value@@2 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._module.Node? _module.Node$Key@@2 _module.Node$Value@@2))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._module.Node? _module.Node$Key@@2 _module.Node$Value@@2))))
 :qid |unknown.0:0|
 :skolemid |979|
 :pattern ( ($Is refType $o@@4 (Tclass._module.Node? _module.Node$Key@@2 _module.Node$Value@@2)))
)))
(assert (forall ((_module.Node$Key@@3 T@U) (_module.Node$Value@@3 T@U) ($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.Node? _module.Node$Key@@3 _module.Node$Value@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.Node.key) _module.Node$Key@@3 $h@@4))
 :qid |unknown.0:0|
 :skolemid |982|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.Node.key) (Tclass._module.Node? _module.Node$Key@@3 _module.Node$Value@@3))
)))
(assert (forall ((_module.Node$Key@@4 T@U) (_module.Node$Value@@4 T@U) ($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.Node? _module.Node$Key@@4 _module.Node$Value@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.Node.val) _module.Node$Value@@4 $h@@5))
 :qid |unknown.0:0|
 :skolemid |984|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.Node.val) (Tclass._module.Node? _module.Node$Key@@4 _module.Node$Value@@4))
)))
(assert (forall ((_module.Map$Key@@5 T@U) (_module.Map$Value@@5 T@U) (|c#0@@2| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@2| (Tclass._module.Map _module.Map$Key@@5 _module.Map$Value@@5) $h@@6) ($IsAlloc refType |c#0@@2| (Tclass._module.Map? _module.Map$Key@@5 _module.Map$Value@@5) $h@@6))
 :qid |unknown.0:0|
 :skolemid |978|
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass._module.Map _module.Map$Key@@5 _module.Map$Value@@5) $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@2| (Tclass._module.Map? _module.Map$Key@@5 _module.Map$Value@@5) $h@@6))
)))
(assert (forall ((_module.Node$Key@@5 T@U) (_module.Node$Value@@5 T@U) (|c#0@@3| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@3| (Tclass._module.Node _module.Node$Key@@5 _module.Node$Value@@5) $h@@7) ($IsAlloc refType |c#0@@3| (Tclass._module.Node? _module.Node$Key@@5 _module.Node$Value@@5) $h@@7))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($IsAlloc refType |c#0@@3| (Tclass._module.Node _module.Node$Key@@5 _module.Node$Value@@5) $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@3| (Tclass._module.Node? _module.Node$Key@@5 _module.Node$Value@@5) $h@@7))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((_module.Map$Key@@6 T@U) (_module.Map$Value@@6 T@U) ($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.Map? _module.Map$Key@@6 _module.Map$Value@@6)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.Map.Repr)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.Map.Repr)) (Tclass._module.Map? _module.Map$Key@@6 _module.Map$Value@@6))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4)  (or (|Set#IsMember| a@@9 o@@4) (|Set#IsMember| b@@6 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@4))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert (forall ((_module.Map$Key@@7 T@U) (_module.Map$Value@@7 T@U) ($o@@8 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@8 (Tclass._module.Map? _module.Map$Key@@7 _module.Map$Value@@7) $h@@9)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsAlloc refType $o@@8 (Tclass._module.Map? _module.Map$Key@@7 _module.Map$Value@@7) $h@@9))
)))
(assert (forall ((_module.Node$Key@@6 T@U) (_module.Node$Value@@6 T@U) ($o@@9 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@9 (Tclass._module.Node? _module.Node$Key@@6 _module.Node$Value@@6) $h@@10)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |980|
 :pattern ( ($IsAlloc refType $o@@9 (Tclass._module.Node? _module.Node$Key@@6 _module.Node$Value@@6) $h@@10))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
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
(assert (forall ((t@@1 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@1 u)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@1 u))
)))
(assert (forall ((t@@2 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@2 u@@0))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@3 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@3 u@@1))
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
(assert (forall ((_module.Map$Key@@8 T@U) (_module.Map$Value@@8 T@U) ) (! (= (Tclass._module.Map?_0 (Tclass._module.Map? _module.Map$Key@@8 _module.Map$Value@@8)) _module.Map$Key@@8)
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( (Tclass._module.Map? _module.Map$Key@@8 _module.Map$Value@@8))
)))
(assert (forall ((_module.Map$Key@@9 T@U) (_module.Map$Value@@9 T@U) ) (! (= (Tclass._module.Map?_1 (Tclass._module.Map? _module.Map$Key@@9 _module.Map$Value@@9)) _module.Map$Value@@9)
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass._module.Map? _module.Map$Key@@9 _module.Map$Value@@9))
)))
(assert (forall ((_module.Node$Key@@7 T@U) (_module.Node$Value@@7 T@U) ) (! (= (Tclass._module.Node?_0 (Tclass._module.Node? _module.Node$Key@@7 _module.Node$Value@@7)) _module.Node$Key@@7)
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (Tclass._module.Node? _module.Node$Key@@7 _module.Node$Value@@7))
)))
(assert (forall ((_module.Node$Key@@8 T@U) (_module.Node$Value@@8 T@U) ) (! (= (Tclass._module.Node?_1 (Tclass._module.Node? _module.Node$Key@@8 _module.Node$Value@@8)) _module.Node$Value@@8)
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (Tclass._module.Node? _module.Node$Key@@8 _module.Node$Value@@8))
)))
(assert (forall ((_module.Node$Key@@9 T@U) (_module.Node$Value@@9 T@U) ) (! (= (Tclass._module.Node_0 (Tclass._module.Node _module.Node$Key@@9 _module.Node$Value@@9)) _module.Node$Key@@9)
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( (Tclass._module.Node _module.Node$Key@@9 _module.Node$Value@@9))
)))
(assert (forall ((_module.Node$Key@@10 T@U) (_module.Node$Value@@10 T@U) ) (! (= (Tclass._module.Node_1 (Tclass._module.Node _module.Node$Key@@10 _module.Node$Value@@10)) _module.Node$Value@@10)
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (Tclass._module.Node _module.Node$Key@@10 _module.Node$Value@@10))
)))
(assert (forall ((_module.Map$Key@@10 T@U) (_module.Map$Value@@10 T@U) ) (! (= (Tclass._module.Map_0 (Tclass._module.Map _module.Map$Key@@10 _module.Map$Value@@10)) _module.Map$Key@@10)
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (Tclass._module.Map _module.Map$Key@@10 _module.Map$Value@@10))
)))
(assert (forall ((_module.Map$Key@@11 T@U) (_module.Map$Value@@11 T@U) ) (! (= (Tclass._module.Map_1 (Tclass._module.Map _module.Map$Key@@11 _module.Map$Value@@11)) _module.Map$Value@@11)
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( (Tclass._module.Map _module.Map$Key@@11 _module.Map$Value@@11))
)))
(assert (forall (($o@@10 T@U) ) (! ($Is refType $o@@10 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@10 Tclass._System.object?))
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
(assert (forall ((x@@6 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@6))
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
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert (forall ((_module.Map$Key@@12 T@U) (_module.Map$Value@@12 T@U) ($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._module.Map? _module.Map$Key@@12 _module.Map$Value@@12)))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.Map.M)) (TMap _module.Map$Key@@12 _module.Map$Value@@12)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.Map.M)) (Tclass._module.Map? _module.Map$Key@@12 _module.Map$Value@@12))
)))
(assert (forall ((_module.Map$Key@@13 T@U) (_module.Map$Value@@13 T@U) ($h@@12 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._module.Map? _module.Map$Key@@13 _module.Map$Value@@13)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.Map.head)) (Tclass._module.Node? _module.Map$Key@@13 _module.Map$Value@@13)))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.Map.head)) (Tclass._module.Map? _module.Map$Key@@13 _module.Map$Value@@13))
)))
(assert (forall ((_module.Node$Key@@11 T@U) (_module.Node$Value@@11 T@U) ($h@@13 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._module.Node? _module.Node$Key@@11 _module.Node$Value@@11)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) _module.Node.next)) (Tclass._module.Node? _module.Node$Key@@11 _module.Node$Value@@11)))
 :qid |unknown.0:0|
 :skolemid |985|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) _module.Node.next)) (Tclass._module.Node? _module.Node$Key@@11 _module.Node$Value@@11))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@5 T@U) (s T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@5 (TMap s t@@6)) (and (= ($Box MapType ($Unbox MapType bx@@5)) bx@@5) ($Is MapType ($Unbox MapType bx@@5) (TMap s t@@6))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@5 (TMap s t@@6)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((_module.Map$Key@@14 T@U) (_module.Map$Value@@14 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.Map? _module.Map$Key@@14 _module.Map$Value@@14)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.Map? _module.Map$Key@@14 _module.Map$Value@@14))))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsBox bx@@7 (Tclass._module.Map? _module.Map$Key@@14 _module.Map$Value@@14)))
)))
(assert (forall ((_module.Node$Key@@12 T@U) (_module.Node$Value@@12 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.Node? _module.Node$Key@@12 _module.Node$Value@@12)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._module.Node? _module.Node$Key@@12 _module.Node$Value@@12))))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($IsBox bx@@8 (Tclass._module.Node? _module.Node$Key@@12 _module.Node$Value@@12)))
)))
(assert (forall ((_module.Node$Key@@13 T@U) (_module.Node$Value@@13 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.Node _module.Node$Key@@13 _module.Node$Value@@13)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.Node _module.Node$Key@@13 _module.Node$Value@@13))))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( ($IsBox bx@@9 (Tclass._module.Node _module.Node$Key@@13 _module.Node$Value@@13)))
)))
(assert (forall ((_module.Map$Key@@15 T@U) (_module.Map$Value@@15 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.Map _module.Map$Key@@15 _module.Map$Value@@15)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._module.Map _module.Map$Key@@15 _module.Map$Value@@15))))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsBox bx@@10 (Tclass._module.Map _module.Map$Key@@15 _module.Map$Value@@15)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((_module.Map$Key@@16 T@U) (_module.Map$Value@@16 T@U) ) (!  (and (= (Tag (Tclass._module.Map? _module.Map$Key@@16 _module.Map$Value@@16)) Tagclass._module.Map?) (= (TagFamily (Tclass._module.Map? _module.Map$Key@@16 _module.Map$Value@@16)) tytagFamily$Map))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (Tclass._module.Map? _module.Map$Key@@16 _module.Map$Value@@16))
)))
(assert (forall ((_module.Node$Key@@14 T@U) (_module.Node$Value@@14 T@U) ) (!  (and (= (Tag (Tclass._module.Node? _module.Node$Key@@14 _module.Node$Value@@14)) Tagclass._module.Node?) (= (TagFamily (Tclass._module.Node? _module.Node$Key@@14 _module.Node$Value@@14)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (Tclass._module.Node? _module.Node$Key@@14 _module.Node$Value@@14))
)))
(assert (forall ((_module.Node$Key@@15 T@U) (_module.Node$Value@@15 T@U) ) (!  (and (= (Tag (Tclass._module.Node _module.Node$Key@@15 _module.Node$Value@@15)) Tagclass._module.Node) (= (TagFamily (Tclass._module.Node _module.Node$Key@@15 _module.Node$Value@@15)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( (Tclass._module.Node _module.Node$Key@@15 _module.Node$Value@@15))
)))
(assert (forall ((_module.Map$Key@@17 T@U) (_module.Map$Value@@17 T@U) ) (!  (and (= (Tag (Tclass._module.Map _module.Map$Key@@17 _module.Map$Value@@17)) Tagclass._module.Map) (= (TagFamily (Tclass._module.Map _module.Map$Key@@17 _module.Map$Value@@17)) tytagFamily$Map))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (Tclass._module.Map _module.Map$Key@@17 _module.Map$Value@@17))
)))
(assert (forall ((_module.Map$Key@@18 T@U) (_module.Map$Value@@18 T@U) ($h@@14 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._module.Map? _module.Map$Key@@18 _module.Map$Value@@18)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) _module.Map.M)) (TMap _module.Map$Key@@18 _module.Map$Value@@18) $h@@14))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) _module.Map.M)) (Tclass._module.Map? _module.Map$Key@@18 _module.Map$Value@@18))
)))
(assert (forall ((_module.Map$Key@@19 T@U) (_module.Map$Value@@19 T@U) ($h@@15 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.Map? _module.Map$Key@@19 _module.Map$Value@@19)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@15) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@15) _module.Map.head)) (Tclass._module.Node? _module.Map$Key@@19 _module.Map$Value@@19) $h@@15))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@15) _module.Map.head)) (Tclass._module.Map? _module.Map$Key@@19 _module.Map$Value@@19))
)))
(assert (forall ((_module.Node$Key@@16 T@U) (_module.Node$Value@@16 T@U) ($h@@16 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._module.Node? _module.Node$Key@@16 _module.Node$Value@@16)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) _module.Node.next)) (Tclass._module.Node? _module.Node$Key@@16 _module.Node$Value@@16) $h@@16))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) _module.Node.next)) (Tclass._module.Node? _module.Node$Key@@16 _module.Node$Value@@16))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@4 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@4)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@5 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@5) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@5 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@5))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@11 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@7)))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@6 (TMap t0@@4 t1@@2)) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@12) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@12) t1@@2) ($IsBox bx@@12 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@12))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@6 (TMap t0@@4 t1@@2)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((_module.Map$Key@@20 T@U) (_module.Map$Value@@20 T@U) ($h@@17 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._module.Map? _module.Map$Key@@20 _module.Map$Value@@20)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@17) _module.Map.Spine)) (TSet (Tclass._module.Node _module.Map$Key@@20 _module.Map$Value@@20))))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@17) _module.Map.Spine)) (Tclass._module.Map? _module.Map$Key@@20 _module.Map$Value@@20))
)))
(assert (forall ((_module.Node$Key@@17 T@U) (_module.Node$Value@@17 T@U) ($h@@18 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._module.Node? _module.Node$Key@@17 _module.Node$Value@@17)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@18) _module.Node.Spine)) (TSet (Tclass._module.Node _module.Node$Key@@17 _module.Node$Value@@17))))
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@18) _module.Node.Spine)) (Tclass._module.Node? _module.Node$Key@@17 _module.Node$Value@@17))
)))
(assert (forall ((_module.Map$Key@@21 T@U) (_module.Map$Value@@21 T@U) ($h@@19 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._module.Map? _module.Map$Key@@21 _module.Map$Value@@21)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) _module.Map.Spine)) (TSet (Tclass._module.Node _module.Map$Key@@21 _module.Map$Value@@21)) $h@@19))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) _module.Map.Spine)) (Tclass._module.Map? _module.Map$Key@@21 _module.Map$Value@@21))
)))
(assert (forall ((_module.Node$Key@@18 T@U) (_module.Node$Value@@18 T@U) ($h@@20 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._module.Node? _module.Node$Key@@18 _module.Node$Value@@18)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@20) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@20) _module.Node.Spine)) (TSet (Tclass._module.Node _module.Node$Key@@18 _module.Node$Value@@18)) $h@@20))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@20) _module.Node.Spine)) (Tclass._module.Node? _module.Node$Key@@18 _module.Node$Value@@18))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@13 o@@5) (|Set#IsMember| b@@10 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@5))
 :pattern ( (|Set#IsMember| b@@10 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@21)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@21))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@21))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@21))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@22)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@22))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@22))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@22))
)))
(assert (forall ((_module.Map$Key@@22 T@U) (_module.Map$Value@@22 T@U) ($h@@23 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._module.Map? _module.Map$Key@@22 _module.Map$Value@@22)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@21) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@21) _module.Map.Repr)) (TSet Tclass._System.object) $h@@23))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@21) _module.Map.Repr)) (Tclass._module.Map? _module.Map$Key@@22 _module.Map$Value@@22))
)))
(assert (forall ((h@@2 T@U) (v@@7 T@U) ) (! ($IsAlloc boolType v@@7 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@7 TBool h@@2))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((k@@0 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@8)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@8))
)))
(assert (forall ((v@@9 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@9 (TMap t0@@5 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@9) (TSet t0@@5)) ($Is SetType (|Map#Values| v@@9) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@9) (TSet (Tclass._System.Tuple2 t0@@5 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@9 (TMap t0@@5 t1@@3)))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is boolType v@@10 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@10 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module.Map$Key@@23 () T@U)
(declare-fun _module.Map$Value@@23 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |b$reqreads#7@2| () Bool)
(declare-fun |b$reqreads#8@3| () Bool)
(declare-fun |b$reqreads#9@3| () Bool)
(declare-fun |b$reqreads#10@2| () Bool)
(declare-fun |b$reqreads#11@2| () Bool)
(declare-fun |b$reqreads#12@2| () Bool)
(declare-fun |b$reqreads#13@2| () Bool)
(declare-fun |b$reqreads#14@2| () Bool)
(declare-fun |b$reqreads#15@2| () Bool)
(declare-fun |b$reqreads#16@2| () Bool)
(declare-fun |b$reqreads#17@3| () Bool)
(declare-fun |b$reqreads#18@2| () Bool)
(declare-fun |b$reqreads#19@2| () Bool)
(declare-fun |b$reqreads#20@2| () Bool)
(declare-fun |b$reqreads#21@2| () Bool)
(declare-fun |b$reqreads#22@2| () Bool)
(declare-fun |b$reqreads#23@2| () Bool)
(declare-fun |b$reqreads#24@3| () Bool)
(declare-fun |b$reqreads#25@3| () Bool)
(declare-fun |b$reqreads#26@3| () Bool)
(declare-fun |b$reqreads#25@2| () Bool)
(declare-fun |b$reqreads#26@2| () Bool)
(declare-fun |b$reqreads#23@1| () Bool)
(declare-fun |b$reqreads#24@2| () Bool)
(declare-fun |n#12@0| () T@U)
(declare-fun |n'#4@0| () T@U)
(declare-fun |b$reqreads#23@0| () Bool)
(declare-fun |b$reqreads#24@1| () Bool)
(declare-fun |b$reqreads#26@1| () Bool)
(declare-fun |b$reqreads#25@1| () Bool)
(declare-fun |b$reqreads#25@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#26@0| () Bool)
(declare-fun |b$reqreads#24@0| () Bool)
(declare-fun |b$reqreads#22@1| () Bool)
(declare-fun |b$reqreads#21@1| () Bool)
(declare-fun |b$reqreads#20@1| () Bool)
(declare-fun |n#10@0| () T@U)
(declare-fun |b$reqreads#20@0| () Bool)
(declare-fun |b$reqreads#21@0| () Bool)
(declare-fun |b$reqreads#22@0| () Bool)
(declare-fun |b$reqreads#19@1| () Bool)
(declare-fun |b$reqreads#18@1| () Bool)
(declare-fun |b$reqreads#17@2| () Bool)
(declare-fun |b$reqreads#16@1| () Bool)
(declare-fun |n#8@0| () T@U)
(declare-fun |n'#2@0| () T@U)
(declare-fun |b$reqreads#16@0| () Bool)
(declare-fun |b$reqreads#17@1| () Bool)
(declare-fun |b$reqreads#18@0| () Bool)
(declare-fun |b$reqreads#19@0| () Bool)
(declare-fun |b$reqreads#17@0| () Bool)
(declare-fun |b$reqreads#15@1| () Bool)
(declare-fun |b$reqreads#14@1| () Bool)
(declare-fun |b$reqreads#13@1| () Bool)
(declare-fun |b$reqreads#12@1| () Bool)
(declare-fun |b$reqreads#11@1| () Bool)
(declare-fun |b$reqreads#10@1| () Bool)
(declare-fun |n#6@0| () T@U)
(declare-fun |b$reqreads#10@0| () Bool)
(declare-fun |b$reqreads#11@0| () Bool)
(declare-fun |b$reqreads#12@0| () Bool)
(declare-fun |b$reqreads#13@0| () Bool)
(declare-fun |b$reqreads#14@0| () Bool)
(declare-fun |b$reqreads#15@0| () Bool)
(declare-fun |b$reqreads#8@2| () Bool)
(declare-fun |b$reqreads#7@1| () Bool)
(declare-fun |b$reqreads#9@2| () Bool)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun |b$reqreads#9@1| () Bool)
(declare-fun |b$reqreads#8@1| () Bool)
(declare-fun |n#5@0| () T@U)
(declare-fun |b$reqreads#8@0| () Bool)
(declare-fun |b$reqreads#9@0| () Bool)
(declare-fun |k#1@0| () T@U)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |##spine#0@0| () T@U)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |##n#0@0| () T@U)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Map.Valid)
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
 (=> (= (ControlFlow 0 0) 101) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (=> (_module.Map.Valid _module.Map$Key@@23 _module.Map$Value@@23 $Heap@@3 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1))))))
(let ((anon47_correct  (=> (= (_module.Map.Valid _module.Map$Key@@23 _module.Map$Value@@23 $Heap@@3 this@@1)  (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@23 _module.Map$Value@@23 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (forall ((|k#2| T@U) ) (!  (=> ($IsBox |k#2| _module.Map$Key@@23) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2|) (exists ((|n#7| T@U) ) (!  (and ($Is refType |n#7| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7|) _module.Node.key) |k#2|)))
 :qid |b4dfy.24:36|
 :skolemid |591|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7|)))
))))
 :qid |b4dfy.24:13|
 :skolemid |592|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2|))
))) (forall ((|n#9| T@U) ) (!  (=> ($Is refType |n#9| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9|) _module.Node.key))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9|) _module.Node.val) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9|) _module.Node.key))))))
 :qid |b4dfy.25:13|
 :skolemid |593|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9|) _module.Node.val))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9|)))
))) (forall ((|n#11| T@U) (|n'#3| T@U) ) (!  (=> (and ($Is refType |n#11| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($Is refType |n'#3| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3|))) (or (not (= |n#11| |n'#3|)) (not true))) (or (not (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3|) _module.Node.key))) (not true))))
 :qid |b4dfy.26:13|
 :skolemid |594|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11|) _module.Node.key))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11|)))
))) (forall ((|n#13| T@U) ) (!  (=> ($Is refType |n#13| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#13|)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#13|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (not true))))
 :qid |b4dfy.27:13|
 :skolemid |595|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#13|) _module.Node.next)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#13|)))
))) (forall ((|n#14| T@U) (|n'#5| T@U) ) (!  (=> (and ($Is refType |n#14| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($Is refType |n'#5| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#14|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#5|))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#14|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#5|) _module.Node.next)))) (= |n#14| |n'#5|)))
 :qid |b4dfy.28:13|
 :skolemid |596|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#5|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#14|) _module.Node.next)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#5|) _module.Node.next)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#14|)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#14|) _module.Node.next)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#5|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#14|)))
)))) (=> (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr))) (|_module.Map.SpineValid#canCall| _module.Map$Key@@23 _module.Map$Value@@23 $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head))))) ($Is boolType (bool_2_U (_module.Map.Valid _module.Map$Key@@23 _module.Map$Value@@23 $Heap@@3 this@@1)) TBool)) (and (=> (= (ControlFlow 0 7) (- 0 33)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 7) (- 0 32)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 7) (- 0 31)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (and (=> (= (ControlFlow 0 7) (- 0 30)) |b$reqreads#4@1|) (=> |b$reqreads#4@1| (and (=> (= (ControlFlow 0 7) (- 0 29)) |b$reqreads#5@1|) (=> |b$reqreads#5@1| (and (=> (= (ControlFlow 0 7) (- 0 28)) |b$reqreads#6@1|) (=> |b$reqreads#6@1| (and (=> (= (ControlFlow 0 7) (- 0 27)) |b$reqreads#7@2|) (=> |b$reqreads#7@2| (and (=> (= (ControlFlow 0 7) (- 0 26)) |b$reqreads#8@3|) (=> |b$reqreads#8@3| (and (=> (= (ControlFlow 0 7) (- 0 25)) |b$reqreads#9@3|) (=> |b$reqreads#9@3| (and (=> (= (ControlFlow 0 7) (- 0 24)) |b$reqreads#10@2|) (=> |b$reqreads#10@2| (and (=> (= (ControlFlow 0 7) (- 0 23)) |b$reqreads#11@2|) (=> |b$reqreads#11@2| (and (=> (= (ControlFlow 0 7) (- 0 22)) |b$reqreads#12@2|) (=> |b$reqreads#12@2| (and (=> (= (ControlFlow 0 7) (- 0 21)) |b$reqreads#13@2|) (=> |b$reqreads#13@2| (and (=> (= (ControlFlow 0 7) (- 0 20)) |b$reqreads#14@2|) (=> |b$reqreads#14@2| (and (=> (= (ControlFlow 0 7) (- 0 19)) |b$reqreads#15@2|) (=> |b$reqreads#15@2| (and (=> (= (ControlFlow 0 7) (- 0 18)) |b$reqreads#16@2|) (=> |b$reqreads#16@2| (and (=> (= (ControlFlow 0 7) (- 0 17)) |b$reqreads#17@3|) (=> |b$reqreads#17@3| (and (=> (= (ControlFlow 0 7) (- 0 16)) |b$reqreads#18@2|) (=> |b$reqreads#18@2| (and (=> (= (ControlFlow 0 7) (- 0 15)) |b$reqreads#19@2|) (=> |b$reqreads#19@2| (and (=> (= (ControlFlow 0 7) (- 0 14)) |b$reqreads#20@2|) (=> |b$reqreads#20@2| (and (=> (= (ControlFlow 0 7) (- 0 13)) |b$reqreads#21@2|) (=> |b$reqreads#21@2| (and (=> (= (ControlFlow 0 7) (- 0 12)) |b$reqreads#22@2|) (=> |b$reqreads#22@2| (and (=> (= (ControlFlow 0 7) (- 0 11)) |b$reqreads#23@2|) (=> |b$reqreads#23@2| (and (=> (= (ControlFlow 0 7) (- 0 10)) |b$reqreads#24@3|) (=> |b$reqreads#24@3| (and (=> (= (ControlFlow 0 7) (- 0 9)) |b$reqreads#25@3|) (=> |b$reqreads#25@3| (and (=> (= (ControlFlow 0 7) (- 0 8)) |b$reqreads#26@3|) (=> |b$reqreads#26@3| (=> (= (ControlFlow 0 7) 6) GeneratedUnifiedExit_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon46_correct  (=> (= |b$reqreads#25@3| |b$reqreads#25@2|) (=> (and (and (= |b$reqreads#26@3| |b$reqreads#26@2|) (= |b$reqreads#23@2| |b$reqreads#23@1|)) (and (= |b$reqreads#24@3| |b$reqreads#24@2|) (= (ControlFlow 0 35) 7))) anon47_correct))))
(let ((anon74_Else_correct  (=> (and (not (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#12@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#4@0|))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#12@0|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#4@0|) _module.Node.next))))) (= |b$reqreads#23@1| |b$reqreads#23@0|)) (=> (and (and (= |b$reqreads#24@2| |b$reqreads#24@1|) (= |b$reqreads#26@2| |b$reqreads#26@1|)) (and (= |b$reqreads#25@2| |b$reqreads#25@1|) (= (ControlFlow 0 38) 35))) anon46_correct))))
(let ((anon74_Then_correct  (=> (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#12@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#4@0|))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#12@0|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#4@0|) _module.Node.next)))) (= |b$reqreads#23@1| |b$reqreads#23@0|)) (and (and (= |b$reqreads#24@2| |b$reqreads#24@1|) (= |b$reqreads#26@2| |b$reqreads#26@1|)) (and (= |b$reqreads#25@2| |b$reqreads#25@1|) (= (ControlFlow 0 37) 35)))) anon46_correct)))
(let ((anon73_Else_correct  (=> (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#12@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#4@0|)))) (=> (and (= |b$reqreads#25@1| true) (= |b$reqreads#26@1| true)) (and (=> (= (ControlFlow 0 42) 37) anon74_Then_correct) (=> (= (ControlFlow 0 42) 38) anon74_Else_correct))))))
(let ((anon73_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#12@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#4@0|))) (and (=> (= (ControlFlow 0 39) (- 0 41)) (or (not (= |n#12@0| null)) (not true))) (=> (or (not (= |n#12@0| null)) (not true)) (=> (= |b$reqreads#25@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |n#12@0| _module.Node.next))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (or (not (= |n'#4@0| null)) (not true))) (=> (or (not (= |n'#4@0| null)) (not true)) (=> (= |b$reqreads#26@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |n'#4@0| _module.Node.next))) (=> (and (= |b$reqreads#25@1| |b$reqreads#25@0|) (= |b$reqreads#26@1| |b$reqreads#26@0|)) (and (=> (= (ControlFlow 0 39) 37) anon74_Then_correct) (=> (= (ControlFlow 0 39) 38) anon74_Else_correct))))))))))))
(let ((anon72_Else_correct  (=> (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#12@0|))) (= |b$reqreads#24@1| true)) (and (=> (= (ControlFlow 0 44) 39) anon73_Then_correct) (=> (= (ControlFlow 0 44) 42) anon73_Else_correct)))))
(let ((anon72_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#12@0|)) (=> (and (= |b$reqreads#24@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.Spine))) (= |b$reqreads#24@1| |b$reqreads#24@0|)) (and (=> (= (ControlFlow 0 43) 39) anon73_Then_correct) (=> (= (ControlFlow 0 43) 42) anon73_Else_correct))))))
(let ((anon71_Then_correct  (=> (and (and (and ($Is refType |n#12@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n#12@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3)) (and ($Is refType |n'#4@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n'#4@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3))) (= |b$reqreads#23@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.Spine)))) (and (=> (= (ControlFlow 0 45) 43) anon72_Then_correct) (=> (= (ControlFlow 0 45) 44) anon72_Else_correct)))))
(let ((anon71_Else_correct  (=> (and (not (and (and ($Is refType |n#12@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n#12@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3)) (and ($Is refType |n'#4@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n'#4@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3)))) (= |b$reqreads#23@1| true)) (=> (and (and (= |b$reqreads#24@2| true) (= |b$reqreads#26@2| true)) (and (= |b$reqreads#25@2| true) (= (ControlFlow 0 36) 35))) anon46_correct))))
(let ((anon70_Then_correct  (=> (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@23 _module.Map$Value@@23 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (forall ((|k#2@@0| T@U) ) (!  (=> ($IsBox |k#2@@0| _module.Map$Key@@23) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@0|) (exists ((|n#7@@0| T@U) ) (!  (and ($Is refType |n#7@@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@0|) _module.Node.key) |k#2@@0|)))
 :qid |b4dfy.24:36|
 :skolemid |580|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@0|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@0|)))
))))
 :qid |b4dfy.24:13|
 :skolemid |581|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@0|))
))) (forall ((|n#9@@0| T@U) ) (!  (=> ($Is refType |n#9@@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@0|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@0|) _module.Node.key))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@0|) _module.Node.val) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@0|) _module.Node.key))))))
 :qid |b4dfy.25:13|
 :skolemid |582|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@0|) _module.Node.val))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@0|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@0|)))
))) (forall ((|n#11@@0| T@U) (|n'#3@@0| T@U) ) (!  (=> (and ($Is refType |n#11@@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($Is refType |n'#3@@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3@@0|))) (or (not (= |n#11@@0| |n'#3@@0|)) (not true))) (or (not (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11@@0|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3@@0|) _module.Node.key))) (not true))))
 :qid |b4dfy.26:13|
 :skolemid |583|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3@@0|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11@@0|) _module.Node.key))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3@@0|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11@@0|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11@@0|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11@@0|)))
))) (forall ((|n#13@@0| T@U) ) (!  (=> ($Is refType |n#13@@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#13@@0|)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#13@@0|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (not true))))
 :qid |b4dfy.27:13|
 :skolemid |584|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#13@@0|) _module.Node.next)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#13@@0|)))
))) (and (=> (= (ControlFlow 0 46) 45) anon71_Then_correct) (=> (= (ControlFlow 0 46) 36) anon71_Else_correct)))))
(let ((anon70_Else_correct  (=> (and (not (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@23 _module.Map$Value@@23 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (forall ((|k#2@@1| T@U) ) (!  (=> ($IsBox |k#2@@1| _module.Map$Key@@23) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@1|) (exists ((|n#7@@1| T@U) ) (!  (and ($Is refType |n#7@@1| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@1|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@1|) _module.Node.key) |k#2@@1|)))
 :qid |b4dfy.24:36|
 :skolemid |580|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@1|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@1|)))
))))
 :qid |b4dfy.24:13|
 :skolemid |581|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@1|))
))) (forall ((|n#9@@1| T@U) ) (!  (=> ($Is refType |n#9@@1| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@1|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@1|) _module.Node.key))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@1|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@1|) _module.Node.val) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@1|) _module.Node.key))))))
 :qid |b4dfy.25:13|
 :skolemid |582|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@1|) _module.Node.val))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@1|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@1|)))
))) (forall ((|n#11@@1| T@U) (|n'#3@@1| T@U) ) (!  (=> (and ($Is refType |n#11@@1| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($Is refType |n'#3@@1| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3@@1|))) (or (not (= |n#11@@1| |n'#3@@1|)) (not true))) (or (not (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11@@1|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3@@1|) _module.Node.key))) (not true))))
 :qid |b4dfy.26:13|
 :skolemid |583|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3@@1|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11@@1|) _module.Node.key))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3@@1|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11@@1|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11@@1|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3@@1|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3@@1|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11@@1|)))
))) (forall ((|n#13@@1| T@U) ) (!  (=> ($Is refType |n#13@@1| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#13@@1|)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#13@@1|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (not true))))
 :qid |b4dfy.27:13|
 :skolemid |584|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#13@@1|) _module.Node.next)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#13@@1|)))
)))) (= |b$reqreads#25@3| true)) (=> (and (and (= |b$reqreads#26@3| true) (= |b$reqreads#23@2| true)) (and (= |b$reqreads#24@3| true) (= (ControlFlow 0 34) 7))) anon47_correct))))
(let ((anon37_correct  (=> (= |b$reqreads#22@2| |b$reqreads#22@1|) (=> (and (= |b$reqreads#21@2| |b$reqreads#21@1|) (= |b$reqreads#20@2| |b$reqreads#20@1|)) (and (=> (= (ControlFlow 0 48) 46) anon70_Then_correct) (=> (= (ControlFlow 0 48) 34) anon70_Else_correct))))))
(let ((anon69_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#10@0|))) (=> (and (and (= |b$reqreads#20@1| |b$reqreads#20@0|) (= |b$reqreads#21@1| true)) (and (= |b$reqreads#22@1| true) (= (ControlFlow 0 52) 48))) anon37_correct))))
(let ((anon69_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#10@0|)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (or (not (= |n#10@0| null)) (not true))) (=> (or (not (= |n#10@0| null)) (not true)) (=> (and (= |b$reqreads#21@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |n#10@0| _module.Node.next))) (= |b$reqreads#22@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.head)))) (=> (and (and (= |b$reqreads#20@1| |b$reqreads#20@0|) (= |b$reqreads#21@1| |b$reqreads#21@0|)) (and (= |b$reqreads#22@1| |b$reqreads#22@0|) (= (ControlFlow 0 50) 48))) anon37_correct)))))))
(let ((anon68_Then_correct  (=> (and (and ($Is refType |n#10@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n#10@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3)) (= |b$reqreads#20@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.Spine)))) (and (=> (= (ControlFlow 0 53) 50) anon69_Then_correct) (=> (= (ControlFlow 0 53) 52) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (not (and ($Is refType |n#10@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n#10@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3))) (=> (and (and (= |b$reqreads#20@1| true) (= |b$reqreads#21@1| true)) (and (= |b$reqreads#22@1| true) (= (ControlFlow 0 49) 48))) anon37_correct))))
(let ((anon67_Then_correct  (=> (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@23 _module.Map$Value@@23 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (forall ((|k#2@@2| T@U) ) (!  (=> ($IsBox |k#2@@2| _module.Map$Key@@23) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@2|) (exists ((|n#7@@2| T@U) ) (!  (and ($Is refType |n#7@@2| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@2|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@2|) _module.Node.key) |k#2@@2|)))
 :qid |b4dfy.24:36|
 :skolemid |576|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@2|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@2|)))
))))
 :qid |b4dfy.24:13|
 :skolemid |577|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@2|))
))) (forall ((|n#9@@2| T@U) ) (!  (=> ($Is refType |n#9@@2| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@2|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@2|) _module.Node.key))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@2|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@2|) _module.Node.val) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@2|) _module.Node.key))))))
 :qid |b4dfy.25:13|
 :skolemid |578|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@2|) _module.Node.val))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@2|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@2|)))
))) (forall ((|n#11@@2| T@U) (|n'#3@@2| T@U) ) (!  (=> (and ($Is refType |n#11@@2| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($Is refType |n'#3@@2| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11@@2|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3@@2|))) (or (not (= |n#11@@2| |n'#3@@2|)) (not true))) (or (not (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11@@2|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3@@2|) _module.Node.key))) (not true))))
 :qid |b4dfy.26:13|
 :skolemid |579|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3@@2|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11@@2|) _module.Node.key))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3@@2|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11@@2|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11@@2|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3@@2|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3@@2|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11@@2|)))
))) (and (=> (= (ControlFlow 0 54) 53) anon68_Then_correct) (=> (= (ControlFlow 0 54) 49) anon68_Else_correct)))))
(let ((anon67_Else_correct  (=> (and (and (not (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@23 _module.Map$Value@@23 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (forall ((|k#2@@3| T@U) ) (!  (=> ($IsBox |k#2@@3| _module.Map$Key@@23) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@3|) (exists ((|n#7@@3| T@U) ) (!  (and ($Is refType |n#7@@3| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@3|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@3|) _module.Node.key) |k#2@@3|)))
 :qid |b4dfy.24:36|
 :skolemid |576|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@3|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@3|)))
))))
 :qid |b4dfy.24:13|
 :skolemid |577|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@3|))
))) (forall ((|n#9@@3| T@U) ) (!  (=> ($Is refType |n#9@@3| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@3|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@3|) _module.Node.key))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@3|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@3|) _module.Node.val) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@3|) _module.Node.key))))))
 :qid |b4dfy.25:13|
 :skolemid |578|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@3|) _module.Node.val))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@3|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@3|)))
))) (forall ((|n#11@@3| T@U) (|n'#3@@3| T@U) ) (!  (=> (and ($Is refType |n#11@@3| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($Is refType |n'#3@@3| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3@@3|))) (or (not (= |n#11@@3| |n'#3@@3|)) (not true))) (or (not (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11@@3|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3@@3|) _module.Node.key))) (not true))))
 :qid |b4dfy.26:13|
 :skolemid |579|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3@@3|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11@@3|) _module.Node.key))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#3@@3|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11@@3|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11@@3|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#3@@3|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#11@@3|)))
)))) (= |b$reqreads#22@2| true)) (and (= |b$reqreads#21@2| true) (= |b$reqreads#20@2| true))) (and (=> (= (ControlFlow 0 47) 46) anon70_Then_correct) (=> (= (ControlFlow 0 47) 34) anon70_Else_correct)))))
(let ((anon32_correct  (=> (and (and (= |b$reqreads#19@2| |b$reqreads#19@1|) (= |b$reqreads#18@2| |b$reqreads#18@1|)) (and (= |b$reqreads#17@3| |b$reqreads#17@2|) (= |b$reqreads#16@2| |b$reqreads#16@1|))) (and (=> (= (ControlFlow 0 56) 54) anon67_Then_correct) (=> (= (ControlFlow 0 56) 47) anon67_Else_correct)))))
(let ((anon66_Else_correct  (=> (and (not (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#8@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#2@0|))) (or (not (= |n#8@0| |n'#2@0|)) (not true)))) (= |b$reqreads#16@1| |b$reqreads#16@0|)) (=> (and (and (= |b$reqreads#17@2| |b$reqreads#17@1|) (= |b$reqreads#18@1| true)) (and (= |b$reqreads#19@1| true) (= (ControlFlow 0 61) 56))) anon32_correct))))
(let ((anon66_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#8@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#2@0|))) (or (not (= |n#8@0| |n'#2@0|)) (not true))) (and (=> (= (ControlFlow 0 58) (- 0 60)) (or (not (= |n#8@0| null)) (not true))) (=> (or (not (= |n#8@0| null)) (not true)) (=> (= |b$reqreads#18@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |n#8@0| _module.Node.key))) (and (=> (= (ControlFlow 0 58) (- 0 59)) (or (not (= |n'#2@0| null)) (not true))) (=> (or (not (= |n'#2@0| null)) (not true)) (=> (and (= |b$reqreads#19@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |n'#2@0| _module.Node.key))) (= |b$reqreads#16@1| |b$reqreads#16@0|)) (=> (and (and (= |b$reqreads#17@2| |b$reqreads#17@1|) (= |b$reqreads#18@1| |b$reqreads#18@0|)) (and (= |b$reqreads#19@1| |b$reqreads#19@0|) (= (ControlFlow 0 58) 56))) anon32_correct))))))))))
(let ((anon65_Else_correct  (=> (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#8@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#2@0|)))) (and (=> (= (ControlFlow 0 63) 58) anon66_Then_correct) (=> (= (ControlFlow 0 63) 61) anon66_Else_correct)))))
(let ((anon65_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#8@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n'#2@0|))) (and (=> (= (ControlFlow 0 62) 58) anon66_Then_correct) (=> (= (ControlFlow 0 62) 61) anon66_Else_correct)))))
(let ((anon64_Else_correct  (=> (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#8@0|))) (= |b$reqreads#17@1| true)) (and (=> (= (ControlFlow 0 65) 62) anon65_Then_correct) (=> (= (ControlFlow 0 65) 63) anon65_Else_correct)))))
(let ((anon64_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#8@0|)) (=> (and (= |b$reqreads#17@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.Spine))) (= |b$reqreads#17@1| |b$reqreads#17@0|)) (and (=> (= (ControlFlow 0 64) 62) anon65_Then_correct) (=> (= (ControlFlow 0 64) 63) anon65_Else_correct))))))
(let ((anon63_Then_correct  (=> (and (and (and ($Is refType |n#8@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n#8@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3)) (and ($Is refType |n'#2@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n'#2@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3))) (= |b$reqreads#16@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.Spine)))) (and (=> (= (ControlFlow 0 66) 64) anon64_Then_correct) (=> (= (ControlFlow 0 66) 65) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (not (and (and ($Is refType |n#8@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n#8@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3)) (and ($Is refType |n'#2@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n'#2@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3)))) (= |b$reqreads#16@1| true)) (=> (and (and (= |b$reqreads#17@2| true) (= |b$reqreads#18@1| true)) (and (= |b$reqreads#19@1| true) (= (ControlFlow 0 57) 56))) anon32_correct))))
(let ((anon62_Then_correct  (=> (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@23 _module.Map$Value@@23 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (forall ((|k#2@@4| T@U) ) (!  (=> ($IsBox |k#2@@4| _module.Map$Key@@23) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@4|) (exists ((|n#7@@4| T@U) ) (!  (and ($Is refType |n#7@@4| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@4|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@4|) _module.Node.key) |k#2@@4|)))
 :qid |b4dfy.24:36|
 :skolemid |573|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@4|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@4|)))
))))
 :qid |b4dfy.24:13|
 :skolemid |574|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@4|))
))) (forall ((|n#9@@4| T@U) ) (!  (=> ($Is refType |n#9@@4| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@4|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@4|) _module.Node.key))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@4|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@4|) _module.Node.val) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@4|) _module.Node.key))))))
 :qid |b4dfy.25:13|
 :skolemid |575|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@4|) _module.Node.val))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@4|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@4|)))
))) (and (=> (= (ControlFlow 0 67) 66) anon63_Then_correct) (=> (= (ControlFlow 0 67) 57) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (not (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@23 _module.Map$Value@@23 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (forall ((|k#2@@5| T@U) ) (!  (=> ($IsBox |k#2@@5| _module.Map$Key@@23) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@5|) (exists ((|n#7@@5| T@U) ) (!  (and ($Is refType |n#7@@5| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@5|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@5|) _module.Node.key) |k#2@@5|)))
 :qid |b4dfy.24:36|
 :skolemid |573|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@5|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@5|)))
))))
 :qid |b4dfy.24:13|
 :skolemid |574|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@5|))
))) (forall ((|n#9@@5| T@U) ) (!  (=> ($Is refType |n#9@@5| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@5|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@5|) _module.Node.key))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@5|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@5|) _module.Node.val) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@5|) _module.Node.key))))))
 :qid |b4dfy.25:13|
 :skolemid |575|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@5|) _module.Node.val))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9@@5|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#9@@5|)))
)))) (=> (and (and (= |b$reqreads#19@2| true) (= |b$reqreads#18@2| true)) (and (= |b$reqreads#17@3| true) (= |b$reqreads#16@2| true))) (and (=> (= (ControlFlow 0 55) 54) anon67_Then_correct) (=> (= (ControlFlow 0 55) 47) anon67_Else_correct))))))
(let ((anon23_correct  (=> (and (= |b$reqreads#15@2| |b$reqreads#15@1|) (= |b$reqreads#14@2| |b$reqreads#14@1|)) (=> (and (and (= |b$reqreads#13@2| |b$reqreads#13@1|) (= |b$reqreads#12@2| |b$reqreads#12@1|)) (and (= |b$reqreads#11@2| |b$reqreads#11@1|) (= |b$reqreads#10@2| |b$reqreads#10@1|))) (and (=> (= (ControlFlow 0 69) 67) anon62_Then_correct) (=> (= (ControlFlow 0 69) 55) anon62_Else_correct))))))
(let ((anon61_Else_correct  (=> (and (and (and (not (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#6@0|) _module.Node.key))) (= |b$reqreads#10@1| |b$reqreads#10@0|)) (and (= |b$reqreads#11@1| |b$reqreads#11@0|) (= |b$reqreads#12@1| |b$reqreads#12@0|))) (and (and (= |b$reqreads#13@1| true) (= |b$reqreads#14@1| true)) (and (= |b$reqreads#15@1| true) (= (ControlFlow 0 76) 69)))) anon23_correct)))
(let ((anon61_Then_correct  (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#6@0|) _module.Node.key)) (and (=> (= (ControlFlow 0 72) (- 0 75)) (or (not (= |n#6@0| null)) (not true))) (=> (or (not (= |n#6@0| null)) (not true)) (=> (and (= |b$reqreads#13@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |n#6@0| _module.Node.val))) (= |b$reqreads#14@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.M)))) (and (=> (= (ControlFlow 0 72) (- 0 74)) (or (not (= |n#6@0| null)) (not true))) (=> (or (not (= |n#6@0| null)) (not true)) (=> (= |b$reqreads#15@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |n#6@0| _module.Node.key))) (and (=> (= (ControlFlow 0 72) (- 0 73)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#6@0|) _module.Node.key))) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#6@0|) _module.Node.key)) (=> (= |b$reqreads#10@1| |b$reqreads#10@0|) (=> (and (= |b$reqreads#11@1| |b$reqreads#11@0|) (= |b$reqreads#12@1| |b$reqreads#12@0|)) (=> (and (and (= |b$reqreads#13@1| |b$reqreads#13@0|) (= |b$reqreads#14@1| |b$reqreads#14@0|)) (and (= |b$reqreads#15@1| |b$reqreads#15@0|) (= (ControlFlow 0 72) 69))) anon23_correct))))))))))))))
(let ((anon60_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#6@0|)) (and (=> (= (ControlFlow 0 77) (- 0 78)) (or (not (= |n#6@0| null)) (not true))) (=> (or (not (= |n#6@0| null)) (not true)) (=> (and (= |b$reqreads#11@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |n#6@0| _module.Node.key))) (= |b$reqreads#12@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.M)))) (and (=> (= (ControlFlow 0 77) 72) anon61_Then_correct) (=> (= (ControlFlow 0 77) 76) anon61_Else_correct))))))))
(let ((anon60_Else_correct  (=> (and (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#6@0|))) (= |b$reqreads#10@1| |b$reqreads#10@0|)) (and (= |b$reqreads#11@1| true) (= |b$reqreads#12@1| true))) (and (and (= |b$reqreads#13@1| true) (= |b$reqreads#14@1| true)) (and (= |b$reqreads#15@1| true) (= (ControlFlow 0 71) 69)))) anon23_correct)))
(let ((anon59_Then_correct  (=> (and (and ($Is refType |n#6@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n#6@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3)) (= |b$reqreads#10@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.Spine)))) (and (=> (= (ControlFlow 0 79) 77) anon60_Then_correct) (=> (= (ControlFlow 0 79) 71) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (and (and (and (not (and ($Is refType |n#6@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n#6@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3))) (= |b$reqreads#10@1| true)) (and (= |b$reqreads#11@1| true) (= |b$reqreads#12@1| true))) (and (and (= |b$reqreads#13@1| true) (= |b$reqreads#14@1| true)) (and (= |b$reqreads#15@1| true) (= (ControlFlow 0 70) 69)))) anon23_correct)))
(let ((anon58_Then_correct  (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@23 _module.Map$Value@@23 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (forall ((|k#2@@6| T@U) ) (!  (=> ($IsBox |k#2@@6| _module.Map$Key@@23) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@6|) (exists ((|n#7@@6| T@U) ) (!  (and ($Is refType |n#7@@6| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@6|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@6|) _module.Node.key) |k#2@@6|)))
 :qid |b4dfy.24:36|
 :skolemid |571|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@6|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@6|)))
))))
 :qid |b4dfy.24:13|
 :skolemid |572|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@6|))
))) (and (=> (= (ControlFlow 0 80) 79) anon59_Then_correct) (=> (= (ControlFlow 0 80) 70) anon59_Else_correct)))))
(let ((anon58_Else_correct  (=> (not (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@23 _module.Map$Value@@23 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (forall ((|k#2@@7| T@U) ) (!  (=> ($IsBox |k#2@@7| _module.Map$Key@@23) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@7|) (exists ((|n#7@@7| T@U) ) (!  (and ($Is refType |n#7@@7| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@7|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@7|) _module.Node.key) |k#2@@7|)))
 :qid |b4dfy.24:36|
 :skolemid |571|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#7@@7|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#7@@7|)))
))))
 :qid |b4dfy.24:13|
 :skolemid |572|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#2@@7|))
)))) (=> (and (= |b$reqreads#15@2| true) (= |b$reqreads#14@2| true)) (=> (and (and (= |b$reqreads#13@2| true) (= |b$reqreads#12@2| true)) (and (= |b$reqreads#11@2| true) (= |b$reqreads#10@2| true))) (and (=> (= (ControlFlow 0 68) 67) anon62_Then_correct) (=> (= (ControlFlow 0 68) 55) anon62_Else_correct)))))))
(let ((anon17_correct  (=> (= |b$reqreads#8@3| |b$reqreads#8@2|) (=> (and (= |b$reqreads#7@2| |b$reqreads#7@1|) (= |b$reqreads#9@3| |b$reqreads#9@2|)) (and (=> (= (ControlFlow 0 82) 80) anon58_Then_correct) (=> (= (ControlFlow 0 82) 68) anon58_Else_correct))))))
(let ((anon16_correct  (=> (and (and (= |b$reqreads#7@1| |b$reqreads#7@0|) (= |b$reqreads#9@2| |b$reqreads#9@1|)) (and (= |b$reqreads#8@2| |b$reqreads#8@1|) (= (ControlFlow 0 85) 82))) anon17_correct)))
(let ((anon57_Else_correct  (=> (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#5@0|))) (= |b$reqreads#8@1| |b$reqreads#8@0|)) (and (= |b$reqreads#9@1| true) (= (ControlFlow 0 89) 85))) anon16_correct)))
(let ((anon57_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Box refType |n#5@0|)) (and (=> (= (ControlFlow 0 87) (- 0 88)) (or (not (= |n#5@0| null)) (not true))) (=> (or (not (= |n#5@0| null)) (not true)) (=> (and (and (= |b$reqreads#9@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |n#5@0| _module.Node.key))) (= |b$reqreads#8@1| |b$reqreads#8@0|)) (and (= |b$reqreads#9@1| |b$reqreads#9@0|) (= (ControlFlow 0 87) 85))) anon16_correct))))))
(let ((anon56_Then_correct  (=> (and (and ($Is refType |n#5@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n#5@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3)) (= |b$reqreads#8@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.Spine)))) (and (=> (= (ControlFlow 0 90) 87) anon57_Then_correct) (=> (= (ControlFlow 0 90) 89) anon57_Else_correct)))))
(let ((anon56_Else_correct  (=> (and (and (not (and ($Is refType |n#5@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType |n#5@0| (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3))) (= |b$reqreads#8@1| true)) (and (= |b$reqreads#9@1| true) (= (ControlFlow 0 86) 85))) anon16_correct)))
(let ((anon55_Then_correct  (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#1@0|) (and (=> (= (ControlFlow 0 91) 90) anon56_Then_correct) (=> (= (ControlFlow 0 91) 86) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (not (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.M))) |k#1@0|)) (=> (and (and (= |b$reqreads#7@1| |b$reqreads#7@0|) (= |b$reqreads#9@2| true)) (and (= |b$reqreads#8@2| true) (= (ControlFlow 0 84) 82))) anon17_correct))))
(let ((anon54_Then_correct  (=> (and (and ($IsBox |k#1@0| _module.Map$Key@@23) ($IsAllocBox |k#1@0| _module.Map$Key@@23 $Heap@@3)) (= |b$reqreads#7@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.M)))) (and (=> (= (ControlFlow 0 92) 91) anon55_Then_correct) (=> (= (ControlFlow 0 92) 84) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (not (and ($IsBox |k#1@0| _module.Map$Key@@23) ($IsAllocBox |k#1@0| _module.Map$Key@@23 $Heap@@3))) (=> (and (and (= |b$reqreads#7@1| true) (= |b$reqreads#9@2| true)) (and (= |b$reqreads#8@2| true) (= (ControlFlow 0 83) 82))) anon17_correct))))
(let ((anon53_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@23 _module.Map$Value@@23 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (and (=> (= (ControlFlow 0 93) 92) anon54_Then_correct) (=> (= (ControlFlow 0 93) 83) anon54_Else_correct)))))
(let ((anon53_Else_correct  (=> (and (and (not (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@23 _module.Map$Value@@23 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head))))) (= |b$reqreads#8@3| true)) (and (= |b$reqreads#7@2| true) (= |b$reqreads#9@3| true))) (and (=> (= (ControlFlow 0 81) 80) anon58_Then_correct) (=> (= (ControlFlow 0 81) 68) anon58_Else_correct)))))
(let ((anon52_Else_correct  (=> (and (and (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr))))) (= |b$reqreads#4@1| true)) (and (= |b$reqreads#5@1| true) (= |b$reqreads#6@1| true))) (and (=> (= (ControlFlow 0 95) 93) anon53_Then_correct) (=> (= (ControlFlow 0 95) 81) anon53_Else_correct)))))
(let ((anon52_Then_correct  (=> (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.Spine)))) (and (= |##spine#0@0| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine))) ($IsAlloc SetType |##spine#0@0| (TSet (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) $Heap@@3))) (and (and (and (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.head))) (= |##n#0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head)))) (and ($IsAlloc refType |##n#0@0| (Tclass._module.Node? _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3) (= |b$reqreads#6@0| (forall (($o@@22 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@22) alloc)))) (|Set#IsMember| |##spine#0@0| ($Box refType $o@@22))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@22 $f@@0)))
 :qid |b4dfy.23:5|
 :skolemid |570|
))))) (and (and (|_module.Map.SpineValid#canCall| _module.Map$Key@@23 _module.Map$Value@@23 $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.head))) (= |b$reqreads#4@1| |b$reqreads#4@0|)) (and (= |b$reqreads#5@1| |b$reqreads#5@0|) (= |b$reqreads#6@1| |b$reqreads#6@0|))))) (and (=> (= (ControlFlow 0 94) 93) anon53_Then_correct) (=> (= (ControlFlow 0 94) 81) anon53_Else_correct)))))
(let ((anon51_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1))) (=> (and (= |b$reqreads#2@1| true) (= |b$reqreads#3@1| true)) (and (=> (= (ControlFlow 0 97) 94) anon52_Then_correct) (=> (= (ControlFlow 0 97) 95) anon52_Else_correct))))))
(let ((anon51_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (=> (and (and (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.Spine))) (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.Repr)))) (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= |b$reqreads#3@1| |b$reqreads#3@0|))) (and (=> (= (ControlFlow 0 96) 94) anon52_Then_correct) (=> (= (ControlFlow 0 96) 95) anon52_Else_correct))))))
(let ((anon49_Else_correct  (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.Repr))) (and (=> (= (ControlFlow 0 98) 96) anon51_Then_correct) (=> (= (ControlFlow 0 98) 97) anon51_Else_correct)))))
(let ((anon5_correct true))
(let ((anon50_Else_correct  (=> (and (=> (_module.Map.Valid _module.Map$Key@@23 _module.Map$Value@@23 $Heap@@3 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1))) (= (ControlFlow 0 4) 1)) anon5_correct)))
(let ((anon50_Then_correct  (=> ($IsAllocBox ($Box refType this@@1) (Tclass._module.Map? _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (= this@@1 this@@1) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))))))) (=> (or (= this@@1 this@@1) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@1))))))) (=> (and (and (or (= this@@1 this@@1) (|_module.Map.Valid#canCall| _module.Map$Key@@23 _module.Map$Value@@23 $Heap@@3 this@@1)) (_module.Map.Valid _module.Map$Key@@23 _module.Map$Value@@23 $Heap@@3 this@@1)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)) ($Box refType this@@1)) (= (ControlFlow 0 2) 1))) anon5_correct))))))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@3 alloc this@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@1) _module.Map.Repr)))) (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Map.Repr)))) (and (=> (= (ControlFlow 0 99) (- 0 100)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (and (=> (= (ControlFlow 0 99) 98) anon49_Else_correct) (=> (= (ControlFlow 0 99) 2) anon50_Then_correct)) (=> (= (ControlFlow 0 99) 4) anon50_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass._module.Map _module.Map$Key@@23 _module.Map$Value@@23)) ($IsAlloc refType this@@1 (Tclass._module.Map _module.Map$Key@@23 _module.Map$Value@@23) $Heap@@3))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 101) 99))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
