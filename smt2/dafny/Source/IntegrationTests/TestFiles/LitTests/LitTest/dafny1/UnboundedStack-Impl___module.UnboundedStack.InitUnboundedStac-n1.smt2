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
(declare-fun field$representation () T@U)
(declare-fun field$content () T@U)
(declare-fun field$top () T@U)
(declare-fun field$footprint () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Node.val () T@U)
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
(declare-fun _module.UnboundedStack.IsUnboundedStack (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.UnboundedStack (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun _module.UnboundedStack.representation () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.UnboundedStack? (T@U) T@U)
(declare-fun Tclass._module.Node (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.UnboundedStack.content () T@U)
(declare-fun _module.Node.footprint () T@U)
(declare-fun _module.Node.content () T@U)
(declare-fun _module.UnboundedStack.top () T@U)
(declare-fun _module.Node.next () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun _module.Node.Valid (T@U T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.Node.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.UnboundedStack?_0 (T@U) T@U)
(declare-fun Tclass._module.Node?_0 (T@U) T@U)
(declare-fun Tclass._module.UnboundedStack_0 (T@U) T@U)
(declare-fun Tclass._module.Node_0 (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |_module.UnboundedStack.IsUnboundedStack#canCall| (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
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
(assert (distinct TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object class._module.UnboundedStack? Tagclass._module.UnboundedStack? Tagclass._module.Node? Tagclass._module.UnboundedStack class._module.Node? Tagclass._module.Node tytagFamily$object tytagFamily$UnboundedStack tytagFamily$Node field$representation field$content field$top field$footprint field$next field$val)
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
(assert (forall ((_module.Node$T T@U) ($h T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._module.Node? _module.Node$T)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.Node.val) _module.Node$T))
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.Node.val) (Tclass._module.Node? _module.Node$T))
)))
(assert (forall ((_module.Node$T@@0 T@U) ($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.Node? _module.Node$T@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.Node.val) _module.Node$T@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.Node.val) (Tclass._module.Node? _module.Node$T@@0))
)))
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
(assert (= (Ctor SetType) 7))
(assert (forall ((_module.UnboundedStack$T T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass._module.UnboundedStack _module.UnboundedStack$T)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (or (= $o@@1 this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.UnboundedStack.representation)) ($Box refType $o@@1)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f)))
 :qid |unknown.0:0|
 :skolemid |493|
)) (= (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T $h0 this) (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T $h1 this))))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T $h1 this))
)))
(assert (forall ((_module.UnboundedStack$T@@0 T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.UnboundedStack _module.UnboundedStack$T@@0) $h@@1) ($IsAlloc refType |c#0| (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@0) $h@@1))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.UnboundedStack _module.UnboundedStack$T@@0) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@0) $h@@1))
)))
(assert (forall ((_module.Node$T@@1 T@U) (|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.Node _module.Node$T@@1) $h@@2) ($IsAlloc refType |c#0@@0| (Tclass._module.Node? _module.Node$T@@1) $h@@2))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Node _module.Node$T@@1) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Node? _module.Node$T@@1) $h@@2))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
)))
(assert (= (FDim _module.UnboundedStack.representation) 0))
(assert (= (FieldOfDecl class._module.UnboundedStack? field$representation) _module.UnboundedStack.representation))
(assert ($IsGhostField _module.UnboundedStack.representation))
(assert (= (FDim _module.UnboundedStack.content) 0))
(assert (= (FieldOfDecl class._module.UnboundedStack? field$content) _module.UnboundedStack.content))
(assert ($IsGhostField _module.UnboundedStack.content))
(assert (= (FDim _module.Node.footprint) 0))
(assert (= (FieldOfDecl class._module.Node? field$footprint) _module.Node.footprint))
(assert ($IsGhostField _module.Node.footprint))
(assert (= (FDim _module.Node.content) 0))
(assert (= (FieldOfDecl class._module.Node? field$content) _module.Node.content))
(assert ($IsGhostField _module.Node.content))
(assert (forall ((_module.UnboundedStack$T@@1 T@U) ($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@1) $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@1) $h@@4))
)))
(assert (forall ((_module.Node$T@@2 T@U) ($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._module.Node? _module.Node$T@@2) $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._module.Node? _module.Node$T@@2) $h@@5))
)))
(assert (= (FDim _module.UnboundedStack.top) 0))
(assert (= (FieldOfDecl class._module.UnboundedStack? field$top) _module.UnboundedStack.top))
(assert  (not ($IsGhostField _module.UnboundedStack.top)))
(assert (= (FDim _module.Node.next) 0))
(assert (= (FieldOfDecl class._module.Node? field$next) _module.Node.next))
(assert  (not ($IsGhostField _module.Node.next)))
(assert (= (FDim _module.Node.val) 0))
(assert (= (FieldOfDecl class._module.Node? field$val) _module.Node.val))
(assert  (not ($IsGhostField _module.Node.val)))
(assert (forall (($o@@4 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._System.object? $h@@6)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._System.object? $h@@6))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|Set#Subset| a@@2 b) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@2) (|Set#IsMember| b o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@2 o@@2))
 :pattern ( (|Set#IsMember| b o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@2 b))
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
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
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
(assert (forall ((_module.UnboundedStack$T@@2 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.UnboundedStack _module.UnboundedStack$T@@2))  (and ($Is refType |c#0@@2| (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@2)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.UnboundedStack _module.UnboundedStack$T@@2)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@2)))
)))
(assert (forall ((_module.Node$T@@3 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.Node _module.Node$T@@3))  (and ($Is refType |c#0@@3| (Tclass._module.Node? _module.Node$T@@3)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Node _module.Node$T@@3)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Node? _module.Node$T@@3)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((_module.Node$T@@4 T@U) ($ly T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass._module.Node _module.Node$T@@4)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@5 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (or (= $o@@5 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@0) _module.Node.footprint)) ($Box refType $o@@5)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@5) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@5) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |529|
)) (= (_module.Node.Valid _module.Node$T@@4 $ly $h0@@0 this@@0) (_module.Node.Valid _module.Node$T@@4 $ly $h1@@0 this@@0))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Node.Valid _module.Node$T@@4 $ly $h1@@0 this@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@2) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@2))
)))
(assert (forall ((_module.UnboundedStack$T@@3 T@U) ) (!  (and (= (Tag (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@3)) Tagclass._module.UnboundedStack?) (= (TagFamily (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@3)) tytagFamily$UnboundedStack))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@3))
)))
(assert (forall ((_module.Node$T@@5 T@U) ) (!  (and (= (Tag (Tclass._module.Node? _module.Node$T@@5)) Tagclass._module.Node?) (= (TagFamily (Tclass._module.Node? _module.Node$T@@5)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (Tclass._module.Node? _module.Node$T@@5))
)))
(assert (forall ((_module.UnboundedStack$T@@4 T@U) ) (!  (and (= (Tag (Tclass._module.UnboundedStack _module.UnboundedStack$T@@4)) Tagclass._module.UnboundedStack) (= (TagFamily (Tclass._module.UnboundedStack _module.UnboundedStack$T@@4)) tytagFamily$UnboundedStack))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( (Tclass._module.UnboundedStack _module.UnboundedStack$T@@4))
)))
(assert (forall ((_module.Node$T@@6 T@U) ) (!  (and (= (Tag (Tclass._module.Node _module.Node$T@@6)) Tagclass._module.Node) (= (TagFamily (Tclass._module.Node _module.Node$T@@6)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (Tclass._module.Node _module.Node$T@@6))
)))
(assert (forall ((_module.UnboundedStack$T@@5 T@U) ($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.UnboundedStack.content)) (TSeq _module.UnboundedStack$T@@5) $h@@7))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.UnboundedStack.content)) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@5))
)))
(assert (forall ((_module.UnboundedStack$T@@6 T@U) ($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.UnboundedStack.top)) (Tclass._module.Node? _module.UnboundedStack$T@@6) $h@@8))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.UnboundedStack.top)) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@6))
)))
(assert (forall ((_module.Node$T@@7 T@U) ($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._module.Node? _module.Node$T@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.Node.content)) (TSeq _module.Node$T@@7) $h@@9))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.Node.content)) (Tclass._module.Node? _module.Node$T@@7))
)))
(assert (forall ((_module.Node$T@@8 T@U) ($h@@10 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._module.Node? _module.Node$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@8) $h@@10))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@8))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@10 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f@@1))  (=> (and (or (not (= $o@@10 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@10) |l#2|)))) (= $o@@10 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |544|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f@@1))
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
(assert (forall ((_module.UnboundedStack$T@@7 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@7))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@7))))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@11 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@7)))
)))
(assert (forall ((_module.Node$T@@9 T@U) ($o@@12 T@U) ) (! (= ($Is refType $o@@12 (Tclass._module.Node? _module.Node$T@@9))  (or (= $o@@12 null) (= (dtype $o@@12) (Tclass._module.Node? _module.Node$T@@9))))
 :qid |unknown.0:0|
 :skolemid |517|
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Node$T@@10 T@U) ($ly@@0 T@U) ($Heap T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Node.Valid#canCall| _module.Node$T@@10 $Heap this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass._module.Node _module.Node$T@@10)) ($IsAlloc refType this@@1 (Tclass._module.Node _module.Node$T@@10) $Heap)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.footprint)) ($Box refType this@@1)) (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.content)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.val)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.footprint))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next))) _module.Node.footprint)) ($Box refType this@@1))) (=> (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.content)) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.val)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next))) _module.Node.content)))) (|_module.Node.Valid#canCall| _module.Node$T@@10 $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)))))))))) (= (_module.Node.Valid _module.Node$T@@10 ($LS $ly@@0) $Heap this@@1)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.footprint)) ($Box refType this@@1)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.content)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.val))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.footprint)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next))) _module.Node.footprint)) ($Box refType this@@1)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.content)) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.val)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next))) _module.Node.content))))) (_module.Node.Valid _module.Node$T@@10 $ly@@0 $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@1) _module.Node.next)))))))))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (_module.Node.Valid _module.Node$T@@10 ($LS $ly@@0) $Heap this@@1) ($IsGoodHeap $Heap))
))))
(assert (forall ((_module.UnboundedStack$T@@8 T@U) ($h@@11 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@8)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) _module.UnboundedStack.representation)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) _module.UnboundedStack.representation)) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@8))
)))
(assert (forall ((_module.Node$T@@11 T@U) ($h@@12 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._module.Node? _module.Node$T@@11)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) _module.Node.footprint)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) _module.Node.footprint)) (Tclass._module.Node? _module.Node$T@@11))
)))
(assert (forall ((_module.UnboundedStack$T@@9 T@U) ($h@@13 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) _module.UnboundedStack.representation)) (TSet Tclass._System.object) $h@@13))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) _module.UnboundedStack.representation)) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@9))
)))
(assert (forall ((_module.Node$T@@12 T@U) ($h@@14 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._module.Node? _module.Node$T@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) _module.Node.footprint)) (TSet Tclass._System.object) $h@@14))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) _module.Node.footprint)) (Tclass._module.Node? _module.Node$T@@12))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@3 b@@0) (= a@@3 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@3 b@@0))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@4 c)) (not true)) (=> (and ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@4 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@2) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@4) ($IsAllocBox bx@@4 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@5 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@2) h@@3))
)))
(assert (forall (($o@@17 T@U) ) (! ($Is refType $o@@17 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@17 Tclass._System.object?))
)))
(assert (forall ((v@@6 T@U) (t0@@3 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@3) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@0) t0@@3 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@3) h@@4))
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
(assert (forall ((_module.UnboundedStack$T@@10 T@U) ) (! (= (Tclass._module.UnboundedStack?_0 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@10)) _module.UnboundedStack$T@@10)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@10))
)))
(assert (forall ((_module.Node$T@@13 T@U) ) (! (= (Tclass._module.Node?_0 (Tclass._module.Node? _module.Node$T@@13)) _module.Node$T@@13)
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (Tclass._module.Node? _module.Node$T@@13))
)))
(assert (forall ((_module.UnboundedStack$T@@11 T@U) ) (! (= (Tclass._module.UnboundedStack_0 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@11)) _module.UnboundedStack$T@@11)
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (Tclass._module.UnboundedStack _module.UnboundedStack$T@@11))
)))
(assert (forall ((_module.Node$T@@14 T@U) ) (! (= (Tclass._module.Node_0 (Tclass._module.Node _module.Node$T@@14)) _module.Node$T@@14)
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass._module.Node _module.Node$T@@14))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert (forall ((_module.Node$T@@15 T@U) ($ly@@1 T@U) ($Heap@@0 T@U) (this@@2 T@U) ) (! (= (_module.Node.Valid _module.Node$T@@15 ($LS $ly@@1) $Heap@@0 this@@2) (_module.Node.Valid _module.Node$T@@15 $ly@@1 $Heap@@0 this@@2))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( (_module.Node.Valid _module.Node$T@@15 ($LS $ly@@1) $Heap@@0 this@@2))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((_module.UnboundedStack$T@@12 T@U) ($h@@15 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@12)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) _module.UnboundedStack.content)) (TSeq _module.UnboundedStack$T@@12)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) _module.UnboundedStack.content)) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@12))
)))
(assert (forall ((_module.UnboundedStack$T@@13 T@U) ($h@@16 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@13)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) _module.UnboundedStack.top)) (Tclass._module.Node? _module.UnboundedStack$T@@13)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) _module.UnboundedStack.top)) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@13))
)))
(assert (forall ((_module.Node$T@@16 T@U) ($h@@17 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._module.Node? _module.Node$T@@16)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) _module.Node.content)) (TSeq _module.Node$T@@16)))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) _module.Node.content)) (Tclass._module.Node? _module.Node$T@@16))
)))
(assert (forall ((_module.Node$T@@17 T@U) ($h@@18 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._module.Node? _module.Node$T@@17)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@17)))
 :qid |unknown.0:0|
 :skolemid |525|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@17))
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
(assert (forall ((_module.UnboundedStack$T@@14 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@14)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@14))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@7 (Tclass._module.UnboundedStack? _module.UnboundedStack$T@@14)))
)))
(assert (forall ((_module.Node$T@@18 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.Node? _module.Node$T@@18)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._module.Node? _module.Node$T@@18))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsBox bx@@8 (Tclass._module.Node? _module.Node$T@@18)))
)))
(assert (forall ((_module.UnboundedStack$T@@15 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@15)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.UnboundedStack _module.UnboundedStack$T@@15))))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsBox bx@@9 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@15)))
)))
(assert (forall ((_module.Node$T@@19 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.Node _module.Node$T@@19)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._module.Node _module.Node$T@@19))))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@10 (Tclass._module.Node _module.Node$T@@19)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@8))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@8)))
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
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.UnboundedStack$T@@16 T@U) ($Heap@@1 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@16 $Heap@@1 this@@3) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@16)) ($IsAlloc refType this@@3 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@16) $Heap@@1)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.representation)) ($Box refType this@@3)) (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.content)) |Seq#Empty|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.representation)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top))) _module.Node.footprint)) ($Box refType this@@3))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.representation))) (=> (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.content)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top))) _module.Node.content))) (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@16 $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top)))))))))) (= (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@16 $Heap@@1 this@@3)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.representation)) ($Box refType this@@3)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.content)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.representation)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top))) _module.Node.footprint)) ($Box refType this@@3)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.representation)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.content)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top))) _module.Node.content)))) (_module.Node.Valid _module.UnboundedStack$T@@16 ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.UnboundedStack.top)))))))))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@16 $Heap@@1 this@@3) ($IsGoodHeap $Heap@@1))
))))
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
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun this@@4 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#2@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun _module.UnboundedStack$T@@17 () T@U)
(set-info :boogie-vc-id Impl$$_module.UnboundedStack.InitUnboundedStack)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@2 alloc this@@4)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@4 _module.UnboundedStack.top))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@4 _module.UnboundedStack.top)) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.UnboundedStack.top ($Box refType null)))) ($IsGoodHeap $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@4 _module.UnboundedStack.content))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@4 _module.UnboundedStack.content)) (=> (= |$rhs#1@0| (Lit SeqType |Seq#Empty|)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 this@@4 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@4) _module.UnboundedStack.content ($Box SeqType |$rhs#1@0|)))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@4 _module.UnboundedStack.representation))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@4 _module.UnboundedStack.representation)) (=> (= |$rhs#2@0| (|Set#UnionOne| |Set#Empty| ($Box refType this@@4))) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 this@@4 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@4) _module.UnboundedStack.representation ($Box SetType |$rhs#2@0|)))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.representation)) ($Box refType this@@4))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.representation)) ($Box refType this@@4)))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.content)) |Seq#Empty|))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.content)) |Seq#Empty|)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.representation)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.representation)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.footprint)) ($Box refType this@@4))))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.footprint)) ($Box refType this@@4)))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.representation))))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.representation)))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.content)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.content))))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.content)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.content)))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)))))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.content)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.val)))))))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.content)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.val))))))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next))))))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.footprint)))))))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.footprint))))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next))) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)))))))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next))) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.content)) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.val)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next))) _module.Node.content))))))))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.content)) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.val)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next))) _module.Node.content)))))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)) null)) (not true)) (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS ($LS $LZ)) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)))))))))) (=> (=> (|_module.UnboundedStack.IsUnboundedStack#canCall| _module.UnboundedStack$T@@17 $Heap@2 this@@4) (or (_module.UnboundedStack.IsUnboundedStack _module.UnboundedStack$T@@17 $Heap@2 this@@4) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top)) null)) (not true)) (=> (|_module.Node.Valid#canCall| _module.UnboundedStack$T@@17 $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (or (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS $LZ) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next)) null)) (not true)) (_module.Node.Valid _module.UnboundedStack$T@@17 ($LS ($LS $LZ)) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.top))) _module.Node.next))))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@4) _module.UnboundedStack.content)) |Seq#Empty|))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@17)) ($IsAlloc refType this@@4 (Tclass._module.UnboundedStack _module.UnboundedStack$T@@17) $Heap@@2))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 19) 2))) anon0_correct))))
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
