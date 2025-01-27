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
(declare-fun Tagclass.M0.Node () T@U)
(declare-fun Tagclass.M0.Path () T@U)
(declare-fun Tagclass.M0.Node? () T@U)
(declare-fun class.M0.Node? () T@U)
(declare-fun |##M0.Path.Empty| () T@U)
(declare-fun |##M0.Path.Extend| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun tytagFamily$Path () T@U)
(declare-fun field$children () T@U)
(declare-fun field$marked () T@U)
(declare-fun field$childrenVisited () T@U)
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
(declare-fun |#M0.Path.Extend| (T@U T@U) T@U)
(declare-fun Tclass.M0.Path () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.M0.Node () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#M0.Path.Empty| () T@U)
(declare-fun Tclass.M0.Node? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun M0.Node.children () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun M0.Node.marked () T@U)
(declare-fun M0.Node.childrenVisited () T@U)
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
(declare-fun M0.__default.ReachableVia (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |M0.__default.ReachableVia#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun M0.Path.Empty_q (T@U) Bool)
(declare-fun M0.Path._h1 (T@U) T@U)
(declare-fun M0.Path._h0 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OlderTag (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun M0.Path.Extend_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun M0.__default.Reachable (T@U T@U T@U T@U) Bool)
(declare-fun |M0.__default.Reachable#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass.M0.Node Tagclass.M0.Path Tagclass.M0.Node? class.M0.Node? |##M0.Path.Empty| |##M0.Path.Extend| tytagFamily$nat tytagFamily$Node tytagFamily$Path field$children field$marked field$childrenVisited)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor refType) 4)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M0.Path.Extend| |a#6#0#0| |a#6#1#0|) Tclass.M0.Path)  (and ($Is DatatypeTypeType |a#6#0#0| Tclass.M0.Path) ($Is refType |a#6#1#0| Tclass.M0.Node)))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |698|
 :pattern ( ($Is DatatypeTypeType (|#M0.Path.Extend| |a#6#0#0| |a#6#1#0|) Tclass.M0.Path))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#M0.Path.Extend| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass.M0.Path $h@@0)  (and ($IsAlloc DatatypeTypeType |a#6#0#0@@0| Tclass.M0.Path $h@@0) ($IsAlloc refType |a#6#1#0@@0| Tclass.M0.Node $h@@0))))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |699|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M0.Path.Extend| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass.M0.Path $h@@0))
)))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#M0.Path.Empty|) |##M0.Path.Empty|))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M0.Node?)  (or (= $o null) (= (dtype $o) Tclass.M0.Node?)))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($Is refType $o Tclass.M0.Node?))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.M0.Node $h@@1) ($IsAlloc refType |c#0| Tclass.M0.Node? $h@@1))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( ($IsAlloc refType |c#0| Tclass.M0.Node $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass.M0.Node? $h@@1))
)))
(assert ($Is DatatypeTypeType |#M0.Path.Empty| Tclass.M0.Path))
(assert (= (FDim M0.Node.children) 0))
(assert (= (FieldOfDecl class.M0.Node? field$children) M0.Node.children))
(assert  (not ($IsGhostField M0.Node.children)))
(assert (= (FDim M0.Node.marked) 0))
(assert (= (FieldOfDecl class.M0.Node? field$marked) M0.Node.marked))
(assert  (not ($IsGhostField M0.Node.marked)))
(assert (= (FDim M0.Node.childrenVisited) 0))
(assert (= (FieldOfDecl class.M0.Node? field$childrenVisited) M0.Node.childrenVisited))
(assert  (not ($IsGhostField M0.Node.childrenVisited)))
(assert (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#M0.Path.Empty| Tclass.M0.Path $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |693|
 :pattern ( ($IsAlloc DatatypeTypeType |#M0.Path.Empty| Tclass.M0.Path $h@@2))
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
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.M0.Node? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.M0.Node? $h@@3))
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
(assert  (and (= (Ctor SetType) 8) (= (Ctor SeqType) 9)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|source#0| T@U) (|p#0| T@U) (|sink#0| T@U) (|S#0| T@U) ) (!  (=> (or (|M0.__default.ReachableVia#canCall| $Heap |source#0| |p#0| |sink#0| |S#0|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap) ($Is refType |source#0| Tclass.M0.Node)) ($Is DatatypeTypeType |p#0| Tclass.M0.Path)) ($Is refType |sink#0| Tclass.M0.Node)) ($Is SetType |S#0| (TSet Tclass.M0.Node))))) (and (=> (not (M0.Path.Empty_q |p#0|)) (let ((|n#1| (M0.Path._h1 |p#0|)))
(let ((|prefix#1| (M0.Path._h0 |p#0|)))
 (=> (|Set#IsMember| |S#0| ($Box refType |n#1|)) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#1|) M0.Node.children)) ($Box refType |sink#0|)) (|M0.__default.ReachableVia#canCall| $Heap |source#0| |prefix#1| |n#1| |S#0|)))))) (= (M0.__default.ReachableVia ($LS $ly) $Heap |source#0| |p#0| |sink#0| |S#0|) (ite (M0.Path.Empty_q |p#0|) (= |source#0| |sink#0|) (let ((|n#0| (M0.Path._h1 |p#0|)))
(let ((|prefix#0| (M0.Path._h0 |p#0|)))
 (and (and (|Set#IsMember| |S#0| ($Box refType |n#0|)) (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0|) M0.Node.children)) ($Box refType |sink#0|))) (M0.__default.ReachableVia $ly $Heap |source#0| |prefix#0| |n#0| |S#0|))))))))
 :qid |SchorrWaitestagesdfy.27:19|
 :skolemid |609|
 :pattern ( (M0.__default.ReachableVia ($LS $ly) $Heap |source#0| |p#0| |sink#0| |S#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (|source#0@@0| T@U) (|p#0@@0| T@U) (|sink#0@@0| T@U) (|S#0@@0| T@U) ) (!  (=> (or (|M0.__default.ReachableVia#canCall| $Heap@@0 |source#0@@0| |p#0@@0| |sink#0@@0| |S#0@@0|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@0) (and ($Is refType |source#0@@0| Tclass.M0.Node) ($IsAlloc refType |source#0@@0| Tclass.M0.Node $Heap@@0))) (and ($Is DatatypeTypeType |p#0@@0| Tclass.M0.Path) ($IsAlloc DatatypeTypeType |p#0@@0| Tclass.M0.Path $Heap@@0))) (and ($Is refType |sink#0@@0| Tclass.M0.Node) ($IsAlloc refType |sink#0@@0| Tclass.M0.Node $Heap@@0))) (and ($Is SetType |S#0@@0| (TSet Tclass.M0.Node)) ($IsAlloc SetType |S#0@@0| (TSet Tclass.M0.Node) $Heap@@0))))) (forall (($olderHeap T@U) ) (!  (=> (and (and ($IsGoodHeap $olderHeap) ($OlderTag $olderHeap)) (and (M0.__default.ReachableVia $ly@@0 $Heap@@0 |source#0@@0| |p#0@@0| |sink#0@@0| |S#0@@0|) (and (and ($IsAlloc refType |source#0@@0| Tclass.M0.Node $olderHeap) ($IsAlloc refType |sink#0@@0| Tclass.M0.Node $olderHeap)) ($IsAlloc SetType |S#0@@0| (TSet Tclass.M0.Node) $olderHeap)))) ($IsAlloc DatatypeTypeType |p#0@@0| Tclass.M0.Path $olderHeap))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |606|
 :pattern ( ($OlderTag $olderHeap))
)))
 :qid |SchorrWaitestagesdfy.27:19|
 :skolemid |607|
 :pattern ( (M0.__default.ReachableVia $ly@@0 $Heap@@0 |source#0@@0| |p#0@@0| |sink#0@@0| |S#0@@0|))
))))
(assert (forall (($ly@@1 T@U) ($h0 T@U) ($h1 T@U) (|source#0@@1| T@U) (|p#0@@1| T@U) (|sink#0@@1| T@U) (|S#0@@1| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|M0.__default.ReachableVia#canCall| $h0 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|) (and (and (and ($Is refType |source#0@@1| Tclass.M0.Node) ($Is DatatypeTypeType |p#0@@1| Tclass.M0.Path)) ($Is refType |sink#0@@1| Tclass.M0.Node)) ($Is SetType |S#0@@1| (TSet Tclass.M0.Node))))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (|Set#IsMember| |S#0@@1| ($Box refType $o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f)))
 :qid |unknown.0:0|
 :skolemid |604|
)) (= (M0.__default.ReachableVia $ly@@1 $h0 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|) (M0.__default.ReachableVia $ly@@1 $h1 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (M0.__default.ReachableVia $ly@@1 $h1 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|))
)))
(assert (forall ((d T@U) ) (! (= (M0.Path.Empty_q d) (= (DatatypeCtorId d) |##M0.Path.Empty|))
 :qid |unknown.0:0|
 :skolemid |691|
 :pattern ( (M0.Path.Empty_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M0.Path.Extend_q d@@0) (= (DatatypeCtorId d@@0) |##M0.Path.Extend|))
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( (M0.Path.Extend_q d@@0))
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
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|source#0@@2| T@U) (|sink#0@@2| T@U) (|S#0@@2| T@U) ) (!  (=> (or (|M0.__default.Reachable#canCall| $Heap@@1 |source#0@@2| |sink#0@@2| |S#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) ($Is refType |source#0@@2| Tclass.M0.Node)) ($Is refType |sink#0@@2| Tclass.M0.Node)) ($Is SetType |S#0@@2| (TSet Tclass.M0.Node))))) (and (forall ((|via#0| T@U) ) (!  (=> ($Is DatatypeTypeType |via#0| Tclass.M0.Path) (|M0.__default.ReachableVia#canCall| $Heap@@1 |source#0@@2| |via#0| |sink#0@@2| |S#0@@2|))
 :qid |SchorrWaitestagesdfy.24:12|
 :skolemid |596|
 :pattern ( (M0.__default.ReachableVia ($LS $LZ) $Heap@@1 |source#0@@2| |via#0| |sink#0@@2| |S#0@@2|))
)) (= (M0.__default.Reachable $Heap@@1 |source#0@@2| |sink#0@@2| |S#0@@2|) (exists ((|via#0@@0| T@U) ) (!  (and ($Is DatatypeTypeType |via#0@@0| Tclass.M0.Path) (M0.__default.ReachableVia ($LS $LZ) $Heap@@1 |source#0@@2| |via#0@@0| |sink#0@@2| |S#0@@2|))
 :qid |SchorrWaitestagesdfy.24:12|
 :skolemid |595|
 :pattern ( (M0.__default.ReachableVia ($LS $LZ) $Heap@@1 |source#0@@2| |via#0@@0| |sink#0@@2| |S#0@@2|))
)))))
 :qid |SchorrWaitestagesdfy.21:19|
 :skolemid |597|
 :pattern ( (M0.__default.Reachable $Heap@@1 |source#0@@2| |sink#0@@2| |S#0@@2|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((d@@1 T@U) ) (!  (=> (M0.Path.Extend_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#M0.Path.Extend| |a#5#0#0| |a#5#1#0|))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |696|
)))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( (M0.Path.Extend_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (M0.Path.Empty_q d@@2) (= d@@2 |#M0.Path.Empty|))
 :qid |unknown.0:0|
 :skolemid |692|
 :pattern ( (M0.Path.Empty_q d@@2))
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
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (|source#0@@3| T@U) (|sink#0@@3| T@U) (|S#0@@3| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (or (|M0.__default.Reachable#canCall| $h0@@0 |source#0@@3| |sink#0@@3| |S#0@@3|) (and (and ($Is refType |source#0@@3| Tclass.M0.Node) ($Is refType |sink#0@@3| Tclass.M0.Node)) ($Is SetType |S#0@@3| (TSet Tclass.M0.Node))))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (|Set#IsMember| |S#0@@3| ($Box refType $o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@2) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |589|
)) (= (M0.__default.Reachable $h0@@0 |source#0@@3| |sink#0@@3| |S#0@@3|) (M0.__default.Reachable $h1@@0 |source#0@@3| |sink#0@@3| |S#0@@3|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |591|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (M0.__default.Reachable $h1@@0 |source#0@@3| |sink#0@@3| |S#0@@3|))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.M0.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) M0.Node.marked)) TBool $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |686|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) M0.Node.marked)))
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
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.M0.Node?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) M0.Node.childrenVisited)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |687|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) M0.Node.childrenVisited)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M0.Node) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.M0.Node)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsBox bx@@2 Tclass.M0.Node))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M0.Path) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass.M0.Path)))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($IsBox bx@@3 Tclass.M0.Path))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M0.Node?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.M0.Node?)))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( ($IsBox bx@@4 Tclass.M0.Node?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.M0.Node)  (and ($Is refType |c#0@@0| Tclass.M0.Node?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( ($Is refType |c#0@@0| Tclass.M0.Node))
 :pattern ( ($Is refType |c#0@@0| Tclass.M0.Node?))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.M0.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) M0.Node.childrenVisited)) Tclass._System.nat $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |688|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) M0.Node.childrenVisited)))
)))
(assert (forall ((s T@U) (x@@6 T@U) ) (! (= (|Seq#Contains| s x@@6) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s))) (= (|Seq#Index| s i) x@@6))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s i))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s x@@6))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.M0.Node?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) M0.Node.children)) (TSeq Tclass.M0.Node?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |683|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) M0.Node.children)))
)))
(assert (forall (($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.M0.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) M0.Node.children)) (TSeq Tclass.M0.Node?) $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |684|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) M0.Node.children)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall (($ly@@2 T@U) ($Heap@@2 T@U) (|source#0@@4| T@U) (|p#0@@2| T@U) (|sink#0@@4| T@U) (|S#0@@4| T@U) ) (! (= (M0.__default.ReachableVia ($LS $ly@@2) $Heap@@2 |source#0@@4| |p#0@@2| |sink#0@@4| |S#0@@4|) (M0.__default.ReachableVia $ly@@2 $Heap@@2 |source#0@@4| |p#0@@2| |sink#0@@4| |S#0@@4|))
 :qid |SchorrWaitestagesdfy.27:19|
 :skolemid |602|
 :pattern ( (M0.__default.ReachableVia ($LS $ly@@2) $Heap@@2 |source#0@@4| |p#0@@2| |sink#0@@4| |S#0@@4|))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.M0.Path) (or (M0.Path.Empty_q d@@3) (M0.Path.Extend_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( (M0.Path.Extend_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.M0.Path))
 :pattern ( (M0.Path.Empty_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.M0.Path))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
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
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#M0.Path.Extend| |a#4#0#0| |a#4#1#0|)) |##M0.Path.Extend|)
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |694|
 :pattern ( (|#M0.Path.Extend| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (M0.Path._h0 (|#M0.Path.Extend| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |703|
 :pattern ( (|#M0.Path.Extend| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (M0.Path._h1 (|#M0.Path.Extend| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |705|
 :pattern ( (|#M0.Path.Extend| |a#10#0#0| |a#10#1#0|))
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
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert (forall (($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.M0.Node?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) M0.Node.marked)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |685|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) M0.Node.marked)))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#M0.Path.Extend| |a#9#0#0| |a#9#1#0|)))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |704|
 :pattern ( (|#M0.Path.Extend| |a#9#0#0| |a#9#1#0|))
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
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.M0.Node) Tagclass.M0.Node))
(assert (= (TagFamily Tclass.M0.Node) tytagFamily$Node))
(assert (= (Tag Tclass.M0.Path) Tagclass.M0.Path))
(assert (= (TagFamily Tclass.M0.Path) tytagFamily$Path))
(assert (= (Tag Tclass.M0.Node?) Tagclass.M0.Node?))
(assert (= (TagFamily Tclass.M0.Node?) tytagFamily$Node))
(assert (= |#M0.Path.Empty| (Lit DatatypeTypeType |#M0.Path.Empty|)))
(assert (forall ((d@@4 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (M0.Path.Extend_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.M0.Path $h@@10))) ($IsAlloc DatatypeTypeType (M0.Path._h0 d@@4) Tclass.M0.Path $h@@10))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( ($IsAlloc DatatypeTypeType (M0.Path._h0 d@@4) Tclass.M0.Path $h@@10))
)))
(assert (forall ((d@@5 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (M0.Path.Extend_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.M0.Path $h@@11))) ($IsAlloc refType (M0.Path._h1 d@@5) Tclass.M0.Node $h@@11))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( ($IsAlloc refType (M0.Path._h1 d@@5) Tclass.M0.Node $h@@11))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#M0.Path.Extend| (Lit DatatypeTypeType |a#7#0#0|) (Lit refType |a#7#1#0|)) (Lit DatatypeTypeType (|#M0.Path.Extend| |a#7#0#0| |a#7#1#0|)))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |702|
 :pattern ( (|#M0.Path.Extend| (Lit DatatypeTypeType |a#7#0#0|) (Lit refType |a#7#1#0|)))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@9 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f@@1))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@9))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2946|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f@@1))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@5))
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
(declare-fun |S#0@@5| () T@U)
(declare-fun |n#8@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |root#0| () T@U)
(declare-fun |n#6@0| () T@U)
(declare-fun |n#4@0| () T@U)
(declare-fun |ch#3@0| () T@U)
(declare-fun |n#2@0| () T@U)
(declare-fun |n#0@0| () T@U)
(declare-fun |ch#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$M0.__default.SchorrWaite)
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
 (=> (= (ControlFlow 0 0) 42) (let ((anon24_correct true))
(let ((anon32_Else_correct  (=> (and (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#8@0|)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#8@0|) M0.Node.childrenVisited))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#8@0|) M0.Node.childrenVisited)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#8@0|) M0.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#8@0|) M0.Node.children))))) (= (ControlFlow 0 9) 1)) anon24_correct)))
(let ((anon32_Then_correct  (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#8@0|)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= |n#8@0| null)) (not true))) (=> (or (not (= |n#8@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= |n#8@0| null)) (not true))) (=> (or (not (= |n#8@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($IsAlloc refType |n#8@0| Tclass.M0.Node $Heap@@3)) (=> ($IsAlloc refType |n#8@0| Tclass.M0.Node $Heap@@3) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#8@0|) M0.Node.childrenVisited))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#8@0|) M0.Node.childrenVisited)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |n#8@0| null)) (not true))) (=> (or (not (= |n#8@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |n#8@0| null)) (not true))) (=> (or (not (= |n#8@0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType |n#8@0| Tclass.M0.Node $Heap@@3)) (=> ($IsAlloc refType |n#8@0| Tclass.M0.Node $Heap@@3) (=> (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#8@0|) M0.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#8@0|) M0.Node.children))) (= (ControlFlow 0 2) 1)) anon24_correct)))))))))))))))))
(let ((anon21_correct  (=> (forall ((|n#7| T@U) ) (!  (=> ($Is refType |n#7| Tclass.M0.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#7|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#7|) M0.Node.marked)))) (M0.__default.Reachable $Heap@@3 |root#0| |n#7| |S#0@@5|)))
 :qid |SchorrWaitestagesdfy.49:20|
 :skolemid |623|
 :pattern ( (M0.__default.Reachable $Heap@@3 |root#0| |n#7| |S#0@@5|))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#7|) M0.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#7|)))
)) (=> (and ($Is refType |n#8@0| Tclass.M0.Node) ($IsAlloc refType |n#8@0| Tclass.M0.Node $Heap@0)) (and (=> (= (ControlFlow 0 10) 2) anon32_Then_correct) (=> (= (ControlFlow 0 10) 9) anon32_Else_correct))))))
(let ((anon31_Else_correct  (=> (and (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#6@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#6@0|) M0.Node.marked)))) (M0.__default.Reachable $Heap@@3 |root#0| |n#6@0| |S#0@@5|)) (= (ControlFlow 0 16) 10)) anon21_correct)))
(let ((anon31_Then_correct  (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#6@0|)) (and (=> (= (ControlFlow 0 11) (- 0 15)) (or (not (= |n#6@0| null)) (not true))) (=> (or (not (= |n#6@0| null)) (not true)) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#6@0|) M0.Node.marked))) (and (=> (= (ControlFlow 0 11) (- 0 14)) ($IsAlloc refType |root#0| Tclass.M0.Node $Heap@@3)) (=> ($IsAlloc refType |root#0| Tclass.M0.Node $Heap@@3) (and (=> (= (ControlFlow 0 11) (- 0 13)) ($IsAlloc refType |n#6@0| Tclass.M0.Node $Heap@@3)) (=> ($IsAlloc refType |n#6@0| Tclass.M0.Node $Heap@@3) (and (=> (= (ControlFlow 0 11) (- 0 12)) ($IsAlloc SetType |S#0@@5| (TSet Tclass.M0.Node) $Heap@@3)) (=> ($IsAlloc SetType |S#0@@5| (TSet Tclass.M0.Node) $Heap@@3) (=> (|M0.__default.Reachable#canCall| $Heap@@3 |root#0| |n#6@0| |S#0@@5|) (=> (and (M0.__default.Reachable $Heap@@3 |root#0| |n#6@0| |S#0@@5|) (= (ControlFlow 0 11) 10)) anon21_correct))))))))))))))
(let ((anon18_correct  (=> (forall ((|n#5| T@U) ) (!  (=> ($Is refType |n#5| Tclass.M0.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#5|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#5|) M0.Node.marked)))) (forall ((|ch#5| T@U) ) (!  (=> ($Is refType |ch#5| Tclass.M0.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#5|) M0.Node.children)) ($Box refType |ch#5|)) (or (not (= |ch#5| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#5|) M0.Node.marked)))))
 :qid |SchorrWaitestagesdfy.47:24|
 :skolemid |621|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#5|) M0.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#5|) M0.Node.children)) ($Box refType |ch#5|)))
))))
 :qid |SchorrWaitestagesdfy.46:20|
 :skolemid |622|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#5|) M0.Node.children)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#5|) M0.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#5|)))
)) (=> (and ($Is refType |n#6@0| Tclass.M0.Node) ($IsAlloc refType |n#6@0| Tclass.M0.Node $Heap@0)) (and (=> (= (ControlFlow 0 17) 11) anon31_Then_correct) (=> (= (ControlFlow 0 17) 16) anon31_Else_correct))))))
(let ((anon16_correct  (=> (and (forall ((|ch#4| T@U) ) (!  (=> ($Is refType |ch#4| Tclass.M0.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#4@0|) M0.Node.children)) ($Box refType |ch#4|)) (or (not (= |ch#4| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#4|) M0.Node.marked)))))
 :qid |SchorrWaitestagesdfy.47:24|
 :skolemid |619|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#4|) M0.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#4@0|) M0.Node.children)) ($Box refType |ch#4|)))
)) (= (ControlFlow 0 19) 17)) anon18_correct)))
(let ((anon30_Else_correct  (=> (and (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#4@0|) M0.Node.children)) ($Box refType |ch#3@0|)) (or (not (= |ch#3@0| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#3@0|) M0.Node.marked)))) (= (ControlFlow 0 23) 19)) anon16_correct)))
(let ((anon30_Then_correct  (and (=> (= (ControlFlow 0 20) (- 0 22)) (or (not (= |n#4@0| null)) (not true))) (=> (or (not (= |n#4@0| null)) (not true)) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#4@0|) M0.Node.children)) ($Box refType |ch#3@0|)) (or (not (= |ch#3@0| null)) (not true))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (or (not (= |ch#3@0| null)) (not true))) (=> (or (not (= |ch#3@0| null)) (not true)) (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#3@0|) M0.Node.marked))) (= (ControlFlow 0 20) 19)) anon16_correct))))))))
(let ((anon29_Then_correct  (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#4@0|)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (or (not (= |n#4@0| null)) (not true))) (=> (or (not (= |n#4@0| null)) (not true)) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#4@0|) M0.Node.marked))) (=> (and ($Is refType |ch#3@0| Tclass.M0.Node?) ($IsAlloc refType |ch#3@0| Tclass.M0.Node? $Heap@0)) (and (=> (= (ControlFlow 0 24) 20) anon30_Then_correct) (=> (= (ControlFlow 0 24) 23) anon30_Else_correct)))))))))
(let ((anon29_Else_correct  (=> (and (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#4@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#4@0|) M0.Node.marked)))) (forall ((|ch#4@@0| T@U) ) (!  (=> ($Is refType |ch#4@@0| Tclass.M0.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#4@0|) M0.Node.children)) ($Box refType |ch#4@@0|)) (or (not (= |ch#4@@0| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#4@@0|) M0.Node.marked)))))
 :qid |SchorrWaitestagesdfy.47:24|
 :skolemid |620|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#4@@0|) M0.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#4@0|) M0.Node.children)) ($Box refType |ch#4@@0|)))
))) (= (ControlFlow 0 18) 17)) anon18_correct)))
(let ((anon12_correct  (=> (forall ((|n#3| T@U) ) (!  (=> ($Is refType |n#3| Tclass.M0.Node) (and (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#3|)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3|) M0.Node.marked))))) (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#3|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3|) M0.Node.childrenVisited))) (LitInt 0)))))
 :qid |SchorrWaitestagesdfy.42:21|
 :skolemid |617|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3|) M0.Node.childrenVisited)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3|) M0.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#3|)))
)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@10) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@10)) (|Set#IsMember| |S#0@@5| ($Box refType $o@@10))))
 :qid |SchorrWaitestagesdfy.36:10|
 :skolemid |618|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10))
)) ($HeapSucc $Heap@@3 $Heap@0))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (or (not (= |root#0| null)) (not true))) (=> (or (not (= |root#0| null)) (not true)) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) M0.Node.marked))) (=> (and ($Is refType |n#4@0| Tclass.M0.Node) ($IsAlloc refType |n#4@0| Tclass.M0.Node $Heap@0)) (and (=> (= (ControlFlow 0 26) 24) anon29_Then_correct) (=> (= (ControlFlow 0 26) 18) anon29_Else_correct))))))))))
(let ((anon28_Else_correct  (=> (and (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#2@0|)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2@0|) M0.Node.marked)))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2@0|) M0.Node.childrenVisited))) (LitInt 0)))) (= (ControlFlow 0 31) 26)) anon12_correct)))
(let ((anon28_Then_correct  (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#2@0|)) (and (=> (= (ControlFlow 0 28) (- 0 30)) (or (not (= |n#2@0| null)) (not true))) (=> (or (not (= |n#2@0| null)) (not true)) (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2@0|) M0.Node.marked)))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (or (not (= |n#2@0| null)) (not true))) (=> (or (not (= |n#2@0| null)) (not true)) (=> (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2@0|) M0.Node.childrenVisited))) (LitInt 0)) (= (ControlFlow 0 28) 26)) anon12_correct)))))))))
(let ((anon9_correct  (=> (forall ((|n#1@@0| T@U) ) (!  (=> ($Is refType |n#1@@0| Tclass.M0.Node) (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#1@@0|)) (forall ((|ch#2| T@U) ) (!  (=> ($Is refType |ch#2| Tclass.M0.Node?) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) M0.Node.children)) ($Box refType |ch#2|)) (or (= |ch#2| null) (|Set#IsMember| |S#0@@5| ($Box refType |ch#2|)))))
 :qid |SchorrWaitestagesdfy.40:24|
 :skolemid |615|
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |ch#2|)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) M0.Node.children)) ($Box refType |ch#2|)))
))))
 :qid |SchorrWaitestagesdfy.39:21|
 :skolemid |616|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) M0.Node.children)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#1@@0|)))
)) (=> (and ($Is refType |n#2@0| Tclass.M0.Node) ($IsAlloc refType |n#2@0| Tclass.M0.Node $Heap@@3)) (and (=> (= (ControlFlow 0 32) 28) anon28_Then_correct) (=> (= (ControlFlow 0 32) 31) anon28_Else_correct))))))
(let ((anon7_correct  (=> (and (forall ((|ch#1| T@U) ) (!  (=> ($Is refType |ch#1| Tclass.M0.Node?) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#0@0|) M0.Node.children)) ($Box refType |ch#1|)) (or (= |ch#1| null) (|Set#IsMember| |S#0@@5| ($Box refType |ch#1|)))))
 :qid |SchorrWaitestagesdfy.40:24|
 :skolemid |613|
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |ch#1|)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#0@0|) M0.Node.children)) ($Box refType |ch#1|)))
)) (= (ControlFlow 0 34) 32)) anon9_correct)))
(let ((anon27_Else_correct  (=> (or (not (= |ch#0@0| null)) (not true)) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |ch#0@0|)) (= (ControlFlow 0 37) 34)) anon7_correct))))
(let ((anon27_Then_correct  (=> (and (= |ch#0@0| null) (= (ControlFlow 0 36) 34)) anon7_correct)))
(let ((anon26_Then_correct  (and (=> (= (ControlFlow 0 38) (- 0 39)) (or (not (= |n#0@0| null)) (not true))) (=> (or (not (= |n#0@0| null)) (not true)) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#0@0|) M0.Node.children)) ($Box refType |ch#0@0|)) (and (=> (= (ControlFlow 0 38) 36) anon27_Then_correct) (=> (= (ControlFlow 0 38) 37) anon27_Else_correct)))))))
(let ((anon26_Else_correct  (=> (and (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#0@0|) M0.Node.children)) ($Box refType |ch#0@0|)) (or (= |ch#0@0| null) (|Set#IsMember| |S#0@@5| ($Box refType |ch#0@0|)))) (= (ControlFlow 0 35) 34)) anon7_correct)))
(let ((anon25_Then_correct  (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#0@0|)) (=> (and ($Is refType |ch#0@0| Tclass.M0.Node?) ($IsAlloc refType |ch#0@0| Tclass.M0.Node? $Heap@@3)) (and (=> (= (ControlFlow 0 40) 38) anon26_Then_correct) (=> (= (ControlFlow 0 40) 35) anon26_Else_correct))))))
(let ((anon25_Else_correct  (=> (and (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#0@0|)) (forall ((|ch#1@@0| T@U) ) (!  (=> ($Is refType |ch#1@@0| Tclass.M0.Node?) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#0@0|) M0.Node.children)) ($Box refType |ch#1@@0|)) (or (= |ch#1@@0| null) (|Set#IsMember| |S#0@@5| ($Box refType |ch#1@@0|)))))
 :qid |SchorrWaitestagesdfy.40:24|
 :skolemid |614|
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |ch#1@@0|)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#0@0|) M0.Node.children)) ($Box refType |ch#1@@0|)))
))) (= (ControlFlow 0 33) 32)) anon9_correct)))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc |S#0@@5|)) (|Set#IsMember| |S#0@@5| ($Box refType |root#0|))) (and ($Is refType |n#0@0| Tclass.M0.Node) ($IsAlloc refType |n#0@0| Tclass.M0.Node $Heap@@3))) (and (=> (= (ControlFlow 0 41) 40) anon25_Then_correct) (=> (= (ControlFlow 0 41) 33) anon25_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (and ($Is refType |root#0| Tclass.M0.Node) ($IsAlloc refType |root#0| Tclass.M0.Node $Heap@@3))) (and (and ($Is SetType |S#0@@5| (TSet Tclass.M0.Node)) ($IsAlloc SetType |S#0@@5| (TSet Tclass.M0.Node) $Heap@@3)) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 42) 41)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
