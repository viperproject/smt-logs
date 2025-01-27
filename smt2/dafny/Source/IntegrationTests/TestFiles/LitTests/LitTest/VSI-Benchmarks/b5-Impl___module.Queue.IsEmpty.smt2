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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._module.Queue? () T@U)
(declare-fun Tagclass._module.Queue? () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun Tagclass._module.Queue () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun class._module.Node? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Queue () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$head () T@U)
(declare-fun field$tail () T@U)
(declare-fun field$contents () T@U)
(declare-fun field$footprint () T@U)
(declare-fun field$spine () T@U)
(declare-fun field$next () T@U)
(declare-fun field$tailContents () T@U)
(declare-fun field$data () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Queue (T@U) T@U)
(declare-fun Tclass._module.Queue? (T@U) T@U)
(declare-fun Tclass._module.Node (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun _module.Queue.contents () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Queue.footprint () T@U)
(declare-fun _module.Queue.spine () T@U)
(declare-fun _module.Node.footprint () T@U)
(declare-fun _module.Node.tailContents () T@U)
(declare-fun _module.Queue.head () T@U)
(declare-fun _module.Queue.tail () T@U)
(declare-fun _module.Node.next () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Node.Valid (T@U T@U T@U) Bool)
(declare-fun |_module.Node.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Queue?_0 (T@U) T@U)
(declare-fun Tclass._module.Node_0 (T@U) T@U)
(declare-fun Tclass._module.Queue_0 (T@U) T@U)
(declare-fun Tclass._module.Node?_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun _module.Queue.Valid (T@U T@U T@U) Bool)
(declare-fun |_module.Queue.Valid#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Queue? Tagclass._module.Queue? Tagclass._module.Node Tagclass._module.Queue Tagclass._module.Node? class._module.Node? tytagFamily$object tytagFamily$Queue tytagFamily$Node field$head field$tail field$contents field$footprint field$spine field$next field$tailContents field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
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
 :skolemid |684|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.Node.data) (Tclass._module.Node? _module.Node$T))
)))
(assert (forall ((_module.Node$T@@0 T@U) ($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.Node? _module.Node$T@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.Node.data) _module.Node$T@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.Node.data) (Tclass._module.Node? _module.Node$T@@0))
)))
(assert (forall ((_module.Queue$T T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Queue _module.Queue$T) $h@@1) ($IsAlloc refType |c#0| (Tclass._module.Queue? _module.Queue$T) $h@@1))
 :qid |unknown.0:0|
 :skolemid |681|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Queue _module.Queue$T) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Queue? _module.Queue$T) $h@@1))
)))
(assert (forall ((_module.Node$T@@1 T@U) (|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.Node _module.Node$T@@1) $h@@2) ($IsAlloc refType |c#0@@0| (Tclass._module.Node? _module.Node$T@@1) $h@@2))
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Node _module.Node$T@@1) $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Node? _module.Node$T@@1) $h@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@3))
)))
(assert (= (FDim _module.Queue.contents) 0))
(assert (= (FieldOfDecl class._module.Queue? field$contents) _module.Queue.contents))
(assert ($IsGhostField _module.Queue.contents))
(assert (= (FDim _module.Queue.footprint) 0))
(assert (= (FieldOfDecl class._module.Queue? field$footprint) _module.Queue.footprint))
(assert ($IsGhostField _module.Queue.footprint))
(assert (= (FDim _module.Queue.spine) 0))
(assert (= (FieldOfDecl class._module.Queue? field$spine) _module.Queue.spine))
(assert ($IsGhostField _module.Queue.spine))
(assert (= (FDim _module.Node.footprint) 0))
(assert (= (FieldOfDecl class._module.Node? field$footprint) _module.Node.footprint))
(assert ($IsGhostField _module.Node.footprint))
(assert (= (FDim _module.Node.tailContents) 0))
(assert (= (FieldOfDecl class._module.Node? field$tailContents) _module.Node.tailContents))
(assert ($IsGhostField _module.Node.tailContents))
(assert (forall ((_module.Queue$T@@0 T@U) ($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._module.Queue? _module.Queue$T@@0) $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._module.Queue? _module.Queue$T@@0) $h@@4))
)))
(assert (forall ((_module.Node$T@@2 T@U) ($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._module.Node? _module.Node$T@@2) $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |683|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._module.Node? _module.Node$T@@2) $h@@5))
)))
(assert (= (FDim _module.Queue.head) 0))
(assert (= (FieldOfDecl class._module.Queue? field$head) _module.Queue.head))
(assert  (not ($IsGhostField _module.Queue.head)))
(assert (= (FDim _module.Queue.tail) 0))
(assert (= (FieldOfDecl class._module.Queue? field$tail) _module.Queue.tail))
(assert  (not ($IsGhostField _module.Queue.tail)))
(assert (= (FDim _module.Node.next) 0))
(assert (= (FieldOfDecl class._module.Node? field$next) _module.Node.next))
(assert  (not ($IsGhostField _module.Node.next)))
(assert (= (FDim _module.Node.data) 0))
(assert (= (FieldOfDecl class._module.Node? field$data) _module.Node.data))
(assert  (not ($IsGhostField _module.Node.data)))
(assert (forall (($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._System.object? $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._System.object? $h@@6))
)))
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
(assert (= (Ctor SeqType) 7))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SetType) 8))
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
(assert (forall ((_module.Queue$T@@1 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.Queue _module.Queue$T@@1))  (and ($Is refType |c#0@@2| (Tclass._module.Queue? _module.Queue$T@@1)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Queue _module.Queue$T@@1)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Queue? _module.Queue$T@@1)))
)))
(assert (forall ((_module.Node$T@@3 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.Node _module.Node$T@@3))  (and ($Is refType |c#0@@3| (Tclass._module.Node? _module.Node$T@@3)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Node _module.Node$T@@3)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.Node? _module.Node$T@@3)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h) ($IsAlloc T@@1 v@@1 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h))
)))
(assert (forall ((_module.Queue$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Queue? _module.Queue$T@@2)) Tagclass._module.Queue?) (= (TagFamily (Tclass._module.Queue? _module.Queue$T@@2)) tytagFamily$Queue))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.Queue? _module.Queue$T@@2))
)))
(assert (forall ((_module.Node$T@@4 T@U) ) (!  (and (= (Tag (Tclass._module.Node _module.Node$T@@4)) Tagclass._module.Node) (= (TagFamily (Tclass._module.Node _module.Node$T@@4)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Tclass._module.Node _module.Node$T@@4))
)))
(assert (forall ((_module.Queue$T@@3 T@U) ) (!  (and (= (Tag (Tclass._module.Queue _module.Queue$T@@3)) Tagclass._module.Queue) (= (TagFamily (Tclass._module.Queue _module.Queue$T@@3)) tytagFamily$Queue))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( (Tclass._module.Queue _module.Queue$T@@3))
)))
(assert (forall ((_module.Node$T@@5 T@U) ) (!  (and (= (Tag (Tclass._module.Node? _module.Node$T@@5)) Tagclass._module.Node?) (= (TagFamily (Tclass._module.Node? _module.Node$T@@5)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (Tclass._module.Node? _module.Node$T@@5))
)))
(assert (forall ((_module.Queue$T@@4 T@U) ($h@@7 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._module.Queue? _module.Queue$T@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) _module.Queue.head)) (Tclass._module.Node _module.Queue$T@@4) $h@@7))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) _module.Queue.head)) (Tclass._module.Queue? _module.Queue$T@@4))
)))
(assert (forall ((_module.Queue$T@@5 T@U) ($h@@8 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.Queue? _module.Queue$T@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) _module.Queue.tail)) (Tclass._module.Node _module.Queue$T@@5) $h@@8))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@5) _module.Queue.tail)) (Tclass._module.Queue? _module.Queue$T@@5))
)))
(assert (forall ((_module.Queue$T@@6 T@U) ($h@@9 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.Queue? _module.Queue$T@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@6) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@6) _module.Queue.contents)) (TSeq _module.Queue$T@@6) $h@@9))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@6) _module.Queue.contents)) (Tclass._module.Queue? _module.Queue$T@@6))
)))
(assert (forall ((_module.Node$T@@6 T@U) ($h@@10 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.Node? _module.Node$T@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@7) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@7) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@6) $h@@10))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@7) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@6))
)))
(assert (forall ((_module.Node$T@@7 T@U) ($h@@11 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._module.Node? _module.Node$T@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@8) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@8) _module.Node.tailContents)) (TSeq _module.Node$T@@7) $h@@11))
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@8) _module.Node.tailContents)) (Tclass._module.Node? _module.Node$T@@7))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
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
(assert (forall ((_module.Queue$T@@7 T@U) ($o@@9 T@U) ) (! (= ($Is refType $o@@9 (Tclass._module.Queue? _module.Queue$T@@7))  (or (= $o@@9 null) (= (dtype $o@@9) (Tclass._module.Queue? _module.Queue$T@@7))))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@9 (Tclass._module.Queue? _module.Queue$T@@7)))
)))
(assert (forall ((_module.Node$T@@8 T@U) ($o@@10 T@U) ) (! (= ($Is refType $o@@10 (Tclass._module.Node? _module.Node$T@@8))  (or (= $o@@10 null) (= (dtype $o@@10) (Tclass._module.Node? _module.Node$T@@8))))
 :qid |unknown.0:0|
 :skolemid |682|
 :pattern ( ($Is refType $o@@10 (Tclass._module.Node? _module.Node$T@@8)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i))
)))
(assert (forall ((_module.Queue$T@@8 T@U) ($h@@12 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._module.Queue? _module.Queue$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) _module.Queue.spine)) (TSet (Tclass._module.Node _module.Queue$T@@8)) $h@@12))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) _module.Queue.spine)) (Tclass._module.Queue? _module.Queue$T@@8))
)))
(assert (forall ((_module.Queue$T@@9 T@U) ($h@@13 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._module.Queue? _module.Queue$T@@9)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@12) _module.Queue.footprint)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@12) _module.Queue.footprint)) (Tclass._module.Queue? _module.Queue$T@@9))
)))
(assert (forall ((_module.Node$T@@9 T@U) ($h@@14 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._module.Node? _module.Node$T@@9)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@13) _module.Node.footprint)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@13) _module.Node.footprint)) (Tclass._module.Node? _module.Node$T@@9))
)))
(assert (forall ((_module.Queue$T@@10 T@U) ($h@@15 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._module.Queue? _module.Queue$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) _module.Queue.footprint)) (TSet Tclass._System.object) $h@@15))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) _module.Queue.footprint)) (Tclass._module.Queue? _module.Queue$T@@10))
)))
(assert (forall ((_module.Node$T@@10 T@U) ($h@@16 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.Node? _module.Node$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) _module.Node.footprint)) (TSet Tclass._System.object) $h@@16))
 :qid |unknown.0:0|
 :skolemid |691|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) _module.Node.footprint)) (Tclass._module.Node? _module.Node$T@@10))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Node$T@@11 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Node.Valid#canCall| _module.Node$T@@11 $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.Node _module.Node$T@@11)) ($IsAlloc refType this (Tclass._module.Node _module.Node$T@@11) $Heap)))))) (= (_module.Node.Valid _module.Node$T@@11 $Heap this)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.footprint)) ($Box refType this)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next)) null)) (not true)) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.footprint)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next))) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.footprint)))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next)) null) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.tailContents)) |Seq#Empty|))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.tailContents)) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next))) _module.Node.data)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next))) _module.Node.tailContents))))))))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( (_module.Node.Valid _module.Node$T@@11 $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@1) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@4 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@1) h@@0))
)))
(assert (forall (($o@@16 T@U) ) (! ($Is refType $o@@16 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@16 Tclass._System.object?))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@2) h@@1) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@0) t0@@2 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@2) h@@1))
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
(assert (forall ((_module.Queue$T@@11 T@U) ) (! (= (Tclass._module.Queue?_0 (Tclass._module.Queue? _module.Queue$T@@11)) _module.Queue$T@@11)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.Queue? _module.Queue$T@@11))
)))
(assert (forall ((_module.Node$T@@12 T@U) ) (! (= (Tclass._module.Node_0 (Tclass._module.Node _module.Node$T@@12)) _module.Node$T@@12)
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Tclass._module.Node _module.Node$T@@12))
)))
(assert (forall ((_module.Queue$T@@12 T@U) ) (! (= (Tclass._module.Queue_0 (Tclass._module.Queue _module.Queue$T@@12)) _module.Queue$T@@12)
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Tclass._module.Queue _module.Queue$T@@12))
)))
(assert (forall ((_module.Node$T@@13 T@U) ) (! (= (Tclass._module.Node?_0 (Tclass._module.Node? _module.Node$T@@13)) _module.Node$T@@13)
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( (Tclass._module.Node? _module.Node$T@@13))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@17 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@17 $f))  (=> (and (or (not (= $o@@17 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@17) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |767|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@17 $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((_module.Queue$T@@13 T@U) ($h@@17 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._module.Queue? _module.Queue$T@@13)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) _module.Queue.head)) (Tclass._module.Node _module.Queue$T@@13)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@18) _module.Queue.head)) (Tclass._module.Queue? _module.Queue$T@@13))
)))
(assert (forall ((_module.Queue$T@@14 T@U) ($h@@18 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._module.Queue? _module.Queue$T@@14)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) _module.Queue.tail)) (Tclass._module.Node _module.Queue$T@@14)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@19) _module.Queue.tail)) (Tclass._module.Queue? _module.Queue$T@@14))
)))
(assert (forall ((_module.Queue$T@@15 T@U) ($h@@19 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._module.Queue? _module.Queue$T@@15)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@20) _module.Queue.contents)) (TSeq _module.Queue$T@@15)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@20) _module.Queue.contents)) (Tclass._module.Queue? _module.Queue$T@@15))
)))
(assert (forall ((_module.Node$T@@14 T@U) ($h@@20 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._module.Node? _module.Node$T@@14)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@21) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@14)))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@21) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@14))
)))
(assert (forall ((_module.Node$T@@15 T@U) ($h@@21 T@U) ($o@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._module.Node? _module.Node$T@@15)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@22) _module.Node.tailContents)) (TSeq _module.Node$T@@15)))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@22) _module.Node.tailContents)) (Tclass._module.Node? _module.Node$T@@15))
)))
(assert (forall ((bx@@4 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@6)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@6))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@6)))
)))
(assert (forall ((bx@@5 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@5 (TSeq t@@7)) (and (= ($Box SeqType ($Unbox SeqType bx@@5)) bx@@5) ($Is SeqType ($Unbox SeqType bx@@5) (TSeq t@@7))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@5 (TSeq t@@7)))
)))
(assert (forall ((_module.Queue$T@@16 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.Queue? _module.Queue$T@@16)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._module.Queue? _module.Queue$T@@16))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@6 (Tclass._module.Queue? _module.Queue$T@@16)))
)))
(assert (forall ((_module.Node$T@@16 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.Node _module.Node$T@@16)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.Node _module.Node$T@@16))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@7 (Tclass._module.Node _module.Node$T@@16)))
)))
(assert (forall ((_module.Queue$T@@17 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.Queue _module.Queue$T@@17)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._module.Queue _module.Queue$T@@17))))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsBox bx@@8 (Tclass._module.Queue _module.Queue$T@@17)))
)))
(assert (forall ((_module.Node$T@@17 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.Node? _module.Node$T@@17)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.Node? _module.Node$T@@17))))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( ($IsBox bx@@9 (Tclass._module.Node? _module.Node$T@@17)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((_module.Queue$T@@18 T@U) ($h@@22 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass._module.Queue? _module.Queue$T@@18)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@23) _module.Queue.spine)) (TSet (Tclass._module.Node _module.Queue$T@@18))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@23) _module.Queue.spine)) (Tclass._module.Queue? _module.Queue$T@@18))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.Queue$T@@19 T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Queue.Valid#canCall| _module.Queue$T@@19 $Heap@@0 this@@0) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.Queue _module.Queue$T@@19)) ($IsAlloc refType this@@0 (Tclass._module.Queue _module.Queue$T@@19) $Heap@@0)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.footprint)) ($Box refType this@@0)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.footprint))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.head)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.tail)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.tail))) _module.Node.next)) null) (forall ((|n#0| T@U) ) (!  (=> ($Is refType |n#0| (Tclass._module.Node _module.Queue$T@@19)) (=> (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) ($Box refType |n#0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.footprint)))) (=> (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) ($Box refType |n#0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0|) _module.Node.footprint)) ($Box refType this@@0)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) ($Box refType |n#0|)) (|_module.Node.Valid#canCall| _module.Queue$T@@19 $Heap@@0 |n#0|)))))
 :qid |b5dfy.19:13|
 :skolemid |506|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Queue$T@@19 $Heap@@0 |n#0|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) ($Box refType |n#0|)))
))))))) (= (_module.Queue.Valid _module.Queue$T@@19 $Heap@@0 this@@0)  (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.footprint)) ($Box refType this@@0)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.footprint)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.head))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.tail))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.tail))) _module.Node.next)) null)) (forall ((|n#0@@0| T@U) ) (!  (=> ($Is refType |n#0@@0| (Tclass._module.Node _module.Queue$T@@19)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) ($Box refType |n#0@@0|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) ($Box refType |n#0@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.Node.footprint)) ($Box refType this@@0))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) ($Box refType |n#0@@0|)) (_module.Node.Valid _module.Queue$T@@19 $Heap@@0 |n#0@@0|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) ($Box refType |n#0@@0|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.Node.next)) null) (= |n#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.tail)))))))
 :qid |b5dfy.19:13|
 :skolemid |504|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Queue$T@@19 $Heap@@0 |n#0@@0|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) ($Box refType |n#0@@0|)))
))) (forall ((|n#1| T@U) ) (!  (=> ($Is refType |n#1| (Tclass._module.Node _module.Queue$T@@19)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) ($Box refType |n#1|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#1|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#1|) _module.Node.next)))))
 :qid |b5dfy.24:13|
 :skolemid |505|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#1|) _module.Node.next)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.head))) _module.Node.tailContents)))))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( (_module.Queue.Valid _module.Queue$T@@19 $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |isEmpty#0@0| () Bool)
(declare-fun this@@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Queue$T@@20 () T@U)
(set-info :boogie-vc-id Impl$$_module.Queue.IsEmpty)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@1 alloc false)) (=> (and (= |isEmpty#0@0| (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.head)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.tail)))) (= (ControlFlow 0 2) (- 0 1))) (= |isEmpty#0@0| (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.contents))) (LitInt 0)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass._module.Queue _module.Queue$T@@20)) ($IsAlloc refType this@@1 (Tclass._module.Queue _module.Queue$T@@20) $Heap@@1))) (= 2 $FunctionContextHeight)) (and (and (|_module.Queue.Valid#canCall| _module.Queue$T@@20 $Heap@@1 this@@1) (and (_module.Queue.Valid _module.Queue$T@@20 $Heap@@1 this@@1) (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.footprint)) ($Box refType this@@1)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.spine)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.footprint)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.head))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.tail))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.tail))) _module.Node.next)) null)) (forall ((|n#2| T@U) ) (!  (=> ($Is refType |n#2| (Tclass._module.Node _module.Queue$T@@20)) (and (and (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.spine)) ($Box refType |n#2|)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#2|) _module.Node.footprint)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.footprint)))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.spine)) ($Box refType |n#2|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#2|) _module.Node.footprint)) ($Box refType this@@1))))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.spine)) ($Box refType |n#2|)) (_module.Node.Valid _module.Queue$T@@20 $Heap@@1 |n#2|))) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.spine)) ($Box refType |n#2|)) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#2|) _module.Node.next)) null) (= |n#2| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.tail)))))))
 :qid |b5dfy.19:13|
 :skolemid |550|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#2|) _module.Node.next)))
 :pattern ( (_module.Node.Valid _module.Queue$T@@20 $Heap@@1 |n#2|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#2|) _module.Node.footprint)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.spine)) ($Box refType |n#2|)))
))) (forall ((|n#3| T@U) ) (!  (=> ($Is refType |n#3| (Tclass._module.Node _module.Queue$T@@20)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.spine)) ($Box refType |n#3|)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#3|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.spine)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#3|) _module.Node.next)))))
 :qid |b5dfy.24:13|
 :skolemid |551|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#3|) _module.Node.next)))
))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Queue.head))) _module.Node.tailContents)))))) (= (ControlFlow 0 3) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
