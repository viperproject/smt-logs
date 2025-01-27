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
(declare-fun class._module.UnboundedStack? () T@U)
(declare-fun Tagclass._module.UnboundedStack? () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun Tagclass._module.UnboundedStack () T@U)
(declare-fun class._module.Node? () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$UnboundedStack () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$top () T@U)
(declare-fun field$footprint () T@U)
(declare-fun field$content () T@U)
(declare-fun field$prev () T@U)
(declare-fun field$next () T@U)
(declare-fun field$val () T@U)
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
(declare-fun _module.UnboundedStack.IsUnboundedStack (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.UnboundedStack.IsUnboundedStack#canCall| (T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.UnboundedStack (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.UnboundedStack.footprint () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.UnboundedStack.top () T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun _module.UnboundedStack.content () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.Node.footprint () T@U)
(declare-fun _module.Node.prev () T@U)
(declare-fun _module.Node.content () T@U)
(declare-fun |_module.Node.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.Node.Valid (T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun DeclName (T@U) T@U)
(declare-fun _module.Node.val () T@U)
(declare-fun Tclass._module.Node? (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.UnboundedStack.IsEmpty (T@U T@U T@U) Bool)
(declare-fun Tclass._module.UnboundedStack? (T@U) T@U)
(declare-fun Tclass._module.Node (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Node.next () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |_module.UnboundedStack.IsEmpty#canCall| (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.UnboundedStack?_0 (T@U) T@U)
(declare-fun Tclass._module.Node?_0 (T@U) T@U)
(declare-fun Tclass._module.UnboundedStack_0 (T@U) T@U)
(declare-fun Tclass._module.Node_0 (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#5| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object class._module.UnboundedStack? Tagclass._module.UnboundedStack? Tagclass._module.Node? Tagclass._module.UnboundedStack class._module.Node? Tagclass._module.Node tytagFamily$object tytagFamily$UnboundedStack tytagFamily$Node field$top field$footprint field$content field$prev field$next field$val)
)
(assert  (and (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor SetType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))) (= (Ctor SeqType) 8)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.UnboundedStack$T T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T $Heap this) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.UnboundedStack _module.UnboundedStack$T)) ($IsAlloc refType this (Tclass._module.UnboundedStack _module.UnboundedStack$T) $Heap)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.footprint)) ($Box refType this)) (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.content)) |Seq#Empty|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.footprint))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top))) _module.Node.prev)) null) (=> (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.content)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top))) _module.Node.content))) (|_module.Node.Valid#canCall| _module.UnboundedStack$T $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top)))))))))) (= (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T $Heap this)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.footprint)) ($Box refType this)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.content)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.footprint)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top))) _module.Node.prev)) null)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.content)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top))) _module.Node.content)))) (_module.Node.Valid _module.UnboundedStack$T ($LS $LZ) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.UnboundedStack.top)))))))))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T $Heap this) ($IsGoodHeap $Heap))
))))
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_module.Node$T T@U) ($h T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._module.Node? _module.Node$T)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.Node.val) _module.Node$T))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.Node.val) (Tclass._module.Node? _module.Node$T))
)))
(assert (forall ((_module.Node$T@@0 T@U) ($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.Node? _module.Node$T@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.Node.val) _module.Node$T@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.Node.val) (Tclass._module.Node? _module.Node$T@@0))
)))
(assert (forall ((_module.UnboundedStack$T@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this@@0)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f)))
 :qid |unknown.0:0|
 :skolemid |578|
)) (= (_module.UnboundedStack.IsEmpty _module.UnboundedStack$T@@0 $h0 this@@0) (_module.UnboundedStack.IsEmpty _module.UnboundedStack$T@@0 $h1 this@@0))))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.UnboundedStack.IsEmpty _module.UnboundedStack$T@@0 $h1 this@@0))
)))
(assert (forall ((_module.UnboundedStack$T@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@1)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (or (= $o@@2 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@1) _module.UnboundedStack.footprint)) ($Box refType $o@@2)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@2) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |569|
)) (= (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@1 $h0@@0 this@@1) (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@1 $h1@@0 this@@1))))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@1 $h1@@0 this@@1))
)))
(assert (forall ((_module.UnboundedStack$T@@2 T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.UnboundedStack _module.UnboundedStack$T@@2) $h@@1) ($IsAlloc refType |c#0| (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@2) $h@@1))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.UnboundedStack _module.UnboundedStack$T@@2) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@2) $h@@1))
)))
(assert (forall ((_module.Node$T@@1 T@U) (|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.Node _module.Node$T@@1) $h@@2) ($IsAlloc refType |c#0@@0| (Tclass._module.Node? _module.Node$T@@1) $h@@2))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Node _module.Node$T@@1) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Node? _module.Node$T@@1) $h@@2))
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
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
)))
(assert (= (FDim _module.UnboundedStack.footprint) 0))
(assert (= (FieldOfDecl class._module.UnboundedStack? field$footprint) _module.UnboundedStack.footprint))
(assert ($IsGhostField _module.UnboundedStack.footprint))
(assert (= (FDim _module.UnboundedStack.content) 0))
(assert (= (FieldOfDecl class._module.UnboundedStack? field$content) _module.UnboundedStack.content))
(assert ($IsGhostField _module.UnboundedStack.content))
(assert (forall ((_module.UnboundedStack$T@@3 T@U) ($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@3) $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@3) $h@@4))
)))
(assert (forall ((_module.Node$T@@2 T@U) ($o@@4 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@4 (Tclass._module.Node? _module.Node$T@@2) $h@@5)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($IsAlloc refType $o@@4 (Tclass._module.Node? _module.Node$T@@2) $h@@5))
)))
(assert (= (FDim _module.UnboundedStack.top) 0))
(assert (= (FieldOfDecl class._module.UnboundedStack? field$top) _module.UnboundedStack.top))
(assert  (not ($IsGhostField _module.UnboundedStack.top)))
(assert (= (FDim _module.Node.footprint) 0))
(assert (= (FieldOfDecl class._module.Node? field$footprint) _module.Node.footprint))
(assert  (not ($IsGhostField _module.Node.footprint)))
(assert (= (FDim _module.Node.prev) 0))
(assert (= (FieldOfDecl class._module.Node? field$prev) _module.Node.prev))
(assert  (not ($IsGhostField _module.Node.prev)))
(assert (= (FDim _module.Node.content) 0))
(assert (= (FieldOfDecl class._module.Node? field$content) _module.Node.content))
(assert  (not ($IsGhostField _module.Node.content)))
(assert (= (FDim _module.Node.next) 0))
(assert (= (FieldOfDecl class._module.Node? field$next) _module.Node.next))
(assert  (not ($IsGhostField _module.Node.next)))
(assert (= (FDim _module.Node.val) 0))
(assert (= (FieldOfDecl class._module.Node? field$val) _module.Node.val))
(assert  (not ($IsGhostField _module.Node.val)))
(assert (forall (($o@@5 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._System.object? $h@@6)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._System.object? $h@@6))
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
(assert (forall ((v@@0 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@0)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Node$T@@3 T@U) ($ly T@U) ($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Node.Valid#canCall| _module.Node$T@@3 $Heap@@0 this@@2) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass._module.Node _module.Node$T@@3)) ($IsAlloc refType this@@2 (Tclass._module.Node _module.Node$T@@3) $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.footprint)) ($Box refType this@@2)) (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.content)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.val)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next)) (=> (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.footprint))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next))) _module.Node.footprint))))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next))) _module.Node.footprint)) ($Box refType this@@2))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next))) _module.Node.prev)) this@@2) (=> (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.content)) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.val)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next))) _module.Node.content)))) (|_module.Node.Valid#canCall| _module.Node$T@@3 $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next))))))))))) (= (_module.Node.Valid _module.Node$T@@3 ($LS $ly) $Heap@@0 this@@2)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.footprint)) ($Box refType this@@2)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.content)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.val))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next)) null)) (not true)) (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.footprint))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next))) _module.Node.footprint)))))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next))) _module.Node.footprint)) ($Box refType this@@2)))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next))) _module.Node.prev)) this@@2)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.content)) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.val)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next))) _module.Node.content))))) (_module.Node.Valid _module.Node$T@@3 $ly $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Node.next)))))))))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( (_module.Node.Valid _module.Node$T@@3 ($LS $ly) $Heap@@0 this@@2) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.UnboundedStack$T@@4 T@U) ($Heap@@1 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.UnboundedStack.IsEmpty#canCall| _module.UnboundedStack$T@@4 $Heap@@1 this@@3) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@4)) ($IsAlloc refType this@@3 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@4) $Heap@@1)))))) (= (_module.UnboundedStack.IsEmpty _module.UnboundedStack$T@@4 $Heap@@1 this@@3) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.content)) |Seq#Empty|)))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( (_module.UnboundedStack.IsEmpty _module.UnboundedStack$T@@4 $Heap@@1 this@@3) ($IsGoodHeap $Heap@@1))
))))
(assert ($IsGhostField alloc))
(assert (forall ((s@@5 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@5 v@@1)) (+ 1 (|Seq#Length| s@@5)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@5 v@@1))
)))
(assert (forall ((_module.UnboundedStack$T@@5 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.UnboundedStack _module.UnboundedStack$T@@5))  (and ($Is refType |c#0@@2| (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@5)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.UnboundedStack _module.UnboundedStack$T@@5)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@5)))
)))
(assert (forall ((_module.Node$T@@4 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.Node _module.Node$T@@4))  (and ($Is refType |c#0@@3| (Tclass._module.Node? _module.Node$T@@4)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Node _module.Node$T@@4)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Node? _module.Node$T@@4)))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@1 h@@0) ($IsAlloc T@@1 v@@2 t@@1 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@1 h@@0))
)))
(assert (forall ((_module.Node$T@@5 T@U) ($ly@@0 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 (Tclass._module.Node _module.Node$T@@5)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@6 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (or (= $o@@6 this@@4) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 this@@4) _module.Node.footprint)) ($Box refType $o@@6)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@6) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@6) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |608|
)) (= (_module.Node.Valid _module.Node$T@@5 $ly@@0 $h0@@1 this@@4) (_module.Node.Valid _module.Node$T@@5 $ly@@0 $h1@@1 this@@4))))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Node.Valid _module.Node$T@@5 $ly@@0 $h1@@1 this@@4))
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
(assert (forall ((_module.UnboundedStack$T@@6 T@U) ) (!  (and (= (Tag (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@6)) Tagclass._module.UnboundedStack?) (= (TagFamily (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@6)) tytagFamily$UnboundedStack))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@6))
)))
(assert (forall ((_module.Node$T@@6 T@U) ) (!  (and (= (Tag (Tclass._module.Node? _module.Node$T@@6)) Tagclass._module.Node?) (= (TagFamily (Tclass._module.Node? _module.Node$T@@6)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (Tclass._module.Node? _module.Node$T@@6))
)))
(assert (forall ((_module.UnboundedStack$T@@7 T@U) ) (!  (and (= (Tag (Tclass._module.UnboundedStack _module.UnboundedStack$T@@7)) Tagclass._module.UnboundedStack) (= (TagFamily (Tclass._module.UnboundedStack _module.UnboundedStack$T@@7)) tytagFamily$UnboundedStack))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( (Tclass._module.UnboundedStack _module.UnboundedStack$T@@7))
)))
(assert (forall ((_module.Node$T@@7 T@U) ) (!  (and (= (Tag (Tclass._module.Node _module.Node$T@@7)) Tagclass._module.Node) (= (TagFamily (Tclass._module.Node _module.Node$T@@7)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( (Tclass._module.Node _module.Node$T@@7))
)))
(assert (forall ((_module.UnboundedStack$T@@8 T@U) ($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.UnboundedStack.top)) (Tclass._module.Node? _module.UnboundedStack$T@@8) $h@@7))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.UnboundedStack.top)) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@8))
)))
(assert (forall ((_module.UnboundedStack$T@@9 T@U) ($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.UnboundedStack.content)) (TSeq _module.UnboundedStack$T@@9) $h@@8))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.UnboundedStack.content)) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@9))
)))
(assert (forall ((_module.Node$T@@8 T@U) ($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._module.Node? _module.Node$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@8) $h@@9))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@8))
)))
(assert (forall ((_module.Node$T@@9 T@U) ($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._module.Node? _module.Node$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.Node.prev)) (Tclass._module.Node? _module.Node$T@@9) $h@@10))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.Node.prev)) (Tclass._module.Node? _module.Node$T@@9))
)))
(assert (forall ((_module.Node$T@@10 T@U) ($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._module.Node? _module.Node$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.Node.content)) (TSeq _module.Node$T@@10) $h@@11))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.Node.content)) (Tclass._module.Node? _module.Node$T@@10))
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
(assert (forall ((_module.UnboundedStack$T@@10 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@10))  (or (= $o@@12 null) (= (dtype $o@@12) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@10))))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($Is refType $o@@12 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@10)))
)))
(assert (forall ((_module.Node$T@@11 T@U) ($o@@13 T@U) ) (! (= ($Is refType $o@@13 (Tclass._module.Node? _module.Node$T@@11))  (or (= $o@@13 null) (= (dtype $o@@13) (Tclass._module.Node? _module.Node$T@@11))))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($Is refType $o@@13 (Tclass._module.Node? _module.Node$T@@11)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((s@@7 T@U) (i Int) (v@@4 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@7)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@4) i) v@@4)) (=> (or (not (= i (|Seq#Length| s@@7))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@4) i) (|Seq#Index| s@@7 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@7 v@@4) i))
)))
(assert (forall ((_module.Node$T@@12 T@U) ($h@@12 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._module.Node? _module.Node$T@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) _module.Node.footprint)) (TSet (Tclass._module.Node _module.Node$T@@12)) $h@@12))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) _module.Node.footprint)) (Tclass._module.Node? _module.Node$T@@12))
)))
(assert (forall ((_module.UnboundedStack$T@@11 T@U) ($h@@13 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@11)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) _module.UnboundedStack.footprint)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) _module.UnboundedStack.footprint)) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@11))
)))
(assert (forall ((_module.UnboundedStack$T@@12 T@U) ($h@@14 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) _module.UnboundedStack.footprint)) (TSet Tclass._System.object) $h@@14))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) _module.UnboundedStack.footprint)) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@12))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((s@@8 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@8))) (= (|Seq#Length| (|Seq#Take| s@@8 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@8 n@@5)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
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
(assert (forall (($o@@17 T@U) ) (! ($Is refType $o@@17 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@17 Tclass._System.object?))
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
(assert (forall ((_module.UnboundedStack$T@@13 T@U) ) (! (= (Tclass._module.UnboundedStack?_0 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@13)) _module.UnboundedStack$T@@13)
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@13))
)))
(assert (forall ((_module.Node$T@@13 T@U) ) (! (= (Tclass._module.Node?_0 (Tclass._module.Node? _module.Node$T@@13)) _module.Node$T@@13)
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( (Tclass._module.Node? _module.Node$T@@13))
)))
(assert (forall ((_module.UnboundedStack$T@@14 T@U) ) (! (= (Tclass._module.UnboundedStack_0 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@14)) _module.UnboundedStack$T@@14)
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (Tclass._module.UnboundedStack _module.UnboundedStack$T@@14))
)))
(assert (forall ((_module.Node$T@@14 T@U) ) (! (= (Tclass._module.Node_0 (Tclass._module.Node _module.Node$T@@14)) _module.Node$T@@14)
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( (Tclass._module.Node _module.Node$T@@14))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_module.Node$T@@15 T@U) ($ly@@1 T@U) ($Heap@@2 T@U) (this@@5 T@U) ) (! (= (_module.Node.Valid _module.Node$T@@15 ($LS $ly@@1) $Heap@@2 this@@5) (_module.Node.Valid _module.Node$T@@15 $ly@@1 $Heap@@2 this@@5))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( (_module.Node.Valid _module.Node$T@@15 ($LS $ly@@1) $Heap@@2 this@@5))
)))
(assert (forall ((s@@10 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@10 val@@1)) s@@10) (= (|Seq#Build_inv1| (|Seq#Build| s@@10 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@10 val@@1))
)))
(assert (forall ((_module.UnboundedStack$T@@15 T@U) ($h@@15 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@15)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) _module.UnboundedStack.top)) (Tclass._module.Node? _module.UnboundedStack$T@@15)))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) _module.UnboundedStack.top)) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@15))
)))
(assert (forall ((_module.UnboundedStack$T@@16 T@U) ($h@@16 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@16)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) _module.UnboundedStack.content)) (TSeq _module.UnboundedStack$T@@16)))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) _module.UnboundedStack.content)) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@16))
)))
(assert (forall ((_module.Node$T@@16 T@U) ($h@@17 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._module.Node? _module.Node$T@@16)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@16)))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@16))
)))
(assert (forall ((_module.Node$T@@17 T@U) ($h@@18 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._module.Node? _module.Node$T@@17)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) _module.Node.prev)) (Tclass._module.Node? _module.Node$T@@17)))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) _module.Node.prev)) (Tclass._module.Node? _module.Node$T@@17))
)))
(assert (forall ((_module.Node$T@@18 T@U) ($h@@19 T@U) ($o@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._module.Node? _module.Node$T@@18)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@22) _module.Node.content)) (TSeq _module.Node$T@@18)))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@22) _module.Node.content)) (Tclass._module.Node? _module.Node$T@@18))
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
(assert (forall ((_module.UnboundedStack$T@@17 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@17)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@17))))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($IsBox bx@@7 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@17)))
)))
(assert (forall ((_module.Node$T@@19 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.Node? _module.Node$T@@19)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._module.Node? _module.Node$T@@19))))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsBox bx@@8 (Tclass._module.Node? _module.Node$T@@19)))
)))
(assert (forall ((_module.UnboundedStack$T@@18 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@18)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.UnboundedStack _module.UnboundedStack$T@@18))))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsBox bx@@9 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@18)))
)))
(assert (forall ((_module.Node$T@@20 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.Node _module.Node$T@@20)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._module.Node _module.Node$T@@20))))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($IsBox bx@@10 (Tclass._module.Node _module.Node$T@@20)))
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
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (and (=> (< n@@8 (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s0@@1 n@@8))) (=> (<= (|Seq#Length| s0@@1) n@@8) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s1@@1 (- n@@8 (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8))
)))
(assert (forall ((_module.Node$T@@21 T@U) ($h@@20 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass._module.Node? _module.Node$T@@21)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@23) _module.Node.footprint)) (TSet (Tclass._module.Node _module.Node$T@@21))))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@23) _module.Node.footprint)) (Tclass._module.Node? _module.Node$T@@21))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@24 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3|) $o@@24 $f@@2))  (=> (and (or (not (= $o@@24 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@24) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@24))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |619|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3|) $o@@24 $f@@2))
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
(declare-fun $Heap@@3 () T@U)
(declare-fun this@@6 () T@U)
(declare-fun _module.UnboundedStack$T@@19 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |result#0@0| () T@U)
(declare-fun |result#0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.UnboundedStack.Pop)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#5| null $Heap@@3 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.UnboundedStack.footprint)))) (=> (and ($IsAllocBox ($Box refType this@@6) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@19) $Heap@@3) (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@19 $Heap@@3 this@@6)) (=> (and (and (and (and (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@19 $Heap@@3 this@@6) ($IsAllocBox ($Box refType this@@6) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@19) $Heap@@3)) (and (|_module.UnboundedStack.IsEmpty#canCall| _module.UnboundedStack$T@@19 $Heap@@3 this@@6) (not (_module.UnboundedStack.IsEmpty _module.UnboundedStack$T@@19 $Heap@@3 this@@6)))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@25) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@25)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.UnboundedStack.footprint)) ($Box refType $o@@25))))
 :qid |SplitExprdfy.22:10|
 :skolemid |583|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@25))
)) ($HeapSucc $Heap@@3 $Heap@0)))) (and (and (and ($IsBox |result#0@0| _module.UnboundedStack$T@@19) ($IsAllocBox |result#0@0| _module.UnboundedStack$T@@19 $Heap@0)) ($IsAllocBox ($Box refType this@@6) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@19) $Heap@0)) (and (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@19 $Heap@0 this@@6) (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@19 $Heap@0 this@@6)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this@@6 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@19) $Heap@@3)) (=> ($IsAlloc refType this@@6 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@19) $Heap@@3) (=> (= (ControlFlow 0 2) (- 0 1)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.UnboundedStack.content)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@19)) ($IsAlloc refType this@@6 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@19) $Heap@@3)))) (and (and ($IsBox |result#0| _module.UnboundedStack$T@@19) ($IsAllocBox |result#0| _module.UnboundedStack$T@@19 $Heap@@3)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 4) 2)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
