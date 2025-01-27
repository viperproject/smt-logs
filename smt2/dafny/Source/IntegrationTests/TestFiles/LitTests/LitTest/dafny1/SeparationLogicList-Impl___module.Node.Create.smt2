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
(declare-fun class._module.Node? () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$data () T@U)
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
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Node (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Node.next () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Node.ListSegment (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |_module.Node.ListSegment#canCall| (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Node?_0 (T@U) T@U)
(declare-fun Tclass._module.Node_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TagSet TagSeq alloc allocName class._module.Node? Tagclass._module.Node? Tagclass._module.Node tytagFamily$Node field$data field$next)
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
 :skolemid |541|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.Node.data) (Tclass._module.Node? _module.Node$T))
)))
(assert (forall ((_module.Node$T@@0 T@U) ($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.Node? _module.Node$T@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.Node.data) _module.Node$T@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.Node.data) (Tclass._module.Node? _module.Node$T@@0))
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
(assert (forall ((a@@2 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b y@@0) (not (|Set#IsMember| (|Set#Difference| a@@2 b) y@@0)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@2 b) (|Set#IsMember| b y@@0))
)))
(assert (forall ((_module.Node$T@@1 T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Node _module.Node$T@@1) $h@@1) ($IsAlloc refType |c#0| (Tclass._module.Node? _module.Node$T@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Node _module.Node$T@@1) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Node? _module.Node$T@@1) $h@@1))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
(assert (forall ((s@@0 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@0)) (and (= (|Seq#Take| (|Seq#Append| s@@0 t) n@@0) s@@0) (= (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@0 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0))
)))
(assert (forall ((_module.Node$T@@2 T@U) ($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._module.Node? _module.Node$T@@2) $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._module.Node? _module.Node$T@@2) $h@@2))
)))
(assert (= (FDim _module.Node.data) 0))
(assert (= (FieldOfDecl class._module.Node? field$data) _module.Node.data))
(assert  (not ($IsGhostField _module.Node.data)))
(assert (= (FDim _module.Node.next) 0))
(assert (= (FieldOfDecl class._module.Node? field$next) _module.Node.next))
(assert  (not ($IsGhostField _module.Node.next)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
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
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert  (and (= (Ctor SeqType) 7) (= (Ctor SetType) 8)))
(assert (forall ((_module.Node$T@@3 T@U) ($ly T@U) ($h0 T@U) ($h1 T@U) (|q#0| T@U) (|from#0| T@U) (|to#0| T@U) (|S#0| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|_module.Node.ListSegment#canCall| _module.Node$T@@3 $h0 |q#0| |from#0| |to#0| |S#0|) (and (and (and ($Is SeqType |q#0| (TSeq _module.Node$T@@3)) ($Is refType |from#0| (Tclass._module.Node? _module.Node$T@@3))) ($Is refType |to#0| (Tclass._module.Node? _module.Node$T@@3))) ($Is SetType |S#0| (TSet (Tclass._module.Node _module.Node$T@@3)))))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@2 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (|Set#IsMember| |S#0| ($Box refType $o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@2) $f)))
 :qid |unknown.0:0|
 :skolemid |547|
)) (= (_module.Node.ListSegment _module.Node$T@@3 $ly $h0 |q#0| |from#0| |to#0| |S#0|) (_module.Node.ListSegment _module.Node$T@@3 $ly $h1 |q#0| |from#0| |to#0| |S#0|))))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Node.ListSegment _module.Node$T@@3 $ly $h1 |q#0| |from#0| |to#0| |S#0|))
)))
(assert (forall ((s@@2 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@2 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Node$T@@4 T@U) ($ly@@0 T@U) ($Heap T@U) (|q#0@@0| T@U) (|from#0@@0| T@U) (|to#0@@0| T@U) (|S#0@@0| T@U) ) (!  (=> (or (|_module.Node.ListSegment#canCall| _module.Node$T@@4 $Heap |q#0@@0| |from#0@@0| |to#0@@0| |S#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap) ($Is SeqType |q#0@@0| (TSeq _module.Node$T@@4))) ($Is refType |from#0@@0| (Tclass._module.Node? _module.Node$T@@4))) ($Is refType |to#0@@0| (Tclass._module.Node? _module.Node$T@@4))) ($Is SetType |S#0@@0| (TSet (Tclass._module.Node _module.Node$T@@4)))))) (and (=> (not (|Seq#Equal| |q#0@@0| |Seq#Empty|)) (=> (or (not (= |from#0@@0| null)) (not true)) (=> (|Set#IsMember| |S#0@@0| ($Box refType |from#0@@0|)) (=> (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |from#0@@0|) _module.Node.data) (|Seq#Index| |q#0@@0| (LitInt 0))) (|_module.Node.ListSegment#canCall| _module.Node$T@@4 $Heap (|Seq#Drop| |q#0@@0| (LitInt 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |from#0@@0|) _module.Node.next)) |to#0@@0| (|Set#Difference| |S#0@@0| (|Set#UnionOne| |Set#Empty| ($Box refType |from#0@@0|)))))))) (= (_module.Node.ListSegment _module.Node$T@@4 ($LS $ly@@0) $Heap |q#0@@0| |from#0@@0| |to#0@@0| |S#0@@0|) (ite (|Seq#Equal| |q#0@@0| |Seq#Empty|) (= |from#0@@0| |to#0@@0|)  (and (and (and (or (not (= |from#0@@0| null)) (not true)) (|Set#IsMember| |S#0@@0| ($Box refType |from#0@@0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |from#0@@0|) _module.Node.data) (|Seq#Index| |q#0@@0| (LitInt 0)))) (_module.Node.ListSegment _module.Node$T@@4 $ly@@0 $Heap (|Seq#Drop| |q#0@@0| (LitInt 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |from#0@@0|) _module.Node.next)) |to#0@@0| (|Set#Difference| |S#0@@0| (|Set#UnionOne| |Set#Empty| ($Box refType |from#0@@0|)))))))))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (_module.Node.ListSegment _module.Node$T@@4 ($LS $ly@@0) $Heap |q#0@@0| |from#0@@0| |to#0@@0| |S#0@@0|) ($IsGoodHeap $Heap))
))))
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
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((_module.Node$T@@5 T@U) ($ly@@1 T@U) ($Heap@@0 T@U) (|q#0@@1| T@U) (|from#0@@1| T@U) (|to#0@@1| T@U) (|S#0@@1| T@U) ) (! (= (_module.Node.ListSegment _module.Node$T@@5 ($LS $ly@@1) $Heap@@0 |q#0@@1| |from#0@@1| |to#0@@1| |S#0@@1|) (_module.Node.ListSegment _module.Node$T@@5 $ly@@1 $Heap@@0 |q#0@@1| |from#0@@1| |to#0@@1| |S#0@@1|))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( (_module.Node.ListSegment _module.Node$T@@5 ($LS $ly@@1) $Heap@@0 |q#0@@1| |from#0@@1| |to#0@@1| |S#0@@1|))
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
(assert (forall ((_module.Node$T@@6 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.Node _module.Node$T@@6))  (and ($Is refType |c#0@@0| (Tclass._module.Node? _module.Node$T@@6)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.Node _module.Node$T@@6)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.Node? _module.Node$T@@6)))
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
(assert (forall ((_module.Node$T@@7 T@U) ) (!  (and (= (Tag (Tclass._module.Node? _module.Node$T@@7)) Tagclass._module.Node?) (= (TagFamily (Tclass._module.Node? _module.Node$T@@7)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (Tclass._module.Node? _module.Node$T@@7))
)))
(assert (forall ((_module.Node$T@@8 T@U) ) (!  (and (= (Tag (Tclass._module.Node _module.Node$T@@8)) Tagclass._module.Node) (= (TagFamily (Tclass._module.Node _module.Node$T@@8)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (Tclass._module.Node _module.Node$T@@8))
)))
(assert (forall ((_module.Node$T@@9 T@U) ($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._module.Node? _module.Node$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@9) $h@@3))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@9))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((_module.Node$T@@10 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._module.Node? _module.Node$T@@10))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._module.Node? _module.Node$T@@10))))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($Is refType $o@@4 (Tclass._module.Node? _module.Node$T@@10)))
)))
(assert (forall ((s@@7 T@U) (i Int) (v@@4 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@7)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@4) i) v@@4)) (=> (or (not (= i (|Seq#Length| s@@7))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@4) i) (|Seq#Index| s@@7 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@7 v@@4) i))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (|Seq#Equal| a@@4 b@@1) (= a@@4 b@@1))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@4 b@@1))
)))
(assert (forall ((s@@8 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@8))) (= (|Seq#Length| (|Seq#Take| s@@8 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@8 n@@5)))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@5 c)) (not true)) (=> (and ($HeapSucc a@@5 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@5 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@5 b@@2) ($HeapSucc b@@2 c))
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
(assert (forall ((v@@6 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@1) h@@3) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@2) ($IsAllocBox bx@@2 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@6 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@1) h@@3))
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
(assert (forall ((_module.Node$T@@11 T@U) ) (! (= (Tclass._module.Node?_0 (Tclass._module.Node? _module.Node$T@@11)) _module.Node$T@@11)
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (Tclass._module.Node? _module.Node$T@@11))
)))
(assert (forall ((_module.Node$T@@12 T@U) ) (! (= (Tclass._module.Node_0 (Tclass._module.Node _module.Node$T@@12)) _module.Node$T@@12)
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( (Tclass._module.Node _module.Node$T@@12))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f@@0))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |699|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f@@0))
)))
(assert (forall ((s@@10 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@10 val@@4)) s@@10) (= (|Seq#Build_inv1| (|Seq#Build| s@@10 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@10 val@@4))
)))
(assert (forall ((_module.Node$T@@13 T@U) ($h@@4 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.Node? _module.Node$T@@13)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@13)))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@13))
)))
(assert (forall ((bx@@3 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@3 (TSet t@@9)))
)))
(assert (forall ((bx@@4 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@4 (TSeq t@@10)))
)))
(assert (forall ((_module.Node$T@@14 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.Node? _module.Node$T@@14)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass._module.Node? _module.Node$T@@14))))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsBox bx@@5 (Tclass._module.Node? _module.Node$T@@14)))
)))
(assert (forall ((_module.Node$T@@15 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.Node _module.Node$T@@15)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._module.Node _module.Node$T@@15))))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($IsBox bx@@6 (Tclass._module.Node _module.Node$T@@15)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@9 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@9))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@9))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@9)))
)))
(assert (forall ((s@@11 T@U) (n@@6 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@6) (<= n@@6 k@@2)) (< k@@2 (|Seq#Length| s@@11))) (= (|Seq#Index| (|Seq#Drop| s@@11 n@@6) (- k@@2 n@@6)) (|Seq#Index| s@@11 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@11 k@@2) (|Seq#Drop| s@@11 n@@6))
)))
(assert (forall ((s@@12 T@U) (m@@4 Int) (n@@7 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@7)) (<= (+ m@@4 n@@7) (|Seq#Length| s@@12))) (= (|Seq#Drop| (|Seq#Drop| s@@12 m@@4) n@@7) (|Seq#Drop| s@@12 (+ m@@4 n@@7))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@12 m@@4) n@@7))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (and (=> (< n@@8 (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s0@@1 n@@8))) (=> (<= (|Seq#Length| s0@@1) n@@8) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s1@@1 (- n@@8 (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
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
(declare-fun _module.Node$T@@16 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |x#0| () T@U)
(declare-fun |l#0@0| () T@U)
(declare-fun |S#0@1| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |q##1_0@0| () T@U)
(declare-fun |S##1_0@0| () T@U)
(declare-fun |call6formal@l#0| () T@U)
(declare-fun call0formal@_module.Node$T () T@U)
(declare-fun |call7formal@U#0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call6formal@l#0@0| () T@U)
(declare-fun |call7formal@U#0@0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |S#0@0| () T@U)
(declare-fun |defass#l#0| () Bool)
(declare-fun |l#0@@0| () T@U)
(declare-fun |S#0@@2| () T@U)
(set-info :boogie-vc-id Impl$$_module.Node.Create)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon3_correct  (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (=> (|Seq#Equal| (|Seq#Build| |Seq#Empty| |x#0|) |Seq#Empty|) (= |l#0@0| null))))) (=> (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (=> (|Seq#Equal| (|Seq#Build| |Seq#Empty| |x#0|) |Seq#Empty|) (= |l#0@0| null)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (=> (not (|Seq#Equal| (|Seq#Build| |Seq#Empty| |x#0|) |Seq#Empty|)) (or (not (= |l#0@0| null)) (not true)))))) (=> (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (=> (not (|Seq#Equal| (|Seq#Build| |Seq#Empty| |x#0|) |Seq#Empty|)) (or (not (= |l#0@0| null)) (not true))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (=> (not (|Seq#Equal| (|Seq#Build| |Seq#Empty| |x#0|) |Seq#Empty|)) (|Set#IsMember| |S#0@1| ($Box refType |l#0@0|)))))) (=> (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (=> (not (|Seq#Equal| (|Seq#Build| |Seq#Empty| |x#0|) |Seq#Empty|)) (|Set#IsMember| |S#0@1| ($Box refType |l#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (=> (not (|Seq#Equal| (|Seq#Build| |Seq#Empty| |x#0|) |Seq#Empty|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |l#0@0|) _module.Node.data) (|Seq#Index| (|Seq#Build| |Seq#Empty| |x#0|) (LitInt 0))))))) (=> (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (=> (not (|Seq#Equal| (|Seq#Build| |Seq#Empty| |x#0|) |Seq#Empty|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |l#0@0|) _module.Node.data) (|Seq#Index| (|Seq#Build| |Seq#Empty| |x#0|) (LitInt 0)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (=> (not (|Seq#Equal| (|Seq#Build| |Seq#Empty| |x#0|) |Seq#Empty|)) (_module.Node.ListSegment _module.Node$T@@16 ($LS ($LS $LZ)) $Heap@4 (|Seq#Drop| (|Seq#Build| |Seq#Empty| |x#0|) (LitInt 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |l#0@0|) _module.Node.next)) null (|Set#Difference| |S#0@1| (|Set#UnionOne| |Set#Empty| ($Box refType |l#0@0|)))))))) (=> (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@4 (|Seq#Build| |Seq#Empty| |x#0|) |l#0@0| null |S#0@1|) (=> (not (|Seq#Equal| (|Seq#Build| |Seq#Empty| |x#0|) |Seq#Empty|)) (_module.Node.ListSegment _module.Node$T@@16 ($LS ($LS $LZ)) $Heap@4 (|Seq#Drop| (|Seq#Build| |Seq#Empty| |x#0|) (LitInt 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |l#0@0|) _module.Node.next)) null (|Set#Difference| |S#0@1| (|Set#UnionOne| |Set#Empty| ($Box refType |l#0@0|))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (and (forall (($o@@7 T@U) ) (!  (=> (|Set#IsMember| |S#0@1| ($Box refType $o@@7)) (or (not (= $o@@7 null)) (not true)))
 :qid |SeparationLogicListdfy.24:45|
 :skolemid |562|
 :pattern (  (or (not (= $o@@7 null)) (not true)))
)) (forall (($o@@8 T@U) ) (!  (=> (|Set#IsMember| |S#0@1| ($Box refType $o@@8)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@8) alloc)))))
 :qid |SeparationLogicListdfy.24:45|
 :skolemid |563|
 :pattern ( (|Set#IsMember| |S#0@1| ($Box refType $o@@8)))
)))))))))))))))))
(let ((anon4_Else_correct  (=> (and (= |q##1_0@0| (Lit SeqType |Seq#Empty|)) (= |S##1_0@0| (Lit SetType |Set#Empty|))) (=> (and (and ($Is refType |call6formal@l#0| (Tclass._module.Node call0formal@_module.Node$T)) ($IsAlloc refType |call6formal@l#0| (Tclass._module.Node call0formal@_module.Node$T) $Heap@@1)) (and ($Is SetType |call7formal@U#0| (TSet (Tclass._module.Node call0formal@_module.Node$T))) ($IsAlloc SetType |call7formal@U#0| (TSet (Tclass._module.Node call0formal@_module.Node$T)) $Heap@@1))) (and (=> (= (ControlFlow 0 17) (- 0 22)) (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (=> (|Seq#Equal| |q##1_0@0| |Seq#Empty|) (= null null))))) (=> (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (=> (|Seq#Equal| |q##1_0@0| |Seq#Empty|) (= null null)))) (and (=> (= (ControlFlow 0 17) (- 0 21)) (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (=> (not (|Seq#Equal| |q##1_0@0| |Seq#Empty|)) (or (not (= null null)) (not true)))))) (=> (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (=> (not (|Seq#Equal| |q##1_0@0| |Seq#Empty|)) (or (not (= null null)) (not true))))) (and (=> (= (ControlFlow 0 17) (- 0 20)) (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (=> (not (|Seq#Equal| |q##1_0@0| |Seq#Empty|)) (|Set#IsMember| |S##1_0@0| ($Box refType null)))))) (=> (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (=> (not (|Seq#Equal| |q##1_0@0| |Seq#Empty|)) (|Set#IsMember| |S##1_0@0| ($Box refType null))))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (=> (not (|Seq#Equal| |q##1_0@0| |Seq#Empty|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 null) _module.Node.data) (|Seq#Index| |q##1_0@0| (LitInt 0))))))) (=> (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (=> (not (|Seq#Equal| |q##1_0@0| |Seq#Empty|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 null) _module.Node.data) (|Seq#Index| |q##1_0@0| (LitInt 0)))))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (=> (not (|Seq#Equal| |q##1_0@0| |Seq#Empty|)) (_module.Node.ListSegment _module.Node$T@@16 ($LS ($LS $LZ)) $Heap@@1 (|Seq#Drop| |q##1_0@0| (LitInt 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 null) _module.Node.next)) null (|Set#Difference| |S##1_0@0| (|Set#UnionOne| |Set#Empty| ($Box refType null)))))))) (=> (=> (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (or (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@@1 |q##1_0@0| null null |S##1_0@0|) (=> (not (|Seq#Equal| |q##1_0@0| |Seq#Empty|)) (_module.Node.ListSegment _module.Node$T@@16 ($LS ($LS $LZ)) $Heap@@1 (|Seq#Drop| |q##1_0@0| (LitInt 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 null) _module.Node.next)) null (|Set#Difference| |S##1_0@0| (|Set#UnionOne| |Set#Empty| ($Box refType null))))))) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and ($Is refType |call6formal@l#0@0| (Tclass._module.Node _module.Node$T@@16)) ($IsAlloc refType |call6formal@l#0@0| (Tclass._module.Node _module.Node$T@@16) $Heap@3))) (=> (and (and (and (and ($Is SetType |call7formal@U#0@0| (TSet (Tclass._module.Node _module.Node$T@@16))) ($IsAlloc SetType |call7formal@U#0@0| (TSet (Tclass._module.Node _module.Node$T@@16)) $Heap@3)) (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@3 (|Seq#Append| (|Seq#Build| |Seq#Empty| |x#0|) |q##1_0@0|) |call6formal@l#0@0| null |call7formal@U#0@0|)) (and (|_module.Node.ListSegment#canCall| _module.Node$T@@16 $Heap@3 (|Seq#Append| (|Seq#Build| |Seq#Empty| |x#0|) |q##1_0@0|) |call6formal@l#0@0| null |call7formal@U#0@0|) (and (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@3 (|Seq#Append| (|Seq#Build| |Seq#Empty| |x#0|) |q##1_0@0|) |call6formal@l#0@0| null |call7formal@U#0@0|) (ite (|Seq#Equal| (|Seq#Append| (|Seq#Build| |Seq#Empty| |x#0|) |q##1_0@0|) |Seq#Empty|) (= |call6formal@l#0@0| null)  (and (and (and (or (not (= |call6formal@l#0@0| null)) (not true)) (|Set#IsMember| |call7formal@U#0@0| ($Box refType |call6formal@l#0@0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |call6formal@l#0@0|) _module.Node.data) (|Seq#Index| (|Seq#Append| (|Seq#Build| |Seq#Empty| |x#0|) |q##1_0@0|) (LitInt 0)))) (_module.Node.ListSegment _module.Node$T@@16 ($LS $LZ) $Heap@3 (|Seq#Drop| (|Seq#Append| (|Seq#Build| |Seq#Empty| |x#0|) |q##1_0@0|) (LitInt 1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |call6formal@l#0@0|) _module.Node.next)) null (|Set#Difference| |call7formal@U#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType |call6formal@l#0@0|))))))))) (and (and (and (forall (($o@@9 T@U) ) (!  (=> (and (|Set#IsMember| |call7formal@U#0@0| ($Box refType $o@@9)) (not (|Set#IsMember| |S##1_0@0| ($Box refType $o@@9)))) (or (not (= $o@@9 null)) (not true)))
 :qid |SeparationLogicListdfy.40:49|
 :skolemid |569|
 :pattern (  (or (not (= $o@@9 null)) (not true)))
)) (forall (($o@@10 T@U) ) (!  (=> (and (|Set#IsMember| |call7formal@U#0@0| ($Box refType $o@@10)) (not (|Set#IsMember| |S##1_0@0| ($Box refType $o@@10)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@10) alloc)))))
 :qid |SeparationLogicListdfy.40:49|
 :skolemid |570|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@10) alloc)))
))) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@11)))
 :qid |SeparationLogicListdfy.38:17|
 :skolemid |571|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11))
)) ($HeapSucc $Heap@@1 $Heap@3))) (and (and (= $Heap@4 $Heap@3) (= |l#0@0| |call6formal@l#0@0|)) (and (= |S#0@1| |call7formal@U#0@0|) (= (ControlFlow 0 17) 2))))) anon3_correct))))))))))))))))
(let ((anon4_Then_correct  (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._module.Node? _module.Node$T@@16))) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 9) (- 0 16)) true) (and (=> (= (ControlFlow 0 9) (- 0 15)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 9) (- 0 14)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.Node.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.Node.data)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) _module.Node.data |x#0|))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 9) (- 0 13)) true) (and (=> (= (ControlFlow 0 9) (- 0 12)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.Node.next))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.Node.next)) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Node.next ($Box refType null)))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 9) (- 0 10)) true) (=> (= |S#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0))) (=> (and (and (= $Heap@4 $Heap@2) (= |l#0@0| $nw@0)) (and (= |S#0@1| |S#0@0|) (= (ControlFlow 0 9) 2))) anon3_correct)))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@1 alloc false)) (and (=> (= (ControlFlow 0 23) 9) anon4_Then_correct) (=> (= (ControlFlow 0 23) 17) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and ($IsBox |x#0| _module.Node$T@@16) ($IsAllocBox |x#0| _module.Node$T@@16 $Heap@@1)) (=> |defass#l#0| (and ($Is refType |l#0@@0| (Tclass._module.Node _module.Node$T@@16)) ($IsAlloc refType |l#0@@0| (Tclass._module.Node _module.Node$T@@16) $Heap@@1)))) (and (and ($Is SetType |S#0@@2| (TSet (Tclass._module.Node _module.Node$T@@16))) ($IsAlloc SetType |S#0@@2| (TSet (Tclass._module.Node _module.Node$T@@16)) $Heap@@1)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 24) 23)))) anon0_correct))))
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
