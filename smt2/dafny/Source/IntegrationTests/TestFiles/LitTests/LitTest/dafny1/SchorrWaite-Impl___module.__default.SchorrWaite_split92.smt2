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
(declare-fun TagBool () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun Tagclass._module.Path () T@U)
(declare-fun class._module.Node? () T@U)
(declare-fun |##_module.Path.Empty| () T@U)
(declare-fun |##_module.Path.Extend| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun tytagFamily$Path () T@U)
(declare-fun field$children () T@U)
(declare-fun field$marked () T@U)
(declare-fun field$childrenVisited () T@U)
(declare-fun field$pathFromRoot () T@U)
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
(declare-fun |#_module.Path.Extend| (T@U T@U) T@U)
(declare-fun Tclass._module.Path () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Node () T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Path.Empty| () T@U)
(declare-fun Tclass._module.Node? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.Node.pathFromRoot () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Node.children () T@U)
(declare-fun _module.Node.marked () T@U)
(declare-fun _module.Node.childrenVisited () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.ReachableVia (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.ReachableVia#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun _module.Path.Empty_q (T@U) Bool)
(declare-fun _module.Path._h1 (T@U) T@U)
(declare-fun _module.Path._h0 (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OlderTag (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.Path.Extend_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun _module.__default.Reachable (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.Reachable#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TBool TagBool TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass._module.Node Tagclass._module.Node? Tagclass._module.Path class._module.Node? |##_module.Path.Empty| |##_module.Path.Extend| tytagFamily$nat tytagFamily$Node tytagFamily$Path field$children field$marked field$childrenVisited field$pathFromRoot)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor refType) 4)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Path.Extend| |a#6#0#0| |a#6#1#0|) Tclass._module.Path)  (and ($Is DatatypeTypeType |a#6#0#0| Tclass._module.Path) ($Is refType |a#6#1#0| Tclass._module.Node)))
 :qid |SchorrWaitedfy.15:32|
 :skolemid |897|
 :pattern ( ($Is DatatypeTypeType (|#_module.Path.Extend| |a#6#0#0| |a#6#1#0|) Tclass._module.Path))
)))
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
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
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
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_module.Path.Extend| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass._module.Path $h@@0)  (and ($IsAlloc DatatypeTypeType |a#6#0#0@@0| Tclass._module.Path $h@@0) ($IsAlloc refType |a#6#1#0@@0| Tclass._module.Node $h@@0))))
 :qid |SchorrWaitedfy.15:32|
 :skolemid |898|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Path.Extend| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass._module.Path $h@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((x@@5 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@5))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@5))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Path.Empty|) |##_module.Path.Empty|))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Node?)  (or (= $o null) (= (dtype $o) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |878|
 :pattern ( ($Is refType $o Tclass._module.Node?))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Node $h@@1) ($IsAlloc refType |c#0| Tclass._module.Node? $h@@1))
 :qid |unknown.0:0|
 :skolemid |889|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node? $h@@1))
)))
(assert (= (FDim _module.Node.pathFromRoot) 0))
(assert (= (FieldOfDecl class._module.Node? field$pathFromRoot) _module.Node.pathFromRoot))
(assert ($IsGhostField _module.Node.pathFromRoot))
(assert ($Is DatatypeTypeType |#_module.Path.Empty| Tclass._module.Path))
(assert (= (FDim _module.Node.children) 0))
(assert (= (FieldOfDecl class._module.Node? field$children) _module.Node.children))
(assert  (not ($IsGhostField _module.Node.children)))
(assert (= (FDim _module.Node.marked) 0))
(assert (= (FieldOfDecl class._module.Node? field$marked) _module.Node.marked))
(assert  (not ($IsGhostField _module.Node.marked)))
(assert (= (FDim _module.Node.childrenVisited) 0))
(assert (= (FieldOfDecl class._module.Node? field$childrenVisited) _module.Node.childrenVisited))
(assert  (not ($IsGhostField _module.Node.childrenVisited)))
(assert (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#_module.Path.Empty| Tclass._module.Path $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |892|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Path.Empty| Tclass._module.Path $h@@2))
)))
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
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Node? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |879|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Node? $h@@3))
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
(assert  (and (= (Ctor SetType) 8) (= (Ctor SeqType) 9)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|source#0| T@U) (|p#0| T@U) (|sink#0| T@U) (|S#0| T@U) ) (!  (=> (or (|_module.__default.ReachableVia#canCall| $Heap |source#0| |p#0| |sink#0| |S#0|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap) ($Is refType |source#0| Tclass._module.Node)) ($Is DatatypeTypeType |p#0| Tclass._module.Path)) ($Is refType |sink#0| Tclass._module.Node)) ($Is SetType |S#0| (TSet Tclass._module.Node))))) (and (=> (not (_module.Path.Empty_q |p#0|)) (let ((|n#1| (_module.Path._h1 |p#0|)))
(let ((|prefix#1| (_module.Path._h0 |p#0|)))
 (=> (|Set#IsMember| |S#0| ($Box refType |n#1|)) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#1|) _module.Node.children)) ($Box refType |sink#0|)) (|_module.__default.ReachableVia#canCall| $Heap |source#0| |prefix#1| |n#1| |S#0|)))))) (= (_module.__default.ReachableVia ($LS $ly) $Heap |source#0| |p#0| |sink#0| |S#0|) (ite (_module.Path.Empty_q |p#0|) (= |source#0| |sink#0|) (let ((|n#0| (_module.Path._h1 |p#0|)))
(let ((|prefix#0| (_module.Path._h0 |p#0|)))
 (and (and (|Set#IsMember| |S#0| ($Box refType |n#0|)) (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0|) _module.Node.children)) ($Box refType |sink#0|))) (_module.__default.ReachableVia $ly $Heap |source#0| |prefix#0| |n#0| |S#0|))))))))
 :qid |SchorrWaitedfy.160:17|
 :skolemid |774|
 :pattern ( (_module.__default.ReachableVia ($LS $ly) $Heap |source#0| |p#0| |sink#0| |S#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@7))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (|source#0@@0| T@U) (|p#0@@0| T@U) (|sink#0@@0| T@U) (|S#0@@0| T@U) ) (!  (=> (or (|_module.__default.ReachableVia#canCall| $Heap@@0 |source#0@@0| |p#0@@0| |sink#0@@0| |S#0@@0|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@0) (and ($Is refType |source#0@@0| Tclass._module.Node) ($IsAlloc refType |source#0@@0| Tclass._module.Node $Heap@@0))) (and ($Is DatatypeTypeType |p#0@@0| Tclass._module.Path) ($IsAlloc DatatypeTypeType |p#0@@0| Tclass._module.Path $Heap@@0))) (and ($Is refType |sink#0@@0| Tclass._module.Node) ($IsAlloc refType |sink#0@@0| Tclass._module.Node $Heap@@0))) (and ($Is SetType |S#0@@0| (TSet Tclass._module.Node)) ($IsAlloc SetType |S#0@@0| (TSet Tclass._module.Node) $Heap@@0))))) (forall (($olderHeap T@U) ) (!  (=> (and (and ($IsGoodHeap $olderHeap) ($OlderTag $olderHeap)) (and (_module.__default.ReachableVia $ly@@0 $Heap@@0 |source#0@@0| |p#0@@0| |sink#0@@0| |S#0@@0|) (and (and ($IsAlloc refType |source#0@@0| Tclass._module.Node $olderHeap) ($IsAlloc refType |sink#0@@0| Tclass._module.Node $olderHeap)) ($IsAlloc SetType |S#0@@0| (TSet Tclass._module.Node) $olderHeap)))) ($IsAlloc DatatypeTypeType |p#0@@0| Tclass._module.Path $olderHeap))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |771|
 :pattern ( ($OlderTag $olderHeap))
)))
 :qid |SchorrWaitedfy.160:17|
 :skolemid |772|
 :pattern ( (_module.__default.ReachableVia $ly@@0 $Heap@@0 |source#0@@0| |p#0@@0| |sink#0@@0| |S#0@@0|))
))))
(assert (forall (($ly@@1 T@U) ($h0 T@U) ($h1 T@U) (|source#0@@1| T@U) (|p#0@@1| T@U) (|sink#0@@1| T@U) (|S#0@@1| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|_module.__default.ReachableVia#canCall| $h0 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|) (and (and (and ($Is refType |source#0@@1| Tclass._module.Node) ($Is DatatypeTypeType |p#0@@1| Tclass._module.Path)) ($Is refType |sink#0@@1| Tclass._module.Node)) ($Is SetType |S#0@@1| (TSet Tclass._module.Node))))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (|Set#IsMember| |S#0@@1| ($Box refType $o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f)))
 :qid |unknown.0:0|
 :skolemid |769|
)) (= (_module.__default.ReachableVia $ly@@1 $h0 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|) (_module.__default.ReachableVia $ly@@1 $h1 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |770|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.__default.ReachableVia $ly@@1 $h1 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|))
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
(assert (forall ((d T@U) ) (! (= (_module.Path.Empty_q d) (= (DatatypeCtorId d) |##_module.Path.Empty|))
 :qid |unknown.0:0|
 :skolemid |890|
 :pattern ( (_module.Path.Empty_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Path.Extend_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Path.Extend|))
 :qid |unknown.0:0|
 :skolemid |894|
 :pattern ( (_module.Path.Extend_q d@@0))
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
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|source#0@@2| T@U) (|sink#0@@2| T@U) (|S#0@@2| T@U) ) (!  (=> (or (|_module.__default.Reachable#canCall| $Heap@@1 |source#0@@2| |sink#0@@2| |S#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) ($Is refType |source#0@@2| Tclass._module.Node)) ($Is refType |sink#0@@2| Tclass._module.Node)) ($Is SetType |S#0@@2| (TSet Tclass._module.Node))))) (and (forall ((|via#0| T@U) ) (!  (=> ($Is DatatypeTypeType |via#0| Tclass._module.Path) (|_module.__default.ReachableVia#canCall| $Heap@@1 |source#0@@2| |via#0| |sink#0@@2| |S#0@@2|))
 :qid |SchorrWaitedfy.157:10|
 :skolemid |761|
 :pattern ( (_module.__default.ReachableVia ($LS $LZ) $Heap@@1 |source#0@@2| |via#0| |sink#0@@2| |S#0@@2|))
)) (= (_module.__default.Reachable $Heap@@1 |source#0@@2| |sink#0@@2| |S#0@@2|) (exists ((|via#0@@0| T@U) ) (!  (and ($Is DatatypeTypeType |via#0@@0| Tclass._module.Path) (_module.__default.ReachableVia ($LS $LZ) $Heap@@1 |source#0@@2| |via#0@@0| |sink#0@@2| |S#0@@2|))
 :qid |SchorrWaitedfy.157:10|
 :skolemid |760|
 :pattern ( (_module.__default.ReachableVia ($LS $LZ) $Heap@@1 |source#0@@2| |via#0@@0| |sink#0@@2| |S#0@@2|))
)))))
 :qid |SchorrWaitedfy.154:17|
 :skolemid |762|
 :pattern ( (_module.__default.Reachable $Heap@@1 |source#0@@2| |sink#0@@2| |S#0@@2|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Path.Extend_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.Path.Extend| |a#5#0#0| |a#5#1#0|))
 :qid |SchorrWaitedfy.15:32|
 :skolemid |895|
)))
 :qid |unknown.0:0|
 :skolemid |896|
 :pattern ( (_module.Path.Extend_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Path.Empty_q d@@2) (= d@@2 |#_module.Path.Empty|))
 :qid |unknown.0:0|
 :skolemid |891|
 :pattern ( (_module.Path.Empty_q d@@2))
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
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (|source#0@@3| T@U) (|sink#0@@3| T@U) (|S#0@@3| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (or (|_module.__default.Reachable#canCall| $h0@@0 |source#0@@3| |sink#0@@3| |S#0@@3|) (and (and ($Is refType |source#0@@3| Tclass._module.Node) ($Is refType |sink#0@@3| Tclass._module.Node)) ($Is SetType |S#0@@3| (TSet Tclass._module.Node))))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (|Set#IsMember| |S#0@@3| ($Box refType $o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@2) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |755|
)) (= (_module.__default.Reachable $h0@@0 |source#0@@3| |sink#0@@3| |S#0@@3|) (_module.__default.Reachable $h1@@0 |source#0@@3| |sink#0@@3| |S#0@@3|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |756|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.__default.Reachable $h1@@0 |source#0@@3| |sink#0@@3| |S#0@@3|))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.Node.marked)) TBool $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |883|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.Node.marked)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Node?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.Node.childrenVisited)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |884|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.Node.childrenVisited)))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Node?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.Node.pathFromRoot)) Tclass._module.Path))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |886|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.Node.pathFromRoot)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Node) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Node)))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($IsBox bx@@2 Tclass._module.Node))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Node?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsBox bx@@3 Tclass._module.Node?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Path) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) Tclass._module.Path)))
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( ($IsBox bx@@4 Tclass._module.Path))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Node)  (and ($Is refType |c#0@@0| Tclass._module.Node?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |888|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node?))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.Node.childrenVisited)) Tclass._System.nat $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |885|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.Node.childrenVisited)))
)))
(assert (forall (($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.Node.pathFromRoot)) Tclass._module.Path $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |887|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.Node.pathFromRoot)))
)))
(assert (forall ((s T@U) (x@@9 T@U) ) (! (= (|Seq#Contains| s x@@9) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s))) (= (|Seq#Index| s i) x@@9))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s i))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s x@@9))
)))
(assert (forall (($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Node?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.Node.children)) (TSeq Tclass._module.Node?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |880|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.Node.children)))
)))
(assert (forall (($h@@10 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.Node.children)) (TSeq Tclass._module.Node?) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |881|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.Node.children)))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@5 b@@2) (= a@@5 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@5 b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (!  (=> (|Seq#Equal| a@@6 b@@3) (= a@@6 b@@3))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@6 b@@3))
)))
(assert (forall (($ly@@2 T@U) ($Heap@@2 T@U) (|source#0@@4| T@U) (|p#0@@2| T@U) (|sink#0@@4| T@U) (|S#0@@4| T@U) ) (! (= (_module.__default.ReachableVia ($LS $ly@@2) $Heap@@2 |source#0@@4| |p#0@@2| |sink#0@@4| |S#0@@4|) (_module.__default.ReachableVia $ly@@2 $Heap@@2 |source#0@@4| |p#0@@2| |sink#0@@4| |S#0@@4|))
 :qid |SchorrWaitedfy.160:17|
 :skolemid |767|
 :pattern ( (_module.__default.ReachableVia ($LS $ly@@2) $Heap@@2 |source#0@@4| |p#0@@2| |sink#0@@4| |S#0@@4|))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.Path) (or (_module.Path.Empty_q d@@3) (_module.Path.Extend_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |906|
 :pattern ( (_module.Path.Extend_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Path))
 :pattern ( (_module.Path.Empty_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Path))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) (c T@U) ) (!  (=> (or (not (= a@@7 c)) (not true)) (=> (and ($HeapSucc a@@7 b@@4) ($HeapSucc b@@4 c)) ($HeapSucc a@@7 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@7 b@@4) ($HeapSucc b@@4 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TBool) (and (= ($Box boolType ($Unbox boolType bx@@5)) bx@@5) ($Is boolType ($Unbox boolType bx@@5) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@5 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Path.Extend| |a#4#0#0| |a#4#1#0|)) |##_module.Path.Extend|)
 :qid |SchorrWaitedfy.15:32|
 :skolemid |893|
 :pattern ( (|#_module.Path.Extend| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.Path._h0 (|#_module.Path.Extend| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |SchorrWaitedfy.15:32|
 :skolemid |902|
 :pattern ( (|#_module.Path.Extend| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.Path._h1 (|#_module.Path.Extend| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |SchorrWaitedfy.15:32|
 :skolemid |904|
 :pattern ( (|#_module.Path.Extend| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4))
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
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@10))
)))
(assert (forall (($h@@11 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Node?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) _module.Node.marked)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |882|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) _module.Node.marked)))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#_module.Path.Extend| |a#9#0#0| |a#9#1#0|)))
 :qid |SchorrWaitedfy.15:32|
 :skolemid |903|
 :pattern ( (|#_module.Path.Extend| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((bx@@7 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@7)))
)))
(assert (forall ((bx@@8 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@8 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@8)) bx@@8) ($Is SeqType ($Unbox SeqType bx@@8) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@8 (TSeq t@@8)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@11 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@11))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@11))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@11)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Node) Tagclass._module.Node))
(assert (= (TagFamily Tclass._module.Node) tytagFamily$Node))
(assert (= (Tag Tclass._module.Node?) Tagclass._module.Node?))
(assert (= (TagFamily Tclass._module.Node?) tytagFamily$Node))
(assert (= (Tag Tclass._module.Path) Tagclass._module.Path))
(assert (= (TagFamily Tclass._module.Path) tytagFamily$Path))
(assert (= |#_module.Path.Empty| (Lit DatatypeTypeType |#_module.Path.Empty|)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Equal| a@@8 b@@5) (forall ((o@@4 T@U) ) (! (= (|Set#IsMember| a@@8 o@@4) (|Set#IsMember| b@@5 o@@4))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@8 o@@4))
 :pattern ( (|Set#IsMember| b@@5 o@@4))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@8 b@@5))
)))
(assert (forall ((d@@4 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.Path.Extend_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Path $h@@12))) ($IsAlloc DatatypeTypeType (_module.Path._h0 d@@4) Tclass._module.Path $h@@12))
 :qid |unknown.0:0|
 :skolemid |899|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Path._h0 d@@4) Tclass._module.Path $h@@12))
)))
(assert (forall ((d@@5 T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_module.Path.Extend_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Path $h@@13))) ($IsAlloc refType (_module.Path._h1 d@@5) Tclass._module.Node $h@@13))
 :qid |unknown.0:0|
 :skolemid |900|
 :pattern ( ($IsAlloc refType (_module.Path._h1 d@@5) Tclass._module.Node $h@@13))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.Path.Extend| (Lit DatatypeTypeType |a#7#0#0|) (Lit refType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.Path.Extend| |a#7#0#0| |a#7#1#0|)))
 :qid |SchorrWaitedfy.15:32|
 :skolemid |901|
 :pattern ( (|#_module.Path.Extend| (Lit DatatypeTypeType |a#7#0#0|) (Lit refType |a#7#1#0|)))
)))
(assert (forall ((x@@12 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@12))) (Lit BoxType ($Box intType (int_2_U x@@12))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@12))))
)))
(assert (forall ((x@@13 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@13)) (Lit BoxType ($Box T@@5 x@@13)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@13)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@1))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@11 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@11 $f@@1))  (=> (and (or (not (= $o@@11 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@11) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@11))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |910|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@11 $f@@1))
)))
(assert (forall ((h@@6 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@6))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@4)))
)))
(assert (forall ((s@@2 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |stackNodes#0@1| () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |k#2@0| () Int)
(declare-fun |k#0@0| () Int)
(declare-fun |S#0@@5| () T@U)
(declare-fun |n#16@0| () T@U)
(declare-fun |j#0@0| () Int)
(declare-fun |n#14@0| () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun |n#12@0| () T@U)
(declare-fun |n#10@0| () T@U)
(declare-fun |p#0@0| () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |root#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |p#0@@3| () T@U)
(declare-fun |path#0| () T@U)
(declare-fun |stackNodes#0| () T@U)
(declare-fun |unmarkedNodes#0| () T@U)
(declare-fun |oldP#0_0_0| () T@U)
(declare-fun |newT#0_1_1_0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |path#0@0| () T@U)
(declare-fun |$rhs#0@0| () Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |stackNodes#0@0| () T@U)
(declare-fun |unmarkedNodes#0@0| () T@U)
(declare-fun |$decr_init$loop#02@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |newT#0_1_1_0@0| () T@U)
(declare-fun |path#0@1| () T@U)
(declare-fun |unmarkedNodes#0@1| () T@U)
(declare-fun |oldP#0_0_0@0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.SchorrWaite_split92)
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
 (=> (= (ControlFlow 0 0) 60) (let ((anon49_correct  (=> (and (and (forall ((|k#3| Int) ) (!  (=> (and (<= (LitInt 0) |k#3|) (< |k#3| (- (|Seq#Length| |stackNodes#0@1|) 1))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3|))) _module.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3|))) _module.Node.childrenVisited))))) ($Unbox refType (|Seq#Index| |stackNodes#0@1| (+ |k#3| 1)))))
 :qid |SchorrWaitedfy.237:22|
 :skolemid |828|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3|))) _module.Node.childrenVisited)))
 :pattern ( ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3|)))
)) (< 0 (|Seq#Length| |stackNodes#0@1|))) (and ($IsAlloc refType ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1))) Tclass._module.Node $Heap@@3) (= (ControlFlow 0 2) (- 0 1)))) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1)))) _module.Node.childrenVisited)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1)))) _module.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1)))) _module.Node.children))))))))
(let ((anon139_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#2@0|) (< |k#2@0| (- (|Seq#Length| |stackNodes#0@1|) 1)))) (= (ControlFlow 0 4) 2)) anon49_correct)))
(let ((anon139_Then_correct  (=> (and (and (<= (LitInt 0) |k#2@0|) (< |k#2@0| (- (|Seq#Length| |stackNodes#0@1|) 1))) (and ($IsAlloc refType ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#2@0|)) Tclass._module.Node $Heap@@3) (= (ControlFlow 0 3) 2))) anon49_correct)))
(let ((anon138_Else_correct  (=> (< |k#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 6) 3) anon139_Then_correct) (=> (= (ControlFlow 0 6) 4) anon139_Else_correct)))))
(let ((anon138_Then_correct  (=> (<= (LitInt 0) |k#2@0|) (and (=> (= (ControlFlow 0 5) 3) anon139_Then_correct) (=> (= (ControlFlow 0 5) 4) anon139_Else_correct)))))
(let ((anon44_correct  (=> (forall ((|k#1| Int) ) (!  (=> (and (< 0 |k#1|) (< |k#1| (|Seq#Length| |stackNodes#0@1|))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1|))) _module.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1|))) _module.Node.childrenVisited))))) ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- |k#1| 1)))))
 :qid |SchorrWaitedfy.232:22|
 :skolemid |825|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1|))) _module.Node.childrenVisited)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1|))) _module.Node.children)))
)) (and (=> (= (ControlFlow 0 7) 5) anon138_Then_correct) (=> (= (ControlFlow 0 7) 6) anon138_Else_correct)))))
(let ((anon136_Else_correct  (=> (and (not (and (< 0 |k#0@0|) (< |k#0@0| (|Seq#Length| |stackNodes#0@1|)))) (= (ControlFlow 0 9) 7)) anon44_correct)))
(let ((anon136_Then_correct  (=> (and (and (< 0 |k#0@0|) (< |k#0@0| (|Seq#Length| |stackNodes#0@1|))) (= (ControlFlow 0 8) 7)) anon44_correct)))
(let ((anon135_Else_correct  (=> (<= |k#0@0| 0) (and (=> (= (ControlFlow 0 11) 8) anon136_Then_correct) (=> (= (ControlFlow 0 11) 9) anon136_Else_correct)))))
(let ((anon135_Then_correct  (=> (< 0 |k#0@0|) (and (=> (= (ControlFlow 0 10) 8) anon136_Then_correct) (=> (= (ControlFlow 0 10) 9) anon136_Else_correct)))))
(let ((anon39_correct  (=> (=> (< 0 (|Seq#Length| |stackNodes#0@1|)) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) _module.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) _module.Node.childrenVisited))))) null)) (and (=> (= (ControlFlow 0 12) 10) anon135_Then_correct) (=> (= (ControlFlow 0 12) 11) anon135_Else_correct)))))
(let ((anon133_Else_correct  (=> (and (<= (|Seq#Length| |stackNodes#0@1|) 0) (= (ControlFlow 0 14) 12)) anon39_correct)))
(let ((anon133_Then_correct  (=> (and (and (< 0 (|Seq#Length| |stackNodes#0@1|)) (|Seq#Contains| |stackNodes#0@1| (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) _module.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) _module.Node.children)))) (= (ControlFlow 0 13) 12))) anon39_correct)))
(let ((anon37_correct  (=> (forall ((|n#17| T@U) ) (!  (=> ($Is refType |n#17| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#17|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#17|)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#17|) _module.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#17|) _module.Node.children)))))
 :qid |SchorrWaitedfy.226:22|
 :skolemid |822|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#17|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#17|) _module.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#17|)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#17|)))
)) (and (=> (= (ControlFlow 0 15) 13) anon133_Then_correct) (=> (= (ControlFlow 0 15) 14) anon133_Else_correct)))))
(let ((anon132_Else_correct  (=> (and (not (and (|Set#IsMember| |S#0@@5| ($Box refType |n#16@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#16@0|))))) (= (ControlFlow 0 18) 15)) anon37_correct)))
(let ((anon132_Then_correct  (=> (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#16@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#16@0|)))) (and ($IsAlloc refType |n#16@0| Tclass._module.Node $Heap@@3) (= (ControlFlow 0 17) 15))) anon37_correct)))
(let ((anon131_Else_correct  (=> (not (|Set#IsMember| |S#0@@5| ($Box refType |n#16@0|))) (and (=> (= (ControlFlow 0 20) 17) anon132_Then_correct) (=> (= (ControlFlow 0 20) 18) anon132_Else_correct)))))
(let ((anon131_Then_correct  (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#16@0|)) (and (=> (= (ControlFlow 0 19) 17) anon132_Then_correct) (=> (= (ControlFlow 0 19) 18) anon132_Else_correct)))))
(let ((anon130_Then_correct  (=> (and ($Is refType |n#16@0| Tclass._module.Node) ($IsAlloc refType |n#16@0| Tclass._module.Node $Heap@2)) (and (=> (= (ControlFlow 0 21) 19) anon131_Then_correct) (=> (= (ControlFlow 0 21) 20) anon131_Else_correct)))))
(let ((anon130_Else_correct  (=> (and (not (and ($Is refType |n#16@0| Tclass._module.Node) ($IsAlloc refType |n#16@0| Tclass._module.Node $Heap@2))) (= (ControlFlow 0 16) 15)) anon37_correct)))
(let ((anon32_correct  (=> (forall ((|n#15| T@U) ) (!  (=> ($Is refType |n#15| Tclass._module.Node) (and (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#15|)) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15|) _module.Node.children))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15|) _module.Node.children))))) (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#15|)) (forall ((|j#1| Int) ) (!  (=> (and (<= (LitInt 0) |j#1|) (< |j#1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15|) _module.Node.children))))) (or (= |j#1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15|) _module.Node.childrenVisited)))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15|) _module.Node.children)) |j#1|)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15|) _module.Node.children)) |j#1|)))))
 :qid |SchorrWaitedfy.225:24|
 :skolemid |816|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15|) _module.Node.children)) |j#1|)))
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15|) _module.Node.children)) |j#1|)))
)))))
 :qid |SchorrWaitedfy.223:22|
 :skolemid |817|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15|) _module.Node.childrenVisited)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15|) _module.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#15|)))
)) (and (=> (= (ControlFlow 0 22) 21) anon130_Then_correct) (=> (= (ControlFlow 0 22) 16) anon130_Else_correct)))))
(let ((anon129_Else_correct  (=> (and (= |j#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#14@0|) _module.Node.childrenVisited)))) (= (ControlFlow 0 28) 22)) anon32_correct)))
(let ((anon129_Then_correct  (=> (or (not (= |j#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#14@0|) _module.Node.childrenVisited))))) (not true)) (=> (and ($IsAlloc refType |n#14@0| Tclass._module.Node $Heap@@3) (= (ControlFlow 0 27) 22)) anon32_correct))))
(let ((anon128_Then_correct  (=> (and (<= (LitInt 0) |j#0@0|) (< |j#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#14@0|) _module.Node.children))))) (and (=> (= (ControlFlow 0 29) 27) anon129_Then_correct) (=> (= (ControlFlow 0 29) 28) anon129_Else_correct)))))
(let ((anon128_Else_correct  (=> (and (not (and (<= (LitInt 0) |j#0@0|) (< |j#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#14@0|) _module.Node.children)))))) (= (ControlFlow 0 26) 22)) anon32_correct)))
(let ((anon127_Else_correct  (=> (< |j#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 31) 29) anon128_Then_correct) (=> (= (ControlFlow 0 31) 26) anon128_Else_correct)))))
(let ((anon127_Then_correct  (=> (<= (LitInt 0) |j#0@0|) (and (=> (= (ControlFlow 0 30) 29) anon128_Then_correct) (=> (= (ControlFlow 0 30) 26) anon128_Else_correct)))))
(let ((anon125_Then_correct  (=> (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#14@0|) _module.Node.children))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#14@0|) _module.Node.children)))) (and (=> (= (ControlFlow 0 32) 30) anon127_Then_correct) (=> (= (ControlFlow 0 32) 31) anon127_Else_correct)))))
(let ((anon125_Else_correct  (=> (and (or (not (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#14@0|) _module.Node.children))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#14@0|) _module.Node.children))))) (not true)) (= (ControlFlow 0 25) 22)) anon32_correct)))
(let ((anon124_Then_correct  (=> (and (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#14@0|)) ($IsAlloc refType |n#14@0| Tclass._module.Node $Heap@@3)) (and (=> (= (ControlFlow 0 33) 32) anon125_Then_correct) (=> (= (ControlFlow 0 33) 25) anon125_Else_correct)))))
(let ((anon124_Else_correct  (=> (and (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#14@0|))) (= (ControlFlow 0 24) 22)) anon32_correct)))
(let ((anon123_Then_correct  (=> (and ($Is refType |n#14@0| Tclass._module.Node) ($IsAlloc refType |n#14@0| Tclass._module.Node $Heap@2)) (and (=> (= (ControlFlow 0 34) 33) anon124_Then_correct) (=> (= (ControlFlow 0 34) 24) anon124_Else_correct)))))
(let ((anon123_Else_correct  (=> (and (not (and ($Is refType |n#14@0| Tclass._module.Node) ($IsAlloc refType |n#14@0| Tclass._module.Node $Heap@2))) (= (ControlFlow 0 23) 22)) anon32_correct)))
(let ((anon22_correct  (=> (forall ((|n#13| T@U) ) (!  (=> ($Is refType |n#13| Tclass._module.Node) (=> (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#13|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#13|)))) (or (not (= |n#13| |t#0@0|)) (not true))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#13|) _module.Node.childrenVisited))) (LitInt 0))))
 :qid |SchorrWaitedfy.218:22|
 :skolemid |813|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#13|) _module.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#13|)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#13|)))
)) (and (=> (= (ControlFlow 0 35) 34) anon123_Then_correct) (=> (= (ControlFlow 0 35) 23) anon123_Else_correct)))))
(let ((anon122_Else_correct  (=> (and (not (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#12@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#12@0|)))) (or (not (= |n#12@0| |t#0@0|)) (not true)))) (= (ControlFlow 0 38) 35)) anon22_correct)))
(let ((anon122_Then_correct  (=> (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#12@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#12@0|)))) (or (not (= |n#12@0| |t#0@0|)) (not true))) (= (ControlFlow 0 37) 35)) anon22_correct)))
(let ((anon121_Else_correct  (=> (not (and (|Set#IsMember| |S#0@@5| ($Box refType |n#12@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#12@0|))))) (and (=> (= (ControlFlow 0 40) 37) anon122_Then_correct) (=> (= (ControlFlow 0 40) 38) anon122_Else_correct)))))
(let ((anon121_Then_correct  (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#12@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#12@0|)))) (and (=> (= (ControlFlow 0 39) 37) anon122_Then_correct) (=> (= (ControlFlow 0 39) 38) anon122_Else_correct)))))
(let ((anon120_Else_correct  (=> (not (|Set#IsMember| |S#0@@5| ($Box refType |n#12@0|))) (and (=> (= (ControlFlow 0 42) 39) anon121_Then_correct) (=> (= (ControlFlow 0 42) 40) anon121_Else_correct)))))
(let ((anon120_Then_correct  (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#12@0|)) (and (=> (= (ControlFlow 0 41) 39) anon121_Then_correct) (=> (= (ControlFlow 0 41) 40) anon121_Else_correct)))))
(let ((anon119_Then_correct  (=> (and ($Is refType |n#12@0| Tclass._module.Node) ($IsAlloc refType |n#12@0| Tclass._module.Node $Heap@2)) (and (=> (= (ControlFlow 0 43) 41) anon120_Then_correct) (=> (= (ControlFlow 0 43) 42) anon120_Else_correct)))))
(let ((anon119_Else_correct  (=> (and (not (and ($Is refType |n#12@0| Tclass._module.Node) ($IsAlloc refType |n#12@0| Tclass._module.Node $Heap@2))) (= (ControlFlow 0 36) 35)) anon22_correct)))
(let ((anon15_correct  (=> (and (forall ((|n#11| T@U) ) (!  (=> ($Is refType |n#11| Tclass._module.Node) (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#11|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#11|) _module.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#11|) _module.Node.children))))))
 :qid |SchorrWaitedfy.216:22|
 :skolemid |810|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#11|) _module.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#11|) _module.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#11|)))
)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0@0|) _module.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0@0|) _module.Node.children))))) (and (=> (= (ControlFlow 0 44) 43) anon119_Then_correct) (=> (= (ControlFlow 0 44) 36) anon119_Else_correct)))))
(let ((anon118_Else_correct  (=> (and (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#10@0|))) (= (ControlFlow 0 47) 44)) anon15_correct)))
(let ((anon118_Then_correct  (=> (and (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#10@0|)) (= (ControlFlow 0 46) 44)) anon15_correct)))
(let ((anon117_Then_correct  (=> (and ($Is refType |n#10@0| Tclass._module.Node) ($IsAlloc refType |n#10@0| Tclass._module.Node $Heap@2)) (and (=> (= (ControlFlow 0 48) 46) anon118_Then_correct) (=> (= (ControlFlow 0 48) 47) anon118_Else_correct)))))
(let ((anon117_Else_correct  (=> (and (not (and ($Is refType |n#10@0| Tclass._module.Node) ($IsAlloc refType |n#10@0| Tclass._module.Node $Heap@2))) (= (ControlFlow 0 45) 44)) anon15_correct)))
(let ((anon12_correct  (=> (= |p#0@0| (ite (= (|Seq#Length| |stackNodes#0@1|) (LitInt 0)) null ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1))))) (and (=> (= (ControlFlow 0 49) 48) anon117_Then_correct) (=> (= (ControlFlow 0 49) 45) anon117_Else_correct)))))
(let ((anon116_Else_correct  (=> (and (or (not (= (|Seq#Length| |stackNodes#0@1|) (LitInt 0))) (not true)) (= (ControlFlow 0 51) 49)) anon12_correct)))
(let ((anon116_Then_correct  (=> (and (= (|Seq#Length| |stackNodes#0@1|) (LitInt 0)) (= (ControlFlow 0 50) 49)) anon12_correct)))
(let ((anon9_correct  (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |t#0@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |t#0@0|)))) (and (=> (= (ControlFlow 0 52) 50) anon116_Then_correct) (=> (= (ControlFlow 0 52) 51) anon116_Else_correct)))))
(let ((anon115_Else_correct  (=> (and (not (|Set#IsMember| |S#0@@5| ($Box refType |t#0@0|))) (= (ControlFlow 0 54) 52)) anon9_correct)))
(let ((anon115_Then_correct  (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |t#0@0|)) (= (ControlFlow 0 53) 52)) anon9_correct)))
(let ((anon7_correct  (=> (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| |stackNodes#0@1|))) (|Set#IsMember| |S#0@@5| (|Seq#Index| |stackNodes#0@1| |i#1|)))
 :qid |SchorrWaitedfy.197:22|
 :skolemid |807|
 :pattern ( ($Unbox refType (|Seq#Index| |stackNodes#0@1| |i#1|)))
)) (and (=> (= (ControlFlow 0 55) 53) anon115_Then_correct) (=> (= (ControlFlow 0 55) 54) anon115_Else_correct)))))
(let ((anon114_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| (|Seq#Length| |stackNodes#0@1|)))) (= (ControlFlow 0 57) 55)) anon7_correct)))
(let ((anon114_Then_correct  (=> (and (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| (|Seq#Length| |stackNodes#0@1|))) (= (ControlFlow 0 56) 55)) anon7_correct)))
(let ((anon113_Else_correct  (=> (< |i#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 59) 56) anon114_Then_correct) (=> (= (ControlFlow 0 59) 57) anon114_Else_correct)))))
(let ((anon113_Then_correct  (=> (<= (LitInt 0) |i#0@0|) (and (=> (= (ControlFlow 0 58) 56) anon114_Then_correct) (=> (= (ControlFlow 0 58) 57) anon114_Else_correct)))))
(let ((anon0_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and ($Is refType |root#0| Tclass._module.Node) ($IsAlloc refType |root#0| Tclass._module.Node $Heap@@3)) (and ($Is SetType |S#0@@5| (TSet Tclass._module.Node)) ($IsAlloc SetType |S#0@@5| (TSet Tclass._module.Node) $Heap@@3))) (=> (and (and (and (and (and (and (and ($Is refType |t#0| Tclass._module.Node?) ($IsAlloc refType |t#0| Tclass._module.Node? $Heap@@3)) true) (and (and ($Is refType |p#0@@3| Tclass._module.Node?) ($IsAlloc refType |p#0@@3| Tclass._module.Node? $Heap@@3)) true)) (and (and (and ($Is DatatypeTypeType |path#0| Tclass._module.Path) ($IsAlloc DatatypeTypeType |path#0| Tclass._module.Path $Heap@@3)) true) (and (and ($Is SeqType |stackNodes#0| (TSeq Tclass._module.Node)) ($IsAlloc SeqType |stackNodes#0| (TSeq Tclass._module.Node) $Heap@@3)) true))) (and (and (and (and ($Is SetType |unmarkedNodes#0| (TSet Tclass._module.Node?)) ($IsAlloc SetType |unmarkedNodes#0| (TSet Tclass._module.Node?) $Heap@@3)) true) (and (and ($Is refType |oldP#0_0_0| Tclass._module.Node?) ($IsAlloc refType |oldP#0_0_0| Tclass._module.Node? $Heap@@3)) true)) (and (and (and ($Is refType |newT#0_1_1_0| Tclass._module.Node?) ($IsAlloc refType |newT#0_1_1_0| Tclass._module.Node? $Heap@@3)) true) (= 4 $FunctionContextHeight)))) (and (and (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |root#0|)) (forall ((|n#1@@0| T@U) ) (!  (=> ($Is refType |n#1@@0| Tclass._module.Node) (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#1@@0|)) (forall ((|ch#2| T@U) ) (!  (=> ($Is refType |ch#2| Tclass._module.Node?) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) _module.Node.children)) ($Box refType |ch#2|)) (or (= |ch#2| null) (|Set#IsMember| |S#0@@5| ($Box refType |ch#2|)))))
 :qid |SchorrWaitedfy.173:22|
 :skolemid |798|
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |ch#2|)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) _module.Node.children)) ($Box refType |ch#2|)))
))))
 :qid |SchorrWaitedfy.172:19|
 :skolemid |799|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#1@@0|)))
))) (and (forall ((|n#3| T@U) ) (!  (=> ($Is refType |n#3| Tclass._module.Node) (and (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#3|)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3|) _module.Node.marked))))) (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#3|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3|) _module.Node.childrenVisited))) (LitInt 0)))))
 :qid |SchorrWaitedfy.175:19|
 :skolemid |800|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3|) _module.Node.childrenVisited)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#3|)))
)) (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc |S#0@@5|)))) (and (and (= |path#0@0| (Lit DatatypeTypeType |#_module.Path.Empty|)) (or (not (= |root#0| null)) (not true))) (and (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |root#0| _module.Node.marked)) (= |$rhs#0@0| (U_2_bool (Lit boolType (bool_2_U true))))))) (and (and (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@3 |root#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |root#0|) _module.Node.marked ($Box boolType (bool_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@0)) (and (or (not (= |root#0| null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |root#0| _module.Node.pathFromRoot)))) (and (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 |root#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) _module.Node.pathFromRoot ($Box DatatypeTypeType |path#0@0|)))) ($IsGoodHeap $Heap@1)) (and (= |stackNodes#0@0| (Lit SeqType |Seq#Empty|)) (= |unmarkedNodes#0@0| (|Set#Difference| |S#0@@5| (|Set#UnionOne| |Set#Empty| ($Box refType |root#0|)))))))) (and (and (and (and (= |$decr_init$loop#02@0| (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.childrenVisited))))) (=> |$w$loop#0@0| (forall ((|i#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| (|Seq#Length| |stackNodes#0@0|))) (|Set#IsMember| |S#0@@5| (|Seq#Index| |stackNodes#0@0| |i#1@@0|)))
 :qid |SchorrWaitedfy.197:22|
 :skolemid |809|
 :pattern ( ($Unbox refType (|Seq#Index| |stackNodes#0@0| |i#1@@0|)))
)))) (and (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@5| ($Box refType |root#0|))) (=> |$w$loop#0@0| (not (|Seq#Contains| |stackNodes#0@0| ($Box refType |root#0|)))))) (and (and (=> |$w$loop#0@0| (= null (ite (= (|Seq#Length| |stackNodes#0@0|) (LitInt 0)) null ($Unbox refType (|Seq#Index| |stackNodes#0@0| (- (|Seq#Length| |stackNodes#0@0|) 1)))))) (=> |$w$loop#0@0| (forall ((|n#11@@0| T@U) ) (!  (=> ($Is refType |n#11@@0| Tclass._module.Node) (=> (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#11@@0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11@@0|) _module.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11@@0|) _module.Node.children))))))
 :qid |SchorrWaitedfy.216:22|
 :skolemid |812|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11@@0|) _module.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11@@0|) _module.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#11@@0|)))
)))) (and (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children))))) (=> |$w$loop#0@0| (forall ((|n#13@@0| T@U) ) (!  (=> ($Is refType |n#13@@0| Tclass._module.Node) (=> (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#13@@0|)) (not (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#13@@0|)))) (or (not (= |n#13@@0| |root#0|)) (not true))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#13@@0|) _module.Node.childrenVisited))) (LitInt 0))))
 :qid |SchorrWaitedfy.218:22|
 :skolemid |815|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#13@@0|) _module.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#13@@0|)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#13@@0|)))
)))))) (and (and (and (=> |$w$loop#0@0| (forall ((|n#15@@0| T@U) ) (!  (=> ($Is refType |n#15@@0| Tclass._module.Node) (and (=> (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#15@@0|)) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) _module.Node.children))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15@@0|) _module.Node.children))))) (=> (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#15@@0|)) (forall ((|j#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |j#1@@0|) (< |j#1@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) _module.Node.children))))) (or (= |j#1@@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) _module.Node.childrenVisited)))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) _module.Node.children)) |j#1@@0|)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15@@0|) _module.Node.children)) |j#1@@0|)))))
 :qid |SchorrWaitedfy.225:24|
 :skolemid |820|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15@@0|) _module.Node.children)) |j#1@@0|)))
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) _module.Node.children)) |j#1@@0|)))
)))))
 :qid |SchorrWaitedfy.223:22|
 :skolemid |821|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) _module.Node.childrenVisited)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15@@0|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) _module.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#15@@0|)))
))) (=> |$w$loop#0@0| (forall ((|n#17@@0| T@U) ) (!  (=> ($Is refType |n#17@@0| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#17@@0|)) (not (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#17@@0|)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#17@@0|) _module.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#17@@0|) _module.Node.children)))))
 :qid |SchorrWaitedfy.226:22|
 :skolemid |824|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#17@@0|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#17@@0|) _module.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#17@@0|)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#17@@0|)))
)))) (and (=> |$w$loop#0@0| (=> (< 0 (|Seq#Length| |stackNodes#0@0|)) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@0| (LitInt 0)))) _module.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@0| (LitInt 0)))) _module.Node.childrenVisited))))) null))) (=> |$w$loop#0@0| (forall ((|k#1@@0| Int) ) (!  (=> (and (< 0 |k#1@@0|) (< |k#1@@0| (|Seq#Length| |stackNodes#0@0|))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@0| |k#1@@0|))) _module.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@0| |k#1@@0|))) _module.Node.childrenVisited))))) ($Unbox refType (|Seq#Index| |stackNodes#0@0| (- |k#1@@0| 1)))))
 :qid |SchorrWaitedfy.232:22|
 :skolemid |827|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@0| |k#1@@0|))) _module.Node.childrenVisited)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@0| |k#1@@0|))) _module.Node.children)))
))))) (and (and (=> |$w$loop#0@0| (forall ((|k#3@@0| Int) ) (!  (=> (and (<= (LitInt 0) |k#3@@0|) (< |k#3@@0| (- (|Seq#Length| |stackNodes#0@0|) 1))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (|Seq#Index| |stackNodes#0@0| |k#3@@0|))) _module.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@0| |k#3@@0|))) _module.Node.childrenVisited))))) ($Unbox refType (|Seq#Index| |stackNodes#0@0| (+ |k#3@@0| 1)))))
 :qid |SchorrWaitedfy.237:22|
 :skolemid |830|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@0| |k#3@@0|))) _module.Node.childrenVisited)))
 :pattern ( ($Unbox refType (|Seq#Index| |stackNodes#0@0| |k#3@@0|)))
))) (=> |$w$loop#0@0| (=> (< 0 (|Seq#Length| |stackNodes#0@0|)) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (|Seq#Index| |stackNodes#0@0| (- (|Seq#Length| |stackNodes#0@0|) 1)))) _module.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@0| (- (|Seq#Length| |stackNodes#0@0|) 1)))) _module.Node.childrenVisited))))) |root#0|)))) (and (=> |$w$loop#0@0| (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.marked)))) (=> |$w$loop#0@0| (forall ((|n#19| T@U) ) (!  (=> ($Is refType |n#19| Tclass._module.Node) (=> (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#19|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19|) _module.Node.marked)))) (not (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#19|)))) (or (not (= |n#19| |root#0|)) (not true))) (forall ((|ch#7| T@U) ) (!  (=> ($Is refType |ch#7| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19|) _module.Node.children)) ($Box refType |ch#7|)) (or (not (= |ch#7| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#7|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.244:24|
 :skolemid |835|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#7|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19|) _module.Node.children)) ($Box refType |ch#7|)))
))))
 :qid |SchorrWaitedfy.243:22|
 :skolemid |836|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19|) _module.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#19|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#19|)))
))))))))) (and (and (and (and (and (and (=> |$w$loop#0@0| (forall ((|n#21| T@U) ) (!  (=> (and ($Is refType |n#21| Tclass._module.Node) ($IsAlloc refType |n#21| Tclass._module.Node $Heap@1)) (=> (or (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#21|)) (= |n#21| |root#0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.245:22|
 :skolemid |842|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#21|)))
))) (=> |$w$loop#0@0| (forall ((|n#21@@0| T@U) ) (!  (=> (and ($Is refType |n#21@@0| Tclass._module.Node) ($IsAlloc refType |n#21@@0| Tclass._module.Node $Heap@1)) (=> (or (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#21@@0|)) (= |n#21@@0| |root#0|)) (forall ((|j#3| Int) ) (!  (=> (and (<= (LitInt 0) |j#3|) (< |j#3| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@0|) _module.Node.childrenVisited))))) (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@0|) _module.Node.children)) |j#3|)) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@0|) _module.Node.children)) |j#3|))) _module.Node.marked)))))
 :qid |SchorrWaitedfy.247:24|
 :skolemid |843|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@0|) _module.Node.children)) |j#3|)))
))))
 :qid |SchorrWaitedfy.245:22|
 :skolemid |844|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@0|) _module.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@0|) _module.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#21@@0|)))
)))) (and (=> |$w$loop#0@0| ($IsAllocBox ($Box DatatypeTypeType |path#0@0|) Tclass._module.Path $Heap@@3)) (=> |$w$loop#0@0| (=> (|_module.__default.ReachableVia#canCall| $Heap@@3 |root#0| |path#0@0| |root#0| |S#0@@5|) (or (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| |path#0@0| |root#0| |S#0@@5|) (=> (_module.Path.Empty_q |path#0@0|) (= |root#0| |root#0|))))))) (and (and (=> |$w$loop#0@0| (=> (|_module.__default.ReachableVia#canCall| $Heap@@3 |root#0| |path#0@0| |root#0| |S#0@@5|) (or (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| |path#0@0| |root#0| |S#0@@5|) (=> (not (_module.Path.Empty_q |path#0@0|)) (let ((|n#22| (_module.Path._h1 |path#0@0|)))
(|Set#IsMember| |S#0@@5| ($Box refType |n#22|))))))) (=> |$w$loop#0@0| (=> (|_module.__default.ReachableVia#canCall| $Heap@@3 |root#0| |path#0@0| |root#0| |S#0@@5|) (or (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| |path#0@0| |root#0| |S#0@@5|) (=> (not (_module.Path.Empty_q |path#0@0|)) (let ((|n#22@@0| (_module.Path._h1 |path#0@0|)))
(|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#22@@0|) _module.Node.children)) ($Box refType |root#0|)))))))) (and (=> |$w$loop#0@0| (=> (|_module.__default.ReachableVia#canCall| $Heap@@3 |root#0| |path#0@0| |root#0| |S#0@@5|) (or (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| |path#0@0| |root#0| |S#0@@5|) (=> (not (_module.Path.Empty_q |path#0@0|)) (let ((|n#22@@1| (_module.Path._h1 |path#0@0|)))
(let ((|prefix#0@@0| (_module.Path._h0 |path#0@0|)))
(_module.__default.ReachableVia ($LS ($LS $LZ)) $Heap@@3 |root#0| |prefix#0@@0| |n#22@@1| |S#0@@5|))))))) (=> |$w$loop#0@0| (forall ((|n#25| T@U) ) (!  (=> ($Is refType |n#25| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#25|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#25|) _module.Node.marked)))) (let ((|pth#0| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#25|) _module.Node.pathFromRoot))))
 (and ($IsAllocBox ($Box DatatypeTypeType |pth#0|) Tclass._module.Path $Heap@@3) (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| |pth#0| |n#25| |S#0@@5|)))))
 :qid |SchorrWaitedfy.250:22|
 :skolemid |849|
 :pattern ( (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#25|) _module.Node.pathFromRoot)) |n#25| |S#0@@5|))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#25|) _module.Node.pathFromRoot)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#25|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#25|)))
)))))) (and (and (and (=> |$w$loop#0@0| (forall ((|n#27| T@U) ) (!  (=> ($Is refType |n#27| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#27|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#27|) _module.Node.marked)))) (_module.__default.Reachable $Heap@@3 |root#0| |n#27| |S#0@@5|)))
 :qid |SchorrWaitedfy.252:22|
 :skolemid |854|
 :pattern ( (_module.__default.Reachable $Heap@@3 |root#0| |n#27| |S#0@@5|))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#27|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#27|)))
))) (=> |$w$loop#0@0| (forall ((|n#29| T@U) ) (!  (=> ($Is refType |n#29| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#29|)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#29|) _module.Node.marked))))) (|Set#IsMember| |unmarkedNodes#0@0| ($Box refType |n#29|))))
 :qid |SchorrWaitedfy.254:22|
 :skolemid |857|
 :pattern ( (|Set#IsMember| |unmarkedNodes#0@0| ($Box refType |n#29|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#29|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#29|)))
)))) (and ($Is refType |newT#0_1_1_0@0| Tclass._module.Node?) ($IsAlloc refType |newT#0_1_1_0@0| Tclass._module.Node? $Heap@2))) (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and ($Is refType |p#0@0| Tclass._module.Node?) ($IsAlloc refType |p#0@0| Tclass._module.Node? $Heap@2))))) (and (and (and (and ($Is SeqType |stackNodes#0@1| (TSeq Tclass._module.Node)) ($IsAlloc SeqType |stackNodes#0@1| (TSeq Tclass._module.Node) $Heap@2)) (and ($Is DatatypeTypeType |path#0@1| Tclass._module.Path) ($IsAlloc DatatypeTypeType |path#0@1| Tclass._module.Path $Heap@2))) (and (and ($Is refType |t#0@0| Tclass._module.Node?) ($IsAlloc refType |t#0@0| Tclass._module.Node? $Heap@2)) (and ($Is SetType |unmarkedNodes#0@1| (TSet Tclass._module.Node?)) ($IsAlloc SetType |unmarkedNodes#0@1| (TSet Tclass._module.Node?) $Heap@2)))) (and (and (and ($Is refType |oldP#0_0_0@0| Tclass._module.Node?) ($IsAlloc refType |oldP#0_0_0@0| Tclass._module.Node? $Heap@2)) (and (not false) |$rhs#0@0|)) (and (and (=> |$w$loop#0@0| (forall ((|i#1@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@1|) (< |i#1@@1| (|Seq#Length| |stackNodes#0@1|))) (|Set#IsMember| |S#0@@5| (|Seq#Index| |stackNodes#0@1| |i#1@@1|)))
 :qid |SchorrWaitedfy.197:22|
 :skolemid |809|
 :pattern ( ($Unbox refType (|Seq#Index| |stackNodes#0@1| |i#1@@1|)))
))) (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@5| ($Box refType |t#0@0|)))) (and (=> |$w$loop#0@0| (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |t#0@0|)))) (=> |$w$loop#0@0| (= |p#0@0| (ite (= (|Seq#Length| |stackNodes#0@1|) (LitInt 0)) null ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1))))))))))) (and (and (and (and (and (=> |$w$loop#0@0| (forall ((|n#11@@1| T@U) ) (!  (=> ($Is refType |n#11@@1| Tclass._module.Node) (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#11@@1|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#11@@1|) _module.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#11@@1|) _module.Node.children))))))
 :qid |SchorrWaitedfy.216:22|
 :skolemid |812|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#11@@1|) _module.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#11@@1|) _module.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#11@@1|)))
))) (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0@0|) _module.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0@0|) _module.Node.children)))))) (and (=> |$w$loop#0@0| (forall ((|n#13@@1| T@U) ) (!  (=> ($Is refType |n#13@@1| Tclass._module.Node) (=> (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#13@@1|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#13@@1|)))) (or (not (= |n#13@@1| |t#0@0|)) (not true))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#13@@1|) _module.Node.childrenVisited))) (LitInt 0))))
 :qid |SchorrWaitedfy.218:22|
 :skolemid |815|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#13@@1|) _module.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#13@@1|)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#13@@1|)))
))) (=> |$w$loop#0@0| (forall ((|n#15@@1| T@U) ) (!  (=> ($Is refType |n#15@@1| Tclass._module.Node) (and (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#15@@1|)) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15@@1|) _module.Node.children))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15@@1|) _module.Node.children))))) (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#15@@1|)) (forall ((|j#1@@1| Int) ) (!  (=> (and (<= (LitInt 0) |j#1@@1|) (< |j#1@@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15@@1|) _module.Node.children))))) (or (= |j#1@@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15@@1|) _module.Node.childrenVisited)))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15@@1|) _module.Node.children)) |j#1@@1|)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15@@1|) _module.Node.children)) |j#1@@1|)))))
 :qid |SchorrWaitedfy.225:24|
 :skolemid |820|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15@@1|) _module.Node.children)) |j#1@@1|)))
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15@@1|) _module.Node.children)) |j#1@@1|)))
)))))
 :qid |SchorrWaitedfy.223:22|
 :skolemid |821|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15@@1|) _module.Node.childrenVisited)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15@@1|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#15@@1|) _module.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#15@@1|)))
))))) (and (and (=> |$w$loop#0@0| (forall ((|n#17@@1| T@U) ) (!  (=> ($Is refType |n#17@@1| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#17@@1|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#17@@1|)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#17@@1|) _module.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#17@@1|) _module.Node.children)))))
 :qid |SchorrWaitedfy.226:22|
 :skolemid |824|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#17@@1|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#17@@1|) _module.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#17@@1|)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#17@@1|)))
))) (=> |$w$loop#0@0| (=> (< 0 (|Seq#Length| |stackNodes#0@1|)) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) _module.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) _module.Node.childrenVisited))))) null)))) (and (=> |$w$loop#0@0| (forall ((|k#1@@1| Int) ) (!  (=> (and (< 0 |k#1@@1|) (< |k#1@@1| (|Seq#Length| |stackNodes#0@1|))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1@@1|))) _module.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1@@1|))) _module.Node.childrenVisited))))) ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- |k#1@@1| 1)))))
 :qid |SchorrWaitedfy.232:22|
 :skolemid |827|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1@@1|))) _module.Node.childrenVisited)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1@@1|))) _module.Node.children)))
))) (=> |$w$loop#0@0| (forall ((|k#3@@1| Int) ) (!  (=> (and (<= (LitInt 0) |k#3@@1|) (< |k#3@@1| (- (|Seq#Length| |stackNodes#0@1|) 1))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3@@1|))) _module.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3@@1|))) _module.Node.childrenVisited))))) ($Unbox refType (|Seq#Index| |stackNodes#0@1| (+ |k#3@@1| 1)))))
 :qid |SchorrWaitedfy.237:22|
 :skolemid |830|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3@@1|))) _module.Node.childrenVisited)))
 :pattern ( ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3@@1|)))
)))))) (and (and (and (=> |$w$loop#0@0| (=> (< 0 (|Seq#Length| |stackNodes#0@1|)) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1)))) _module.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1)))) _module.Node.childrenVisited))))) |t#0@0|))) (=> |$w$loop#0@0| (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |root#0|) _module.Node.marked))))) (and (=> |$w$loop#0@0| (forall ((|n#19@@0| T@U) ) (!  (=> ($Is refType |n#19@@0| Tclass._module.Node) (=> (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#19@@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#19@@0|) _module.Node.marked)))) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#19@@0|)))) (or (not (= |n#19@@0| |t#0@0|)) (not true))) (forall ((|ch#7@@0| T@U) ) (!  (=> ($Is refType |ch#7@@0| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#19@@0|) _module.Node.children)) ($Box refType |ch#7@@0|)) (or (not (= |ch#7@@0| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |ch#7@@0|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.244:24|
 :skolemid |835|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |ch#7@@0|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#19@@0|) _module.Node.children)) ($Box refType |ch#7@@0|)))
))))
 :qid |SchorrWaitedfy.243:22|
 :skolemid |836|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#19@@0|) _module.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#19@@0|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#19@@0|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#19@@0|)))
))) (=> |$w$loop#0@0| (forall ((|n#21@@1| T@U) ) (!  (=> (and ($Is refType |n#21@@1| Tclass._module.Node) ($IsAlloc refType |n#21@@1| Tclass._module.Node $Heap@2)) (=> (or (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#21@@1|)) (= |n#21@@1| |t#0@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#21@@1|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.245:22|
 :skolemid |842|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#21@@1|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#21@@1|)))
))))) (and (and (=> |$w$loop#0@0| (forall ((|n#21@@2| T@U) ) (!  (=> (and ($Is refType |n#21@@2| Tclass._module.Node) ($IsAlloc refType |n#21@@2| Tclass._module.Node $Heap@2)) (=> (or (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#21@@2|)) (= |n#21@@2| |t#0@0|)) (forall ((|j#3@@0| Int) ) (!  (=> (and (<= (LitInt 0) |j#3@@0|) (< |j#3@@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#21@@2|) _module.Node.childrenVisited))))) (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#21@@2|) _module.Node.children)) |j#3@@0|)) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#21@@2|) _module.Node.children)) |j#3@@0|))) _module.Node.marked)))))
 :qid |SchorrWaitedfy.247:24|
 :skolemid |843|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#21@@2|) _module.Node.children)) |j#3@@0|)))
))))
 :qid |SchorrWaitedfy.245:22|
 :skolemid |844|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#21@@2|) _module.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#21@@2|) _module.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#21@@2|)))
))) (=> |$w$loop#0@0| (=> ($IsAllocBox ($Box DatatypeTypeType |path#0@1|) Tclass._module.Path $Heap@@3) (|_module.__default.ReachableVia#canCall| $Heap@@3 |root#0| |path#0@1| |t#0@0| |S#0@@5|)))) (and (=> |$w$loop#0@0| ($IsAllocBox ($Box DatatypeTypeType |path#0@1|) Tclass._module.Path $Heap@@3)) (=> |$w$loop#0@0| (=> (|_module.__default.ReachableVia#canCall| $Heap@@3 |root#0| |path#0@1| |t#0@0| |S#0@@5|) (or (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| |path#0@1| |t#0@0| |S#0@@5|) (=> (_module.Path.Empty_q |path#0@1|) (= |root#0| |t#0@0|))))))))) (and (and (and (and (=> |$w$loop#0@0| (=> (|_module.__default.ReachableVia#canCall| $Heap@@3 |root#0| |path#0@1| |t#0@0| |S#0@@5|) (or (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| |path#0@1| |t#0@0| |S#0@@5|) (=> (not (_module.Path.Empty_q |path#0@1|)) (let ((|n#22@@2| (_module.Path._h1 |path#0@1|)))
(|Set#IsMember| |S#0@@5| ($Box refType |n#22@@2|))))))) (=> |$w$loop#0@0| (=> (|_module.__default.ReachableVia#canCall| $Heap@@3 |root#0| |path#0@1| |t#0@0| |S#0@@5|) (or (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| |path#0@1| |t#0@0| |S#0@@5|) (=> (not (_module.Path.Empty_q |path#0@1|)) (let ((|n#22@@3| (_module.Path._h1 |path#0@1|)))
(|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#22@@3|) _module.Node.children)) ($Box refType |t#0@0|)))))))) (and (=> |$w$loop#0@0| (=> (|_module.__default.ReachableVia#canCall| $Heap@@3 |root#0| |path#0@1| |t#0@0| |S#0@@5|) (or (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| |path#0@1| |t#0@0| |S#0@@5|) (=> (not (_module.Path.Empty_q |path#0@1|)) (let ((|n#22@@4| (_module.Path._h1 |path#0@1|)))
(let ((|prefix#0@@1| (_module.Path._h0 |path#0@1|)))
(_module.__default.ReachableVia ($LS ($LS $LZ)) $Heap@@3 |root#0| |prefix#0@@1| |n#22@@4| |S#0@@5|))))))) (=> |$w$loop#0@0| (and (|_module.__default.ReachableVia#canCall| $Heap@@3 |root#0| |path#0@1| |t#0@0| |S#0@@5|) (and (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| |path#0@1| |t#0@0| |S#0@@5|) (ite (_module.Path.Empty_q |path#0@1|) (= |root#0| |t#0@0|) (let ((|n#23| (_module.Path._h1 |path#0@1|)))
(let ((|prefix#1@@0| (_module.Path._h0 |path#0@1|)))
 (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#23|)) (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#23|) _module.Node.children)) ($Box refType |t#0@0|))) (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| |prefix#1@@0| |n#23| |S#0@@5|)))))))))) (and (and (=> |$w$loop#0@0| (forall ((|n#25@@0| T@U) ) (!  (=> ($Is refType |n#25@@0| Tclass._module.Node) (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#25@@0|)) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#25@@0|) _module.Node.marked))) (let ((|pth#0@@0| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#25@@0|) _module.Node.pathFromRoot))))
 (=> ($IsAllocBox ($Box DatatypeTypeType |pth#0@@0|) Tclass._module.Path $Heap@@3) (|_module.__default.ReachableVia#canCall| $Heap@@3 |root#0| |pth#0@@0| |n#25@@0| |S#0@@5|))))))
 :qid |SchorrWaitedfy.250:22|
 :skolemid |847|
 :pattern ( (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#25@@0|) _module.Node.pathFromRoot)) |n#25@@0| |S#0@@5|))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#25@@0|) _module.Node.pathFromRoot)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#25@@0|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#25@@0|)))
))) (=> |$w$loop#0@0| (forall ((|n#25@@1| T@U) ) (!  (=> ($Is refType |n#25@@1| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#25@@1|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#25@@1|) _module.Node.marked)))) (let ((|pth#0@@1| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#25@@1|) _module.Node.pathFromRoot))))
 (and ($IsAllocBox ($Box DatatypeTypeType |pth#0@@1|) Tclass._module.Path $Heap@@3) (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| |pth#0@@1| |n#25@@1| |S#0@@5|)))))
 :qid |SchorrWaitedfy.250:22|
 :skolemid |849|
 :pattern ( (_module.__default.ReachableVia ($LS $LZ) $Heap@@3 |root#0| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#25@@1|) _module.Node.pathFromRoot)) |n#25@@1| |S#0@@5|))
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#25@@1|) _module.Node.pathFromRoot)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#25@@1|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#25@@1|)))
)))) (and (=> |$w$loop#0@0| (forall ((|n#27@@0| T@U) ) (!  (=> ($Is refType |n#27@@0| Tclass._module.Node) (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#27@@0|)) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#27@@0|) _module.Node.marked))) (|_module.__default.Reachable#canCall| $Heap@@3 |root#0| |n#27@@0| |S#0@@5|))))
 :qid |SchorrWaitedfy.252:22|
 :skolemid |852|
 :pattern ( (_module.__default.Reachable $Heap@@3 |root#0| |n#27@@0| |S#0@@5|))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#27@@0|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#27@@0|)))
))) (=> |$w$loop#0@0| (forall ((|n#27@@1| T@U) ) (!  (=> ($Is refType |n#27@@1| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#27@@1|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#27@@1|) _module.Node.marked)))) (_module.__default.Reachable $Heap@@3 |root#0| |n#27@@1| |S#0@@5|)))
 :qid |SchorrWaitedfy.252:22|
 :skolemid |854|
 :pattern ( (_module.__default.Reachable $Heap@@3 |root#0| |n#27@@1| |S#0@@5|))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#27@@1|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#27@@1|)))
)))))) (and (and (and (=> |$w$loop#0@0| (forall ((|n#29@@0| T@U) ) (!  (=> ($Is refType |n#29@@0| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#29@@0|)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#29@@0|) _module.Node.marked))))) (|Set#IsMember| |unmarkedNodes#0@1| ($Box refType |n#29@@0|))))
 :qid |SchorrWaitedfy.254:22|
 :skolemid |857|
 :pattern ( (|Set#IsMember| |unmarkedNodes#0@1| ($Box refType |n#29@@0|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#29@@0|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#29@@0|)))
))) (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@12) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@12)) (|Set#IsMember| |S#0@@5| ($Box refType $o@@12))))
 :qid |SchorrWaitedfy.195:3|
 :skolemid |858|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@12))
))) (and ($HeapSucc $Heap@1 $Heap@2) (forall (($o@@13 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@13) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@13) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@13) $f@@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@13 $f@@2))))
 :qid |SchorrWaitedfy.195:3|
 :skolemid |859|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@13) $f@@2))
)))) (and (and (|Set#Subset| |unmarkedNodes#0@1| |unmarkedNodes#0@0|) (=> (|Set#Equal| |unmarkedNodes#0@1| |unmarkedNodes#0@0|) (and (<= (|Seq#Rank| |stackNodes#0@1|) (|Seq#Rank| |stackNodes#0@0|)) (=> (= (|Seq#Rank| |stackNodes#0@1|) (|Seq#Rank| |stackNodes#0@0|)) (<= (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0@0|) _module.Node.children))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |t#0@0|) _module.Node.childrenVisited)))) |$decr_init$loop#02@0|))))) (not |$w$loop#0@0|))))))) (and (=> (= (ControlFlow 0 60) 58) anon113_Then_correct) (=> (= (ControlFlow 0 60) 59) anon113_Else_correct)))))))
anon0_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
