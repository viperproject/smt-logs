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
(declare-fun Tagclass.SnapTree.Node () T@U)
(declare-fun class.SnapTree.Tree? () T@U)
(declare-fun Tagclass.SnapTree.Tree? () T@U)
(declare-fun Tagclass.SnapTree.Node? () T@U)
(declare-fun Tagclass.SnapTree.Tree () T@U)
(declare-fun class.SnapTree.Node? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun tytagFamily$Tree () T@U)
(declare-fun field$Contents () T@U)
(declare-fun field$IsReadonly () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$MutableRepr () T@U)
(declare-fun field$root () T@U)
(declare-fun field$reprIsShared () T@U)
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
(declare-fun Tclass.SnapTree.Tree? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.SnapTree.Node? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.SnapTree.Tree () T@U)
(declare-fun Tclass.SnapTree.Node () T@U)
(declare-fun SnapTree.Tree.Contents () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun SnapTree.Tree.Repr () T@U)
(declare-fun SnapTree.Tree.MutableRepr () T@U)
(declare-fun SnapTree.Node.Repr () T@U)
(declare-fun SnapTree.Node.Contents () T@U)
(declare-fun SnapTree.Tree.IsReadonly () T@U)
(declare-fun SnapTree.Tree.root () T@U)
(declare-fun SnapTree.Tree.reprIsShared () T@U)
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
(declare-fun SnapTree.Tree.Valid (Bool T@U T@U) Bool)
(declare-fun |SnapTree.Tree.Valid#canCall| (T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun reveal_SnapTree.Tree.Valid () Bool)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass.SnapTree.Node class.SnapTree.Tree? Tagclass.SnapTree.Tree? Tagclass.SnapTree.Node? Tagclass.SnapTree.Tree class.SnapTree.Node? tytagFamily$object tytagFamily$Node tytagFamily$Tree field$Contents field$IsReadonly field$Repr field$MutableRepr field$root field$reprIsShared field$data field$left field$right)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.SnapTree.Tree?)  (or (= $o null) (= (dtype $o) Tclass.SnapTree.Tree?)))
 :qid |unknown.0:0|
 :skolemid |661|
 :pattern ( ($Is refType $o Tclass.SnapTree.Tree?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.SnapTree.Node?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.SnapTree.Node?)))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($Is refType $o@@0 Tclass.SnapTree.Node?))
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
(assert (forall ((|c#0@@1| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Tree $h@@0) ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Tree? $h@@0))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Tree $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.SnapTree.Tree? $h@@0))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.SnapTree.Node $h@@1) ($IsAlloc refType |c#0@@2| Tclass.SnapTree.Node? $h@@1))
 :qid |unknown.0:0|
 :skolemid |996|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.SnapTree.Node $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.SnapTree.Node? $h@@1))
)))
(assert (= (FDim SnapTree.Tree.Contents) 0))
(assert (= (FieldOfDecl class.SnapTree.Tree? field$Contents) SnapTree.Tree.Contents))
(assert ($IsGhostField SnapTree.Tree.Contents))
(assert (= (FDim SnapTree.Tree.Repr) 0))
(assert (= (FieldOfDecl class.SnapTree.Tree? field$Repr) SnapTree.Tree.Repr))
(assert ($IsGhostField SnapTree.Tree.Repr))
(assert (= (FDim SnapTree.Tree.MutableRepr) 0))
(assert (= (FieldOfDecl class.SnapTree.Tree? field$MutableRepr) SnapTree.Tree.MutableRepr))
(assert ($IsGhostField SnapTree.Tree.MutableRepr))
(assert (= (FDim SnapTree.Node.Repr) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$Repr) SnapTree.Node.Repr))
(assert ($IsGhostField SnapTree.Node.Repr))
(assert (= (FDim SnapTree.Node.Contents) 0))
(assert (= (FieldOfDecl class.SnapTree.Node? field$Contents) SnapTree.Node.Contents))
(assert ($IsGhostField SnapTree.Node.Contents))
(assert (= (FDim SnapTree.Tree.IsReadonly) 0))
(assert (= (FieldOfDecl class.SnapTree.Tree? field$IsReadonly) SnapTree.Tree.IsReadonly))
(assert  (not ($IsGhostField SnapTree.Tree.IsReadonly)))
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
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.SnapTree.Tree? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |662|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.SnapTree.Tree? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.SnapTree.Node? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.SnapTree.Node? $h@@4))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|SnapTree.Tree.Valid#canCall| $Heap@@0 this@@0) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.SnapTree.Tree) ($IsAlloc refType this@@0 Tclass.SnapTree.Tree $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.MutableRepr)) ($Box refType this@@0)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Repr))) (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Contents)) |Seq#Empty|)) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@0))) (|SnapTree.Node.NodeValid#canCall| $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@0)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root))) SnapTree.Node.Contents))))) (|SnapTree.Tree.IsSorted#canCall| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Contents)))))))) (= (SnapTree.Tree.Valid true $Heap@@0 this@@0)  (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.MutableRepr)) ($Box refType this@@0)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Contents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@0)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root))) SnapTree.Node.Contents)))))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.Contents)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.IsReadonly))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.reprIsShared))))) (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.reprIsShared)))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root)) null)) (not true))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.MutableRepr))))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.reprIsShared))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) SnapTree.Tree.MutableRepr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@0))))))))
 :qid |SnapshotableTreesdfy.94:28|
 :skolemid |681|
 :pattern ( (SnapTree.Tree.Valid true $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|c#0@@3| T@U) ) (!  (=> (or (|SnapTree.Tree.IsSorted#canCall| (Lit SeqType |c#0@@3|)) (and (< 0 $FunctionContextHeight) ($Is SeqType |c#0@@3| (TSeq TInt)))) (= (SnapTree.Tree.IsSorted true (Lit SeqType |c#0@@3|)) (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1|) (< |i#1| |j#1|)) (< |j#1| (|Seq#Length| (Lit SeqType |c#0@@3|)))) (< (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |c#0@@3|) |i#1|))) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |c#0@@3|) |j#1|)))))
 :qid |SnapshotableTreesdfy.112:14|
 :skolemid |688|
 :pattern ( ($Unbox intType (|Seq#Index| |c#0@@3| |j#1|)) ($Unbox intType (|Seq#Index| |c#0@@3| |i#1|)))
))))
 :qid |SnapshotableTreesdfy.110:47|
 :weight 3
 :skolemid |689|
 :pattern ( (SnapTree.Tree.IsSorted true (Lit SeqType |c#0@@3|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|left#0@@0| T@U) (|data#0@@0| Int) (|right#0@@0| T@U) ) (!  (=> (or (|SnapTree.Node.SortedSplit#canCall| $Heap@@1 |left#0@@0| |data#0@@0| |right#0@@0|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is refType |left#0@@0| Tclass.SnapTree.Node?)) ($Is refType |right#0@@0| Tclass.SnapTree.Node?)))) (and (|SnapTree.Tree.SortedSplit#canCall| (ite (= |left#0@@0| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |left#0@@0|) SnapTree.Node.Contents))) |data#0@@0| (ite (= |right#0@@0| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |right#0@@0|) SnapTree.Node.Contents)))) (= (SnapTree.Node.SortedSplit $Heap@@1 |left#0@@0| |data#0@@0| |right#0@@0|) (SnapTree.Tree.SortedSplit (ite (= |left#0@@0| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |left#0@@0|) SnapTree.Node.Contents))) |data#0@@0| (ite (= |right#0@@0| null) |Seq#Empty| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |right#0@@0|) SnapTree.Node.Contents)))))))
 :qid |SnapshotableTreesdfy.268:28|
 :skolemid |840|
 :pattern ( (SnapTree.Node.SortedSplit $Heap@@1 |left#0@@0| |data#0@@0| |right#0@@0|) ($IsGoodHeap $Heap@@1))
))))
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@4 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) (or (= $o@@4 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@4)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1949|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@4 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall (($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.SnapTree.Tree?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) SnapTree.Tree.IsReadonly)) TBool $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |666|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) SnapTree.Tree.IsReadonly)))
)))
(assert (forall (($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.SnapTree.Tree?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) SnapTree.Tree.reprIsShared)) TBool $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |675|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) SnapTree.Tree.reprIsShared)))
)))
(assert (forall (($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) SnapTree.Node.data)) TInt $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |819|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) SnapTree.Node.data)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h) ($IsAlloc T@@1 v@@1 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h))
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
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($reveal Bool) ($Heap@@2 T@U) (this@@1 T@U) ) (!  (=> (or (|SnapTree.Tree.Valid#canCall| $Heap@@2 this@@1) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.SnapTree.Tree) ($IsAlloc refType this@@1 Tclass.SnapTree.Tree $Heap@@2)))))) (and (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@2 this@@1) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@1) SnapTree.Tree.Repr)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@1) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@1) SnapTree.Tree.Repr))))) (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@2 this@@1) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@1) SnapTree.Tree.Contents))))))
 :qid |SnapshotableTreesdfy.94:28|
 :skolemid |679|
 :pattern ( (SnapTree.Tree.Valid $reveal $Heap@@2 this@@1))
))))
(assert (forall (($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.SnapTree.Tree?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) SnapTree.Tree.root)) Tclass.SnapTree.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |672|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) SnapTree.Tree.root)))
)))
(assert (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.SnapTree.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) SnapTree.Node.left)) Tclass.SnapTree.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |820|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) SnapTree.Node.left)))
)))
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.SnapTree.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) SnapTree.Node.right)) Tclass.SnapTree.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |822|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) SnapTree.Node.right)))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall (($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.SnapTree.Tree?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) SnapTree.Tree.Contents)) (TSeq TInt) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |664|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) SnapTree.Tree.Contents)))
)))
(assert (forall (($h@@12 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) SnapTree.Node.Contents)) (TSeq TInt) $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |815|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) SnapTree.Node.Contents)))
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
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.SnapTree.Node) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.SnapTree.Node)))
 :qid |unknown.0:0|
 :skolemid |646|
 :pattern ( ($IsBox bx@@3 Tclass.SnapTree.Node))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.SnapTree.Tree?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.SnapTree.Tree?)))
 :qid |unknown.0:0|
 :skolemid |660|
 :pattern ( ($IsBox bx@@4 Tclass.SnapTree.Tree?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.SnapTree.Node?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.SnapTree.Node?)))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( ($IsBox bx@@5 Tclass.SnapTree.Node?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.SnapTree.Tree) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.SnapTree.Tree)))
 :qid |unknown.0:0|
 :skolemid |677|
 :pattern ( ($IsBox bx@@6 Tclass.SnapTree.Tree))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass.SnapTree.Tree)  (and ($Is refType |c#0@@5| Tclass.SnapTree.Tree?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |810|
 :pattern ( ($Is refType |c#0@@5| Tclass.SnapTree.Tree))
 :pattern ( ($Is refType |c#0@@5| Tclass.SnapTree.Tree?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.SnapTree.Node)  (and ($Is refType |c#0@@6| Tclass.SnapTree.Node?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( ($Is refType |c#0@@6| Tclass.SnapTree.Node))
 :pattern ( ($Is refType |c#0@@6| Tclass.SnapTree.Node?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i))
)))
(assert (forall (($h@@13 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.SnapTree.Tree?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) SnapTree.Tree.root)) Tclass.SnapTree.Node? $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |673|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@13) SnapTree.Tree.root)))
)))
(assert (forall (($h@@14 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) SnapTree.Node.left)) Tclass.SnapTree.Node? $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |821|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) SnapTree.Node.left)))
)))
(assert (forall (($h@@15 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@15) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@15) SnapTree.Node.right)) Tclass.SnapTree.Node? $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |823|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@15) SnapTree.Node.right)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (|left#0@@1| T@U) (|data#0@@1| Int) (|right#0@@1| T@U) ) (!  (=> (or (|SnapTree.Node.CombineSplit#canCall| $Heap@@3 |left#0@@1| |data#0@@1| |right#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@3) ($Is refType |left#0@@1| Tclass.SnapTree.Node?)) ($Is refType |right#0@@1| Tclass.SnapTree.Node?)))) (= (SnapTree.Node.CombineSplit $Heap@@3 |left#0@@1| |data#0@@1| |right#0@@1|) (ite  (and (= |left#0@@1| null) (= |right#0@@1| null)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@1|))) (ite  (and (or (not (= |left#0@@1| null)) (not true)) (= |right#0@@1| null)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |left#0@@1|) SnapTree.Node.Contents)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@1|)))) (ite  (and (= |left#0@@1| null) (or (not (= |right#0@@1| null)) (not true))) (|Seq#Append| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@1|))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |right#0@@1|) SnapTree.Node.Contents))) (|Seq#Append| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |left#0@@1|) SnapTree.Node.Contents)) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@1|)))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |right#0@@1|) SnapTree.Node.Contents))))))))
 :qid |SnapshotableTreesdfy.273:27|
 :skolemid |846|
 :pattern ( (SnapTree.Node.CombineSplit $Heap@@3 |left#0@@1| |data#0@@1| |right#0@@1|) ($IsGoodHeap $Heap@@3))
))))
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
(assert (forall (($h@@16 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass.SnapTree.Tree?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) SnapTree.Tree.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |667|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) SnapTree.Tree.Repr)))
)))
(assert (forall (($h@@17 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass.SnapTree.Tree?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@17) SnapTree.Tree.MutableRepr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |669|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@17) SnapTree.Tree.MutableRepr)))
)))
(assert (forall (($h@@18 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass.SnapTree.Node?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@18) SnapTree.Node.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |816|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@18) SnapTree.Node.Repr)))
)))
(assert (forall (($h@@19 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass.SnapTree.Tree?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) SnapTree.Tree.Repr)) (TSet Tclass._System.object) $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |668|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@19) SnapTree.Tree.Repr)))
)))
(assert (forall (($h@@20 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass.SnapTree.Tree?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@20) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@20) SnapTree.Tree.MutableRepr)) (TSet Tclass._System.object) $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |670|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@20) SnapTree.Tree.MutableRepr)))
)))
(assert (forall (($h@@21 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass.SnapTree.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@21) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@21) SnapTree.Node.Repr)) (TSet Tclass._System.object) $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |817|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@21) SnapTree.Node.Repr)))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (!  (=> (|Seq#Equal| a@@12 b@@9) (= a@@12 b@@9))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@12 b@@9))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TBool) (and (= ($Box boolType ($Unbox boolType bx@@8)) bx@@8) ($Is boolType ($Unbox boolType bx@@8) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@8 TBool))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@4 T@U) (|left#0@@2| T@U) (|data#0@@2| Int) (|right#0@@2| T@U) ) (!  (=> (or (|SnapTree.Node.CombineSplit#canCall| $Heap@@4 |left#0@@2| |data#0@@2| |right#0@@2|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@4) (and ($Is refType |left#0@@2| Tclass.SnapTree.Node?) ($IsAlloc refType |left#0@@2| Tclass.SnapTree.Node? $Heap@@4))) (and ($Is refType |right#0@@2| Tclass.SnapTree.Node?) ($IsAlloc refType |right#0@@2| Tclass.SnapTree.Node? $Heap@@4))))) ($Is SeqType (SnapTree.Node.CombineSplit $Heap@@4 |left#0@@2| |data#0@@2| |right#0@@2|) (TSeq TInt)))
 :qid |SnapshotableTreesdfy.273:27|
 :skolemid |844|
 :pattern ( (SnapTree.Node.CombineSplit $Heap@@4 |left#0@@2| |data#0@@2| |right#0@@2|))
))))
(assert (forall (($ly@@0 T@U) ($reveal@@0 Bool) ($Heap@@5 T@U) (this@@2 T@U) ) (! (= (SnapTree.Node.NodeValid ($LS $ly@@0) $reveal@@0 $Heap@@5 this@@2) (SnapTree.Node.NodeValid $ly@@0 $reveal@@0 $Heap@@5 this@@2))
 :qid |SnapshotableTreesdfy.253:31|
 :skolemid |824|
 :pattern ( (SnapTree.Node.NodeValid ($LS $ly@@0) $reveal@@0 $Heap@@5 this@@2))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@2) h@@0) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@9) ($IsAllocBox bx@@9 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@4 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@2) h@@0))
)))
(assert (forall (($o@@22 T@U) ) (! ($Is refType $o@@22 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@22 Tclass._System.object?))
)))
(assert (forall ((v@@5 T@U) (t0@@3 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@3) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@0) t0@@3 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@3) h@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSet (TSet t@@2)) t@@2)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSet t@@3)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall (($h@@22 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass.SnapTree.Tree?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@23) SnapTree.Tree.IsReadonly)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |665|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@23) SnapTree.Tree.IsReadonly)))
)))
(assert (forall (($h@@23 T@U) ($o@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass.SnapTree.Tree?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@24) SnapTree.Tree.reprIsShared)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |674|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@24) SnapTree.Tree.reprIsShared)))
)))
(assert (forall (($h@@24 T@U) ($o@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass.SnapTree.Node?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@25) SnapTree.Node.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |818|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@25) SnapTree.Node.data)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|left#0@@3| T@U) (|data#0@@3| Int) (|right#0@@3| T@U) ) (!  (=> (or (|SnapTree.Tree.SortedSplit#canCall| |left#0@@3| |data#0@@3| |right#0@@3|) (and (< 1 $FunctionContextHeight) (and ($Is SeqType |left#0@@3| (TSeq TInt)) ($Is SeqType |right#0@@3| (TSeq TInt))))) (and (and (|SnapTree.Tree.IsSorted#canCall| |left#0@@3|) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |left#0@@3|) (and (|SnapTree.Tree.IsSorted#canCall| |right#0@@3|) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |right#0@@3|) (and (|SnapTree.Tree.AllBelow#canCall| |left#0@@3| |data#0@@3|) (=> (SnapTree.Tree.AllBelow |left#0@@3| |data#0@@3|) (|SnapTree.Tree.AllAbove#canCall| |data#0@@3| |right#0@@3|))))))) (= (SnapTree.Tree.SortedSplit |left#0@@3| |data#0@@3| |right#0@@3|)  (and (and (and (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |left#0@@3|) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |right#0@@3|)) (SnapTree.Tree.AllBelow |left#0@@3| |data#0@@3|)) (SnapTree.Tree.AllAbove |data#0@@3| |right#0@@3|)))))
 :qid |SnapshotableTreesdfy.132:40|
 :skolemid |715|
 :pattern ( (SnapTree.Tree.SortedSplit |left#0@@3| |data#0@@3| |right#0@@3|))
))))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((bx@@10 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@6)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@6))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@6)))
)))
(assert (forall ((bx@@11 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@7)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@7))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@11 (TSeq t@@7)))
)))
(assert (forall (($h@@25 T@U) ($o@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass.SnapTree.Tree?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@26) SnapTree.Tree.Contents)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |663|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@26) SnapTree.Tree.Contents)))
)))
(assert (forall (($h@@26 T@U) ($o@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass.SnapTree.Node?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@27) SnapTree.Node.Contents)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |814|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@27) SnapTree.Node.Contents)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.SnapTree.Node) Tagclass.SnapTree.Node))
(assert (= (TagFamily Tclass.SnapTree.Node) tytagFamily$Node))
(assert (= (Tag Tclass.SnapTree.Tree?) Tagclass.SnapTree.Tree?))
(assert (= (TagFamily Tclass.SnapTree.Tree?) tytagFamily$Tree))
(assert (= (Tag Tclass.SnapTree.Node?) Tagclass.SnapTree.Node?))
(assert (= (TagFamily Tclass.SnapTree.Node?) tytagFamily$Node))
(assert (= (Tag Tclass.SnapTree.Tree) Tagclass.SnapTree.Tree))
(assert (= (TagFamily Tclass.SnapTree.Tree) tytagFamily$Tree))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Equal| a@@14 b@@11) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@14 o@@5) (|Set#IsMember| b@@11 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@14 o@@5))
 :pattern ( (|Set#IsMember| b@@11 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@14 b@@11))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
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
(assert (forall ((h@@2 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@2))
)))
(assert (forall ((h@@3 T@U) (v@@7 T@U) ) (! ($IsAlloc boolType v@@7 TBool h@@3)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@7 TBool h@@3))
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
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($ly@@1 T@U) ($reveal@@1 Bool) ($Heap@@6 T@U) (this@@3 T@U) ) (!  (=> (or (|SnapTree.Node.NodeValid#canCall| $Heap@@6 this@@3) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@6) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass.SnapTree.Node) ($IsAlloc refType this@@3 Tclass.SnapTree.Node $Heap@@6)))))) (=> (SnapTree.Node.NodeValid $ly@@1 reveal_SnapTree.Node.NodeValid $Heap@@6 this@@3) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@3) SnapTree.Node.Repr)) ($Box refType this@@3)) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 this@@3) SnapTree.Node.Contents))))))
 :qid |SnapshotableTreesdfy.253:31|
 :skolemid |828|
 :pattern ( (SnapTree.Node.NodeValid $ly@@1 $reveal@@1 $Heap@@6 this@@3))
))))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@9 TInt))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is boolType v@@10 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@10 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@7 () T@U)
(declare-fun this@@4 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |b$reqreads#7@1| () Bool)
(declare-fun |b$reqreads#8@1| () Bool)
(declare-fun |b$reqreads#9@2| () Bool)
(declare-fun |b$reqreads#10@2| () Bool)
(declare-fun |b$reqreads#11@2| () Bool)
(declare-fun |b$reqreads#12@2| () Bool)
(declare-fun |b$reqreads#13@2| () Bool)
(declare-fun |b$reqreads#14@2| () Bool)
(declare-fun |b$reqreads#15@2| () Bool)
(declare-fun |b$reqreads#16@1| () Bool)
(declare-fun |b$reqreads#17@1| () Bool)
(declare-fun |b$reqreads#18@1| () Bool)
(declare-fun |b$reqreads#19@1| () Bool)
(declare-fun |b$reqreads#20@1| () Bool)
(declare-fun |b$reqreads#21@1| () Bool)
(declare-fun |b$reqreads#22@1| () Bool)
(declare-fun |b$reqreads#23@2| () Bool)
(declare-fun |b$reqreads#24@1| () Bool)
(declare-fun |b$reqreads#25@1| () Bool)
(declare-fun |b$reqreads#26@1| () Bool)
(declare-fun |b$reqreads#27@1| () Bool)
(declare-fun |b$reqreads#28@1| () Bool)
(declare-fun |b$reqreads#27@0| () Bool)
(declare-fun |b$reqreads#28@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#22@0| () Bool)
(declare-fun |b$reqreads#23@1| () Bool)
(declare-fun |b$reqreads#24@0| () Bool)
(declare-fun |b$reqreads#25@0| () Bool)
(declare-fun |b$reqreads#26@0| () Bool)
(declare-fun |b$reqreads#23@0| () Bool)
(declare-fun |b$reqreads#20@0| () Bool)
(declare-fun |b$reqreads#21@0| () Bool)
(declare-fun |b$reqreads#19@0| () Bool)
(declare-fun |##c#1@0| () T@U)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun |b$reqreads#8@0| () Bool)
(declare-fun |b$reqreads#11@1| () Bool)
(declare-fun |b$reqreads#10@1| () Bool)
(declare-fun |b$reqreads#9@1| () Bool)
(declare-fun |b$reqreads#13@1| () Bool)
(declare-fun |b$reqreads#12@1| () Bool)
(declare-fun |b$reqreads#15@1| () Bool)
(declare-fun |b$reqreads#14@1| () Bool)
(declare-fun |b$reqreads#16@0| () Bool)
(declare-fun |b$reqreads#17@0| () Bool)
(declare-fun |b$reqreads#18@0| () Bool)
(declare-fun |b$reqreads#14@0| () Bool)
(declare-fun |b$reqreads#15@0| () Bool)
(declare-fun |b$reqreads#12@0| () Bool)
(declare-fun |b$reqreads#13@0| () Bool)
(declare-fun |b$reqreads#9@0| () Bool)
(declare-fun |b$reqreads#10@0| () Bool)
(declare-fun |b$reqreads#11@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |##c#0@0| () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$SnapTree.Tree.Valid)
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
 (=> (= (ControlFlow 0 0) 83) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 9) (- 0 11)) (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@7 this@@4) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) ($Box refType this@@4)))) (=> (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@7 this@@4) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) ($Box refType this@@4))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@7 this@@4) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr))))) (=> (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@7 this@@4) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (=> (= (ControlFlow 0 9) (- 0 8)) (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@7 this@@4) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)))))))))))
(let ((anon37_correct  (=> (= (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@7 this@@4)  (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Contents)))))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.IsReadonly))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared))))) (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared)))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr))))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4)))))) (=> (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr))) (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) |Seq#Empty|)) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4))) (|SnapTree.Node.NodeValid#canCall| $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))))))) (=> (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Contents))))) (|SnapTree.Tree.IsSorted#canCall| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)))))))) ($Is boolType (bool_2_U (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@7 this@@4)) TBool)) (and (=> (= (ControlFlow 0 12) (- 0 40)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 12) (- 0 39)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 12) (- 0 38)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (and (=> (= (ControlFlow 0 12) (- 0 37)) |b$reqreads#4@1|) (=> |b$reqreads#4@1| (and (=> (= (ControlFlow 0 12) (- 0 36)) |b$reqreads#5@1|) (=> |b$reqreads#5@1| (and (=> (= (ControlFlow 0 12) (- 0 35)) |b$reqreads#6@1|) (=> |b$reqreads#6@1| (and (=> (= (ControlFlow 0 12) (- 0 34)) |b$reqreads#7@1|) (=> |b$reqreads#7@1| (and (=> (= (ControlFlow 0 12) (- 0 33)) |b$reqreads#8@1|) (=> |b$reqreads#8@1| (and (=> (= (ControlFlow 0 12) (- 0 32)) |b$reqreads#9@2|) (=> |b$reqreads#9@2| (and (=> (= (ControlFlow 0 12) (- 0 31)) |b$reqreads#10@2|) (=> |b$reqreads#10@2| (and (=> (= (ControlFlow 0 12) (- 0 30)) |b$reqreads#11@2|) (=> |b$reqreads#11@2| (and (=> (= (ControlFlow 0 12) (- 0 29)) |b$reqreads#12@2|) (=> |b$reqreads#12@2| (and (=> (= (ControlFlow 0 12) (- 0 28)) |b$reqreads#13@2|) (=> |b$reqreads#13@2| (and (=> (= (ControlFlow 0 12) (- 0 27)) |b$reqreads#14@2|) (=> |b$reqreads#14@2| (and (=> (= (ControlFlow 0 12) (- 0 26)) |b$reqreads#15@2|) (=> |b$reqreads#15@2| (and (=> (= (ControlFlow 0 12) (- 0 25)) |b$reqreads#16@1|) (=> |b$reqreads#16@1| (and (=> (= (ControlFlow 0 12) (- 0 24)) |b$reqreads#17@1|) (=> |b$reqreads#17@1| (and (=> (= (ControlFlow 0 12) (- 0 23)) |b$reqreads#18@1|) (=> |b$reqreads#18@1| (and (=> (= (ControlFlow 0 12) (- 0 22)) |b$reqreads#19@1|) (=> |b$reqreads#19@1| (and (=> (= (ControlFlow 0 12) (- 0 21)) |b$reqreads#20@1|) (=> |b$reqreads#20@1| (and (=> (= (ControlFlow 0 12) (- 0 20)) |b$reqreads#21@1|) (=> |b$reqreads#21@1| (and (=> (= (ControlFlow 0 12) (- 0 19)) |b$reqreads#22@1|) (=> |b$reqreads#22@1| (and (=> (= (ControlFlow 0 12) (- 0 18)) |b$reqreads#23@2|) (=> |b$reqreads#23@2| (and (=> (= (ControlFlow 0 12) (- 0 17)) |b$reqreads#24@1|) (=> |b$reqreads#24@1| (and (=> (= (ControlFlow 0 12) (- 0 16)) |b$reqreads#25@1|) (=> |b$reqreads#25@1| (and (=> (= (ControlFlow 0 12) (- 0 15)) |b$reqreads#26@1|) (=> |b$reqreads#26@1| (and (=> (= (ControlFlow 0 12) (- 0 14)) |b$reqreads#27@1|) (=> |b$reqreads#27@1| (and (=> (= (ControlFlow 0 12) (- 0 13)) |b$reqreads#28@1|) (=> |b$reqreads#28@1| (=> (= (ControlFlow 0 12) 9) GeneratedUnifiedExit_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon58_Else_correct  (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared)))) (= |b$reqreads#27@1| |b$reqreads#27@0|)) (and (= |b$reqreads#28@1| true) (= (ControlFlow 0 43) 12))) anon37_correct)))
(let ((anon58_Then_correct  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared))) (=> (and (and (= |b$reqreads#28@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.MutableRepr))) (= |b$reqreads#27@1| |b$reqreads#27@0|)) (and (= |b$reqreads#28@1| |b$reqreads#28@0|) (= (ControlFlow 0 42) 12))) anon37_correct))))
(let ((anon57_Then_correct  (=> (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Contents)))))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.IsReadonly))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared))))) (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared)))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr))))) (= |b$reqreads#27@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.reprIsShared)))) (and (=> (= (ControlFlow 0 44) 42) anon58_Then_correct) (=> (= (ControlFlow 0 44) 43) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (and (not (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Contents)))))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.IsReadonly))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared))))) (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared)))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)))))) (= |b$reqreads#27@1| true)) (and (= |b$reqreads#28@1| true) (= (ControlFlow 0 41) 12))) anon37_correct)))
(let ((anon56_Else_correct  (=> (and (not (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared)))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)))) (= |b$reqreads#22@1| |b$reqreads#22@0|)) (=> (and (and (= |b$reqreads#23@2| |b$reqreads#23@1|) (= |b$reqreads#24@1| true)) (and (= |b$reqreads#25@1| true) (= |b$reqreads#26@1| true))) (and (=> (= (ControlFlow 0 48) 44) anon57_Then_correct) (=> (= (ControlFlow 0 48) 41) anon57_Else_correct))))))
(let ((anon56_Then_correct  (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared)))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true))) (= |b$reqreads#24@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.root)))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (=> (= |b$reqreads#25@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) SnapTree.Node.Repr))) (=> (and (= |b$reqreads#26@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.MutableRepr))) (= |b$reqreads#22@1| |b$reqreads#22@0|)) (=> (and (and (= |b$reqreads#23@2| |b$reqreads#23@1|) (= |b$reqreads#24@1| |b$reqreads#24@0|)) (and (= |b$reqreads#25@1| |b$reqreads#25@0|) (= |b$reqreads#26@1| |b$reqreads#26@0|))) (and (=> (= (ControlFlow 0 46) 44) anon57_Then_correct) (=> (= (ControlFlow 0 46) 41) anon57_Else_correct))))))))))
(let ((anon55_Else_correct  (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared))) (= |b$reqreads#23@1| true)) (and (=> (= (ControlFlow 0 50) 46) anon56_Then_correct) (=> (= (ControlFlow 0 50) 48) anon56_Else_correct)))))
(let ((anon55_Then_correct  (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared)))) (=> (and (= |b$reqreads#23@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.root))) (= |b$reqreads#23@1| |b$reqreads#23@0|)) (and (=> (= (ControlFlow 0 49) 46) anon56_Then_correct) (=> (= (ControlFlow 0 49) 48) anon56_Else_correct))))))
(let ((anon54_Then_correct  (=> (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Contents)))))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.IsReadonly))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared))))) (= |b$reqreads#22@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.reprIsShared)))) (and (=> (= (ControlFlow 0 51) 49) anon55_Then_correct) (=> (= (ControlFlow 0 51) 50) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (not (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Contents)))))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.IsReadonly))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.reprIsShared)))))) (= |b$reqreads#22@1| true)) (=> (and (and (= |b$reqreads#23@2| true) (= |b$reqreads#24@1| true)) (and (= |b$reqreads#25@1| true) (= |b$reqreads#26@1| true))) (and (=> (= (ControlFlow 0 45) 44) anon57_Then_correct) (=> (= (ControlFlow 0 45) 41) anon57_Else_correct))))))
(let ((anon53_Else_correct  (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.IsReadonly)))) (=> (and (= |b$reqreads#20@1| |b$reqreads#20@0|) (= |b$reqreads#21@1| true)) (and (=> (= (ControlFlow 0 54) 51) anon54_Then_correct) (=> (= (ControlFlow 0 54) 45) anon54_Else_correct))))))
(let ((anon53_Then_correct  (=> (and (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.IsReadonly))) (= |b$reqreads#21@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.reprIsShared)))) (and (= |b$reqreads#20@1| |b$reqreads#20@0|) (= |b$reqreads#21@1| |b$reqreads#21@0|))) (and (=> (= (ControlFlow 0 53) 51) anon54_Then_correct) (=> (= (ControlFlow 0 53) 45) anon54_Else_correct)))))
(let ((anon52_Then_correct  (=> (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Contents)))))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)))) (= |b$reqreads#20@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.IsReadonly)))) (and (=> (= (ControlFlow 0 55) 53) anon53_Then_correct) (=> (= (ControlFlow 0 55) 54) anon53_Else_correct)))))
(let ((anon52_Else_correct  (=> (not (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Contents)))))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents))))) (=> (and (= |b$reqreads#20@1| true) (= |b$reqreads#21@1| true)) (and (=> (= (ControlFlow 0 52) 51) anon54_Then_correct) (=> (= (ControlFlow 0 52) 45) anon54_Else_correct))))))
(let ((anon51_Else_correct  (=> (and (not (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Contents))))))) (= |b$reqreads#19@1| true)) (and (=> (= (ControlFlow 0 57) 55) anon52_Then_correct) (=> (= (ControlFlow 0 57) 52) anon52_Else_correct)))))
(let ((anon51_Then_correct  (=> (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Contents)))))) (= |b$reqreads#19@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.Contents)))) (and (and (= |##c#1@0| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents))) ($IsAlloc SeqType |##c#1@0| (TSeq TInt) $Heap@@7)) (and (|SnapTree.Tree.IsSorted#canCall| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents))) (= |b$reqreads#19@1| |b$reqreads#19@0|)))) (and (=> (= (ControlFlow 0 56) 55) anon52_Then_correct) (=> (= (ControlFlow 0 56) 52) anon52_Else_correct)))))
(let ((anon50_Else_correct  (=> (and (not (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))))) (= |b$reqreads#6@1| |b$reqreads#6@0|)) (=> (and (and (= |b$reqreads#7@1| |b$reqreads#7@0|) (= |b$reqreads#8@1| |b$reqreads#8@0|)) (and (= |b$reqreads#11@2| |b$reqreads#11@1|) (= |b$reqreads#10@2| |b$reqreads#10@1|))) (=> (and (and (and (= |b$reqreads#9@2| |b$reqreads#9@1|) (= |b$reqreads#13@2| |b$reqreads#13@1|)) (and (= |b$reqreads#12@2| |b$reqreads#12@1|) (= |b$reqreads#15@2| |b$reqreads#15@1|))) (and (and (= |b$reqreads#14@2| |b$reqreads#14@1|) (= |b$reqreads#16@1| true)) (and (= |b$reqreads#17@1| true) (= |b$reqreads#18@1| true)))) (and (=> (= (ControlFlow 0 62) 56) anon51_Then_correct) (=> (= (ControlFlow 0 62) 57) anon51_Else_correct)))))))
(let ((anon50_Then_correct  (=> (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (SnapTree.Node.NodeValid ($LS $LZ) reveal_SnapTree.Node.NodeValid $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)))) (and (= |b$reqreads#16@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.Contents))) (= |b$reqreads#17@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.root))))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (=> (and (= |b$reqreads#18@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) SnapTree.Node.Contents))) (= |b$reqreads#6@1| |b$reqreads#6@0|)) (=> (and (and (= |b$reqreads#7@1| |b$reqreads#7@0|) (= |b$reqreads#8@1| |b$reqreads#8@0|)) (and (= |b$reqreads#11@2| |b$reqreads#11@1|) (= |b$reqreads#10@2| |b$reqreads#10@1|))) (=> (and (and (and (= |b$reqreads#9@2| |b$reqreads#9@1|) (= |b$reqreads#13@2| |b$reqreads#13@1|)) (and (= |b$reqreads#12@2| |b$reqreads#12@1|) (= |b$reqreads#15@2| |b$reqreads#15@1|))) (and (and (= |b$reqreads#14@2| |b$reqreads#14@1|) (= |b$reqreads#16@1| |b$reqreads#16@0|)) (and (= |b$reqreads#17@1| |b$reqreads#17@0|) (= |b$reqreads#18@1| |b$reqreads#18@0|)))) (and (=> (= (ControlFlow 0 60) 56) anon51_Then_correct) (=> (= (ControlFlow 0 60) 57) anon51_Else_correct))))))))))
(let ((anon49_Else_correct  (=> (not (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4))))) (=> (and (= |b$reqreads#14@1| true) (= |b$reqreads#15@1| true)) (and (=> (= (ControlFlow 0 65) 60) anon50_Then_correct) (=> (= (ControlFlow 0 65) 62) anon50_Else_correct))))))
(let ((anon49_Then_correct  (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType this@@4)))) (= |b$reqreads#14@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.root)))) (and (=> (= (ControlFlow 0 63) (- 0 64)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root) Tclass.SnapTree.Node? $Heap@@7) (=> (and (and (= |b$reqreads#15@0| (forall (($o@@28 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 $o@@28) alloc)))) (or (= $o@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Box refType $o@@28)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@28 $f@@0)))
 :qid |SnapshotableTreesdfy.103:14|
 :skolemid |682|
))) (|SnapTree.Node.NodeValid#canCall| $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)))) (and (= |b$reqreads#14@1| |b$reqreads#14@0|) (= |b$reqreads#15@1| |b$reqreads#15@0|))) (and (=> (= (ControlFlow 0 63) 60) anon50_Then_correct) (=> (= (ControlFlow 0 63) 62) anon50_Else_correct)))))))))
(let ((anon48_Else_correct  (=> (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr))))) (=> (and (= |b$reqreads#12@1| true) (= |b$reqreads#13@1| true)) (and (=> (= (ControlFlow 0 68) 63) anon49_Then_correct) (=> (= (ControlFlow 0 68) 65) anon49_Else_correct))))))
(let ((anon48_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) SnapTree.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (= |b$reqreads#12@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.root)))) (and (=> (= (ControlFlow 0 66) (- 0 67)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (=> (= |b$reqreads#13@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) SnapTree.Node.Repr))) (=> (and (= |b$reqreads#12@1| |b$reqreads#12@0|) (= |b$reqreads#13@1| |b$reqreads#13@0|)) (and (=> (= (ControlFlow 0 66) 63) anon49_Then_correct) (=> (= (ControlFlow 0 66) 65) anon49_Else_correct)))))))))
(let ((anon47_Else_correct  (=> (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root))) (= |b$reqreads#9@1| true)) (and (= |b$reqreads#10@1| true) (= |b$reqreads#11@1| true))) (and (=> (= (ControlFlow 0 71) 66) anon48_Then_correct) (=> (= (ControlFlow 0 71) 68) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) (= |b$reqreads#9@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.root)))) (and (=> (= (ControlFlow 0 69) (- 0 70)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (=> (= |b$reqreads#10@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) SnapTree.Node.Repr))) (=> (and (and (= |b$reqreads#11@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.Repr))) (= |b$reqreads#9@1| |b$reqreads#9@0|)) (and (= |b$reqreads#10@1| |b$reqreads#10@0|) (= |b$reqreads#11@1| |b$reqreads#11@0|))) (and (=> (= (ControlFlow 0 69) 66) anon48_Then_correct) (=> (= (ControlFlow 0 69) 68) anon48_Else_correct)))))))))
(let ((anon46_Then_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (=> (and (= |b$reqreads#7@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.root))) (= |b$reqreads#8@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.Repr)))) (and (=> (= (ControlFlow 0 72) 69) anon47_Then_correct) (=> (= (ControlFlow 0 72) 71) anon47_Else_correct))))))
(let ((anon46_Else_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (= |b$reqreads#6@1| |b$reqreads#6@0|)) (=> (and (and (= |b$reqreads#7@1| true) (= |b$reqreads#8@1| true)) (and (= |b$reqreads#11@2| true) (= |b$reqreads#10@2| true))) (=> (and (and (and (= |b$reqreads#9@2| true) (= |b$reqreads#13@2| true)) (and (= |b$reqreads#12@2| true) (= |b$reqreads#15@2| true))) (and (and (= |b$reqreads#14@2| true) (= |b$reqreads#16@1| true)) (and (= |b$reqreads#17@1| true) (= |b$reqreads#18@1| true)))) (and (=> (= (ControlFlow 0 59) 56) anon51_Then_correct) (=> (= (ControlFlow 0 59) 57) anon51_Else_correct)))))))
(let ((anon45_Then_correct  (=> (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) |Seq#Empty|))) (= |b$reqreads#6@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.root)))) (and (=> (= (ControlFlow 0 73) 72) anon46_Then_correct) (=> (= (ControlFlow 0 73) 59) anon46_Else_correct)))))
(let ((anon45_Else_correct  (=> (and (not (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)) |Seq#Empty|)))) (= |b$reqreads#6@1| true)) (=> (and (and (= |b$reqreads#7@1| true) (= |b$reqreads#8@1| true)) (and (= |b$reqreads#11@2| true) (= |b$reqreads#10@2| true))) (=> (and (and (and (= |b$reqreads#9@2| true) (= |b$reqreads#13@2| true)) (and (= |b$reqreads#12@2| true) (= |b$reqreads#15@2| true))) (and (and (= |b$reqreads#14@2| true) (= |b$reqreads#16@1| true)) (and (= |b$reqreads#17@1| true) (= |b$reqreads#18@1| true)))) (and (=> (= (ControlFlow 0 58) 56) anon51_Then_correct) (=> (= (ControlFlow 0 58) 57) anon51_Else_correct)))))))
(let ((anon44_Else_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null)) (not true)) (=> (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= |b$reqreads#5@1| true)) (and (=> (= (ControlFlow 0 76) 73) anon45_Then_correct) (=> (= (ControlFlow 0 76) 58) anon45_Else_correct))))))
(let ((anon44_Then_correct  (=> (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.root)) null) (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.Contents)))) (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= |b$reqreads#5@1| |b$reqreads#5@0|))) (and (=> (= (ControlFlow 0 75) 73) anon45_Then_correct) (=> (= (ControlFlow 0 75) 58) anon45_Else_correct)))))
(let ((anon43_Then_correct  (=> (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.root)))) (and (=> (= (ControlFlow 0 77) 75) anon44_Then_correct) (=> (= (ControlFlow 0 77) 76) anon44_Else_correct)))))
(let ((anon43_Else_correct  (=> (not (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr))))) (=> (and (= |b$reqreads#4@1| true) (= |b$reqreads#5@1| true)) (and (=> (= (ControlFlow 0 74) 73) anon45_Then_correct) (=> (= (ControlFlow 0 74) 58) anon45_Else_correct))))))
(let ((anon42_Else_correct  (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4))) (=> (and (= |b$reqreads#2@1| true) (= |b$reqreads#3@1| true)) (and (=> (= (ControlFlow 0 79) 77) anon43_Then_correct) (=> (= (ControlFlow 0 79) 74) anon43_Else_correct))))))
(let ((anon42_Then_correct  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Box refType this@@4)) (=> (and (and (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.MutableRepr))) (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.Repr)))) (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= |b$reqreads#3@1| |b$reqreads#3@0|))) (and (=> (= (ControlFlow 0 78) 77) anon43_Then_correct) (=> (= (ControlFlow 0 78) 74) anon43_Else_correct))))))
(let ((anon39_Else_correct  (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.MutableRepr))) (and (=> (= (ControlFlow 0 80) 78) anon42_Then_correct) (=> (= (ControlFlow 0 80) 79) anon42_Else_correct)))))
(let ((anon8_correct true))
(let ((anon41_Else_correct  (=> (and (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@7 this@@4) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)))) (= (ControlFlow 0 4) 1)) anon8_correct)))
(let ((anon41_Then_correct  (=> ($IsAllocBox ($Box refType this@@4) Tclass.SnapTree.Tree? $Heap@@7) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (= this@@4 this@@4) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4)))))))) (=> (or (= this@@4 this@@4) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4))))))) (=> (or (= this@@4 this@@4) (|SnapTree.Tree.Valid#canCall| $Heap@@7 this@@4)) (=> (and (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@7 this@@4) (= |##c#0@0| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)))) (=> (and (and ($IsAlloc SeqType |##c#0@0| (TSeq TInt) $Heap@@7) (|SnapTree.Tree.IsSorted#canCall| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents)))) (and (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Contents))) (= (ControlFlow 0 2) 1))) anon8_correct))))))))
(let ((anon40_Else_correct  (=> (=> (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@7 this@@4) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr))))) (and (=> (= (ControlFlow 0 7) 2) anon41_Then_correct) (=> (= (ControlFlow 0 7) 4) anon41_Else_correct)))))
(let ((anon40_Then_correct  (=> ($IsAllocBox ($Box refType this@@4) Tclass.SnapTree.Tree? $Heap@@7) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (= this@@4 this@@4) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4)))))))) (=> (or (= this@@4 this@@4) (and (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4)))) (not (|Set#Subset| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4))) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@4))))))) (=> (and (and (or (= this@@4 this@@4) (|SnapTree.Tree.Valid#canCall| $Heap@@7 this@@4)) (SnapTree.Tree.Valid reveal_SnapTree.Tree.Valid $Heap@@7 this@@4)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)) ($Box refType this@@4)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.MutableRepr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr))))) (and (=> (= (ControlFlow 0 5) 2) anon41_Then_correct) (=> (= (ControlFlow 0 5) 4) anon41_Else_correct))))))))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@7 alloc this@@4 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@7 this@@4) SnapTree.Tree.Repr)))) (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@4 SnapTree.Tree.Repr)))) (and (=> (= (ControlFlow 0 81) (- 0 82)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (and (=> (= (ControlFlow 0 81) 80) anon39_Else_correct) (=> (= (ControlFlow 0 81) 5) anon40_Then_correct)) (=> (= (ControlFlow 0 81) 7) anon40_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@7) ($IsHeapAnchor $Heap@@7)) (=> (and (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass.SnapTree.Tree) ($IsAlloc refType this@@4 Tclass.SnapTree.Tree $Heap@@7))) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 83) 81))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
