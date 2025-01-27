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
(declare-fun |##SnapTree.List.Nil| () T@U)
(declare-fun Tagclass.SnapTree.List () T@U)
(declare-fun |##SnapTree.List.Cons| () T@U)
(declare-fun Tagclass.SnapTree.Node () T@U)
(declare-fun Tagclass.SnapTree.Node? () T@U)
(declare-fun class.SnapTree.Node? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#SnapTree.List.Cons| (T@U T@U) T@U)
(declare-fun Tclass.SnapTree.List () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.SnapTree.Node () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun SnapTree.Tree.IsSorted (Bool T@U) Bool)
(declare-fun |SnapTree.Tree.IsSorted#canCall| (T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#SnapTree.List.Nil| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun Tclass.SnapTree.Node? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
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
(declare-fun |SnapTree.Node.NodeValid#canCall| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
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
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun SnapTree.List.Nil_q (T@U) Bool)
(declare-fun SnapTree.List.Cons_q (T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun SnapTree.Iterator.R (T@U Bool T@U T@U Int T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun |SnapTree.Iterator.R#canCall| (T@U T@U Int T@U T@U) Bool)
(declare-fun SnapTree.List._h1 (T@U) T@U)
(declare-fun SnapTree.List._h0 (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun reveal_SnapTree.Iterator.R () Bool)
(declare-fun |Seq#SameUntil| (T@U T@U Int) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |$IsA#SnapTree.List| (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object |##SnapTree.List.Nil| Tagclass.SnapTree.List |##SnapTree.List.Cons| Tagclass.SnapTree.Node Tagclass.SnapTree.Node? class.SnapTree.Node? tytagFamily$object tytagFamily$List tytagFamily$Node field$Contents field$Repr field$data field$left field$right)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor refType) 4)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#SnapTree.List.Cons| |a#18#0#0| |a#18#1#0|) Tclass.SnapTree.List)  (and ($Is refType |a#18#0#0| Tclass.SnapTree.Node) ($Is DatatypeTypeType |a#18#1#0| Tclass.SnapTree.List)))
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |647|
 :pattern ( ($Is DatatypeTypeType (|#SnapTree.List.Cons| |a#18#0#0| |a#18#1#0|) Tclass.SnapTree.List))
)))
(assert (= (Ctor SeqType) 5))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|c#0| T@U) ) (!  (=> (or (|SnapTree.Tree.IsSorted#canCall| |c#0|) (and (< 0 $FunctionContextHeight) ($Is SeqType |c#0| (TSeq TInt)))) (= (SnapTree.Tree.IsSorted true |c#0|) (forall ((|i#0| Int) (|j#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|)) (< |j#0| (|Seq#Length| |c#0|))) (< (U_2_int ($Unbox intType (|Seq#Index| |c#0| |i#0|))) (U_2_int ($Unbox intType (|Seq#Index| |c#0| |j#0|)))))
 :qid |SnapshotableTreesdfy.112:14|
 :skolemid |686|
 :pattern ( ($Unbox intType (|Seq#Index| |c#0| |j#0|)) ($Unbox intType (|Seq#Index| |c#0| |i#0|)))
))))
 :qid |SnapshotableTreesdfy.110:47|
 :skolemid |687|
 :pattern ( (SnapTree.Tree.IsSorted true |c#0|))
))))
(assert (forall ((|a#18#0#0@@0| T@U) (|a#18#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#SnapTree.List.Cons| |a#18#0#0@@0| |a#18#1#0@@0|) Tclass.SnapTree.List $h)  (and ($IsAlloc refType |a#18#0#0@@0| Tclass.SnapTree.Node $h) ($IsAlloc DatatypeTypeType |a#18#1#0@@0| Tclass.SnapTree.List $h))))
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |648|
 :pattern ( ($IsAlloc DatatypeTypeType (|#SnapTree.List.Cons| |a#18#0#0@@0| |a#18#1#0@@0|) Tclass.SnapTree.List $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#SnapTree.List.Nil|) |##SnapTree.List.Nil|))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.SnapTree.Node?)  (or (= $o null) (= (dtype $o) Tclass.SnapTree.Node?)))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($Is refType $o Tclass.SnapTree.Node?))
)))
(assert (forall ((s@@0 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@0)) (and (= (|Seq#Take| (|Seq#Append| s@@0 t) n@@0) s@@0) (= (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@0 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Node $h@@1) ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Node? $h@@1))
 :qid |unknown.0:0|
 :skolemid |996|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Node $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Node? $h@@1))
)))
(assert (= (FDim SnapTree.Node.Repr) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$Repr) SnapTree.Node.Repr))
(assert ($IsGhostField SnapTree.Node.Repr))
(assert (= (FDim SnapTree.Node.Contents) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$Contents) SnapTree.Node.Contents))
(assert ($IsGhostField SnapTree.Node.Contents))
(assert ($Is DatatypeTypeType |#SnapTree.List.Nil| Tclass.SnapTree.List))
(assert (= (FDim SnapTree.Node.data) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$data) SnapTree.Node.data))
(assert  (not ($IsGhostField SnapTree.Node.data)))
(assert (= (FDim SnapTree.Node.left) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$left) SnapTree.Node.left))
(assert  (not ($IsGhostField SnapTree.Node.left)))
(assert (= (FDim SnapTree.Node.right) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$right) SnapTree.Node.right))
(assert  (not ($IsGhostField SnapTree.Node.right)))
(assert (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#SnapTree.List.Nil| Tclass.SnapTree.List $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |641|
 :pattern ( ($IsAlloc DatatypeTypeType |#SnapTree.List.Nil| Tclass.SnapTree.List $h@@2))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.SnapTree.Node? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.SnapTree.Node? $h@@4))
)))
(assert (forall ((s@@1 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@1 n@@1) s@@1))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@1 n@@1))
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
(assert (= (Ctor SetType) 9))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|SnapTree.Node.NodeValid#canCall| $Heap this) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.SnapTree.Node) ($IsAlloc refType this Tclass.SnapTree.Node $Heap)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) ($Box refType this)) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Box refType this))) (|SnapTree.Node.NodeValid#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Box refType this)))) (SnapTree.Node.NodeValid $ly reveal_SnapTree.Node.NodeValid $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Box refType this))) (|SnapTree.Node.NodeValid#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Box refType this)))) (SnapTree.Node.NodeValid $ly reveal_SnapTree.Node.NodeValid $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))))) (=> (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) null)) (not true))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)))) (and (|SnapTree.Node.SortedSplit#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) (=> (SnapTree.Node.SortedSplit $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) (and (|SnapTree.Node.CombineSplit#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) (=> (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Contents)) (SnapTree.Node.CombineSplit $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)))) (|SnapTree.Tree.IsSorted#canCall| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Contents))))))))))))) (= (SnapTree.Node.NodeValid ($LS $ly) true $Heap this)  (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) ($Box refType this)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Box refType this)))) (SnapTree.Node.NodeValid $ly reveal_SnapTree.Node.NodeValid $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)))))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) null)) (not true)) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr)) ($Box refType this)))) (SnapTree.Node.NodeValid $ly reveal_SnapTree.Node.NodeValid $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)))))) (=> (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) null)) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)) null)) (not true))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))) SnapTree.Node.Repr))))) (SnapTree.Node.SortedSplit $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Contents)) (SnapTree.Node.CombineSplit $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.left)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.data))) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.right))))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) SnapTree.Node.Contents)))))))
 :qid |SnapshotableTreesdfy.253:31|
 :skolemid |830|
 :pattern ( (SnapTree.Node.NodeValid ($LS $ly) true $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((s@@2 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@2 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o T@U) ) (!  (=> (|Set#IsMember| a o) (|Set#IsMember| b o))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o))
 :pattern ( (|Set#IsMember| b o))
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
(assert (forall ((d T@U) ) (! (= (SnapTree.List.Nil_q d) (= (DatatypeCtorId d) |##SnapTree.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( (SnapTree.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (SnapTree.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##SnapTree.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( (SnapTree.List.Cons_q d@@0))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|left#0@@0| T@U) (|data#0@@0| Int) (|right#0@@0| T@U) ) (!  (=> (or (|SnapTree.Node.SortedSplit#canCall| $Heap@@0 |left#0@@0| |data#0@@0| |right#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is refType |left#0@@0| Tclass.SnapTree.Node?)) ($Is refType |right#0@@0| Tclass.SnapTree.Node?)))) (and (|SnapTree.Tree.SortedSplit#canCall| (ite (= |left#0@@0| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |left#0@@0|) SnapTree.Node.Contents))) |data#0@@0| (ite (= |right#0@@0| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |right#0@@0|) SnapTree.Node.Contents)))) (= (SnapTree.Node.SortedSplit $Heap@@0 |left#0@@0| |data#0@@0| |right#0@@0|) (SnapTree.Tree.SortedSplit (ite (= |left#0@@0| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |left#0@@0|) SnapTree.Node.Contents))) |data#0@@0| (ite (= |right#0@@0| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |right#0@@0|) SnapTree.Node.Contents)))))))
 :qid |SnapshotableTreesdfy.268:28|
 :skolemid |840|
 :pattern ( (SnapTree.Node.SortedSplit $Heap@@0 |left#0@@0| |data#0@@0| |right#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((s@@5 T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| s@@5))) (< (|Seq#Rank| (|Seq#Take| s@@5 i)) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |269|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@5 i)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Disjoint| a@@0 b@@0) (forall ((o@@0 T@U) ) (!  (or (not (|Set#IsMember| a@@0 o@@0)) (not (|Set#IsMember| b@@0 o@@0)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@0 b@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (SnapTree.List.Cons_q d@@1) (exists ((|a#17#0#0| T@U) (|a#17#1#0| T@U) ) (! (= d@@1 (|#SnapTree.List.Cons| |a#17#0#0| |a#17#1#0|))
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |644|
)))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( (SnapTree.List.Cons_q d@@1))
)))
(assert (forall (($ly@@0 T@U) ($reveal Bool) ($Heap@@1 T@U) (|wlist#0| T@U) (|n#0| Int) (|C#0| T@U) (|Nodes#0| T@U) ) (! (= (SnapTree.Iterator.R ($LS $ly@@0) $reveal $Heap@@1 |wlist#0| |n#0| |C#0| |Nodes#0|) (SnapTree.Iterator.R $ly@@0 $reveal $Heap@@1 |wlist#0| |n#0| |C#0| |Nodes#0|))
 :qid |SnapshotableTreesdfy.514:35|
 :skolemid |1019|
 :pattern ( (SnapTree.Iterator.R ($LS $ly@@0) $reveal $Heap@@1 |wlist#0| |n#0| |C#0| |Nodes#0|))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (SnapTree.List.Nil_q d@@2) (= d@@2 |#SnapTree.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( (SnapTree.List.Nil_q d@@2))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@2 T@U) (|wlist#0@@0| T@U) (|n#0@@0| Int) (|C#0@@0| T@U) (|Nodes#0@@0| T@U) ) (!  (=> (or (|SnapTree.Iterator.R#canCall| $Heap@@2 |wlist#0@@0| |n#0@@0| |C#0@@0| |Nodes#0@@0|) (and (< 4 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@2) ($Is DatatypeTypeType |wlist#0@@0| Tclass.SnapTree.List)) ($Is SeqType |C#0@@0| (TSeq TInt))) ($Is SetType |Nodes#0@@0| (TSet Tclass._System.object))))) (and (=> (not (SnapTree.List.Nil_q |wlist#0@@0|)) (let ((|rest#1| (SnapTree.List._h1 |wlist#0@@0|)))
(let ((|p#1| (SnapTree.List._h0 |wlist#0@@0|)))
 (=> (|Set#IsMember| |Nodes#0@@0| ($Box refType |p#1|)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#1|) SnapTree.Node.Repr)) |Nodes#0@@0|) (and (|SnapTree.Node.NodeValid#canCall| $Heap@@2 |p#1|) (=> (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@2 |p#1|) (=> (<= (LitInt 0) |n#0@@0|) (=> (< |n#0@@0| (|Seq#Length| |C#0@@0|)) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#1|) SnapTree.Node.data))) (U_2_int ($Unbox intType (|Seq#Index| |C#0@@0| |n#0@@0|)))) (|SnapTree.Iterator.R#canCall| $Heap@@2 |rest#1| (+ (+ |n#0@@0| 1) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#1|) SnapTree.Node.right)) null) 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#1|) SnapTree.Node.right))) SnapTree.Node.Contents))))) |C#0@@0| |Nodes#0@@0|))))))))))) (= (SnapTree.Iterator.R ($LS $ly@@1) true $Heap@@2 |wlist#0@@0| |n#0@@0| |C#0@@0| |Nodes#0@@0|) (ite (SnapTree.List.Nil_q |wlist#0@@0|) (= |n#0@@0| (|Seq#Length| |C#0@@0|)) (let ((|rest#0| (SnapTree.List._h1 |wlist#0@@0|)))
(let ((|p#0| (SnapTree.List._h0 |wlist#0@@0|)))
 (and (and (and (and (and (|Set#IsMember| |Nodes#0@@0| ($Box refType |p#0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.Repr)) |Nodes#0@@0|)) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@2 |p#0|)) (and (<= (LitInt 0) |n#0@@0|) (< |n#0@@0| (|Seq#Length| |C#0@@0|)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.data))) (U_2_int ($Unbox intType (|Seq#Index| |C#0@@0| |n#0@@0|))))) (and (SnapTree.Iterator.R $ly@@1 reveal_SnapTree.Iterator.R $Heap@@2 |rest#0| (+ (+ |n#0@@0| 1) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.right)) null) 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.right))) SnapTree.Node.Contents))))) |C#0@@0| |Nodes#0@@0|) (and (<= (|Seq#Length| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.Contents)) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.left)) null) 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.left))) SnapTree.Node.Contents)))))) (|Seq#Length| (|Seq#Drop| |C#0@@0| |n#0@@0|))) (|Seq#SameUntil| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.Contents)) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.left)) null) 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.left))) SnapTree.Node.Contents))))) (|Seq#Drop| |C#0@@0| |n#0@@0|) (|Seq#Length| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.Contents)) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.left)) null) 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |p#0|) SnapTree.Node.left))) SnapTree.Node.Contents))))))))))))))))
 :qid |SnapshotableTreesdfy.514:35|
 :skolemid |1025|
 :pattern ( (SnapTree.Iterator.R ($LS $ly@@1) true $Heap@@2 |wlist#0@@0| |n#0@@0| |C#0@@0| |Nodes#0@@0|) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((s@@6 T@U) (i@@0 Int) ) (!  (=> (and (< 0 i@@0) (<= i@@0 (|Seq#Length| s@@6))) (< (|Seq#Rank| (|Seq#Drop| s@@6 i@@0)) (|Seq#Rank| s@@6)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |268|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@6 i@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@7 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@7 v@@1)) (+ 1 (|Seq#Length| s@@7)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@7 v@@1))
)))
(assert (forall (($h@@5 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) SnapTree.Node.data)) TInt $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |819|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) SnapTree.Node.data)))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@1 h) ($IsAlloc T@@1 v@@2 t@@1 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@1 h))
)))
(assert (forall ((s@@8 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@8) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@8 n@@4) j@@1) (|Seq#Index| s@@8 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@8 n@@4) j@@1))
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
(assert (forall (($h@@6 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.SnapTree.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) SnapTree.Node.left)) Tclass.SnapTree.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |820|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) SnapTree.Node.left)))
)))
(assert (forall (($h@@7 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.SnapTree.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) SnapTree.Node.right)) Tclass.SnapTree.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |822|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) SnapTree.Node.right)))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall (($h@@8 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) SnapTree.Node.Contents)) (TSeq TInt) $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |815|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) SnapTree.Node.Contents)))
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
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.SnapTree.List) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.SnapTree.List)))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( ($IsBox bx@@3 Tclass.SnapTree.List))
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
(assert (forall ((s@@9 T@U) (i@@1 Int) (v@@3 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@9)) (= (|Seq#Index| (|Seq#Build| s@@9 v@@3) i@@1) v@@3)) (=> (or (not (= i@@1 (|Seq#Length| s@@9))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@9 v@@3) i@@1) (|Seq#Index| s@@9 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@9 v@@3) i@@1))
)))
(assert (forall (($h@@9 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@6) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@6) SnapTree.Node.left)) Tclass.SnapTree.Node? $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |821|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@6) SnapTree.Node.left)))
)))
(assert (forall (($h@@10 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@7) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@7) SnapTree.Node.right)) Tclass.SnapTree.Node? $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |823|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@7) SnapTree.Node.right)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (|left#0@@1| T@U) (|data#0@@1| Int) (|right#0@@1| T@U) ) (!  (=> (or (|SnapTree.Node.CombineSplit#canCall| $Heap@@3 |left#0@@1| |data#0@@1| |right#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@3) ($Is refType |left#0@@1| Tclass.SnapTree.Node?)) ($Is refType |right#0@@1| Tclass.SnapTree.Node?)))) (= (SnapTree.Node.CombineSplit $Heap@@3 |left#0@@1| |data#0@@1| |right#0@@1|) (ite  (and (= |left#0@@1| null) (= |right#0@@1| null)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@1|))) (ite  (and (or (not (= |left#0@@1| null)) (not true)) (= |right#0@@1| null)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |left#0@@1|) SnapTree.Node.Contents)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@1|)))) (ite  (and (= |left#0@@1| null) (or (not (= |right#0@@1| null)) (not true))) (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@1|))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |right#0@@1|) SnapTree.Node.Contents))) (|Seq#Append| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |left#0@@1|) SnapTree.Node.Contents)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@1|)))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |right#0@@1|) SnapTree.Node.Contents))))))))
 :qid |SnapshotableTreesdfy.273:27|
 :skolemid |846|
 :pattern ( (SnapTree.Node.CombineSplit $Heap@@3 |left#0@@1| |data#0@@1| |right#0@@1|) ($IsGoodHeap $Heap@@3))
))))
(assert (forall (($h@@11 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.SnapTree.Node?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@8) SnapTree.Node.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |816|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@8) SnapTree.Node.Repr)))
)))
(assert (forall (($h@@12 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@9) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@9) SnapTree.Node.Repr)) (TSet Tclass._System.object) $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |817|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@9) SnapTree.Node.Repr)))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#SnapTree.List| d@@3) (or (SnapTree.List.Nil_q d@@3) (SnapTree.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( (|$IsA#SnapTree.List| d@@3))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|Seq#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@1 b@@1))
)))
(assert (forall ((s@@10 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@10))) (= (|Seq#Length| (|Seq#Take| s@@10 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@10 n@@5)))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass.SnapTree.List) (or (SnapTree.List.Nil_q d@@4) (SnapTree.List.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |656|
 :pattern ( (SnapTree.List.Cons_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.SnapTree.List))
 :pattern ( (SnapTree.List.Nil_q d@@4) ($Is DatatypeTypeType d@@4 Tclass.SnapTree.List))
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
(assert (forall ((v@@4 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@4) t@@2) ($Is T@@2 v@@4 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@4) t@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (|left#0@@2| T@U) (|data#0@@2| Int) (|right#0@@2| T@U) ) (!  (=> (or (|SnapTree.Node.CombineSplit#canCall| $Heap@@4 |left#0@@2| |data#0@@2| |right#0@@2|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@4) (and ($Is refType |left#0@@2| Tclass.SnapTree.Node?) ($IsAlloc refType |left#0@@2| Tclass.SnapTree.Node? $Heap@@4))) (and ($Is refType |right#0@@2| Tclass.SnapTree.Node?) ($IsAlloc refType |right#0@@2| Tclass.SnapTree.Node? $Heap@@4))))) ($Is SeqType (SnapTree.Node.CombineSplit $Heap@@4 |left#0@@2| |data#0@@2| |right#0@@2|) (TSeq TInt)))
 :qid |SnapshotableTreesdfy.273:27|
 :skolemid |844|
 :pattern ( (SnapTree.Node.CombineSplit $Heap@@4 |left#0@@2| |data#0@@2| |right#0@@2|))
))))
(assert (forall (($ly@@2 T@U) ($reveal@@0 Bool) ($Heap@@5 T@U) (this@@0 T@U) ) (! (= (SnapTree.Node.NodeValid ($LS $ly@@2) $reveal@@0 $Heap@@5 this@@0) (SnapTree.Node.NodeValid $ly@@2 $reveal@@0 $Heap@@5 this@@0))
 :qid |SnapshotableTreesdfy.253:31|
 :skolemid |824|
 :pattern ( (SnapTree.Node.NodeValid ($LS $ly@@2) $reveal@@0 $Heap@@5 this@@0))
)))
(assert (forall ((s@@11 T@U) ) (! (<= 0 (|Seq#Length| s@@11))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@11))
)))
(assert (forall ((s@@12 T@U) (i@@2 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@2) (< i@@2 j@@2)) (<= j@@2 (|Seq#Length| s@@12))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@12 i@@2) (|Seq#Drop| s@@12 j@@2))) (|Seq#Rank| s@@12)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |270|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@12 i@@2) (|Seq#Drop| s@@12 j@@2))))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@1) h@@0) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@7) ($IsAllocBox bx@@7 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@5 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@1) h@@0))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (DatatypeCtorId (|#SnapTree.List.Cons| |a#16#0#0| |a#16#1#0|)) |##SnapTree.List.Cons|)
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |642|
 :pattern ( (|#SnapTree.List.Cons| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) ) (! (= (SnapTree.List._h0 (|#SnapTree.List.Cons| |a#20#0#0| |a#20#1#0|)) |a#20#0#0|)
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |652|
 :pattern ( (|#SnapTree.List.Cons| |a#20#0#0| |a#20#1#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) ) (! (= (SnapTree.List._h1 (|#SnapTree.List.Cons| |a#21#0#0| |a#21#1#0|)) |a#21#1#0|)
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |653|
 :pattern ( (|#SnapTree.List.Cons| |a#21#0#0| |a#21#1#0|))
)))
(assert (forall (($o@@10 T@U) ) (! ($Is refType $o@@10 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@10 Tclass._System.object?))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@1) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@3) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@6 i@@3))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@1))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall (($h@@13 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.SnapTree.Node?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) SnapTree.Node.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |818|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) SnapTree.Node.data)))
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
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) ) (! (< (DtRank |a#22#1#0|) (DtRank (|#SnapTree.List.Cons| |a#22#0#0| |a#22#1#0|)))
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |654|
 :pattern ( (|#SnapTree.List.Cons| |a#22#0#0| |a#22#1#0|))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@12 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f))  (=> (and (or (not (= $o@@12 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@12) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1950|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|left#0@@3| T@U) (|data#0@@3| Int) (|right#0@@3| T@U) ) (!  (=> (or (|SnapTree.Tree.SortedSplit#canCall| |left#0@@3| |data#0@@3| |right#0@@3|) (and (< 1 $FunctionContextHeight) (and ($Is SeqType |left#0@@3| (TSeq TInt)) ($Is SeqType |right#0@@3| (TSeq TInt))))) (and (and (|SnapTree.Tree.IsSorted#canCall| |left#0@@3|) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |left#0@@3|) (and (|SnapTree.Tree.IsSorted#canCall| |right#0@@3|) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |right#0@@3|) (and (|SnapTree.Tree.AllBelow#canCall| |left#0@@3| |data#0@@3|) (=> (SnapTree.Tree.AllBelow |left#0@@3| |data#0@@3|) (|SnapTree.Tree.AllAbove#canCall| |data#0@@3| |right#0@@3|))))))) (= (SnapTree.Tree.SortedSplit |left#0@@3| |data#0@@3| |right#0@@3|)  (and (and (and (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |left#0@@3|) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |right#0@@3|)) (SnapTree.Tree.AllBelow |left#0@@3| |data#0@@3|)) (SnapTree.Tree.AllAbove |data#0@@3| |right#0@@3|)))))
 :qid |SnapshotableTreesdfy.132:40|
 :skolemid |715|
 :pattern ( (SnapTree.Tree.SortedSplit |left#0@@3| |data#0@@3| |right#0@@3|))
))))
(assert (forall ((s@@13 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@13 val@@4)) s@@13) (= (|Seq#Build_inv1| (|Seq#Build| s@@13 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@13 val@@4))
)))
(assert (forall ((bx@@8 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@8 (TSet t@@7)))
)))
(assert (forall ((bx@@9 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@9 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@9)) bx@@9) ($Is SeqType ($Unbox SeqType bx@@9) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@9 (TSeq t@@8)))
)))
(assert (forall (($h@@14 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.SnapTree.Node?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@13) SnapTree.Node.Contents)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |814|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@13) SnapTree.Node.Contents)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.SnapTree.List) Tagclass.SnapTree.List))
(assert (= (TagFamily Tclass.SnapTree.List) tytagFamily$List))
(assert (= (Tag Tclass.SnapTree.Node) Tagclass.SnapTree.Node))
(assert (= (TagFamily Tclass.SnapTree.Node) tytagFamily$Node))
(assert (= (Tag Tclass.SnapTree.Node?) Tagclass.SnapTree.Node?))
(assert (= (TagFamily Tclass.SnapTree.Node?) tytagFamily$Node))
(assert (forall ((s@@14 T@U) (n@@6 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@6) (<= n@@6 k)) (< k (|Seq#Length| s@@14))) (= (|Seq#Index| (|Seq#Drop| s@@14 n@@6) (- k n@@6)) (|Seq#Index| s@@14 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@14 k) (|Seq#Drop| s@@14 n@@6))
)))
(assert (= |#SnapTree.List.Nil| (Lit DatatypeTypeType |#SnapTree.List.Nil|)))
(assert (forall ((s@@15 T@U) (m@@4 Int) (n@@7 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@7)) (<= (+ m@@4 n@@7) (|Seq#Length| s@@15))) (= (|Seq#Drop| (|Seq#Drop| s@@15 m@@4) n@@7) (|Seq#Drop| s@@15 (+ m@@4 n@@7))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@15 m@@4) n@@7))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (! (= (|Seq#SameUntil| s0@@1 s1@@1 n@@8) (forall ((j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 n@@8)) (= (|Seq#Index| s0@@1 j@@3) (|Seq#Index| s1@@1 j@@3)))
 :qid |DafnyPreludebpl.1232:19|
 :skolemid |242|
 :pattern ( (|Seq#Index| s0@@1 j@@3))
 :pattern ( (|Seq#Index| s1@@1 j@@3))
)))
 :qid |DafnyPreludebpl.1229:15|
 :skolemid |243|
 :pattern ( (|Seq#SameUntil| s0@@1 s1@@1 n@@8))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@9 Int) ) (!  (and (=> (< n@@9 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@9) (|Seq#Index| s0@@2 n@@9))) (=> (<= (|Seq#Length| s0@@2) n@@9) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@9) (|Seq#Index| s1@@2 (- n@@9 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@9))
)))
(assert (forall ((d@@5 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (SnapTree.List.Cons_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.SnapTree.List $h@@15))) ($IsAlloc refType (SnapTree.List._h0 d@@5) Tclass.SnapTree.Node $h@@15))
 :qid |unknown.0:0|
 :skolemid |649|
 :pattern ( ($IsAlloc refType (SnapTree.List._h0 d@@5) Tclass.SnapTree.Node $h@@15))
)))
(assert (forall ((d@@6 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (SnapTree.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass.SnapTree.List $h@@16))) ($IsAlloc DatatypeTypeType (SnapTree.List._h1 d@@6) Tclass.SnapTree.List $h@@16))
 :qid |unknown.0:0|
 :skolemid |650|
 :pattern ( ($IsAlloc DatatypeTypeType (SnapTree.List._h1 d@@6) Tclass.SnapTree.List $h@@16))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (= (|#SnapTree.List.Cons| (Lit refType |a#19#0#0|) (Lit DatatypeTypeType |a#19#1#0|)) (Lit DatatypeTypeType (|#SnapTree.List.Cons| |a#19#0#0| |a#19#1#0|)))
 :qid |SnapshotableTreesdfy.81:30|
 :skolemid |651|
 :pattern ( (|#SnapTree.List.Cons| (Lit refType |a#19#0#0|) (Lit DatatypeTypeType |a#19#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@16 T@U) ) (!  (=> (= (|Seq#Length| s@@16) 0) (= s@@16 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@16))
)))
(assert (forall ((s@@17 T@U) (n@@10 Int) ) (!  (=> (= n@@10 0) (= (|Seq#Take| s@@17 n@@10) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@17 n@@10))
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
(assert (forall ((h@@2 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@2))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@4)) (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@4) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@8 i@@4))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@4)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@3 T@U) ($reveal@@1 Bool) ($Heap@@6 T@U) (this@@1 T@U) ) (!  (=> (or (|SnapTree.Node.NodeValid#canCall| $Heap@@6 this@@1) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.SnapTree.Node) ($IsAlloc refType this@@1 Tclass.SnapTree.Node $Heap@@6)))))) (=> (SnapTree.Node.NodeValid $ly@@3 reveal_SnapTree.Node.NodeValid $Heap@@6 this@@1) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@1) SnapTree.Node.Repr)) ($Box refType this@@1)) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@1) SnapTree.Node.Contents))))))
 :qid |SnapshotableTreesdfy.253:31|
 :skolemid |828|
 :pattern ( (SnapTree.Node.NodeValid $ly@@3 $reveal@@1 $Heap@@6 this@@1))
))))
(assert (forall ((s@@18 T@U) (i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| s@@18))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@18 i@@5))) (|Seq#Rank| s@@18)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@18 i@@5))))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@9 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@7 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |stIn#0| () T@U)
(declare-fun |p#0@@0| () T@U)
(declare-fun |C#0@@1| () T@U)
(declare-fun |Nodes#0@@1| () T@U)
(declare-fun |st#0| () T@U)
(declare-fun |n#0@@1| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |st#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(set-info :boogie-vc-id Impl$$SnapTree.Iterator.Push_split2)
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
 (=> (= (ControlFlow 0 0) 2) (let ((anon0_correct  (=> (and ($IsGoodHeap $Heap@@7) ($IsHeapAnchor $Heap@@7)) (=> (and (and (and (and (and (and ($Is DatatypeTypeType |stIn#0| Tclass.SnapTree.List) ($IsAlloc DatatypeTypeType |stIn#0| Tclass.SnapTree.List $Heap@@7)) (|$IsA#SnapTree.List| |stIn#0|)) (and ($Is refType |p#0@@0| Tclass.SnapTree.Node) ($IsAlloc refType |p#0@@0| Tclass.SnapTree.Node $Heap@@7))) (and (and ($Is SeqType |C#0@@1| (TSeq TInt)) ($IsAlloc SeqType |C#0@@1| (TSeq TInt) $Heap@@7)) (and ($Is SetType |Nodes#0@@1| (TSet Tclass._System.object)) ($IsAlloc SetType |Nodes#0@@1| (TSet Tclass._System.object) $Heap@@7)))) (and (and (and ($Is DatatypeTypeType |st#0| Tclass.SnapTree.List) ($IsAlloc DatatypeTypeType |st#0| Tclass.SnapTree.List $Heap@@7)) (and (= 5 $FunctionContextHeight) (|Set#IsMember| |Nodes#0@@1| ($Box refType |p#0@@0|)))) (and (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 |p#0@@0|) SnapTree.Node.Repr)) |Nodes#0@@1|) (SnapTree.Node.NodeValid ($LS ($LS $LZ)) reveal_SnapTree.Node.NodeValid $Heap@@7 |p#0@@0|)) (and (<= (LitInt 0) |n#0@@1|) (<= |n#0@@1| (|Seq#Length| |C#0@@1|)))))) (and (and (and (and (and (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 |p#0@@0|) SnapTree.Node.Contents))) (|Seq#Length| (|Seq#Drop| |C#0@@1| |n#0@@1|))) (|Seq#SameUntil| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 |p#0@@0|) SnapTree.Node.Contents)) (|Seq#Drop| |C#0@@1| |n#0@@1|) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 |p#0@@0|) SnapTree.Node.Contents))))) (SnapTree.Iterator.R ($LS ($LS $LZ)) reveal_SnapTree.Iterator.R $Heap@@7 |stIn#0| (+ |n#0@@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 |p#0@@0|) SnapTree.Node.Contents)))) |C#0@@1| |Nodes#0@@1|)) (and (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@7 alloc false)) (= |st#0@0| (|#SnapTree.List.Cons| |p#0@@0| |stIn#0|)))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap@@7 $Heap@0) reveal_SnapTree.Iterator.R))) (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= $Heap@0 $Heap@1)) (and (and reveal_SnapTree.Node.NodeValid (or (not (= |p#0@@0| null)) (not true))) (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |p#0@@0|) SnapTree.Node.left)) null)) (not true)) (= (ControlFlow 0 2) (- 0 1))))))) (or (not (= |p#0@@0| null)) (not true))))))
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
