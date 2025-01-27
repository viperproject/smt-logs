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
(declare-fun Tagclass._module.Main? () T@U)
(declare-fun Tagclass._module.Main () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Queue () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun tytagFamily$Main () T@U)
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
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Queue.Valid (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Queue (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun _module.Queue.footprint () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.Node.Valid (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Node (T@U) T@U)
(declare-fun _module.Node.footprint () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Queue? (T@U) T@U)
(declare-fun Tclass._module.Main (T@U) T@U)
(declare-fun Tclass._module.Main? (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.Node.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Queue?_0 (T@U) T@U)
(declare-fun Tclass._module.Node_0 (T@U) T@U)
(declare-fun Tclass._module.Queue_0 (T@U) T@U)
(declare-fun Tclass._module.Node?_0 (T@U) T@U)
(declare-fun Tclass._module.Main?_0 (T@U) T@U)
(declare-fun Tclass._module.Main_0 (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#16| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Queue.Valid#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Queue? Tagclass._module.Queue? Tagclass._module.Node Tagclass._module.Queue Tagclass._module.Node? class._module.Node? Tagclass._module.Main? Tagclass._module.Main tytagFamily$object tytagFamily$Queue tytagFamily$Node tytagFamily$Main field$head field$tail field$contents field$footprint field$spine field$next field$tailContents field$data)
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
(assert (forall ((_module.Main$U T@U) (|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| (Tclass._module.Main _module.Main$U) $h@@3) ($IsAlloc refType |c#0@@1| (Tclass._module.Main? _module.Main$U) $h@@3))
 :qid |unknown.0:0|
 :skolemid |764|
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass._module.Main _module.Main$U) $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| (Tclass._module.Main? _module.Main$U) $h@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (forall ((s@@0 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@0)) (and (= (|Seq#Take| (|Seq#Append| s@@0 t) n@@0) s@@0) (= (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@0 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@4) ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@4))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@4))
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
(assert (forall ((_module.Queue$T@@1 T@U) ($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._module.Queue? _module.Queue$T@@1) $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._module.Queue? _module.Queue$T@@1) $h@@5))
)))
(assert (forall ((_module.Node$T@@3 T@U) ($o@@4 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@4 (Tclass._module.Node? _module.Node$T@@3) $h@@6)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsAlloc refType $o@@4 (Tclass._module.Node? _module.Node$T@@3) $h@@6))
)))
(assert (forall ((_module.Main$U@@0 T@U) ($o@@5 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@5 (Tclass._module.Main? _module.Main$U@@0) $h@@7)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |711|
 :pattern ( ($IsAlloc refType $o@@5 (Tclass._module.Main? _module.Main$U@@0) $h@@7))
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
(assert (forall (($o@@6 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._System.object? $h@@8)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._System.object? $h@@8))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((s@@1 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@1 n@@1) s@@1))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@1 n@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((s@@2 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@2 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((s@@3 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@3))) (= (|Seq#Index| (|Seq#Take| s@@3 n@@2) j) (|Seq#Index| s@@3 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@3 n@@2) j))
 :pattern ( (|Seq#Index| s@@3 j) (|Seq#Take| s@@3 n@@2))
)))
(assert (forall ((s@@4 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@4))) (= (|Seq#Length| (|Seq#Drop| s@@4 n@@3)) (- (|Seq#Length| s@@4) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@4 n@@3)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Disjoint| a@@0 b@@0) (forall ((o@@1 T@U) ) (!  (or (not (|Set#IsMember| a@@0 o@@1)) (not (|Set#IsMember| b@@0 o@@1)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@0 o@@1))
 :pattern ( (|Set#IsMember| b@@0 o@@1))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@0 b@@0))
)))
(assert (forall ((v@@0 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@5 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@5 v@@1)) (+ 1 (|Seq#Length| s@@5)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@5 v@@1))
)))
(assert (forall ((_module.Queue$T@@2 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.Queue _module.Queue$T@@2))  (and ($Is refType |c#0@@3| (Tclass._module.Queue? _module.Queue$T@@2)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Queue _module.Queue$T@@2)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Queue? _module.Queue$T@@2)))
)))
(assert (forall ((_module.Node$T@@4 T@U) (|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| (Tclass._module.Node _module.Node$T@@4))  (and ($Is refType |c#0@@4| (Tclass._module.Node? _module.Node$T@@4)) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |705|
 :pattern ( ($Is refType |c#0@@4| (Tclass._module.Node _module.Node$T@@4)))
 :pattern ( ($Is refType |c#0@@4| (Tclass._module.Node? _module.Node$T@@4)))
)))
(assert (forall ((_module.Main$U@@1 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass._module.Main _module.Main$U@@1))  (and ($Is refType |c#0@@5| (Tclass._module.Main? _module.Main$U@@1)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |763|
 :pattern ( ($Is refType |c#0@@5| (Tclass._module.Main _module.Main$U@@1)))
 :pattern ( ($Is refType |c#0@@5| (Tclass._module.Main? _module.Main$U@@1)))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@1 h@@0) ($IsAlloc T@@1 v@@2 t@@1 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@1 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@2 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@2 h@@1) ($IsAllocBox bx@@1 t@@2 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@2 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@3 T@U) (t@@3 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@3 h@@2) ($IsAlloc T@@2 v@@3 t@@3 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@3 t@@3 h@@2))
)))
(assert (forall ((s@@6 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@6) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@6 n@@4) j@@1) (|Seq#Index| s@@6 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@6 n@@4) j@@1))
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
(assert (forall ((_module.Main$U@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Main? _module.Main$U@@2)) Tagclass._module.Main?) (= (TagFamily (Tclass._module.Main? _module.Main$U@@2)) tytagFamily$Main))
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( (Tclass._module.Main? _module.Main$U@@2))
)))
(assert (forall ((_module.Main$U@@3 T@U) ) (!  (and (= (Tag (Tclass._module.Main _module.Main$U@@3)) Tagclass._module.Main) (= (TagFamily (Tclass._module.Main _module.Main$U@@3)) tytagFamily$Main))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (Tclass._module.Main _module.Main$U@@3))
)))
(assert (forall ((_module.Queue$T@@5 T@U) ($h@@9 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.Queue? _module.Queue$T@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) _module.Queue.head)) (Tclass._module.Node _module.Queue$T@@5) $h@@9))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) _module.Queue.head)) (Tclass._module.Queue? _module.Queue$T@@5))
)))
(assert (forall ((_module.Queue$T@@6 T@U) ($h@@10 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._module.Queue? _module.Queue$T@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) _module.Queue.tail)) (Tclass._module.Node _module.Queue$T@@6) $h@@10))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) _module.Queue.tail)) (Tclass._module.Queue? _module.Queue$T@@6))
)))
(assert (forall ((_module.Queue$T@@7 T@U) ($h@@11 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._module.Queue? _module.Queue$T@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) _module.Queue.contents)) (TSeq _module.Queue$T@@7) $h@@11))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) _module.Queue.contents)) (Tclass._module.Queue? _module.Queue$T@@7))
)))
(assert (forall ((_module.Node$T@@7 T@U) ($h@@12 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._module.Node? _module.Node$T@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@7) $h@@12))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@7))
)))
(assert (forall ((_module.Node$T@@8 T@U) ($h@@13 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._module.Node? _module.Node$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) _module.Node.tailContents)) (TSeq _module.Node$T@@8) $h@@13))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) _module.Node.tailContents)) (Tclass._module.Node? _module.Node$T@@8))
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
(assert (forall ((_module.Queue$T@@8 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass._module.Queue? _module.Queue$T@@8))  (or (= $o@@12 null) (= (dtype $o@@12) (Tclass._module.Queue? _module.Queue$T@@8))))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@12 (Tclass._module.Queue? _module.Queue$T@@8)))
)))
(assert (forall ((_module.Node$T@@9 T@U) ($o@@13 T@U) ) (! (= ($Is refType $o@@13 (Tclass._module.Node? _module.Node$T@@9))  (or (= $o@@13 null) (= (dtype $o@@13) (Tclass._module.Node? _module.Node$T@@9))))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($Is refType $o@@13 (Tclass._module.Node? _module.Node$T@@9)))
)))
(assert (forall ((_module.Main$U@@4 T@U) ($o@@14 T@U) ) (! (= ($Is refType $o@@14 (Tclass._module.Main? _module.Main$U@@4))  (or (= $o@@14 null) (= (dtype $o@@14) (Tclass._module.Main? _module.Main$U@@4))))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( ($Is refType $o@@14 (Tclass._module.Main? _module.Main$U@@4)))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._System.object)  (and ($Is refType |c#0@@6| Tclass._System.object?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@6| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@6| Tclass._System.object?))
)))
(assert (forall ((s@@7 T@U) (i Int) (v@@4 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@7)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@4) i) v@@4)) (=> (or (not (= i (|Seq#Length| s@@7))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@4) i) (|Seq#Index| s@@7 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@7 v@@4) i))
)))
(assert (forall ((_module.Queue$T@@9 T@U) ($h@@14 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.Queue? _module.Queue$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) _module.Queue.spine)) (TSet (Tclass._module.Node _module.Queue$T@@9)) $h@@14))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) _module.Queue.spine)) (Tclass._module.Queue? _module.Queue$T@@9))
)))
(assert (forall ((_module.Queue$T@@10 T@U) ($h@@15 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._module.Queue? _module.Queue$T@@10)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) _module.Queue.footprint)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) _module.Queue.footprint)) (Tclass._module.Queue? _module.Queue$T@@10))
)))
(assert (forall ((_module.Node$T@@10 T@U) ($h@@16 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._module.Node? _module.Node$T@@10)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) _module.Node.footprint)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) _module.Node.footprint)) (Tclass._module.Node? _module.Node$T@@10))
)))
(assert (forall ((_module.Queue$T@@11 T@U) ($h@@17 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._module.Queue? _module.Queue$T@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) _module.Queue.footprint)) (TSet Tclass._System.object) $h@@17))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) _module.Queue.footprint)) (Tclass._module.Queue? _module.Queue$T@@11))
)))
(assert (forall ((_module.Node$T@@11 T@U) ($h@@18 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._module.Node? _module.Node$T@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) _module.Node.footprint)) (TSet Tclass._System.object) $h@@18))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) _module.Node.footprint)) (Tclass._module.Node? _module.Node$T@@11))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Node$T@@12 T@U) ($Heap T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Node.Valid#canCall| _module.Node$T@@12 $Heap this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass._module.Node _module.Node$T@@12)) ($IsAlloc refType this@@1 (Tclass._module.Node _module.Node$T@@12) $Heap)))))) (= (_module.Node.Valid _module.Node$T@@12 $Heap this@@1)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.footprint)) ($Box refType this@@1)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) null)) (not true)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.footprint)))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.tailContents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.tailContents)) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next))) _module.Node.data)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next))) _module.Node.tailContents))))))))
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( (_module.Node.Valid _module.Node$T@@12 $Heap this@@1) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|Seq#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@1 b@@1))
)))
(assert (forall ((s@@8 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@8))) (= (|Seq#Length| (|Seq#Take| s@@8 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@8 n@@5)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@5 T@U) (t@@4 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@5) t@@4) ($Is T@@3 v@@5 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@5) t@@4))
)))
(assert (forall ((s@@9 T@U) ) (! (<= 0 (|Seq#Length| s@@9))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@9))
)))
(assert (forall ((v@@6 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@1) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@6 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@20 T@U) ) (! ($Is refType $o@@20 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@20 Tclass._System.object?))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@7 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@7))) ($IsAllocBox (|Seq#Index| v@@7 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@7 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@7 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSet (TSet t@@5)) t@@5)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSet t@@6)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSeq (TSeq t@@7)) t@@7)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSeq t@@8)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@8))
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
(assert (forall ((_module.Main$U@@5 T@U) ) (! (= (Tclass._module.Main?_0 (Tclass._module.Main? _module.Main$U@@5)) _module.Main$U@@5)
 :qid |unknown.0:0|
 :skolemid |708|
 :pattern ( (Tclass._module.Main? _module.Main$U@@5))
)))
(assert (forall ((_module.Main$U@@6 T@U) ) (! (= (Tclass._module.Main_0 (Tclass._module.Main _module.Main$U@@6)) _module.Main$U@@6)
 :qid |unknown.0:0|
 :skolemid |713|
 :pattern ( (Tclass._module.Main _module.Main$U@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((s@@10 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@10 val@@1)) s@@10) (= (|Seq#Build_inv1| (|Seq#Build| s@@10 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@10 val@@1))
)))
(assert (forall ((_module.Queue$T@@14 T@U) ($h@@19 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._module.Queue? _module.Queue$T@@14)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) _module.Queue.head)) (Tclass._module.Node _module.Queue$T@@14)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@21) _module.Queue.head)) (Tclass._module.Queue? _module.Queue$T@@14))
)))
(assert (forall ((_module.Queue$T@@15 T@U) ($h@@20 T@U) ($o@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._module.Queue? _module.Queue$T@@15)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) _module.Queue.tail)) (Tclass._module.Node _module.Queue$T@@15)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@22) _module.Queue.tail)) (Tclass._module.Queue? _module.Queue$T@@15))
)))
(assert (forall ((_module.Queue$T@@16 T@U) ($h@@21 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass._module.Queue? _module.Queue$T@@16)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) _module.Queue.contents)) (TSeq _module.Queue$T@@16)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@23) _module.Queue.contents)) (Tclass._module.Queue? _module.Queue$T@@16))
)))
(assert (forall ((_module.Node$T@@15 T@U) ($h@@22 T@U) ($o@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) (Tclass._module.Node? _module.Node$T@@15)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@24) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@15)))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@24) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@15))
)))
(assert (forall ((_module.Node$T@@16 T@U) ($h@@23 T@U) ($o@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) (Tclass._module.Node? _module.Node$T@@16)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@25) _module.Node.tailContents)) (TSeq _module.Node$T@@16)))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@25) _module.Node.tailContents)) (Tclass._module.Node? _module.Node$T@@16))
)))
(assert (forall ((bx@@5 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@9)))
)))
(assert (forall ((bx@@6 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@6 (TSeq t@@10)))
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
(assert (forall ((_module.Main$U@@7 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._module.Main? _module.Main$U@@7)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass._module.Main? _module.Main$U@@7))))
 :qid |unknown.0:0|
 :skolemid |709|
 :pattern ( ($IsBox bx@@11 (Tclass._module.Main? _module.Main$U@@7)))
)))
(assert (forall ((_module.Main$U@@8 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._module.Main _module.Main$U@@8)) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) (Tclass._module.Main _module.Main$U@@8))))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( ($IsBox bx@@12 (Tclass._module.Main _module.Main$U@@8)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@11 T@U) (n@@6 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@6) (<= n@@6 k@@2)) (< k@@2 (|Seq#Length| s@@11))) (= (|Seq#Index| (|Seq#Drop| s@@11 n@@6) (- k@@2 n@@6)) (|Seq#Index| s@@11 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@11 k@@2) (|Seq#Drop| s@@11 n@@6))
)))
(assert (forall ((s@@12 T@U) (m@@1 Int) (n@@7 Int) ) (!  (=> (and (and (<= 0 m@@1) (<= 0 n@@7)) (<= (+ m@@1 n@@7) (|Seq#Length| s@@12))) (= (|Seq#Drop| (|Seq#Drop| s@@12 m@@1) n@@7) (|Seq#Drop| s@@12 (+ m@@1 n@@7))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@12 m@@1) n@@7))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@2 x0@@1 x1 val@@2) x0@@1 x1) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@3) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@4 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@4) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@26 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#16| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@26 $f@@1))  (=> (and (or (not (= $o@@26 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@26) |l#2|)))) (or (|Set#IsMember| |l#3| ($Box refType $o@@26)) (|Set#IsMember| |l#4| ($Box refType $o@@26)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |768|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#16| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@26 $f@@1))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (and (=> (< n@@8 (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s0@@1 n@@8))) (=> (<= (|Seq#Length| s0@@1) n@@8) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s1@@1 (- n@@8 (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8))
)))
(assert (forall ((_module.Queue$T@@19 T@U) ($h@@24 T@U) ($o@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) (Tclass._module.Queue? _module.Queue$T@@19)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@27) _module.Queue.spine)) (TSet (Tclass._module.Node _module.Queue$T@@19))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@27) _module.Queue.spine)) (Tclass._module.Queue? _module.Queue$T@@19))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
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
(assert (forall ((s@@13 T@U) ) (!  (=> (= (|Seq#Length| s@@13) 0) (= s@@13 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@13))
)))
(assert (forall ((s@@14 T@U) (n@@9 Int) ) (!  (=> (= n@@9 0) (= (|Seq#Take| s@@14 n@@9) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@14 n@@9))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@8 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@4)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |q0#0| () T@U)
(declare-fun |q1#0| () T@U)
(declare-fun _module.Main$U@@9 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |t#0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |u#0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |v#0| () T@U)
(declare-fun |call3formal@t#0| () T@U)
(declare-fun call0formal@_module.Queue$T () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call3formal@t#0@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call3formal@t#0@@0| () T@U)
(declare-fun call0formal@_module.Queue$T@@0 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |call3formal@t#0@0@@0| () T@U)
(declare-fun this@@3 () T@U)
(declare-fun |w#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.Main.Main2)
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
 (=> (= (ControlFlow 0 0) 75) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#16| null $Heap@@1 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.footprint)))) (and (=> (= (ControlFlow 0 2) (- 0 74)) (or (not (= |q0#0| null)) (not true))) (=> (or (not (= |q0#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 73)) (forall (($o@@28 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@28) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@28))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@28 $f@@2)))
 :qid |Queuedfy.183:15|
 :skolemid |757|
))) (=> (forall (($o@@29 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@29) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@29))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@29 $f@@3)))
 :qid |Queuedfy.183:15|
 :skolemid |757|
)) (and (=> (= (ControlFlow 0 2) (- 0 72)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 71)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint))))) (and (=> (= (ControlFlow 0 2) (- 0 70)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.head))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.head)))) (and (=> (= (ControlFlow 0 2) (- 0 69)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.tail))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.tail)))) (and (=> (= (ControlFlow 0 2) (- 0 68)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.tail))) _module.Node.next)) null)))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.tail))) _module.Node.next)) null))) (and (=> (= (ControlFlow 0 2) (- 0 67)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (forall ((|n#0@@1| T@U) ) (!  (=> ($Is refType |n#0@@1| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@1|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@1|)) (_module.Node.Valid _module.Main$U@@9 $Heap@@1 |n#0@@1|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@1|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.Node.next)) null) (= |n#0@@1| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |614|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@@1 |n#0@@1|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@1|)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (forall ((|n#0@@2| T@U) ) (!  (=> ($Is refType |n#0@@2| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@2|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@2|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@2|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@2|)) (_module.Node.Valid _module.Main$U@@9 $Heap@@1 |n#0@@2|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@2|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@2|) _module.Node.next)) null) (= |n#0@@2| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |614|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@2|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@@1 |n#0@@2|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@2|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@2|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 66)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (forall ((|n#1@@0| T@U) ) (!  (=> ($Is refType |n#1@@0| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#1@@0|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#1@@0|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#1@@0|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |615|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#1@@0|) _module.Node.next)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (forall ((|n#1@@1| T@U) ) (!  (=> ($Is refType |n#1@@1| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#1@@1|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#1@@1|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#1@@1|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |615|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#1@@1|) _module.Node.next)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 65)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.head))) _module.Node.tailContents)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.head))) _module.Node.tailContents))))) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|)) (and (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (and (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.head))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.tail))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.tail))) _module.Node.next)) null)) (forall ((|n#2| T@U) ) (!  (=> ($Is refType |n#2| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#2|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#2|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#2|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#2|)) (_module.Node.Valid _module.Main$U@@9 $Heap@0 |n#2|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#2|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#2|) _module.Node.next)) null) (= |n#2| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |620|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#2|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@0 |n#2|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#2|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#2|)))
))) (forall ((|n#3| T@U) ) (!  (=> ($Is refType |n#3| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#3|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#3|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#3|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |621|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#3|) _module.Node.next)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.head))) _module.Node.tailContents))))))) (and (and (and (forall (($o@@30 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@30)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@30)))) (or (not (= $o@@30 null)) (not true)))
 :qid |Queuedfy.82:24|
 :skolemid |622|
 :pattern (  (or (not (= $o@@30 null)) (not true)))
)) (forall (($o@@31 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@31)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@31)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@31) alloc)))))
 :qid |Queuedfy.82:24|
 :skolemid |623|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@31) alloc)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.contents)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.contents)) (|Seq#Build| |Seq#Empty| |t#0|)))) (and (forall (($o@@32 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@32) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@32) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@32)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@32))))
 :qid |Queuedfy.79:10|
 :skolemid |624|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@32))
)) ($HeapSucc $Heap@@1 $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 64)) (or (not (= |q0#0| null)) (not true))) (=> (or (not (= |q0#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 63)) (forall (($o@@33 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@33) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@33))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@33 $f@@4)))
 :qid |Queuedfy.184:15|
 :skolemid |758|
))) (=> (forall (($o@@34 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@34) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@34))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@34 $f@@5)))
 :qid |Queuedfy.184:15|
 :skolemid |758|
)) (and (=> (= (ControlFlow 0 2) (- 0 62)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 61)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint))))) (and (=> (= (ControlFlow 0 2) (- 0 60)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.head))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.head)))) (and (=> (= (ControlFlow 0 2) (- 0 59)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.tail))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.tail)))) (and (=> (= (ControlFlow 0 2) (- 0 58)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.tail))) _module.Node.next)) null)))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.tail))) _module.Node.next)) null))) (and (=> (= (ControlFlow 0 2) (- 0 57)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (forall ((|n#0@@3| T@U) ) (!  (=> ($Is refType |n#0@@3| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@3|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0@@3|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@3|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0@@3|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@3|)) (_module.Node.Valid _module.Main$U@@9 $Heap@0 |n#0@@3|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@3|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0@@3|) _module.Node.next)) null) (= |n#0@@3| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |614|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0@@3|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@0 |n#0@@3|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0@@3|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@3|)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (forall ((|n#0@@4| T@U) ) (!  (=> ($Is refType |n#0@@4| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@4|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0@@4|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@4|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0@@4|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@4|)) (_module.Node.Valid _module.Main$U@@9 $Heap@0 |n#0@@4|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@4|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0@@4|) _module.Node.next)) null) (= |n#0@@4| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |614|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0@@4|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@0 |n#0@@4|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0@@4|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@4|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 56)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (forall ((|n#1@@2| T@U) ) (!  (=> ($Is refType |n#1@@2| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#1@@2|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1@@2|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1@@2|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |615|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1@@2|) _module.Node.next)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (forall ((|n#1@@3| T@U) ) (!  (=> ($Is refType |n#1@@3| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) ($Box refType |n#1@@3|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1@@3|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1@@3|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |615|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1@@3|) _module.Node.next)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 55)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.head))) _module.Node.tailContents)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@0 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@0 |q0#0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.head))) _module.Node.tailContents))))) (=> (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q0#0|)) (and (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q0#0|) (and (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q0#0|) (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.footprint)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.head))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.tail))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.tail))) _module.Node.next)) null)) (forall ((|n#2@@0| T@U) ) (!  (=> ($Is refType |n#2@@0| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#2@@0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@0|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#2@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@0|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#2@@0|)) (_module.Node.Valid _module.Main$U@@9 $Heap@1 |n#2@@0|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#2@@0|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@0|) _module.Node.next)) null) (= |n#2@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |620|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@0|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@1 |n#2@@0|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@0|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#2@@0|)))
))) (forall ((|n#3@@0| T@U) ) (!  (=> ($Is refType |n#3@@0| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#3@@0|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3@@0|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3@@0|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |621|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3@@0|) _module.Node.next)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.head))) _module.Node.tailContents))))))) (and (and (and (forall (($o@@35 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@35)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@35)))) (or (not (= $o@@35 null)) (not true)))
 :qid |Queuedfy.82:24|
 :skolemid |622|
 :pattern (  (or (not (= $o@@35 null)) (not true)))
)) (forall (($o@@36 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@36)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@36)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@36) alloc)))))
 :qid |Queuedfy.82:24|
 :skolemid |623|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@36) alloc)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q0#0|) _module.Queue.contents)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.contents)) (|Seq#Build| |Seq#Empty| |u#0|)))) (and (forall (($o@@37 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@37) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@37) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@37)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@37))))
 :qid |Queuedfy.79:10|
 :skolemid |624|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@37))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 54)) (or (not (= |q1#0| null)) (not true))) (=> (or (not (= |q1#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 53)) (forall (($o@@38 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@38) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.footprint)) ($Box refType $o@@38))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@38 $f@@6)))
 :qid |Queuedfy.186:15|
 :skolemid |759|
))) (=> (forall (($o@@39 T@U) ($f@@7 T@U) ) (!  (=> (and (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@39) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.footprint)) ($Box refType $o@@39))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@39 $f@@7)))
 :qid |Queuedfy.186:15|
 :skolemid |759|
)) (and (=> (= (ControlFlow 0 2) (- 0 52)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.footprint)) ($Box refType |q1#0|))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.footprint)) ($Box refType |q1#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 51)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.footprint)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.footprint))))) (and (=> (= (ControlFlow 0 2) (- 0 50)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.head))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.head)))) (and (=> (= (ControlFlow 0 2) (- 0 49)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.tail))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.tail)))) (and (=> (= (ControlFlow 0 2) (- 0 48)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.tail))) _module.Node.next)) null)))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.tail))) _module.Node.next)) null))) (and (=> (= (ControlFlow 0 2) (- 0 47)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (forall ((|n#0@@5| T@U) ) (!  (=> ($Is refType |n#0@@5| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#0@@5|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0@@5|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#0@@5|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0@@5|) _module.Node.footprint)) ($Box refType |q1#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#0@@5|)) (_module.Node.Valid _module.Main$U@@9 $Heap@1 |n#0@@5|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#0@@5|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0@@5|) _module.Node.next)) null) (= |n#0@@5| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |614|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0@@5|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@1 |n#0@@5|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0@@5|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#0@@5|)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (forall ((|n#0@@6| T@U) ) (!  (=> ($Is refType |n#0@@6| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#0@@6|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0@@6|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#0@@6|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0@@6|) _module.Node.footprint)) ($Box refType |q1#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#0@@6|)) (_module.Node.Valid _module.Main$U@@9 $Heap@1 |n#0@@6|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#0@@6|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0@@6|) _module.Node.next)) null) (= |n#0@@6| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |614|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0@@6|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@1 |n#0@@6|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0@@6|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#0@@6|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 46)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (forall ((|n#1@@4| T@U) ) (!  (=> ($Is refType |n#1@@4| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#1@@4|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#1@@4|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#1@@4|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |615|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#1@@4|) _module.Node.next)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (forall ((|n#1@@5| T@U) ) (!  (=> ($Is refType |n#1@@5| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#1@@5|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#1@@5|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#1@@5|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |615|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#1@@5|) _module.Node.next)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 45)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.head))) _module.Node.tailContents)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@1 |q1#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@1 |q1#0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.head))) _module.Node.tailContents))))) (=> (and (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q1#0|)) (and (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q1#0|) (and (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q1#0|) (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.footprint)) ($Box refType |q1#0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.footprint)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.head))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.tail))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.tail))) _module.Node.next)) null)) (forall ((|n#2@@1| T@U) ) (!  (=> ($Is refType |n#2@@1| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.spine)) ($Box refType |n#2@@1|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#2@@1|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.spine)) ($Box refType |n#2@@1|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#2@@1|) _module.Node.footprint)) ($Box refType |q1#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.spine)) ($Box refType |n#2@@1|)) (_module.Node.Valid _module.Main$U@@9 $Heap@2 |n#2@@1|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.spine)) ($Box refType |n#2@@1|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#2@@1|) _module.Node.next)) null) (= |n#2@@1| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |620|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#2@@1|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@2 |n#2@@1|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#2@@1|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.spine)) ($Box refType |n#2@@1|)))
))) (forall ((|n#3@@1| T@U) ) (!  (=> ($Is refType |n#3@@1| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.spine)) ($Box refType |n#3@@1|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#3@@1|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#3@@1|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |621|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#3@@1|) _module.Node.next)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.head))) _module.Node.tailContents))))))) (and (and (and (forall (($o@@40 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.footprint)) ($Box refType $o@@40)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.footprint)) ($Box refType $o@@40)))) (or (not (= $o@@40 null)) (not true)))
 :qid |Queuedfy.82:24|
 :skolemid |622|
 :pattern (  (or (not (= $o@@40 null)) (not true)))
)) (forall (($o@@41 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.footprint)) ($Box refType $o@@41)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.footprint)) ($Box refType $o@@41)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@41) alloc)))))
 :qid |Queuedfy.82:24|
 :skolemid |623|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@41) alloc)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q1#0|) _module.Queue.contents)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.contents)) (|Seq#Build| |Seq#Empty| |v#0|)))) (and (forall (($o@@42 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@42) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@42) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@42)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q1#0|) _module.Queue.footprint)) ($Box refType $o@@42))))
 :qid |Queuedfy.79:10|
 :skolemid |624|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@42))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 44)) (or (not (= |q0#0| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 43)) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.contents))) (LitInt 2))) (=> (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.contents))) (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 42)) (or (not (= |q0#0| null)) (not true))) (=> (or (not (= |q0#0| null)) (not true)) (=> (and ($IsBox |call3formal@t#0| call0formal@_module.Queue$T) ($IsAllocBox |call3formal@t#0| call0formal@_module.Queue$T $Heap@@1)) (and (=> (= (ControlFlow 0 2) (- 0 41)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 40)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.footprint)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.footprint))))) (and (=> (= (ControlFlow 0 2) (- 0 39)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.head))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.head)))) (and (=> (= (ControlFlow 0 2) (- 0 38)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.tail))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.tail)))) (and (=> (= (ControlFlow 0 2) (- 0 37)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.tail))) _module.Node.next)) null)))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.tail))) _module.Node.next)) null))) (and (=> (= (ControlFlow 0 2) (- 0 36)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (forall ((|n#0@@7| T@U) ) (!  (=> ($Is refType |n#0@@7| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@7|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#0@@7|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@7|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#0@@7|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@7|)) (_module.Node.Valid _module.Main$U@@9 $Heap@2 |n#0@@7|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@7|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#0@@7|) _module.Node.next)) null) (= |n#0@@7| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |644|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#0@@7|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@2 |n#0@@7|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#0@@7|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@7|)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (forall ((|n#0@@8| T@U) ) (!  (=> ($Is refType |n#0@@8| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@8|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#0@@8|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@8|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#0@@8|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@8|)) (_module.Node.Valid _module.Main$U@@9 $Heap@2 |n#0@@8|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@8|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#0@@8|) _module.Node.next)) null) (= |n#0@@8| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |644|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#0@@8|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@2 |n#0@@8|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#0@@8|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@8|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 35)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (forall ((|n#1@@6| T@U) ) (!  (=> ($Is refType |n#1@@6| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Box refType |n#1@@6|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#1@@6|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#1@@6|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |645|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#1@@6|) _module.Node.next)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (forall ((|n#1@@7| T@U) ) (!  (=> ($Is refType |n#1@@7| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) ($Box refType |n#1@@7|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#1@@7|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#1@@7|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |645|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#1@@7|) _module.Node.next)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.head))) _module.Node.tailContents)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@2 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@2 |q0#0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.head))) _module.Node.tailContents))))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (< 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.contents))))) (=> (< 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q0#0|) _module.Queue.contents)))) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and ($IsBox |call3formal@t#0@0| _module.Main$U@@9) ($IsAllocBox |call3formal@t#0@0| _module.Main$U@@9 $Heap@3)) (= |call3formal@t#0@0| (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.contents)) (LitInt 0)))) (and (forall (($o@@43 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@43) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@43) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@43)))
 :qid |Queuedfy.103:10|
 :skolemid |648|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@43))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (= |call3formal@t#0@0| |t#0|)) (=> (= |call3formal@t#0@0| |t#0|) (and (=> (= (ControlFlow 0 2) (- 0 31)) (or (not (= |q0#0| null)) (not true))) (=> (or (not (= |q0#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 30)) (forall (($o@@44 T@U) ($f@@8 T@U) ) (!  (=> (and (and (or (not (= $o@@44 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@44) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@44))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@44 $f@@8)))
 :qid |Queuedfy.192:15|
 :skolemid |761|
))) (=> (forall (($o@@45 T@U) ($f@@9 T@U) ) (!  (=> (and (and (or (not (= $o@@45 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@45) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@45))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@45 $f@@9)))
 :qid |Queuedfy.192:15|
 :skolemid |761|
)) (and (=> (= (ControlFlow 0 2) (- 0 29)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 28)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.footprint)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.footprint))))) (and (=> (= (ControlFlow 0 2) (- 0 27)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.head))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.head)))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.tail))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.tail)))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.tail))) _module.Node.next)) null)))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.tail))) _module.Node.next)) null))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (forall ((|n#0@@9| T@U) ) (!  (=> ($Is refType |n#0@@9| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@9|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0@@9|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@9|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0@@9|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@9|)) (_module.Node.Valid _module.Main$U@@9 $Heap@3 |n#0@@9|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@9|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0@@9|) _module.Node.next)) null) (= |n#0@@9| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |657|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0@@9|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@3 |n#0@@9|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0@@9|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@9|)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (forall ((|n#0@@10| T@U) ) (!  (=> ($Is refType |n#0@@10| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@10|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0@@10|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@10|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0@@10|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@10|)) (_module.Node.Valid _module.Main$U@@9 $Heap@3 |n#0@@10|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@10|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0@@10|) _module.Node.next)) null) (= |n#0@@10| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |657|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0@@10|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@3 |n#0@@10|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0@@10|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@10|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (forall ((|n#1@@8| T@U) ) (!  (=> ($Is refType |n#1@@8| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Box refType |n#1@@8|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#1@@8|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#1@@8|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |658|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#1@@8|) _module.Node.next)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (forall ((|n#1@@9| T@U) ) (!  (=> ($Is refType |n#1@@9| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) ($Box refType |n#1@@9|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#1@@9|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#1@@9|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |658|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#1@@9|) _module.Node.next)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.head))) _module.Node.tailContents)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@3 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@3 |q0#0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.head))) _module.Node.tailContents))))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (< 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.contents))))) (=> (< 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.contents)))) (=> (and (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|)) (and (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (and (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.footprint)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.head))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.tail))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.tail))) _module.Node.next)) null)) (forall ((|n#2@@2| T@U) ) (!  (=> ($Is refType |n#2@@2| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#2@@2|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#2@@2|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#2@@2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#2@@2|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#2@@2|)) (_module.Node.Valid _module.Main$U@@9 $Heap@4 |n#2@@2|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#2@@2|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#2@@2|) _module.Node.next)) null) (= |n#2@@2| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |663|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#2@@2|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@4 |n#2@@2|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#2@@2|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#2@@2|)))
))) (forall ((|n#3@@2| T@U) ) (!  (=> ($Is refType |n#3@@2| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#3@@2|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#3@@2|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#3@@2|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |664|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#3@@2|) _module.Node.next)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.head))) _module.Node.tailContents))))))) (and (and (and (forall (($o@@46 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@46)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@46)))) (or (not (= $o@@46 null)) (not true)))
 :qid |Queuedfy.115:24|
 :skolemid |665|
 :pattern (  (or (not (= $o@@46 null)) (not true)))
)) (forall (($o@@47 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@47)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@47)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@47) alloc)))))
 :qid |Queuedfy.115:24|
 :skolemid |666|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@47) alloc)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.contents)) (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.contents)) (LitInt 1)))) (and (forall (($o@@48 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@48) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@48) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@48)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@48))))
 :qid |Queuedfy.111:10|
 :skolemid |667|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@48))
)) ($HeapSucc $Heap@3 $Heap@4)))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (or (not (= |q0#0| null)) (not true))) (=> (or (not (= |q0#0| null)) (not true)) (=> (and ($IsBox |call3formal@t#0@@0| call0formal@_module.Queue$T@@0) ($IsAllocBox |call3formal@t#0@@0| call0formal@_module.Queue$T@@0 $Heap@@1)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.footprint)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.footprint))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.head))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.head)))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.tail))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.tail)))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.tail))) _module.Node.next)) null)))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.tail))) _module.Node.next)) null))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (forall ((|n#0@@11| T@U) ) (!  (=> ($Is refType |n#0@@11| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@11|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0@@11|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@11|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0@@11|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@11|)) (_module.Node.Valid _module.Main$U@@9 $Heap@4 |n#0@@11|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@11|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0@@11|) _module.Node.next)) null) (= |n#0@@11| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |644|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0@@11|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@4 |n#0@@11|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0@@11|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@11|)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (forall ((|n#0@@12| T@U) ) (!  (=> ($Is refType |n#0@@12| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@12|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0@@12|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@12|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0@@12|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@12|)) (_module.Node.Valid _module.Main$U@@9 $Heap@4 |n#0@@12|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@12|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0@@12|) _module.Node.next)) null) (= |n#0@@12| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |644|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0@@12|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@4 |n#0@@12|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0@@12|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#0@@12|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (forall ((|n#1@@10| T@U) ) (!  (=> ($Is refType |n#1@@10| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#1@@10|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#1@@10|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#1@@10|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |645|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#1@@10|) _module.Node.next)))
))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (forall ((|n#1@@11| T@U) ) (!  (=> ($Is refType |n#1@@11| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) ($Box refType |n#1@@11|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#1@@11|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#1@@11|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |645|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#1@@11|) _module.Node.next)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.head))) _module.Node.tailContents)))))) (=> (=> (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@4 |q0#0|) (or (_module.Queue.Valid _module.Main$U@@9 $Heap@4 |q0#0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.head))) _module.Node.tailContents))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (< 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.contents))))) (=> (< 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q0#0|) _module.Queue.contents)))) (=> (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (=> (and (and (and ($IsBox |call3formal@t#0@0@@0| _module.Main$U@@9) ($IsAllocBox |call3formal@t#0@0@@0| _module.Main$U@@9 $Heap@5)) (= |call3formal@t#0@0@@0| (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |q0#0|) _module.Queue.contents)) (LitInt 0)))) (and (forall (($o@@49 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@49) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@49) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@49)))
 :qid |Queuedfy.103:10|
 :skolemid |648|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@49))
)) ($HeapSucc $Heap@4 $Heap@5))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (= |call3formal@t#0@0@@0| |u#0|)) (=> (= |call3formal@t#0@0@@0| |u#0|) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= |q0#0| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |q0#0|) _module.Queue.contents))) (LitInt 1))) (=> (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |q0#0|) _module.Queue.contents))) (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= |q1#0| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= |q1#0| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($IsAlloc refType |q1#0| (Tclass._module.Queue _module.Main$U@@9) $Heap@@1)) (=> ($IsAlloc refType |q1#0| (Tclass._module.Queue _module.Main$U@@9) $Heap@@1) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |q1#0|) _module.Queue.contents))) (+ (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.contents))) 1))) (=> (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |q1#0|) _module.Queue.contents))) (+ (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.contents))) 1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (forall (($o@@50 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@50)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@50)))) (or (not (= $o@@50 null)) (not true)))
 :qid |Queuedfy.180:13|
 :skolemid |752|
 :pattern (  (or (not (= $o@@50 null)) (not true)))
)) (forall (($o@@51 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@51)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@51)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@51) alloc)))))
 :qid |Queuedfy.180:13|
 :skolemid |753|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@51) alloc)))
)))) (=> (and (forall (($o@@52 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@52)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@52)))) (or (not (= $o@@52 null)) (not true)))
 :qid |Queuedfy.180:13|
 :skolemid |752|
 :pattern (  (or (not (= $o@@52 null)) (not true)))
)) (forall (($o@@53 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@53)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Box refType $o@@53)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@53) alloc)))))
 :qid |Queuedfy.180:13|
 :skolemid |753|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@53) alloc)))
))) (=> (= (ControlFlow 0 2) (- 0 1)) (and (forall (($o@@54 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |q1#0|) _module.Queue.footprint)) ($Box refType $o@@54)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.footprint)) ($Box refType $o@@54)))) (or (not (= $o@@54 null)) (not true)))
 :qid |Queuedfy.181:13|
 :skolemid |754|
 :pattern (  (or (not (= $o@@54 null)) (not true)))
)) (forall (($o@@55 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |q1#0|) _module.Queue.footprint)) ($Box refType $o@@55)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.footprint)) ($Box refType $o@@55)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@55) alloc)))))
 :qid |Queuedfy.181:13|
 :skolemid |755|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@55) alloc)))
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 (Tclass._module.Main _module.Main$U@@9)) ($IsAlloc refType this@@3 (Tclass._module.Main _module.Main$U@@9) $Heap@@1))) (and ($IsBox |t#0| _module.Main$U@@9) ($IsAllocBox |t#0| _module.Main$U@@9 $Heap@@1))) (=> (and (and (and ($IsBox |u#0| _module.Main$U@@9) ($IsAllocBox |u#0| _module.Main$U@@9 $Heap@@1)) (and ($IsBox |v#0| _module.Main$U@@9) ($IsAllocBox |v#0| _module.Main$U@@9 $Heap@@1))) (and (and ($Is refType |q0#0| (Tclass._module.Queue _module.Main$U@@9)) ($IsAlloc refType |q0#0| (Tclass._module.Queue _module.Main$U@@9) $Heap@@1)) (and ($Is refType |q1#0| (Tclass._module.Queue _module.Main$U@@9)) ($IsAlloc refType |q1#0| (Tclass._module.Queue _module.Main$U@@9) $Heap@@1)))) (=> (and (and (and (and (and ($IsBox |w#0| _module.Main$U@@9) ($IsAllocBox |w#0| _module.Main$U@@9 $Heap@@1)) true) (= 3 $FunctionContextHeight)) (and (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q0#0|) (and (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q0#0|) (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Box refType |q0#0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.head))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.tail))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.tail))) _module.Node.next)) null)) (forall ((|n#4| T@U) ) (!  (=> ($Is refType |n#4| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#4|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#4|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#4|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#4|) _module.Node.footprint)) ($Box refType |q0#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#4|)) (_module.Node.Valid _module.Main$U@@9 $Heap@@1 |n#4|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#4|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#4|) _module.Node.next)) null) (= |n#4| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |746|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#4|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@@1 |n#4|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#4|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#4|)))
))) (forall ((|n#5| T@U) ) (!  (=> ($Is refType |n#5| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) ($Box refType |n#5|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#5|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#5|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |747|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#5|) _module.Node.next)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.head))) _module.Node.tailContents))))))) (and (and (and (|_module.Queue.Valid#canCall| _module.Main$U@@9 $Heap@@1 |q1#0|) (and (_module.Queue.Valid _module.Main$U@@9 $Heap@@1 |q1#0|) (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.footprint)) ($Box refType |q1#0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.footprint)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.head))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.tail))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.tail))) _module.Node.next)) null)) (forall ((|n#6| T@U) ) (!  (=> ($Is refType |n#6| (Tclass._module.Node _module.Main$U@@9)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#6|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#6|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#6|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#6|) _module.Node.footprint)) ($Box refType |q1#0|))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#6|)) (_module.Node.Valid _module.Main$U@@9 $Heap@@1 |n#6|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#6|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#6|) _module.Node.next)) null) (= |n#6| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.tail)))))))
 :qid |Queuedfy.23:13|
 :skolemid |750|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#6|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Main$U@@9 $Heap@@1 |n#6|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#6|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#6|)))
))) (forall ((|n#7| T@U) ) (!  (=> ($Is refType |n#7| (Tclass._module.Node _module.Main$U@@9)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.spine)) ($Box refType |n#7|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#7|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#7|) _module.Node.next)))))
 :qid |Queuedfy.28:13|
 :skolemid |751|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#7|) _module.Node.next)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.head))) _module.Node.tailContents)))))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q1#0|) _module.Queue.footprint)))) (and (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |q0#0|) _module.Queue.contents))) (LitInt 0)) (= (ControlFlow 0 75) 2)))) anon0_correct))))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
