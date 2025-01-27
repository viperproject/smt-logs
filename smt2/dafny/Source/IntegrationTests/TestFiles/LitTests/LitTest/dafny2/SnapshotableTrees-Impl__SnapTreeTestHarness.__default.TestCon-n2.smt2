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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass.SnapTree.Tree () T@U)
(declare-fun Tagclass.SnapTree.Iterator () T@U)
(declare-fun Tagclass.SnapTree.Tree? () T@U)
(declare-fun Tagclass.SnapTree.Iterator? () T@U)
(declare-fun |##SnapTree.List.Nil| () T@U)
(declare-fun Tagclass.SnapTree.List () T@U)
(declare-fun |##SnapTree.List.Cons| () T@U)
(declare-fun Tagclass.SnapTree.Node () T@U)
(declare-fun class.SnapTree.Tree? () T@U)
(declare-fun Tagclass.SnapTree.Node? () T@U)
(declare-fun class.SnapTree.Node? () T@U)
(declare-fun class.SnapTree.Iterator? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Tree () T@U)
(declare-fun tytagFamily$Iterator () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$MutableRepr () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$Contents () T@U)
(declare-fun field$IterRepr () T@U)
(declare-fun field$N () T@U)
(declare-fun field$IsReadonly () T@U)
(declare-fun field$T () T@U)
(declare-fun field$root () T@U)
(declare-fun field$reprIsShared () T@U)
(declare-fun field$data () T@U)
(declare-fun field$left () T@U)
(declare-fun field$right () T@U)
(declare-fun field$initialized () T@U)
(declare-fun field$stack () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#SnapTree.List.Cons| (T@U T@U) T@U)
(declare-fun Tclass.SnapTree.List () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.SnapTree.Node () T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun SnapTree.Node.CombineSplit (T@U T@U Int T@U) T@U)
(declare-fun |SnapTree.Node.CombineSplit#canCall| (T@U T@U Int T@U) Bool)
(declare-fun Tclass.SnapTree.Node? () T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun SnapTree.Tree.Valid (Bool T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun Tclass.SnapTree.Tree () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun SnapTree.Tree.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#SnapTree.List.Nil| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun Tclass.SnapTree.Tree? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.SnapTree.Iterator? () T@U)
(declare-fun SnapTree.Iterator.Valid (Bool T@U T@U) Bool)
(declare-fun |SnapTree.Iterator.Valid#canCall| (T@U T@U) Bool)
(declare-fun Tclass.SnapTree.Iterator () T@U)
(declare-fun reveal_SnapTree.Iterator.Valid () Bool)
(declare-fun SnapTree.Iterator.T () T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SnapTree.Iterator.IterRepr () T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun SnapTree.Tree.MutableRepr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun SnapTree.Tree.Contents () T@U)
(declare-fun SnapTree.Iterator.Contents () T@U)
(declare-fun SnapTree.Iterator.N () T@U)
(declare-fun SnapTree.Node.Repr () T@U)
(declare-fun SnapTree.Node.Contents () T@U)
(declare-fun SnapTree.Tree.AllBelow (T@U Int) Bool)
(declare-fun |SnapTree.Tree.AllBelow#canCall| (T@U Int) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun SnapTree.Tree.IsReadonly () T@U)
(declare-fun SnapTree.Tree.root () T@U)
(declare-fun SnapTree.Tree.reprIsShared () T@U)
(declare-fun SnapTree.Node.data () T@U)
(declare-fun SnapTree.Node.left () T@U)
(declare-fun SnapTree.Node.right () T@U)
(declare-fun SnapTree.Iterator.initialized () T@U)
(declare-fun SnapTree.Iterator.stack () T@U)
(declare-fun |SnapTree.Tree.Valid#canCall| (T@U T@U) Bool)
(declare-fun reveal_SnapTree.Tree.Valid () Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |SnapTree.Iterator.R#canCall| (T@U T@U Int T@U T@U) Bool)
(declare-fun SnapTree.Iterator.R (T@U Bool T@U T@U Int T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun reveal_SnapTree.Iterator.R () Bool)
(declare-fun SnapTree.Tree.SortedSplit (T@U Int T@U) Bool)
(declare-fun |SnapTree.Tree.SortedSplit#canCall| (T@U Int T@U) Bool)
(declare-fun |SnapTree.Tree.IsSorted#canCall| (T@U) Bool)
(declare-fun SnapTree.Tree.IsSorted (Bool T@U) Bool)
(declare-fun reveal_SnapTree.Tree.IsSorted () Bool)
(declare-fun |SnapTree.Tree.AllAbove#canCall| (Int T@U) Bool)
(declare-fun SnapTree.Tree.AllAbove (Int T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun SnapTree.List.Nil_q (T@U) Bool)
(declare-fun SnapTree.List.Cons_q (T@U) Bool)
(declare-fun SnapTree.Node.SortedSplit (T@U T@U Int T@U) Bool)
(declare-fun |SnapTree.Node.SortedSplit#canCall| (T@U T@U Int T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun TSet (T@U) T@U)
(declare-fun SnapTree.Node.NodeValid (T@U Bool T@U T@U) Bool)
(declare-fun |SnapTree.Node.NodeValid#canCall| (T@U T@U) Bool)
(declare-fun reveal_SnapTree.Node.NodeValid () Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun SnapTree.List._h0 (T@U) T@U)
(declare-fun SnapTree.List._h1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun |Seq#SameUntil| (T@U T@U Int) Bool)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass.SnapTree.Tree Tagclass.SnapTree.Iterator Tagclass.SnapTree.Tree? Tagclass.SnapTree.Iterator? |##SnapTree.List.Nil| Tagclass.SnapTree.List |##SnapTree.List.Cons| Tagclass.SnapTree.Node class.SnapTree.Tree? Tagclass.SnapTree.Node? class.SnapTree.Node? class.SnapTree.Iterator? tytagFamily$object tytagFamily$Tree tytagFamily$Iterator tytagFamily$List tytagFamily$Node field$MutableRepr field$Repr field$Contents field$IterRepr field$N field$IsReadonly field$T field$root field$reprIsShared field$data field$left field$right field$initialized field$stack)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor refType) 4)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#SnapTree.List.Cons| |a#6#0#0| |a#6#1#0|) Tclass.SnapTree.List)  (and ($Is refType |a#6#0#0| Tclass.SnapTree.Node) ($Is DatatypeTypeType |a#6#1#0| Tclass.SnapTree.List)))
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |1803|
 :pattern ( ($Is DatatypeTypeType (|#SnapTree.List.Cons| |a#6#0#0| |a#6#1#0|) Tclass.SnapTree.List))
)))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1231|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |1232|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |1230|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((s T@U) (v T@U) (x@@5 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@5)  (or (= v x@@5) (|Seq#Contains| s x@@5)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |1336|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@5))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#SnapTree.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass.SnapTree.List $h)  (and ($IsAlloc refType |a#6#0#0@@0| Tclass.SnapTree.Node $h) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| Tclass.SnapTree.List $h))))
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |1804|
 :pattern ( ($IsAlloc DatatypeTypeType (|#SnapTree.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass.SnapTree.List $h))
)))
(assert (= (Ctor SeqType) 5))
(assert (forall (($Heap T@U) (|left#0| T@U) (|data#0| Int) (|right#0| T@U) ) (!  (=> (or (|SnapTree.Node.CombineSplit#canCall| $Heap |left#0| |data#0| |right#0|) (and (and ($IsGoodHeap $Heap) (and ($Is refType |left#0| Tclass.SnapTree.Node?) ($IsAlloc refType |left#0| Tclass.SnapTree.Node? $Heap))) (and ($Is refType |right#0| Tclass.SnapTree.Node?) ($IsAlloc refType |right#0| Tclass.SnapTree.Node? $Heap)))) ($Is SeqType (SnapTree.Node.CombineSplit $Heap |left#0| |data#0| |right#0|) (TSeq TInt)))
 :qid |SnapshotableTreesdfy.273:27|
 :skolemid |1908|
 :pattern ( (SnapTree.Node.CombineSplit $Heap |left#0| |data#0| |right#0|))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1227|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((x@@6 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@6))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |1334|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@6))
)))
(assert  (and (and (and (and (and (and (and (= (Ctor SetType) 6) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 7)) (= (Ctor BoxType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($reveal Bool) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.SnapTree.Tree))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (= $o this) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) SnapTree.Tree.Repr)) ($Box refType $o)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |1831|
)) (= (SnapTree.Tree.Valid $reveal $h0 this) (SnapTree.Tree.Valid $reveal $h1 this))))
 :qid |unknown.0:0|
 :skolemid |1832|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (SnapTree.Tree.Valid $reveal $h1 this))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#SnapTree.List.Nil|) |##SnapTree.List.Nil|))
(assert (forall ((s@@0 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@0 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |1356|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.SnapTree.Tree?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.SnapTree.Tree?)))
 :qid |unknown.0:0|
 :skolemid |1816|
 :pattern ( ($Is refType $o@@0 Tclass.SnapTree.Tree?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass.SnapTree.Node?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass.SnapTree.Node?)))
 :qid |unknown.0:0|
 :skolemid |1882|
 :pattern ( ($Is refType $o@@1 Tclass.SnapTree.Node?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass.SnapTree.Iterator?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass.SnapTree.Iterator?)))
 :qid |unknown.0:0|
 :skolemid |1913|
 :pattern ( ($Is refType $o@@2 Tclass.SnapTree.Iterator?))
)))
(assert (forall (($reveal@@0 Bool) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|SnapTree.Iterator.Valid#canCall| $Heap@@0 this@@0) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.SnapTree.Iterator) ($IsAlloc refType this@@0 Tclass.SnapTree.Iterator $Heap@@0))))) (=> (SnapTree.Iterator.Valid reveal_SnapTree.Iterator.Valid $Heap@@0 this@@0) (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Iterator.T)) null)) (not true)) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Iterator.IterRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Iterator.T))) SnapTree.Tree.Repr))))))
 :qid |SnapshotableTreesdfy.493:28|
 :skolemid |1929|
 :pattern ( (SnapTree.Iterator.Valid $reveal@@0 $Heap@@0 this@@0))
)))
(assert (forall ((s@@1 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@1)) (and (= (|Seq#Take| (|Seq#Append| s@@1 t) n@@0) s@@1) (= (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |1351|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@1 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1453|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.SnapTree.Tree $h@@1) ($IsAlloc refType |c#0@@0| Tclass.SnapTree.Tree? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1881|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.SnapTree.Tree $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.SnapTree.Tree? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Node $h@@2) ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Node? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1912|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Node $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Node? $h@@2))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.SnapTree.Iterator $h@@3) ($IsAlloc refType |c#0@@2| Tclass.SnapTree.Iterator? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1946|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.SnapTree.Iterator $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.SnapTree.Iterator? $h@@3))
)))
(assert (= (FDim SnapTree.Tree.MutableRepr) 0))
(assert (= (FieldOfDecl class.SnapTree.Tree? field$MutableRepr) SnapTree.Tree.MutableRepr))
(assert ($IsGhostField SnapTree.Tree.MutableRepr))
(assert (= (FDim SnapTree.Tree.Repr) 0))
(assert (= (FieldOfDecl class.SnapTree.Tree? field$Repr) SnapTree.Tree.Repr))
(assert ($IsGhostField SnapTree.Tree.Repr))
(assert (= (FDim SnapTree.Tree.Contents) 0))
(assert (= (FieldOfDecl class.SnapTree.Tree? field$Contents) SnapTree.Tree.Contents))
(assert ($IsGhostField SnapTree.Tree.Contents))
(assert (= (FDim SnapTree.Iterator.IterRepr) 0))
(assert (= (FieldOfDecl class.SnapTree.Iterator? field$IterRepr) SnapTree.Iterator.IterRepr))
(assert ($IsGhostField SnapTree.Iterator.IterRepr))
(assert (= (FDim SnapTree.Iterator.Contents) 0))
(assert (= (FieldOfDecl class.SnapTree.Iterator? field$Contents) SnapTree.Iterator.Contents))
(assert ($IsGhostField SnapTree.Iterator.Contents))
(assert (= (FDim SnapTree.Iterator.N) 0))
(assert (= (FieldOfDecl class.SnapTree.Iterator? field$N) SnapTree.Iterator.N))
(assert ($IsGhostField SnapTree.Iterator.N))
(assert (= (FDim SnapTree.Node.Repr) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$Repr) SnapTree.Node.Repr))
(assert ($IsGhostField SnapTree.Node.Repr))
(assert (= (FDim SnapTree.Node.Contents) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$Contents) SnapTree.Node.Contents))
(assert ($IsGhostField SnapTree.Node.Contents))
(assert ($Is DatatypeTypeType |#SnapTree.List.Nil| Tclass.SnapTree.List))
(assert (forall ((|s#0| T@U) (|d#0| Int) ) (!  (=> (or (|SnapTree.Tree.AllBelow#canCall| |s#0| |d#0|) ($Is SeqType |s#0| (TSeq TInt))) (= (SnapTree.Tree.AllBelow |s#0| |d#0|) (forall ((|i#4| Int) ) (!  (=> (and (<= (LitInt 0) |i#4|) (< |i#4| (|Seq#Length| |s#0|))) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#4|))) |d#0|))
 :qid |SnapshotableTreesdfy.126:14|
 :skolemid |1845|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#4|)))
))))
 :qid |SnapshotableTreesdfy.124:37|
 :skolemid |1846|
 :pattern ( (SnapTree.Tree.AllBelow |s#0| |d#0|))
)))
(assert (= (FDim SnapTree.Tree.IsReadonly) 0))
(assert (= (FieldOfDecl class.SnapTree.Tree? field$IsReadonly) SnapTree.Tree.IsReadonly))
(assert  (not ($IsGhostField SnapTree.Tree.IsReadonly)))
(assert (= (FDim SnapTree.Iterator.T) 0))
(assert (= (FieldOfDecl class.SnapTree.Iterator? field$T) SnapTree.Iterator.T))
(assert  (not ($IsGhostField SnapTree.Iterator.T)))
(assert (= (FDim SnapTree.Tree.root) 0))
(assert (= (FieldOfDecl class.SnapTree.Tree? field$root) SnapTree.Tree.root))
(assert  (not ($IsGhostField SnapTree.Tree.root)))
(assert (= (FDim SnapTree.Tree.reprIsShared) 0))
(assert (= (FieldOfDecl class.SnapTree.Tree? field$reprIsShared) SnapTree.Tree.reprIsShared))
(assert  (not ($IsGhostField SnapTree.Tree.reprIsShared)))
(assert (= (FDim SnapTree.Node.data) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$data) SnapTree.Node.data))
(assert  (not ($IsGhostField SnapTree.Node.data)))
(assert (= (FDim SnapTree.Node.left) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$left) SnapTree.Node.left))
(assert  (not ($IsGhostField SnapTree.Node.left)))
(assert (= (FDim SnapTree.Node.right) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$right) SnapTree.Node.right))
(assert  (not ($IsGhostField SnapTree.Node.right)))
(assert (= (FDim SnapTree.Iterator.initialized) 0))
(assert (= (FieldOfDecl class.SnapTree.Iterator? field$initialized) SnapTree.Iterator.initialized))
(assert  (not ($IsGhostField SnapTree.Iterator.initialized)))
(assert (= (FDim SnapTree.Iterator.stack) 0))
(assert (= (FieldOfDecl class.SnapTree.Iterator? field$stack) SnapTree.Iterator.stack))
(assert  (not ($IsGhostField SnapTree.Iterator.stack)))
(assert (forall (($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc DatatypeTypeType |#SnapTree.List.Nil| Tclass.SnapTree.List $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1797|
 :pattern ( ($IsAlloc DatatypeTypeType |#SnapTree.List.Nil| Tclass.SnapTree.List $h@@4))
)))
(assert (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|SnapTree.Iterator.Valid#canCall| $Heap@@1 this@@1) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.SnapTree.Iterator) ($IsAlloc refType this@@1 Tclass.SnapTree.Iterator $Heap@@1))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.IterRepr)) ($Box refType this@@1)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T)) null)) (not true)) (and (|SnapTree.Tree.Valid#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T))) (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T))) (=> (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.IterRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T))) SnapTree.Tree.Repr))) (=> (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T))) SnapTree.Tree.Contents))) (=> (<= (LitInt (- 0 1)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N)))) (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.Contents)))) (=> (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.initialized))) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N))))) (and (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N))) 0) (|SnapTree.Iterator.R#canCall| $Heap@@1 ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.stack)) (LitInt 0) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T))) SnapTree.Tree.Repr)))) (=> (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N))) 0) (SnapTree.Iterator.R ($LS $LZ) reveal_SnapTree.Iterator.R $Heap@@1 ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.stack)) (LitInt 0) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T))) SnapTree.Tree.Repr)))) (=> (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N)))) (|SnapTree.Iterator.R#canCall| $Heap@@1 ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.stack)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T))) SnapTree.Tree.Repr))))))))))))))) (= (SnapTree.Iterator.Valid true $Heap@@1 this@@1)  (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.IterRepr)) ($Box refType this@@1)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T)) null)) (not true))) (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T)))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.IterRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T))) SnapTree.Tree.Repr)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T))) SnapTree.Tree.Contents)))) (and (<= (LitInt (- 0 1)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N)))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.Contents)))))) (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.initialized))) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N)))))) (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N))) 0) (SnapTree.Iterator.R ($LS $LZ) reveal_SnapTree.Iterator.R $Heap@@1 ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.stack)) (LitInt 0) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T))) SnapTree.Tree.Repr))))) (=> (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N)))) (SnapTree.Iterator.R ($LS $LZ) reveal_SnapTree.Iterator.R $Heap@@1 ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.stack)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.N))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.Contents)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) SnapTree.Iterator.T))) SnapTree.Tree.Repr))))))))
 :qid |SnapshotableTreesdfy.493:28|
 :skolemid |1931|
 :pattern ( (SnapTree.Iterator.Valid true $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
)))
(assert (forall (($o@@3 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._System.object? $h@@5)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1450|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._System.object? $h@@5))
)))
(assert (forall (($o@@4 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass.SnapTree.Tree? $h@@6)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1817|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.SnapTree.Tree? $h@@6))
)))
(assert (forall (($o@@5 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass.SnapTree.Node? $h@@7)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1883|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.SnapTree.Node? $h@@7))
)))
(assert (forall (($o@@6 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass.SnapTree.Iterator? $h@@8)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1914|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.SnapTree.Iterator? $h@@8))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1220|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1221|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((|left#0@@0| T@U) (|data#0@@0| Int) (|right#0@@0| T@U) ) (!  (=> (or (|SnapTree.Tree.SortedSplit#canCall| |left#0@@0| |data#0@@0| |right#0@@0|) (and ($Is SeqType |left#0@@0| (TSeq TInt)) ($Is SeqType |right#0@@0| (TSeq TInt)))) (and (and (|SnapTree.Tree.IsSorted#canCall| |left#0@@0|) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |left#0@@0|) (and (|SnapTree.Tree.IsSorted#canCall| |right#0@@0|) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |right#0@@0|) (and (|SnapTree.Tree.AllBelow#canCall| |left#0@@0| |data#0@@0|) (=> (SnapTree.Tree.AllBelow |left#0@@0| |data#0@@0|) (|SnapTree.Tree.AllAbove#canCall| |data#0@@0| |right#0@@0|))))))) (= (SnapTree.Tree.SortedSplit |left#0@@0| |data#0@@0| |right#0@@0|)  (and (and (and (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |left#0@@0|) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |right#0@@0|)) (SnapTree.Tree.AllBelow |left#0@@0| |data#0@@0|)) (SnapTree.Tree.AllAbove |data#0@@0| |right#0@@0|)))))
 :qid |SnapshotableTreesdfy.132:40|
 :skolemid |1857|
 :pattern ( (SnapTree.Tree.SortedSplit |left#0@@0| |data#0@@0| |right#0@@0|))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@2 n@@1) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |1357|
 :pattern ( (|Seq#Drop| s@@2 n@@1))
)))
(assert (forall ((x@@7 Int) ) (! (= (LitInt x@@7) x@@7)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1119|
 :pattern ( (LitInt x@@7))
)))
(assert (forall ((x@@8 T@U) (T T@T) ) (! (= (Lit T x@@8) x@@8)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1117|
 :pattern ( (Lit T x@@8))
)))
(assert (forall ((s@@3 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@3 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |1360|
 :pattern ( ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t@@0)))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|Set#Subset| a@@2 b) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@2) (|Set#IsMember| b o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |1248|
 :pattern ( (|Set#IsMember| a@@2 o@@2))
 :pattern ( (|Set#IsMember| b o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |1249|
 :pattern ( (|Set#Subset| a@@2 b))
)))
(assert (forall ((s@@4 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@4))) (= (|Seq#Index| (|Seq#Take| s@@4 n@@2) j) (|Seq#Index| s@@4 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |1347|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@4 n@@2) j))
 :pattern ( (|Seq#Index| s@@4 j) (|Seq#Take| s@@4 n@@2))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Drop| s@@5 n@@3)) (- (|Seq#Length| s@@5) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |1348|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@5 n@@3)))
)))
(assert (forall ((d T@U) ) (! (= (SnapTree.List.Nil_q d) (= (DatatypeCtorId d) |##SnapTree.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1794|
 :pattern ( (SnapTree.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (SnapTree.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##SnapTree.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |1799|
 :pattern ( (SnapTree.List.Cons_q d@@0))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |1341|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |1342|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@9 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@9)) x@@9)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1128|
 :pattern ( ($Unbox T@@0 x@@9))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (|left#0@@1| T@U) (|data#0@@1| Int) (|right#0@@1| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (or (|SnapTree.Node.SortedSplit#canCall| $h0@@0 |left#0@@1| |data#0@@1| |right#0@@1|) (and ($Is refType |left#0@@1| Tclass.SnapTree.Node?) ($Is refType |right#0@@1| Tclass.SnapTree.Node?)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@7 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (or (= $o@@7 |left#0@@1|) (= $o@@7 |right#0@@1|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@7) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@7) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1901|
)) (= (SnapTree.Node.SortedSplit $h0@@0 |left#0@@1| |data#0@@1| |right#0@@1|) (SnapTree.Node.SortedSplit $h1@@0 |left#0@@1| |data#0@@1| |right#0@@1|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1902|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (SnapTree.Node.SortedSplit $h1@@0 |left#0@@1| |data#0@@1| |right#0@@1|))
)))
(assert (forall ((s@@6 T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| s@@6))) (< (|Seq#Rank| (|Seq#Take| s@@6 i)) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |1371|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@6 i)))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (! (= (|Set#Disjoint| a@@3 b@@0) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@3 o@@3)) (not (|Set#IsMember| b@@0 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |1253|
 :pattern ( (|Set#IsMember| a@@3 o@@3))
 :pattern ( (|Set#IsMember| b@@0 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |1254|
 :pattern ( (|Set#Disjoint| a@@3 b@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (SnapTree.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#SnapTree.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |1800|
)))
 :qid |unknown.0:0|
 :skolemid |1801|
 :pattern ( (SnapTree.List.Cons_q d@@1))
)))
(assert (forall (($ly T@U) ($reveal@@1 Bool) ($Heap@@2 T@U) (|wlist#0| T@U) (|n#0| Int) (|C#0| T@U) (|Nodes#0| T@U) ) (! (= (SnapTree.Iterator.R ($LS $ly) $reveal@@1 $Heap@@2 |wlist#0| |n#0| |C#0| |Nodes#0|) (SnapTree.Iterator.R $ly $reveal@@1 $Heap@@2 |wlist#0| |n#0| |C#0| |Nodes#0|))
 :qid |SnapshotableTreesdfy.514:35|
 :skolemid |1932|
 :pattern ( (SnapTree.Iterator.R ($LS $ly) $reveal@@1 $Heap@@2 |wlist#0| |n#0| |C#0| |Nodes#0|))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (SnapTree.List.Nil_q d@@2) (= d@@2 |#SnapTree.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1795|
 :pattern ( (SnapTree.List.Nil_q d@@2))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1148|
 :pattern ( (|Set#IsMember| v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1149|
 :pattern ( ($Is SetType v@@1 (TSet t0@@0)))
)))
(assert (forall ((s@@7 T@U) (i@@0 Int) ) (!  (=> (and (< 0 i@@0) (<= i@@0 (|Seq#Length| s@@7))) (< (|Seq#Rank| (|Seq#Drop| s@@7 i@@0)) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |1370|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@7 i@@0)))
)))
(assert (forall ((|d#0@@0| Int) (|s#0@@0| T@U) ) (!  (=> (or (|SnapTree.Tree.AllAbove#canCall| (LitInt |d#0@@0|) (Lit SeqType |s#0@@0|)) ($Is SeqType |s#0@@0| (TSeq TInt))) (= (SnapTree.Tree.AllAbove (LitInt |d#0@@0|) (Lit SeqType |s#0@@0|)) (forall ((|i#5| Int) ) (!  (=> (and (<= (LitInt 0) |i#5|) (< |i#5| (|Seq#Length| (Lit SeqType |s#0@@0|)))) (< |d#0@@0| (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@0|) |i#5|)))))
 :qid |SnapshotableTreesdfy.130:14|
 :skolemid |1853|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@0| |i#5|)))
))))
 :qid |SnapshotableTreesdfy.128:37|
 :weight 3
 :skolemid |1854|
 :pattern ( (SnapTree.Tree.AllAbove (LitInt |d#0@@0|) (Lit SeqType |s#0@@0|)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@8 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@8 v@@2)) (+ 1 (|Seq#Length| s@@8)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |1326|
 :pattern ( (|Seq#Build| s@@8 v@@2))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (|left#0@@2| T@U) (|data#0@@2| Int) (|right#0@@2| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (or (|SnapTree.Node.CombineSplit#canCall| $h0@@1 |left#0@@2| |data#0@@2| |right#0@@2|) (and ($Is refType |left#0@@2| Tclass.SnapTree.Node?) ($Is refType |right#0@@2| Tclass.SnapTree.Node?)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@8 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (or (= $o@@8 |left#0@@2|) (= $o@@8 |right#0@@2|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@8) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@8) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |1906|
)) (= (SnapTree.Node.CombineSplit $h0@@1 |left#0@@2| |data#0@@2| |right#0@@2|) (SnapTree.Node.CombineSplit $h1@@1 |left#0@@2| |data#0@@2| |right#0@@2|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1907|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (SnapTree.Node.CombineSplit $h1@@1 |left#0@@2| |data#0@@2| |right#0@@2|))
)))
(assert (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.SnapTree.Tree?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) SnapTree.Tree.IsReadonly)) TBool $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1821|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) SnapTree.Tree.IsReadonly)))
)))
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.SnapTree.Tree?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) SnapTree.Tree.reprIsShared)) TBool $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1830|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) SnapTree.Tree.reprIsShared)))
)))
(assert (forall (($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) SnapTree.Node.data)) TInt $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1889|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) SnapTree.Node.data)))
)))
(assert (forall (($h@@12 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.SnapTree.Iterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) SnapTree.Iterator.N)) TInt $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1920|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) SnapTree.Iterator.N)))
)))
(assert (forall (($h@@13 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.SnapTree.Iterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) SnapTree.Iterator.initialized)) TBool $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1924|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) SnapTree.Iterator.initialized)))
)))
(assert (forall (($ly@@0 T@U) ($reveal@@2 Bool) ($Heap@@3 T@U) (this@@2 T@U) ) (!  (=> (or (|SnapTree.Node.NodeValid#canCall| $Heap@@3 this@@2) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass.SnapTree.Node) ($IsAlloc refType this@@2 Tclass.SnapTree.Node $Heap@@3))))) (=> (SnapTree.Node.NodeValid $ly@@0 reveal_SnapTree.Node.NodeValid $Heap@@3 this@@2) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) SnapTree.Node.Repr)) ($Box refType this@@2)) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@2) SnapTree.Node.Contents))))))
 :qid |SnapshotableTreesdfy.253:31|
 :skolemid |1898|
 :pattern ( (SnapTree.Node.NodeValid $ly@@0 $reveal@@2 $Heap@@3 this@@2))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@1 h@@0) ($IsAlloc T@@1 v@@3 t@@1 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1141|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@1 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@2 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@2 h@@1) ($IsAllocBox bx@@1 t@@2 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1213|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@2 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@4 T@U) (t@@3 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@4 t@@3 h@@2) ($IsAlloc T@@2 v@@4 t@@3 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1212|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@4 t@@3 h@@2))
)))
(assert (forall ((s@@9 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@9) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@9 n@@4) j@@1) (|Seq#Index| s@@9 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |1349|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@9 n@@4) j@@1))
)))
(assert (forall (($ly@@1 T@U) ($reveal@@3 Bool) ($h0@@2 T@U) ($h1@@2 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass.SnapTree.Node))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@14 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (or (= $o@@14 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 this@@3) SnapTree.Node.Repr)) ($Box refType $o@@14)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@14) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@14) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |1896|
)) (= (SnapTree.Node.NodeValid $ly@@1 $reveal@@3 $h0@@2 this@@3) (SnapTree.Node.NodeValid $ly@@1 $reveal@@3 $h1@@2 this@@3))))
 :qid |unknown.0:0|
 :skolemid |1897|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (SnapTree.Node.NodeValid $ly@@1 $reveal@@3 $h1@@2 this@@3))
)))
(assert (forall (($h@@14 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass.SnapTree.Tree?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) SnapTree.Tree.root)) Tclass.SnapTree.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1827|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) SnapTree.Tree.root)))
)))
(assert (forall (($h@@15 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass.SnapTree.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) SnapTree.Node.left)) Tclass.SnapTree.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1890|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@16) SnapTree.Node.left)))
)))
(assert (forall (($h@@16 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass.SnapTree.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) SnapTree.Node.right)) Tclass.SnapTree.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1892|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@17) SnapTree.Node.right)))
)))
(assert (forall (($h@@17 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass.SnapTree.Iterator?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) SnapTree.Iterator.T)) Tclass.SnapTree.Tree?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1921|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) SnapTree.Iterator.T)))
)))
(assert (forall (($h@@18 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass.SnapTree.Iterator?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) SnapTree.Iterator.stack)) Tclass.SnapTree.List))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1925|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) SnapTree.Iterator.stack)))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |1328|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((|c#0@@3| T@U) ) (!  (=> (or (|SnapTree.Tree.IsSorted#canCall| |c#0@@3|) ($Is SeqType |c#0@@3| (TSeq TInt))) (= (SnapTree.Tree.IsSorted true |c#0@@3|) (forall ((|i#4@@0| Int) (|j#4| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#4@@0|) (< |i#4@@0| |j#4|)) (< |j#4| (|Seq#Length| |c#0@@3|))) (< (U_2_int ($Unbox intType (|Seq#Index| |c#0@@3| |i#4@@0|))) (U_2_int ($Unbox intType (|Seq#Index| |c#0@@3| |j#4|)))))
 :qid |SnapshotableTreesdfy.112:14|
 :skolemid |1838|
 :pattern ( ($Unbox intType (|Seq#Index| |c#0@@3| |j#4|)) ($Unbox intType (|Seq#Index| |c#0@@3| |i#4@@0|)))
))))
 :qid |SnapshotableTreesdfy.110:47|
 :skolemid |1839|
 :pattern ( (SnapTree.Tree.IsSorted true |c#0@@3|))
)))
(assert (forall (($h@@19 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass.SnapTree.Tree?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@20) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@20) SnapTree.Tree.Contents)) (TSeq TInt) $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1819|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@20) SnapTree.Tree.Contents)))
)))
(assert (forall (($h@@20 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@21) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@21) SnapTree.Node.Contents)) (TSeq TInt) $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1885|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@21) SnapTree.Node.Contents)))
)))
(assert (forall (($h@@21 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass.SnapTree.Iterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@22) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@22) SnapTree.Iterator.Contents)) (TSeq TInt) $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1918|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@22) SnapTree.Iterator.Contents)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1448|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1451|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.SnapTree.Tree) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.SnapTree.Tree)))
 :qid |unknown.0:0|
 :skolemid |1743|
 :pattern ( ($IsBox bx@@4 Tclass.SnapTree.Tree))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.SnapTree.Iterator) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.SnapTree.Iterator)))
 :qid |unknown.0:0|
 :skolemid |1751|
 :pattern ( ($IsBox bx@@5 Tclass.SnapTree.Iterator))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.SnapTree.Tree?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.SnapTree.Tree?)))
 :qid |unknown.0:0|
 :skolemid |1754|
 :pattern ( ($IsBox bx@@6 Tclass.SnapTree.Tree?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.SnapTree.Iterator?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass.SnapTree.Iterator?)))
 :qid |unknown.0:0|
 :skolemid |1755|
 :pattern ( ($IsBox bx@@7 Tclass.SnapTree.Iterator?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.SnapTree.List) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) Tclass.SnapTree.List)))
 :qid |unknown.0:0|
 :skolemid |1796|
 :pattern ( ($IsBox bx@@8 Tclass.SnapTree.List))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.SnapTree.Node) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass.SnapTree.Node)))
 :qid |unknown.0:0|
 :skolemid |1802|
 :pattern ( ($IsBox bx@@9 Tclass.SnapTree.Node))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass.SnapTree.Node?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass.SnapTree.Node?)))
 :qid |unknown.0:0|
 :skolemid |1826|
 :pattern ( ($IsBox bx@@10 Tclass.SnapTree.Node?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1452|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass.SnapTree.Tree)  (and ($Is refType |c#0@@5| Tclass.SnapTree.Tree?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1880|
 :pattern ( ($Is refType |c#0@@5| Tclass.SnapTree.Tree))
 :pattern ( ($Is refType |c#0@@5| Tclass.SnapTree.Tree?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.SnapTree.Node)  (and ($Is refType |c#0@@6| Tclass.SnapTree.Node?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1911|
 :pattern ( ($Is refType |c#0@@6| Tclass.SnapTree.Node))
 :pattern ( ($Is refType |c#0@@6| Tclass.SnapTree.Node?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass.SnapTree.Iterator)  (and ($Is refType |c#0@@7| Tclass.SnapTree.Iterator?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1945|
 :pattern ( ($Is refType |c#0@@7| Tclass.SnapTree.Iterator))
 :pattern ( ($Is refType |c#0@@7| Tclass.SnapTree.Iterator?))
)))
(assert (forall ((s@@10 T@U) (i@@1 Int) (v@@5 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@10)) (= (|Seq#Index| (|Seq#Build| s@@10 v@@5) i@@1) v@@5)) (=> (or (not (= i@@1 (|Seq#Length| s@@10))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@10 v@@5) i@@1) (|Seq#Index| s@@10 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |1327|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@10 v@@5) i@@1))
)))
(assert (forall (($h@@22 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass.SnapTree.Tree?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@23) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@23) SnapTree.Tree.root)) Tclass.SnapTree.Node? $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1828|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@23) SnapTree.Tree.root)))
)))
(assert (forall (($h@@23 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@24) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@24) SnapTree.Node.left)) Tclass.SnapTree.Node? $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1891|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@24) SnapTree.Node.left)))
)))
(assert (forall (($h@@24 T@U) ($o@@25 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@25) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@25) SnapTree.Node.right)) Tclass.SnapTree.Node? $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1893|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@25) SnapTree.Node.right)))
)))
(assert (forall (($h@@25 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass.SnapTree.Iterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@26) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@26) SnapTree.Iterator.T)) Tclass.SnapTree.Tree? $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1922|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@26) SnapTree.Iterator.T)))
)))
(assert (forall (($h@@26 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass.SnapTree.Iterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@27) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@27) SnapTree.Iterator.stack)) Tclass.SnapTree.List $h@@26))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1926|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@27) SnapTree.Iterator.stack)))
)))
(assert (forall (($ly@@2 T@U) ($reveal@@4 Bool) ($h0@@3 T@U) ($h1@@3 T@U) (|wlist#0@@0| T@U) (|n#0@@0| Int) (|C#0@@0| T@U) (|Nodes#0@@0| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (or (|SnapTree.Iterator.R#canCall| $h0@@3 |wlist#0@@0| |n#0@@0| |C#0@@0| |Nodes#0@@0|) (and (and ($Is DatatypeTypeType |wlist#0@@0| Tclass.SnapTree.List) ($Is SeqType |C#0@@0| (TSeq TInt))) ($Is SetType |Nodes#0@@0| (TSet Tclass._System.object))))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@28 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (|Set#IsMember| |Nodes#0@@0| ($Box refType $o@@28))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@28) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@28) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |1934|
)) (= (SnapTree.Iterator.R $ly@@2 $reveal@@4 $h0@@3 |wlist#0@@0| |n#0@@0| |C#0@@0| |Nodes#0@@0|) (SnapTree.Iterator.R $ly@@2 $reveal@@4 $h1@@3 |wlist#0@@0| |n#0@@0| |C#0@@0| |Nodes#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |1935|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (SnapTree.Iterator.R $ly@@2 $reveal@@4 $h1@@3 |wlist#0@@0| |n#0@@0| |C#0@@0| |Nodes#0@@0|))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@10 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10)  (or (|Seq#Contains| s0@@1 x@@10) (|Seq#Contains| s1@@1 x@@10)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |1335|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@10))
)))
(assert (forall ((s@@11 T@U) (n@@5 Int) (x@@11 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@11 n@@5) x@@11) (exists ((i@@2 Int) ) (!  (and (and (and (<= 0 i@@2) (< i@@2 n@@5)) (< i@@2 (|Seq#Length| s@@11))) (= (|Seq#Index| s@@11 i@@2) x@@11))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |1337|
 :pattern ( (|Seq#Index| s@@11 i@@2))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |1338|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@11 n@@5) x@@11))
)))
(assert (forall ((s@@12 T@U) (x@@12 T@U) ) (! (= (|Seq#Contains| s@@12 x@@12) (exists ((i@@3 Int) ) (!  (and (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@12))) (= (|Seq#Index| s@@12 i@@3) x@@12))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |1332|
 :pattern ( (|Seq#Index| s@@12 i@@3))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |1333|
 :pattern ( (|Seq#Contains| s@@12 x@@12))
)))
(assert (forall (($h@@27 T@U) ($o@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@29 null)) (not true)) (= (dtype $o@@29) Tclass.SnapTree.Tree?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@29) SnapTree.Tree.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1822|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@29) SnapTree.Tree.Repr)))
)))
(assert (forall (($h@@28 T@U) ($o@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@30 null)) (not true)) (= (dtype $o@@30) Tclass.SnapTree.Tree?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@30) SnapTree.Tree.MutableRepr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1824|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@30) SnapTree.Tree.MutableRepr)))
)))
(assert (forall (($h@@29 T@U) ($o@@31 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@31 null)) (not true)) (= (dtype $o@@31) Tclass.SnapTree.Node?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@31) SnapTree.Node.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1886|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@31) SnapTree.Node.Repr)))
)))
(assert (forall (($h@@30 T@U) ($o@@32 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@32 null)) (not true)) (= (dtype $o@@32) Tclass.SnapTree.Iterator?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@32) SnapTree.Iterator.IterRepr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1915|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@32) SnapTree.Iterator.IterRepr)))
)))
(assert (forall (($h@@31 T@U) ($o@@33 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@33 null)) (not true)) (= (dtype $o@@33) Tclass.SnapTree.Tree?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@33) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@33) SnapTree.Tree.Repr)) (TSet Tclass._System.object) $h@@31))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1823|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@33) SnapTree.Tree.Repr)))
)))
(assert (forall (($h@@32 T@U) ($o@@34 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) Tclass.SnapTree.Tree?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@34) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@34) SnapTree.Tree.MutableRepr)) (TSet Tclass._System.object) $h@@32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1825|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@34) SnapTree.Tree.MutableRepr)))
)))
(assert (forall (($h@@33 T@U) ($o@@35 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@35) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@35) SnapTree.Node.Repr)) (TSet Tclass._System.object) $h@@33))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1887|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@35) SnapTree.Node.Repr)))
)))
(assert (forall (($h@@34 T@U) ($o@@36 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@36 null)) (not true)) (= (dtype $o@@36) Tclass.SnapTree.Iterator?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@36) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@36) SnapTree.Iterator.IterRepr)) (TSet Tclass._System.object) $h@@34))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1916|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@36) SnapTree.Iterator.IterRepr)))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (!  (=> (|Set#Equal| a@@4 b@@1) (= a@@4 b@@1))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1252|
 :pattern ( (|Set#Equal| a@@4 b@@1))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (!  (=> (|Seq#Equal| a@@5 b@@2) (= a@@5 b@@2))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |1343|
 :pattern ( (|Seq#Equal| a@@5 b@@2))
)))
(assert (forall ((s@@13 T@U) (n@@6 Int) ) (!  (=> (and (<= 0 n@@6) (<= n@@6 (|Seq#Length| s@@13))) (= (|Seq#Length| (|Seq#Take| s@@13 n@@6)) n@@6))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |1346|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@13 n@@6)))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.SnapTree.List) (or (SnapTree.List.Nil_q d@@3) (SnapTree.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1812|
 :pattern ( (SnapTree.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.SnapTree.List))
 :pattern ( (SnapTree.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.SnapTree.List))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (c T@U) ) (!  (=> (or (not (= a@@6 c)) (not true)) (=> (and ($HeapSucc a@@6 b@@3) ($HeapSucc b@@3 c)) ($HeapSucc a@@6 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1219|
 :pattern ( ($HeapSucc a@@6 b@@3) ($HeapSucc b@@3 c))
)))
(assert (forall ((|d#0@@1| Int) (|s#0@@1| T@U) ) (!  (=> (or (|SnapTree.Tree.AllAbove#canCall| |d#0@@1| |s#0@@1|) ($Is SeqType |s#0@@1| (TSeq TInt))) (= (SnapTree.Tree.AllAbove |d#0@@1| |s#0@@1|) (forall ((|i#4@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#4@@1|) (< |i#4@@1| (|Seq#Length| |s#0@@1|))) (< |d#0@@1| (U_2_int ($Unbox intType (|Seq#Index| |s#0@@1| |i#4@@1|)))))
 :qid |SnapshotableTreesdfy.130:14|
 :skolemid |1851|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@1| |i#4@@1|)))
))))
 :qid |SnapshotableTreesdfy.128:37|
 :skolemid |1852|
 :pattern ( (SnapTree.Tree.AllAbove |d#0@@1| |s#0@@1|))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1209|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TInt) (and (= ($Box intType ($Unbox intType bx@@11)) bx@@11) ($Is intType ($Unbox intType bx@@11) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1129|
 :pattern ( ($IsBox bx@@11 TInt))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 TBool) (and (= ($Box boolType ($Unbox boolType bx@@12)) bx@@12) ($Is boolType ($Unbox boolType bx@@12) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |1131|
 :pattern ( ($IsBox bx@@12 TBool))
)))
(assert (forall ((v@@6 T@U) (t@@4 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@6) t@@4) ($Is T@@3 v@@6 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1140|
 :pattern ( ($IsBox ($Box T@@3 v@@6) t@@4))
)))
(assert (forall ((|left#0@@3| T@U) (|data#0@@3| Int) (|right#0@@3| T@U) ) (!  (=> (or (|SnapTree.Tree.SortedSplit#canCall| (Lit SeqType |left#0@@3|) (LitInt |data#0@@3|) (Lit SeqType |right#0@@3|)) (and ($Is SeqType |left#0@@3| (TSeq TInt)) ($Is SeqType |right#0@@3| (TSeq TInt)))) (and (and (|SnapTree.Tree.IsSorted#canCall| (Lit SeqType |left#0@@3|)) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (Lit SeqType |left#0@@3|)) (and (|SnapTree.Tree.IsSorted#canCall| (Lit SeqType |right#0@@3|)) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (Lit SeqType |right#0@@3|)) (and (|SnapTree.Tree.AllBelow#canCall| (Lit SeqType |left#0@@3|) (LitInt |data#0@@3|)) (=> (U_2_bool (Lit boolType (bool_2_U (SnapTree.Tree.AllBelow (Lit SeqType |left#0@@3|) (LitInt |data#0@@3|))))) (|SnapTree.Tree.AllAbove#canCall| (LitInt |data#0@@3|) (Lit SeqType |right#0@@3|)))))))) (= (SnapTree.Tree.SortedSplit (Lit SeqType |left#0@@3|) (LitInt |data#0@@3|) (Lit SeqType |right#0@@3|))  (and (and (and (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (Lit SeqType |left#0@@3|)) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (Lit SeqType |right#0@@3|))) (SnapTree.Tree.AllBelow (Lit SeqType |left#0@@3|) (LitInt |data#0@@3|))) (SnapTree.Tree.AllAbove (LitInt |data#0@@3|) (Lit SeqType |right#0@@3|))))))
 :qid |SnapshotableTreesdfy.132:40|
 :weight 3
 :skolemid |1858|
 :pattern ( (SnapTree.Tree.SortedSplit (Lit SeqType |left#0@@3|) (LitInt |data#0@@3|) (Lit SeqType |right#0@@3|)))
)))
(assert (forall (($ly@@3 T@U) ($Heap@@4 T@U) (this@@4 T@U) ) (!  (=> (or (|SnapTree.Node.NodeValid#canCall| $Heap@@4 this@@4) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass.SnapTree.Node) ($IsAlloc refType this@@4 Tclass.SnapTree.Node $Heap@@4))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr)) ($Box refType this@@4)) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Box refType this@@4))) (|SnapTree.Node.NodeValid#canCall| $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid $ly@@3 reveal_SnapTree.Node.NodeValid $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left))))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Box refType this@@4))) (|SnapTree.Node.NodeValid#canCall| $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid $ly@@3 reveal_SnapTree.Node.NodeValid $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))))) (=> (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right)) null)) (not true))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))) SnapTree.Node.Repr)))) (and (|SnapTree.Node.SortedSplit#canCall| $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))) (=> (SnapTree.Node.SortedSplit $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))) (and (|SnapTree.Node.CombineSplit#canCall| $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))) (=> (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Contents)) (SnapTree.Node.CombineSplit $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right)))) (|SnapTree.Tree.IsSorted#canCall| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Contents))))))))))))) (= (SnapTree.Node.NodeValid ($LS $ly@@3) true $Heap@@4 this@@4)  (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr)) ($Box refType this@@4)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid $ly@@3 reveal_SnapTree.Node.NodeValid $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid $ly@@3 reveal_SnapTree.Node.NodeValid $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right)))))) (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right)) null)) (not true))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))) SnapTree.Node.Repr))))) (SnapTree.Node.SortedSplit $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Contents)) (SnapTree.Node.CombineSplit $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.right))))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@4) SnapTree.Node.Contents)))))))
 :qid |SnapshotableTreesdfy.253:31|
 :skolemid |1900|
 :pattern ( (SnapTree.Node.NodeValid ($LS $ly@@3) true $Heap@@4 this@@4) ($IsGoodHeap $Heap@@4))
)))
(assert (forall (($ly@@4 T@U) ($reveal@@5 Bool) ($Heap@@5 T@U) (this@@5 T@U) ) (! (= (SnapTree.Node.NodeValid ($LS $ly@@4) $reveal@@5 $Heap@@5 this@@5) (SnapTree.Node.NodeValid $ly@@4 $reveal@@5 $Heap@@5 this@@5))
 :qid |SnapshotableTreesdfy.253:31|
 :skolemid |1894|
 :pattern ( (SnapTree.Node.NodeValid ($LS $ly@@4) $reveal@@5 $Heap@@5 this@@5))
)))
(assert (forall ((s@@14 T@U) ) (! (<= 0 (|Seq#Length| s@@14))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1323|
 :pattern ( (|Seq#Length| s@@14))
)))
(assert (forall ((s@@15 T@U) (i@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@4) (< i@@4 j@@2)) (<= j@@2 (|Seq#Length| s@@15))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@15 i@@4) (|Seq#Drop| s@@15 j@@2))) (|Seq#Rank| s@@15)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |1372|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@15 i@@4) (|Seq#Drop| s@@15 j@@2))))
)))
(assert (forall ((v@@7 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@1) h@@3) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@13) ($IsAllocBox bx@@13 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1169|
 :pattern ( (|Set#IsMember| v@@7 bx@@13))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1170|
 :pattern ( ($IsAlloc SetType v@@7 (TSet t0@@1) h@@3))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#SnapTree.List.Cons| |a#4#0#0| |a#4#1#0|)) |##SnapTree.List.Cons|)
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |1798|
 :pattern ( (|#SnapTree.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (SnapTree.List._h0 (|#SnapTree.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |1808|
 :pattern ( (|#SnapTree.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= (SnapTree.List._h1 (|#SnapTree.List.Cons| |a#9#0#0| |a#9#1#0|)) |a#9#1#0|)
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |1809|
 :pattern ( (|#SnapTree.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall (($o@@37 T@U) ) (! ($Is refType $o@@37 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1449|
 :pattern ( ($Is refType $o@@37 Tclass._System.object?))
)))
(assert (forall ((v@@8 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@8 (TSeq t0@@2) h@@4) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| v@@8))) ($IsAllocBox (|Seq#Index| v@@8 i@@5) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1175|
 :pattern ( (|Seq#Index| v@@8 i@@5))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1176|
 :pattern ( ($IsAlloc SeqType v@@8 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSet (TSet t@@5)) t@@5)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1103|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSet t@@6)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1104|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSeq (TSeq t@@7)) t@@7)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1109|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSeq t@@8)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1110|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((x@@13 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@13)) x@@13)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1127|
 :pattern ( ($Box T@@4 x@@13))
)))
(assert (forall (($Heap@@6 T@U) (this@@6 T@U) ) (!  (=> (or (|SnapTree.Tree.Valid#canCall| $Heap@@6 this@@6) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass.SnapTree.Tree) ($IsAlloc refType this@@6 Tclass.SnapTree.Tree $Heap@@6))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.MutableRepr)) ($Box refType this@@6)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Repr))) (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Contents)) |Seq#Empty|)) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@6))) (|SnapTree.Node.NodeValid#canCall| $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@6)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root))) SnapTree.Node.Contents))))) (|SnapTree.Tree.IsSorted#canCall| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Contents)))))))) (= (SnapTree.Tree.Valid true $Heap@@6 this@@6)  (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.MutableRepr)) ($Box refType this@@6)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Contents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@6)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root))) SnapTree.Node.Contents)))))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.Contents)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.IsReadonly))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.reprIsShared))))) (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.reprIsShared)))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root)) null)) (not true))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.MutableRepr))))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.reprIsShared))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@6) SnapTree.Tree.MutableRepr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@6))))))))
 :qid |SnapshotableTreesdfy.94:28|
 :skolemid |1835|
 :pattern ( (SnapTree.Tree.Valid true $Heap@@6 this@@6) ($IsGoodHeap $Heap@@6))
)))
(assert (forall (($h@@35 T@U) ($o@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@38 null)) (not true)) (= (dtype $o@@38) Tclass.SnapTree.Tree?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@38) SnapTree.Tree.IsReadonly)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1820|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@38) SnapTree.Tree.IsReadonly)))
)))
(assert (forall (($h@@36 T@U) ($o@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@39 null)) (not true)) (= (dtype $o@@39) Tclass.SnapTree.Tree?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@39) SnapTree.Tree.reprIsShared)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1829|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@39) SnapTree.Tree.reprIsShared)))
)))
(assert (forall (($h@@37 T@U) ($o@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@40 null)) (not true)) (= (dtype $o@@40) Tclass.SnapTree.Node?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@40) SnapTree.Node.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1888|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@40) SnapTree.Node.data)))
)))
(assert (forall (($h@@38 T@U) ($o@@41 T@U) ) (!  (=> (and ($IsGoodHeap $h@@38) (and (or (not (= $o@@41 null)) (not true)) (= (dtype $o@@41) Tclass.SnapTree.Iterator?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@41) SnapTree.Iterator.N)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1919|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@41) SnapTree.Iterator.N)))
)))
(assert (forall (($h@@39 T@U) ($o@@42 T@U) ) (!  (=> (and ($IsGoodHeap $h@@39) (and (or (not (= $o@@42 null)) (not true)) (= (dtype $o@@42) Tclass.SnapTree.Iterator?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@42) SnapTree.Iterator.initialized)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1923|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@42) SnapTree.Iterator.initialized)))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (< (DtRank |a#10#1#0|) (DtRank (|#SnapTree.List.Cons| |a#10#0#0| |a#10#1#0|)))
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |1810|
 :pattern ( (|#SnapTree.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|c#0@@8| T@U) ) (!  (=> (or (|SnapTree.Tree.IsSorted#canCall| (Lit SeqType |c#0@@8|)) ($Is SeqType |c#0@@8| (TSeq TInt))) (= (SnapTree.Tree.IsSorted true (Lit SeqType |c#0@@8|)) (forall ((|i#5@@0| Int) (|j#5| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#5@@0|) (< |i#5@@0| |j#5|)) (< |j#5| (|Seq#Length| (Lit SeqType |c#0@@8|)))) (< (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |c#0@@8|) |i#5@@0|))) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |c#0@@8|) |j#5|)))))
 :qid |SnapshotableTreesdfy.112:14|
 :skolemid |1840|
 :pattern ( ($Unbox intType (|Seq#Index| |c#0@@8| |j#5|)) ($Unbox intType (|Seq#Index| |c#0@@8| |i#5@@0|)))
))))
 :qid |SnapshotableTreesdfy.110:47|
 :weight 3
 :skolemid |1841|
 :pattern ( (SnapTree.Tree.IsSorted true (Lit SeqType |c#0@@8|)))
)))
(assert (forall (($Heap@@7 T@U) (|left#0@@4| T@U) (|data#0@@4| Int) (|right#0@@4| T@U) ) (!  (=> (or (|SnapTree.Node.SortedSplit#canCall| $Heap@@7 |left#0@@4| |data#0@@4| |right#0@@4|) (and (and ($IsGoodHeap $Heap@@7) ($Is refType |left#0@@4| Tclass.SnapTree.Node?)) ($Is refType |right#0@@4| Tclass.SnapTree.Node?))) (and (|SnapTree.Tree.SortedSplit#canCall| (ite (= |left#0@@4| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 |left#0@@4|) SnapTree.Node.Contents))) |data#0@@4| (ite (= |right#0@@4| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 |right#0@@4|) SnapTree.Node.Contents)))) (= (SnapTree.Node.SortedSplit $Heap@@7 |left#0@@4| |data#0@@4| |right#0@@4|) (SnapTree.Tree.SortedSplit (ite (= |left#0@@4| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 |left#0@@4|) SnapTree.Node.Contents))) |data#0@@4| (ite (= |right#0@@4| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 |right#0@@4|) SnapTree.Node.Contents)))))))
 :qid |SnapshotableTreesdfy.268:28|
 :skolemid |1905|
 :pattern ( (SnapTree.Node.SortedSplit $Heap@@7 |left#0@@4| |data#0@@4| |right#0@@4|) ($IsGoodHeap $Heap@@7))
)))
(assert (forall (($ly@@5 T@U) ($Heap@@8 T@U) (|wlist#0@@1| T@U) (|n#0@@1| Int) (|C#0@@1| T@U) (|Nodes#0@@1| T@U) ) (!  (=> (or (|SnapTree.Iterator.R#canCall| $Heap@@8 |wlist#0@@1| |n#0@@1| |C#0@@1| |Nodes#0@@1|) (and (and (and ($IsGoodHeap $Heap@@8) ($Is DatatypeTypeType |wlist#0@@1| Tclass.SnapTree.List)) ($Is SeqType |C#0@@1| (TSeq TInt))) ($Is SetType |Nodes#0@@1| (TSet Tclass._System.object)))) (and (=> (not (SnapTree.List.Nil_q |wlist#0@@1|)) (let ((|rest#3| (SnapTree.List._h1 |wlist#0@@1|)))
(let ((|p#3| (SnapTree.List._h0 |wlist#0@@1|)))
 (=> (|Set#IsMember| |Nodes#0@@1| ($Box refType |p#3|)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#3|) SnapTree.Node.Repr)) |Nodes#0@@1|) (and (|SnapTree.Node.NodeValid#canCall| $Heap@@8 |p#3|) (=> (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@8 |p#3|) (=> (<= (LitInt 0) |n#0@@1|) (=> (< |n#0@@1| (|Seq#Length| |C#0@@1|)) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#3|) SnapTree.Node.data))) (U_2_int ($Unbox intType (|Seq#Index| |C#0@@1| |n#0@@1|)))) (|SnapTree.Iterator.R#canCall| $Heap@@8 |rest#3| (+ (+ |n#0@@1| 1) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#3|) SnapTree.Node.right)) null) 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#3|) SnapTree.Node.right))) SnapTree.Node.Contents))))) |C#0@@1| |Nodes#0@@1|))))))))))) (= (SnapTree.Iterator.R ($LS $ly@@5) true $Heap@@8 |wlist#0@@1| |n#0@@1| |C#0@@1| |Nodes#0@@1|) (ite (SnapTree.List.Nil_q |wlist#0@@1|) (= |n#0@@1| (|Seq#Length| |C#0@@1|)) (let ((|rest#2| (SnapTree.List._h1 |wlist#0@@1|)))
(let ((|p#2| (SnapTree.List._h0 |wlist#0@@1|)))
 (and (and (and (and (and (|Set#IsMember| |Nodes#0@@1| ($Box refType |p#2|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.Repr)) |Nodes#0@@1|)) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@8 |p#2|)) (and (<= (LitInt 0) |n#0@@1|) (< |n#0@@1| (|Seq#Length| |C#0@@1|)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.data))) (U_2_int ($Unbox intType (|Seq#Index| |C#0@@1| |n#0@@1|))))) (and (SnapTree.Iterator.R $ly@@5 reveal_SnapTree.Iterator.R $Heap@@8 |rest#2| (+ (+ |n#0@@1| 1) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.right)) null) 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.right))) SnapTree.Node.Contents))))) |C#0@@1| |Nodes#0@@1|) (and (<= (|Seq#Length| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.Contents)) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.left)) null) 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.left))) SnapTree.Node.Contents)))))) (|Seq#Length| (|Seq#Drop| |C#0@@1| |n#0@@1|))) (|Seq#SameUntil| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.Contents)) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.left)) null) 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.left))) SnapTree.Node.Contents))))) (|Seq#Drop| |C#0@@1| |n#0@@1|) (|Seq#Length| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.Contents)) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.left)) null) 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 |p#2|) SnapTree.Node.left))) SnapTree.Node.Contents))))))))))))))))
 :qid |SnapshotableTreesdfy.514:35|
 :skolemid |1938|
 :pattern ( (SnapTree.Iterator.R ($LS $ly@@5) true $Heap@@8 |wlist#0@@1| |n#0@@1| |C#0@@1| |Nodes#0@@1|) ($IsGoodHeap $Heap@@8))
)))
(assert (forall ((s@@16 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@16 val@@1)) s@@16) (= (|Seq#Build_inv1| (|Seq#Build| s@@16 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |1325|
 :pattern ( (|Seq#Build| s@@16 val@@1))
)))
(assert (forall ((s@@17 T@U) (n@@7 Int) (x@@14 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@17 n@@7) x@@14) (exists ((i@@6 Int) ) (!  (and (and (and (<= 0 n@@7) (<= n@@7 i@@6)) (< i@@6 (|Seq#Length| s@@17))) (= (|Seq#Index| s@@17 i@@6) x@@14))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |1339|
 :pattern ( (|Seq#Index| s@@17 i@@6))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |1340|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@17 n@@7) x@@14))
)))
(assert (forall ((bx@@14 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@14 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@14)) bx@@14) ($Is SetType ($Unbox SetType bx@@14) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1134|
 :pattern ( ($IsBox bx@@14 (TSet t@@9)))
)))
(assert (forall ((bx@@15 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@15 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@15)) bx@@15) ($Is SeqType ($Unbox SeqType bx@@15) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1137|
 :pattern ( ($IsBox bx@@15 (TSeq t@@10)))
)))
(assert (forall (($h@@40 T@U) ($o@@43 T@U) ) (!  (=> (and ($IsGoodHeap $h@@40) (and (or (not (= $o@@43 null)) (not true)) (= (dtype $o@@43) Tclass.SnapTree.Tree?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@43) SnapTree.Tree.Contents)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1818|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@43) SnapTree.Tree.Contents)))
)))
(assert (forall (($h@@41 T@U) ($o@@44 T@U) ) (!  (=> (and ($IsGoodHeap $h@@41) (and (or (not (= $o@@44 null)) (not true)) (= (dtype $o@@44) Tclass.SnapTree.Node?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@44) SnapTree.Node.Contents)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1884|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@44) SnapTree.Node.Contents)))
)))
(assert (forall (($h@@42 T@U) ($o@@45 T@U) ) (!  (=> (and ($IsGoodHeap $h@@42) (and (or (not (= $o@@45 null)) (not true)) (= (dtype $o@@45) Tclass.SnapTree.Iterator?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@45) SnapTree.Iterator.Contents)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1917|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@45) SnapTree.Iterator.Contents)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.SnapTree.Tree) Tagclass.SnapTree.Tree))
(assert (= (TagFamily Tclass.SnapTree.Tree) tytagFamily$Tree))
(assert (= (Tag Tclass.SnapTree.Iterator) Tagclass.SnapTree.Iterator))
(assert (= (TagFamily Tclass.SnapTree.Iterator) tytagFamily$Iterator))
(assert (= (Tag Tclass.SnapTree.Tree?) Tagclass.SnapTree.Tree?))
(assert (= (TagFamily Tclass.SnapTree.Tree?) tytagFamily$Tree))
(assert (= (Tag Tclass.SnapTree.Iterator?) Tagclass.SnapTree.Iterator?))
(assert (= (TagFamily Tclass.SnapTree.Iterator?) tytagFamily$Iterator))
(assert (= (Tag Tclass.SnapTree.List) Tagclass.SnapTree.List))
(assert (= (TagFamily Tclass.SnapTree.List) tytagFamily$List))
(assert (= (Tag Tclass.SnapTree.Node) Tagclass.SnapTree.Node))
(assert (= (TagFamily Tclass.SnapTree.Node) tytagFamily$Node))
(assert (= (Tag Tclass.SnapTree.Node?) Tagclass.SnapTree.Node?))
(assert (= (TagFamily Tclass.SnapTree.Node?) tytagFamily$Node))
(assert (forall ((s@@18 T@U) (n@@8 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@8) (<= n@@8 k@@2)) (< k@@2 (|Seq#Length| s@@18))) (= (|Seq#Index| (|Seq#Drop| s@@18 n@@8) (- k@@2 n@@8)) (|Seq#Index| s@@18 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |1350|
 :pattern ( (|Seq#Index| s@@18 k@@2) (|Seq#Drop| s@@18 n@@8))
)))
(assert (= |#SnapTree.List.Nil| (Lit DatatypeTypeType |#SnapTree.List.Nil|)))
(assert (forall ((|s#0@@2| T@U) (|d#0@@2| Int) ) (!  (=> (or (|SnapTree.Tree.AllBelow#canCall| (Lit SeqType |s#0@@2|) (LitInt |d#0@@2|)) ($Is SeqType |s#0@@2| (TSeq TInt))) (= (SnapTree.Tree.AllBelow (Lit SeqType |s#0@@2|) (LitInt |d#0@@2|)) (forall ((|i#5@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#5@@1|) (< |i#5@@1| (|Seq#Length| (Lit SeqType |s#0@@2|)))) (< (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@2|) |i#5@@1|))) |d#0@@2|))
 :qid |SnapshotableTreesdfy.126:14|
 :skolemid |1847|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@2| |i#5@@1|)))
))))
 :qid |SnapshotableTreesdfy.124:37|
 :weight 3
 :skolemid |1848|
 :pattern ( (SnapTree.Tree.AllBelow (Lit SeqType |s#0@@2|) (LitInt |d#0@@2|)))
)))
(assert (forall (($reveal@@6 Bool) ($Heap@@9 T@U) (this@@7 T@U) ) (!  (=> (or (|SnapTree.Tree.Valid#canCall| $Heap@@9 this@@7) (and ($IsGoodHeap $Heap@@9) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass.SnapTree.Tree) ($IsAlloc refType this@@7 Tclass.SnapTree.Tree $Heap@@9))))) (and (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@9 this@@7) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@7) SnapTree.Tree.Repr)) ($Box refType this@@7)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@7) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@7) SnapTree.Tree.Repr))))) (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@9 this@@7) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 this@@7) SnapTree.Tree.Contents))))))
 :qid |SnapshotableTreesdfy.94:28|
 :skolemid |1833|
 :pattern ( (SnapTree.Tree.Valid $reveal@@6 $Heap@@9 this@@7))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Equal| a@@7 b@@4) (forall ((o@@4 T@U) ) (! (= (|Set#IsMember| a@@7 o@@4) (|Set#IsMember| b@@4 o@@4))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1250|
 :pattern ( (|Set#IsMember| a@@7 o@@4))
 :pattern ( (|Set#IsMember| b@@4 o@@4))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1251|
 :pattern ( (|Set#Equal| a@@7 b@@4))
)))
(assert (forall ((s@@19 T@U) (m@@1 Int) (n@@9 Int) ) (!  (=> (and (and (<= 0 m@@1) (<= 0 n@@9)) (<= (+ m@@1 n@@9) (|Seq#Length| s@@19))) (= (|Seq#Drop| (|Seq#Drop| s@@19 m@@1) n@@9) (|Seq#Drop| s@@19 (+ m@@1 n@@9))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |1359|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@19 m@@1) n@@9))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@10 Int) ) (! (= (|Seq#SameUntil| s0@@2 s1@@2 n@@10) (forall ((j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 n@@10)) (= (|Seq#Index| s0@@2 j@@3) (|Seq#Index| s1@@2 j@@3)))
 :qid |DafnyPreludebpl.1232:19|
 :skolemid |1344|
 :pattern ( (|Seq#Index| s0@@2 j@@3))
 :pattern ( (|Seq#Index| s1@@2 j@@3))
)))
 :qid |DafnyPreludebpl.1229:15|
 :skolemid |1345|
 :pattern ( (|Seq#SameUntil| s0@@2 s1@@2 n@@10))
)))
(assert (forall ((s0@@3 T@U) (s1@@3 T@U) (n@@11 Int) ) (!  (and (=> (< n@@11 (|Seq#Length| s0@@3)) (= (|Seq#Index| (|Seq#Append| s0@@3 s1@@3) n@@11) (|Seq#Index| s0@@3 n@@11))) (=> (<= (|Seq#Length| s0@@3) n@@11) (= (|Seq#Index| (|Seq#Append| s0@@3 s1@@3) n@@11) (|Seq#Index| s1@@3 (- n@@11 (|Seq#Length| s0@@3))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |1329|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@3 s1@@3) n@@11))
)))
(assert (forall ((d@@4 T@U) ($h@@43 T@U) ) (!  (=> (and ($IsGoodHeap $h@@43) (and (SnapTree.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.SnapTree.List $h@@43))) ($IsAlloc refType (SnapTree.List._h0 d@@4) Tclass.SnapTree.Node $h@@43))
 :qid |unknown.0:0|
 :skolemid |1805|
 :pattern ( ($IsAlloc refType (SnapTree.List._h0 d@@4) Tclass.SnapTree.Node $h@@43))
)))
(assert (forall ((d@@5 T@U) ($h@@44 T@U) ) (!  (=> (and ($IsGoodHeap $h@@44) (and (SnapTree.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.SnapTree.List $h@@44))) ($IsAlloc DatatypeTypeType (SnapTree.List._h1 d@@5) Tclass.SnapTree.List $h@@44))
 :qid |unknown.0:0|
 :skolemid |1806|
 :pattern ( ($IsAlloc DatatypeTypeType (SnapTree.List._h1 d@@5) Tclass.SnapTree.List $h@@44))
)))
(assert (forall (($reveal@@7 Bool) ($h0@@4 T@U) ($h1@@4 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@8 null)) (not true)) ($Is refType this@@8 Tclass.SnapTree.Iterator))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@46 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@46 null)) (not true)) (or (or (or (= $o@@46 this@@8) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 this@@8) SnapTree.Iterator.IterRepr)) ($Box refType $o@@46))) (= $o@@46 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 this@@8) SnapTree.Iterator.T)))) (|Set#IsMember| (ite  (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 this@@8) SnapTree.Iterator.T)) null)) (not true)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 this@@8) SnapTree.Iterator.T))) SnapTree.Tree.Repr)) |Set#Empty|) ($Box refType $o@@46)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@46) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@46) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |1927|
)) (= (SnapTree.Iterator.Valid $reveal@@7 $h0@@4 this@@8) (SnapTree.Iterator.Valid $reveal@@7 $h1@@4 this@@8))))
 :qid |unknown.0:0|
 :skolemid |1928|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (SnapTree.Iterator.Valid $reveal@@7 $h1@@4 this@@8))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#SnapTree.List.Cons| (Lit refType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#SnapTree.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |1807|
 :pattern ( (|#SnapTree.List.Cons| (Lit refType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@15 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@15))) (Lit BoxType ($Box intType (int_2_U x@@15))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1120|
 :pattern ( ($Box intType (int_2_U (LitInt x@@15))))
)))
(assert (forall ((x@@16 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@16)) (Lit BoxType ($Box T@@5 x@@16)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1118|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@16)))
)))
(assert (forall (($Heap@@10 T@U) (|left#0@@5| T@U) (|data#0@@5| Int) (|right#0@@5| T@U) ) (!  (=> (or (|SnapTree.Node.CombineSplit#canCall| $Heap@@10 |left#0@@5| |data#0@@5| |right#0@@5|) (and (and ($IsGoodHeap $Heap@@10) ($Is refType |left#0@@5| Tclass.SnapTree.Node?)) ($Is refType |right#0@@5| Tclass.SnapTree.Node?))) (= (SnapTree.Node.CombineSplit $Heap@@10 |left#0@@5| |data#0@@5| |right#0@@5|) (ite  (and (= |left#0@@5| null) (= |right#0@@5| null)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@5|))) (ite  (and (or (not (= |left#0@@5| null)) (not true)) (= |right#0@@5| null)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 |left#0@@5|) SnapTree.Node.Contents)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@5|)))) (ite  (and (= |left#0@@5| null) (or (not (= |right#0@@5| null)) (not true))) (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@5|))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 |right#0@@5|) SnapTree.Node.Contents))) (|Seq#Append| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 |left#0@@5|) SnapTree.Node.Contents)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@5|)))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@10 |right#0@@5|) SnapTree.Node.Contents))))))))
 :qid |SnapshotableTreesdfy.273:27|
 :skolemid |1910|
 :pattern ( (SnapTree.Node.CombineSplit $Heap@@10 |left#0@@5| |data#0@@5| |right#0@@5|) ($IsGoodHeap $Heap@@10))
)))
(assert (forall ((s@@20 T@U) ) (!  (=> (= (|Seq#Length| s@@20) 0) (= s@@20 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1324|
 :pattern ( (|Seq#Length| s@@20))
)))
(assert (forall ((s@@21 T@U) (n@@12 Int) ) (!  (=> (= n@@12 0) (= (|Seq#Take| s@@21 n@@12) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |1358|
 :pattern ( (|Seq#Take| s@@21 n@@12))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@47 T@U) ($f@@5 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@47 $f@@5))  (=> (and (or (not (= $o@@47 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@47) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@47))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1948|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@47 $f@@5))
)))
(assert (forall ((h@@5 T@U) (v@@9 T@U) ) (! ($IsAlloc intType v@@9 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1163|
 :pattern ( ($IsAlloc intType v@@9 TInt h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@10 T@U) ) (! ($IsAlloc boolType v@@10 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1165|
 :pattern ( ($IsAlloc boolType v@@10 TBool h@@6))
)))
(assert (forall ((v@@11 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@11 (TSeq t0@@4)) (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length| v@@11))) ($IsBox (|Seq#Index| v@@11 i@@7) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1155|
 :pattern ( (|Seq#Index| v@@11 i@@7))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1156|
 :pattern ( ($Is SeqType v@@11 (TSeq t0@@4)))
)))
(assert (forall ((s@@22 T@U) (i@@8 Int) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| s@@22))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@22 i@@8))) (|Seq#Rank| s@@22)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |1369|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@22 i@@8))))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is intType v@@12 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1142|
 :pattern ( ($Is intType v@@12 TInt))
)))
(assert (forall ((v@@13 T@U) ) (! ($Is boolType v@@13 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1144|
 :pattern ( ($Is boolType v@@13 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |call2formal@hasCurrent#0@0| () Bool)
(declare-fun |t#0| () T@U)
(declare-fun |x##0_0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call3formal@pos#0@0| () Int)
(declare-fun |call2formal@iter#0@0| () T@U)
(declare-fun $Heap@@11 () T@U)
(declare-fun |call2formal@iter#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |defass#it#0| () Bool)
(declare-fun |it#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$SnapTreeTestHarness.__default.TestConcurrentModification)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (=> |call2formal@hasCurrent#0@0| (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= |t#0| null)) (not true))) (=> (or (not (= |t#0| null)) (not true)) (=> (= |x##0_0@0| (LitInt 52)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (forall (($o@@48 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@48) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.MutableRepr)) ($Box refType $o@@48))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@48 $f@@6)))
 :qid |SnapshotableTreesdfy.71:26|
 :skolemid |1792|
))) (=> (forall (($o@@49 T@U) ($f@@7 T@U) ) (!  (=> (and (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@49) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.MutableRepr)) ($Box refType $o@@49))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@49 $f@@7)))
 :qid |SnapshotableTreesdfy.71:26|
 :skolemid |1792|
)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@1 |t#0|)) (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@1 |t#0|) (and (=> (= (ControlFlow 0 2) (- 0 7)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.IsReadonly))))) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.IsReadonly)))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (and (|SnapTree.Tree.Valid#canCall| $Heap@2 |t#0|) (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@2 |t#0|)) (and (forall (($o@@50 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0|) SnapTree.Tree.Repr)) ($Box refType $o@@50)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.Repr)) ($Box refType $o@@50)))) (or (not (= $o@@50 null)) (not true)))
 :qid |SnapshotableTreesdfy.191:26|
 :skolemid |1869|
 :pattern (  (or (not (= $o@@50 null)) (not true)))
)) (forall (($o@@51 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0|) SnapTree.Tree.Repr)) ($Box refType $o@@51)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.Repr)) ($Box refType $o@@51)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@51) alloc)))))
 :qid |SnapshotableTreesdfy.191:26|
 :skolemid |1870|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@51) alloc)))
)))) (and (and (forall (($o@@52 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0|) SnapTree.Tree.MutableRepr)) ($Box refType $o@@52)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.MutableRepr)) ($Box refType $o@@52)))) (or (not (= $o@@52 null)) (not true)))
 :qid |SnapshotableTreesdfy.191:53|
 :skolemid |1871|
 :pattern (  (or (not (= $o@@52 null)) (not true)))
)) (forall (($o@@53 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0|) SnapTree.Tree.MutableRepr)) ($Box refType $o@@53)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.MutableRepr)) ($Box refType $o@@53)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@53) alloc)))))
 :qid |SnapshotableTreesdfy.191:53|
 :skolemid |1872|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@53) alloc)))
))) (= (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0|) SnapTree.Tree.IsReadonly))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.IsReadonly)))))) (and (and (and (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.Contents)) ($Box intType (int_2_U |x##0_0@0|))) (< |call3formal@pos#0@0| 0)) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.Contents)) ($Box intType (int_2_U |x##0_0@0|))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0|) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.Contents))))) (and (=> (not (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.Contents)) ($Box intType (int_2_U |x##0_0@0|)))) (<= (LitInt 0) |call3formal@pos#0@0|)) (=> (not (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.Contents)) ($Box intType (int_2_U |x##0_0@0|)))) (< |call3formal@pos#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0|) SnapTree.Tree.Contents))))))) (and (and (=> (not (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.Contents)) ($Box intType (int_2_U |x##0_0@0|)))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0|) SnapTree.Tree.Contents))) (+ (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.Contents))) 1))) (=> (not (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.Contents)) ($Box intType (int_2_U |x##0_0@0|)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0|) SnapTree.Tree.Contents)) (|Seq#Append| (|Seq#Append| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.Contents)) |call3formal@pos#0@0|) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |x##0_0@0|)))) (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.Contents)) |call3formal@pos#0@0|))))) (and (forall (($o@@54 T@U) ) (!  (=> (and (or (not (= $o@@54 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@54) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@54) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@54)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0|) SnapTree.Tree.MutableRepr)) ($Box refType $o@@54))))
 :qid |SnapshotableTreesdfy.188:12|
 :skolemid |1873|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@54))
)) ($HeapSucc $Heap@1 $Heap@2))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) true) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |call2formal@iter#0@0| null)) (not true))) (=> (or (not (= |call2formal@iter#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall (($o@@55 T@U) ($f@@8 T@U) ) (!  (=> (and (and (or (not (= $o@@55 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@55) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |call2formal@iter#0@0|) SnapTree.Iterator.IterRepr)) ($Box refType $o@@55))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@55 $f@@8)))
 :qid |SnapshotableTreesdfy.72:26|
 :skolemid |1793|
))) (=> (forall (($o@@56 T@U) ($f@@9 T@U) ) (!  (=> (and (and (or (not (= $o@@56 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@56) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |call2formal@iter#0@0|) SnapTree.Iterator.IterRepr)) ($Box refType $o@@56))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@56 $f@@9)))
 :qid |SnapshotableTreesdfy.72:26|
 :skolemid |1793|
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (SnapTree.Iterator.Valid reveal_SnapTree.Iterator.Valid $Heap@2 |call2formal@iter#0@0|)) (=> (SnapTree.Iterator.Valid reveal_SnapTree.Iterator.Valid $Heap@2 |call2formal@iter#0@0|) (=> (= (ControlFlow 0 2) (- 0 1)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |call2formal@iter#0@0|) SnapTree.Iterator.N))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |call2formal@iter#0@0|) SnapTree.Iterator.Contents))))))))))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap@@11 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 |t#0|) SnapTree.Tree.MutableRepr)))) (and (=> (= (ControlFlow 0 12) (- 0 19)) (or (not (= |t#0| null)) (not true))) (=> (or (not (= |t#0| null)) (not true)) (=> (and ($Is refType |call2formal@iter#0| Tclass.SnapTree.Iterator) ($IsAlloc refType |call2formal@iter#0| Tclass.SnapTree.Iterator $Heap@@11)) (and (=> (= (ControlFlow 0 12) (- 0 18)) (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@11 |t#0|)) (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@11 |t#0|) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and ($Is refType |call2formal@iter#0@0| Tclass.SnapTree.Iterator) ($IsAlloc refType |call2formal@iter#0@0| Tclass.SnapTree.Iterator $Heap@0)) (and (|SnapTree.Iterator.Valid#canCall| $Heap@0 |call2formal@iter#0@0|) (SnapTree.Iterator.Valid reveal_SnapTree.Iterator.Valid $Heap@0 |call2formal@iter#0@0|))) (=> (and (and (and (forall (($o@@57 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.IterRepr)) ($Box refType $o@@57)) (or (not (= $o@@57 null)) (not true)))
 :qid |SnapshotableTreesdfy.220:31|
 :skolemid |1874|
 :pattern (  (or (not (= $o@@57 null)) (not true)))
)) (forall (($o@@58 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.IterRepr)) ($Box refType $o@@58)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 $o@@58) alloc)))))
 :qid |SnapshotableTreesdfy.220:31|
 :skolemid |1875|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.IterRepr)) ($Box refType $o@@58)))
))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.T)) |t#0|)) (and (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |t#0|) SnapTree.Tree.Contents))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.N))) (LitInt (- 0 1)))) (and (forall (($o@@59 T@U) ) (!  (=> (and (or (not (= $o@@59 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 $o@@59) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@59) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 $o@@59)))
 :qid |SnapshotableTreesdfy.218:12|
 :skolemid |1876|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@59))
)) ($HeapSucc $Heap@@11 $Heap@0)))) (and (=> (= (ControlFlow 0 12) (- 0 17)) true) (and (=> (= (ControlFlow 0 12) (- 0 16)) (or (not (= |call2formal@iter#0@0| null)) (not true))) (=> (or (not (= |call2formal@iter#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 12) (- 0 15)) (forall (($o@@60 T@U) ($f@@10 T@U) ) (!  (=> (and (and (or (not (= $o@@60 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@60) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.IterRepr)) ($Box refType $o@@60))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@60 $f@@10)))
 :qid |SnapshotableTreesdfy.69:28|
 :skolemid |1791|
))) (=> (forall (($o@@61 T@U) ($f@@11 T@U) ) (!  (=> (and (and (or (not (= $o@@61 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@61) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.IterRepr)) ($Box refType $o@@61))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@61 $f@@11)))
 :qid |SnapshotableTreesdfy.69:28|
 :skolemid |1791|
)) (and (=> (= (ControlFlow 0 12) (- 0 14)) (SnapTree.Iterator.Valid reveal_SnapTree.Iterator.Valid $Heap@0 |call2formal@iter#0@0|)) (=> (SnapTree.Iterator.Valid reveal_SnapTree.Iterator.Valid $Heap@0 |call2formal@iter#0@0|) (and (=> (= (ControlFlow 0 12) (- 0 13)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.N))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.Contents))))) (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.N))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.Contents)))) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (|SnapTree.Iterator.Valid#canCall| $Heap@1 |call2formal@iter#0@0|) (SnapTree.Iterator.Valid reveal_SnapTree.Iterator.Valid $Heap@1 |call2formal@iter#0@0|)) (and (forall (($o@@62 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |call2formal@iter#0@0|) SnapTree.Iterator.IterRepr)) ($Box refType $o@@62)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.IterRepr)) ($Box refType $o@@62)))) (or (not (= $o@@62 null)) (not true)))
 :qid |SnapshotableTreesdfy.613:26|
 :skolemid |1942|
 :pattern (  (or (not (= $o@@62 null)) (not true)))
)) (forall (($o@@63 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |call2formal@iter#0@0|) SnapTree.Iterator.IterRepr)) ($Box refType $o@@63)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.IterRepr)) ($Box refType $o@@63)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@63) alloc)))))
 :qid |SnapshotableTreesdfy.613:26|
 :skolemid |1943|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@63) alloc)))
)))) (=> (and (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |call2formal@iter#0@0|) SnapTree.Iterator.T))) SnapTree.Tree.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.T))) SnapTree.Tree.Repr))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |call2formal@iter#0@0|) SnapTree.Iterator.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.Contents)))) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |call2formal@iter#0@0|) SnapTree.Iterator.T)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.T))) (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.N))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |call2formal@iter#0@0|) SnapTree.Iterator.Contents)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |call2formal@iter#0@0|) SnapTree.Iterator.N))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.N))) 1))))) (and (and (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.N))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |call2formal@iter#0@0|) SnapTree.Iterator.Contents)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |call2formal@iter#0@0|) SnapTree.Iterator.N))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.N))))) (= |call2formal@hasCurrent#0@0|  (and (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |call2formal@iter#0@0|) SnapTree.Iterator.N)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |call2formal@iter#0@0|) SnapTree.Iterator.N))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |call2formal@iter#0@0|) SnapTree.Iterator.Contents))))))) (and (forall (($o@@64 T@U) ) (!  (=> (and (or (not (= $o@@64 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@64) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@64) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@64)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |call2formal@iter#0@0|) SnapTree.Iterator.IterRepr)) ($Box refType $o@@64))))
 :qid |SnapshotableTreesdfy.610:34|
 :skolemid |1944|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@64))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 12) 2) anon3_Then_correct) (=> (= (ControlFlow 0 12) 11) anon3_Else_correct)))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@11) ($IsHeapAnchor $Heap@@11)) (=> (and (and (and ($Is refType |t#0| Tclass.SnapTree.Tree) ($IsAlloc refType |t#0| Tclass.SnapTree.Tree $Heap@@11)) (and (=> |defass#it#0| (and ($Is refType |it#0| Tclass.SnapTree.Iterator) ($IsAlloc refType |it#0| Tclass.SnapTree.Iterator $Heap@@11))) true)) (and (and (= 0 $FunctionContextHeight) (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@11 |t#0|)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 |t#0|) SnapTree.Tree.IsReadonly)))) (= (ControlFlow 0 20) 12)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
