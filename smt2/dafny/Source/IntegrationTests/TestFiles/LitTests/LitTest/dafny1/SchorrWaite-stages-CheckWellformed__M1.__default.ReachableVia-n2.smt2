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
(declare-fun Tagclass.M1.Node () T@U)
(declare-fun Tagclass.M1.Node? () T@U)
(declare-fun Tagclass.M1.Path () T@U)
(declare-fun class.M1.Node? () T@U)
(declare-fun |##M1.Path.Empty| () T@U)
(declare-fun |##M1.Path.Extend| () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun tytagFamily$Path () T@U)
(declare-fun field$children () T@U)
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
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#M1.Path.Empty| () T@U)
(declare-fun Tclass.M1.Node? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun M1.Node.children () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OlderTag (T@U) Bool)
(declare-fun M1.Path.Extend_q (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
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
(assert (distinct TBool TagBool TagSet TagSeq alloc allocName Tagclass.M1.Node Tagclass.M1.Node? Tagclass.M1.Path class.M1.Node? |##M1.Path.Empty| |##M1.Path.Extend| tytagFamily$Node tytagFamily$Path field$children)
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
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#M1.Path.Extend| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass.M1.Path $h)  (and ($IsAlloc DatatypeTypeType |a#6#0#0@@0| Tclass.M1.Path $h) ($IsAlloc refType |a#6#1#0@@0| Tclass.M1.Node $h))))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |1429|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M1.Path.Extend| |a#6#0#0@@0| |a#6#1#0@@0|) Tclass.M1.Path $h))
)))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |943|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#M1.Path.Empty|) |##M1.Path.Empty|))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M1.Node?)  (or (= $o null) (= (dtype $o) Tclass.M1.Node?)))
 :qid |unknown.0:0|
 :skolemid |1411|
 :pattern ( ($Is refType $o Tclass.M1.Node?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.M1.Node $h@@0) ($IsAlloc refType |c#0| Tclass.M1.Node? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1420|
 :pattern ( ($IsAlloc refType |c#0| Tclass.M1.Node $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.M1.Node? $h@@0))
)))
(assert ($Is DatatypeTypeType |#M1.Path.Empty| Tclass.M1.Path))
(assert (= (FDim M1.Node.children) 0))
(assert (= (FieldOfDecl class.M1.Node? field$children) M1.Node.children))
(assert  (not ($IsGhostField M1.Node.children)))
(assert (forall (($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#M1.Path.Empty| Tclass.M1.Path $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1423|
 :pattern ( ($IsAlloc DatatypeTypeType |#M1.Path.Empty| Tclass.M1.Path $h@@1))
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
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.M1.Node? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1412|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.M1.Node? $h@@2))
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
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |726|
 :pattern ( (Lit T x@@3))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |737|
 :pattern ( ($Unbox T@@0 x@@4))
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
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |757|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |758|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |750|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.M1.Node) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass.M1.Node)))
 :qid |unknown.0:0|
 :skolemid |1300|
 :pattern ( ($IsBox bx@@0 Tclass.M1.Node))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.M1.Node?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass.M1.Node?)))
 :qid |unknown.0:0|
 :skolemid |1301|
 :pattern ( ($IsBox bx@@1 Tclass.M1.Node?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M1.Path) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass.M1.Path)))
 :qid |unknown.0:0|
 :skolemid |1393|
 :pattern ( ($IsBox bx@@2 Tclass.M1.Path))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.M1.Node)  (and ($Is refType |c#0@@0| Tclass.M1.Node?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1419|
 :pattern ( ($Is refType |c#0@@0| Tclass.M1.Node))
 :pattern ( ($Is refType |c#0@@0| Tclass.M1.Node?))
)))
(assert (forall ((s T@U) (x@@5 T@U) ) (! (= (|Seq#Contains| s x@@5) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s))) (= (|Seq#Index| s i) x@@5))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |941|
 :pattern ( (|Seq#Index| s i))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |942|
 :pattern ( (|Seq#Contains| s x@@5))
)))
(assert (forall (($h@@3 T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.M1.Node?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) M1.Node.children)) (TSeq Tclass.M1.Node?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1413|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) M1.Node.children)))
)))
(assert (forall (($h@@4 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.M1.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) M1.Node.children)) (TSeq Tclass.M1.Node?) $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1414|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) M1.Node.children)))
)))
(assert (forall (($ly@@1 T@U) ($Heap@@1 T@U) (|source#0@@1| T@U) (|p#0@@1| T@U) (|sink#0@@1| T@U) (|S#0@@1| T@U) ) (! (= (M1.__default.ReachableVia ($LS $ly@@1) $Heap@@1 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|) (M1.__default.ReachableVia $ly@@1 $Heap@@1 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|))
 :qid |SchorrWaitestagesdfy.27:19|
 :skolemid |1401|
 :pattern ( (M1.__default.ReachableVia ($LS $ly@@1) $Heap@@1 |source#0@@1| |p#0@@1| |sink#0@@1| |S#0@@1|))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.M1.Path) (or (M1.Path.Empty_q d@@3) (M1.Path.Extend_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1437|
 :pattern ( (M1.Path.Extend_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.M1.Path))
 :pattern ( (M1.Path.Empty_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.M1.Path))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |818|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |740|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |749|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |932|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |778|
 :pattern ( (|Set#IsMember| v@@2 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |779|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
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
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |784|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |785|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@2) h@@1))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |712|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |713|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |718|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |719|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |736|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (DtRank |a#9#0#0|) (DtRank (|#M1.Path.Extend| |a#9#0#0| |a#9#1#0|)))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |1434|
 :pattern ( (|#M1.Path.Extend| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |743|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (forall ((bx@@6 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |746|
 :pattern ( ($IsBox bx@@6 (TSeq t@@6)))
)))
(assert (= (Tag Tclass.M1.Node) Tagclass.M1.Node))
(assert (= (TagFamily Tclass.M1.Node) tytagFamily$Node))
(assert (= (Tag Tclass.M1.Node?) Tagclass.M1.Node?))
(assert (= (TagFamily Tclass.M1.Node?) tytagFamily$Node))
(assert (= (Tag Tclass.M1.Path) Tagclass.M1.Path))
(assert (= (TagFamily Tclass.M1.Path) tytagFamily$Path))
(assert (= |#M1.Path.Empty| (Lit DatatypeTypeType |#M1.Path.Empty|)))
(assert (forall ((d@@4 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (M1.Path.Extend_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.M1.Path $h@@5))) ($IsAlloc DatatypeTypeType (M1.Path._h0 d@@4) Tclass.M1.Path $h@@5))
 :qid |unknown.0:0|
 :skolemid |1430|
 :pattern ( ($IsAlloc DatatypeTypeType (M1.Path._h0 d@@4) Tclass.M1.Path $h@@5))
)))
(assert (forall ((d@@5 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (M1.Path.Extend_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.M1.Path $h@@6))) ($IsAlloc refType (M1.Path._h1 d@@5) Tclass.M1.Node $h@@6))
 :qid |unknown.0:0|
 :skolemid |1431|
 :pattern ( ($IsAlloc refType (M1.Path._h1 d@@5) Tclass.M1.Node $h@@6))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#M1.Path.Extend| (Lit DatatypeTypeType |a#7#0#0|) (Lit refType |a#7#1#0|)) (Lit DatatypeTypeType (|#M1.Path.Extend| |a#7#0#0| |a#7#1#0|)))
 :qid |SchorrWaitestagesdfy.19:34|
 :skolemid |1432|
 :pattern ( (|#M1.Path.Extend| (Lit DatatypeTypeType |a#7#0#0|) (Lit refType |a#7#1#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |727|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |933|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@3))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2945|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |774|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |764|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |765|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(assert (forall ((s@@2 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |978|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |753|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |source#0@@2| () T@U)
(declare-fun |p#0@@2| () T@U)
(declare-fun |sink#0@@2| () T@U)
(declare-fun |S#0@@2| () T@U)
(declare-fun |n#Z#0@0| () T@U)
(declare-fun |prefix#Z#0@0| () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M1.__default.ReachableVia)
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
 (=> (= (ControlFlow 0 0) 14) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (forall (($olderHeap@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $olderHeap@@0) ($OlderTag $olderHeap@@0)) (and (M1.__default.ReachableVia ($LS $LZ) $Heap@@2 |source#0@@2| |p#0@@2| |sink#0@@2| |S#0@@2|) (and (and ($IsAlloc refType |source#0@@2| Tclass.M1.Node $olderHeap@@0) ($IsAlloc refType |sink#0@@2| Tclass.M1.Node $olderHeap@@0)) ($IsAlloc SetType |S#0@@2| (TSet Tclass.M1.Node) $olderHeap@@0)))) ($IsAlloc DatatypeTypeType |p#0@@2| Tclass.M1.Path $olderHeap@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1409|
 :pattern ( ($OlderTag $olderHeap@@0))
)))))
(let ((anon9_correct  (=> (and (= (M1.__default.ReachableVia ($LS $LZ) $Heap@@2 |source#0@@2| |p#0@@2| |sink#0@@2| |S#0@@2|)  (and (and (|Set#IsMember| |S#0@@2| ($Box refType |n#Z#0@0|)) (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |n#Z#0@0|) M1.Node.children)) ($Box refType |sink#0@@2|))) (M1.__default.ReachableVia ($LS $LZ) $Heap@@2 |source#0@@2| |prefix#Z#0@0| |n#Z#0@0| |S#0@@2|))) (=> (|Set#IsMember| |S#0@@2| ($Box refType |n#Z#0@0|)) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |n#Z#0@0|) M1.Node.children)) ($Box refType |sink#0@@2|)) (|M1.__default.ReachableVia#canCall| $Heap@@2 |source#0@@2| |prefix#Z#0@0| |n#Z#0@0| |S#0@@2|)))) (=> (and (and ($Is boolType (bool_2_U (M1.__default.ReachableVia ($LS $LZ) $Heap@@2 |source#0@@2| |p#0@@2| |sink#0@@2| |S#0@@2|)) TBool) |b$reqreads#0@1|) (and |b$reqreads#1@1| (= (ControlFlow 0 6) 4))) GeneratedUnifiedExit_correct))))
(let ((anon16_Else_correct  (=> (not (and (|Set#IsMember| |S#0@@2| ($Box refType |n#Z#0@0|)) (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |n#Z#0@0|) M1.Node.children)) ($Box refType |sink#0@@2|)))) (=> (and (= |b$reqreads#1@1| true) (= (ControlFlow 0 8) 6)) anon9_correct))))
(let ((anon16_Then_correct  (=> (and (and (|Set#IsMember| |S#0@@2| ($Box refType |n#Z#0@0|)) (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |n#Z#0@0|) M1.Node.children)) ($Box refType |sink#0@@2|))) ($IsAlloc refType |source#0@@2| Tclass.M1.Node $Heap@@2)) (=> (and (and (and ($IsAlloc DatatypeTypeType |prefix#Z#0@0| Tclass.M1.Path $Heap@@2) ($IsAlloc refType |n#Z#0@0| Tclass.M1.Node $Heap@@2)) (and ($IsAlloc SetType |S#0@@2| (TSet Tclass.M1.Node) $Heap@@2) (= |b$reqreads#1@0| (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@4) alloc)))) (|Set#IsMember| |S#0@@2| ($Box refType $o@@4))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@4 $f@@0)))
 :qid |SchorrWaitestagesdfy.33:63|
 :skolemid |1410|
))))) (and (and (< (DtRank |prefix#Z#0@0|) (DtRank |p#0@@2|)) (|M1.__default.ReachableVia#canCall| $Heap@@2 |source#0@@2| |prefix#Z#0@0| |n#Z#0@0| |S#0@@2|)) (and (= |b$reqreads#1@1| |b$reqreads#1@0|) (= (ControlFlow 0 7) 6)))) anon9_correct))))
(let ((anon15_Else_correct  (=> (and (not (|Set#IsMember| |S#0@@2| ($Box refType |n#Z#0@0|))) (= |b$reqreads#0@1| true)) (and (=> (= (ControlFlow 0 10) 7) anon16_Then_correct) (=> (= (ControlFlow 0 10) 8) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (and (and (|Set#IsMember| |S#0@@2| ($Box refType |n#Z#0@0|)) (or (not (= |n#Z#0@0| null)) (not true))) (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |n#Z#0@0| M1.Node.children))) (= |b$reqreads#0@1| |b$reqreads#0@0|))) (and (=> (= (ControlFlow 0 9) 7) anon16_Then_correct) (=> (= (ControlFlow 0 9) 8) anon16_Else_correct)))))
(let ((anon14_Then_correct  (=> (= |p#0@@2| (|#M1.Path.Extend| |_mcc#0#0| |_mcc#1#0|)) (=> (and (and (and ($Is DatatypeTypeType |_mcc#0#0| Tclass.M1.Path) ($Is refType |_mcc#1#0| Tclass.M1.Node)) (and (= |let#0#0#0| |_mcc#1#0|) ($Is refType |let#0#0#0| Tclass.M1.Node))) (and (and (= |n#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#0#0|)) (and ($Is DatatypeTypeType |let#1#0#0| Tclass.M1.Path) (= |prefix#Z#0@0| |let#1#0#0|)))) (and (=> (= (ControlFlow 0 11) 9) anon15_Then_correct) (=> (= (ControlFlow 0 11) 10) anon15_Else_correct))))))
(let ((anon13_Then_correct  (=> (and (and (= |p#0@@2| |#M1.Path.Empty|) (= (M1.__default.ReachableVia ($LS $LZ) $Heap@@2 |source#0@@2| |p#0@@2| |sink#0@@2| |S#0@@2|) (= |source#0@@2| |sink#0@@2|))) (and ($Is boolType (bool_2_U (M1.__default.ReachableVia ($LS $LZ) $Heap@@2 |source#0@@2| |p#0@@2| |sink#0@@2| |S#0@@2|)) TBool) (= (ControlFlow 0 5) 4))) GeneratedUnifiedExit_correct)))
(let ((anon14_Else_correct true))
(let ((anon13_Else_correct  (=> (or (not (= |p#0@@2| |#M1.Path.Empty|)) (not true)) (and (=> (= (ControlFlow 0 12) 11) anon14_Then_correct) (=> (= (ControlFlow 0 12) 2) anon14_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc |S#0@@2|)) (and (and (=> (= (ControlFlow 0 13) 1) anon12_Then_correct) (=> (= (ControlFlow 0 13) 5) anon13_Then_correct)) (=> (= (ControlFlow 0 13) 12) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and ($Is refType |source#0@@2| Tclass.M1.Node) ($Is DatatypeTypeType |p#0@@2| Tclass.M1.Path))) (and (and ($Is refType |sink#0@@2| Tclass.M1.Node) ($Is SetType |S#0@@2| (TSet Tclass.M1.Node))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 14) 13)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
