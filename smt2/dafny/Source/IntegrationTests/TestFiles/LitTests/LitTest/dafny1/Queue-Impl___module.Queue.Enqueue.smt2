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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._module.Queue? () T@U)
(declare-fun Tagclass._module.Queue? () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun Tagclass._module.Queue () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun class._module.Node? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Queue () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$head () T@U)
(declare-fun field$tail () T@U)
(declare-fun field$contents () T@U)
(declare-fun field$footprint () T@U)
(declare-fun field$spine () T@U)
(declare-fun field$next () T@U)
(declare-fun field$tailContents () T@U)
(declare-fun field$data () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Node.data () T@U)
(declare-fun Tclass._module.Node? (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Queue.Valid (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Queue (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun _module.Queue.footprint () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.Node.Valid (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Node (T@U) T@U)
(declare-fun _module.Node.footprint () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Queue? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun _module.Queue.contents () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Queue.spine () T@U)
(declare-fun _module.Node.tailContents () T@U)
(declare-fun _module.Queue.head () T@U)
(declare-fun _module.Queue.tail () T@U)
(declare-fun _module.Node.next () T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.Node.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Queue?_0 (T@U) T@U)
(declare-fun Tclass._module.Node_0 (T@U) T@U)
(declare-fun Tclass._module.Queue_0 (T@U) T@U)
(declare-fun Tclass._module.Node?_0 (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |_module.Queue.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Queue? Tagclass._module.Queue? Tagclass._module.Node Tagclass._module.Queue Tagclass._module.Node? class._module.Node? tytagFamily$object tytagFamily$Queue tytagFamily$Node field$head field$tail field$contents field$footprint field$spine field$next field$tailContents field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
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
(assert (forall ((_module.Node$T T@U) ($h T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._module.Node? _module.Node$T)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.Node.data) _module.Node$T))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.Node.data) (Tclass._module.Node? _module.Node$T))
)))
(assert (forall ((_module.Node$T@@0 T@U) ($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.Node? _module.Node$T@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.Node.data) _module.Node$T@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |684|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.Node.data) (Tclass._module.Node? _module.Node$T@@0))
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
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((_module.Queue$T T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass._module.Queue _module.Queue$T)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (or (= $o@@1 this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.Queue.footprint)) ($Box refType $o@@1)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f)))
 :qid |unknown.0:0|
 :skolemid |497|
)) (= (_module.Queue.Valid _module.Queue$T $h0 this) (_module.Queue.Valid _module.Queue$T $h1 this))))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Queue.Valid _module.Queue$T $h1 this))
)))
(assert (forall ((_module.Node$T@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass._module.Node _module.Node$T@@1)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (or (= $o@@2 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@0) _module.Node.footprint)) ($Box refType $o@@2)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@2) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |691|
)) (= (_module.Node.Valid _module.Node$T@@1 $h0@@0 this@@0) (_module.Node.Valid _module.Node$T@@1 $h1@@0 this@@0))))
 :qid |unknown.0:0|
 :skolemid |692|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Node.Valid _module.Node$T@@1 $h1@@0 this@@0))
)))
(assert (forall ((_module.Queue$T@@0 T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Queue _module.Queue$T@@0) $h@@1) ($IsAlloc refType |c#0| (Tclass._module.Queue? _module.Queue$T@@0) $h@@1))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Queue _module.Queue$T@@0) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Queue? _module.Queue$T@@0) $h@@1))
)))
(assert (forall ((_module.Node$T@@2 T@U) (|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.Node _module.Node$T@@2) $h@@2) ($IsAlloc refType |c#0@@0| (Tclass._module.Node? _module.Node$T@@2) $h@@2))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Node _module.Node$T@@2) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Node? _module.Node$T@@2) $h@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
)))
(assert (= (FDim _module.Queue.contents) 0))
(assert (= (FieldOfDecl class._module.Queue? field$contents) _module.Queue.contents))
(assert ($IsGhostField _module.Queue.contents))
(assert (= (FDim _module.Queue.footprint) 0))
(assert (= (FieldOfDecl class._module.Queue? field$footprint) _module.Queue.footprint))
(assert ($IsGhostField _module.Queue.footprint))
(assert (= (FDim _module.Queue.spine) 0))
(assert (= (FieldOfDecl class._module.Queue? field$spine) _module.Queue.spine))
(assert ($IsGhostField _module.Queue.spine))
(assert (= (FDim _module.Node.footprint) 0))
(assert (= (FieldOfDecl class._module.Node? field$footprint) _module.Node.footprint))
(assert ($IsGhostField _module.Node.footprint))
(assert (= (FDim _module.Node.tailContents) 0))
(assert (= (FieldOfDecl class._module.Node? field$tailContents) _module.Node.tailContents))
(assert ($IsGhostField _module.Node.tailContents))
(assert (forall ((_module.Queue$T@@1 T@U) ($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._module.Queue? _module.Queue$T@@1) $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._module.Queue? _module.Queue$T@@1) $h@@4))
)))
(assert (forall ((_module.Node$T@@3 T@U) ($o@@4 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@4 (Tclass._module.Node? _module.Node$T@@3) $h@@5)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsAlloc refType $o@@4 (Tclass._module.Node? _module.Node$T@@3) $h@@5))
)))
(assert (= (FDim _module.Queue.head) 0))
(assert (= (FieldOfDecl class._module.Queue? field$head) _module.Queue.head))
(assert  (not ($IsGhostField _module.Queue.head)))
(assert (= (FDim _module.Queue.tail) 0))
(assert (= (FieldOfDecl class._module.Queue? field$tail) _module.Queue.tail))
(assert  (not ($IsGhostField _module.Queue.tail)))
(assert (= (FDim _module.Node.next) 0))
(assert (= (FieldOfDecl class._module.Node? field$next) _module.Node.next))
(assert  (not ($IsGhostField _module.Node.next)))
(assert (= (FDim _module.Node.data) 0))
(assert (= (FieldOfDecl class._module.Node? field$data) _module.Node.data))
(assert  (not ($IsGhostField _module.Node.data)))
(assert (forall (($o@@5 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._System.object? $h@@6)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._System.object? $h@@6))
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
(assert (= (Ctor SeqType) 8))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@3) (|Set#IsMember| b@@4 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@5))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@4)) (not (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@4))
 :pattern ( (|Set#IsMember| b@@5 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((_module.Queue$T@@2 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.Queue _module.Queue$T@@2))  (and ($Is refType |c#0@@2| (Tclass._module.Queue? _module.Queue$T@@2)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Queue _module.Queue$T@@2)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Queue? _module.Queue$T@@2)))
)))
(assert (forall ((_module.Node$T@@4 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.Node _module.Node$T@@4))  (and ($Is refType |c#0@@3| (Tclass._module.Node? _module.Node$T@@4)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |705|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Node _module.Node$T@@4)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Node? _module.Node$T@@4)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@1) t@@0 h@@0) ($IsAlloc T@@0 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@1) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@2 t@@2 h@@2) ($IsAlloc T@@1 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@2 t@@2 h@@2))
)))
(assert (forall ((_module.Queue$T@@3 T@U) ) (!  (and (= (Tag (Tclass._module.Queue? _module.Queue$T@@3)) Tagclass._module.Queue?) (= (TagFamily (Tclass._module.Queue? _module.Queue$T@@3)) tytagFamily$Queue))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.Queue? _module.Queue$T@@3))
)))
(assert (forall ((_module.Node$T@@5 T@U) ) (!  (and (= (Tag (Tclass._module.Node _module.Node$T@@5)) Tagclass._module.Node) (= (TagFamily (Tclass._module.Node _module.Node$T@@5)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Tclass._module.Node _module.Node$T@@5))
)))
(assert (forall ((_module.Queue$T@@4 T@U) ) (!  (and (= (Tag (Tclass._module.Queue _module.Queue$T@@4)) Tagclass._module.Queue) (= (TagFamily (Tclass._module.Queue _module.Queue$T@@4)) tytagFamily$Queue))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( (Tclass._module.Queue _module.Queue$T@@4))
)))
(assert (forall ((_module.Node$T@@6 T@U) ) (!  (and (= (Tag (Tclass._module.Node? _module.Node$T@@6)) Tagclass._module.Node?) (= (TagFamily (Tclass._module.Node? _module.Node$T@@6)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (Tclass._module.Node? _module.Node$T@@6))
)))
(assert (forall ((_module.Queue$T@@5 T@U) ($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.Queue? _module.Queue$T@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.Queue.head)) (Tclass._module.Node _module.Queue$T@@5) $h@@7))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.Queue.head)) (Tclass._module.Queue? _module.Queue$T@@5))
)))
(assert (forall ((_module.Queue$T@@6 T@U) ($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.Queue? _module.Queue$T@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.Queue.tail)) (Tclass._module.Node _module.Queue$T@@6) $h@@8))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.Queue.tail)) (Tclass._module.Queue? _module.Queue$T@@6))
)))
(assert (forall ((_module.Queue$T@@7 T@U) ($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._module.Queue? _module.Queue$T@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.Queue.contents)) (TSeq _module.Queue$T@@7) $h@@9))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.Queue.contents)) (Tclass._module.Queue? _module.Queue$T@@7))
)))
(assert (forall ((_module.Node$T@@7 T@U) ($h@@10 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._module.Node? _module.Node$T@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@7) $h@@10))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@7))
)))
(assert (forall ((_module.Node$T@@8 T@U) ($h@@11 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._module.Node? _module.Node$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) _module.Node.tailContents)) (TSeq _module.Node$T@@8) $h@@11))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) _module.Node.tailContents)) (Tclass._module.Node? _module.Node$T@@8))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((_module.Queue$T@@8 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass._module.Queue? _module.Queue$T@@8))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass._module.Queue? _module.Queue$T@@8))))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@11 (Tclass._module.Queue? _module.Queue$T@@8)))
)))
(assert (forall ((_module.Node$T@@9 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass._module.Node? _module.Node$T@@9))  (or (= $o@@12 null) (= (dtype $o@@12) (Tclass._module.Node? _module.Node$T@@9))))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($Is refType $o@@12 (Tclass._module.Node? _module.Node$T@@9)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i))
)))
(assert (forall ((_module.Queue$T@@9 T@U) ($h@@12 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._module.Queue? _module.Queue$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) _module.Queue.spine)) (TSet (Tclass._module.Node _module.Queue$T@@9)) $h@@12))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) _module.Queue.spine)) (Tclass._module.Queue? _module.Queue$T@@9))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@5)  (or (|Set#IsMember| a@@9 o@@5) (|Set#IsMember| b@@6 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@5))
)))
(assert (forall ((_module.Queue$T@@10 T@U) ($h@@13 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._module.Queue? _module.Queue$T@@10)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@14) _module.Queue.footprint)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@14) _module.Queue.footprint)) (Tclass._module.Queue? _module.Queue$T@@10))
)))
(assert (forall ((_module.Node$T@@10 T@U) ($h@@14 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.Node? _module.Node$T@@10)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) _module.Node.footprint)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) _module.Node.footprint)) (Tclass._module.Node? _module.Node$T@@10))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert (forall ((_module.Queue$T@@11 T@U) ($h@@15 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._module.Queue? _module.Queue$T@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) _module.Queue.footprint)) (TSet Tclass._System.object) $h@@15))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) _module.Queue.footprint)) (Tclass._module.Queue? _module.Queue$T@@11))
)))
(assert (forall ((_module.Node$T@@11 T@U) ($h@@16 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._module.Node? _module.Node$T@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) _module.Node.footprint)) (TSet Tclass._System.object) $h@@16))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) _module.Node.footprint)) (Tclass._module.Node? _module.Node$T@@11))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Node$T@@12 T@U) ($Heap T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Node.Valid#canCall| _module.Node$T@@12 $Heap this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass._module.Node _module.Node$T@@12)) ($IsAlloc refType this@@1 (Tclass._module.Node _module.Node$T@@12) $Heap)))))) (= (_module.Node.Valid _module.Node$T@@12 $Heap this@@1)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.footprint)) ($Box refType this@@1)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) null)) (not true)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.footprint)))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.tailContents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.tailContents)) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next))) _module.Node.data)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next))) _module.Node.tailContents))))))))
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( (_module.Node.Valid _module.Node$T@@12 $Heap this@@1) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Seq#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@11 b@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (c T@U) ) (!  (=> (or (not (= a@@12 c)) (not true)) (=> (and ($HeapSucc a@@12 b@@9) ($HeapSucc b@@9 c)) ($HeapSucc a@@12 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@12 b@@9) ($HeapSucc b@@9 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@4) t@@3) ($Is T@@2 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@4) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@5 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@18 T@U) ) (! ($Is refType $o@@18 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@18 Tclass._System.object?))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4))
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
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((_module.Queue$T@@12 T@U) ) (! (= (Tclass._module.Queue?_0 (Tclass._module.Queue? _module.Queue$T@@12)) _module.Queue$T@@12)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.Queue? _module.Queue$T@@12))
)))
(assert (forall ((_module.Node$T@@13 T@U) ) (! (= (Tclass._module.Node_0 (Tclass._module.Node _module.Node$T@@13)) _module.Node$T@@13)
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Tclass._module.Node _module.Node$T@@13))
)))
(assert (forall ((_module.Queue$T@@13 T@U) ) (! (= (Tclass._module.Queue_0 (Tclass._module.Queue _module.Queue$T@@13)) _module.Queue$T@@13)
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Tclass._module.Queue _module.Queue$T@@13))
)))
(assert (forall ((_module.Node$T@@14 T@U) ) (! (= (Tclass._module.Node?_0 (Tclass._module.Node? _module.Node$T@@14)) _module.Node$T@@14)
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( (Tclass._module.Node? _module.Node$T@@14))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert (forall ((s@@3 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@1)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@1))
)))
(assert (forall ((_module.Queue$T@@14 T@U) ($h@@17 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._module.Queue? _module.Queue$T@@14)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@19) _module.Queue.head)) (Tclass._module.Node _module.Queue$T@@14)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@19) _module.Queue.head)) (Tclass._module.Queue? _module.Queue$T@@14))
)))
(assert (forall ((_module.Queue$T@@15 T@U) ($h@@18 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._module.Queue? _module.Queue$T@@15)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@20) _module.Queue.tail)) (Tclass._module.Node _module.Queue$T@@15)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@20) _module.Queue.tail)) (Tclass._module.Queue? _module.Queue$T@@15))
)))
(assert (forall ((_module.Queue$T@@16 T@U) ($h@@19 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._module.Queue? _module.Queue$T@@16)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) _module.Queue.contents)) (TSeq _module.Queue$T@@16)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) _module.Queue.contents)) (Tclass._module.Queue? _module.Queue$T@@16))
)))
(assert (forall ((_module.Node$T@@15 T@U) ($h@@20 T@U) ($o@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._module.Node? _module.Node$T@@15)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@15)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@15))
)))
(assert (forall ((_module.Node$T@@16 T@U) ($h@@21 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass._module.Node? _module.Node$T@@16)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) _module.Node.tailContents)) (TSeq _module.Node$T@@16)))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) _module.Node.tailContents)) (Tclass._module.Node? _module.Node$T@@16))
)))
(assert (forall ((bx@@5 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@8)))
)))
(assert (forall ((bx@@6 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@6 (TSeq t@@9)))
)))
(assert (forall ((_module.Queue$T@@17 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.Queue? _module.Queue$T@@17)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.Queue? _module.Queue$T@@17))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@7 (Tclass._module.Queue? _module.Queue$T@@17)))
)))
(assert (forall ((_module.Node$T@@17 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.Node _module.Node$T@@17)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._module.Node _module.Node$T@@17))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@8 (Tclass._module.Node _module.Node$T@@17)))
)))
(assert (forall ((_module.Queue$T@@18 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.Queue _module.Queue$T@@18)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.Queue _module.Queue$T@@18))))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsBox bx@@9 (Tclass._module.Queue _module.Queue$T@@18)))
)))
(assert (forall ((_module.Node$T@@18 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.Node? _module.Node$T@@18)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._module.Node? _module.Node$T@@18))))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( ($IsBox bx@@10 (Tclass._module.Node? _module.Node$T@@18)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@7))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@7)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((_module.Queue$T@@19 T@U) ($h@@22 T@U) ($o@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) (Tclass._module.Queue? _module.Queue$T@@19)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@24) _module.Queue.spine)) (TSet (Tclass._module.Node _module.Queue$T@@19))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@24) _module.Queue.spine)) (Tclass._module.Queue? _module.Queue$T@@19))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Queue$T@@20 T@U) ($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Queue.Valid#canCall| _module.Queue$T@@20 $Heap@@0 this@@2) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass._module.Queue _module.Queue$T@@20)) ($IsAlloc refType this@@2 (Tclass._module.Queue _module.Queue$T@@20) $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.footprint)) ($Box refType this@@2)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.footprint))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.head)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.tail)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.tail))) _module.Node.next)) null) (forall ((|n#0| T@U) ) (!  (=> ($Is refType |n#0| (Tclass._module.Node _module.Queue$T@@20)) (=> (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) ($Box refType |n#0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.footprint)))) (=> (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) ($Box refType |n#0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0|) _module.Node.footprint)) ($Box refType this@@2)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) ($Box refType |n#0|)) (|_module.Node.Valid#canCall| _module.Queue$T@@20 $Heap@@0 |n#0|)))))
 :qid |Queuedfy.23:13|
 :skolemid |506|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Queue$T@@20 $Heap@@0 |n#0|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) ($Box refType |n#0|)))
))))))) (= (_module.Queue.Valid _module.Queue$T@@20 $Heap@@0 this@@2)  (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.footprint)) ($Box refType this@@2)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.footprint)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.head))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.tail))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.tail))) _module.Node.next)) null)) (forall ((|n#0@@0| T@U) ) (!  (=> ($Is refType |n#0@@0| (Tclass._module.Node _module.Queue$T@@20)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) ($Box refType |n#0@@0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) ($Box refType |n#0@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.Node.footprint)) ($Box refType this@@2))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) ($Box refType |n#0@@0|)) (_module.Node.Valid _module.Queue$T@@20 $Heap@@0 |n#0@@0|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) ($Box refType |n#0@@0|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.Node.next)) null) (= |n#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |504|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Queue$T@@20 $Heap@@0 |n#0@@0|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) ($Box refType |n#0@@0|)))
))) (forall ((|n#1| T@U) ) (!  (=> ($Is refType |n#1| (Tclass._module.Node _module.Queue$T@@20)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) ($Box refType |n#1|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#1|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#1|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |505|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#1|) _module.Node.next)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Queue.head))) _module.Node.tailContents)))))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( (_module.Queue.Valid _module.Queue$T@@20 $Heap@@0 this@@2) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@2 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@2) x0@@1 x1) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@3 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@3) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@4 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@4) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@25 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@25 $f@@1))  (=> (and (or (not (= $o@@25 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@25) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@25))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |767|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@25 $f@@1))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module.Queue$T@@21 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun this@@3 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |t#0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#4@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |$rhs#5@0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |m#1_0@0| () T@U)
(declare-fun |m#1_1@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#3@0| () T@U)
(declare-fun |m#0_0@0| () T@U)
(declare-fun |m#0_1@0| () T@U)
(declare-fun call2formal@this () T@U)
(declare-fun call0formal@_module.Node$T () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |defass#n#8| () Bool)
(declare-fun |n#8| () T@U)
(set-info :boogie-vc-id Impl$$_module.Queue.Enqueue)
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
 (=> (= (ControlFlow 0 0) 42) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 14) (- 0 23)) (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.footprint)) ($Box refType this@@3))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.footprint)) ($Box refType this@@3)))) (and (=> (= (ControlFlow 0 14) (- 0 22)) (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.footprint)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.footprint))))) (and (=> (= (ControlFlow 0 14) (- 0 21)) (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.head))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.head)))) (and (=> (= (ControlFlow 0 14) (- 0 20)) (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.tail))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.tail)))) (and (=> (= (ControlFlow 0 14) (- 0 19)) (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.tail))) _module.Node.next)) null)))) (=> (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.tail))) _module.Node.next)) null))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (forall ((|n#6| T@U) ) (!  (=> ($Is refType |n#6| (Tclass._module.Node _module.Queue$T@@21)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Box refType |n#6|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#6|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Box refType |n#6|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#6|) _module.Node.footprint)) ($Box refType this@@3))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Box refType |n#6|)) (_module.Node.Valid _module.Queue$T@@21 $Heap@9 |n#6|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Box refType |n#6|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#6|) _module.Node.next)) null) (= |n#6| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |629|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#6|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Queue$T@@21 $Heap@9 |n#6|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#6|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Box refType |n#6|)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (forall ((|n#6@@0| T@U) ) (!  (=> ($Is refType |n#6@@0| (Tclass._module.Node _module.Queue$T@@21)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Box refType |n#6@@0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#6@@0|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Box refType |n#6@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#6@@0|) _module.Node.footprint)) ($Box refType this@@3))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Box refType |n#6@@0|)) (_module.Node.Valid _module.Queue$T@@21 $Heap@9 |n#6@@0|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Box refType |n#6@@0|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#6@@0|) _module.Node.next)) null) (= |n#6@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |629|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#6@@0|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Queue$T@@21 $Heap@9 |n#6@@0|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#6@@0|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Box refType |n#6@@0|)))
)))) (and (=> (= (ControlFlow 0 14) (- 0 17)) (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (forall ((|n#7| T@U) ) (!  (=> ($Is refType |n#7| (Tclass._module.Node _module.Queue$T@@21)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Box refType |n#7|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#7|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#7|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |630|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#7|) _module.Node.next)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (forall ((|n#7@@0| T@U) ) (!  (=> ($Is refType |n#7@@0| (Tclass._module.Node _module.Queue$T@@21)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) ($Box refType |n#7@@0|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#7@@0|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#7@@0|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |630|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#7@@0|) _module.Node.next)))
)))) (and (=> (= (ControlFlow 0 14) (- 0 16)) (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.head))) _module.Node.tailContents)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@9 this@@3) (or (_module.Queue.Valid _module.Queue$T@@21 $Heap@9 this@@3) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.head))) _module.Node.tailContents))))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (forall (($o@@26 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.footprint)) ($Box refType $o@@26)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.footprint)) ($Box refType $o@@26)))) (or (not (= $o@@26 null)) (not true)))
 :qid |Queuedfy.82:24|
 :skolemid |633|
 :pattern (  (or (not (= $o@@26 null)) (not true)))
)) (forall (($o@@27 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.footprint)) ($Box refType $o@@27)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.footprint)) ($Box refType $o@@27)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@27) alloc)))))
 :qid |Queuedfy.82:24|
 :skolemid |634|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@27) alloc)))
)))) (=> (and (forall (($o@@28 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.footprint)) ($Box refType $o@@28)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.footprint)) ($Box refType $o@@28)))) (or (not (= $o@@28 null)) (not true)))
 :qid |Queuedfy.82:24|
 :skolemid |633|
 :pattern (  (or (not (= $o@@28 null)) (not true)))
)) (forall (($o@@29 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.footprint)) ($Box refType $o@@29)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.footprint)) ($Box refType $o@@29)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@29) alloc)))))
 :qid |Queuedfy.82:24|
 :skolemid |634|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@29) alloc)))
))) (=> (= (ControlFlow 0 14) (- 0 13)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@3) _module.Queue.contents)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.contents)) (|Seq#Build| |Seq#Empty| |t#0|))))))))))))))))))))))))
(let ((anon8_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) ($HeapSucc $Heap@5 $Heap@6)) (and (forall (($o@@30 T@U) ($f@@2 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@30) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@30) $f@@2)) (exists ((|m#1_2| T@U) ) (!  (and (and (and ($Is refType |m#1_2| (Tclass._module.Node _module.Queue$T@@21)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@3) _module.Queue.spine)) ($Box refType |m#1_2|))) (= $o@@30 |m#1_2|)) (= $f@@2 _module.Node.footprint))
 :qid |Queuedfy.95:12|
 :skolemid |640|
)))
 :qid |Queuedfy.95:5|
 :skolemid |641|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@30) $f@@2))
)) (forall ((|m#inv#1_0| T@U) ) (!  (=> (and ($Is refType |m#inv#1_0| (Tclass._module.Node _module.Queue$T@@21)) (and (or (not (= |m#inv#1_0| null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@3) _module.Queue.spine)) ($Box refType |m#inv#1_0|)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |m#inv#1_0|) _module.Node.footprint) ($Box SetType (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |m#inv#1_0|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) _module.Node.footprint))))))
 :qid |Queuedfy.95:12|
 :skolemid |642|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |m#inv#1_0|) _module.Node.footprint))
)))) (and (=> (= (ControlFlow 0 24) (- 0 29)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@3 _module.Queue.footprint))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@3 _module.Queue.footprint)) (and (=> (= (ControlFlow 0 24) (- 0 28)) true) (and (=> (= (ControlFlow 0 24) (- 0 27)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |$rhs#4@0| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@3) _module.Queue.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call2formal@this@0) _module.Node.footprint)))) (=> (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 this@@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@3) _module.Queue.footprint ($Box SetType |$rhs#4@0|)))) ($IsGoodHeap $Heap@7)) (and (=> (= (ControlFlow 0 24) (- 0 26)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@3 _module.Queue.spine))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@3 _module.Queue.spine)) (and (=> (= (ControlFlow 0 24) (- 0 25)) true) (=> (= |$rhs#5@0| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@3) _module.Queue.spine)) (|Set#UnionOne| |Set#Empty| ($Box refType call2formal@this@0)))) (=> (and (and (= $Heap@8 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@7 this@@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@3) _module.Queue.spine ($Box SetType |$rhs#5@0|)))) ($IsGoodHeap $Heap@8)) (and (= $Heap@9 $Heap@8) (= (ControlFlow 0 24) 14))) GeneratedUnifiedExit_correct)))))))))))))))
(let ((anon8_Then_correct  (=> (and (and ($Is refType |m#1_0@0| (Tclass._module.Node _module.Queue$T@@21)) ($IsAlloc refType |m#1_0@0| (Tclass._module.Node _module.Queue$T@@21) $Heap@5)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@3) _module.Queue.spine)) ($Box refType |m#1_0@0|))) (and (=> (= (ControlFlow 0 7) (- 0 12)) (or (not (= |m#1_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 7) (- 0 11)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#1_0@0| _module.Node.footprint))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#1_0@0| _module.Node.footprint)) (and (=> (= (ControlFlow 0 7) (- 0 10)) (or (not (= |m#1_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 7) (- 0 9)) true) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (not (= call2formal@this@0 null)) (not true))) (=> (and (and (and ($Is refType |m#1_1@0| (Tclass._module.Node _module.Queue$T@@21)) ($IsAlloc refType |m#1_1@0| (Tclass._module.Node _module.Queue$T@@21) $Heap@5)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@3) _module.Queue.spine)) ($Box refType |m#1_1@0|))) (and (or (not (= |m#1_0@0| |m#1_1@0|)) (not true)) (= (ControlFlow 0 7) (- 0 6)))) (or (or (or (not (= |m#1_0@0| |m#1_1@0|)) (not true)) (or (not (= _module.Node.footprint _module.Node.footprint)) (not true))) (= (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |m#1_0@0|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) _module.Node.footprint))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |m#1_1@0|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call2formal@this@0) _module.Node.footprint)))))))))))))))
(let ((anon7_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) ($HeapSucc $Heap@3 $Heap@4)) (and (forall (($o@@31 T@U) ($f@@3 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@31) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@31) $f@@3)) (exists ((|m#0_2| T@U) ) (!  (and (and (and ($Is refType |m#0_2| (Tclass._module.Node _module.Queue$T@@21)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.Queue.spine)) ($Box refType |m#0_2|))) (= $o@@31 |m#0_2|)) (= $f@@3 _module.Node.tailContents))
 :qid |Queuedfy.90:12|
 :skolemid |637|
)))
 :qid |Queuedfy.90:5|
 :skolemid |638|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@31) $f@@3))
)) (forall ((|m#inv#0_0| T@U) ) (!  (=> (and ($Is refType |m#inv#0_0| (Tclass._module.Node _module.Queue$T@@21)) (and (or (not (= |m#inv#0_0| null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.Queue.spine)) ($Box refType |m#inv#0_0|)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |m#inv#0_0|) _module.Node.tailContents) ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#inv#0_0|) _module.Node.tailContents)) (|Seq#Build| |Seq#Empty| |t#0|)))))
 :qid |Queuedfy.90:12|
 :skolemid |639|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |m#inv#0_0|) _module.Node.tailContents))
)))) (and (=> (= (ControlFlow 0 30) (- 0 32)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@3 _module.Queue.contents))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@3 _module.Queue.contents)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@3) _module.Queue.head)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@3) _module.Queue.head)) null)) (not true)) (=> (= |$rhs#3@0| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@3) _module.Queue.head))) _module.Node.tailContents))) (=> (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 this@@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@3) _module.Queue.contents ($Box SeqType |$rhs#3@0|)))) ($IsGoodHeap $Heap@5)) (and (=> (= (ControlFlow 0 30) 7) anon8_Then_correct) (=> (= (ControlFlow 0 30) 24) anon8_Else_correct)))))))))))
(let ((anon7_Then_correct  (=> (and (and ($Is refType |m#0_0@0| (Tclass._module.Node _module.Queue$T@@21)) ($IsAlloc refType |m#0_0@0| (Tclass._module.Node _module.Queue$T@@21) $Heap@3)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.Queue.spine)) ($Box refType |m#0_0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |m#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0_0@0| _module.Node.tailContents))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |m#0_0@0| _module.Node.tailContents)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |m#0_0@0| null)) (not true))) (=> (and (and (and ($Is refType |m#0_1@0| (Tclass._module.Node _module.Queue$T@@21)) ($IsAlloc refType |m#0_1@0| (Tclass._module.Node _module.Queue$T@@21) $Heap@3)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) _module.Queue.spine)) ($Box refType |m#0_1@0|))) (and (or (not (= |m#0_0@0| |m#0_1@0|)) (not true)) (= (ControlFlow 0 2) (- 0 1)))) (or (or (or (not (= |m#0_0@0| |m#0_1@0|)) (not true)) (or (not (= _module.Node.tailContents _module.Node.tailContents)) (not true))) (= (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0_0@0|) _module.Node.tailContents)) (|Seq#Build| |Seq#Empty| |t#0|)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0_1@0|) _module.Node.tailContents)) (|Seq#Build| |Seq#Empty| |t#0|))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap@@1 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.footprint)))) (=> (and (and (and (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this (Tclass._module.Node call0formal@_module.Node$T)) ($IsAlloc refType call2formal@this (Tclass._module.Node call0formal@_module.Node$T) $Heap@@1))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 (Tclass._module.Node _module.Queue$T@@21)) ($IsAlloc refType call2formal@this@0 (Tclass._module.Node _module.Queue$T@@21) $Heap@0))) (|_module.Node.Valid#canCall| _module.Queue$T@@21 $Heap@0 call2formal@this@0))) (and (and (and (|_module.Node.Valid#canCall| _module.Queue$T@@21 $Heap@0 call2formal@this@0) (and (_module.Node.Valid _module.Queue$T@@21 $Heap@0 call2formal@this@0) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.footprint)) ($Box refType call2formal@this@0)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.next)) null)) (not true)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.next)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.next))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.footprint)))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.next)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.tailContents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.next)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.tailContents)) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.next))) _module.Node.data)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.next))) _module.Node.tailContents)))))))) (and (forall (($o@@32 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.footprint)) ($Box refType $o@@32)) (or (not (= $o@@32 call2formal@this@0)) (not true))) (or (not (= $o@@32 null)) (not true)))
 :qid |Queuedfy.141:24|
 :skolemid |699|
 :pattern (  (or (not (= $o@@32 null)) (not true)))
)) (forall (($o@@33 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.footprint)) ($Box refType $o@@33)) (or (not (= $o@@33 call2formal@this@0)) (not true))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@33) alloc)))))
 :qid |Queuedfy.141:24|
 :skolemid |700|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@33) alloc)))
)))) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.next)) null) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 call2formal@this@0) alloc))))) (and (forall (($o@@34 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@34) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@34) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@34)))
 :qid |Queuedfy.140:15|
 :skolemid |701|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@34))
)) ($HeapSucc $Heap@@1 $Heap@0))))) (and (=> (= (ControlFlow 0 33) (- 0 41)) true) (and (=> (= (ControlFlow 0 33) (- 0 40)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 33) (- 0 39)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call2formal@this@0 _module.Node.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 call2formal@this@0 _module.Node.data)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.Node.data |t#0|))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 33) (- 0 38)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.Queue.tail)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.Queue.tail)) null)) (not true)) (and (=> (= (ControlFlow 0 33) (- 0 37)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.Queue.tail)) _module.Node.next))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.Queue.tail)) _module.Node.next)) (and (=> (= (ControlFlow 0 33) (- 0 36)) true) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.Queue.tail)) (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@3) _module.Queue.tail))) _module.Node.next ($Box refType call2formal@this@0)))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 33) (- 0 35)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@3 _module.Queue.tail))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@3 _module.Queue.tail)) (and (=> (= (ControlFlow 0 33) (- 0 34)) true) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 this@@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@3) _module.Queue.tail ($Box refType call2formal@this@0)))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 33) 2) anon7_Then_correct) (=> (= (ControlFlow 0 33) 30) anon7_Else_correct))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 (Tclass._module.Queue _module.Queue$T@@21)) ($IsAlloc refType this@@3 (Tclass._module.Queue _module.Queue$T@@21) $Heap@@1))) (and ($IsBox |t#0| _module.Queue$T@@21) ($IsAllocBox |t#0| _module.Queue$T@@21 $Heap@@1))) (=> (and (and (and (=> |defass#n#8| (and ($Is refType |n#8| (Tclass._module.Node _module.Queue$T@@21)) ($IsAlloc refType |n#8| (Tclass._module.Node _module.Queue$T@@21) $Heap@@1))) true) (= 2 $FunctionContextHeight)) (and (and (|_module.Queue.Valid#canCall| _module.Queue$T@@21 $Heap@@1 this@@3) (and (_module.Queue.Valid _module.Queue$T@@21 $Heap@@1 this@@3) (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.footprint)) ($Box refType this@@3)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.footprint)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.head))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.tail))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.tail))) _module.Node.next)) null)) (forall ((|n#4| T@U) ) (!  (=> ($Is refType |n#4| (Tclass._module.Node _module.Queue$T@@21)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.spine)) ($Box refType |n#4|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#4|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.spine)) ($Box refType |n#4|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#4|) _module.Node.footprint)) ($Box refType this@@3))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.spine)) ($Box refType |n#4|)) (_module.Node.Valid _module.Queue$T@@21 $Heap@@1 |n#4|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.spine)) ($Box refType |n#4|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#4|) _module.Node.next)) null) (= |n#4| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |627|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#4|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Queue$T@@21 $Heap@@1 |n#4|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#4|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.spine)) ($Box refType |n#4|)))
))) (forall ((|n#5| T@U) ) (!  (=> ($Is refType |n#5| (Tclass._module.Node _module.Queue$T@@21)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.spine)) ($Box refType |n#5|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#5|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#5|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |628|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#5|) _module.Node.next)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.Queue.head))) _module.Node.tailContents)))))) (= (ControlFlow 0 42) 33))) anon0_correct)))))
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
