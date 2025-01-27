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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.DoublyLinkedList () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun Tagclass._module.DoublyLinkedList? () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun class._module.Node? () T@U)
(declare-fun class._module.DoublyLinkedList? () T@U)
(declare-fun tytagFamily$DoublyLinkedList () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$Nodes () T@U)
(declare-fun field$L () T@U)
(declare-fun field$R () T@U)
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
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Node? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.DoublyLinkedList? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Node () T@U)
(declare-fun Tclass._module.DoublyLinkedList () T@U)
(declare-fun _module.DoublyLinkedList.Nodes () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Node.L () T@U)
(declare-fun _module.Node.R () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.DoublyLinkedList.Valid (T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.DoublyLinkedList.Valid#canCall| (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U Int Int T@U) T@U)
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
(assert (distinct TagSeq alloc allocName Tagclass._module.DoublyLinkedList Tagclass._module.Node Tagclass._module.DoublyLinkedList? Tagclass._module.Node? class._module.Node? class._module.DoublyLinkedList? tytagFamily$DoublyLinkedList tytagFamily$Node field$Nodes field$L field$R)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Node?)  (or (= $o null) (= (dtype $o) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |630|
 :pattern ( ($Is refType $o Tclass._module.Node?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.DoublyLinkedList?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.DoublyLinkedList?)))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($Is refType $o@@0 Tclass._module.DoublyLinkedList?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Node $h) ($IsAlloc refType |c#0| Tclass._module.Node? $h))
 :qid |unknown.0:0|
 :skolemid |637|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.DoublyLinkedList $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.DoublyLinkedList? $h@@0))
 :qid |unknown.0:0|
 :skolemid |794|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.DoublyLinkedList $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.DoublyLinkedList? $h@@0))
)))
(assert (= (FDim _module.DoublyLinkedList.Nodes) 0))
(assert (= (FieldOfDecl class._module.DoublyLinkedList? field$Nodes) _module.DoublyLinkedList.Nodes))
(assert ($IsGhostField _module.DoublyLinkedList.Nodes))
(assert (= (FDim _module.Node.L) 0))
(assert (= (FieldOfDecl class._module.Node? field$L) _module.Node.L))
(assert  (not ($IsGhostField _module.Node.L)))
(assert (= (FDim _module.Node.R) 0))
(assert (= (FieldOfDecl class._module.Node? field$R) _module.Node.R))
(assert  (not ($IsGhostField _module.Node.R)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Node? $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Node? $h@@1))
)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.DoublyLinkedList? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.DoublyLinkedList? $h@@2))
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
(assert ($IsGhostField alloc))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall (($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.Node.L)) Tclass._module.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |632|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.Node.L)))
)))
(assert (forall (($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.Node.R)) Tclass._module.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |634|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.Node.R)))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.DoublyLinkedList))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@5 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (or (= $o@@5 this) (exists (($i Int) ) (!  (and (and (<= 0 $i) (< $i (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.DoublyLinkedList.Nodes))))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.DoublyLinkedList.Nodes)) $i) ($Box refType $o@@5)))
 :qid |Problem3dfy.63:19|
 :skolemid |642|
)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@5) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@5) $f)))
 :qid |unknown.0:0|
 :skolemid |643|
)) (= (_module.DoublyLinkedList.Valid $h0 this) (_module.DoublyLinkedList.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |644|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.DoublyLinkedList.Valid $h1 this))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.DoublyLinkedList) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.DoublyLinkedList)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsBox bx@@0 Tclass._module.DoublyLinkedList))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Node) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Node)))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($IsBox bx@@1 Tclass._module.Node))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.DoublyLinkedList?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.DoublyLinkedList?)))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsBox bx@@2 Tclass._module.DoublyLinkedList?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Node?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( ($IsBox bx@@3 Tclass._module.Node?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Node)  (and ($Is refType |c#0@@1| Tclass._module.Node?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |636|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Node))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Node?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.DoublyLinkedList)  (and ($Is refType |c#0@@2| Tclass._module.DoublyLinkedList?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |793|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.DoublyLinkedList))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.DoublyLinkedList?))
)))
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.Node.L)) Tclass._module.Node? $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |633|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.Node.L)))
)))
(assert (forall (($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.Node.R)) Tclass._module.Node? $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |635|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.Node.R)))
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
(assert (forall (($h@@7 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.DoublyLinkedList?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.DoublyLinkedList.Nodes)) (TSeq Tclass._module.Node)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |640|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.DoublyLinkedList.Nodes)))
)))
(assert (forall (($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.DoublyLinkedList?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.DoublyLinkedList.Nodes)) (TSeq Tclass._module.Node) $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |641|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.DoublyLinkedList.Nodes)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a b))
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
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i@@0) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@2 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert (forall ((bx@@4 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@4 (TSeq t@@5)))
)))
(assert (= (Tag Tclass._module.DoublyLinkedList) Tagclass._module.DoublyLinkedList))
(assert (= (TagFamily Tclass._module.DoublyLinkedList) tytagFamily$DoublyLinkedList))
(assert (= (Tag Tclass._module.Node) Tagclass._module.Node))
(assert (= (TagFamily Tclass._module.Node) tytagFamily$Node))
(assert (= (Tag Tclass._module.DoublyLinkedList?) Tagclass._module.DoublyLinkedList?))
(assert (= (TagFamily Tclass._module.DoublyLinkedList?) tytagFamily$DoublyLinkedList))
(assert (= (Tag Tclass._module.Node?) Tagclass._module.Node?))
(assert (= (TagFamily Tclass._module.Node?) tytagFamily$Node))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.DoublyLinkedList.Valid#canCall| $Heap this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.DoublyLinkedList) ($IsAlloc refType this@@0 Tclass._module.DoublyLinkedList $Heap)))))) (= (_module.DoublyLinkedList.Valid $Heap this@@0)  (and (=> (> (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes))) 0) (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes)) (LitInt 0)))) _module.Node.L)) null) (forall ((|i#0| Int) ) (!  (=> (and (<= (LitInt 1) |i#0|) (< |i#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes))))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes)) |i#0|))) _module.Node.L)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes)) (- |i#0| 1)))))
 :qid |Problem3dfy.67:37|
 :skolemid |647|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes)) |i#0|))) _module.Node.L)))
))) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes))) 1))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes)) |i#1|))) _module.Node.R)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes)) (+ |i#1| 1)))))
 :qid |Problem3dfy.68:15|
 :skolemid |648|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes)) |i#1|))) _module.Node.R)))
))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes)) (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes))) 1)))) _module.Node.R)) null))) (forall ((|i#2| Int) (|j#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#2|) (< |i#2| |j#0|)) (< |j#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes))))) (or (not (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes)) |i#2|)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes)) |j#0|)))) (not true)))
 :qid |Problem3dfy.70:12|
 :skolemid |649|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes)) |j#0|)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.DoublyLinkedList.Nodes)) |i#2|)))
)))))
 :qid |Problem3dfy.63:19|
 :skolemid |654|
 :pattern ( (_module.DoublyLinkedList.Valid $Heap this@@0) ($IsGoodHeap $Heap))
))))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| Int) (|l#5| Int) (|l#6| T@U) ($o@@10 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) $o@@10 $f@@0))  (=> (and (or (not (= $o@@10 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@10) |l#2|)))) (or (= $o@@10 |l#3|) (exists (($i@@0 Int) ) (!  (and (and (<= |l#4| $i@@0) (< $i@@0 |l#5|)) (= (|Seq#Index| |l#6| $i@@0) ($Box refType $o@@10)))
 :qid |Problem3dfy.9:8|
 :skolemid |530|
)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |795|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6|) $o@@10 $f@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@3 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@3 (TSeq t0@@2)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |xs#0| () T@U)
(declare-fun |dd#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |j#0@0| () Int)
(declare-fun |x#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.TestMany)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon11_correct  (=> (forall ((|i#1@@0| Int) (|j#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| |j#1|)) (< |j#1| (|Seq#Length| |xs#0|))) (or (not (= ($Unbox refType (|Seq#Index| |xs#0| |i#1@@0|)) ($Unbox refType (|Seq#Index| |xs#0| |j#1|)))) (not true)))
 :qid |Problem3dfy.23:19|
 :skolemid |569|
 :pattern ( ($Unbox refType (|Seq#Index| |xs#0| |j#1|)) ($Unbox refType (|Seq#Index| |xs#0| |i#1@@0|)))
)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= |dd#0| null)) (not true))) (=> (or (not (= |dd#0| null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@11) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@11)) (or (= $o@@11 |dd#0|) (exists (($i@@1 Int) ) (!  (and (and (<= 0 $i@@1) (< $i@@1 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes))))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)) $i@@1) ($Box refType $o@@11)))
 :qid |Problem3dfy.20:8|
 :skolemid |570|
)))))
 :qid |Problem3dfy.20:8|
 :skolemid |571|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11))
)) ($HeapSucc $Heap@@0 $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |dd#0| null)) (not true))) (=> (or (not (= |dd#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |dd#0|) Tclass._module.DoublyLinkedList? $Heap@0) (=> (and (|_module.DoublyLinkedList.Valid#canCall| $Heap@0 |dd#0|) (_module.DoublyLinkedList.Valid $Heap@0 |dd#0|)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |dd#0| null)) (not true))) (=> (or (not (= |dd#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |dd#0| null)) (not true))) (=> (or (not (= |dd#0| null)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) ($IsAlloc refType |dd#0| Tclass._module.DoublyLinkedList $Heap@@0))))))))))))))))
(let ((anon9_correct  (=> (and (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| |j#0@0|)) (< |j#0@0| (|Seq#Length| |xs#0|))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |xs#0|)))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| |xs#0|))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (<= 0 |j#0@0|) (< |j#0@0| (|Seq#Length| |xs#0|)))) (=> (and (<= 0 |j#0@0|) (< |j#0@0| (|Seq#Length| |xs#0|))) (=> (and (or (not (= ($Unbox refType (|Seq#Index| |xs#0| |i#0@0|)) ($Unbox refType (|Seq#Index| |xs#0| |j#0@0|)))) (not true)) (= (ControlFlow 0 8) 2)) anon11_correct))))))))
(let ((anon15_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| |j#0@0|))) (= (ControlFlow 0 12) 8)) anon9_correct)))
(let ((anon15_Then_correct  (=> (and (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| |j#0@0|)) (= (ControlFlow 0 11) 8)) anon9_correct)))
(let ((anon14_Else_correct  (=> (< |i#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 14) 11) anon15_Then_correct) (=> (= (ControlFlow 0 14) 12) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (<= (LitInt 0) |i#0@0|) (and (=> (= (ControlFlow 0 13) 11) anon15_Then_correct) (=> (= (ControlFlow 0 13) 12) anon15_Else_correct)))))
(let ((anon13_Else_correct  (=> (and (=> (and (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| |j#0@0|)) (< |j#0@0| (|Seq#Length| |xs#0|))) (or (not (= ($Unbox refType (|Seq#Index| |xs#0| |i#0@0|)) ($Unbox refType (|Seq#Index| |xs#0| |j#0@0|)))) (not true))) (= (ControlFlow 0 7) 2)) anon11_correct)))
(let ((anon4_correct  (=> (forall ((|x#1| T@U) ) (!  (=> ($Is refType |x#1| Tclass._module.Node) (and (and (=> (|Seq#Contains| |xs#0| ($Box refType |x#1|)) (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)) ($Box refType |x#1|))) (=> (|Seq#Contains| |xs#0| ($Box refType |x#1|)) (or (not (= |x#1| ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)) (LitInt 0))))) (not true)))) (=> (|Seq#Contains| |xs#0| ($Box refType |x#1|)) (or (not (= |x#1| ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)) (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes))) 1))))) (not true)))))
 :qid |Problem3dfy.22:19|
 :skolemid |568|
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)) ($Box refType |x#1|)))
 :pattern ( (|Seq#Contains| |xs#0| ($Box refType |x#1|)))
)) (and (and (=> (= (ControlFlow 0 15) 7) anon13_Else_correct) (=> (= (ControlFlow 0 15) 13) anon14_Then_correct)) (=> (= (ControlFlow 0 15) 14) anon14_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (=> (|Seq#Contains| |xs#0| ($Box refType |x#0@0|)) (and (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)) ($Box refType |x#0@0|)) (or (not (= |x#0@0| ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)) (LitInt 0))))) (not true))) (or (not (= |x#0@0| ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)) (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes))) 1))))) (not true)))) (= (ControlFlow 0 23) 15)) anon4_correct)))
(let ((anon12_Then_correct  (=> (|Seq#Contains| |xs#0| ($Box refType |x#0@0|)) (and (=> (= (ControlFlow 0 16) (- 0 22)) (or (not (= |dd#0| null)) (not true))) (=> (or (not (= |dd#0| null)) (not true)) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)) ($Box refType |x#0@0|)) (and (=> (= (ControlFlow 0 16) (- 0 21)) (or (not (= |dd#0| null)) (not true))) (=> (or (not (= |dd#0| null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 20)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes))))) (=> (or (not (= |x#0@0| ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)) (LitInt 0))))) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 19)) (or (not (= |dd#0| null)) (not true))) (=> (or (not (= |dd#0| null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 18)) (or (not (= |dd#0| null)) (not true))) (=> (or (not (= |dd#0| null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (and (<= 0 (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes))) 1)) (< (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes))) 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)))))) (=> (and (<= 0 (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes))) 1)) (< (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes))) 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes))))) (=> (and (or (not (= |x#0@0| ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)) (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes))) 1))))) (not true)) (= (ControlFlow 0 16) 15)) anon4_correct))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc |dd#0| 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |dd#0|) _module.DoublyLinkedList.Nodes)))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (or (not (= |dd#0| null)) (not true))) (=> (or (not (= |dd#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |dd#0|) Tclass._module.DoublyLinkedList? $Heap@@0) (=> (and (and (|_module.DoublyLinkedList.Valid#canCall| $Heap@@0 |dd#0|) (_module.DoublyLinkedList.Valid $Heap@@0 |dd#0|)) (and ($Is refType |x#0@0| Tclass._module.Node) ($IsAlloc refType |x#0@0| Tclass._module.Node $Heap@@0))) (and (=> (= (ControlFlow 0 24) 16) anon12_Then_correct) (=> (= (ControlFlow 0 24) 23) anon12_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and ($Is refType |dd#0| Tclass._module.DoublyLinkedList) ($IsAlloc refType |dd#0| Tclass._module.DoublyLinkedList $Heap@@0))) (and (and ($Is SeqType |xs#0| (TSeq Tclass._module.Node)) ($IsAlloc SeqType |xs#0| (TSeq Tclass._module.Node) $Heap@@0)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 26) 24)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
