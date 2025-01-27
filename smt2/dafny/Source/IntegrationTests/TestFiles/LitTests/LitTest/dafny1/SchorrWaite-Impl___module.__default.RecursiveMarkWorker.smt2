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
(declare-fun class._module.Node? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Node () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Node? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Node () T@U)
(declare-fun _module.Node.children () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass._module.Node Tagclass._module.Node? class._module.Node? tytagFamily$nat tytagFamily$Node field$children field$marked field$childrenVisited)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
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
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
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
(assert (forall ((x@@5 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@5))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@5))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Node?)  (or (= $o null) (= (dtype $o) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |878|
 :pattern ( ($Is refType $o Tclass._module.Node?))
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
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Node $h@@0) ($IsAlloc refType |c#0| Tclass._module.Node? $h@@0))
 :qid |unknown.0:0|
 :skolemid |889|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node? $h@@0))
)))
(assert (= (FDim _module.Node.children) 0))
(assert (= (FieldOfDecl class._module.Node? field$children) _module.Node.children))
(assert  (not ($IsGhostField _module.Node.children)))
(assert (= (FDim _module.Node.marked) 0))
(assert (= (FieldOfDecl class._module.Node? field$marked) _module.Node.marked))
(assert  (not ($IsGhostField _module.Node.marked)))
(assert (= (FDim _module.Node.childrenVisited) 0))
(assert (= (FieldOfDecl class._module.Node? field$childrenVisited) _module.Node.childrenVisited))
(assert  (not ($IsGhostField _module.Node.childrenVisited)))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Node? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |879|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Node? $h@@1))
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
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
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
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@2 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) _module.Node.marked)) TBool $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |883|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) _module.Node.marked)))
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
(assert (forall (($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.Node?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.Node.childrenVisited)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |884|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.Node.childrenVisited)))
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
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Node)  (and ($Is refType |c#0@@0| Tclass._module.Node?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |888|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node?))
)))
(assert (forall (($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.Node.childrenVisited)) Tclass._System.nat $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |885|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.Node.childrenVisited)))
)))
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
(assert (forall ((s T@U) (x@@9 T@U) ) (! (= (|Seq#Contains| s x@@9) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s))) (= (|Seq#Index| s i) x@@9))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s i))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s x@@9))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Node?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.Node.children)) (TSeq Tclass._module.Node?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |880|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.Node.children)))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.Node.children)) (TSeq Tclass._module.Node?) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |881|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.Node.children)))
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
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TBool) (and (= ($Box boolType ($Unbox boolType bx@@4)) bx@@4) ($Is boolType ($Unbox boolType bx@@4) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@4 TBool))
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
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@5) ($IsAllocBox bx@@5 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
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
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.Node?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.Node.marked)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |882|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.Node.marked)))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert (forall ((bx@@6 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@6 (TSet t@@7)))
)))
(assert (forall ((bx@@7 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@7 (TSeq t@@8)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@7))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |910|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
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
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |S#0| () T@U)
(declare-fun |root#0| () T@U)
(declare-fun |n#0_4@0| () T@U)
(declare-fun |n#0_2@0| () T@U)
(declare-fun |i#0_0@1| () Int)
(declare-fun |j#0_0@0| () Int)
(declare-fun |stackNodes#0| () T@U)
(declare-fun |n#0_0@0| () T@U)
(declare-fun |ch#0_0@0| () T@U)
(declare-fun |$w$loop#0_0@0| () Bool)
(declare-fun |i#0_0@2| () Int)
(declare-fun |$decr$loop#0_00@1| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |c#0_0_0@1| () T@U)
(declare-fun |stackNodes##0_0_0_0@1| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@4 () T@U)
(declare-fun |c#0_0_0@0| () T@U)
(declare-fun |$rhs#0_0@0| () Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |$decr_init$loop#0_00@0| () Int)
(declare-fun |i#0_0@0| () Int)
(declare-fun |c#0_0_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.RecursiveMarkWorker)
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
 (=> (= (ControlFlow 0 0) 109) (let ((anon33_correct  (=> (and (forall ((|n#0_5| T@U) ) (!  (=> ($Is refType |n#0_5| Tclass._module.Node) (and (=> (|Set#IsMember| |S#0| ($Box refType |n#0_5|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_5|) _module.Node.childrenVisited))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5|) _module.Node.childrenVisited))))) (=> (|Set#IsMember| |S#0| ($Box refType |n#0_5|)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_5|) _module.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5|) _module.Node.children))))))
 :qid |SchorrWaitedfy.69:24|
 :skolemid |665|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_5|) _module.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5|) _module.Node.childrenVisited)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_5|) _module.Node.childrenVisited)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_5|)))
)) (= (ControlFlow 0 34) (- 0 33))) (or (not (= |root#0| null)) (not true)))))
(let ((anon62_Else_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_4@0|) _module.Node.childrenVisited))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_4@0|) _module.Node.childrenVisited))))) (not true)) (= (ControlFlow 0 41) 34)) anon33_correct)))
(let ((anon62_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_4@0|) _module.Node.childrenVisited))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_4@0|) _module.Node.childrenVisited)))) (and (=> (= (ControlFlow 0 37) (- 0 40)) (or (not (= |n#0_4@0| null)) (not true))) (and (=> (= (ControlFlow 0 37) (- 0 39)) (or (not (= |n#0_4@0| null)) (not true))) (and (=> (= (ControlFlow 0 37) (- 0 38)) ($IsAlloc refType |n#0_4@0| Tclass._module.Node $Heap)) (=> ($IsAlloc refType |n#0_4@0| Tclass._module.Node $Heap) (=> (= (ControlFlow 0 37) 34) anon33_correct))))))))
(let ((anon61_Then_correct  (=> (|Set#IsMember| |S#0| ($Box refType |n#0_4@0|)) (and (=> (= (ControlFlow 0 42) (- 0 45)) (or (not (= |n#0_4@0| null)) (not true))) (and (=> (= (ControlFlow 0 42) (- 0 44)) (or (not (= |n#0_4@0| null)) (not true))) (and (=> (= (ControlFlow 0 42) (- 0 43)) ($IsAlloc refType |n#0_4@0| Tclass._module.Node $Heap)) (=> ($IsAlloc refType |n#0_4@0| Tclass._module.Node $Heap) (and (=> (= (ControlFlow 0 42) 37) anon62_Then_correct) (=> (= (ControlFlow 0 42) 41) anon62_Else_correct)))))))))
(let ((anon61_Else_correct  (=> (and (not (|Set#IsMember| |S#0| ($Box refType |n#0_4@0|))) (= (ControlFlow 0 36) 34)) anon33_correct)))
(let ((anon60_Then_correct  (=> (and ($Is refType |n#0_4@0| Tclass._module.Node) ($IsAlloc refType |n#0_4@0| Tclass._module.Node $Heap@1)) (and (=> (= (ControlFlow 0 46) 42) anon61_Then_correct) (=> (= (ControlFlow 0 46) 36) anon61_Else_correct)))))
(let ((anon60_Else_correct  (=> (and (not (and ($Is refType |n#0_4@0| Tclass._module.Node) ($IsAlloc refType |n#0_4@0| Tclass._module.Node $Heap@1))) (= (ControlFlow 0 35) 34)) anon33_correct)))
(let ((anon29_correct  (=> (forall ((|n#0_3| T@U) ) (!  (=> ($Is refType |n#0_3| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_3|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_3|) _module.Node.marked)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_3|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.68:24|
 :skolemid |662|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_3|) _module.Node.marked)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_3|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_3|)))
)) (and (=> (= (ControlFlow 0 47) 46) anon60_Then_correct) (=> (= (ControlFlow 0 47) 35) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (and (not (and (|Set#IsMember| |S#0| ($Box refType |n#0_2@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_2@0|) _module.Node.marked))))) (= (ControlFlow 0 51) 47)) anon29_correct)))
(let ((anon59_Then_correct  (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_2@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_2@0|) _module.Node.marked)))) (and (=> (= (ControlFlow 0 49) (- 0 50)) (or (not (= |n#0_2@0| null)) (not true))) (=> (= (ControlFlow 0 49) 47) anon29_correct)))))
(let ((anon58_Else_correct  (=> (not (|Set#IsMember| |S#0| ($Box refType |n#0_2@0|))) (and (=> (= (ControlFlow 0 55) 49) anon59_Then_correct) (=> (= (ControlFlow 0 55) 51) anon59_Else_correct)))))
(let ((anon58_Then_correct  (=> (|Set#IsMember| |S#0| ($Box refType |n#0_2@0|)) (and (=> (= (ControlFlow 0 52) (- 0 54)) (or (not (= |n#0_2@0| null)) (not true))) (and (=> (= (ControlFlow 0 52) (- 0 53)) ($IsAlloc refType |n#0_2@0| Tclass._module.Node $Heap)) (=> ($IsAlloc refType |n#0_2@0| Tclass._module.Node $Heap) (and (=> (= (ControlFlow 0 52) 49) anon59_Then_correct) (=> (= (ControlFlow 0 52) 51) anon59_Else_correct))))))))
(let ((anon57_Then_correct  (=> (and ($Is refType |n#0_2@0| Tclass._module.Node) ($IsAlloc refType |n#0_2@0| Tclass._module.Node $Heap@1)) (and (=> (= (ControlFlow 0 56) 52) anon58_Then_correct) (=> (= (ControlFlow 0 56) 55) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (not (and ($Is refType |n#0_2@0| Tclass._module.Node) ($IsAlloc refType |n#0_2@0| Tclass._module.Node $Heap@1))) (= (ControlFlow 0 48) 47)) anon29_correct)))
(let ((anon24_correct  (=> (forall ((|j#0_1| Int) ) (!  (=> (and (<= (LitInt 0) |j#0_1|) (< |j#0_1| |i#0_0@1|)) (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)) |j#0_1|)) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)) |j#0_1|))) _module.Node.marked)))))
 :qid |SchorrWaitedfy.66:24|
 :skolemid |659|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)) |j#0_1|)))
)) (and (=> (= (ControlFlow 0 57) 56) anon57_Then_correct) (=> (= (ControlFlow 0 57) 48) anon57_Else_correct)))))
(let ((anon56_Else_correct  (=> (and (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)) |j#0_0@0|)) null) (= (ControlFlow 0 63) 57)) anon24_correct)))
(let ((anon56_Then_correct  (=> (or (not (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)) |j#0_0@0|)) null)) (not true)) (and (=> (= (ControlFlow 0 59) (- 0 62)) (or (not (= |root#0| null)) (not true))) (and (=> (= (ControlFlow 0 59) (- 0 61)) (and (<= 0 |j#0_0@0|) (< |j#0_0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)))))) (and (=> (= (ControlFlow 0 59) (- 0 60)) (or (not (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)) |j#0_0@0|)) null)) (not true))) (=> (= (ControlFlow 0 59) 57) anon24_correct)))))))
(let ((anon55_Then_correct  (=> (and (<= (LitInt 0) |j#0_0@0|) (< |j#0_0@0| |i#0_0@1|)) (and (=> (= (ControlFlow 0 64) (- 0 66)) (or (not (= |root#0| null)) (not true))) (and (=> (= (ControlFlow 0 64) (- 0 65)) (and (<= 0 |j#0_0@0|) (< |j#0_0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)))))) (and (=> (= (ControlFlow 0 64) 59) anon56_Then_correct) (=> (= (ControlFlow 0 64) 63) anon56_Else_correct)))))))
(let ((anon55_Else_correct  (=> (and (not (and (<= (LitInt 0) |j#0_0@0|) (< |j#0_0@0| |i#0_0@1|))) (= (ControlFlow 0 58) 57)) anon24_correct)))
(let ((anon54_Else_correct  (=> (< |j#0_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 68) 64) anon55_Then_correct) (=> (= (ControlFlow 0 68) 58) anon55_Else_correct)))))
(let ((anon54_Then_correct  (=> (<= (LitInt 0) |j#0_0@0|) (and (=> (= (ControlFlow 0 67) 64) anon55_Then_correct) (=> (= (ControlFlow 0 67) 58) anon55_Else_correct)))))
(let ((anon53_Then_correct  (and (=> (= (ControlFlow 0 69) 67) anon54_Then_correct) (=> (= (ControlFlow 0 69) 68) anon54_Else_correct))))
(let ((anon53_Else_correct true))
(let ((anon18_correct  (=> (forall ((|n#0_1| T@U) ) (!  (=> ($Is refType |n#0_1| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_1|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_1|) _module.Node.marked)))) (or (or (= |n#0_1| |root#0|) (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_1|))) (forall ((|ch#0_1| T@U) ) (!  (=> ($Is refType |ch#0_1| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_1|) _module.Node.children)) ($Box refType |ch#0_1|)) (or (not (= |ch#0_1| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#0_1|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.65:22|
 :skolemid |653|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#0_1|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_1|) _module.Node.children)) ($Box refType |ch#0_1|)))
)))))
 :qid |SchorrWaitedfy.62:24|
 :skolemid |654|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_1|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_1|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_1|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_1|)))
)) (and (=> (= (ControlFlow 0 70) 69) anon53_Then_correct) (=> (= (ControlFlow 0 70) 32) anon53_Else_correct)))))
(let ((anon52_Else_correct  (=> (and (not (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_0@0|) _module.Node.children)) ($Box refType |ch#0_0@0|)) (or (not (= |ch#0_0@0| null)) (not true)))) (= (ControlFlow 0 77) 70)) anon18_correct)))
(let ((anon52_Then_correct  (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_0@0|) _module.Node.children)) ($Box refType |ch#0_0@0|)) (or (not (= |ch#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 75) (- 0 76)) (or (not (= |ch#0_0@0| null)) (not true))) (=> (= (ControlFlow 0 75) 70) anon18_correct)))))
(let ((anon51_Else_correct  (=> (not (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_0@0|) _module.Node.children)) ($Box refType |ch#0_0@0|))) (and (=> (= (ControlFlow 0 79) 75) anon52_Then_correct) (=> (= (ControlFlow 0 79) 77) anon52_Else_correct)))))
(let ((anon51_Then_correct  (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_0@0|) _module.Node.children)) ($Box refType |ch#0_0@0|)) (and (=> (= (ControlFlow 0 78) 75) anon52_Then_correct) (=> (= (ControlFlow 0 78) 77) anon52_Else_correct)))))
(let ((anon50_Then_correct  (=> (and ($Is refType |ch#0_0@0| Tclass._module.Node?) ($IsAlloc refType |ch#0_0@0| Tclass._module.Node? $Heap@1)) (and (=> (= (ControlFlow 0 80) (- 0 81)) (or (not (= |n#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 80) 78) anon51_Then_correct) (=> (= (ControlFlow 0 80) 79) anon51_Else_correct))))))
(let ((anon50_Else_correct  (=> (and (not (and ($Is refType |ch#0_0@0| Tclass._module.Node?) ($IsAlloc refType |ch#0_0@0| Tclass._module.Node? $Heap@1))) (= (ControlFlow 0 74) 70)) anon18_correct)))
(let ((anon49_Then_correct  (=> (not (or (= |n#0_0@0| |root#0|) (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_0@0|)))) (and (=> (= (ControlFlow 0 82) 80) anon50_Then_correct) (=> (= (ControlFlow 0 82) 74) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (and (or (= |n#0_0@0| |root#0|) (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_0@0|))) (= (ControlFlow 0 73) 70)) anon18_correct)))
(let ((anon48_Else_correct  (=> (= |n#0_0@0| |root#0|) (and (=> (= (ControlFlow 0 84) 82) anon49_Then_correct) (=> (= (ControlFlow 0 84) 73) anon49_Else_correct)))))
(let ((anon48_Then_correct  (=> (or (not (= |n#0_0@0| |root#0|)) (not true)) (and (=> (= (ControlFlow 0 83) 82) anon49_Then_correct) (=> (= (ControlFlow 0 83) 73) anon49_Else_correct)))))
(let ((anon47_Then_correct  (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_0@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_0@0|) _module.Node.marked)))) (and (=> (= (ControlFlow 0 85) 83) anon48_Then_correct) (=> (= (ControlFlow 0 85) 84) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (and (not (and (|Set#IsMember| |S#0| ($Box refType |n#0_0@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_0@0|) _module.Node.marked))))) (= (ControlFlow 0 72) 70)) anon18_correct)))
(let ((anon46_Else_correct  (=> (not (|Set#IsMember| |S#0| ($Box refType |n#0_0@0|))) (and (=> (= (ControlFlow 0 88) 85) anon47_Then_correct) (=> (= (ControlFlow 0 88) 72) anon47_Else_correct)))))
(let ((anon46_Then_correct  (=> (|Set#IsMember| |S#0| ($Box refType |n#0_0@0|)) (and (=> (= (ControlFlow 0 86) (- 0 87)) (or (not (= |n#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 86) 85) anon47_Then_correct) (=> (= (ControlFlow 0 86) 72) anon47_Else_correct))))))
(let ((anon45_Then_correct  (=> (and ($Is refType |n#0_0@0| Tclass._module.Node) ($IsAlloc refType |n#0_0@0| Tclass._module.Node $Heap@1)) (and (=> (= (ControlFlow 0 89) 86) anon46_Then_correct) (=> (= (ControlFlow 0 89) 88) anon46_Else_correct)))))
(let ((anon45_Else_correct  (=> (and (not (and ($Is refType |n#0_0@0| Tclass._module.Node) ($IsAlloc refType |n#0_0@0| Tclass._module.Node $Heap@1))) (= (ControlFlow 0 71) 70)) anon18_correct)))
(let ((anon5_correct  (=> (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.marked))) (<= |i#0_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children))))) (and (=> (= (ControlFlow 0 90) 89) anon45_Then_correct) (=> (= (ControlFlow 0 90) 71) anon45_Else_correct)))))
(let ((anon44_Else_correct  (=> (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.marked)))) (= (ControlFlow 0 93) 90)) anon5_correct)))
(let ((anon44_Then_correct  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.marked))) (and (=> (= (ControlFlow 0 91) (- 0 92)) (or (not (= |root#0| null)) (not true))) (=> (= (ControlFlow 0 91) 90) anon5_correct)))))
(let ((anon43_Then_correct  (=> (not |$w$loop#0_0@0|) (and (=> (= (ControlFlow 0 94) (- 0 95)) (or (not (= |root#0| null)) (not true))) (and (=> (= (ControlFlow 0 94) 91) anon44_Then_correct) (=> (= (ControlFlow 0 94) 93) anon44_Else_correct))))))
(let ((anon39_correct  (=> (= |i#0_0@2| (+ |i#0_0@1| 1)) (and (=> (= (ControlFlow 0 10) (- 0 17)) (or (<= 0 |$decr$loop#0_00@1|) (= (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.children))) |i#0_0@2|) |$decr$loop#0_00@1|))) (=> (or (<= 0 |$decr$loop#0_00@1|) (= (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.children))) |i#0_0@2|) |$decr$loop#0_00@1|)) (and (=> (= (ControlFlow 0 10) (- 0 16)) (< (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.children))) |i#0_0@2|) |$decr$loop#0_00@1|)) (=> (< (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.children))) |i#0_0@2|) |$decr$loop#0_00@1|) (and (=> (= (ControlFlow 0 10) (- 0 15)) (=> |$w$loop#0_0@0| (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.marked))))) (=> (=> |$w$loop#0_0@0| (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.marked)))) (and (=> (= (ControlFlow 0 10) (- 0 14)) (=> |$w$loop#0_0@0| (<= |i#0_0@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.children)))))) (=> (=> |$w$loop#0_0@0| (<= |i#0_0@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.children))))) (and (=> (= (ControlFlow 0 10) (- 0 13)) (=> |$w$loop#0_0@0| (forall ((|n#0_1@@0| T@U) ) (!  (=> ($Is refType |n#0_1@@0| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_1@@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_1@@0|) _module.Node.marked)))) (or (or (= |n#0_1@@0| |root#0|) (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_1@@0|))) (forall ((|ch#0_1@@0| T@U) ) (!  (=> ($Is refType |ch#0_1@@0| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_1@@0|) _module.Node.children)) ($Box refType |ch#0_1@@0|)) (or (not (= |ch#0_1@@0| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |ch#0_1@@0|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.65:22|
 :skolemid |657|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |ch#0_1@@0|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_1@@0|) _module.Node.children)) ($Box refType |ch#0_1@@0|)))
)))))
 :qid |SchorrWaitedfy.62:24|
 :skolemid |658|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_1@@0|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_1@@0|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_1@@0|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_1@@0|)))
)))) (=> (=> |$w$loop#0_0@0| (forall ((|n#0_1@@1| T@U) ) (!  (=> ($Is refType |n#0_1@@1| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_1@@1|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_1@@1|) _module.Node.marked)))) (or (or (= |n#0_1@@1| |root#0|) (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_1@@1|))) (forall ((|ch#0_1@@1| T@U) ) (!  (=> ($Is refType |ch#0_1@@1| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_1@@1|) _module.Node.children)) ($Box refType |ch#0_1@@1|)) (or (not (= |ch#0_1@@1| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |ch#0_1@@1|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.65:22|
 :skolemid |657|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |ch#0_1@@1|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_1@@1|) _module.Node.children)) ($Box refType |ch#0_1@@1|)))
)))))
 :qid |SchorrWaitedfy.62:24|
 :skolemid |658|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_1@@1|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_1@@1|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_1@@1|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_1@@1|)))
))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (=> |$w$loop#0_0@0| (forall ((|j#0_1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |j#0_1@@0|) (< |j#0_1@@0| |i#0_0@2|)) (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.children)) |j#0_1@@0|)) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.children)) |j#0_1@@0|))) _module.Node.marked)))))
 :qid |SchorrWaitedfy.66:24|
 :skolemid |661|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.children)) |j#0_1@@0|)))
)))) (=> (=> |$w$loop#0_0@0| (forall ((|j#0_1@@1| Int) ) (!  (=> (and (<= (LitInt 0) |j#0_1@@1|) (< |j#0_1@@1| |i#0_0@2|)) (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.children)) |j#0_1@@1|)) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.children)) |j#0_1@@1|))) _module.Node.marked)))))
 :qid |SchorrWaitedfy.66:24|
 :skolemid |661|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |root#0|) _module.Node.children)) |j#0_1@@1|)))
))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> |$w$loop#0_0@0| (forall ((|n#0_3@@0| T@U) ) (!  (=> ($Is refType |n#0_3@@0| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_3@@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_3@@0|) _module.Node.marked)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_3@@0|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.68:24|
 :skolemid |664|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_3@@0|) _module.Node.marked)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_3@@0|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_3@@0|)))
)))) (=> (=> |$w$loop#0_0@0| (forall ((|n#0_3@@1| T@U) ) (!  (=> ($Is refType |n#0_3@@1| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_3@@1|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_3@@1|) _module.Node.marked)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_3@@1|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.68:24|
 :skolemid |664|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_3@@1|) _module.Node.marked)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_3@@1|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_3@@1|)))
))) (=> (= (ControlFlow 0 10) (- 0 9)) (=> |$w$loop#0_0@0| (forall ((|n#0_5@@0| T@U) ) (!  (=> ($Is refType |n#0_5@@0| Tclass._module.Node) (and (=> (|Set#IsMember| |S#0| ($Box refType |n#0_5@@0|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_5@@0|) _module.Node.childrenVisited))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@0|) _module.Node.childrenVisited))))) (=> (|Set#IsMember| |S#0| ($Box refType |n#0_5@@0|)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_5@@0|) _module.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@0|) _module.Node.children))))))
 :qid |SchorrWaitedfy.69:24|
 :skolemid |667|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@0|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_5@@0|) _module.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@0|) _module.Node.childrenVisited)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#0_5@@0|) _module.Node.childrenVisited)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_5@@0|)))
)))))))))))))))))))))
(let ((anon64_Else_correct  (=> (= |c#0_0_0@1| null) (=> (and (= $Heap@3 $Heap@1) (= (ControlFlow 0 26) 10)) anon39_correct))))
(let ((anon64_Then_correct  (=> (or (not (= |c#0_0_0@1| null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 25)) ($Is refType |c#0_0_0@1| Tclass._module.Node)) (=> ($Is refType |c#0_0_0@1| Tclass._module.Node) (=> (= |stackNodes##0_0_0_0@1| (|Set#Union| |stackNodes#0| (|Set#UnionOne| |Set#Empty| ($Box refType |root#0|)))) (and (=> (= (ControlFlow 0 18) (- 0 24)) (forall (($o@@8 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8) alloc)))) (|Set#IsMember| |S#0| ($Box refType $o@@8))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@8 $f@@0)))
 :qid |SchorrWaitedfy.75:28|
 :skolemid |670|
))) (=> (forall (($o@@9 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9) alloc)))) (|Set#IsMember| |S#0| ($Box refType $o@@9))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@9 $f@@1)))
 :qid |SchorrWaitedfy.75:28|
 :skolemid |670|
)) (and (=> (= (ControlFlow 0 18) (- 0 23)) (and (|Set#Subset| (|Set#Difference| |S#0| |stackNodes##0_0_0_0@1|) (|Set#Difference| |S#0| |stackNodes#0|)) (not (|Set#Subset| (|Set#Difference| |S#0| |stackNodes#0|) (|Set#Difference| |S#0| |stackNodes##0_0_0_0@1|))))) (=> (and (|Set#Subset| (|Set#Difference| |S#0| |stackNodes##0_0_0_0@1|) (|Set#Difference| |S#0| |stackNodes#0|)) (not (|Set#Subset| (|Set#Difference| |S#0| |stackNodes#0|) (|Set#Difference| |S#0| |stackNodes##0_0_0_0@1|)))) (and (=> (= (ControlFlow 0 18) (- 0 22)) (|Set#IsMember| |S#0| ($Box refType |c#0_0_0@1|))) (=> (|Set#IsMember| |S#0| ($Box refType |c#0_0_0@1|)) (and (=> (= (ControlFlow 0 18) (- 0 21)) (forall ((|n#1| T@U) ) (!  (=> ($Is refType |n#1| Tclass._module.Node) (=> (|Set#IsMember| |S#0| ($Box refType |n#1|)) (forall ((|ch#2| T@U) ) (!  (=> ($Is refType |ch#2| Tclass._module.Node?) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#1|) _module.Node.children)) ($Box refType |ch#2|)) (or (= |ch#2| null) (|Set#IsMember| |S#0| ($Box refType |ch#2|)))))
 :qid |SchorrWaitedfy.40:22|
 :skolemid |633|
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |ch#2|)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#1|) _module.Node.children)) ($Box refType |ch#2|)))
))))
 :qid |SchorrWaitedfy.39:19|
 :skolemid |634|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#1|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#1|)))
))) (=> (forall ((|n#1@@0| T@U) ) (!  (=> ($Is refType |n#1@@0| Tclass._module.Node) (=> (|Set#IsMember| |S#0| ($Box refType |n#1@@0|)) (forall ((|ch#2@@0| T@U) ) (!  (=> ($Is refType |ch#2@@0| Tclass._module.Node?) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#1@@0|) _module.Node.children)) ($Box refType |ch#2@@0|)) (or (= |ch#2@@0| null) (|Set#IsMember| |S#0| ($Box refType |ch#2@@0|)))))
 :qid |SchorrWaitedfy.40:22|
 :skolemid |633|
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |ch#2@@0|)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#1@@0|) _module.Node.children)) ($Box refType |ch#2@@0|)))
))))
 :qid |SchorrWaitedfy.39:19|
 :skolemid |634|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#1@@0|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#1@@0|)))
)) (and (=> (= (ControlFlow 0 18) (- 0 20)) (forall ((|n#3| T@U) ) (!  (=> ($Is refType |n#3| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#3|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3|) _module.Node.marked)))) (or (|Set#IsMember| |stackNodes##0_0_0_0@1| ($Box refType |n#3|)) (forall ((|ch#5| T@U) ) (!  (=> ($Is refType |ch#5| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3|) _module.Node.children)) ($Box refType |ch#5|)) (or (not (= |ch#5| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#5|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.43:22|
 :skolemid |635|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#5|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3|) _module.Node.children)) ($Box refType |ch#5|)))
)))))
 :qid |SchorrWaitedfy.41:19|
 :skolemid |636|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |stackNodes##0_0_0_0@1| ($Box refType |n#3|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#3|)))
))) (=> (forall ((|n#3@@0| T@U) ) (!  (=> ($Is refType |n#3@@0| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#3@@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3@@0|) _module.Node.marked)))) (or (|Set#IsMember| |stackNodes##0_0_0_0@1| ($Box refType |n#3@@0|)) (forall ((|ch#5@@0| T@U) ) (!  (=> ($Is refType |ch#5@@0| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3@@0|) _module.Node.children)) ($Box refType |ch#5@@0|)) (or (not (= |ch#5@@0| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#5@@0|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.43:22|
 :skolemid |635|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#5@@0|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3@@0|) _module.Node.children)) ($Box refType |ch#5@@0|)))
)))))
 :qid |SchorrWaitedfy.41:19|
 :skolemid |636|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3@@0|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |stackNodes##0_0_0_0@1| ($Box refType |n#3@@0|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#3@@0|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#3@@0|)))
)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (forall ((|n#5| T@U) ) (!  (=> ($Is refType |n#5| Tclass._module.Node) (=> (|Set#IsMember| |stackNodes##0_0_0_0@1| ($Box refType |n#5|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#5|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.44:19|
 :skolemid |637|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#5|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |stackNodes##0_0_0_0@1| ($Box refType |n#5|)))
))) (=> (forall ((|n#5@@0| T@U) ) (!  (=> ($Is refType |n#5@@0| Tclass._module.Node) (=> (|Set#IsMember| |stackNodes##0_0_0_0@1| ($Box refType |n#5@@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#5@@0|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.44:19|
 :skolemid |637|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#5@@0|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |stackNodes##0_0_0_0@1| ($Box refType |n#5@@0|)))
)) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |c#0_0_0@1|) _module.Node.marked))) (forall ((|n#7| T@U) ) (!  (=> ($Is refType |n#7| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#7|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#7|) _module.Node.marked)))) (or (|Set#IsMember| |stackNodes##0_0_0_0@1| ($Box refType |n#7|)) (forall ((|ch#8| T@U) ) (!  (=> ($Is refType |ch#8| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#7|) _module.Node.children)) ($Box refType |ch#8|)) (or (not (= |ch#8| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |ch#8|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.50:22|
 :skolemid |638|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |ch#8|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#7|) _module.Node.children)) ($Box refType |ch#8|)))
)))))
 :qid |SchorrWaitedfy.48:18|
 :skolemid |639|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#7|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |stackNodes##0_0_0_0@1| ($Box refType |n#7|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#7|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#7|)))
))) (and (forall ((|n#9| T@U) ) (!  (=> ($Is refType |n#9| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#9|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#9|) _module.Node.marked)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#9|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.51:18|
 :skolemid |640|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#9|) _module.Node.marked)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#9|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#9|)))
)) (forall ((|n#11| T@U) ) (!  (=> ($Is refType |n#11| Tclass._module.Node) (and (=> (|Set#IsMember| |S#0| ($Box refType |n#11|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#11|) _module.Node.childrenVisited))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11|) _module.Node.childrenVisited))))) (=> (|Set#IsMember| |S#0| ($Box refType |n#11|)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#11|) _module.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11|) _module.Node.children))))))
 :qid |SchorrWaitedfy.52:18|
 :skolemid |641|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#11|) _module.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#11|) _module.Node.childrenVisited)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#11|) _module.Node.childrenVisited)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#11|)))
)))) (and (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@10) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@10)) (|Set#IsMember| |S#0| ($Box refType $o@@10))))
 :qid |SchorrWaitedfy.37:8|
 :skolemid |642|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (= $Heap@3 $Heap@2) (= (ControlFlow 0 18) 10)))) anon39_correct))))))))))))))))))))
(let ((anon63_Else_correct  (=> (and (< |i#0_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)))) (= |$decr$loop#0_00@1| (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children))) |i#0_0@1|))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (or (not (= |root#0| null)) (not true))) (=> (or (not (= |root#0| null)) (not true)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (and (<= 0 |i#0_0@1|) (< |i#0_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)))))) (=> (and (<= 0 |i#0_0@1|) (< |i#0_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children))))) (=> (= |c#0_0_0@1| ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)) |i#0_0@1|))) (and (=> (= (ControlFlow 0 27) 18) anon64_Then_correct) (=> (= (ControlFlow 0 27) 26) anon64_Else_correct))))))))))
(let ((anon42_LoopDone_correct true))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |root#0|) _module.Node.marked)))) (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |root#0|) _module.Node.marked))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall ((|n#7@@0| T@U) ) (!  (=> ($Is refType |n#7@@0| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#7@@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#7@@0|) _module.Node.marked)))) (or (|Set#IsMember| |stackNodes#0| ($Box refType |n#7@@0|)) (forall ((|ch#8@@0| T@U) ) (!  (=> ($Is refType |ch#8@@0| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#7@@0|) _module.Node.children)) ($Box refType |ch#8@@0|)) (or (not (= |ch#8@@0| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |ch#8@@0|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.50:22|
 :skolemid |648|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |ch#8@@0|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#7@@0|) _module.Node.children)) ($Box refType |ch#8@@0|)))
)))))
 :qid |SchorrWaitedfy.48:18|
 :skolemid |649|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#7@@0|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |stackNodes#0| ($Box refType |n#7@@0|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#7@@0|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#7@@0|)))
))) (=> (forall ((|n#7@@1| T@U) ) (!  (=> ($Is refType |n#7@@1| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#7@@1|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#7@@1|) _module.Node.marked)))) (or (|Set#IsMember| |stackNodes#0| ($Box refType |n#7@@1|)) (forall ((|ch#8@@1| T@U) ) (!  (=> ($Is refType |ch#8@@1| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#7@@1|) _module.Node.children)) ($Box refType |ch#8@@1|)) (or (not (= |ch#8@@1| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |ch#8@@1|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.50:22|
 :skolemid |648|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |ch#8@@1|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#7@@1|) _module.Node.children)) ($Box refType |ch#8@@1|)))
)))))
 :qid |SchorrWaitedfy.48:18|
 :skolemid |649|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#7@@1|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |stackNodes#0| ($Box refType |n#7@@1|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#7@@1|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#7@@1|)))
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((|n#9@@0| T@U) ) (!  (=> ($Is refType |n#9@@0| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#9@@0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#9@@0|) _module.Node.marked)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#9@@0|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.51:18|
 :skolemid |650|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#9@@0|) _module.Node.marked)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#9@@0|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#9@@0|)))
))) (=> (forall ((|n#9@@1| T@U) ) (!  (=> ($Is refType |n#9@@1| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#9@@1|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#9@@1|) _module.Node.marked)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#9@@1|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.51:18|
 :skolemid |650|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#9@@1|) _module.Node.marked)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#9@@1|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#9@@1|)))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|n#11@@0| T@U) ) (!  (=> ($Is refType |n#11@@0| Tclass._module.Node) (and (=> (|Set#IsMember| |S#0| ($Box refType |n#11@@0|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#11@@0|) _module.Node.childrenVisited))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#11@@0|) _module.Node.childrenVisited))))) (=> (|Set#IsMember| |S#0| ($Box refType |n#11@@0|)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#11@@0|) _module.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#11@@0|) _module.Node.children))))))
 :qid |SchorrWaitedfy.52:18|
 :skolemid |651|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#11@@0|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#11@@0|) _module.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#11@@0|) _module.Node.childrenVisited)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#11@@0|) _module.Node.childrenVisited)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#11@@0|)))
)))))))))))
(let ((anon63_Then_correct  (=> (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children))) |i#0_0@1|) (=> (and (= $Heap@4 $Heap@1) (= (ControlFlow 0 8) 2)) GeneratedUnifiedExit_correct))))
(let ((anon43_Else_correct  (=> |$w$loop#0_0@0| (and (=> (= (ControlFlow 0 30) (- 0 31)) (or (not (= |root#0| null)) (not true))) (=> (or (not (= |root#0| null)) (not true)) (and (=> (= (ControlFlow 0 30) 8) anon63_Then_correct) (=> (= (ControlFlow 0 30) 27) anon63_Else_correct)))))))
(let ((anon42_LoopBody_correct  (and (=> (= (ControlFlow 0 96) 94) anon43_Then_correct) (=> (= (ControlFlow 0 96) 30) anon43_Else_correct))))
(let ((anon42_LoopHead_correct  (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and ($Is refType |c#0_0_0@0| Tclass._module.Node?) ($IsAlloc refType |c#0_0_0@0| Tclass._module.Node? $Heap@1))) (=> (and (and (and (and (not false) |$rhs#0_0@0|) (<= 0 |i#0_0@1|)) (and (=> |$w$loop#0_0@0| (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.marked)))) (=> |$w$loop#0_0@0| (<= |i#0_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children))))))) (and (and (and (=> |$w$loop#0_0@0| (forall ((|n#0_1@@2| T@U) ) (!  (=> ($Is refType |n#0_1@@2| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_1@@2|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_1@@2|) _module.Node.marked)))) (or (or (= |n#0_1@@2| |root#0|) (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_1@@2|))) (forall ((|ch#0_1@@2| T@U) ) (!  (=> ($Is refType |ch#0_1@@2| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_1@@2|) _module.Node.children)) ($Box refType |ch#0_1@@2|)) (or (not (= |ch#0_1@@2| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#0_1@@2|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.65:22|
 :skolemid |657|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |ch#0_1@@2|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_1@@2|) _module.Node.children)) ($Box refType |ch#0_1@@2|)))
)))))
 :qid |SchorrWaitedfy.62:24|
 :skolemid |658|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_1@@2|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_1@@2|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_1@@2|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_1@@2|)))
))) (=> |$w$loop#0_0@0| (forall ((|j#0_1@@2| Int) ) (!  (=> (and (<= (LitInt 0) |j#0_1@@2|) (< |j#0_1@@2| |i#0_0@1|)) (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)) |j#0_1@@2|)) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)) |j#0_1@@2|))) _module.Node.marked)))))
 :qid |SchorrWaitedfy.66:24|
 :skolemid |661|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children)) |j#0_1@@2|)))
)))) (and (=> |$w$loop#0_0@0| (forall ((|n#0_3@@2| T@U) ) (!  (=> ($Is refType |n#0_3@@2| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_3@@2|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_3@@2|) _module.Node.marked)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_3@@2|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.68:24|
 :skolemid |664|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_3@@2|) _module.Node.marked)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_3@@2|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_3@@2|)))
))) (=> |$w$loop#0_0@0| (forall ((|n#0_5@@1| T@U) ) (!  (=> ($Is refType |n#0_5@@1| Tclass._module.Node) (and (=> (|Set#IsMember| |S#0| ($Box refType |n#0_5@@1|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_5@@1|) _module.Node.childrenVisited))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@1|) _module.Node.childrenVisited))))) (=> (|Set#IsMember| |S#0| ($Box refType |n#0_5@@1|)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_5@@1|) _module.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@1|) _module.Node.children))))))
 :qid |SchorrWaitedfy.69:24|
 :skolemid |667|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@1|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_5@@1|) _module.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@1|) _module.Node.childrenVisited)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#0_5@@1|) _module.Node.childrenVisited)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_5@@1|)))
))))) (and (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@11) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11)) (|Set#IsMember| |S#0| ($Box refType $o@@11))))
 :qid |SchorrWaitedfy.60:5|
 :skolemid |668|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@12 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@12) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12) $f@@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@12 $f@@2))))
 :qid |SchorrWaitedfy.60:5|
 :skolemid |669|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@12) $f@@2))
)) (<= (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |root#0|) _module.Node.children))) |i#0_0@1|) |$decr_init$loop#0_00@0|))))) (and (=> (= (ControlFlow 0 97) 7) anon42_LoopDone_correct) (=> (= (ControlFlow 0 97) 96) anon42_LoopBody_correct))))))
(let ((anon41_Then_correct  (=> (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |root#0|) _module.Node.marked)))) (and (=> (= (ControlFlow 0 98) (- 0 106)) (or (not (= |root#0| null)) (not true))) (=> (or (not (= |root#0| null)) (not true)) (and (=> (= (ControlFlow 0 98) (- 0 105)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |root#0| _module.Node.marked))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |root#0| _module.Node.marked)) (=> (= |$rhs#0_0@0| (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap |root#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |root#0|) _module.Node.marked ($Box boolType (bool_2_U |$rhs#0_0@0|))))) ($IsGoodHeap $Heap@0)) (and (= |i#0_0@0| (LitInt 0)) (= |$decr_init$loop#0_00@0| (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) _module.Node.children))) |i#0_0@0|)))) (and (=> (= (ControlFlow 0 98) (- 0 104)) (=> |$w$loop#0_0@0| (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) _module.Node.marked))))) (=> (=> |$w$loop#0_0@0| (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) _module.Node.marked)))) (and (=> (= (ControlFlow 0 98) (- 0 103)) (=> |$w$loop#0_0@0| (<= |i#0_0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) _module.Node.children)))))) (=> (=> |$w$loop#0_0@0| (<= |i#0_0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) _module.Node.children))))) (and (=> (= (ControlFlow 0 98) (- 0 102)) (=> |$w$loop#0_0@0| (forall ((|n#0_1@@3| T@U) ) (!  (=> ($Is refType |n#0_1@@3| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_1@@3|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_1@@3|) _module.Node.marked)))) (or (or (= |n#0_1@@3| |root#0|) (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_1@@3|))) (forall ((|ch#0_1@@3| T@U) ) (!  (=> ($Is refType |ch#0_1@@3| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_1@@3|) _module.Node.children)) ($Box refType |ch#0_1@@3|)) (or (not (= |ch#0_1@@3| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#0_1@@3|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.65:22|
 :skolemid |657|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#0_1@@3|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_1@@3|) _module.Node.children)) ($Box refType |ch#0_1@@3|)))
)))))
 :qid |SchorrWaitedfy.62:24|
 :skolemid |658|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_1@@3|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_1@@3|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_1@@3|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_1@@3|)))
)))) (=> (=> |$w$loop#0_0@0| (forall ((|n#0_1@@4| T@U) ) (!  (=> ($Is refType |n#0_1@@4| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_1@@4|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_1@@4|) _module.Node.marked)))) (or (or (= |n#0_1@@4| |root#0|) (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_1@@4|))) (forall ((|ch#0_1@@4| T@U) ) (!  (=> ($Is refType |ch#0_1@@4| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_1@@4|) _module.Node.children)) ($Box refType |ch#0_1@@4|)) (or (not (= |ch#0_1@@4| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#0_1@@4|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.65:22|
 :skolemid |657|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |ch#0_1@@4|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_1@@4|) _module.Node.children)) ($Box refType |ch#0_1@@4|)))
)))))
 :qid |SchorrWaitedfy.62:24|
 :skolemid |658|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_1@@4|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |stackNodes#0| ($Box refType |n#0_1@@4|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_1@@4|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_1@@4|)))
))) (and (=> (= (ControlFlow 0 98) (- 0 101)) (=> |$w$loop#0_0@0| (forall ((|j#0_1@@3| Int) ) (!  (=> (and (<= (LitInt 0) |j#0_1@@3|) (< |j#0_1@@3| |i#0_0@0|)) (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) _module.Node.children)) |j#0_1@@3|)) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) _module.Node.children)) |j#0_1@@3|))) _module.Node.marked)))))
 :qid |SchorrWaitedfy.66:24|
 :skolemid |661|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) _module.Node.children)) |j#0_1@@3|)))
)))) (=> (=> |$w$loop#0_0@0| (forall ((|j#0_1@@4| Int) ) (!  (=> (and (<= (LitInt 0) |j#0_1@@4|) (< |j#0_1@@4| |i#0_0@0|)) (or (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) _module.Node.children)) |j#0_1@@4|)) null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) _module.Node.children)) |j#0_1@@4|))) _module.Node.marked)))))
 :qid |SchorrWaitedfy.66:24|
 :skolemid |661|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |root#0|) _module.Node.children)) |j#0_1@@4|)))
))) (and (=> (= (ControlFlow 0 98) (- 0 100)) (=> |$w$loop#0_0@0| (forall ((|n#0_3@@3| T@U) ) (!  (=> ($Is refType |n#0_3@@3| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_3@@3|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_3@@3|) _module.Node.marked)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_3@@3|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.68:24|
 :skolemid |664|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_3@@3|) _module.Node.marked)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_3@@3|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_3@@3|)))
)))) (=> (=> |$w$loop#0_0@0| (forall ((|n#0_3@@4| T@U) ) (!  (=> ($Is refType |n#0_3@@4| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#0_3@@4|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_3@@4|) _module.Node.marked)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_3@@4|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.68:24|
 :skolemid |664|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_3@@4|) _module.Node.marked)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_3@@4|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_3@@4|)))
))) (and (=> (= (ControlFlow 0 98) (- 0 99)) (=> |$w$loop#0_0@0| (forall ((|n#0_5@@2| T@U) ) (!  (=> ($Is refType |n#0_5@@2| Tclass._module.Node) (and (=> (|Set#IsMember| |S#0| ($Box refType |n#0_5@@2|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_5@@2|) _module.Node.childrenVisited))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@2|) _module.Node.childrenVisited))))) (=> (|Set#IsMember| |S#0| ($Box refType |n#0_5@@2|)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_5@@2|) _module.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@2|) _module.Node.children))))))
 :qid |SchorrWaitedfy.69:24|
 :skolemid |667|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@2|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_5@@2|) _module.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@2|) _module.Node.childrenVisited)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_5@@2|) _module.Node.childrenVisited)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_5@@2|)))
)))) (=> (=> |$w$loop#0_0@0| (forall ((|n#0_5@@3| T@U) ) (!  (=> ($Is refType |n#0_5@@3| Tclass._module.Node) (and (=> (|Set#IsMember| |S#0| ($Box refType |n#0_5@@3|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_5@@3|) _module.Node.childrenVisited))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@3|) _module.Node.childrenVisited))))) (=> (|Set#IsMember| |S#0| ($Box refType |n#0_5@@3|)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_5@@3|) _module.Node.children)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@3|) _module.Node.children))))))
 :qid |SchorrWaitedfy.69:24|
 :skolemid |667|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@3|) _module.Node.children)))
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_5@@3|) _module.Node.children)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#0_5@@3|) _module.Node.childrenVisited)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#0_5@@3|) _module.Node.childrenVisited)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#0_5@@3|)))
))) (=> (= (ControlFlow 0 98) 97) anon42_LoopHead_correct))))))))))))))))))))))
(let ((anon41_Else_correct  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |root#0|) _module.Node.marked))) (=> (and (= $Heap@4 $Heap) (= (ControlFlow 0 6) 2)) GeneratedUnifiedExit_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc |S#0|)) (and (=> (= (ControlFlow 0 107) (- 0 108)) (or (not (= |root#0| null)) (not true))) (=> (or (not (= |root#0| null)) (not true)) (and (=> (= (ControlFlow 0 107) 98) anon41_Then_correct) (=> (= (ControlFlow 0 107) 6) anon41_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |root#0| Tclass._module.Node) ($IsAlloc refType |root#0| Tclass._module.Node $Heap))) (and (and ($Is SetType |S#0| (TSet Tclass._module.Node)) ($IsAlloc SetType |S#0| (TSet Tclass._module.Node) $Heap)) (and ($Is SetType |stackNodes#0| (TSet Tclass._module.Node)) ($IsAlloc SetType |stackNodes#0| (TSet Tclass._module.Node) $Heap)))) (=> (and (and (and (and ($Is refType |c#0_0_0| Tclass._module.Node?) ($IsAlloc refType |c#0_0_0| Tclass._module.Node? $Heap)) true) (and (= 1 $FunctionContextHeight) (|Set#IsMember| |S#0| ($Box refType |root#0|)))) (and (and (forall ((|n#1@@1| T@U) ) (!  (=> ($Is refType |n#1@@1| Tclass._module.Node) (=> (|Set#IsMember| |S#0| ($Box refType |n#1@@1|)) (forall ((|ch#2@@1| T@U) ) (!  (=> ($Is refType |ch#2@@1| Tclass._module.Node?) (=> (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#1@@1|) _module.Node.children)) ($Box refType |ch#2@@1|)) (or (= |ch#2@@1| null) (|Set#IsMember| |S#0| ($Box refType |ch#2@@1|)))))
 :qid |SchorrWaitedfy.40:22|
 :skolemid |643|
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |ch#2@@1|)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#1@@1|) _module.Node.children)) ($Box refType |ch#2@@1|)))
))))
 :qid |SchorrWaitedfy.39:19|
 :skolemid |644|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#1@@1|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#1@@1|)))
)) (forall ((|n#3@@1| T@U) ) (!  (=> ($Is refType |n#3@@1| Tclass._module.Node) (=> (and (|Set#IsMember| |S#0| ($Box refType |n#3@@1|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#3@@1|) _module.Node.marked)))) (or (|Set#IsMember| |stackNodes#0| ($Box refType |n#3@@1|)) (forall ((|ch#5@@1| T@U) ) (!  (=> ($Is refType |ch#5@@1| Tclass._module.Node?) (=> (and (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#3@@1|) _module.Node.children)) ($Box refType |ch#5@@1|)) (or (not (= |ch#5@@1| null)) (not true))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |ch#5@@1|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.43:22|
 :skolemid |645|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |ch#5@@1|) _module.Node.marked)))
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#3@@1|) _module.Node.children)) ($Box refType |ch#5@@1|)))
)))))
 :qid |SchorrWaitedfy.41:19|
 :skolemid |646|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#3@@1|) _module.Node.children)))
 :pattern ( (|Set#IsMember| |stackNodes#0| ($Box refType |n#3@@1|)))
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#3@@1|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |S#0| ($Box refType |n#3@@1|)))
))) (and (forall ((|n#5@@1| T@U) ) (!  (=> ($Is refType |n#5@@1| Tclass._module.Node) (=> (|Set#IsMember| |stackNodes#0| ($Box refType |n#5@@1|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#5@@1|) _module.Node.marked)))))
 :qid |SchorrWaitedfy.44:19|
 :skolemid |647|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |n#5@@1|) _module.Node.marked)))
 :pattern ( (|Set#IsMember| |stackNodes#0| ($Box refType |n#5@@1|)))
)) (= (ControlFlow 0 109) 107)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
