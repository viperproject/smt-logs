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
(declare-fun TInt () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass.SnapTree.Node () T@U)
(declare-fun Tagclass.SnapTree.Node? () T@U)
(declare-fun class.SnapTree.Node? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$Contents () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$data () T@U)
(declare-fun field$left () T@U)
(declare-fun field$right () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun SnapTree.Tree.IsSorted (Bool T@U) Bool)
(declare-fun |SnapTree.Tree.IsSorted#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.SnapTree.Node? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.SnapTree.Node () T@U)
(declare-fun SnapTree.Node.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun SnapTree.Node.Contents () T@U)
(declare-fun SnapTree.Node.data () T@U)
(declare-fun SnapTree.Node.left () T@U)
(declare-fun SnapTree.Node.right () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun SnapTree.Tree.AllAbove (Int T@U) Bool)
(declare-fun |SnapTree.Tree.AllAbove#canCall| (Int T@U) Bool)
(declare-fun SnapTree.Tree.SortedSplit (T@U Int T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |SnapTree.Tree.SortedSplit#canCall| (T@U Int T@U) Bool)
(declare-fun reveal_SnapTree.Tree.IsSorted () Bool)
(declare-fun |SnapTree.Tree.AllBelow#canCall| (T@U Int) Bool)
(declare-fun SnapTree.Tree.AllBelow (T@U Int) Bool)
(declare-fun SnapTree.Node.NodeValid (T@U Bool T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |SnapTree.Node.NodeValid#canCall| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun reveal_SnapTree.Node.NodeValid () Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun |SnapTree.Node.SortedSplit#canCall| (T@U T@U Int T@U) Bool)
(declare-fun SnapTree.Node.SortedSplit (T@U T@U Int T@U) Bool)
(declare-fun |SnapTree.Node.CombineSplit#canCall| (T@U T@U Int T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun SnapTree.Node.CombineSplit (T@U T@U Int T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass.SnapTree.Node Tagclass.SnapTree.Node? class.SnapTree.Node? tytagFamily$object tytagFamily$Node field$Contents field$Repr field$data field$left field$right)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|c#0| T@U) ) (!  (=> (or (|SnapTree.Tree.IsSorted#canCall| |c#0|) (and (< 0 $FunctionContextHeight) ($Is SeqType |c#0| (TSeq TInt)))) (= (SnapTree.Tree.IsSorted true |c#0|) (forall ((|i#0| Int) (|j#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|)) (< |j#0| (|Seq#Length| |c#0|))) (< (U_2_int ($Unbox intType (|Seq#Index| |c#0| |i#0|))) (U_2_int ($Unbox intType (|Seq#Index| |c#0| |j#0|)))))
 :qid |SnapshotableTreesdfy.112:14|
 :skolemid |686|
 :pattern ( ($Unbox intType (|Seq#Index| |c#0| |j#0|)) ($Unbox intType (|Seq#Index| |c#0| |i#0|)))
))))
 :qid |SnapshotableTreesdfy.110:47|
 :skolemid |687|
 :pattern ( (SnapTree.Tree.IsSorted true |c#0|))
))))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
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
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.SnapTree.Node?)  (or (= $o null) (= (dtype $o) Tclass.SnapTree.Node?)))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($Is refType $o Tclass.SnapTree.Node?))
)))
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
(assert (forall ((|c#0@@0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Node $h@@0) ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Node? $h@@0))
 :qid |unknown.0:0|
 :skolemid |996|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Node $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Node? $h@@0))
)))
(assert (= (FDim SnapTree.Node.Repr) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$Repr) SnapTree.Node.Repr))
(assert ($IsGhostField SnapTree.Node.Repr))
(assert (= (FDim SnapTree.Node.Contents) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$Contents) SnapTree.Node.Contents))
(assert ($IsGhostField SnapTree.Node.Contents))
(assert (= (FDim SnapTree.Node.data) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$data) SnapTree.Node.data))
(assert  (not ($IsGhostField SnapTree.Node.data)))
(assert (= (FDim SnapTree.Node.left) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$left) SnapTree.Node.left))
(assert  (not ($IsGhostField SnapTree.Node.left)))
(assert (= (FDim SnapTree.Node.right) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$right) SnapTree.Node.right))
(assert  (not ($IsGhostField SnapTree.Node.right)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
))))
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.SnapTree.Node? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.SnapTree.Node? $h@@2))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|d#0| Int) (|s#0| T@U) ) (!  (=> (or (|SnapTree.Tree.AllAbove#canCall| |d#0| |s#0|) (and (< 0 $FunctionContextHeight) ($Is SeqType |s#0| (TSeq TInt)))) (= (SnapTree.Tree.AllAbove |d#0| |s#0|) (forall ((|i#0@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| |s#0|))) (< |d#0| (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#0@@0|)))))
 :qid |SnapshotableTreesdfy.130:14|
 :skolemid |707|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#0@@0|)))
))))
 :qid |SnapshotableTreesdfy.128:37|
 :skolemid |708|
 :pattern ( (SnapTree.Tree.AllAbove |d#0| |s#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|left#0| T@U) (|data#0| Int) (|right#0| T@U) ) (!  (=> (or (|SnapTree.Tree.SortedSplit#canCall| (Lit SeqType |left#0|) (LitInt |data#0|) (Lit SeqType |right#0|)) (and (< 1 $FunctionContextHeight) (and ($Is SeqType |left#0| (TSeq TInt)) ($Is SeqType |right#0| (TSeq TInt))))) (and (and (|SnapTree.Tree.IsSorted#canCall| (Lit SeqType |left#0|)) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (Lit SeqType |left#0|)) (and (|SnapTree.Tree.IsSorted#canCall| (Lit SeqType |right#0|)) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (Lit SeqType |right#0|)) (and (|SnapTree.Tree.AllBelow#canCall| (Lit SeqType |left#0|) (LitInt |data#0|)) (=> (U_2_bool (Lit boolType (bool_2_U (SnapTree.Tree.AllBelow (Lit SeqType |left#0|) (LitInt |data#0|))))) (|SnapTree.Tree.AllAbove#canCall| (LitInt |data#0|) (Lit SeqType |right#0|)))))))) (= (SnapTree.Tree.SortedSplit (Lit SeqType |left#0|) (LitInt |data#0|) (Lit SeqType |right#0|))  (and (and (and (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (Lit SeqType |left#0|)) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (Lit SeqType |right#0|))) (SnapTree.Tree.AllBelow (Lit SeqType |left#0|) (LitInt |data#0|))) (SnapTree.Tree.AllAbove (LitInt |data#0|) (Lit SeqType |right#0|))))))
 :qid |SnapshotableTreesdfy.132:40|
 :weight 3
 :skolemid |716|
 :pattern ( (SnapTree.Tree.SortedSplit (Lit SeqType |left#0|) (LitInt |data#0|) (Lit SeqType |right#0|)))
))))
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
(assert (= (Ctor SetType) 8))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|SnapTree.Node.NodeValid#canCall| $Heap this) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.SnapTree.Node) ($IsAlloc refType this Tclass.SnapTree.Node $Heap)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) ($Box refType this)) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Box refType this))) (|SnapTree.Node.NodeValid#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Box refType this)))) (SnapTree.Node.NodeValid $ly reveal_SnapTree.Node.NodeValid $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Box refType this))) (|SnapTree.Node.NodeValid#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Box refType this)))) (SnapTree.Node.NodeValid $ly reveal_SnapTree.Node.NodeValid $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))))) (=> (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) null)) (not true))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)))) (and (|SnapTree.Node.SortedSplit#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) (=> (SnapTree.Node.SortedSplit $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) (and (|SnapTree.Node.CombineSplit#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) (=> (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Contents)) (SnapTree.Node.CombineSplit $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)))) (|SnapTree.Tree.IsSorted#canCall| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Contents))))))))))))) (= (SnapTree.Node.NodeValid ($LS $ly) true $Heap this)  (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) ($Box refType this)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Box refType this)))) (SnapTree.Node.NodeValid $ly reveal_SnapTree.Node.NodeValid $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Box refType this)))) (SnapTree.Node.NodeValid $ly reveal_SnapTree.Node.NodeValid $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)))))) (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) null)) (not true))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr))))) (SnapTree.Node.SortedSplit $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Contents)) (SnapTree.Node.CombineSplit $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Contents)))))))
 :qid |SnapshotableTreesdfy.253:31|
 :skolemid |830|
 :pattern ( (SnapTree.Node.NodeValid ($LS $ly) true $Heap this) ($IsGoodHeap $Heap))
))))
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
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (|left#0@@0| T@U) (|data#0@@0| Int) (|right#0@@0| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|SnapTree.Node.SortedSplit#canCall| $h0 |left#0@@0| |data#0@@0| |right#0@@0|) (and ($Is refType |left#0@@0| Tclass.SnapTree.Node?) ($Is refType |right#0@@0| Tclass.SnapTree.Node?)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@2 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (or (= $o@@2 |left#0@@0|) (= $o@@2 |right#0@@0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@2) $f)))
 :qid |unknown.0:0|
 :skolemid |836|
)) (= (SnapTree.Node.SortedSplit $h0 |left#0@@0| |data#0@@0| |right#0@@0|) (SnapTree.Node.SortedSplit $h1 |left#0@@0| |data#0@@0| |right#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |837|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (SnapTree.Node.SortedSplit $h1 |left#0@@0| |data#0@@0| |right#0@@0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|c#0@@2| T@U) ) (!  (=> (or (|SnapTree.Tree.IsSorted#canCall| (Lit SeqType |c#0@@2|)) (and (< 0 $FunctionContextHeight) ($Is SeqType |c#0@@2| (TSeq TInt)))) (= (SnapTree.Tree.IsSorted true (Lit SeqType |c#0@@2|)) (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1|) (< |i#1| |j#1|)) (< |j#1| (|Seq#Length| (Lit SeqType |c#0@@2|)))) (< (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |c#0@@2|) |i#1|))) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |c#0@@2|) |j#1|)))))
 :qid |SnapshotableTreesdfy.112:14|
 :skolemid |688|
 :pattern ( ($Unbox intType (|Seq#Index| |c#0@@2| |j#1|)) ($Unbox intType (|Seq#Index| |c#0@@2| |i#1|)))
))))
 :qid |SnapshotableTreesdfy.110:47|
 :weight 3
 :skolemid |689|
 :pattern ( (SnapTree.Tree.IsSorted true (Lit SeqType |c#0@@2|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|left#0@@1| T@U) (|data#0@@1| Int) (|right#0@@1| T@U) ) (!  (=> (or (|SnapTree.Node.SortedSplit#canCall| $Heap@@0 |left#0@@1| |data#0@@1| |right#0@@1|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is refType |left#0@@1| Tclass.SnapTree.Node?)) ($Is refType |right#0@@1| Tclass.SnapTree.Node?)))) (and (|SnapTree.Tree.SortedSplit#canCall| (ite (= |left#0@@1| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |left#0@@1|) SnapTree.Node.Contents))) |data#0@@1| (ite (= |right#0@@1| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |right#0@@1|) SnapTree.Node.Contents)))) (= (SnapTree.Node.SortedSplit $Heap@@0 |left#0@@1| |data#0@@1| |right#0@@1|) (SnapTree.Tree.SortedSplit (ite (= |left#0@@1| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |left#0@@1|) SnapTree.Node.Contents))) |data#0@@1| (ite (= |right#0@@1| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |right#0@@1|) SnapTree.Node.Contents)))))))
 :qid |SnapshotableTreesdfy.268:28|
 :skolemid |840|
 :pattern ( (SnapTree.Node.SortedSplit $Heap@@0 |left#0@@1| |data#0@@1| |right#0@@1|) ($IsGoodHeap $Heap@@0))
))))
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
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (|left#0@@2| T@U) (|data#0@@2| Int) (|right#0@@2| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (or (|SnapTree.Node.CombineSplit#canCall| $h0@@0 |left#0@@2| |data#0@@2| |right#0@@2|) (and ($Is refType |left#0@@2| Tclass.SnapTree.Node?) ($Is refType |right#0@@2| Tclass.SnapTree.Node?)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@3 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (or (= $o@@3 |left#0@@2|) (= $o@@3 |right#0@@2|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@3) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@3) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |842|
)) (= (SnapTree.Node.CombineSplit $h0@@0 |left#0@@2| |data#0@@2| |right#0@@2|) (SnapTree.Node.CombineSplit $h1@@0 |left#0@@2| |data#0@@2| |right#0@@2|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |843|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (SnapTree.Node.CombineSplit $h1@@0 |left#0@@2| |data#0@@2| |right#0@@2|))
)))
(assert (forall (($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) SnapTree.Node.data)) TInt $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |819|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) SnapTree.Node.data)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
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
(assert (forall (($ly@@0 T@U) ($reveal Bool) ($h0@@1 T@U) ($h1@@1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.SnapTree.Node))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@5 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (or (= $o@@5 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 this@@0) SnapTree.Node.Repr)) ($Box refType $o@@5)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@5) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@5) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |826|
)) (= (SnapTree.Node.NodeValid $ly@@0 $reveal $h0@@1 this@@0) (SnapTree.Node.NodeValid $ly@@0 $reveal $h1@@1 this@@0))))
 :qid |unknown.0:0|
 :skolemid |827|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (SnapTree.Node.NodeValid $ly@@0 $reveal $h1@@1 this@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@0| T@U) (|d#0@@0| Int) ) (!  (=> (or (|SnapTree.Tree.AllBelow#canCall| (Lit SeqType |s#0@@0|) (LitInt |d#0@@0|)) (and (< 0 $FunctionContextHeight) ($Is SeqType |s#0@@0| (TSeq TInt)))) (= (SnapTree.Tree.AllBelow (Lit SeqType |s#0@@0|) (LitInt |d#0@@0|)) (forall ((|i#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| (|Seq#Length| (Lit SeqType |s#0@@0|)))) (< (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@0|) |i#1@@0|))) |d#0@@0|))
 :qid |SnapshotableTreesdfy.126:14|
 :skolemid |701|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@0| |i#1@@0|)))
))))
 :qid |SnapshotableTreesdfy.124:37|
 :weight 3
 :skolemid |702|
 :pattern ( (SnapTree.Tree.AllBelow (Lit SeqType |s#0@@0|) (LitInt |d#0@@0|)))
))))
(assert (forall (($h@@4 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.SnapTree.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) SnapTree.Node.left)) Tclass.SnapTree.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |820|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) SnapTree.Node.left)))
)))
(assert (forall (($h@@5 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.SnapTree.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) SnapTree.Node.right)) Tclass.SnapTree.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |822|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) SnapTree.Node.right)))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall (($h@@6 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) SnapTree.Node.Contents)) (TSeq TInt) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |815|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) SnapTree.Node.Contents)))
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
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.SnapTree.Node) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.SnapTree.Node)))
 :qid |unknown.0:0|
 :skolemid |646|
 :pattern ( ($IsBox bx@@4 Tclass.SnapTree.Node))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.SnapTree.Node?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.SnapTree.Node?)))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( ($IsBox bx@@5 Tclass.SnapTree.Node?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.SnapTree.Node)  (and ($Is refType |c#0@@4| Tclass.SnapTree.Node?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( ($Is refType |c#0@@4| Tclass.SnapTree.Node))
 :pattern ( ($Is refType |c#0@@4| Tclass.SnapTree.Node?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i))
)))
(assert (forall (($h@@7 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) SnapTree.Node.left)) Tclass.SnapTree.Node? $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |821|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) SnapTree.Node.left)))
)))
(assert (forall (($h@@8 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) SnapTree.Node.right)) Tclass.SnapTree.Node? $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |823|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) SnapTree.Node.right)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|left#0@@3| T@U) (|data#0@@3| Int) (|right#0@@3| T@U) ) (!  (=> (or (|SnapTree.Node.CombineSplit#canCall| $Heap@@1 |left#0@@3| |data#0@@3| |right#0@@3|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is refType |left#0@@3| Tclass.SnapTree.Node?)) ($Is refType |right#0@@3| Tclass.SnapTree.Node?)))) (= (SnapTree.Node.CombineSplit $Heap@@1 |left#0@@3| |data#0@@3| |right#0@@3|) (ite  (and (= |left#0@@3| null) (= |right#0@@3| null)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@3|))) (ite  (and (or (not (= |left#0@@3| null)) (not true)) (= |right#0@@3| null)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |left#0@@3|) SnapTree.Node.Contents)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@3|)))) (ite  (and (= |left#0@@3| null) (or (not (= |right#0@@3| null)) (not true))) (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@3|))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |right#0@@3|) SnapTree.Node.Contents))) (|Seq#Append| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |left#0@@3|) SnapTree.Node.Contents)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@3|)))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |right#0@@3|) SnapTree.Node.Contents))))))))
 :qid |SnapshotableTreesdfy.273:27|
 :skolemid |846|
 :pattern ( (SnapTree.Node.CombineSplit $Heap@@1 |left#0@@3| |data#0@@3| |right#0@@3|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@5)  (or (|Set#IsMember| a@@9 o@@5) (|Set#IsMember| b@@6 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@5))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert (forall (($h@@9 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.SnapTree.Node?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) SnapTree.Node.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |816|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) SnapTree.Node.Repr)))
)))
(assert (forall (($h@@10 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) SnapTree.Node.Repr)) (TSet Tclass._System.object) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |817|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) SnapTree.Node.Repr)))
)))
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
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (|left#0@@4| T@U) (|data#0@@4| Int) (|right#0@@4| T@U) ) (!  (=> (or (|SnapTree.Node.CombineSplit#canCall| $Heap@@2 |left#0@@4| |data#0@@4| |right#0@@4|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) (and ($Is refType |left#0@@4| Tclass.SnapTree.Node?) ($IsAlloc refType |left#0@@4| Tclass.SnapTree.Node? $Heap@@2))) (and ($Is refType |right#0@@4| Tclass.SnapTree.Node?) ($IsAlloc refType |right#0@@4| Tclass.SnapTree.Node? $Heap@@2))))) ($Is SeqType (SnapTree.Node.CombineSplit $Heap@@2 |left#0@@4| |data#0@@4| |right#0@@4|) (TSeq TInt)))
 :qid |SnapshotableTreesdfy.273:27|
 :skolemid |844|
 :pattern ( (SnapTree.Node.CombineSplit $Heap@@2 |left#0@@4| |data#0@@4| |right#0@@4|))
))))
(assert (forall (($ly@@1 T@U) ($reveal@@0 Bool) ($Heap@@3 T@U) (this@@1 T@U) ) (! (= (SnapTree.Node.NodeValid ($LS $ly@@1) $reveal@@0 $Heap@@3 this@@1) (SnapTree.Node.NodeValid $ly@@1 $reveal@@0 $Heap@@3 this@@1))
 :qid |SnapshotableTreesdfy.253:31|
 :skolemid |824|
 :pattern ( (SnapTree.Node.NodeValid ($LS $ly@@1) $reveal@@0 $Heap@@3 this@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@7) ($IsAllocBox bx@@7 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@5 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@13 T@U) ) (! ($Is refType $o@@13 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@13 Tclass._System.object?))
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
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall (($h@@11 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass.SnapTree.Node?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@14) SnapTree.Node.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |818|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@14) SnapTree.Node.data)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@1| T@U) (|d#0@@1| Int) ) (!  (=> (or (|SnapTree.Tree.AllBelow#canCall| |s#0@@1| |d#0@@1|) (and (< 0 $FunctionContextHeight) ($Is SeqType |s#0@@1| (TSeq TInt)))) (= (SnapTree.Tree.AllBelow |s#0@@1| |d#0@@1|) (forall ((|i#0@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@1|) (< |i#0@@1| (|Seq#Length| |s#0@@1|))) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0@@1| |i#0@@1|))) |d#0@@1|))
 :qid |SnapshotableTreesdfy.126:14|
 :skolemid |699|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@1| |i#0@@1|)))
))))
 :qid |SnapshotableTreesdfy.124:37|
 :skolemid |700|
 :pattern ( (SnapTree.Tree.AllBelow |s#0@@1| |d#0@@1|))
))))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@15 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@15 $f@@2))  (=> (and (or (not (= $o@@15 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@15) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1950|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@15 $f@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|left#0@@5| T@U) (|data#0@@5| Int) (|right#0@@5| T@U) ) (!  (=> (or (|SnapTree.Tree.SortedSplit#canCall| |left#0@@5| |data#0@@5| |right#0@@5|) (and (< 1 $FunctionContextHeight) (and ($Is SeqType |left#0@@5| (TSeq TInt)) ($Is SeqType |right#0@@5| (TSeq TInt))))) (and (and (|SnapTree.Tree.IsSorted#canCall| |left#0@@5|) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |left#0@@5|) (and (|SnapTree.Tree.IsSorted#canCall| |right#0@@5|) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |right#0@@5|) (and (|SnapTree.Tree.AllBelow#canCall| |left#0@@5| |data#0@@5|) (=> (SnapTree.Tree.AllBelow |left#0@@5| |data#0@@5|) (|SnapTree.Tree.AllAbove#canCall| |data#0@@5| |right#0@@5|))))))) (= (SnapTree.Tree.SortedSplit |left#0@@5| |data#0@@5| |right#0@@5|)  (and (and (and (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |left#0@@5|) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |right#0@@5|)) (SnapTree.Tree.AllBelow |left#0@@5| |data#0@@5|)) (SnapTree.Tree.AllAbove |data#0@@5| |right#0@@5|)))))
 :qid |SnapshotableTreesdfy.132:40|
 :skolemid |715|
 :pattern ( (SnapTree.Tree.SortedSplit |left#0@@5| |data#0@@5| |right#0@@5|))
))))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((bx@@8 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@8 (TSet t@@8)))
)))
(assert (forall ((bx@@9 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@9 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@9)) bx@@9) ($Is SeqType ($Unbox SeqType bx@@9) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@9 (TSeq t@@9)))
)))
(assert (forall (($h@@12 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass.SnapTree.Node?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) SnapTree.Node.Contents)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |814|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@16) SnapTree.Node.Contents)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@9 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@9))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@9))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@9)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.SnapTree.Node) Tagclass.SnapTree.Node))
(assert (= (TagFamily Tclass.SnapTree.Node) tytagFamily$Node))
(assert (= (Tag Tclass.SnapTree.Node?) Tagclass.SnapTree.Node?))
(assert (= (TagFamily Tclass.SnapTree.Node?) tytagFamily$Node))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
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
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|d#0@@2| Int) (|s#0@@2| T@U) ) (!  (=> (or (|SnapTree.Tree.AllAbove#canCall| (LitInt |d#0@@2|) (Lit SeqType |s#0@@2|)) (and (< 0 $FunctionContextHeight) ($Is SeqType |s#0@@2| (TSeq TInt)))) (= (SnapTree.Tree.AllAbove (LitInt |d#0@@2|) (Lit SeqType |s#0@@2|)) (forall ((|i#1@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@1|) (< |i#1@@1| (|Seq#Length| (Lit SeqType |s#0@@2|)))) (< |d#0@@2| (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@2|) |i#1@@1|)))))
 :qid |SnapshotableTreesdfy.130:14|
 :skolemid |709|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@2| |i#1@@1|)))
))))
 :qid |SnapshotableTreesdfy.128:37|
 :weight 3
 :skolemid |710|
 :pattern ( (SnapTree.Tree.AllAbove (LitInt |d#0@@2|) (Lit SeqType |s#0@@2|)))
))))
(assert (forall ((h@@6 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@6))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@2 T@U) ($reveal@@1 Bool) ($Heap@@4 T@U) (this@@2 T@U) ) (!  (=> (or (|SnapTree.Node.NodeValid#canCall| $Heap@@4 this@@2) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass.SnapTree.Node) ($IsAlloc refType this@@2 Tclass.SnapTree.Node $Heap@@4)))))) (=> (SnapTree.Node.NodeValid $ly@@2 reveal_SnapTree.Node.NodeValid $Heap@@4 this@@2) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@2) SnapTree.Node.Repr)) ($Box refType this@@2)) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@2) SnapTree.Node.Contents))))))
 :qid |SnapshotableTreesdfy.253:31|
 :skolemid |828|
 :pattern ( (SnapTree.Node.NodeValid $ly@@2 $reveal@@1 $Heap@@4 this@@2))
))))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@9 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |R#0@0| () T@U)
(declare-fun |right#0@@6| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |s##0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |left#0@@6| () T@U)
(declare-fun |x#0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $LZ () T@U)
(declare-fun this@@3 () T@U)
(declare-fun $Heap@@5 () T@U)
(declare-fun |L#0@0| () T@U)
(declare-fun this.Contents@4 () T@U)
(declare-fun this.Repr@4 () T@U)
(declare-fun this.Repr@2 () T@U)
(declare-fun this.Contents@2 () T@U)
(declare-fun this.Contents@3 () T@U)
(declare-fun this.Repr@3 () T@U)
(declare-fun this.Contents@0 () T@U)
(declare-fun this.Repr@0 () T@U)
(declare-fun this.Contents@1 () T@U)
(declare-fun this.Repr@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |L#0| () T@U)
(declare-fun |R#0| () T@U)
(set-info :boogie-vc-id Impl$$SnapTree.Node.Build)
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
 (=> (= (ControlFlow 0 0) 30) (let ((anon12_correct  (=> (and (= |R#0@0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |right#0@@6|) SnapTree.Node.Contents)))) (= |s##0@0| (Lit SeqType |Seq#Empty|))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (<= (|Seq#Length| |s##0@0|) (LitInt 1)) (|SnapTree.Tree.IsSorted#canCall| |s##0@0|))) (and (=> (<= (|Seq#Length| |s##0@0|) (LitInt 1)) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |s##0@0|)) (= $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|SnapTree.Node.SortedSplit#canCall| $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (or (SnapTree.Node.SortedSplit $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (=> (|SnapTree.Tree.SortedSplit#canCall| (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (or (SnapTree.Tree.SortedSplit (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))))))))) (=> (=> (|SnapTree.Node.SortedSplit#canCall| $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (or (SnapTree.Node.SortedSplit $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (=> (|SnapTree.Tree.SortedSplit#canCall| (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (or (SnapTree.Tree.SortedSplit (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents)))))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|SnapTree.Node.SortedSplit#canCall| $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (or (SnapTree.Node.SortedSplit $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (=> (|SnapTree.Tree.SortedSplit#canCall| (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (or (SnapTree.Tree.SortedSplit (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents))))))))) (=> (=> (|SnapTree.Node.SortedSplit#canCall| $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (or (SnapTree.Node.SortedSplit $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (=> (|SnapTree.Tree.SortedSplit#canCall| (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (or (SnapTree.Tree.SortedSplit (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|SnapTree.Node.SortedSplit#canCall| $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (or (SnapTree.Node.SortedSplit $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (=> (|SnapTree.Tree.SortedSplit#canCall| (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (or (SnapTree.Tree.SortedSplit (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (=> (|SnapTree.Tree.AllBelow#canCall| (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0|) (SnapTree.Tree.AllBelow (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0|))))))) (=> (=> (|SnapTree.Node.SortedSplit#canCall| $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (or (SnapTree.Node.SortedSplit $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (=> (|SnapTree.Tree.SortedSplit#canCall| (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (or (SnapTree.Tree.SortedSplit (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (=> (|SnapTree.Tree.AllBelow#canCall| (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0|) (SnapTree.Tree.AllBelow (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0|)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|SnapTree.Node.SortedSplit#canCall| $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (or (SnapTree.Node.SortedSplit $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (=> (|SnapTree.Tree.SortedSplit#canCall| (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (or (SnapTree.Tree.SortedSplit (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (=> (|SnapTree.Tree.AllAbove#canCall| |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (SnapTree.Tree.AllAbove |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))))))))) (=> (=> (|SnapTree.Node.SortedSplit#canCall| $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (or (SnapTree.Node.SortedSplit $Heap@1 |left#0@@6| |x#0| |right#0@@6|) (=> (|SnapTree.Tree.SortedSplit#canCall| (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (or (SnapTree.Tree.SortedSplit (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |left#0@@6|) SnapTree.Node.Contents))) |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (=> (|SnapTree.Tree.AllAbove#canCall| |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents)))) (SnapTree.Tree.AllAbove |x#0| (ite (= |right#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |right#0@@6|) SnapTree.Node.Contents))))))))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (|SnapTree.Node.CombineSplit#canCall| $Heap@2 |left#0@@6| |x#0| |right#0@@6|) (|SnapTree.Tree.IsSorted#canCall| (SnapTree.Node.CombineSplit $Heap@2 |left#0@@6| |x#0| |right#0@@6|))) (and (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (SnapTree.Node.CombineSplit $Heap@2 |left#0@@6| |x#0| |right#0@@6|)) (= $Heap@1 $Heap@2))) (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (= $Heap@2 $Heap@3) reveal_SnapTree.Node.NodeValid))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (SnapTree.Node.NodeValid ($LS ($LS $LZ)) reveal_SnapTree.Node.NodeValid $Heap@3 this@@3)) (=> (SnapTree.Node.NodeValid ($LS ($LS $LZ)) reveal_SnapTree.Node.NodeValid $Heap@3 this@@3) (and (=> (= (ControlFlow 0 2) (- 0 6)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Contents)) (SnapTree.Node.CombineSplit $Heap@3 |left#0@@6| |x#0| |right#0@@6|))) (=> (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Contents)) (SnapTree.Node.CombineSplit $Heap@3 |left#0@@6| |x#0| |right#0@@6|)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (and (= |left#0@@6| null) (= |right#0@@6| null)) (and (forall (($o@@17 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@17)) (or (not (= $o@@17 null)) (not true)))
 :qid |SnapshotableTreesdfy.314:49|
 :skolemid |894|
 :pattern (  (or (not (= $o@@17 null)) (not true)))
)) (forall (($o@@18 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@18)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@18) alloc)))))
 :qid |SnapshotableTreesdfy.314:49|
 :skolemid |895|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@18)))
))))) (=> (=> (and (= |left#0@@6| null) (= |right#0@@6| null)) (and (forall (($o@@19 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@19)) (or (not (= $o@@19 null)) (not true)))
 :qid |SnapshotableTreesdfy.314:49|
 :skolemid |894|
 :pattern (  (or (not (= $o@@19 null)) (not true)))
)) (forall (($o@@20 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@20)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@20) alloc)))))
 :qid |SnapshotableTreesdfy.314:49|
 :skolemid |895|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@20)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (and (or (not (= |left#0@@6| null)) (not true)) (= |right#0@@6| null)) (and (forall (($o@@21 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@21)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |left#0@@6|) SnapTree.Node.Repr)) ($Box refType $o@@21)))) (or (not (= $o@@21 null)) (not true)))
 :qid |SnapshotableTreesdfy.315:49|
 :skolemid |896|
 :pattern (  (or (not (= $o@@21 null)) (not true)))
)) (forall (($o@@22 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@22)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |left#0@@6|) SnapTree.Node.Repr)) ($Box refType $o@@22)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@22) alloc)))))
 :qid |SnapshotableTreesdfy.315:49|
 :skolemid |897|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@22) alloc)))
))))) (=> (=> (and (or (not (= |left#0@@6| null)) (not true)) (= |right#0@@6| null)) (and (forall (($o@@23 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@23)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |left#0@@6|) SnapTree.Node.Repr)) ($Box refType $o@@23)))) (or (not (= $o@@23 null)) (not true)))
 :qid |SnapshotableTreesdfy.315:49|
 :skolemid |896|
 :pattern (  (or (not (= $o@@23 null)) (not true)))
)) (forall (($o@@24 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@24)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |left#0@@6|) SnapTree.Node.Repr)) ($Box refType $o@@24)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@24) alloc)))))
 :qid |SnapshotableTreesdfy.315:49|
 :skolemid |897|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@24) alloc)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (and (= |left#0@@6| null) (or (not (= |right#0@@6| null)) (not true))) (and (forall (($o@@25 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@25)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |right#0@@6|) SnapTree.Node.Repr)) ($Box refType $o@@25)))) (or (not (= $o@@25 null)) (not true)))
 :qid |SnapshotableTreesdfy.316:49|
 :skolemid |898|
 :pattern (  (or (not (= $o@@25 null)) (not true)))
)) (forall (($o@@26 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@26)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |right#0@@6|) SnapTree.Node.Repr)) ($Box refType $o@@26)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@26) alloc)))))
 :qid |SnapshotableTreesdfy.316:49|
 :skolemid |899|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@26) alloc)))
))))) (=> (=> (and (= |left#0@@6| null) (or (not (= |right#0@@6| null)) (not true))) (and (forall (($o@@27 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@27)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |right#0@@6|) SnapTree.Node.Repr)) ($Box refType $o@@27)))) (or (not (= $o@@27 null)) (not true)))
 :qid |SnapshotableTreesdfy.316:49|
 :skolemid |898|
 :pattern (  (or (not (= $o@@27 null)) (not true)))
)) (forall (($o@@28 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@28)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |right#0@@6|) SnapTree.Node.Repr)) ($Box refType $o@@28)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@28) alloc)))))
 :qid |SnapshotableTreesdfy.316:49|
 :skolemid |899|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@28) alloc)))
)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (and (or (not (= |left#0@@6| null)) (not true)) (or (not (= |right#0@@6| null)) (not true))) (and (forall (($o@@29 T@U) ) (!  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@29)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |left#0@@6|) SnapTree.Node.Repr)) ($Box refType $o@@29)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |right#0@@6|) SnapTree.Node.Repr)) ($Box refType $o@@29)))) (or (not (= $o@@29 null)) (not true)))
 :qid |SnapshotableTreesdfy.317:49|
 :skolemid |900|
 :pattern (  (or (not (= $o@@29 null)) (not true)))
)) (forall (($o@@30 T@U) ) (!  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@30)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |left#0@@6|) SnapTree.Node.Repr)) ($Box refType $o@@30)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |right#0@@6|) SnapTree.Node.Repr)) ($Box refType $o@@30)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@30) alloc)))))
 :qid |SnapshotableTreesdfy.317:49|
 :skolemid |901|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@30) alloc)))
)))))))))))))))))))))))))))))
(let ((anon16_Else_correct  (=> (or (not (= |right#0@@6| null)) (not true)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (not (= |right#0@@6| null)) (not true))) (=> (or (not (= |right#0@@6| null)) (not true)) (=> (= (ControlFlow 0 13) 2) anon12_correct))))))
(let ((anon16_Then_correct  (=> (and (= |right#0@@6| null) (= (ControlFlow 0 12) 2)) anon12_correct)))
(let ((anon9_correct  (=> (= |L#0@0| (ite (= |left#0@@6| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |left#0@@6|) SnapTree.Node.Contents)))) (and (=> (= (ControlFlow 0 15) 12) anon16_Then_correct) (=> (= (ControlFlow 0 15) 13) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (or (not (= |left#0@@6| null)) (not true)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (or (not (= |left#0@@6| null)) (not true))) (=> (or (not (= |left#0@@6| null)) (not true)) (=> (= (ControlFlow 0 17) 15) anon9_correct))))))
(let ((anon15_Then_correct  (=> (and (= |left#0@@6| null) (= (ControlFlow 0 16) 15)) anon9_correct)))
(let ((anon6_correct  (=> (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass.SnapTree.Node?)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@3) alloc))))) (=> (and (and (and (= ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@3) SnapTree.Node.Contents)) this.Contents@4) (= ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@3) SnapTree.Node.Repr)) this.Repr@4)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@3) SnapTree.Node.data))) |x#0|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@3) SnapTree.Node.left)) |left#0@@6|))) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@3) SnapTree.Node.right)) |right#0@@6|) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@5 this@@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@3) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 19) 16) anon15_Then_correct) (=> (= (ControlFlow 0 19) 17) anon15_Else_correct))))))
(let ((anon14_Else_correct  (=> (and (and (= |right#0@@6| null) (= this.Repr@4 this.Repr@2)) (and (= this.Contents@4 this.Contents@2) (= (ControlFlow 0 23) 19))) anon6_correct)))
(let ((anon14_Then_correct  (=> (or (not (= |right#0@@6| null)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (or (not (= |right#0@@6| null)) (not true))) (=> (or (not (= |right#0@@6| null)) (not true)) (=> (= this.Contents@3 (|Seq#Append| this.Contents@2 ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |right#0@@6|) SnapTree.Node.Contents)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (or (not (= |right#0@@6| null)) (not true))) (=> (or (not (= |right#0@@6| null)) (not true)) (=> (and (and (= this.Repr@3 (|Set#Union| this.Repr@2 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |right#0@@6|) SnapTree.Node.Repr)))) (= this.Repr@4 this.Repr@3)) (and (= this.Contents@4 this.Contents@3) (= (ControlFlow 0 20) 19))) anon6_correct)))))))))
(let ((anon3_correct  (and (=> (= (ControlFlow 0 24) 20) anon14_Then_correct) (=> (= (ControlFlow 0 24) 23) anon14_Else_correct))))
(let ((anon13_Else_correct  (=> (and (and (= |left#0@@6| null) (= this.Contents@2 this.Contents@0)) (and (= this.Repr@2 this.Repr@0) (= (ControlFlow 0 28) 24))) anon3_correct)))
(let ((anon13_Then_correct  (=> (or (not (= |left#0@@6| null)) (not true)) (and (=> (= (ControlFlow 0 25) (- 0 27)) (or (not (= |left#0@@6| null)) (not true))) (=> (or (not (= |left#0@@6| null)) (not true)) (=> (= this.Contents@1 (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |left#0@@6|) SnapTree.Node.Contents)) this.Contents@0)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (not (= |left#0@@6| null)) (not true))) (=> (or (not (= |left#0@@6| null)) (not true)) (=> (and (and (= this.Repr@1 (|Set#Union| this.Repr@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |left#0@@6|) SnapTree.Node.Repr)))) (= this.Contents@2 this.Contents@1)) (and (= this.Repr@2 this.Repr@1) (= (ControlFlow 0 25) 24))) anon3_correct)))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@5 alloc false)) (=> (and (= this.Contents@0 (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |x#0|)))) (= this.Repr@0 (|Set#UnionOne| |Set#Empty| ($Box refType this@@3)))) (and (=> (= (ControlFlow 0 29) 25) anon13_Then_correct) (=> (= (ControlFlow 0 29) 28) anon13_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@5) ($IsHeapAnchor $Heap@@5)) (=> (and (and (and ($Is refType |left#0@@6| Tclass.SnapTree.Node?) ($IsAlloc refType |left#0@@6| Tclass.SnapTree.Node? $Heap@@5)) (and ($Is refType |right#0@@6| Tclass.SnapTree.Node?) ($IsAlloc refType |right#0@@6| Tclass.SnapTree.Node? $Heap@@5))) (and (and ($Is SeqType |L#0| (TSeq TInt)) ($IsAlloc SeqType |L#0| (TSeq TInt) $Heap@@5)) true)) (=> (and (and (and (and (and ($Is SeqType |R#0| (TSeq TInt)) ($IsAlloc SeqType |R#0| (TSeq TInt) $Heap@@5)) true) (= 4 $FunctionContextHeight)) (and (=> (or (not (= |left#0@@6| null)) (not true)) (SnapTree.Node.NodeValid ($LS ($LS $LZ)) reveal_SnapTree.Node.NodeValid $Heap@@5 |left#0@@6|)) (=> (or (not (= |left#0@@6| null)) (not true)) (and (|SnapTree.Tree.AllBelow#canCall| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |left#0@@6|) SnapTree.Node.Contents)) |x#0|) (and (SnapTree.Tree.AllBelow ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |left#0@@6|) SnapTree.Node.Contents)) |x#0|) (forall ((|i#2| Int) ) (!  (=> (and (<= (LitInt 0) |i#2|) (< |i#2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |left#0@@6|) SnapTree.Node.Contents))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |left#0@@6|) SnapTree.Node.Contents)) |i#2|))) |x#0|))
 :qid |SnapshotableTreesdfy.126:14|
 :skolemid |891|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |left#0@@6|) SnapTree.Node.Contents)) |i#2|)))
))))))) (and (and (=> (or (not (= |right#0@@6| null)) (not true)) (SnapTree.Node.NodeValid ($LS ($LS $LZ)) reveal_SnapTree.Node.NodeValid $Heap@@5 |right#0@@6|)) (=> (or (not (= |right#0@@6| null)) (not true)) (and (|SnapTree.Tree.AllAbove#canCall| |x#0| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |right#0@@6|) SnapTree.Node.Contents))) (and (SnapTree.Tree.AllAbove |x#0| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |right#0@@6|) SnapTree.Node.Contents))) (forall ((|i#3| Int) ) (!  (=> (and (<= (LitInt 0) |i#3|) (< |i#3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |right#0@@6|) SnapTree.Node.Contents))))) (< |x#0| (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |right#0@@6|) SnapTree.Node.Contents)) |i#3|)))))
 :qid |SnapshotableTreesdfy.130:14|
 :skolemid |893|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |right#0@@6|) SnapTree.Node.Contents)) |i#3|)))
)))))) (and (=> (and (or (not (= |left#0@@6| null)) (not true)) (or (not (= |right#0@@6| null)) (not true))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |left#0@@6|) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |right#0@@6|) SnapTree.Node.Repr)))) (= (ControlFlow 0 30) 29)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
