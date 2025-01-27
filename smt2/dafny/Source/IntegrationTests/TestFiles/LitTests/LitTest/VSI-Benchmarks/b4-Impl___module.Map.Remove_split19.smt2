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
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._module.Map? (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TagSet TagMap alloc allocName Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 class._module.Map? Tagclass._module.Map? Tagclass._module.Node? Tagclass._module.Node Tagclass._module.Map class._module.Node? tytagFamily$object |tytagFamily$_tuple#2| tytagFamily$Map tytagFamily$Node field$M field$Repr field$head field$Spine field$key field$val field$next)
)
(assert (= (FDim alloc) 0))
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
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((a@@2 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b y@@0) (not (|Set#IsMember| (|Set#Difference| a@@2 b) y@@0)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@2 b) (|Set#IsMember| b y@@0))
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
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Subset| a@@4 b@@1) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@4 o@@3) (|Set#IsMember| b@@1 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@4 o@@3))
 :pattern ( (|Set#IsMember| b@@1 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@4 b@@1))
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
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall ((_module.Map$Key@@4 T@U) (_module.Map$Value@@4 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._module.Map? _module.Map$Key@@4 _module.Map$Value@@4))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._module.Map? _module.Map$Key@@4 _module.Map$Value@@4))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($Is refType $o@@2 (Tclass._module.Map? _module.Map$Key@@4 _module.Map$Value@@4)))
)))
(assert (forall ((_module.Node$Key@@2 T@U) (_module.Node$Value@@2 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._module.Node? _module.Node$Key@@2 _module.Node$Value@@2))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._module.Node? _module.Node$Key@@2 _module.Node$Value@@2))))
 :qid |unknown.0:0|
 :skolemid |979|
 :pattern ( ($Is refType $o@@3 (Tclass._module.Node? _module.Node$Key@@2 _module.Node$Value@@2)))
)))
(assert (forall ((_module.Node$Key@@3 T@U) (_module.Node$Value@@3 T@U) ($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._module.Node? _module.Node$Key@@3 _module.Node$Value@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.Node.key) _module.Node$Key@@3 $h@@4))
 :qid |unknown.0:0|
 :skolemid |982|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.Node.key) (Tclass._module.Node? _module.Node$Key@@3 _module.Node$Value@@3))
)))
(assert (forall ((_module.Node$Key@@4 T@U) (_module.Node$Value@@4 T@U) ($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.Node? _module.Node$Key@@4 _module.Node$Value@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.Node.val) _module.Node$Value@@4 $h@@5))
 :qid |unknown.0:0|
 :skolemid |984|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.Node.val) (Tclass._module.Node? _module.Node$Key@@4 _module.Node$Value@@4))
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
(assert (forall ((_module.Map$Key@@6 T@U) (_module.Map$Value@@6 T@U) ($ly@@1 T@U) ($h0 T@U) ($h1 T@U) (|spine#0@@1| T@U) (|n#0@@2| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|_module.Map.SpineValid#canCall| _module.Map$Key@@6 _module.Map$Value@@6 $h0 |spine#0@@1| |n#0@@2|) (and ($Is SetType |spine#0@@1| (TSet (Tclass._module.Node _module.Map$Key@@6 _module.Map$Value@@6))) ($Is refType |n#0@@2| (Tclass._module.Node? _module.Map$Key@@6 _module.Map$Value@@6))))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@6 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (|Set#IsMember| |spine#0@@1| ($Box refType $o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@6) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@6) $f)))
 :qid |unknown.0:0|
 :skolemid |604|
)) (= (_module.Map.SpineValid _module.Map$Key@@6 _module.Map$Value@@6 $ly@@1 $h0 |spine#0@@1| |n#0@@2|) (_module.Map.SpineValid _module.Map$Key@@6 _module.Map$Value@@6 $ly@@1 $h1 |spine#0@@1| |n#0@@2|))))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Map.SpineValid _module.Map$Key@@6 _module.Map$Value@@6 $ly@@1 $h1 |spine#0@@1| |n#0@@2|))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((_module.Map$Key@@7 T@U) (_module.Map$Value@@7 T@U) ($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.Map? _module.Map$Key@@7 _module.Map$Value@@7)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.Map.Repr)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.Map.Repr)) (Tclass._module.Map? _module.Map$Key@@7 _module.Map$Value@@7))
)))
(assert (forall ((_module.Map$Key@@8 T@U) (_module.Map$Value@@8 T@U) ($o@@8 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@8 (Tclass._module.Map? _module.Map$Key@@8 _module.Map$Value@@8) $h@@9)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsAlloc refType $o@@8 (Tclass._module.Map? _module.Map$Key@@8 _module.Map$Value@@8) $h@@9))
)))
(assert (forall ((_module.Node$Key@@6 T@U) (_module.Node$Value@@6 T@U) ($o@@9 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@9 (Tclass._module.Node? _module.Node$Key@@6 _module.Node$Value@@6) $h@@10)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |980|
 :pattern ( ($IsAlloc refType $o@@9 (Tclass._module.Node? _module.Node$Key@@6 _module.Node$Value@@6) $h@@10))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@5 b@@2) (= a@@5 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@5 b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (c T@U) ) (!  (=> (or (not (= a@@6 c)) (not true)) (=> (and ($HeapSucc a@@6 b@@3) ($HeapSucc b@@3 c)) ($HeapSucc a@@6 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@6 b@@3) ($HeapSucc b@@3 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
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
(assert (forall ((_module.Map$Key@@9 T@U) (_module.Map$Value@@9 T@U) ) (! (= (Tclass._module.Map?_0 (Tclass._module.Map? _module.Map$Key@@9 _module.Map$Value@@9)) _module.Map$Key@@9)
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( (Tclass._module.Map? _module.Map$Key@@9 _module.Map$Value@@9))
)))
(assert (forall ((_module.Map$Key@@10 T@U) (_module.Map$Value@@10 T@U) ) (! (= (Tclass._module.Map?_1 (Tclass._module.Map? _module.Map$Key@@10 _module.Map$Value@@10)) _module.Map$Value@@10)
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass._module.Map? _module.Map$Key@@10 _module.Map$Value@@10))
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
(assert (forall ((_module.Map$Key@@11 T@U) (_module.Map$Value@@11 T@U) ) (! (= (Tclass._module.Map_0 (Tclass._module.Map _module.Map$Key@@11 _module.Map$Value@@11)) _module.Map$Key@@11)
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (Tclass._module.Map _module.Map$Key@@11 _module.Map$Value@@11))
)))
(assert (forall ((_module.Map$Key@@12 T@U) (_module.Map$Value@@12 T@U) ) (! (= (Tclass._module.Map_1 (Tclass._module.Map _module.Map$Key@@12 _module.Map$Value@@12)) _module.Map$Value@@12)
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( (Tclass._module.Map _module.Map$Key@@12 _module.Map$Value@@12))
)))
(assert (forall (($o@@10 T@U) ) (! ($Is refType $o@@10 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@10 Tclass._System.object?))
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
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@4 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@2 t1@@0) h@@4) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@4) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@4) t1@@0 h@@4) ($IsAllocBox bx@@4 t0@@2 h@@4)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@4))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@4))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@2 t1@@0) h@@4))
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
(assert (forall ((_module.Map$Key@@13 T@U) (_module.Map$Value@@13 T@U) ($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._module.Map? _module.Map$Key@@13 _module.Map$Value@@13)))) ($Is MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.Map.M)) (TMap _module.Map$Key@@13 _module.Map$Value@@13)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.Map.M)) (Tclass._module.Map? _module.Map$Key@@13 _module.Map$Value@@13))
)))
(assert (forall ((_module.Map$Key@@14 T@U) (_module.Map$Value@@14 T@U) ($h@@12 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._module.Map? _module.Map$Key@@14 _module.Map$Value@@14)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.Map.head)) (Tclass._module.Node? _module.Map$Key@@14 _module.Map$Value@@14)))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.Map.head)) (Tclass._module.Map? _module.Map$Key@@14 _module.Map$Value@@14))
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
(assert (forall ((bx@@5 T@U) (s T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@5 (TMap s t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@5)) bx@@5) ($Is MapType ($Unbox MapType bx@@5) (TMap s t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@5 (TMap s t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((_module.Map$Key@@15 T@U) (_module.Map$Value@@15 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.Map? _module.Map$Key@@15 _module.Map$Value@@15)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.Map? _module.Map$Key@@15 _module.Map$Value@@15))))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsBox bx@@7 (Tclass._module.Map? _module.Map$Key@@15 _module.Map$Value@@15)))
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
(assert (forall ((_module.Map$Key@@16 T@U) (_module.Map$Value@@16 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.Map _module.Map$Key@@16 _module.Map$Value@@16)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._module.Map _module.Map$Key@@16 _module.Map$Value@@16))))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsBox bx@@10 (Tclass._module.Map _module.Map$Key@@16 _module.Map$Value@@16)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((_module.Map$Key@@17 T@U) (_module.Map$Value@@17 T@U) ) (!  (and (= (Tag (Tclass._module.Map? _module.Map$Key@@17 _module.Map$Value@@17)) Tagclass._module.Map?) (= (TagFamily (Tclass._module.Map? _module.Map$Key@@17 _module.Map$Value@@17)) tytagFamily$Map))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (Tclass._module.Map? _module.Map$Key@@17 _module.Map$Value@@17))
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
(assert (forall ((_module.Map$Key@@18 T@U) (_module.Map$Value@@18 T@U) ) (!  (and (= (Tag (Tclass._module.Map _module.Map$Key@@18 _module.Map$Value@@18)) Tagclass._module.Map) (= (TagFamily (Tclass._module.Map _module.Map$Key@@18 _module.Map$Value@@18)) tytagFamily$Map))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( (Tclass._module.Map _module.Map$Key@@18 _module.Map$Value@@18))
)))
(assert (forall ((_module.Map$Key@@19 T@U) (_module.Map$Value@@19 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass._module.Map _module.Map$Key@@19 _module.Map$Value@@19)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@14 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (or (= $o@@14 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@1) _module.Map.Repr)) ($Box refType $o@@14)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@14) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@14) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |550|
)) (= (_module.Map.Valid _module.Map$Key@@19 _module.Map$Value@@19 $h0@@0 this@@1) (_module.Map.Valid _module.Map$Key@@19 _module.Map$Value@@19 $h1@@0 this@@1))))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Map.Valid _module.Map$Key@@19 _module.Map$Value@@19 $h1@@0 this@@1))
)))
(assert (forall ((_module.Map$Key@@20 T@U) (_module.Map$Value@@20 T@U) ($h@@14 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.Map? _module.Map$Key@@20 _module.Map$Value@@20)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) alloc)))) ($IsAlloc MapType ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) _module.Map.M)) (TMap _module.Map$Key@@20 _module.Map$Value@@20) $h@@14))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) _module.Map.M)) (Tclass._module.Map? _module.Map$Key@@20 _module.Map$Value@@20))
)))
(assert (forall ((_module.Map$Key@@21 T@U) (_module.Map$Value@@21 T@U) ($h@@15 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._module.Map? _module.Map$Key@@21 _module.Map$Value@@21)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) _module.Map.head)) (Tclass._module.Node? _module.Map$Key@@21 _module.Map$Value@@21) $h@@15))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) _module.Map.head)) (Tclass._module.Map? _module.Map$Key@@21 _module.Map$Value@@21))
)))
(assert (forall ((_module.Node$Key@@16 T@U) (_module.Node$Value@@16 T@U) ($h@@16 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._module.Node? _module.Node$Key@@16 _module.Node$Value@@16)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) _module.Node.next)) (Tclass._module.Node? _module.Node$Key@@16 _module.Node$Value@@16) $h@@16))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) _module.Node.next)) (Tclass._module.Node? _module.Node$Key@@16 _module.Node$Value@@16))
)))
(assert (forall ((m@@1 T@U) ) (!  (or (= m@@1 |Map#Empty|) (exists ((k@@2 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@1) k@@2)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@1))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@2) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@2))
)))
(assert (forall ((m@@3 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@3) item)  (and (|Set#IsMember| (|Map#Domain| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@3) item))
)))
(assert (forall ((m@@4 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@4) v@@6) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@4) u@@3) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@4) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@4) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@4) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@4) v@@6))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@11 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@9)))
)))
(assert (forall ((v@@7 T@U) (t0@@3 T@U) (t1@@1 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@3 t1@@1)) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@12) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@12) t1@@1) ($IsBox bx@@12 t0@@3)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@12))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@12))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@7 (TMap t0@@3 t1@@1)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((_module.Map$Key@@22 T@U) (_module.Map$Value@@22 T@U) ($h@@17 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._module.Map? _module.Map$Key@@22 _module.Map$Value@@22)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) _module.Map.Spine)) (TSet (Tclass._module.Node _module.Map$Key@@22 _module.Map$Value@@22))))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) _module.Map.Spine)) (Tclass._module.Map? _module.Map$Key@@22 _module.Map$Value@@22))
)))
(assert (forall ((_module.Node$Key@@17 T@U) (_module.Node$Value@@17 T@U) ($h@@18 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._module.Node? _module.Node$Key@@17 _module.Node$Value@@17)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) _module.Node.Spine)) (TSet (Tclass._module.Node _module.Node$Key@@17 _module.Node$Value@@17))))
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) _module.Node.Spine)) (Tclass._module.Node? _module.Node$Key@@17 _module.Node$Value@@17))
)))
(assert (forall ((_module.Map$Key@@23 T@U) (_module.Map$Value@@23 T@U) ($h@@19 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._module.Map? _module.Map$Key@@23 _module.Map$Value@@23)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@20) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@20) _module.Map.Spine)) (TSet (Tclass._module.Node _module.Map$Key@@23 _module.Map$Value@@23)) $h@@19))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@20) _module.Map.Spine)) (Tclass._module.Map? _module.Map$Key@@23 _module.Map$Value@@23))
)))
(assert (forall ((_module.Node$Key@@18 T@U) (_module.Node$Value@@18 T@U) ($h@@20 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._module.Node? _module.Node$Key@@18 _module.Node$Value@@18)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@21) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@21) _module.Node.Spine)) (TSet (Tclass._module.Node _module.Node$Key@@18 _module.Node$Value@@18)) $h@@20))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@21) _module.Node.Spine)) (Tclass._module.Node? _module.Node$Key@@18 _module.Node$Value@@18))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Equal| a@@7 b@@4) (forall ((o@@4 T@U) ) (! (= (|Set#IsMember| a@@7 o@@4) (|Set#IsMember| b@@4 o@@4))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@7 o@@4))
 :pattern ( (|Set#IsMember| b@@4 o@@4))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@7 b@@4))
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
(assert (forall ((_module.Map$Key@@24 T@U) (_module.Map$Value@@24 T@U) ($h@@23 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._module.Map? _module.Map$Key@@24 _module.Map$Value@@24)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@22) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@22) _module.Map.Repr)) (TSet Tclass._System.object) $h@@23))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@22) _module.Map.Repr)) (Tclass._module.Map? _module.Map$Key@@24 _module.Map$Value@@24))
)))
(assert  (and (forall ((t0@@4 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@5 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@4 t1@@2 t2 (MapType1Store t0@@4 t1@@2 t2 m@@5 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@6 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@6 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@6 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@7 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@7 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@7 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@23 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@23 $f@@1))  (=> (and (or (not (= $o@@23 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@23) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@23))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1014|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@23 $f@@1))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((k@@3 T@U) (v@@8 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@8)))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@3 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun _module.Map$Key@@25 () T@U)
(declare-fun _module.Map$Value@@25 () T@U)
(declare-fun |key#0| () T@U)
(declare-fun |prev#0| () T@U)
(declare-fun |p#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |call5formal@prev#0| () T@U)
(declare-fun call0formal@_module.Map$Key () T@U)
(declare-fun call1formal@_module.Map$Value () T@U)
(declare-fun |call6formal@p#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |call5formal@prev#0@0| () T@U)
(declare-fun |call6formal@p#0@0| () T@U)
(set-info :boogie-vc-id Impl$$_module.Map.Remove_split19)
(set-option :timeout 10000)
(set-option :rlimit 3000000)
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
 (=> (= (ControlFlow 0 0) 2) (let ((anon0_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass._module.Map _module.Map$Key@@25 _module.Map$Value@@25)) ($IsAlloc refType this@@2 (Tclass._module.Map _module.Map$Key@@25 _module.Map$Value@@25) $Heap@@3))) (and ($IsBox |key#0| _module.Map$Key@@25) ($IsAllocBox |key#0| _module.Map$Key@@25 $Heap@@3))) (and (and ($Is refType |prev#0| (Tclass._module.Node? _module.Map$Key@@25 _module.Map$Value@@25)) ($IsAlloc refType |prev#0| (Tclass._module.Node? _module.Map$Key@@25 _module.Map$Value@@25) $Heap@@3)) true)) (=> (and (and (and (and ($Is refType |p#0| (Tclass._module.Node? _module.Map$Key@@25 _module.Map$Value@@25)) ($IsAlloc refType |p#0| (Tclass._module.Node? _module.Map$Key@@25 _module.Map$Value@@25) $Heap@@3)) true) (= 4 $FunctionContextHeight)) (and (and (|_module.Map.Valid#canCall| _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (and (_module.Map.Valid _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Repr)) ($Box refType this@@2)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Repr)))) (_module.Map.SpineValid _module.Map$Key@@25 _module.Map$Value@@25 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.head)))) (forall ((|k#4| T@U) ) (!  (=> ($IsBox |k#4| _module.Map$Key@@25) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.M))) |k#4|) (exists ((|n#10| T@U) ) (!  (and ($Is refType |n#10| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#10|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#10|) _module.Node.key) |k#4|)))
 :qid |b4dfy.24:36|
 :skolemid |824|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#10|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#10|)))
))))
 :qid |b4dfy.24:13|
 :skolemid |825|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.M))) |k#4|))
))) (forall ((|n#11| T@U) ) (!  (=> ($Is refType |n#11| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25)) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#11|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11|) _module.Node.key))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#11|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11|) _module.Node.val) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11|) _module.Node.key))))))
 :qid |b4dfy.25:13|
 :skolemid |826|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11|) _module.Node.val))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#11|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#11|)))
))) (forall ((|n#12| T@U) (|n'#4| T@U) ) (!  (=> (and ($Is refType |n#12| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25)) ($Is refType |n'#4| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#12|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n'#4|))) (or (not (= |n#12| |n'#4|)) (not true))) (or (not (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#12|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#4|) _module.Node.key))) (not true))))
 :qid |b4dfy.26:13|
 :skolemid |827|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#4|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#12|) _module.Node.key))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#4|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#12|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#12|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n'#4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n'#4|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#12|)))
))) (forall ((|n#13| T@U) ) (!  (=> ($Is refType |n#13| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#13|)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#13|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.head)))) (not true))))
 :qid |b4dfy.27:13|
 :skolemid |828|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#13|) _module.Node.next)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#13|)))
))) (forall ((|n#14| T@U) (|n'#5| T@U) ) (!  (=> (and ($Is refType |n#14| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25)) ($Is refType |n'#5| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#14|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n'#5|))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#14|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#5|) _module.Node.next)))) (= |n#14| |n'#5|)))
 :qid |b4dfy.28:13|
 :skolemid |829|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#5|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#14|) _module.Node.next)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#5|) _module.Node.next)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#14|)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#14|) _module.Node.next)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n'#5|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n'#5|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#14|)))
))))) (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@3 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Repr)))))) (=> (and (and (and (and (and ($Is refType |call5formal@prev#0| (Tclass._module.Node? call0formal@_module.Map$Key call1formal@_module.Map$Value)) ($IsAlloc refType |call5formal@prev#0| (Tclass._module.Node? call0formal@_module.Map$Key call1formal@_module.Map$Value) $Heap@@3)) (and ($Is refType |call6formal@p#0| (Tclass._module.Node? call0formal@_module.Map$Key call1formal@_module.Map$Value)) ($IsAlloc refType |call6formal@p#0| (Tclass._module.Node? call0formal@_module.Map$Key call1formal@_module.Map$Value) $Heap@@3))) (and (and (=> (|_module.Map.Valid#canCall| _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (or (_module.Map.Valid _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Repr)) ($Box refType this@@2)))) (=> (|_module.Map.Valid#canCall| _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (or (_module.Map.Valid _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Repr)))))) (and (=> (|_module.Map.Valid#canCall| _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (or (_module.Map.Valid _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (=> (|_module.Map.SpineValid#canCall| _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.head))) (or (_module.Map.SpineValid _module.Map$Key@@25 _module.Map$Value@@25 ($LS $LZ) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.head))) (or (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.head)) null) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) |Set#Empty|)) (and (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.head)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.head))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.head))) _module.Node.Spine)) (|Set#Difference| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.head))))) (_module.Map.SpineValid _module.Map$Key@@25 _module.Map$Value@@25 ($LS ($LS $LZ)) $Heap@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.head))) _module.Node.Spine)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.head))) _module.Node.next))))))))) (=> (|_module.Map.Valid#canCall| _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (or (_module.Map.Valid _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (forall ((|k#0@@0| T@U) ) (!  (=> ($IsBox |k#0@@0| _module.Map$Key@@25) (=> (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.M))) |k#0@@0|) (exists ((|n#0@@3| T@U) ) (!  (and ($Is refType |n#0@@3| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#0@@3|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#0@@3|) _module.Node.key) |k#0@@0|)))
 :qid |b4dfy.24:36|
 :skolemid |665|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#0@@3|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#0@@3|)))
))))
 :qid |b4dfy.24:13|
 :skolemid |666|
 :pattern ( (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.M))) |k#0@@0|))
))))))) (and (and (and (=> (|_module.Map.Valid#canCall| _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (or (_module.Map.Valid _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (forall ((|n#1@@0| T@U) ) (!  (=> ($Is refType |n#1@@0| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25)) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#1@@0|)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) _module.Node.key))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#1@@0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) _module.Node.val) (MapType0Select BoxType BoxType (|Map#Elements| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.M))) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) _module.Node.key))))))
 :qid |b4dfy.25:13|
 :skolemid |667|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) _module.Node.val))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) _module.Node.key))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#1@@0|)))
)))) (=> (|_module.Map.Valid#canCall| _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (or (_module.Map.Valid _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (forall ((|n#2@@0| T@U) (|n'#0@@0| T@U) ) (!  (=> (and ($Is refType |n#2@@0| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25)) ($Is refType |n'#0@@0| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#2@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n'#0@@0|))) (or (not (= |n#2@@0| |n'#0@@0|)) (not true))) (or (not (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2@@0|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#0@@0|) _module.Node.key))) (not true))))
 :qid |b4dfy.26:13|
 :skolemid |668|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#0@@0|) _module.Node.key) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2@@0|) _module.Node.key))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#0@@0|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#2@@0|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2@@0|) _module.Node.key) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n'#0@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n'#0@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#2@@0|)))
))))) (and (=> (|_module.Map.Valid#canCall| _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (or (_module.Map.Valid _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (forall ((|n#3@@0| T@U) ) (!  (=> ($Is refType |n#3@@0| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#3@@0|)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3@@0|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.head)))) (not true))))
 :qid |b4dfy.27:13|
 :skolemid |669|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3@@0|) _module.Node.next)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#3@@0|)))
)))) (=> (|_module.Map.Valid#canCall| _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (or (_module.Map.Valid _module.Map$Key@@25 _module.Map$Value@@25 $Heap@@3 this@@2) (forall ((|n#4@@0| T@U) (|n'#1@@0| T@U) ) (!  (=> (and ($Is refType |n#4@@0| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25)) ($Is refType |n'#1@@0| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25))) (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#4@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n'#1@@0|))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#4@@0|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#1@@0|) _module.Node.next)))) (= |n#4@@0| |n'#1@@0|)))
 :qid |b4dfy.28:13|
 :skolemid |670|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#1@@0|) _module.Node.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#4@@0|) _module.Node.next)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n'#1@@0|) _module.Node.next)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#4@@0|)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#4@@0|) _module.Node.next)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n'#1@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n'#1@@0|)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) _module.Map.Spine)) ($Box refType |n#4@@0|)))
)))))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and ($Is refType |call5formal@prev#0@0| (Tclass._module.Node? _module.Map$Key@@25 _module.Map$Value@@25)) ($IsAlloc refType |call5formal@prev#0@0| (Tclass._module.Node? _module.Map$Key@@25 _module.Map$Value@@25) $Heap@0))))) (and (and (and (and ($Is refType |call6formal@p#0@0| (Tclass._module.Node? _module.Map$Key@@25 _module.Map$Value@@25)) ($IsAlloc refType |call6formal@p#0@0| (Tclass._module.Node? _module.Map$Key@@25 _module.Map$Value@@25) $Heap@0)) (=> (= |call6formal@p#0@0| null) (not (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.Map.M))) |key#0|)))) (and (and (=> (or (not (= |call6formal@p#0@0| null)) (not true)) (|Set#IsMember| (|Map#Domain| ($Unbox MapType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.Map.M))) |key#0|)) (=> (or (not (= |call6formal@p#0@0| null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.Map.Spine)) ($Box refType |call6formal@p#0@0|)))) (and (=> (or (not (= |call6formal@p#0@0| null)) (not true)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call6formal@p#0@0|) _module.Node.key) |key#0|)) (=> (or (not (= |call6formal@p#0@0| null)) (not true)) (=> (= |call6formal@p#0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.Map.head))) (= |call5formal@prev#0@0| null)))))) (and (and (and (=> (or (not (= |call6formal@p#0@0| null)) (not true)) (=> (or (not (= |call6formal@p#0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.Map.head)))) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.Map.Spine)) ($Box refType |call5formal@prev#0@0|)))) (=> (or (not (= |call6formal@p#0@0| null)) (not true)) (=> (or (not (= |call6formal@p#0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@2) _module.Map.head)))) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call5formal@prev#0@0|) _module.Node.next)) |call6formal@p#0@0|)))) (and (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@24) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@24) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@24)))
 :qid |b4dfy.65:22|
 :skolemid |677|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@24))
)) ($HeapSucc $Heap@@3 $Heap@0))) (and (and (or (not (= |call6formal@p#0@0| null)) (not true)) (or (not (= |call5formal@prev#0@0| null)) (not true))) (and ($Is refType |call5formal@prev#0@0| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25)) (= (ControlFlow 0 2) (- 0 1))))))) ($Is refType |call6formal@p#0@0| (Tclass._module.Node _module.Map$Key@@25 _module.Map$Value@@25))))))))
anon0_correct))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
