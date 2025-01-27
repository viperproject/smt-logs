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
(declare-fun Tagclass.M1.Node () T@U)
(declare-fun Tagclass.M1.Node? () T@U)
(declare-fun Tagclass.M1.Path () T@U)
(declare-fun class.M1.Node? () T@U)
(declare-fun |##M1.Path.Empty| () T@U)
(declare-fun |##M1.Path.Extend| () T@U)
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
(declare-fun |#M1.Path.Extend| (T@U T@U) T@U)
(declare-fun Tclass.M1.Path () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.M1.Node () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#M1.Path.Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun Tclass.M1.Node? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun M1.Node.children () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun M1.Node.marked () T@U)
(declare-fun M1.Node.childrenVisited () T@U)
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
(declare-fun M1.__default.ReachableVia (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |M1.__default.ReachableVia#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun M1.Path.Empty_q (T@U) Bool)
(declare-fun M1.Path._h1 (T@U) T@U)
(declare-fun M1.Path._h0 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $OlderTag (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun M1.Path.Extend_q (T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun M1.__default.Reachable (T@U T@U T@U T@U) Bool)
(declare-fun |M1.__default.Reachable#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TagBool TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass.M1.Node Tagclass.M1.Node? Tagclass.M1.Path class.M1.Node? |##M1.Path.Empty| |##M1.Path.Extend| tytagFamily$nat tytagFamily$Node tytagFamily$Path field$children field$marked field$childrenVisited)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert  (and (= (Ctor DatatypeTypeType) 3) (= (Ctor refType) 4)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M1.Path.Extend| |a#6#0#0| |a#6#1#0|) Tclass.M1.Path)  (and ($Is DatatypeTypeType |a#6#0#0| Tclass.M1.Path) ($Is refType |a#6#1#0| Tclass.M1.Node)))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |1428|
 :pattern ( ($Is DatatypeTypeType (|#M1.Path.Extend| |a#6#0#0| |a#6#1#0|) Tclass.M1.Path))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1056|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |945|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#M1.Path.Extend| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass.M1.Path $h@@0)  (and ($IsAlloc DatatypeTypeType |a#6#0#0@@0| Tclass.M1.Path $h@@0) ($IsAlloc refType |a#6#1#0@@0| Tclass.M1.Node $h@@0))))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |1429|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Path.Extend| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass.M1.Path $h@@0))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |943|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#M1.Path.Empty|) |##M1.Path.Empty|))
(assert (forall ((s@@0 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@0 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |965|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M1.Node?)  (or (= $o null) (= (dtype $o) Tclass.M1.Node?)))
 :qid |unknown.0:0|
 :skolemid |1411|
 :pattern ( ($Is refType $o Tclass.M1.Node?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@1 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (< n@@0 (|Seq#Length| s@@1))) (and (=> (= i n@@0) (= (|Seq#Index| (|Seq#Update| s@@1 i v@@1) n@@0) v@@1)) (=> (or (not (= i n@@0)) (not true)) (= (|Seq#Index| (|Seq#Update| s@@1 i v@@1) n@@0) (|Seq#Index| s@@1 n@@0)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |940|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@1 i v@@1) n@@0))
)))
(assert (forall ((s@@2 T@U) (t T@U) (n@@1 Int) ) (!  (=> (= n@@1 (|Seq#Length| s@@2)) (and (= (|Seq#Take| (|Seq#Append| s@@2 t) n@@1) s@@2) (= (|Seq#Drop| (|Seq#Append| s@@2 t) n@@1) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |960|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@2 t) n@@1))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@2 t) n@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.M1.Node $h@@1) ($IsAlloc refType |c#0| Tclass.M1.Node? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1420|
 :pattern ( ($IsAlloc refType |c#0| Tclass.M1.Node $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass.M1.Node? $h@@1))
)))
(assert ($Is DatatypeTypeType |#M1.Path.Empty| Tclass.M1.Path))
(assert (= (FDim M1.Node.children) 0))
(assert (= (FieldOfDecl class.M1.Node? field$children) M1.Node.children))
(assert  (not ($IsGhostField M1.Node.children)))
(assert (= (FDim M1.Node.marked) 0))
(assert (= (FieldOfDecl class.M1.Node? field$marked) M1.Node.marked))
(assert  (not ($IsGhostField M1.Node.marked)))
(assert (= (FDim M1.Node.childrenVisited) 0))
(assert (= (FieldOfDecl class.M1.Node? field$childrenVisited) M1.Node.childrenVisited))
(assert  (not ($IsGhostField M1.Node.childrenVisited)))
(assert (forall (($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#M1.Path.Empty| Tclass.M1.Path $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1423|
 :pattern ( ($IsAlloc DatatypeTypeType |#M1.Path.Empty| Tclass.M1.Path $h@@2))
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
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.M1.Node? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1412|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.M1.Node? $h@@3))
)))
(assert (forall ((s@@3 T@U) (i@@0 Int) (v@@2 T@U) (n@@2 Int) ) (!  (=> (and (and (<= 0 n@@2) (<= n@@2 i@@0)) (< i@@0 (|Seq#Length| s@@3))) (= (|Seq#Drop| (|Seq#Update| s@@3 i@@0 v@@2) n@@2) (|Seq#Update| (|Seq#Drop| s@@3 n@@2) (- i@@0 n@@2) v@@2)))
 :qid |DafnyPreludebpl.1278:15|
 :skolemid |963|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@3 i@@0 v@@2) n@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |829|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |830|
 :pattern ( ($HeapSucc h k))
)))
(assert  (and (= (Ctor SetType) 8) (= (Ctor SeqType) 9)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|source#0| T@U) (|p#0| T@U) (|sink#0| T@U) (|S#0| T@U) ) (!  (=> (or (|M1.__default.ReachableVia#canCall| $Heap |source#0| |p#0| |sink#0| |S#0|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap) ($Is refType |source#0| Tclass.M1.Node)) ($Is DatatypeTypeType |p#0| Tclass.M1.Path)) ($Is refType |sink#0| Tclass.M1.Node)) ($Is SetType |S#0| (TSet Tclass.M1.Node))))) (and (=> (not (M1.Path.Empty_q |p#0|)) (let ((|n#1| (M1.Path._h1 |p#0|)))
(let ((|prefix#1| (M1.Path._h0 |p#0|)))
 (=> (|Set#IsMember| |S#0| ($Box refType |n#1|)) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#1|) M1.Node.children)) ($Box refType |sink#0|)) (|M1.__default.ReachableVia#canCall| $Heap |source#0| |prefix#1| |n#1| |S#0|)))))) (= (M1.__default.ReachableVia ($LS $ly) $Heap |source#0| |p#0| |sink#0| |S#0|) (ite (M1.Path.Empty_q |p#0|) (= |source#0| |sink#0|) (let ((|n#0| (M1.Path._h1 |p#0|)))
(let ((|prefix#0| (M1.Path._h0 |p#0|)))
 (and (and (|Set#IsMember| |S#0| ($Box refType |n#0|)) (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0|) M1.Node.children)) ($Box refType |sink#0|))) (M1.__default.ReachableVia $ly $Heap |source#0| |prefix#0| |n#0| |S#0|))))))))
 :qid |SchorrWaitestagesdfy.27:19|
 :skolemid |1408|
 :pattern ( (M1.__default.ReachableVia ($LS $ly) $Heap |source#0| |p#0| |sink#0| |S#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((s@@4 T@U) (n@@3 Int) ) (!  (=> (= n@@3 0) (= (|Seq#Drop| s@@4 n@@3) s@@4))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |966|
 :pattern ( (|Seq#Drop| s@@4 n@@3))
)))
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |728|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |726|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((s@@5 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@5 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@5 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |969|
 :pattern ( ($Is SeqType (|Seq#Build| s@@5 bx) (TSeq t@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (|source#0@@0| T@U) (|p#0@@0| T@U) (|sink#0@@0| T@U) (|S#0@@0| T@U) ) (!  (=> (or (|M1.__default.ReachableVia#canCall| $Heap@@0 |source#0@@0| |p#0@@0| |sink#0@@0| |S#0@@0|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@0) (and ($Is refType |source#0@@0| Tclass.M1.Node) ($IsAlloc refType |source#0@@0| Tclass.M1.Node $Heap@@0))) (and ($Is DatatypeTypeType |p#0@@0| Tclass.M1.Path) ($IsAlloc DatatypeTypeType |p#0@@0| Tclass.M1.Path $Heap@@0))) (and ($Is refType |sink#0@@0| Tclass.M1.Node) ($IsAlloc refType |sink#0@@0| Tclass.M1.Node $Heap@@0))) (and ($Is SetType |S#0@@0| (TSet Tclass.M1.Node)) ($IsAlloc SetType |S#0@@0| (TSet Tclass.M1.Node) $Heap@@0))))) (forall (($olderHeap T@U) ) (!  (=> (and (and ($IsGoodHeap $olderHeap) ($OlderTag $olderHeap)) (and (M1.__default.ReachableVia $ly@@0 $Heap@@0 |source#0@@0| |p#0@@0| |sink#0@@0| |S#0@@0|) (and (and ($IsAlloc refType |source#0@@0| Tclass.M1.Node $olderHeap) ($IsAlloc refType |sink#0@@0| Tclass.M1.Node $olderHeap)) ($IsAlloc SetType |S#0@@0| (TSet Tclass.M1.Node) $olderHeap)))) ($IsAlloc DatatypeTypeType |p#0@@0| Tclass.M1.Path $olderHeap))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1405|
 :pattern ( ($OlderTag $olderHeap))
)))
 :qid |SchorrWaitestagesdfy.27:19|
 :skolemid |1406|
 :pattern ( (M1.__default.ReachableVia $ly@@0 $Heap@@0 |source#0@@0| |p#0@@0| |sink#0@@0| |S#0@@0|))
))))
(assert (forall (($ly@@1 T@U) ($h0 T@U) ($h1 T@U) (|source#0@@1| T@U) (|p#0@@1| T@U) (|sink#0@@1| T@U) (|S#0@@1| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|M1.__default.ReachableVia#canCall| $h0 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|) (and (and (and ($Is refType |source#0@@1| Tclass.M1.Node) ($Is DatatypeTypeType |p#0@@1| Tclass.M1.Path)) ($Is refType |sink#0@@1| Tclass.M1.Node)) ($Is SetType |S#0@@1| (TSet Tclass.M1.Node))))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (|Set#IsMember| |S#0@@1| ($Box refType $o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f)))
 :qid |unknown.0:0|
 :skolemid |1403|
)) (= (M1.__default.ReachableVia $ly@@1 $h0 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|) (M1.__default.ReachableVia $ly@@1 $h1 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |1404|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (M1.__default.ReachableVia $ly@@1 $h1 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|))
)))
(assert (forall ((s@@6 T@U) (n@@4 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@4)) (< j (|Seq#Length| s@@6))) (= (|Seq#Index| (|Seq#Take| s@@6 n@@4) j) (|Seq#Index| s@@6 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |956|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@6 n@@4) j))
 :pattern ( (|Seq#Index| s@@6 j) (|Seq#Take| s@@6 n@@4))
)))
(assert (forall ((s@@7 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@7))) (= (|Seq#Length| (|Seq#Drop| s@@7 n@@5)) (- (|Seq#Length| s@@7) n@@5)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |957|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@7 n@@5)))
)))
(assert (forall ((d T@U) ) (! (= (M1.Path.Empty_q d) (= (DatatypeCtorId d) |##M1.Path.Empty|))
 :qid |unknown.0:0|
 :skolemid |1421|
 :pattern ( (M1.Path.Empty_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M1.Path.Extend_q d@@0) (= (DatatypeCtorId d@@0) |##M1.Path.Extend|))
 :qid |unknown.0:0|
 :skolemid |1425|
 :pattern ( (M1.Path.Extend_q d@@0))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |950|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |951|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |737|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|source#0@@2| T@U) (|sink#0@@2| T@U) (|S#0@@2| T@U) ) (!  (=> (or (|M1.__default.Reachable#canCall| $Heap@@1 |source#0@@2| |sink#0@@2| |S#0@@2|) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) ($Is refType |source#0@@2| Tclass.M1.Node)) ($Is refType |sink#0@@2| Tclass.M1.Node)) ($Is SetType |S#0@@2| (TSet Tclass.M1.Node))))) (and (forall ((|via#0| T@U) ) (!  (=> ($Is DatatypeTypeType |via#0| Tclass.M1.Path) (|M1.__default.ReachableVia#canCall| $Heap@@1 |source#0@@2| |via#0| |sink#0@@2| |S#0@@2|))
 :qid |SchorrWaitestagesdfy.24:12|
 :skolemid |1395|
 :pattern ( (M1.__default.ReachableVia ($LS $LZ) $Heap@@1 |source#0@@2| |via#0| |sink#0@@2| |S#0@@2|))
)) (= (M1.__default.Reachable $Heap@@1 |source#0@@2| |sink#0@@2| |S#0@@2|) (exists ((|via#0@@0| T@U) ) (!  (and ($Is DatatypeTypeType |via#0@@0| Tclass.M1.Path) (M1.__default.ReachableVia ($LS $LZ) $Heap@@1 |source#0@@2| |via#0@@0| |sink#0@@2| |S#0@@2|))
 :qid |SchorrWaitestagesdfy.24:12|
 :skolemid |1394|
 :pattern ( (M1.__default.ReachableVia ($LS $LZ) $Heap@@1 |source#0@@2| |via#0@@0| |sink#0@@2| |S#0@@2|))
)))))
 :qid |SchorrWaitestagesdfy.21:19|
 :skolemid |1396|
 :pattern ( (M1.__default.Reachable $Heap@@1 |source#0@@2| |sink#0@@2| |S#0@@2|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((s@@8 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@8))) (< (|Seq#Rank| (|Seq#Take| s@@8 i@@1)) (|Seq#Rank| s@@8)))
 :qid |DafnyPreludebpl.1359:15|
 :skolemid |980|
 :pattern ( (|Seq#Rank| (|Seq#Take| s@@8 i@@1)))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (M1.Path.Extend_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#M1.Path.Extend| |a#5#0#0| |a#5#1#0|))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |1426|
)))
 :qid |unknown.0:0|
 :skolemid |1427|
 :pattern ( (M1.Path.Extend_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (M1.Path.Empty_q d@@2) (= d@@2 |#M1.Path.Empty|))
 :qid |unknown.0:0|
 :skolemid |1422|
 :pattern ( (M1.Path.Empty_q d@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@3 (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |757|
 :pattern ( (|Set#IsMember| v@@3 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |758|
 :pattern ( ($Is SetType v@@3 (TSet t0@@0)))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (|source#0@@3| T@U) (|sink#0@@3| T@U) (|S#0@@3| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (or (|M1.__default.Reachable#canCall| $h0@@0 |source#0@@3| |sink#0@@3| |S#0@@3|) (and (and ($Is refType |source#0@@3| Tclass.M1.Node) ($Is refType |sink#0@@3| Tclass.M1.Node)) ($Is SetType |S#0@@3| (TSet Tclass.M1.Node))))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (|Set#IsMember| |S#0@@3| ($Box refType $o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@2) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1389|
)) (= (M1.__default.Reachable $h0@@0 |source#0@@3| |sink#0@@3| |S#0@@3|) (M1.__default.Reachable $h1@@0 |source#0@@3| |sink#0@@3| |S#0@@3|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1390|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (M1.__default.Reachable $h1@@0 |source#0@@3| |sink#0@@3| |S#0@@3|))
)))
(assert (forall ((s@@9 T@U) (i@@2 Int) ) (!  (=> (and (< 0 i@@2) (<= i@@2 (|Seq#Length| s@@9))) (< (|Seq#Rank| (|Seq#Drop| s@@9 i@@2)) (|Seq#Rank| s@@9)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |979|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@9 i@@2)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1055|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@10 T@U) (v@@4 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@10 v@@4)) (+ 1 (|Seq#Length| s@@10)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |935|
 :pattern ( (|Seq#Build| s@@10 v@@4))
)))
(assert (forall (($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.M1.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) M1.Node.marked)) TBool $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1416|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) M1.Node.marked)))
)))
(assert (forall ((v@@5 T@U) (t@@1 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@5) t@@1 h@@0) ($IsAlloc T@@1 v@@5 t@@1 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |750|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@5) t@@1 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@2 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@2 h@@1) ($IsAllocBox bx@@1 t@@2 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |822|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@2 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@6 T@U) (t@@3 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@6 t@@3 h@@2) ($IsAlloc T@@2 v@@6 t@@3 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |821|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@6 t@@3 h@@2))
)))
(assert (forall ((s@@11 T@U) (n@@6 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@6) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@11) n@@6))) (= (|Seq#Index| (|Seq#Drop| s@@11 n@@6) j@@1) (|Seq#Index| s@@11 (+ j@@1 n@@6))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |958|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@11 n@@6) j@@1))
)))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.M1.Node?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) M1.Node.childrenVisited)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1417|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) M1.Node.childrenVisited)))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |937|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |1054|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.M1.Node) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.M1.Node)))
 :qid |unknown.0:0|
 :skolemid |1300|
 :pattern ( ($IsBox bx@@3 Tclass.M1.Node))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.M1.Node?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.M1.Node?)))
 :qid |unknown.0:0|
 :skolemid |1301|
 :pattern ( ($IsBox bx@@4 Tclass.M1.Node?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.M1.Path) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) Tclass.M1.Path)))
 :qid |unknown.0:0|
 :skolemid |1393|
 :pattern ( ($IsBox bx@@5 Tclass.M1.Path))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.M1.Node)  (and ($Is refType |c#0@@0| Tclass.M1.Node?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1419|
 :pattern ( ($Is refType |c#0@@0| Tclass.M1.Node))
 :pattern ( ($Is refType |c#0@@0| Tclass.M1.Node?))
)))
(assert (forall ((s@@12 T@U) (i@@3 Int) (v@@7 T@U) ) (!  (and (=> (= i@@3 (|Seq#Length| s@@12)) (= (|Seq#Index| (|Seq#Build| s@@12 v@@7) i@@3) v@@7)) (=> (or (not (= i@@3 (|Seq#Length| s@@12))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@12 v@@7) i@@3) (|Seq#Index| s@@12 i@@3))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |936|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@12 v@@7) i@@3))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.M1.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) M1.Node.childrenVisited)) Tclass._System.nat $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1418|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) M1.Node.childrenVisited)))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@7)  (or (|Seq#Contains| s0@@1 x@@7) (|Seq#Contains| s1@@1 x@@7)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |944|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@7))
)))
(assert (forall ((s@@13 T@U) (n@@7 Int) (x@@8 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@13 n@@7) x@@8) (exists ((i@@4 Int) ) (!  (and (and (and (<= 0 i@@4) (< i@@4 n@@7)) (< i@@4 (|Seq#Length| s@@13))) (= (|Seq#Index| s@@13 i@@4) x@@8))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |946|
 :pattern ( (|Seq#Index| s@@13 i@@4))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |947|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@13 n@@7) x@@8))
)))
(assert (forall ((s@@14 T@U) (x@@9 T@U) ) (! (= (|Seq#Contains| s@@14 x@@9) (exists ((i@@5 Int) ) (!  (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length| s@@14))) (= (|Seq#Index| s@@14 i@@5) x@@9))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |941|
 :pattern ( (|Seq#Index| s@@14 i@@5))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |942|
 :pattern ( (|Seq#Contains| s@@14 x@@9))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.M1.Node?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) M1.Node.children)) (TSeq Tclass.M1.Node?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1413|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) M1.Node.children)))
)))
(assert (forall (($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.M1.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) M1.Node.children)) (TSeq Tclass.M1.Node?) $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1414|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) M1.Node.children)))
)))
(assert (forall ((s@@15 T@U) (i@@6 Int) (v@@8 T@U) (n@@8 Int) ) (!  (=> (and (and (<= 0 i@@6) (< i@@6 n@@8)) (<= n@@8 (|Seq#Length| s@@15))) (= (|Seq#Drop| (|Seq#Update| s@@15 i@@6 v@@8) n@@8) (|Seq#Drop| s@@15 n@@8)))
 :qid |DafnyPreludebpl.1283:15|
 :skolemid |964|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@15 i@@6 v@@8) n@@8))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |952|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall (($ly@@2 T@U) ($Heap@@2 T@U) (|source#0@@4| T@U) (|p#0@@2| T@U) (|sink#0@@4| T@U) (|S#0@@4| T@U) ) (! (= (M1.__default.ReachableVia ($LS $ly@@2) $Heap@@2 |source#0@@4| |p#0@@2| |sink#0@@4| |S#0@@4|) (M1.__default.ReachableVia $ly@@2 $Heap@@2 |source#0@@4| |p#0@@2| |sink#0@@4| |S#0@@4|))
 :qid |SchorrWaitestagesdfy.27:19|
 :skolemid |1401|
 :pattern ( (M1.__default.ReachableVia ($LS $ly@@2) $Heap@@2 |source#0@@4| |p#0@@2| |sink#0@@4| |S#0@@4|))
)))
(assert (forall ((s@@16 T@U) (n@@9 Int) ) (!  (=> (and (<= 0 n@@9) (<= n@@9 (|Seq#Length| s@@16))) (= (|Seq#Length| (|Seq#Take| s@@16 n@@9)) n@@9))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |955|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@16 n@@9)))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.M1.Path) (or (M1.Path.Empty_q d@@3) (M1.Path.Extend_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1437|
 :pattern ( (M1.Path.Extend_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.M1.Path))
 :pattern ( (M1.Path.Empty_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.M1.Path))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |828|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |818|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TBool) (and (= ($Box boolType ($Unbox boolType bx@@6)) bx@@6) ($Is boolType ($Unbox boolType bx@@6) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |740|
 :pattern ( ($IsBox bx@@6 TBool))
)))
(assert (forall ((v@@9 T@U) (t@@4 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@9) t@@4) ($Is T@@3 v@@9 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |749|
 :pattern ( ($IsBox ($Box T@@3 v@@9) t@@4))
)))
(assert (forall ((s@@17 T@U) (i@@7 Int) (v@@10 T@U) (n@@10 Int) ) (!  (=> (and (<= n@@10 i@@7) (< i@@7 (|Seq#Length| s@@17))) (= (|Seq#Take| (|Seq#Update| s@@17 i@@7 v@@10) n@@10) (|Seq#Take| s@@17 n@@10)))
 :qid |DafnyPreludebpl.1273:15|
 :skolemid |962|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@17 i@@7 v@@10) n@@10))
)))
(assert (forall ((s@@18 T@U) ) (! (<= 0 (|Seq#Length| s@@18))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |932|
 :pattern ( (|Seq#Length| s@@18))
)))
(assert (forall ((s@@19 T@U) (i@@8 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 i@@8) (< i@@8 j@@2)) (<= j@@2 (|Seq#Length| s@@19))) (< (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@19 i@@8) (|Seq#Drop| s@@19 j@@2))) (|Seq#Rank| s@@19)))
 :qid |DafnyPreludebpl.1362:15|
 :skolemid |981|
 :pattern ( (|Seq#Rank| (|Seq#Append| (|Seq#Take| s@@19 i@@8) (|Seq#Drop| s@@19 j@@2))))
)))
(assert (forall ((v@@11 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@11 (TSet t0@@1) h@@3) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@11 bx@@7) ($IsAllocBox bx@@7 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |778|
 :pattern ( (|Set#IsMember| v@@11 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |779|
 :pattern ( ($IsAlloc SetType v@@11 (TSet t0@@1) h@@3))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#M1.Path.Extend| |a#4#0#0| |a#4#1#0|)) |##M1.Path.Extend|)
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |1424|
 :pattern ( (|#M1.Path.Extend| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (M1.Path._h0 (|#M1.Path.Extend| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |1433|
 :pattern ( (|#M1.Path.Extend| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (M1.Path._h1 (|#M1.Path.Extend| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |1435|
 :pattern ( (|#M1.Path.Extend| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((v@@12 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@12 (TSeq t0@@2) h@@4) (forall ((i@@9 Int) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length| v@@12))) ($IsAllocBox (|Seq#Index| v@@12 i@@9) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |784|
 :pattern ( (|Seq#Index| v@@12 i@@9))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |785|
 :pattern ( ($IsAlloc SeqType v@@12 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSet (TSet t@@5)) t@@5)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |712|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSet t@@6)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |713|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSeq (TSeq t@@7)) t@@7)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |718|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSeq t@@8)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |719|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |736|
 :pattern ( ($Box T@@4 x@@10))
)))
(assert (forall (($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.M1.Node?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) M1.Node.marked)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1415|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) M1.Node.marked)))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#M1.Path.Extend| |a#9#0#0| |a#9#1#0|)))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |1434|
 :pattern ( (|#M1.Path.Extend| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((s@@20 T@U) (i@@10 Int) (v@@13 T@U) ) (!  (=> (and (<= 0 i@@10) (< i@@10 (|Seq#Length| s@@20))) (= (|Seq#Length| (|Seq#Update| s@@20 i@@10 v@@13)) (|Seq#Length| s@@20)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |939|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@20 i@@10 v@@13)))
)))
(assert (forall ((s@@21 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@21 val@@1)) s@@21) (= (|Seq#Build_inv1| (|Seq#Build| s@@21 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |934|
 :pattern ( (|Seq#Build| s@@21 val@@1))
)))
(assert (forall ((s@@22 T@U) (n@@11 Int) (x@@11 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@22 n@@11) x@@11) (exists ((i@@11 Int) ) (!  (and (and (and (<= 0 n@@11) (<= n@@11 i@@11)) (< i@@11 (|Seq#Length| s@@22))) (= (|Seq#Index| s@@22 i@@11) x@@11))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |948|
 :pattern ( (|Seq#Index| s@@22 i@@11))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |949|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@22 n@@11) x@@11))
)))
(assert (forall ((bx@@8 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |743|
 :pattern ( ($IsBox bx@@8 (TSet t@@9)))
)))
(assert (forall ((bx@@9 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@9 (TSeq t@@10)) (and (= ($Box SeqType ($Unbox SeqType bx@@9)) bx@@9) ($Is SeqType ($Unbox SeqType bx@@9) (TSeq t@@10))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |746|
 :pattern ( ($IsBox bx@@9 (TSeq t@@10)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@12 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@12))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@12))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |827|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@12)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.M1.Node) Tagclass.M1.Node))
(assert (= (TagFamily Tclass.M1.Node) tytagFamily$Node))
(assert (= (Tag Tclass.M1.Node?) Tagclass.M1.Node?))
(assert (= (TagFamily Tclass.M1.Node?) tytagFamily$Node))
(assert (= (Tag Tclass.M1.Path) Tagclass.M1.Path))
(assert (= (TagFamily Tclass.M1.Path) tytagFamily$Path))
(assert (forall ((s@@23 T@U) (n@@12 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@12) (<= n@@12 k@@2)) (< k@@2 (|Seq#Length| s@@23))) (= (|Seq#Index| (|Seq#Drop| s@@23 n@@12) (- k@@2 n@@12)) (|Seq#Index| s@@23 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |959|
 :pattern ( (|Seq#Index| s@@23 k@@2) (|Seq#Drop| s@@23 n@@12))
)))
(assert (= |#M1.Path.Empty| (Lit DatatypeTypeType |#M1.Path.Empty|)))
(assert (forall ((s@@24 T@U) (m@@1 Int) (n@@13 Int) ) (!  (=> (and (and (<= 0 m@@1) (<= 0 n@@13)) (<= (+ m@@1 n@@13) (|Seq#Length| s@@24))) (= (|Seq#Drop| (|Seq#Drop| s@@24 m@@1) n@@13) (|Seq#Drop| s@@24 (+ m@@1 n@@13))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |968|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@24 m@@1) n@@13))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n@@14 Int) ) (!  (and (=> (< n@@14 (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@14) (|Seq#Index| s0@@2 n@@14))) (=> (<= (|Seq#Length| s0@@2) n@@14) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@14) (|Seq#Index| s1@@2 (- n@@14 (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |938|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n@@14))
)))
(assert (forall ((d@@4 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (M1.Path.Extend_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.M1.Path $h@@10))) ($IsAlloc DatatypeTypeType (M1.Path._h0 d@@4) Tclass.M1.Path $h@@10))
 :qid |unknown.0:0|
 :skolemid |1430|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Path._h0 d@@4) Tclass.M1.Path $h@@10))
)))
(assert (forall ((d@@5 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (M1.Path.Extend_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.M1.Path $h@@11))) ($IsAlloc refType (M1.Path._h1 d@@5) Tclass.M1.Node $h@@11))
 :qid |unknown.0:0|
 :skolemid |1431|
 :pattern ( ($IsAlloc refType (M1.Path._h1 d@@5) Tclass.M1.Node $h@@11))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#M1.Path.Extend| (Lit DatatypeTypeType |a#7#0#0|) (Lit refType |a#7#1#0|)) (Lit DatatypeTypeType (|#M1.Path.Extend| |a#7#0#0| |a#7#1#0|)))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |1432|
 :pattern ( (|#M1.Path.Extend| (Lit DatatypeTypeType |a#7#0#0|) (Lit refType |a#7#1#0|)))
)))
(assert (forall ((x@@13 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@13))) (Lit BoxType ($Box intType (int_2_U x@@13))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |729|
 :pattern ( ($Box intType (int_2_U (LitInt x@@13))))
)))
(assert (forall ((x@@14 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@14)) (Lit BoxType ($Box T@@5 x@@14)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |727|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@14)))
)))
(assert (forall ((s@@25 T@U) ) (!  (=> (= (|Seq#Length| s@@25) 0) (= s@@25 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |933|
 :pattern ( (|Seq#Length| s@@25))
)))
(assert (forall ((s@@26 T@U) (n@@15 Int) ) (!  (=> (= n@@15 0) (= (|Seq#Take| s@@26 n@@15) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |967|
 :pattern ( (|Seq#Take| s@@26 n@@15))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@9 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f@@1))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@9))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2943|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f@@1))
)))
(assert (forall ((h@@6 T@U) (v@@14 T@U) ) (! ($IsAlloc boolType v@@14 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |774|
 :pattern ( ($IsAlloc boolType v@@14 TBool h@@6))
)))
(assert (forall ((s@@27 T@U) (i@@12 Int) (v@@15 T@U) (n@@16 Int) ) (!  (=> (and (and (<= 0 i@@12) (< i@@12 n@@16)) (<= n@@16 (|Seq#Length| s@@27))) (= (|Seq#Take| (|Seq#Update| s@@27 i@@12 v@@15) n@@16) (|Seq#Update| (|Seq#Take| s@@27 n@@16) i@@12 v@@15)))
 :qid |DafnyPreludebpl.1268:15|
 :skolemid |961|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@27 i@@12 v@@15) n@@16))
)))
(assert (forall ((v@@16 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@16 (TSeq t0@@4)) (forall ((i@@13 Int) ) (!  (=> (and (<= 0 i@@13) (< i@@13 (|Seq#Length| v@@16))) ($IsBox (|Seq#Index| v@@16 i@@13) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |764|
 :pattern ( (|Seq#Index| v@@16 i@@13))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |765|
 :pattern ( ($Is SeqType v@@16 (TSeq t0@@4)))
)))
(assert (forall ((s@@28 T@U) (i@@14 Int) ) (!  (=> (and (<= 0 i@@14) (< i@@14 (|Seq#Length| s@@28))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@28 i@@14))) (|Seq#Rank| s@@28)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |978|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@28 i@@14))))
)))
(assert (forall ((v@@17 T@U) ) (! ($Is boolType v@@17 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |753|
 :pattern ( ($Is boolType v@@17 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |n#20@0| () T@U)
(declare-fun |j#2@0| () Int)
(declare-fun |stackNodes#0@1| () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun |S#0@@5| () T@U)
(declare-fun |n#18@0| () T@U)
(declare-fun |ch#6@0| () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |root#0| () T@U)
(declare-fun |k#2@0| () Int)
(declare-fun |k#0@0| () Int)
(declare-fun |n#16@0| () T@U)
(declare-fun |j#0@0| () Int)
(declare-fun |n#14@0| () T@U)
(declare-fun |n#12@0| () T@U)
(declare-fun |n#10@0| () T@U)
(declare-fun |p#0@0| () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap@11 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |n#24@0| () T@U)
(declare-fun |n#22@0| () T@U)
(declare-fun |ch#8@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |stackNodes#0@5| () T@U)
(declare-fun |t#0@2| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#0_0_2@1| () T@U)
(declare-fun |$rhs#0_0_3@1| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |stackNodes#0@4| () T@U)
(declare-fun |$rhs#0_0_4@1| () Int)
(declare-fun $Heap@8 () T@U)
(declare-fun |$rhs#0_0_0@1| () Int)
(declare-fun $Heap@6 () T@U)
(declare-fun |t#0@1| () T@U)
(declare-fun |stackNodes#0@3| () T@U)
(declare-fun |stackNodes#0@2| () T@U)
(declare-fun |$rhs#0_1_1_0@1| () T@U)
(declare-fun |$rhs#0_1_1_2@1| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |$rhs#0_1_1_3@1| () Bool)
(declare-fun $Heap@5 () T@U)
(declare-fun |$rhs#0_1_0_0@1| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#0@0| () Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |stackNodes#0@0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |p#0@@3| () T@U)
(declare-fun |stackNodes#0| () T@U)
(set-info :boogie-vc-id Impl$$M1.__default.SchorrWaite)
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
 (=> (= (ControlFlow 0 0) 173) (let ((anon126_Else_correct true))
(let ((anon153_Else_correct true))
(let ((anon77_correct true))
(let ((anon156_Else_correct  (=> (and (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#20@0|) M1.Node.children)) |j#2@0|)) null) (= (ControlFlow 0 64) 54)) anon77_correct)))
(let ((anon156_Then_correct  (=> (or (not (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#20@0|) M1.Node.children)) |j#2@0|)) null)) (not true)) (and (=> (= (ControlFlow 0 60) (- 0 63)) (or (not (= |n#20@0| null)) (not true))) (and (=> (= (ControlFlow 0 60) (- 0 62)) (and (<= 0 |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#20@0|) M1.Node.children)))))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (or (not (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#20@0|) M1.Node.children)) |j#2@0|)) null)) (not true))) (=> (= (ControlFlow 0 60) 54) anon77_correct)))))))
(let ((anon155_Then_correct  (=> (and (<= (LitInt 0) |j#2@0|) (< |j#2@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#20@0|) M1.Node.childrenVisited))))) (and (=> (= (ControlFlow 0 65) (- 0 67)) (or (not (= |n#20@0| null)) (not true))) (and (=> (= (ControlFlow 0 65) (- 0 66)) (and (<= 0 |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#20@0|) M1.Node.children)))))) (and (=> (= (ControlFlow 0 65) 60) anon156_Then_correct) (=> (= (ControlFlow 0 65) 64) anon156_Else_correct)))))))
(let ((anon155_Else_correct  (=> (and (not (and (<= (LitInt 0) |j#2@0|) (< |j#2@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#20@0|) M1.Node.childrenVisited)))))) (= (ControlFlow 0 59) 54)) anon77_correct)))
(let ((anon154_Else_correct  (=> (< |j#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 70) 65) anon155_Then_correct) (=> (= (ControlFlow 0 70) 59) anon155_Else_correct)))))
(let ((anon154_Then_correct  (=> (<= (LitInt 0) |j#2@0|) (and (=> (= (ControlFlow 0 68) (- 0 69)) (or (not (= |n#20@0| null)) (not true))) (and (=> (= (ControlFlow 0 68) 65) anon155_Then_correct) (=> (= (ControlFlow 0 68) 59) anon155_Else_correct))))))
(let ((anon153_Then_correct  (and (=> (= (ControlFlow 0 71) 68) anon154_Then_correct) (=> (= (ControlFlow 0 71) 70) anon154_Else_correct))))
(let ((anon152_Then_correct  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#20@0|) M1.Node.marked))) (and (=> (= (ControlFlow 0 72) 71) anon153_Then_correct) (=> (= (ControlFlow 0 72) 58) anon153_Else_correct)))))
(let ((anon152_Else_correct  (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#20@0|) M1.Node.marked)))) (= (ControlFlow 0 57) 54)) anon77_correct)))
(let ((anon151_Then_correct  (=> (or (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#20@0|)) (= |n#20@0| |t#0@0|)) (and (=> (= (ControlFlow 0 73) (- 0 74)) (or (not (= |n#20@0| null)) (not true))) (and (=> (= (ControlFlow 0 73) 72) anon152_Then_correct) (=> (= (ControlFlow 0 73) 57) anon152_Else_correct))))))
(let ((anon151_Else_correct  (=> (and (not (or (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#20@0|)) (= |n#20@0| |t#0@0|))) (= (ControlFlow 0 56) 54)) anon77_correct)))
(let ((anon150_Else_correct  (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#20@0|)) (and (=> (= (ControlFlow 0 76) 73) anon151_Then_correct) (=> (= (ControlFlow 0 76) 56) anon151_Else_correct)))))
(let ((anon150_Then_correct  (=> (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#20@0|))) (and (=> (= (ControlFlow 0 75) 73) anon151_Then_correct) (=> (= (ControlFlow 0 75) 56) anon151_Else_correct)))))
(let ((anon149_Then_correct  (=> (and ($Is refType |n#20@0| Tclass.M1.Node) ($IsAlloc refType |n#20@0| Tclass.M1.Node $Heap@1)) (and (=> (= (ControlFlow 0 77) 75) anon150_Then_correct) (=> (= (ControlFlow 0 77) 76) anon150_Else_correct)))))
(let ((anon149_Else_correct  (=> (and (not (and ($Is refType |n#20@0| Tclass.M1.Node) ($IsAlloc refType |n#20@0| Tclass.M1.Node $Heap@1))) (= (ControlFlow 0 55) 54)) anon77_correct)))
(let ((anon65_correct  (=> (forall ((|n#19| T@U) ) (!  (=> ($Is refType |n#19| Tclass.M1.Node) (=> (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#19|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19|) M1.Node.marked)))) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#19|)))) (or (not (= |n#19| |t#0@0|)) (not true))) (forall ((|ch#7| T@U) ) (!  (=> ($Is refType |ch#7| Tclass.M1.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19|) M1.Node.children)) ($Box refType |ch#7|)) (or (not (= |ch#7| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#7|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.156:26|
 :skolemid |1356|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#7|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19|) M1.Node.children)) ($Box refType |ch#7|)))
))))
 :qid |SchorrWaitestagesdfy.155:24|
 :skolemid |1357|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19|) M1.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#19|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#19|)))
)) (and (=> (= (ControlFlow 0 78) 77) anon149_Then_correct) (=> (= (ControlFlow 0 78) 55) anon149_Else_correct)))))
(let ((anon148_Else_correct  (=> (and (not (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#18@0|) M1.Node.children)) ($Box refType |ch#6@0|)) (or (not (= |ch#6@0| null)) (not true)))) (= (ControlFlow 0 84) 78)) anon65_correct)))
(let ((anon148_Then_correct  (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#18@0|) M1.Node.children)) ($Box refType |ch#6@0|)) (or (not (= |ch#6@0| null)) (not true))) (and (=> (= (ControlFlow 0 82) (- 0 83)) (or (not (= |ch#6@0| null)) (not true))) (=> (= (ControlFlow 0 82) 78) anon65_correct)))))
(let ((anon147_Else_correct  (=> (not (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#18@0|) M1.Node.children)) ($Box refType |ch#6@0|))) (and (=> (= (ControlFlow 0 86) 82) anon148_Then_correct) (=> (= (ControlFlow 0 86) 84) anon148_Else_correct)))))
(let ((anon147_Then_correct  (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#18@0|) M1.Node.children)) ($Box refType |ch#6@0|)) (and (=> (= (ControlFlow 0 85) 82) anon148_Then_correct) (=> (= (ControlFlow 0 85) 84) anon148_Else_correct)))))
(let ((anon146_Then_correct  (=> (and ($Is refType |ch#6@0| Tclass.M1.Node?) ($IsAlloc refType |ch#6@0| Tclass.M1.Node? $Heap@1)) (and (=> (= (ControlFlow 0 87) (- 0 88)) (or (not (= |n#18@0| null)) (not true))) (and (=> (= (ControlFlow 0 87) 85) anon147_Then_correct) (=> (= (ControlFlow 0 87) 86) anon147_Else_correct))))))
(let ((anon146_Else_correct  (=> (and (not (and ($Is refType |ch#6@0| Tclass.M1.Node?) ($IsAlloc refType |ch#6@0| Tclass.M1.Node? $Heap@1))) (= (ControlFlow 0 81) 78)) anon65_correct)))
(let ((anon145_Then_correct  (=> (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#18@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#18@0|) M1.Node.marked)))) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#18@0|)))) (or (not (= |n#18@0| |t#0@0|)) (not true))) (and (=> (= (ControlFlow 0 89) 87) anon146_Then_correct) (=> (= (ControlFlow 0 89) 81) anon146_Else_correct)))))
(let ((anon145_Else_correct  (=> (and (not (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#18@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#18@0|) M1.Node.marked)))) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#18@0|)))) (or (not (= |n#18@0| |t#0@0|)) (not true)))) (= (ControlFlow 0 80) 78)) anon65_correct)))
(let ((anon144_Else_correct  (=> (not (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#18@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#18@0|) M1.Node.marked)))) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#18@0|))))) (and (=> (= (ControlFlow 0 91) 89) anon145_Then_correct) (=> (= (ControlFlow 0 91) 80) anon145_Else_correct)))))
(let ((anon144_Then_correct  (=> (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#18@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#18@0|) M1.Node.marked)))) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#18@0|)))) (and (=> (= (ControlFlow 0 90) 89) anon145_Then_correct) (=> (= (ControlFlow 0 90) 80) anon145_Else_correct)))))
(let ((anon143_Else_correct  (=> (not (and (|Set#IsMember| |S#0@@5| ($Box refType |n#18@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#18@0|) M1.Node.marked))))) (and (=> (= (ControlFlow 0 93) 90) anon144_Then_correct) (=> (= (ControlFlow 0 93) 91) anon144_Else_correct)))))
(let ((anon143_Then_correct  (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#18@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#18@0|) M1.Node.marked)))) (and (=> (= (ControlFlow 0 92) 90) anon144_Then_correct) (=> (= (ControlFlow 0 92) 91) anon144_Else_correct)))))
(let ((anon142_Else_correct  (=> (not (|Set#IsMember| |S#0@@5| ($Box refType |n#18@0|))) (and (=> (= (ControlFlow 0 96) 92) anon143_Then_correct) (=> (= (ControlFlow 0 96) 93) anon143_Else_correct)))))
(let ((anon142_Then_correct  (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#18@0|)) (and (=> (= (ControlFlow 0 94) (- 0 95)) (or (not (= |n#18@0| null)) (not true))) (and (=> (= (ControlFlow 0 94) 92) anon143_Then_correct) (=> (= (ControlFlow 0 94) 93) anon143_Else_correct))))))
(let ((anon141_Then_correct  (=> (and ($Is refType |n#18@0| Tclass.M1.Node) ($IsAlloc refType |n#18@0| Tclass.M1.Node $Heap@1)) (and (=> (= (ControlFlow 0 97) 94) anon142_Then_correct) (=> (= (ControlFlow 0 97) 96) anon142_Else_correct)))))
(let ((anon141_Else_correct  (=> (and (not (and ($Is refType |n#18@0| Tclass.M1.Node) ($IsAlloc refType |n#18@0| Tclass.M1.Node $Heap@1))) (= (ControlFlow 0 79) 78)) anon65_correct)))
(let ((anon51_correct  (=> (=> (< 0 (|Seq#Length| |stackNodes#0@1|)) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1)))) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1)))) M1.Node.childrenVisited))))) |t#0@0|)) (and (=> (= (ControlFlow 0 98) (- 0 99)) (or (not (= |root#0| null)) (not true))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) M1.Node.marked))) (and (=> (= (ControlFlow 0 98) 97) anon141_Then_correct) (=> (= (ControlFlow 0 98) 79) anon141_Else_correct)))))))
(let ((anon140_Else_correct  (=> (and (<= (|Seq#Length| |stackNodes#0@1|) 0) (= (ControlFlow 0 101) 98)) anon51_correct)))
(let ((anon140_Then_correct  (=> (< 0 (|Seq#Length| |stackNodes#0@1|)) (=> (and (and (<= 0 (- (|Seq#Length| |stackNodes#0@1|) 1)) (< (- (|Seq#Length| |stackNodes#0@1|) 1) (|Seq#Length| |stackNodes#0@1|))) (and (or (not (= ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1))) null)) (not true)) ($IsAlloc refType ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1))) Tclass.M1.Node $Heap@@3))) (=> (and (and (and (<= 0 (- (|Seq#Length| |stackNodes#0@1|) 1)) (< (- (|Seq#Length| |stackNodes#0@1|) 1) (|Seq#Length| |stackNodes#0@1|))) (or (not (= ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1))) null)) (not true))) (and (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1)))) M1.Node.childrenVisited)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1)))) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1)))) M1.Node.children))))) (= (ControlFlow 0 100) 98))) anon51_correct)))))
(let ((anon49_correct  (=> (forall ((|k#3| Int) ) (!  (=> (and (<= (LitInt 0) |k#3|) (< |k#3| (- (|Seq#Length| |stackNodes#0@1|) 1))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3|))) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3|))) M1.Node.childrenVisited))))) ($Unbox refType (|Seq#Index| |stackNodes#0@1| (+ |k#3| 1)))))
 :qid |SchorrWaitestagesdfy.101:24|
 :skolemid |1353|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3|))) M1.Node.childrenVisited)))
 :pattern ( ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3|)))
)) (and (=> (= (ControlFlow 0 102) 100) anon140_Then_correct) (=> (= (ControlFlow 0 102) 101) anon140_Else_correct)))))
(let ((anon139_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#2@0|) (< |k#2@0| (- (|Seq#Length| |stackNodes#0@1|) 1)))) (= (ControlFlow 0 104) 102)) anon49_correct)))
(let ((anon139_Then_correct  (=> (and (<= (LitInt 0) |k#2@0|) (< |k#2@0| (- (|Seq#Length| |stackNodes#0@1|) 1))) (=> (and (and (<= 0 |k#2@0|) (< |k#2@0| (|Seq#Length| |stackNodes#0@1|))) (and (or (not (= ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#2@0|)) null)) (not true)) ($IsAlloc refType ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#2@0|)) Tclass.M1.Node $Heap@@3))) (=> (and (and (and (and (<= 0 |k#2@0|) (< |k#2@0| (|Seq#Length| |stackNodes#0@1|))) (or (not (= ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#2@0|)) null)) (not true))) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#2@0|))) M1.Node.childrenVisited)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#2@0|))) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#2@0|))) M1.Node.children)))))) (and (and (<= 0 (+ |k#2@0| 1)) (< (+ |k#2@0| 1) (|Seq#Length| |stackNodes#0@1|))) (= (ControlFlow 0 103) 102))) anon49_correct)))))
(let ((anon138_Else_correct  (=> (< |k#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 106) 103) anon139_Then_correct) (=> (= (ControlFlow 0 106) 104) anon139_Else_correct)))))
(let ((anon138_Then_correct  (=> (<= (LitInt 0) |k#2@0|) (and (=> (= (ControlFlow 0 105) 103) anon139_Then_correct) (=> (= (ControlFlow 0 105) 104) anon139_Else_correct)))))
(let ((anon137_Then_correct  (and (=> (= (ControlFlow 0 107) 105) anon138_Then_correct) (=> (= (ControlFlow 0 107) 106) anon138_Else_correct))))
(let ((anon137_Else_correct true))
(let ((anon44_correct  (=> (forall ((|k#1| Int) ) (!  (=> (and (< 0 |k#1|) (< |k#1| (|Seq#Length| |stackNodes#0@1|))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1|))) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1|))) M1.Node.childrenVisited))))) ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- |k#1| 1)))))
 :qid |SchorrWaitestagesdfy.96:24|
 :skolemid |1350|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1|))) M1.Node.childrenVisited)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1|))) M1.Node.children)))
)) (and (=> (= (ControlFlow 0 108) 107) anon137_Then_correct) (=> (= (ControlFlow 0 108) 53) anon137_Else_correct)))))
(let ((anon136_Else_correct  (=> (and (not (and (< 0 |k#0@0|) (< |k#0@0| (|Seq#Length| |stackNodes#0@1|)))) (= (ControlFlow 0 110) 108)) anon44_correct)))
(let ((anon136_Then_correct  (=> (and (< 0 |k#0@0|) (< |k#0@0| (|Seq#Length| |stackNodes#0@1|))) (=> (and (and (<= 0 |k#0@0|) (< |k#0@0| (|Seq#Length| |stackNodes#0@1|))) (or (not (= ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#0@0|)) null)) (not true))) (=> (and (and (and (and (<= 0 |k#0@0|) (< |k#0@0| (|Seq#Length| |stackNodes#0@1|))) (or (not (= ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#0@0|)) null)) (not true))) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#0@0|))) M1.Node.childrenVisited)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#0@0|))) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#0@0|))) M1.Node.children)))))) (and (and (<= 0 (- |k#0@0| 1)) (< (- |k#0@0| 1) (|Seq#Length| |stackNodes#0@1|))) (= (ControlFlow 0 109) 108))) anon44_correct)))))
(let ((anon135_Else_correct  (=> (<= |k#0@0| 0) (and (=> (= (ControlFlow 0 112) 109) anon136_Then_correct) (=> (= (ControlFlow 0 112) 110) anon136_Else_correct)))))
(let ((anon135_Then_correct  (=> (< 0 |k#0@0|) (and (=> (= (ControlFlow 0 111) 109) anon136_Then_correct) (=> (= (ControlFlow 0 111) 110) anon136_Else_correct)))))
(let ((anon134_Then_correct  (and (=> (= (ControlFlow 0 113) 111) anon135_Then_correct) (=> (= (ControlFlow 0 113) 112) anon135_Else_correct))))
(let ((anon134_Else_correct true))
(let ((anon39_correct  (=> (=> (< 0 (|Seq#Length| |stackNodes#0@1|)) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) M1.Node.childrenVisited))))) null)) (and (=> (= (ControlFlow 0 114) 113) anon134_Then_correct) (=> (= (ControlFlow 0 114) 52) anon134_Else_correct)))))
(let ((anon133_Else_correct  (=> (and (<= (|Seq#Length| |stackNodes#0@1|) 0) (= (ControlFlow 0 116) 114)) anon39_correct)))
(let ((anon133_Then_correct  (=> (< 0 (|Seq#Length| |stackNodes#0@1|)) (=> (and (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |stackNodes#0@1|))) (or (not (= ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0))) null)) (not true))) (=> (and (and (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |stackNodes#0@1|))) (or (not (= ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0))) null)) (not true))) (and (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) M1.Node.childrenVisited)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) M1.Node.children))))) (= (ControlFlow 0 115) 114))) anon39_correct)))))
(let ((anon37_correct  (=> (forall ((|n#17| T@U) ) (!  (=> ($Is refType |n#17| Tclass.M1.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#17|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#17|)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#17|) M1.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#17|) M1.Node.children)))))
 :qid |SchorrWaitestagesdfy.90:24|
 :skolemid |1347|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#17|) M1.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#17|) M1.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#17|)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#17|)))
)) (and (=> (= (ControlFlow 0 117) 115) anon133_Then_correct) (=> (= (ControlFlow 0 117) 116) anon133_Else_correct)))))
(let ((anon132_Else_correct  (=> (and (not (and (|Set#IsMember| |S#0@@5| ($Box refType |n#16@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#16@0|))))) (= (ControlFlow 0 120) 117)) anon37_correct)))
(let ((anon132_Then_correct  (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#16@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#16@0|)))) (=> (and (and (or (not (= |n#16@0| null)) (not true)) (or (not (= |n#16@0| null)) (not true))) (and ($IsAlloc refType |n#16@0| Tclass.M1.Node $Heap@@3) (= (ControlFlow 0 119) 117))) anon37_correct))))
(let ((anon131_Else_correct  (=> (not (|Set#IsMember| |S#0@@5| ($Box refType |n#16@0|))) (and (=> (= (ControlFlow 0 122) 119) anon132_Then_correct) (=> (= (ControlFlow 0 122) 120) anon132_Else_correct)))))
(let ((anon131_Then_correct  (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#16@0|)) (and (=> (= (ControlFlow 0 121) 119) anon132_Then_correct) (=> (= (ControlFlow 0 121) 120) anon132_Else_correct)))))
(let ((anon130_Then_correct  (=> (and ($Is refType |n#16@0| Tclass.M1.Node) ($IsAlloc refType |n#16@0| Tclass.M1.Node $Heap@1)) (and (=> (= (ControlFlow 0 123) 121) anon131_Then_correct) (=> (= (ControlFlow 0 123) 122) anon131_Else_correct)))))
(let ((anon130_Else_correct  (=> (and (not (and ($Is refType |n#16@0| Tclass.M1.Node) ($IsAlloc refType |n#16@0| Tclass.M1.Node $Heap@1))) (= (ControlFlow 0 118) 117)) anon37_correct)))
(let ((anon32_correct  (=> (forall ((|n#15| T@U) ) (!  (=> ($Is refType |n#15| Tclass.M1.Node) (and (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#15|)) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15|) M1.Node.children))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15|) M1.Node.children))))) (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#15|)) (forall ((|j#1| Int) ) (!  (=> (and (<= (LitInt 0) |j#1|) (< |j#1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15|) M1.Node.children))))) (or (= |j#1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15|) M1.Node.childrenVisited)))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15|) M1.Node.children)) |j#1|)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15|) M1.Node.children)) |j#1|)))))
 :qid |SchorrWaitestagesdfy.89:26|
 :skolemid |1341|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15|) M1.Node.children)) |j#1|)))
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15|) M1.Node.children)) |j#1|)))
)))))
 :qid |SchorrWaitestagesdfy.87:24|
 :skolemid |1342|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15|) M1.Node.childrenVisited)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15|) M1.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15|) M1.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#15|)))
)) (and (=> (= (ControlFlow 0 124) 123) anon130_Then_correct) (=> (= (ControlFlow 0 124) 118) anon130_Else_correct)))))
(let ((anon129_Else_correct  (=> (and (= |j#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#14@0|) M1.Node.childrenVisited)))) (= (ControlFlow 0 131) 124)) anon32_correct)))
(let ((anon129_Then_correct  (=> (and (or (not (= |j#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#14@0|) M1.Node.childrenVisited))))) (not true)) (or (not (= |n#14@0| null)) (not true))) (=> (and (and (and (<= 0 |j#0@0|) (< |j#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#14@0|) M1.Node.children))))) (and (or (not (= |n#14@0| null)) (not true)) ($IsAlloc refType |n#14@0| Tclass.M1.Node $Heap@@3))) (and (and (<= 0 |j#0@0|) (< |j#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#14@0|) M1.Node.children))))) (= (ControlFlow 0 130) 124))) anon32_correct))))
(let ((anon128_Then_correct  (=> (and (and (<= (LitInt 0) |j#0@0|) (< |j#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#14@0|) M1.Node.children))))) (or (not (= |n#14@0| null)) (not true))) (and (=> (= (ControlFlow 0 132) 130) anon129_Then_correct) (=> (= (ControlFlow 0 132) 131) anon129_Else_correct)))))
(let ((anon128_Else_correct  (=> (and (not (and (<= (LitInt 0) |j#0@0|) (< |j#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#14@0|) M1.Node.children)))))) (= (ControlFlow 0 129) 124)) anon32_correct)))
(let ((anon127_Else_correct  (=> (< |j#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 134) 132) anon128_Then_correct) (=> (= (ControlFlow 0 134) 129) anon128_Else_correct)))))
(let ((anon127_Then_correct  (=> (and (<= (LitInt 0) |j#0@0|) (or (not (= |n#14@0| null)) (not true))) (and (=> (= (ControlFlow 0 133) 132) anon128_Then_correct) (=> (= (ControlFlow 0 133) 129) anon128_Else_correct)))))
(let ((anon126_Then_correct  (and (=> (= (ControlFlow 0 135) 133) anon127_Then_correct) (=> (= (ControlFlow 0 135) 134) anon127_Else_correct))))
(let ((anon125_Then_correct  (=> (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#14@0|) M1.Node.children))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#14@0|) M1.Node.children)))) (and (=> (= (ControlFlow 0 136) 135) anon126_Then_correct) (=> (= (ControlFlow 0 136) 128) anon126_Else_correct)))))
(let ((anon125_Else_correct  (=> (and (or (not (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#14@0|) M1.Node.children))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#14@0|) M1.Node.children))))) (not true)) (= (ControlFlow 0 127) 124)) anon32_correct)))
(let ((anon124_Then_correct  (=> (and (and (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#14@0|)) (or (not (= |n#14@0| null)) (not true))) (and (or (not (= |n#14@0| null)) (not true)) ($IsAlloc refType |n#14@0| Tclass.M1.Node $Heap@@3))) (and (=> (= (ControlFlow 0 137) 136) anon125_Then_correct) (=> (= (ControlFlow 0 137) 127) anon125_Else_correct)))))
(let ((anon124_Else_correct  (=> (and (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#14@0|))) (= (ControlFlow 0 126) 124)) anon32_correct)))
(let ((anon123_Then_correct  (=> (and ($Is refType |n#14@0| Tclass.M1.Node) ($IsAlloc refType |n#14@0| Tclass.M1.Node $Heap@1)) (and (=> (= (ControlFlow 0 138) 137) anon124_Then_correct) (=> (= (ControlFlow 0 138) 126) anon124_Else_correct)))))
(let ((anon123_Else_correct  (=> (and (not (and ($Is refType |n#14@0| Tclass.M1.Node) ($IsAlloc refType |n#14@0| Tclass.M1.Node $Heap@1))) (= (ControlFlow 0 125) 124)) anon32_correct)))
(let ((anon22_correct  (=> (forall ((|n#13| T@U) ) (!  (=> ($Is refType |n#13| Tclass.M1.Node) (=> (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#13|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#13|)))) (or (not (= |n#13| |t#0@0|)) (not true))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#13|) M1.Node.childrenVisited))) (LitInt 0))))
 :qid |SchorrWaitestagesdfy.82:24|
 :skolemid |1338|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#13|) M1.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#13|)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#13|)))
)) (and (=> (= (ControlFlow 0 139) 138) anon123_Then_correct) (=> (= (ControlFlow 0 139) 125) anon123_Else_correct)))))
(let ((anon122_Else_correct  (=> (and (not (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#12@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#12@0|)))) (or (not (= |n#12@0| |t#0@0|)) (not true)))) (= (ControlFlow 0 142) 139)) anon22_correct)))
(let ((anon122_Then_correct  (=> (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#12@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#12@0|)))) (or (not (= |n#12@0| |t#0@0|)) (not true))) (and (or (not (= |n#12@0| null)) (not true)) (= (ControlFlow 0 141) 139))) anon22_correct)))
(let ((anon121_Else_correct  (=> (not (and (|Set#IsMember| |S#0@@5| ($Box refType |n#12@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#12@0|))))) (and (=> (= (ControlFlow 0 144) 141) anon122_Then_correct) (=> (= (ControlFlow 0 144) 142) anon122_Else_correct)))))
(let ((anon121_Then_correct  (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#12@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#12@0|)))) (and (=> (= (ControlFlow 0 143) 141) anon122_Then_correct) (=> (= (ControlFlow 0 143) 142) anon122_Else_correct)))))
(let ((anon120_Else_correct  (=> (not (|Set#IsMember| |S#0@@5| ($Box refType |n#12@0|))) (and (=> (= (ControlFlow 0 146) 143) anon121_Then_correct) (=> (= (ControlFlow 0 146) 144) anon121_Else_correct)))))
(let ((anon120_Then_correct  (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#12@0|)) (and (=> (= (ControlFlow 0 145) 143) anon121_Then_correct) (=> (= (ControlFlow 0 145) 144) anon121_Else_correct)))))
(let ((anon119_Then_correct  (=> (and ($Is refType |n#12@0| Tclass.M1.Node) ($IsAlloc refType |n#12@0| Tclass.M1.Node $Heap@1)) (and (=> (= (ControlFlow 0 147) 145) anon120_Then_correct) (=> (= (ControlFlow 0 147) 146) anon120_Else_correct)))))
(let ((anon119_Else_correct  (=> (and (not (and ($Is refType |n#12@0| Tclass.M1.Node) ($IsAlloc refType |n#12@0| Tclass.M1.Node $Heap@1))) (= (ControlFlow 0 140) 139)) anon22_correct)))
(let ((anon15_correct  (=> (and (and (forall ((|n#11| T@U) ) (!  (=> ($Is refType |n#11| Tclass.M1.Node) (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#11|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11|) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11|) M1.Node.children))))))
 :qid |SchorrWaitestagesdfy.80:24|
 :skolemid |1335|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11|) M1.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11|) M1.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#11|)))
)) (or (not (= |t#0@0| null)) (not true))) (and (or (not (= |t#0@0| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)))))) (and (=> (= (ControlFlow 0 148) 147) anon119_Then_correct) (=> (= (ControlFlow 0 148) 140) anon119_Else_correct)))))
(let ((anon118_Else_correct  (=> (and (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#10@0|))) (= (ControlFlow 0 151) 148)) anon15_correct)))
(let ((anon118_Then_correct  (=> (and (and (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#10@0|)) (or (not (= |n#10@0| null)) (not true))) (and (or (not (= |n#10@0| null)) (not true)) (= (ControlFlow 0 150) 148))) anon15_correct)))
(let ((anon117_Then_correct  (=> (and ($Is refType |n#10@0| Tclass.M1.Node) ($IsAlloc refType |n#10@0| Tclass.M1.Node $Heap@1)) (and (=> (= (ControlFlow 0 152) 150) anon118_Then_correct) (=> (= (ControlFlow 0 152) 151) anon118_Else_correct)))))
(let ((anon117_Else_correct  (=> (and (not (and ($Is refType |n#10@0| Tclass.M1.Node) ($IsAlloc refType |n#10@0| Tclass.M1.Node $Heap@1))) (= (ControlFlow 0 149) 148)) anon15_correct)))
(let ((anon12_correct  (=> (= |p#0@0| (ite (= (|Seq#Length| |stackNodes#0@1|) (LitInt 0)) null ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1))))) (and (=> (= (ControlFlow 0 153) 152) anon117_Then_correct) (=> (= (ControlFlow 0 153) 149) anon117_Else_correct)))))
(let ((anon116_Else_correct  (=> (or (not (= (|Seq#Length| |stackNodes#0@1|) (LitInt 0))) (not true)) (=> (and (and (<= 0 (- (|Seq#Length| |stackNodes#0@1|) 1)) (< (- (|Seq#Length| |stackNodes#0@1|) 1) (|Seq#Length| |stackNodes#0@1|))) (= (ControlFlow 0 155) 153)) anon12_correct))))
(let ((anon116_Then_correct  (=> (and (= (|Seq#Length| |stackNodes#0@1|) (LitInt 0)) (= (ControlFlow 0 154) 153)) anon12_correct)))
(let ((anon9_correct  (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |t#0@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |t#0@0|)))) (and (=> (= (ControlFlow 0 156) 154) anon116_Then_correct) (=> (= (ControlFlow 0 156) 155) anon116_Else_correct)))))
(let ((anon115_Else_correct  (=> (and (not (|Set#IsMember| |S#0@@5| ($Box refType |t#0@0|))) (= (ControlFlow 0 158) 156)) anon9_correct)))
(let ((anon115_Then_correct  (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |t#0@0|)) (= (ControlFlow 0 157) 156)) anon9_correct)))
(let ((anon7_correct  (=> (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| |stackNodes#0@1|))) (|Set#IsMember| |S#0@@5| (|Seq#Index| |stackNodes#0@1| |i#1|)))
 :qid |SchorrWaitestagesdfy.61:24|
 :skolemid |1332|
 :pattern ( ($Unbox refType (|Seq#Index| |stackNodes#0@1| |i#1|)))
)) (and (=> (= (ControlFlow 0 159) 157) anon115_Then_correct) (=> (= (ControlFlow 0 159) 158) anon115_Else_correct)))))
(let ((anon114_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| (|Seq#Length| |stackNodes#0@1|)))) (= (ControlFlow 0 161) 159)) anon7_correct)))
(let ((anon114_Then_correct  (=> (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| (|Seq#Length| |stackNodes#0@1|))) (=> (and (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |stackNodes#0@1|))) (= (ControlFlow 0 160) 159)) anon7_correct))))
(let ((anon113_Else_correct  (=> (< |i#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 163) 160) anon114_Then_correct) (=> (= (ControlFlow 0 163) 161) anon114_Else_correct)))))
(let ((anon113_Then_correct  (=> (<= (LitInt 0) |i#0@0|) (and (=> (= (ControlFlow 0 162) 160) anon114_Then_correct) (=> (= (ControlFlow 0 162) 161) anon114_Else_correct)))))
(let ((anon112_Then_correct  (and (=> (= (ControlFlow 0 164) 162) anon113_Then_correct) (=> (= (ControlFlow 0 164) 163) anon113_Else_correct))))
(let ((anon112_Else_correct true))
(let ((anon111_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 165) 164) anon112_Then_correct) (=> (= (ControlFlow 0 165) 51) anon112_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 17) (- 0 20)) (=> false (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |root#0|) M1.Node.marked))))) (=> (=> false (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |root#0|) M1.Node.marked)))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (=> false (forall ((|n#5| T@U) ) (!  (=> ($Is refType |n#5| Tclass.M1.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#5|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#5|) M1.Node.marked)))) (forall ((|ch#5| T@U) ) (!  (=> ($Is refType |ch#5| Tclass.M1.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#5|) M1.Node.children)) ($Box refType |ch#5|)) (or (not (= |ch#5| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |ch#5|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.47:24|
 :skolemid |1326|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |ch#5|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#5|) M1.Node.children)) ($Box refType |ch#5|)))
))))
 :qid |SchorrWaitestagesdfy.46:20|
 :skolemid |1327|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#5|) M1.Node.children)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#5|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#5|)))
)))) (=> (=> false (forall ((|n#5@@0| T@U) ) (!  (=> ($Is refType |n#5@@0| Tclass.M1.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#5@@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#5@@0|) M1.Node.marked)))) (forall ((|ch#5@@0| T@U) ) (!  (=> ($Is refType |ch#5@@0| Tclass.M1.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#5@@0|) M1.Node.children)) ($Box refType |ch#5@@0|)) (or (not (= |ch#5@@0| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |ch#5@@0|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.47:24|
 :skolemid |1326|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |ch#5@@0|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#5@@0|) M1.Node.children)) ($Box refType |ch#5@@0|)))
))))
 :qid |SchorrWaitestagesdfy.46:20|
 :skolemid |1327|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#5@@0|) M1.Node.children)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#5@@0|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#5@@0|)))
))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (=> false (forall ((|n#7| T@U) ) (!  (=> ($Is refType |n#7| Tclass.M1.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#7|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#7|) M1.Node.marked)))) (M1.__default.Reachable $Heap@@3 |root#0| |n#7| |S#0@@5|)))
 :qid |SchorrWaitestagesdfy.49:20|
 :skolemid |1329|
 :pattern ( (M1.__default.Reachable $Heap@@3 |root#0| |n#7| |S#0@@5|))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#7|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#7|)))
)))) (=> (=> false (forall ((|n#7@@0| T@U) ) (!  (=> ($Is refType |n#7@@0| Tclass.M1.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#7@@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#7@@0|) M1.Node.marked)))) (M1.__default.Reachable $Heap@@3 |root#0| |n#7@@0| |S#0@@5|)))
 :qid |SchorrWaitestagesdfy.49:20|
 :skolemid |1329|
 :pattern ( (M1.__default.Reachable $Heap@@3 |root#0| |n#7@@0| |S#0@@5|))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#7@@0|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#7@@0|)))
))) (=> (= (ControlFlow 0 17) (- 0 16)) (=> false (forall ((|n#9| T@U) ) (!  (=> ($Is refType |n#9| Tclass.M1.Node) (and (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#9|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#9|) M1.Node.childrenVisited))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9|) M1.Node.childrenVisited))))) (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#9|)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#9|) M1.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9|) M1.Node.children))))))
 :qid |SchorrWaitestagesdfy.51:20|
 :skolemid |1330|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9|) M1.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#9|) M1.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#9|) M1.Node.childrenVisited)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 |n#9|) M1.Node.childrenVisited)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#9|)))
))))))))))))
(let ((anon109_correct  (=> (and (and (forall ((|n#25| T@U) ) (!  (=> ($Is refType |n#25| Tclass.M1.Node) (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#25|)) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#25|) M1.Node.marked))) (|M1.__default.Reachable#canCall| $Heap@@3 |root#0| |n#25| |S#0@@5|))))
 :qid |SchorrWaitestagesdfy.140:19|
 :skolemid |1387|
 :pattern ( (M1.__default.Reachable $Heap@@3 |root#0| |n#25| |S#0@@5|))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#25|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#25|)))
)) (forall ((|n#25@@0| T@U) ) (!  (=> ($Is refType |n#25@@0| Tclass.M1.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#25@@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#25@@0|) M1.Node.marked)))) (M1.__default.Reachable $Heap@@3 |root#0| |n#25@@0| |S#0@@5|)))
 :qid |SchorrWaitestagesdfy.140:19|
 :skolemid |1388|
 :pattern ( (M1.__default.Reachable $Heap@@3 |root#0| |n#25@@0| |S#0@@5|))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#25@@0|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#25@@0|)))
))) (and (= $Heap@11 $Heap@10) (= (ControlFlow 0 21) 17))) GeneratedUnifiedExit_correct)))
(let ((anon171_Else_correct  (=> (and (not (and (|Set#IsMember| |S#0@@5| ($Box refType |n#24@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#24@0|) M1.Node.marked))))) (= (ControlFlow 0 24) 21)) anon109_correct)))
(let ((anon171_Then_correct  (=> (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#24@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#24@0|) M1.Node.marked)))) ($IsAlloc refType |root#0| Tclass.M1.Node $Heap@@3)) (and (and ($IsAlloc refType |n#24@0| Tclass.M1.Node $Heap@@3) ($IsAlloc SetType |S#0@@5| (TSet Tclass.M1.Node) $Heap@@3)) (and (|M1.__default.Reachable#canCall| $Heap@@3 |root#0| |n#24@0| |S#0@@5|) (= (ControlFlow 0 23) 21)))) anon109_correct)))
(let ((anon170_Else_correct  (=> (not (|Set#IsMember| |S#0@@5| ($Box refType |n#24@0|))) (and (=> (= (ControlFlow 0 26) 23) anon171_Then_correct) (=> (= (ControlFlow 0 26) 24) anon171_Else_correct)))))
(let ((anon170_Then_correct  (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#24@0|)) (or (not (= |n#24@0| null)) (not true))) (and (=> (= (ControlFlow 0 25) 23) anon171_Then_correct) (=> (= (ControlFlow 0 25) 24) anon171_Else_correct)))))
(let ((anon169_Then_correct  (=> (and ($Is refType |n#24@0| Tclass.M1.Node) ($IsAlloc refType |n#24@0| Tclass.M1.Node $Heap@10)) (and (=> (= (ControlFlow 0 27) 25) anon170_Then_correct) (=> (= (ControlFlow 0 27) 26) anon170_Else_correct)))))
(let ((anon169_Else_correct  (=> (and (not (and ($Is refType |n#24@0| Tclass.M1.Node) ($IsAlloc refType |n#24@0| Tclass.M1.Node $Heap@10))) (= (ControlFlow 0 22) 21)) anon109_correct)))
(let ((anon104_correct  (and (=> (= (ControlFlow 0 28) (- 0 30)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |root#0|) M1.Node.marked)))) (and (=> (= (ControlFlow 0 28) (- 0 29)) (forall ((|n#23| T@U) ) (!  (=> ($Is refType |n#23| Tclass.M1.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#23|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#23|) M1.Node.marked)))) (forall ((|ch#9| T@U) ) (!  (=> ($Is refType |ch#9| Tclass.M1.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#23|) M1.Node.children)) ($Box refType |ch#9|)) (or (not (= |ch#9| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |ch#9|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.139:24|
 :skolemid |1383|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |ch#9|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#23|) M1.Node.children)) ($Box refType |ch#9|)))
))))
 :qid |SchorrWaitestagesdfy.138:34|
 :skolemid |1384|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#23|) M1.Node.children)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#23|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#23|)))
))) (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |root#0|) M1.Node.marked))) (forall ((|n#23@@0| T@U) ) (!  (=> ($Is refType |n#23@@0| Tclass.M1.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#23@@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#23@@0|) M1.Node.marked)))) (forall ((|ch#9@@0| T@U) ) (!  (=> ($Is refType |ch#9@@0| Tclass.M1.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#23@@0|) M1.Node.children)) ($Box refType |ch#9@@0|)) (or (not (= |ch#9@@0| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |ch#9@@0|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.139:24|
 :skolemid |1385|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |ch#9@@0|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#23@@0|) M1.Node.children)) ($Box refType |ch#9@@0|)))
))))
 :qid |SchorrWaitestagesdfy.138:34|
 :skolemid |1386|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#23@@0|) M1.Node.children)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#23@@0|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#23@@0|)))
))) (and (=> (= (ControlFlow 0 28) 27) anon169_Then_correct) (=> (= (ControlFlow 0 28) 22) anon169_Else_correct)))))))
(let ((anon168_Else_correct  (=> (and (not (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#22@0|) M1.Node.children)) ($Box refType |ch#8@0|)) (or (not (= |ch#8@0| null)) (not true)))) (= (ControlFlow 0 36) 28)) anon104_correct)))
(let ((anon168_Then_correct  (=> (and (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#22@0|) M1.Node.children)) ($Box refType |ch#8@0|)) (or (not (= |ch#8@0| null)) (not true))) (and (or (not (= |ch#8@0| null)) (not true)) (= (ControlFlow 0 35) 28))) anon104_correct)))
(let ((anon167_Else_correct  (=> (not (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#22@0|) M1.Node.children)) ($Box refType |ch#8@0|))) (and (=> (= (ControlFlow 0 38) 35) anon168_Then_correct) (=> (= (ControlFlow 0 38) 36) anon168_Else_correct)))))
(let ((anon167_Then_correct  (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#22@0|) M1.Node.children)) ($Box refType |ch#8@0|)) (and (=> (= (ControlFlow 0 37) 35) anon168_Then_correct) (=> (= (ControlFlow 0 37) 36) anon168_Else_correct)))))
(let ((anon166_Then_correct  (=> (and (and ($Is refType |ch#8@0| Tclass.M1.Node?) ($IsAlloc refType |ch#8@0| Tclass.M1.Node? $Heap@10)) (or (not (= |n#22@0| null)) (not true))) (and (=> (= (ControlFlow 0 39) 37) anon167_Then_correct) (=> (= (ControlFlow 0 39) 38) anon167_Else_correct)))))
(let ((anon166_Else_correct  (=> (and (not (and ($Is refType |ch#8@0| Tclass.M1.Node?) ($IsAlloc refType |ch#8@0| Tclass.M1.Node? $Heap@10))) (= (ControlFlow 0 34) 28)) anon104_correct)))
(let ((anon165_Then_correct  (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#22@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#22@0|) M1.Node.marked)))) (and (=> (= (ControlFlow 0 40) 39) anon166_Then_correct) (=> (= (ControlFlow 0 40) 34) anon166_Else_correct)))))
(let ((anon165_Else_correct  (=> (and (not (and (|Set#IsMember| |S#0@@5| ($Box refType |n#22@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |n#22@0|) M1.Node.marked))))) (= (ControlFlow 0 33) 28)) anon104_correct)))
(let ((anon164_Else_correct  (=> (not (|Set#IsMember| |S#0@@5| ($Box refType |n#22@0|))) (and (=> (= (ControlFlow 0 42) 40) anon165_Then_correct) (=> (= (ControlFlow 0 42) 33) anon165_Else_correct)))))
(let ((anon164_Then_correct  (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#22@0|)) (or (not (= |n#22@0| null)) (not true))) (and (=> (= (ControlFlow 0 41) 40) anon165_Then_correct) (=> (= (ControlFlow 0 41) 33) anon165_Else_correct)))))
(let ((anon163_Then_correct  (=> (and ($Is refType |n#22@0| Tclass.M1.Node) ($IsAlloc refType |n#22@0| Tclass.M1.Node $Heap@10)) (and (=> (= (ControlFlow 0 43) 41) anon164_Then_correct) (=> (= (ControlFlow 0 43) 42) anon164_Else_correct)))))
(let ((anon163_Else_correct  (=> (and (not (and ($Is refType |n#22@0| Tclass.M1.Node) ($IsAlloc refType |n#22@0| Tclass.M1.Node $Heap@10))) (= (ControlFlow 0 32) 28)) anon104_correct)))
(let ((anon162_Then_correct  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |root#0|) M1.Node.marked))) (and (=> (= (ControlFlow 0 44) 43) anon163_Then_correct) (=> (= (ControlFlow 0 44) 32) anon163_Else_correct)))))
(let ((anon162_Else_correct  (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 |root#0|) M1.Node.marked)))) (= (ControlFlow 0 31) 28)) anon104_correct)))
(let ((after_0_correct  (=> (or (not (= |root#0| null)) (not true)) (and (=> (= (ControlFlow 0 45) 44) anon162_Then_correct) (=> (= (ControlFlow 0 45) 31) anon162_Else_correct)))))
(let ((anon159_Then_correct  (=> (= |p#0@0| null) (=> (and (= $Heap@10 $Heap@2) (= (ControlFlow 0 47) 45)) after_0_correct))))
(let ((anon157_Then_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@10 $Heap@1) (= (ControlFlow 0 46) 45)) after_0_correct))))
(let ((anon92_correct  (and (=> (= (ControlFlow 0 3) (- 0 6)) (=> |$w$loop#0@0| (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |root#0|) M1.Node.marked))))) (=> (=> |$w$loop#0@0| (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |root#0|) M1.Node.marked)))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (=> |$w$loop#0@0| (forall ((|n#19@@0| T@U) ) (!  (=> ($Is refType |n#19@@0| Tclass.M1.Node) (=> (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#19@@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#19@@0|) M1.Node.marked)))) (not (|Seq#Contains| |stackNodes#0@5| ($Box refType |n#19@@0|)))) (or (not (= |n#19@@0| |t#0@2|)) (not true))) (forall ((|ch#7@@0| T@U) ) (!  (=> ($Is refType |ch#7@@0| Tclass.M1.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#19@@0|) M1.Node.children)) ($Box refType |ch#7@@0|)) (or (not (= |ch#7@@0| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |ch#7@@0|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.156:26|
 :skolemid |1360|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |ch#7@@0|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#19@@0|) M1.Node.children)) ($Box refType |ch#7@@0|)))
))))
 :qid |SchorrWaitestagesdfy.155:24|
 :skolemid |1361|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#19@@0|) M1.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@5| ($Box refType |n#19@@0|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#19@@0|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#19@@0|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|n#19@@1| T@U) ) (!  (=> ($Is refType |n#19@@1| Tclass.M1.Node) (=> (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#19@@1|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#19@@1|) M1.Node.marked)))) (not (|Seq#Contains| |stackNodes#0@5| ($Box refType |n#19@@1|)))) (or (not (= |n#19@@1| |t#0@2|)) (not true))) (forall ((|ch#7@@1| T@U) ) (!  (=> ($Is refType |ch#7@@1| Tclass.M1.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#19@@1|) M1.Node.children)) ($Box refType |ch#7@@1|)) (or (not (= |ch#7@@1| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |ch#7@@1|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.156:26|
 :skolemid |1360|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |ch#7@@1|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#19@@1|) M1.Node.children)) ($Box refType |ch#7@@1|)))
))))
 :qid |SchorrWaitestagesdfy.155:24|
 :skolemid |1361|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#19@@1|) M1.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@5| ($Box refType |n#19@@1|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#19@@1|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#19@@1|)))
))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> |$w$loop#0@0| (forall ((|n#21| T@U) ) (!  (=> (and ($Is refType |n#21| Tclass.M1.Node) ($IsAlloc refType |n#21| Tclass.M1.Node $Heap@9)) (=> (or (|Seq#Contains| |stackNodes#0@5| ($Box refType |n#21|)) (= |n#21| |t#0@2|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#21|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.157:24|
 :skolemid |1367|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#21|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| |stackNodes#0@5| ($Box refType |n#21|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|n#21@@0| T@U) ) (!  (=> (and ($Is refType |n#21@@0| Tclass.M1.Node) ($IsAlloc refType |n#21@@0| Tclass.M1.Node $Heap@9)) (=> (or (|Seq#Contains| |stackNodes#0@5| ($Box refType |n#21@@0|)) (= |n#21@@0| |t#0@2|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#21@@0|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.157:24|
 :skolemid |1367|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#21@@0|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| |stackNodes#0@5| ($Box refType |n#21@@0|)))
))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> |$w$loop#0@0| (forall ((|n#21@@1| T@U) ) (!  (=> (and ($Is refType |n#21@@1| Tclass.M1.Node) ($IsAlloc refType |n#21@@1| Tclass.M1.Node $Heap@9)) (=> (or (|Seq#Contains| |stackNodes#0@5| ($Box refType |n#21@@1|)) (= |n#21@@1| |t#0@2|)) (forall ((|j#3| Int) ) (!  (=> (and (<= (LitInt 0) |j#3|) (< |j#3| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#21@@1|) M1.Node.childrenVisited))))) (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#21@@1|) M1.Node.children)) |j#3|)) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#21@@1|) M1.Node.children)) |j#3|))) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.159:26|
 :skolemid |1368|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#21@@1|) M1.Node.children)) |j#3|)))
))))
 :qid |SchorrWaitestagesdfy.157:24|
 :skolemid |1369|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#21@@1|) M1.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 |n#21@@1|) M1.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@5| ($Box refType |n#21@@1|)))
))))))))))))
(let ((anon159_Else_correct  (=> (or (not (= |p#0@0| null)) (not true)) (=> (and (and (or (not (= |p#0@0| null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |p#0@0| M1.Node.children))) (and (or (not (= |p#0@0| null)) (not true)) (or (not (= |p#0@0| null)) (not true)))) (=> (and (and (and (and (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |p#0@0|) M1.Node.childrenVisited)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |p#0@0|) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |p#0@0|) M1.Node.children))))) (= |$rhs#0_0_2@1| ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |p#0@0|) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |p#0@0|) M1.Node.childrenVisited))))))) (and (or (not (= |p#0@0| null)) (not true)) (or (not (= |p#0@0| null)) (not true)))) (and (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |p#0@0|) M1.Node.childrenVisited)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |p#0@0|) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |p#0@0|) M1.Node.children))))) (= |$rhs#0_0_3@1| (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |p#0@0|) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |p#0@0|) M1.Node.childrenVisited))) ($Box refType |t#0@0|))))) (and (and (and (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 |p#0@0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |p#0@0|) M1.Node.children ($Box SeqType |$rhs#0_0_3@1|)))) ($IsGoodHeap $Heap@7)) (and (<= 0 (- (|Seq#Length| |stackNodes#0@1|) 1)) (<= (- (|Seq#Length| |stackNodes#0@1|) 1) (|Seq#Length| |stackNodes#0@1|)))) (and (and (= |stackNodes#0@4| (|Seq#Take| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1))) (or (not (= |p#0@0| null)) (not true))) (and (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |p#0@0| M1.Node.childrenVisited)) (or (not (= |p#0@0| null)) (not true))))) (and (and (and ($Is intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |p#0@0|) M1.Node.childrenVisited))) 1)) Tclass._System.nat) (= |$rhs#0_0_4@1| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |p#0@0|) M1.Node.childrenVisited))) 1))) (and (= $Heap@8 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@7 |p#0@0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |p#0@0|) M1.Node.childrenVisited ($Box intType (int_2_U |$rhs#0_0_4@1|))))) ($IsGoodHeap $Heap@8))) (and (and (= $Heap@9 $Heap@8) (= |t#0@2| |p#0@0|)) (and (= |stackNodes#0@5| |stackNodes#0@4|) (= (ControlFlow 0 15) 3)))))) anon92_correct)))))
(let ((anon158_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)))) (=> (and (or (not (= |t#0@0| null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#0@0| M1.Node.childrenVisited))) (=> (and (and ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (= |$rhs#0_0_0@1| (LitInt 0))) (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited ($Box intType (int_2_U |$rhs#0_0_0@1|))))) ($IsGoodHeap $Heap@2))) (and (=> (= (ControlFlow 0 48) 47) anon159_Then_correct) (=> (= (ControlFlow 0 48) 15) anon159_Else_correct)))))))
(let ((anon91_correct  (=> (and (and (= $Heap@9 $Heap@6) (= |t#0@2| |t#0@1|)) (and (= |stackNodes#0@5| |stackNodes#0@3|) (= (ControlFlow 0 7) 3))) anon92_correct)))
(let ((anon161_Else_correct  (=> (not (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))))) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited)))))) M1.Node.marked))))) (=> (and ($Is SeqType (|Seq#Append| |stackNodes#0@1| (|Seq#Build| |Seq#Empty| ($Box refType |t#0@0|))) (TSeq Tclass.M1.Node)) (= |stackNodes#0@2| (|Seq#Append| |stackNodes#0@1| (|Seq#Build| |Seq#Empty| ($Box refType |t#0@0|))))) (=> (and (and (or (not (= |t#0@0| null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#0@0| M1.Node.children))) (and (or (not (= |t#0@0| null)) (not true)) (or (not (= |t#0@0| null)) (not true)))) (=> (and (and (and (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children))))) (= |$rhs#0_1_1_0@1| ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))))))) (and (and (or (not (= |t#0@0| null)) (not true)) (or (not (= |t#0@0| null)) (not true))) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children))))))) (and (and (and (= |$rhs#0_1_1_2@1| (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))) ($Box refType |p#0@0|))) (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children ($Box SeqType |$rhs#0_1_1_2@1|))))) (and ($IsGoodHeap $Heap@4) (or (not (= |$rhs#0_1_1_0@1| null)) (not true)))) (and (and (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |$rhs#0_1_1_0@1| M1.Node.marked)) (= |$rhs#0_1_1_3@1| (U_2_bool (Lit boolType (bool_2_U true))))) (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 |$rhs#0_1_1_0@1| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |$rhs#0_1_1_0@1|) M1.Node.marked ($Box boolType (bool_2_U |$rhs#0_1_1_3@1|))))) ($IsGoodHeap $Heap@5))))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (not (|Seq#Contains| |stackNodes#0@2| ($Box refType |$rhs#0_1_1_0@1|)))) (=> (not (|Seq#Contains| |stackNodes#0@2| ($Box refType |$rhs#0_1_1_0@1|))) (=> (and (and (= $Heap@6 $Heap@5) (= |t#0@1| |$rhs#0_1_1_0@1|)) (and (= |stackNodes#0@3| |stackNodes#0@2|) (= (ControlFlow 0 9) 7))) anon91_correct)))))))))
(let ((anon161_Then_correct  (=> (and (and (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))))) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited)))))) M1.Node.marked)))) (or (not (= |t#0@0| null)) (not true))) (and (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#0@0| M1.Node.childrenVisited)) (or (not (= |t#0@0| null)) (not true)))) (=> (and (and (and ($Is intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))) 1)) Tclass._System.nat) (= |$rhs#0_1_0_0@1| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))) 1))) (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited ($Box intType (int_2_U |$rhs#0_1_0_0@1|))))) ($IsGoodHeap $Heap@3))) (and (and (= $Heap@6 $Heap@3) (= |t#0@1| |t#0@0|)) (and (= |stackNodes#0@3| |stackNodes#0@1|) (= (ControlFlow 0 8) 7)))) anon91_correct))))
(let ((anon88_correct  (and (=> (= (ControlFlow 0 11) 8) anon161_Then_correct) (=> (= (ControlFlow 0 11) 9) anon161_Else_correct))))
(let ((anon160_Else_correct  (=> (and (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))))) null) (= (ControlFlow 0 13) 11)) anon88_correct)))
(let ((anon160_Then_correct  (=> (or (not (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))))) null)) (not true)) (=> (and (or (not (= |t#0@0| null)) (not true)) (or (not (= |t#0@0| null)) (not true))) (=> (and (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children))))) (and (or (not (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))))) null)) (not true)) (= (ControlFlow 0 12) 11))) anon88_correct)))))
(let ((anon158_Else_correct  (=> (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children))))) (not true)) (=> (and (and (or (not (= |t#0@0| null)) (not true)) (or (not (= |t#0@0| null)) (not true))) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)))))) (and (=> (= (ControlFlow 0 14) 12) anon160_Then_correct) (=> (= (ControlFlow 0 14) 13) anon160_Else_correct))))))
(let ((anon157_Else_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (and (or (not (= |t#0@0| null)) (not true)) (or (not (= |t#0@0| null)) (not true))) (and (=> (= (ControlFlow 0 49) 48) anon158_Then_correct) (=> (= (ControlFlow 0 49) 14) anon158_Else_correct))))))
(let ((anon111_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 50) 46) anon157_Then_correct) (=> (= (ControlFlow 0 50) 49) anon157_Else_correct)))))
(let ((anon110_LoopBody_correct  (and (=> (= (ControlFlow 0 166) 165) anon111_Then_correct) (=> (= (ControlFlow 0 166) 50) anon111_Else_correct))))
(let ((anon110_LoopDone_correct true))
(let ((anon110_LoopHead_correct  (=> (and ($Is refType |t#0@0| Tclass.M1.Node?) ($IsAlloc refType |t#0@0| Tclass.M1.Node? $Heap@1)) (=> (and (and ($Is refType |p#0@0| Tclass.M1.Node?) ($IsAlloc refType |p#0@0| Tclass.M1.Node? $Heap@1)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (=> (and (and (and ($Is SeqType |stackNodes#0@1| (TSeq Tclass.M1.Node)) ($IsAlloc SeqType |stackNodes#0@1| (TSeq Tclass.M1.Node) $Heap@1)) (and (not false) |$rhs#0@0|)) (and (and (=> |$w$loop#0@0| (forall ((|i#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| (|Seq#Length| |stackNodes#0@1|))) (|Set#IsMember| |S#0@@5| (|Seq#Index| |stackNodes#0@1| |i#1@@0|)))
 :qid |SchorrWaitestagesdfy.61:24|
 :skolemid |1334|
 :pattern ( ($Unbox refType (|Seq#Index| |stackNodes#0@1| |i#1@@0|)))
))) (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@5| ($Box refType |t#0@0|)))) (and (=> |$w$loop#0@0| (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |t#0@0|)))) (=> |$w$loop#0@0| (= |p#0@0| (ite (= (|Seq#Length| |stackNodes#0@1|) (LitInt 0)) null ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1))))))))) (=> (and (and (and (and (=> |$w$loop#0@0| (forall ((|n#11@@0| T@U) ) (!  (=> ($Is refType |n#11@@0| Tclass.M1.Node) (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#11@@0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11@@0|) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11@@0|) M1.Node.children))))))
 :qid |SchorrWaitestagesdfy.80:24|
 :skolemid |1337|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11@@0|) M1.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11@@0|) M1.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#11@@0|)))
))) (=> |$w$loop#0@0| (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.childrenVisited))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#0@0|) M1.Node.children)))))) (and (=> |$w$loop#0@0| (forall ((|n#13@@0| T@U) ) (!  (=> ($Is refType |n#13@@0| Tclass.M1.Node) (=> (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#13@@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#13@@0|)))) (or (not (= |n#13@@0| |t#0@0|)) (not true))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#13@@0|) M1.Node.childrenVisited))) (LitInt 0))))
 :qid |SchorrWaitestagesdfy.82:24|
 :skolemid |1340|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#13@@0|) M1.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#13@@0|)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#13@@0|)))
))) (=> |$w$loop#0@0| (forall ((|n#15@@0| T@U) ) (!  (=> ($Is refType |n#15@@0| Tclass.M1.Node) (and (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#15@@0|)) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) M1.Node.children))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15@@0|) M1.Node.children))))) (=> (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#15@@0|)) (forall ((|j#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |j#1@@0|) (< |j#1@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) M1.Node.children))))) (or (= |j#1@@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) M1.Node.childrenVisited)))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) M1.Node.children)) |j#1@@0|)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15@@0|) M1.Node.children)) |j#1@@0|)))))
 :qid |SchorrWaitestagesdfy.89:26|
 :skolemid |1345|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15@@0|) M1.Node.children)) |j#1@@0|)))
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) M1.Node.children)) |j#1@@0|)))
)))))
 :qid |SchorrWaitestagesdfy.87:24|
 :skolemid |1346|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) M1.Node.childrenVisited)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#15@@0|) M1.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#15@@0|) M1.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#15@@0|)))
))))) (and (and (=> |$w$loop#0@0| (forall ((|n#17@@0| T@U) ) (!  (=> ($Is refType |n#17@@0| Tclass.M1.Node) (=> (and (|Set#IsMember| |S#0@@5| ($Box refType |n#17@@0|)) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#17@@0|)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#17@@0|) M1.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#17@@0|) M1.Node.children)))))
 :qid |SchorrWaitestagesdfy.90:24|
 :skolemid |1349|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#17@@0|) M1.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#17@@0|) M1.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#17@@0|)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#17@@0|)))
))) (=> |$w$loop#0@0| (=> (< 0 (|Seq#Length| |stackNodes#0@1|)) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (LitInt 0)))) M1.Node.childrenVisited))))) null)))) (and (=> |$w$loop#0@0| (forall ((|k#1@@0| Int) ) (!  (=> (and (< 0 |k#1@@0|) (< |k#1@@0| (|Seq#Length| |stackNodes#0@1|))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1@@0|))) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1@@0|))) M1.Node.childrenVisited))))) ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- |k#1@@0| 1)))))
 :qid |SchorrWaitestagesdfy.96:24|
 :skolemid |1352|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1@@0|))) M1.Node.childrenVisited)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#1@@0|))) M1.Node.children)))
))) (=> |$w$loop#0@0| (forall ((|k#3@@0| Int) ) (!  (=> (and (<= (LitInt 0) |k#3@@0|) (< |k#3@@0| (- (|Seq#Length| |stackNodes#0@1|) 1))) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3@@0|))) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3@@0|))) M1.Node.childrenVisited))))) ($Unbox refType (|Seq#Index| |stackNodes#0@1| (+ |k#3@@0| 1)))))
 :qid |SchorrWaitestagesdfy.101:24|
 :skolemid |1355|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3@@0|))) M1.Node.childrenVisited)))
 :pattern ( ($Unbox refType (|Seq#Index| |stackNodes#0@1| |k#3@@0|)))
)))))) (and (and (and (=> |$w$loop#0@0| (=> (< 0 (|Seq#Length| |stackNodes#0@1|)) (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1)))) M1.Node.children)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| |stackNodes#0@1| (- (|Seq#Length| |stackNodes#0@1|) 1)))) M1.Node.childrenVisited))))) |t#0@0|))) (=> |$w$loop#0@0| (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) M1.Node.marked))))) (and (=> |$w$loop#0@0| (forall ((|n#19@@2| T@U) ) (!  (=> ($Is refType |n#19@@2| Tclass.M1.Node) (=> (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#19@@2|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19@@2|) M1.Node.marked)))) (not (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#19@@2|)))) (or (not (= |n#19@@2| |t#0@0|)) (not true))) (forall ((|ch#7@@2| T@U) ) (!  (=> ($Is refType |ch#7@@2| Tclass.M1.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19@@2|) M1.Node.children)) ($Box refType |ch#7@@2|)) (or (not (= |ch#7@@2| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#7@@2|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.156:26|
 :skolemid |1360|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#7@@2|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19@@2|) M1.Node.children)) ($Box refType |ch#7@@2|)))
))))
 :qid |SchorrWaitestagesdfy.155:24|
 :skolemid |1361|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19@@2|) M1.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#19@@2|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#19@@2|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#19@@2|)))
))) (=> |$w$loop#0@0| (forall ((|n#21@@2| T@U) ) (!  (=> (and ($Is refType |n#21@@2| Tclass.M1.Node) ($IsAlloc refType |n#21@@2| Tclass.M1.Node $Heap@1)) (=> (or (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#21@@2|)) (= |n#21@@2| |t#0@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@2|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.157:24|
 :skolemid |1367|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@2|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#21@@2|)))
))))) (and (and (=> |$w$loop#0@0| (forall ((|n#21@@3| T@U) ) (!  (=> (and ($Is refType |n#21@@3| Tclass.M1.Node) ($IsAlloc refType |n#21@@3| Tclass.M1.Node $Heap@1)) (=> (or (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#21@@3|)) (= |n#21@@3| |t#0@0|)) (forall ((|j#3@@0| Int) ) (!  (=> (and (<= (LitInt 0) |j#3@@0|) (< |j#3@@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@3|) M1.Node.childrenVisited))))) (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@3|) M1.Node.children)) |j#3@@0|)) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@3|) M1.Node.children)) |j#3@@0|))) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.159:26|
 :skolemid |1368|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@3|) M1.Node.children)) |j#3@@0|)))
))))
 :qid |SchorrWaitestagesdfy.157:24|
 :skolemid |1369|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@3|) M1.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#21@@3|) M1.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@1| ($Box refType |n#21@@3|)))
))) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@10) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10)) (|Set#IsMember| |S#0@@5| ($Box refType $o@@10))))
 :qid |SchorrWaitestagesdfy.150:5|
 :skolemid |1370|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@10))
))) (and ($HeapSucc $Heap@0 $Heap@1) (forall (($o@@11 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) $f@@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@11 $f@@2))))
 :qid |SchorrWaitestagesdfy.150:5|
 :skolemid |1371|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11) $f@@2))
)))))) (and (=> (= (ControlFlow 0 167) 1) anon110_LoopDone_correct) (=> (= (ControlFlow 0 167) 166) anon110_LoopBody_correct))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc |S#0@@5|)) (=> (and (or (not (= |root#0| null)) (not true)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |root#0| M1.Node.marked))) (=> (and (and (= |$rhs#0@0| (U_2_bool (Lit boolType (bool_2_U true)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@3 |root#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |root#0|) M1.Node.marked ($Box boolType (bool_2_U |$rhs#0@0|)))))) (and ($IsGoodHeap $Heap@0) (= |stackNodes#0@0| (Lit SeqType |Seq#Empty|)))) (and (=> (= (ControlFlow 0 168) (- 0 172)) (=> |$w$loop#0@0| (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) M1.Node.marked))))) (=> (=> |$w$loop#0@0| (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) M1.Node.marked)))) (and (=> (= (ControlFlow 0 168) (- 0 171)) (=> |$w$loop#0@0| (forall ((|n#19@@3| T@U) ) (!  (=> ($Is refType |n#19@@3| Tclass.M1.Node) (=> (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#19@@3|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#19@@3|) M1.Node.marked)))) (not (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#19@@3|)))) (or (not (= |n#19@@3| |root#0|)) (not true))) (forall ((|ch#7@@3| T@U) ) (!  (=> ($Is refType |ch#7@@3| Tclass.M1.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#19@@3|) M1.Node.children)) ($Box refType |ch#7@@3|)) (or (not (= |ch#7@@3| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#7@@3|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.156:26|
 :skolemid |1360|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#7@@3|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#19@@3|) M1.Node.children)) ($Box refType |ch#7@@3|)))
))))
 :qid |SchorrWaitestagesdfy.155:24|
 :skolemid |1361|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#19@@3|) M1.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#19@@3|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#19@@3|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#19@@3|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|n#19@@4| T@U) ) (!  (=> ($Is refType |n#19@@4| Tclass.M1.Node) (=> (and (and (and (|Set#IsMember| |S#0@@5| ($Box refType |n#19@@4|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#19@@4|) M1.Node.marked)))) (not (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#19@@4|)))) (or (not (= |n#19@@4| |root#0|)) (not true))) (forall ((|ch#7@@4| T@U) ) (!  (=> ($Is refType |ch#7@@4| Tclass.M1.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#19@@4|) M1.Node.children)) ($Box refType |ch#7@@4|)) (or (not (= |ch#7@@4| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#7@@4|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.156:26|
 :skolemid |1360|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#7@@4|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#19@@4|) M1.Node.children)) ($Box refType |ch#7@@4|)))
))))
 :qid |SchorrWaitestagesdfy.155:24|
 :skolemid |1361|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#19@@4|) M1.Node.children)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#19@@4|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#19@@4|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#19@@4|)))
))) (and (=> (= (ControlFlow 0 168) (- 0 170)) (=> |$w$loop#0@0| (forall ((|n#21@@4| T@U) ) (!  (=> (and ($Is refType |n#21@@4| Tclass.M1.Node) ($IsAlloc refType |n#21@@4| Tclass.M1.Node $Heap@0)) (=> (or (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#21@@4|)) (= |n#21@@4| |root#0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@4|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.157:24|
 :skolemid |1367|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@4|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#21@@4|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|n#21@@5| T@U) ) (!  (=> (and ($Is refType |n#21@@5| Tclass.M1.Node) ($IsAlloc refType |n#21@@5| Tclass.M1.Node $Heap@0)) (=> (or (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#21@@5|)) (= |n#21@@5| |root#0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@5|) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.157:24|
 :skolemid |1367|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@5|) M1.Node.marked)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#21@@5|)))
))) (and (=> (= (ControlFlow 0 168) (- 0 169)) (=> |$w$loop#0@0| (forall ((|n#21@@6| T@U) ) (!  (=> (and ($Is refType |n#21@@6| Tclass.M1.Node) ($IsAlloc refType |n#21@@6| Tclass.M1.Node $Heap@0)) (=> (or (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#21@@6|)) (= |n#21@@6| |root#0|)) (forall ((|j#3@@1| Int) ) (!  (=> (and (<= (LitInt 0) |j#3@@1|) (< |j#3@@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@6|) M1.Node.childrenVisited))))) (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@6|) M1.Node.children)) |j#3@@1|)) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@6|) M1.Node.children)) |j#3@@1|))) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.159:26|
 :skolemid |1368|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@6|) M1.Node.children)) |j#3@@1|)))
))))
 :qid |SchorrWaitestagesdfy.157:24|
 :skolemid |1369|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@6|) M1.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@6|) M1.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#21@@6|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|n#21@@7| T@U) ) (!  (=> (and ($Is refType |n#21@@7| Tclass.M1.Node) ($IsAlloc refType |n#21@@7| Tclass.M1.Node $Heap@0)) (=> (or (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#21@@7|)) (= |n#21@@7| |root#0|)) (forall ((|j#3@@2| Int) ) (!  (=> (and (<= (LitInt 0) |j#3@@2|) (< |j#3@@2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@7|) M1.Node.childrenVisited))))) (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@7|) M1.Node.children)) |j#3@@2|)) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@7|) M1.Node.children)) |j#3@@2|))) M1.Node.marked)))))
 :qid |SchorrWaitestagesdfy.159:26|
 :skolemid |1368|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@7|) M1.Node.children)) |j#3@@2|)))
))))
 :qid |SchorrWaitestagesdfy.157:24|
 :skolemid |1369|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@7|) M1.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#21@@7|) M1.Node.childrenVisited)))
 :pattern ( (|Seq#Contains| |stackNodes#0@0| ($Box refType |n#21@@7|)))
))) (=> (= (ControlFlow 0 168) 167) anon110_LoopHead_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and ($Is refType |root#0| Tclass.M1.Node) ($IsAlloc refType |root#0| Tclass.M1.Node $Heap@@3)) (and ($Is SetType |S#0@@5| (TSet Tclass.M1.Node)) ($IsAlloc SetType |S#0@@5| (TSet Tclass.M1.Node) $Heap@@3))) (=> (and (and (and ($Is refType |t#0| Tclass.M1.Node?) ($IsAlloc refType |t#0| Tclass.M1.Node? $Heap@@3)) true) (and (and ($Is refType |p#0@@3| Tclass.M1.Node?) ($IsAlloc refType |p#0@@3| Tclass.M1.Node? $Heap@@3)) true)) (=> (and (and (and (and ($Is SeqType |stackNodes#0| (TSeq Tclass.M1.Node)) ($IsAlloc SeqType |stackNodes#0| (TSeq Tclass.M1.Node) $Heap@@3)) true) (= 4 $FunctionContextHeight)) (and (and (|Set#IsMember| |S#0@@5| ($Box refType |root#0|)) (forall ((|n#1@@0| T@U) ) (!  (=> ($Is refType |n#1@@0| Tclass.M1.Node) (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#1@@0|)) (forall ((|ch#2| T@U) ) (!  (=> ($Is refType |ch#2| Tclass.M1.Node?) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) M1.Node.children)) ($Box refType |ch#2|)) (or (= |ch#2| null) (|Set#IsMember| |S#0@@5| ($Box refType |ch#2|)))))
 :qid |SchorrWaitestagesdfy.40:24|
 :skolemid |1323|
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |ch#2|)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) M1.Node.children)) ($Box refType |ch#2|)))
))))
 :qid |SchorrWaitestagesdfy.39:21|
 :skolemid |1324|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#1@@0|) M1.Node.children)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#1@@0|)))
))) (and (forall ((|n#3| T@U) ) (!  (=> ($Is refType |n#3| Tclass.M1.Node) (and (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#3|)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3|) M1.Node.marked))))) (=> (|Set#IsMember| |S#0@@5| ($Box refType |n#3|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3|) M1.Node.childrenVisited))) (LitInt 0)))))
 :qid |SchorrWaitestagesdfy.42:21|
 :skolemid |1325|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3|) M1.Node.childrenVisited)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#3|) M1.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0@@5| ($Box refType |n#3|)))
)) (= (ControlFlow 0 173) 168)))) anon0_correct))))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
