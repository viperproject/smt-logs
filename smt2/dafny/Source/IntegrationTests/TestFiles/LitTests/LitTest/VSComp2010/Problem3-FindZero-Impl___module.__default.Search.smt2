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
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun class._module.Node? () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$List () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$head () T@U)
(declare-fun field$next () T@U)
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
(declare-fun _module.Node.Valid (T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Node.Valid#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Node () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Node.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun SeqType () T@T)
(declare-fun _module.Node.List () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun _module.Node.head () T@U)
(declare-fun _module.Node.next () T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Tclass._module.Node? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._module.Node? class._module.Node? Tagclass._module.Node tytagFamily$Node field$List field$Repr field$head field$next)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor SetType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
))) (= (Ctor SeqType) 8)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Node.Valid#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Node) ($IsAlloc refType this Tclass._module.Node $Heap)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.Repr)) ($Box refType this)) (=> (<= (LitInt 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.List)))) (=> (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.List)) (LitInt 0)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.head)))) (=> (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next)) null) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.List))) (LitInt 1))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next))) _module.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next))) _module.Node.Repr)) ($Box refType this))) (|_module.Node.Valid#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next))))))))))) (= (_module.Node.Valid ($LS $ly) $Heap this)  (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.Repr)) ($Box refType this)) (<= (LitInt 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.List))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.List)) (LitInt 0)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.head))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next)) null) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.List))) (LitInt 1)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next))) _module.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next))) _module.Node.Repr)) ($Box refType this)))) (_module.Node.Valid $ly $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.next))) _module.Node.List)) (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Node.List)) (LitInt 1)))))))))
 :qid |Problem3FindZerodfy.30:19|
 :skolemid |510|
 :pattern ( (_module.Node.Valid ($LS $ly) $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (forall (($ly@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Node))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (= $o this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@0) _module.Node.Repr)) ($Box refType $o)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |506|
)) (= (_module.Node.Valid $ly@@0 $h0 this@@0) (_module.Node.Valid $ly@@0 $h1 this@@0))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Node.Valid $ly@@0 $h1 this@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Node?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($Is refType $o@@0 Tclass._module.Node?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Node $h) ($IsAlloc refType |c#0| Tclass._module.Node? $h))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node? $h))
)))
(assert (= (FDim _module.Node.List) 0))
(assert (= (FieldOfDecl class._module.Node? field$List) _module.Node.List))
(assert ($IsGhostField _module.Node.List))
(assert (= (FDim _module.Node.Repr) 0))
(assert (= (FieldOfDecl class._module.Node? field$Repr) _module.Node.Repr))
(assert ($IsGhostField _module.Node.Repr))
(assert (= (FDim _module.Node.head) 0))
(assert (= (FieldOfDecl class._module.Node? field$head) _module.Node.head))
(assert  (not ($IsGhostField _module.Node.head)))
(assert (= (FDim _module.Node.next) 0))
(assert (= (FieldOfDecl class._module.Node? field$next) _module.Node.next))
(assert  (not ($IsGhostField _module.Node.next)))
(assert (forall (($o@@1 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Node? $h@@0)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Node? $h@@0))
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
(assert (forall ((s T@U) (n Int) ) (!  (=> (= n 0) (= (|Seq#Drop| s n) s))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s n))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Node.Valid#canCall| $Heap@@0 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Node) ($IsAlloc refType this@@1 Tclass._module.Node $Heap@@0)))))) (=> (_module.Node.Valid $ly@@1 $Heap@@0 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Node.Repr)) ($Box refType this@@1))))
 :qid |Problem3FindZerodfy.30:19|
 :skolemid |508|
 :pattern ( (_module.Node.Valid $ly@@1 $Heap@@0 this@@1))
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
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((s@@0 T@U) (n@@0 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@0)) (< j (|Seq#Length| s@@0))) (= (|Seq#Index| (|Seq#Take| s@@0 n@@0) j) (|Seq#Index| s@@0 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@0 n@@0) j))
 :pattern ( (|Seq#Index| s@@0 j) (|Seq#Take| s@@0 n@@0))
)))
(assert (forall ((s@@1 T@U) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (<= n@@1 (|Seq#Length| s@@1))) (= (|Seq#Length| (|Seq#Drop| s@@1 n@@1)) (- (|Seq#Length| s@@1) n@@1)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@1 n@@1)))
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
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
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
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) _module.Node.head)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) _module.Node.head)))
)))
(assert (forall (($ly@@2 T@U) ($Heap@@1 T@U) (this@@2 T@U) ) (! (= (_module.Node.Valid ($LS $ly@@2) $Heap@@1 this@@2) (_module.Node.Valid $ly@@2 $Heap@@1 this@@2))
 :qid |Problem3FindZerodfy.30:19|
 :skolemid |504|
 :pattern ( (_module.Node.Valid ($LS $ly@@2) $Heap@@1 this@@2))
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
(assert (forall ((s@@2 T@U) (n@@2 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@2) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@2) n@@2))) (= (|Seq#Index| (|Seq#Drop| s@@2 n@@2) j@@1) (|Seq#Index| s@@2 (+ j@@1 n@@2))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@2 n@@2) j@@1))
)))
(assert (forall (($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.Node.next)) Tclass._module.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |502|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) _module.Node.next)))
)))
(assert (forall (($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.Node.List)) (TSeq TInt) $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |496|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.Node.List)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Node?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@1 Tclass._module.Node?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Node) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Node)))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($IsBox bx@@2 Tclass._module.Node))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Node)  (and ($Is refType |c#0@@0| Tclass._module.Node?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node?))
)))
(assert (forall (($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.Node.next)) Tclass._module.Node? $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.Node.next)))
)))
(assert (forall ((s@@3 T@U) (n@@3 Int) (x@@6 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@3 n@@3) x@@6) (exists ((i Int) ) (!  (and (and (and (<= 0 i) (< i n@@3)) (< i (|Seq#Length| s@@3))) (= (|Seq#Index| s@@3 i) x@@6))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |235|
 :pattern ( (|Seq#Index| s@@3 i))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |236|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@3 n@@3) x@@6))
)))
(assert (forall ((s@@4 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| s@@4 x@@7) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@4))) (= (|Seq#Index| s@@4 i@@0) x@@7))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@4 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@4 x@@7))
)))
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.Node?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.Node.Repr)) (TSet Tclass._module.Node)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |498|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.Node.Repr)))
)))
(assert (forall (($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.Node.Repr)) (TSet Tclass._module.Node) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |499|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.Node.Repr)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((s@@5 T@U) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (<= n@@4 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Take| s@@5 n@@4)) n@@4))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@5 n@@4)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s@@6 T@U) ) (! (<= 0 (|Seq#Length| s@@6))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@1) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i@@1))
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
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall (($h@@7 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Node?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.Node.head)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |500|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.Node.head)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@9 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f@@0))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |517|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f@@0))
)))
(assert (forall ((s@@7 T@U) (n@@5 Int) (x@@9 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@7 n@@5) x@@9) (exists ((i@@2 Int) ) (!  (and (and (and (<= 0 n@@5) (<= n@@5 i@@2)) (< i@@2 (|Seq#Length| s@@7))) (= (|Seq#Index| s@@7 i@@2) x@@9))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |237|
 :pattern ( (|Seq#Index| s@@7 i@@2))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |238|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@7 n@@5) x@@9))
)))
(assert (forall ((bx@@5 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@7)))
)))
(assert (forall ((bx@@6 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@6 (TSeq t@@8)))
)))
(assert (forall (($h@@8 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Node?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) _module.Node.List)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |495|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) _module.Node.List)))
)))
(assert (= (Tag Tclass._module.Node?) Tagclass._module.Node?))
(assert (= (TagFamily Tclass._module.Node?) tytagFamily$Node))
(assert (= (Tag Tclass._module.Node) Tagclass._module.Node))
(assert (= (TagFamily Tclass._module.Node) tytagFamily$Node))
(assert (forall ((s@@8 T@U) (n@@6 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@6) (<= n@@6 k@@2)) (< k@@2 (|Seq#Length| s@@8))) (= (|Seq#Index| (|Seq#Drop| s@@8 n@@6) (- k@@2 n@@6)) (|Seq#Index| s@@8 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@8 k@@2) (|Seq#Drop| s@@8 n@@6))
)))
(assert (forall ((s@@9 T@U) (m@@4 Int) (n@@7 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@7)) (<= (+ m@@4 n@@7) (|Seq#Length| s@@9))) (= (|Seq#Drop| (|Seq#Drop| s@@9 m@@4) n@@7) (|Seq#Drop| s@@9 (+ m@@4 n@@7))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@9 m@@4) n@@7))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((s@@10 T@U) ) (!  (=> (= (|Seq#Length| s@@10) 0) (= s@@10 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@10))
)))
(assert (forall ((s@@11 T@U) (n@@8 Int) ) (!  (=> (= n@@8 0) (= (|Seq#Take| s@@11 n@@8) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@11 n@@8))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@5))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@4)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@3) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@4)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |jj#1_0@0| () T@U)
(declare-fun |i#1_0@1| () Int)
(declare-fun $Heap@@2 () T@U)
(declare-fun |ll#0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |$w$loop#1_0@0| () Bool)
(declare-fun |r#0@1| () Int)
(declare-fun |r#0@0| () Int)
(declare-fun |$decr$loop#1_00@1| () Int)
(declare-fun |jj#1_0@1| () T@U)
(declare-fun |i#1_0@2| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#1_00@0| () Int)
(declare-fun |i#1_0@0| () Int)
(declare-fun |jj#1_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Search)
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
 (=> (= (ControlFlow 0 0) 71) (let ((anon11_correct  (=> (=> (= |jj#1_0@0| null) (= |i#1_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))))) (and (=> (= (ControlFlow 0 34) (- 0 36)) (or (not (= |ll#0| null)) (not true))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (and (<= 0 |i#1_0@1|) (<= |i#1_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))))) (=> (and (not (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |i#1_0@1|) ($Box intType (int_2_U 0)))) (= (ControlFlow 0 34) (- 0 33))) (or (not (= |ll#0| null)) (not true))))))))
(let ((anon24_Else_correct  (=> (and (or (not (= |jj#1_0@0| null)) (not true)) (= (ControlFlow 0 39) 34)) anon11_correct)))
(let ((anon24_Then_correct  (=> (= |jj#1_0@0| null) (and (=> (= (ControlFlow 0 37) (- 0 38)) (or (not (= |ll#0| null)) (not true))) (=> (= (ControlFlow 0 37) 34) anon11_correct)))))
(let ((anon9_correct  (=> (and (=> (or (not (= |jj#1_0@0| null)) (not true)) (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|)) (=> (or (not (= |jj#1_0@0| null)) (not true)) (and (and (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (= (+ |i#1_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))))) (|Seq#Equal| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |i#1_0@1|) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List)))))) (and (=> (= (ControlFlow 0 40) 37) anon24_Then_correct) (=> (= (ControlFlow 0 40) 39) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (and (not (and (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (= (+ |i#1_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))))) (= (ControlFlow 0 46) 40)) anon9_correct)))
(let ((anon23_Then_correct  (=> (and (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (= (+ |i#1_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))))) (and (=> (= (ControlFlow 0 42) (- 0 45)) (or (not (= |ll#0| null)) (not true))) (and (=> (= (ControlFlow 0 42) (- 0 44)) (and (<= 0 |i#1_0@1|) (<= |i#1_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (or (not (= |jj#1_0@0| null)) (not true))) (=> (= (ControlFlow 0 42) 40) anon9_correct)))))))
(let ((anon22_Else_correct  (=> (not (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|)) (and (=> (= (ControlFlow 0 50) 42) anon23_Then_correct) (=> (= (ControlFlow 0 50) 46) anon23_Else_correct)))))
(let ((anon22_Then_correct  (=> (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (and (=> (= (ControlFlow 0 47) (- 0 49)) (or (not (= |jj#1_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (or (not (= |ll#0| null)) (not true))) (and (=> (= (ControlFlow 0 47) 42) anon23_Then_correct) (=> (= (ControlFlow 0 47) 46) anon23_Else_correct)))))))
(let ((anon21_Then_correct  (=> (or (not (= |jj#1_0@0| null)) (not true)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (or (not (= |jj#1_0@0| null)) (not true))) (=> (and ($IsAllocBox ($Box refType |jj#1_0@0|) Tclass._module.Node? $Heap@@2) (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|)) (and (=> (= (ControlFlow 0 51) 47) anon22_Then_correct) (=> (= (ControlFlow 0 51) 50) anon22_Else_correct)))))))
(let ((anon21_Else_correct  (=> (and (= |jj#1_0@0| null) (= (ControlFlow 0 41) 40)) anon9_correct)))
(let ((anon20_Then_correct  (=> (not |$w$loop#1_0@0|) (and (=> (= (ControlFlow 0 53) 51) anon21_Then_correct) (=> (= (ControlFlow 0 53) 41) anon21_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 20) (- 0 25)) (=> (= |ll#0| null) (= |r#0@1| (LitInt 0)))) (=> (=> (= |ll#0| null) (= |r#0@1| (LitInt 0))) (and (=> (= (ControlFlow 0 20) (- 0 24)) (=> (or (not (= |ll#0| null)) (not true)) (<= (LitInt 0) |r#0@1|))) (=> (=> (or (not (= |ll#0| null)) (not true)) (<= (LitInt 0) |r#0@1|)) (and (=> (= (ControlFlow 0 20) (- 0 23)) (=> (or (not (= |ll#0| null)) (not true)) (<= |r#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))))) (=> (=> (or (not (= |ll#0| null)) (not true)) (<= |r#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (=> (or (not (= |ll#0| null)) (not true)) (=> (< |r#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |r#0@1|))) (LitInt 0))))) (=> (=> (or (not (= |ll#0| null)) (not true)) (=> (< |r#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |r#0@1|))) (LitInt 0)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (=> (or (not (= |ll#0| null)) (not true)) (=> (< |r#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))) (not (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |r#0@1|) ($Box intType (int_2_U 0))))))) (=> (=> (or (not (= |ll#0| null)) (not true)) (=> (< |r#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))) (not (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |r#0@1|) ($Box intType (int_2_U 0)))))) (=> (= (ControlFlow 0 20) (- 0 19)) (=> (or (not (= |ll#0| null)) (not true)) (=> (= |r#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))) (not (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) ($Box intType (int_2_U 0)))))))))))))))))))
(let ((anon26_Then_correct  (=> (not (and (or (not (= |jj#1_0@0| null)) (not true)) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.head))) 0)) (not true)))) (=> (and (= |r#0@1| |i#1_0@1|) (= (ControlFlow 0 27) 20)) GeneratedUnifiedExit_correct))))
(let ((anon18_Then_correct  (=> (and (and (= |ll#0| null) (= |r#0@0| (LitInt 0))) (and (= |r#0@1| |r#0@0|) (= (ControlFlow 0 26) 20))) GeneratedUnifiedExit_correct)))
(let ((anon26_Else_correct  (=> (and (and (or (not (= |jj#1_0@0| null)) (not true)) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.head))) 0)) (not true))) (= |$decr$loop#1_00@1| (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))) |i#1_0@1|))) (and (=> (= (ControlFlow 0 3) (- 0 18)) (or (not (= |jj#1_0@0| null)) (not true))) (=> (or (not (= |jj#1_0@0| null)) (not true)) (=> (and (= |jj#1_0@1| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next))) (= |i#1_0@2| (+ |i#1_0@1| 1))) (and (=> (= (ControlFlow 0 3) (- 0 17)) (or (<= 0 |$decr$loop#1_00@1|) (= (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))) |i#1_0@2|) |$decr$loop#1_00@1|))) (=> (or (<= 0 |$decr$loop#1_00@1|) (= (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))) |i#1_0@2|) |$decr$loop#1_00@1|)) (and (=> (= (ControlFlow 0 3) (- 0 16)) (< (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))) |i#1_0@2|) |$decr$loop#1_00@1|)) (=> (< (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))) |i#1_0@2|) |$decr$loop#1_00@1|) (=> (=> (or (not (= |jj#1_0@1| null)) (not true)) (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|)) (and (=> (= (ControlFlow 0 3) (- 0 15)) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.Repr)) ($Box refType |jj#1_0@1|))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.Repr)) ($Box refType |jj#1_0@1|)))))) (and (=> (= (ControlFlow 0 3) (- 0 14)) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (<= (LitInt 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.List))))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (<= (LitInt 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.List)))))))) (and (=> (= (ControlFlow 0 3) (- 0 13)) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.List)) (LitInt 0)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.head))))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.List)) (LitInt 0)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.head)))))))) (and (=> (= (ControlFlow 0 3) (- 0 12)) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)) null) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.List))) (LitInt 1)))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)) null) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.List))) (LitInt 1))))))) (and (=> (= (ControlFlow 0 3) (- 0 11)) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next))))))) (and (=> (= (ControlFlow 0 3) (- 0 10)) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next))) _module.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.Repr))))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next))) _module.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.Repr)))))))) (and (=> (= (ControlFlow 0 3) (- 0 9)) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next))) _module.Node.Repr)) ($Box refType |jj#1_0@1|))))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next))) _module.Node.Repr)) ($Box refType |jj#1_0@1|)))))))) (and (=> (= (ControlFlow 0 3) (- 0 8)) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)) null)) (not true)) (_module.Node.Valid ($LS ($LS $LZ)) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next))))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)) null)) (not true)) (_module.Node.Valid ($LS ($LS $LZ)) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)))))))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next))) _module.Node.List)) (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.List)) (LitInt 1))))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@1|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@1|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.next))) _module.Node.List)) (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.List)) (LitInt 1)))))))) (and (=> (= (ControlFlow 0 3) (- 0 6)) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (= (+ |i#1_0@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.List)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (= (+ |i#1_0@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.List)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (|Seq#Equal| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |i#1_0@2|) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.List)))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@1| null)) (not true)) (|Seq#Equal| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |i#1_0@2|) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@1|) _module.Node.List))))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> |$w$loop#1_0@0| (=> (= |jj#1_0@1| null) (= |i#1_0@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))))))) (=> (=> |$w$loop#1_0@0| (=> (= |jj#1_0@1| null) (= |i#1_0@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> |$w$loop#1_0@0| (not (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |i#1_0@2|) ($Box intType (int_2_U 0)))))))))))))))))))))))))))))))))))))))))
(let ((anon14_correct  (and (=> (= (ControlFlow 0 28) 27) anon26_Then_correct) (=> (= (ControlFlow 0 28) 3) anon26_Else_correct))))
(let ((anon25_Else_correct  (=> (and (= |jj#1_0@0| null) (= (ControlFlow 0 31) 28)) anon14_correct)))
(let ((anon25_Then_correct  (=> (or (not (= |jj#1_0@0| null)) (not true)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (or (not (= |jj#1_0@0| null)) (not true))) (=> (or (not (= |jj#1_0@0| null)) (not true)) (=> (= (ControlFlow 0 29) 28) anon14_correct))))))
(let ((anon20_Else_correct  (=> |$w$loop#1_0@0| (and (=> (= (ControlFlow 0 32) 29) anon25_Then_correct) (=> (= (ControlFlow 0 32) 31) anon25_Else_correct)))))
(let ((anon19_LoopBody_correct  (and (=> (= (ControlFlow 0 54) 53) anon20_Then_correct) (=> (= (ControlFlow 0 54) 32) anon20_Else_correct))))
(let ((anon19_LoopDone_correct true))
(let ((anon19_LoopHead_correct  (=> (and ($Is refType |jj#1_0@0| Tclass._module.Node?) ($IsAlloc refType |jj#1_0@0| Tclass._module.Node? $Heap@@2)) (=> (and (and (and (not false) (<= 0 |i#1_0@1|)) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|)))) (and (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.Repr)) ($Box refType |jj#1_0@0|)))))) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (<= (LitInt 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List)))))))))) (=> (and (and (and (and (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List)) (LitInt 0)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.head)))))))) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next)) null) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List))) (LitInt 1)))))))) (and (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next))))))) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next))) _module.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.Repr)))))))))) (and (and (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next))) _module.Node.Repr)) ($Box refType |jj#1_0@0|)))))))) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next)) null)) (not true)) (_module.Node.Valid ($LS ($LS $LZ)) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next))))))))) (and (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next))) _module.Node.List)) (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List)) (LitInt 1)))))))) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (and (|_module.Node.Valid#canCall| $Heap@@2 |jj#1_0@0|) (and (_module.Node.Valid ($LS $LZ) $Heap@@2 |jj#1_0@0|) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.Repr)) ($Box refType |jj#1_0@0|)) (<= (LitInt 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List)) (LitInt 0)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.head))))) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next)) null) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List))) (LitInt 1)))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next)) null)) (not true)) (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next))) _module.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next))) _module.Node.Repr)) ($Box refType |jj#1_0@0|)))) (_module.Node.Valid ($LS $LZ) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.next))) _module.Node.List)) (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List)) (LitInt 1))))))))))))) (and (and (and (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (= (+ |i#1_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))))) (=> |$w$loop#1_0@0| (=> (or (not (= |jj#1_0@0| null)) (not true)) (|Seq#Equal| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |i#1_0@1|) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |jj#1_0@0|) _module.Node.List)))))) (and (=> |$w$loop#1_0@0| (=> (= |jj#1_0@0| null) (= |i#1_0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))))) (=> |$w$loop#1_0@0| (not (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |i#1_0@1|) ($Box intType (int_2_U 0))))))) (and (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@11)))
 :qid |Problem3FindZerodfy.72:5|
 :skolemid |483|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@11))
)) ($HeapSucc $Heap@@2 $Heap@@2)) (and (forall (($o@@12 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@12) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@12) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@12) $f@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@12 $f@@1))))
 :qid |Problem3FindZerodfy.72:5|
 :skolemid |484|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@12) $f@@1))
)) (<= (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))) |i#1_0@1|) |$decr_init$loop#1_00@0|))))) (and (=> (= (ControlFlow 0 55) 1) anon19_LoopDone_correct) (=> (= (ControlFlow 0 55) 54) anon19_LoopBody_correct)))))))
(let ((anon18_Else_correct  (=> (or (not (= |ll#0| null)) (not true)) (=> (and (= |i#1_0@0| (LitInt 0)) (= |$decr_init$loop#1_00@0| (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))) |i#1_0@0|))) (and (=> (= (ControlFlow 0 56) (- 0 69)) (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.Repr)) ($Box refType |ll#0|))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.Repr)) ($Box refType |ll#0|)))))) (and (=> (= (ControlFlow 0 56) (- 0 68)) (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (<= (LitInt 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (<= (LitInt 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))))))) (and (=> (= (ControlFlow 0 56) (- 0 67)) (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) (LitInt 0)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.head))))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) (LitInt 0)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.head)))))))) (and (=> (= (ControlFlow 0 56) (- 0 66)) (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)) null) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))) (LitInt 1)))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)) null) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))) (LitInt 1))))))) (and (=> (= (ControlFlow 0 56) (- 0 65)) (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next))))))) (and (=> (= (ControlFlow 0 56) (- 0 64)) (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next))) _module.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.Repr))))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next))) _module.Node.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.Repr)))))))) (and (=> (= (ControlFlow 0 56) (- 0 63)) (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next))) _module.Node.Repr)) ($Box refType |ll#0|))))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next))) _module.Node.Repr)) ($Box refType |ll#0|)))))))) (and (=> (= (ControlFlow 0 56) (- 0 62)) (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)) null)) (not true)) (_module.Node.Valid ($LS ($LS $LZ)) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next))))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)) null)) (not true)) (_module.Node.Valid ($LS ($LS $LZ)) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)))))))) (and (=> (= (ControlFlow 0 56) (- 0 61)) (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next))) _module.Node.List)) (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) (LitInt 1))))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (=> (|_module.Node.Valid#canCall| $Heap@@2 |ll#0|) (or (_module.Node.Valid ($LS $LZ) $Heap@@2 |ll#0|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next)) null)) (not true)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.next))) _module.Node.List)) (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) (LitInt 1)))))))) (and (=> (= (ControlFlow 0 56) (- 0 60)) (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (= (+ |i#1_0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (= (+ |i#1_0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))))) (and (=> (= (ControlFlow 0 56) (- 0 59)) (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (|Seq#Equal| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |i#1_0@0|) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))))) (=> (=> |$w$loop#1_0@0| (=> (or (not (= |ll#0| null)) (not true)) (|Seq#Equal| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |i#1_0@0|) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))))) (and (=> (= (ControlFlow 0 56) (- 0 58)) (=> |$w$loop#1_0@0| (=> (= |ll#0| null) (= |i#1_0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List))))))) (=> (=> |$w$loop#1_0@0| (=> (= |ll#0| null) (= |i#1_0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)))))) (and (=> (= (ControlFlow 0 56) (- 0 57)) (=> |$w$loop#1_0@0| (not (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |i#1_0@0|) ($Box intType (int_2_U 0)))))) (=> (=> |$w$loop#1_0@0| (not (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |ll#0|) _module.Node.List)) |i#1_0@0|) ($Box intType (int_2_U 0))))) (=> (= (ControlFlow 0 56) 55) anon19_LoopHead_correct)))))))))))))))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (and (=> (= (ControlFlow 0 70) 26) anon18_Then_correct) (=> (= (ControlFlow 0 70) 56) anon18_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and ($Is refType |ll#0| Tclass._module.Node?) ($IsAlloc refType |ll#0| Tclass._module.Node? $Heap@@2))) (=> (and (and (and (and ($Is refType |jj#1_0| Tclass._module.Node?) ($IsAlloc refType |jj#1_0| Tclass._module.Node? $Heap@@2)) true) (= 1 $FunctionContextHeight)) (and (or (= |ll#0| null) (_module.Node.Valid ($LS ($LS $LZ)) $Heap@@2 |ll#0|)) (= (ControlFlow 0 71) 70))) anon0_correct))))
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
