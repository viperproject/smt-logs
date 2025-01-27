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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun class._module.Queue? () T@U)
(declare-fun Tagclass._module.Queue? () T@U)
(declare-fun Tagclass._module.Queue () T@U)
(declare-fun Tagclass._module.Benchmark3? () T@U)
(declare-fun Tagclass._module.Benchmark3 () T@U)
(declare-fun tytagFamily$Queue () T@U)
(declare-fun tytagFamily$Benchmark3 () T@U)
(declare-fun field$contents () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Queue (T@U) T@U)
(declare-fun Tclass._module.Queue? (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Benchmark3? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |MultiSet#FromSeq| (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Tclass._module.Benchmark3 () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Queue.contents () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Queue.Get (T@U T@U T@U Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Queue.Get#canCall| (T@U T@U T@U Int) Bool)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Queue?_0 (T@U) T@U)
(declare-fun Tclass._module.Queue_0 (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc allocName class._module.Queue? Tagclass._module.Queue? Tagclass._module.Queue Tagclass._module.Benchmark3? Tagclass._module.Benchmark3 tytagFamily$Queue tytagFamily$Benchmark3 field$contents)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.Queue$T T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Queue _module.Queue$T) $h) ($IsAlloc refType |c#0| (Tclass._module.Queue? _module.Queue$T) $h))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Queue _module.Queue$T) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Queue? _module.Queue$T) $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Benchmark3?)  (or (= $o null) (= (dtype $o) Tclass._module.Benchmark3?)))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($Is refType $o Tclass._module.Benchmark3?))
)))
(assert (forall ((s@@0 T@U) ) (! ($IsGoodMultiSet (|MultiSet#FromSeq| s@@0))
 :qid |DafnyPreludebpl.1083:15|
 :skolemid |214|
 :pattern ( (|MultiSet#FromSeq| s@@0))
)))
(assert (forall ((s@@1 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@1)) (and (= (|Seq#Take| (|Seq#Append| s@@1 t) n@@0) s@@1) (= (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@1 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@1 t) n@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Benchmark3 $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Benchmark3? $h@@0))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Benchmark3 $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Benchmark3? $h@@0))
)))
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
(assert (forall ((_module.Queue$T@@0 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._module.Queue? _module.Queue$T@@0) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._module.Queue? _module.Queue$T@@0) $h@@1))
)))
(assert (= (FDim _module.Queue.contents) 0))
(assert (= (FieldOfDecl class._module.Queue? field$contents) _module.Queue.contents))
(assert  (not ($IsGhostField _module.Queue.contents)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Benchmark3? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Benchmark3? $h@@2))
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
(assert (forall ((s@@2 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@2 n@@1) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@2 n@@1))
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
(assert (forall ((s@@3 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@3 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t@@0)))
)))
(assert (forall ((s@@4 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@4))) (= (|Seq#Index| (|Seq#Take| s@@4 n@@2) j) (|Seq#Index| s@@4 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@4 n@@2) j))
 :pattern ( (|Seq#Index| s@@4 j) (|Seq#Take| s@@4 n@@2))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Drop| s@@5 n@@3)) (- (|Seq#Length| s@@5) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@5 n@@3)))
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
(assert (forall ((a T@U) (x@@5 T@U) (y T@U) ) (!  (=> (or (not (= x@@5 y)) (not true)) (= (|MultiSet#Multiplicity| a y) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a x@@5) y)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a x@@5) (|MultiSet#Multiplicity| a y))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Queue$T@@1 T@U) ($Heap T@U) (this T@U) (|i#0| Int) ) (!  (=> (or (|_module.Queue.Get#canCall| _module.Queue$T@@1 $Heap this |i#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.Queue _module.Queue$T@@1)) ($IsAlloc refType this (Tclass._module.Queue _module.Queue$T@@1) $Heap)))) (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Queue.contents)))))))) (= (_module.Queue.Get _module.Queue$T@@1 $Heap this |i#0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Queue.contents)) |i#0|)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( (_module.Queue.Get _module.Queue$T@@1 $Heap this |i#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@0 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@6)) (+ (|MultiSet#Card| a@@0) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@6)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@6 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@6 v@@0)) (+ 1 (|Seq#Length| s@@6)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@6 v@@0))
)))
(assert (forall ((_module.Queue$T@@2 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._module.Queue _module.Queue$T@@2))  (and ($Is refType |c#0@@1| (Tclass._module.Queue? _module.Queue$T@@2)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.Queue _module.Queue$T@@2)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.Queue? _module.Queue$T@@2)))
)))
(assert (forall ((v@@1 T@U) (t@@1 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@1 h@@0) ($IsAlloc T@@1 v@@1 t@@1 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@1 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@2 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@2 h@@1) ($IsAllocBox bx@@0 t@@2 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@2 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@3 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@3 h@@2) ($IsAlloc T@@2 v@@2 t@@3 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@3 h@@2))
)))
(assert (forall ((s@@7 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@7) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@7 n@@4) j@@1) (|Seq#Index| s@@7 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@7 n@@4) j@@1))
)))
(assert (forall ((_module.Queue$T@@3 T@U) ) (!  (and (= (Tag (Tclass._module.Queue? _module.Queue$T@@3)) Tagclass._module.Queue?) (= (TagFamily (Tclass._module.Queue? _module.Queue$T@@3)) tytagFamily$Queue))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.Queue? _module.Queue$T@@3))
)))
(assert (forall ((_module.Queue$T@@4 T@U) ) (!  (and (= (Tag (Tclass._module.Queue _module.Queue$T@@4)) Tagclass._module.Queue) (= (TagFamily (Tclass._module.Queue _module.Queue$T@@4)) tytagFamily$Queue))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (Tclass._module.Queue _module.Queue$T@@4))
)))
(assert (forall ((_module.Queue$T@@5 T@U) ($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._module.Queue? _module.Queue$T@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.Queue.contents)) (TSeq _module.Queue$T@@5) $h@@3))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.Queue.contents)) (Tclass._module.Queue? _module.Queue$T@@5))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (= $o@@3 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |570|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Queue$T@@6 T@U) ($Heap@@0 T@U) (this@@0 T@U) (|i#0@@0| Int) ) (!  (=> (or (|_module.Queue.Get#canCall| _module.Queue$T@@6 $Heap@@0 this@@0 |i#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) (or (not (= this@@0 null)) (not true))) ($IsAlloc refType this@@0 (Tclass._module.Queue _module.Queue$T@@6) $Heap@@0)) (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.Queue.contents)))))))) ($IsAllocBox (_module.Queue.Get _module.Queue$T@@6 $Heap@@0 this@@0 |i#0@@0|) _module.Queue$T@@6 $Heap@@0))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsAllocBox (_module.Queue.Get _module.Queue$T@@6 $Heap@@0 this@@0 |i#0@@0|) _module.Queue$T@@6 $Heap@@0))
))))
(assert (forall ((a@@1 T@U) (b T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@1 b)) (+ (|MultiSet#Card| a@@1) (|MultiSet#Card| b)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |198|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@1 b)))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Benchmark3?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Benchmark3?)))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsBox bx@@1 Tclass._module.Benchmark3?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Benchmark3) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Benchmark3)))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( ($IsBox bx@@2 Tclass._module.Benchmark3))
)))
(assert (forall ((_module.Queue$T@@7 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._module.Queue? _module.Queue$T@@7))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._module.Queue? _module.Queue$T@@7))))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@4 (Tclass._module.Queue? _module.Queue$T@@7)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Benchmark3)  (and ($Is refType |c#0@@2| Tclass._module.Benchmark3?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Benchmark3))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Benchmark3?))
)))
(assert (forall ((s@@8 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@8)) (= (|Seq#Index| (|Seq#Build| s@@8 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@8))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@8 v@@3) i) (|Seq#Index| s@@8 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@8 v@@3) i))
)))
(assert (forall ((_module.Queue$T@@8 T@U) ($h0 T@U) ($h1 T@U) (this@@1 T@U) (|i#0@@1| Int) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass._module.Queue _module.Queue$T@@8)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@5 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (= $o@@5 this@@1)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@5) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@5) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |501|
)) (= (_module.Queue.Get _module.Queue$T@@8 $h0 this@@1 |i#0@@1|) (_module.Queue.Get _module.Queue$T@@8 $h1 this@@1 |i#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Queue.Get _module.Queue$T@@8 $h1 this@@1 |i#0@@1|))
)))
(assert (forall ((s@@9 T@U) (x@@7 T@U) ) (! (= (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@9))) (= x@@7 (|Seq#Index| s@@9 i@@0)))
 :qid |DafnyPreludebpl.1108:11|
 :skolemid |219|
 :pattern ( (|Seq#Index| s@@9 i@@0))
)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@9) x@@7)))
 :qid |DafnyPreludebpl.1106:15|
 :skolemid |220|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@9) x@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Queue$T@@9 T@U) ($Heap@@1 T@U) (this@@2 T@U) (|i#0@@2| Int) ) (!  (=> (or (|_module.Queue.Get#canCall| _module.Queue$T@@9 $Heap@@1 this@@2 |i#0@@2|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass._module.Queue _module.Queue$T@@9)) ($IsAlloc refType this@@2 (Tclass._module.Queue _module.Queue$T@@9) $Heap@@1)))) (and (<= (LitInt 0) |i#0@@2|) (< |i#0@@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Queue.contents)))))))) ($IsBox (_module.Queue.Get _module.Queue$T@@9 $Heap@@1 this@@2 |i#0@@2|) _module.Queue$T@@9))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( (_module.Queue.Get _module.Queue$T@@9 $Heap@@1 this@@2 |i#0@@2|))
))))
(assert (forall ((a@@2 T@U) (b@@0 T@U) ) (!  (=> (|MultiSet#Equal| a@@2 b@@0) (= a@@2 b@@0))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |209|
 :pattern ( (|MultiSet#Equal| a@@2 b@@0))
)))
(assert (forall ((a@@3 T@U) (b@@1 T@U) ) (!  (=> (|Seq#Equal| a@@3 b@@1) (= a@@3 b@@1))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@3 b@@1))
)))
(assert (forall ((s@@10 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@10))) (= (|Seq#Length| (|Seq#Take| s@@10 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@10 n@@5)))
)))
(assert (forall ((a@@4 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@4 c)) (not true)) (=> (and ($HeapSucc a@@4 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@4 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@4 b@@2) ($HeapSucc b@@2 c))
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
(assert (forall ((v@@4 T@U) (t@@4 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@4) ($Is T@@3 v@@4 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@4))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@4 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@4)) (<= (|MultiSet#Multiplicity| ms bx@@4) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@4))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s@@11 T@U) ) (! (<= 0 (|MultiSet#Card| s@@11))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s@@11))
)))
(assert (forall ((s@@12 T@U) ) (! (<= 0 (|Seq#Length| s@@12))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@12))
)))
(assert (forall ((o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0))
)))
(assert (forall ((a@@5 T@U) (x@@8 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@8) x@@8) (+ (|MultiSet#Multiplicity| a@@5 x@@8) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@8))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@1) h@@3) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@1) t0@@1 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@1) h@@3))
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
(assert (forall ((_module.Queue$T@@10 T@U) ) (! (= (Tclass._module.Queue?_0 (Tclass._module.Queue? _module.Queue$T@@10)) _module.Queue$T@@10)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.Queue? _module.Queue$T@@10))
)))
(assert (forall ((_module.Queue$T@@11 T@U) ) (! (= (Tclass._module.Queue_0 (Tclass._module.Queue _module.Queue$T@@11)) _module.Queue$T@@11)
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (Tclass._module.Queue _module.Queue$T@@11))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@9))
)))
(assert (forall ((s@@13 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@13) 0) (= s@@13 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@13) 0)) (not true)) (exists ((x@@10 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@13 x@@10))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@13 x@@10))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@13))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@6 b@@3) o@@1) (+ (|MultiSet#Multiplicity| a@@6 o@@1) (|MultiSet#Multiplicity| b@@3 o@@1)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |197|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@6 b@@3) o@@1))
)))
(assert (forall ((s@@14 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@14 val@@4)) s@@14) (= (|Seq#Build_inv1| (|Seq#Build| s@@14 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@14 val@@4))
)))
(assert (forall ((_module.Queue$T@@12 T@U) ($h@@4 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.Queue? _module.Queue$T@@12)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) _module.Queue.contents)) (TSeq _module.Queue$T@@12)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) _module.Queue.contents)) (Tclass._module.Queue? _module.Queue$T@@12))
)))
(assert (forall ((s@@15 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#FromSeq| s@@15)) (|Seq#Length| s@@15))
 :qid |DafnyPreludebpl.1085:15|
 :skolemid |215|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSeq| s@@15)))
)))
(assert (forall ((bx@@5 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@5 (TSeq t@@7)) (and (= ($Box SeqType ($Unbox SeqType bx@@5)) bx@@5) ($Is SeqType ($Unbox SeqType bx@@5) (TSeq t@@7))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@5 (TSeq t@@7)))
)))
(assert (forall ((_module.Queue$T@@13 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.Queue? _module.Queue$T@@13)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._module.Queue? _module.Queue$T@@13))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@6 (Tclass._module.Queue? _module.Queue$T@@13)))
)))
(assert (forall ((_module.Queue$T@@14 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.Queue _module.Queue$T@@14)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.Queue _module.Queue$T@@14))))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@7 (Tclass._module.Queue _module.Queue$T@@14)))
)))
(assert (= (|MultiSet#FromSeq| |Seq#Empty|) |MultiSet#Empty|))
(assert (forall ((s@@16 T@U) (v@@6 T@U) ) (! (= (|MultiSet#FromSeq| (|Seq#Build| s@@16 v@@6)) (|MultiSet#UnionOne| (|MultiSet#FromSeq| s@@16) v@@6))
 :qid |DafnyPreludebpl.1089:15|
 :skolemid |216|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Build| s@@16 v@@6)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@11 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@11))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@11))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@11)))
)))
(assert (= (Tag Tclass._module.Benchmark3?) Tagclass._module.Benchmark3?))
(assert (= (TagFamily Tclass._module.Benchmark3?) tytagFamily$Benchmark3))
(assert (= (Tag Tclass._module.Benchmark3) Tagclass._module.Benchmark3))
(assert (= (TagFamily Tclass._module.Benchmark3) tytagFamily$Benchmark3))
(assert (forall ((s@@17 T@U) (n@@6 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@6) (<= n@@6 k@@2)) (< k@@2 (|Seq#Length| s@@17))) (= (|Seq#Index| (|Seq#Drop| s@@17 n@@6) (- k@@2 n@@6)) (|Seq#Index| s@@17 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@17 k@@2) (|Seq#Drop| s@@17 n@@6))
)))
(assert (forall ((s@@18 T@U) (m@@4 Int) (n@@7 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@7)) (<= (+ m@@4 n@@7) (|Seq#Length| s@@18))) (= (|Seq#Drop| (|Seq#Drop| s@@18 m@@4) n@@7) (|Seq#Drop| s@@18 (+ m@@4 n@@7))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@18 m@@4) n@@7))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (and (=> (< n@@8 (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s0@@1 n@@8))) (=> (<= (|Seq#Length| s0@@1) n@@8) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s1@@1 (- n@@8 (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8))
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
(assert (forall ((a@@7 T@U) (x@@14 T@U) (y@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@7 y@@0)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@7 x@@14) y@@0)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@7 x@@14) (|MultiSet#Multiplicity| a@@7 y@@0))
)))
(assert (forall ((a@@8 T@U) (b@@4 T@U) ) (! (= (|MultiSet#FromSeq| (|Seq#Append| a@@8 b@@4)) (|MultiSet#Union| (|MultiSet#FromSeq| a@@8) (|MultiSet#FromSeq| b@@4)))
 :qid |DafnyPreludebpl.1093:15|
 :skolemid |217|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Append| a@@8 b@@4)))
)))
(assert (forall ((s@@19 T@U) ) (!  (=> (= (|Seq#Length| s@@19) 0) (= s@@19 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@19))
)))
(assert (forall ((s@@20 T@U) (n@@9 Int) ) (!  (=> (= n@@9 0) (= (|Seq#Take| s@@20 n@@9) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@20 n@@9))
)))
(assert (forall ((a@@9 T@U) (x@@15 T@U) (o@@2 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@15) o@@2))  (or (= o@@2 x@@15) (< 0 (|MultiSet#Multiplicity| a@@9 o@@2))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@15) o@@2))
)))
(assert (forall ((a@@10 T@U) (b@@5 T@U) ) (! (= (|MultiSet#Equal| a@@10 b@@5) (forall ((o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| a@@10 o@@3) (|MultiSet#Multiplicity| b@@5 o@@3))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |207|
 :pattern ( (|MultiSet#Multiplicity| a@@10 o@@3))
 :pattern ( (|MultiSet#Multiplicity| b@@5 o@@3))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@10 b@@5))
)))
(assert (forall ((h@@5 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@5))
)))
(assert (forall ((v@@8 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@2)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@2) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@8 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@2)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@9 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |q#0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |i#4@0| () Int)
(declare-fun |j#4@0| () Int)
(declare-fun |i#2@0| () Int)
(declare-fun |j#2@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap@5 () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |qc#0_0@1| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call4formal@k#0@0| () Int)
(declare-fun |call3formal@m#0@0| () Int)
(declare-fun |call2formal@x#0@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |qc#0_0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun this@@3 () T@U)
(declare-fun |defass#r#0| () Bool)
(declare-fun |r#0| () T@U)
(declare-fun |qc#0_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.Benchmark3.Sort)
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
 (=> (= (ControlFlow 0 0) 88) (let ((anon20_correct true))
(let ((anon36_Else_correct  (=> (< (LitInt 0) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (or (not (= |q#0| null)) (not true))) (=> (or (not (= |q#0| null)) (not true)) (=> (= (ControlFlow 0 32) 29) anon20_correct))))))
(let ((anon36_Then_correct  (=> (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))) (LitInt 0)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (or (not (= |q#0| null)) (not true))) (=> (or (not (= |q#0| null)) (not true)) (=> (= (ControlFlow 0 30) 29) anon20_correct))))))
(let ((anon17_correct  (=> (forall ((|i#5| Int) (|j#5| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#5|) (< |i#5| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents))))) (and (<= (LitInt 0) |j#5|) (< |j#5| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)))))) (<= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) |i#5|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)) |j#5|)))))
 :qid |b3dfy.57:24|
 :skolemid |535|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)) |j#5|)) ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) |i#5|)))
)) (and (=> (= (ControlFlow 0 34) (- 0 40)) true) (and (=> (= (ControlFlow 0 34) (- 0 39)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 34) (- 0 38)) (or (not (= |q#0| null)) (not true))) (and (=> (= (ControlFlow 0 34) (- 0 37)) (or (not (= |q#0| null)) (not true))) (and (=> (= (ControlFlow 0 34) (- 0 36)) ($IsAlloc refType |q#0| (Tclass._module.Queue TInt) $Heap@@2)) (=> ($IsAlloc refType |q#0| (Tclass._module.Queue TInt) $Heap@@2) (=> (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)))) (|MultiSet#FromSeq| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents)))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (or (not (= |q#0| null)) (not true))) (=> (or (not (= |q#0| null)) (not true)) (and (=> (= (ControlFlow 0 34) 30) anon36_Then_correct) (=> (= (ControlFlow 0 34) 32) anon36_Else_correct))))))))))))))
(let ((anon35_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents))))) (and (<= (LitInt 0) |j#4@0|) (< |j#4@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))))))) (= (ControlFlow 0 47) 34)) anon17_correct)))
(let ((anon35_Then_correct  (=> (and (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents))))) (and (<= (LitInt 0) |j#4@0|) (< |j#4@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)))))) (and (=> (= (ControlFlow 0 41) (- 0 46)) true) (and (=> (= (ControlFlow 0 41) (- 0 45)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 41) (- 0 44)) (and (<= 0 |i#4@0|) (< |i#4@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)))))) (and (=> (= (ControlFlow 0 41) (- 0 43)) (or (not (= |q#0| null)) (not true))) (and (=> (= (ControlFlow 0 41) (- 0 42)) (and (<= 0 |j#4@0|) (< |j#4@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)))))) (=> (= (ControlFlow 0 41) 34) anon17_correct)))))))))
(let ((anon34_Else_correct  (=> (< |j#4@0| (LitInt 0)) (and (=> (= (ControlFlow 0 51) 41) anon35_Then_correct) (=> (= (ControlFlow 0 51) 47) anon35_Else_correct)))))
(let ((anon34_Then_correct  (=> (<= (LitInt 0) |j#4@0|) (and (=> (= (ControlFlow 0 49) (- 0 50)) (or (not (= |q#0| null)) (not true))) (and (=> (= (ControlFlow 0 49) 41) anon35_Then_correct) (=> (= (ControlFlow 0 49) 47) anon35_Else_correct))))))
(let ((anon33_Then_correct  (=> (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents))))) (and (=> (= (ControlFlow 0 52) 49) anon34_Then_correct) (=> (= (ControlFlow 0 52) 51) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (not (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)))))) (and (=> (= (ControlFlow 0 48) 41) anon35_Then_correct) (=> (= (ControlFlow 0 48) 47) anon35_Else_correct)))))
(let ((anon32_Else_correct  (=> (< |i#4@0| (LitInt 0)) (and (=> (= (ControlFlow 0 56) 52) anon33_Then_correct) (=> (= (ControlFlow 0 56) 48) anon33_Else_correct)))))
(let ((anon32_Then_correct  (=> (<= (LitInt 0) |i#4@0|) (and (=> (= (ControlFlow 0 53) (- 0 55)) true) (and (=> (= (ControlFlow 0 53) (- 0 54)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 53) 52) anon33_Then_correct) (=> (= (ControlFlow 0 53) 48) anon33_Else_correct)))))))
(let ((anon31_Then_correct  (and (=> (= (ControlFlow 0 57) 53) anon32_Then_correct) (=> (= (ControlFlow 0 57) 56) anon32_Else_correct))))
(let ((anon31_Else_correct true))
(let ((anon9_correct  (=> (forall ((|i#3| Int) (|j#3| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#3|) (< |i#3| |j#3|)) (< |j#3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents))))) (<= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) |i#3|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) |j#3|)))))
 :qid |b3dfy.56:24|
 :skolemid |532|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) |j#3|)) ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) |i#3|)))
)) (and (=> (= (ControlFlow 0 58) 57) anon31_Then_correct) (=> (= (ControlFlow 0 58) 28) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |j#2@0|)) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)))))) (= (ControlFlow 0 66) 58)) anon9_correct)))
(let ((anon30_Then_correct  (=> (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |j#2@0|)) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents))))) (and (=> (= (ControlFlow 0 59) (- 0 65)) true) (and (=> (= (ControlFlow 0 59) (- 0 64)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 59) (- 0 63)) (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)))))) (and (=> (= (ControlFlow 0 59) (- 0 62)) true) (and (=> (= (ControlFlow 0 59) (- 0 61)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 59) (- 0 60)) (and (<= 0 |j#2@0|) (< |j#2@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)))))) (=> (= (ControlFlow 0 59) 58) anon9_correct))))))))))
(let ((anon29_Else_correct  (=> (not (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |j#2@0|))) (and (=> (= (ControlFlow 0 70) 59) anon30_Then_correct) (=> (= (ControlFlow 0 70) 66) anon30_Else_correct)))))
(let ((anon29_Then_correct  (=> (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |j#2@0|)) (and (=> (= (ControlFlow 0 67) (- 0 69)) true) (and (=> (= (ControlFlow 0 67) (- 0 68)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 67) 59) anon30_Then_correct) (=> (= (ControlFlow 0 67) 66) anon30_Else_correct)))))))
(let ((anon28_Else_correct  (=> (< |i#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 72) 67) anon29_Then_correct) (=> (= (ControlFlow 0 72) 70) anon29_Else_correct)))))
(let ((anon28_Then_correct  (=> (<= (LitInt 0) |i#2@0|) (and (=> (= (ControlFlow 0 71) 67) anon29_Then_correct) (=> (= (ControlFlow 0 71) 70) anon29_Else_correct)))))
(let ((anon27_Then_correct  (and (=> (= (ControlFlow 0 73) 71) anon28_Then_correct) (=> (= (ControlFlow 0 73) 72) anon28_Else_correct))))
(let ((anon27_Else_correct true))
(let ((anon26_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 74) (- 0 79)) true) (and (=> (= (ControlFlow 0 74) (- 0 78)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 74) (- 0 77)) (or (not (= |q#0| null)) (not true))) (and (=> (= (ControlFlow 0 74) (- 0 76)) (or (not (= |q#0| null)) (not true))) (and (=> (= (ControlFlow 0 74) (- 0 75)) ($IsAlloc refType |q#0| (Tclass._module.Queue TInt) $Heap@@2)) (=> ($IsAlloc refType |q#0| (Tclass._module.Queue TInt) $Heap@@2) (=> (= (+ (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents)))) (and (=> (= (ControlFlow 0 74) 73) anon27_Then_correct) (=> (= (ControlFlow 0 74) 27) anon27_Else_correct))))))))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 19) (- 0 22)) (and (or (not (= $nw@0 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $nw@0) alloc)))))) (=> (and (or (not (= $nw@0 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $nw@0) alloc))))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) _module.Queue.contents))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents))))) (=> (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) _module.Queue.contents))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents)))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1|) (< |i#1| |j#1|)) (< |j#1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) _module.Queue.contents))))) (<= (U_2_int ($Unbox intType (_module.Queue.Get TInt $Heap@5 $nw@0 |i#1|))) (U_2_int ($Unbox intType (_module.Queue.Get TInt $Heap@5 $nw@0 |j#1|)))))
 :qid |b3dfy.49:20|
 :skolemid |529|
 :pattern ( ($Unbox intType (_module.Queue.Get TInt $Heap@5 $nw@0 |j#1|)) ($Unbox intType (_module.Queue.Get TInt $Heap@5 $nw@0 |i#1|)))
))) (=> (forall ((|i#1@@0| Int) (|j#1@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| |j#1@@0|)) (< |j#1@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) _module.Queue.contents))))) (<= (U_2_int ($Unbox intType (_module.Queue.Get TInt $Heap@5 $nw@0 |i#1@@0|))) (U_2_int ($Unbox intType (_module.Queue.Get TInt $Heap@5 $nw@0 |j#1@@0|)))))
 :qid |b3dfy.49:20|
 :skolemid |529|
 :pattern ( ($Unbox intType (_module.Queue.Get TInt $Heap@5 $nw@0 |j#1@@0|)) ($Unbox intType (_module.Queue.Get TInt $Heap@5 $nw@0 |i#1@@0|)))
)) (=> (= (ControlFlow 0 19) (- 0 18)) (|MultiSet#Equal| (|MultiSet#FromSeq| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) _module.Queue.contents))) (|MultiSet#FromSeq| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents)))))))))))))
(let ((anon37_Then_correct  (=> (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))) 0) (and (=> (= (ControlFlow 0 23) (- 0 24)) true) (=> (and (= $Heap@5 $Heap@2) (= (ControlFlow 0 23) 19)) GeneratedUnifiedExit_correct)))))
(let ((anon37_Else_correct  (=> (and (or (not (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))) 0)) (not true)) (= |$decr$loop#00@1| (ite (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))) (LitInt 0)) (- 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)))) (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))) 0)))) (and (=> (= (ControlFlow 0 3) (- 0 17)) (or (not (= |q#0| null)) (not true))) (=> (or (not (= |q#0| null)) (not true)) (=> (= |qc#0_0@1| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))) (and (=> (= (ControlFlow 0 3) (- 0 16)) (forall (($o@@7 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7) alloc)))) (= $o@@7 |q#0|)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@7 $f@@1)))
 :qid |b3dfy.65:27|
 :skolemid |540|
))) (=> (forall (($o@@8 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@8) alloc)))) (= $o@@8 |q#0|)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@8 $f@@2)))
 :qid |b3dfy.65:27|
 :skolemid |540|
)) (and (=> (= (ControlFlow 0 3) (- 0 15)) (or (not (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))) 0)) (not true))) (=> (or (not (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))) 0)) (not true)) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))) (+ (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q#0|) _module.Queue.contents))) 1)) (<= (LitInt 0) |call4formal@k#0@0|)) (and (< |call4formal@k#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)) |call4formal@k#0@0|))) |call3formal@m#0@0|))) (and (and (forall ((|i#1@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@1|) (< |i#1@@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q#0|) _module.Queue.contents))))) (<= |call3formal@m#0@0| (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q#0|) _module.Queue.contents)) |i#1@@1|)))))
 :qid |b3dfy.76:20|
 :skolemid |546|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q#0|) _module.Queue.contents)) |i#1@@1|)))
)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q#0|) _module.Queue.contents)) (|Seq#Append| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)) (+ |call4formal@k#0@0| 1)) (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)) |call4formal@k#0@0|)))) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9)) (= $o@@9 |q#0|)))
 :qid |b3dfy.71:10|
 :skolemid |547|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 3) (- 0 14)) (and (<= 0 |call4formal@k#0@0|) (<= |call4formal@k#0@0| (|Seq#Length| |qc#0_0@1|)))) (and (=> (= (ControlFlow 0 3) (- 0 13)) (and (<= 0 (+ |call4formal@k#0@0| 1)) (<= (+ |call4formal@k#0@0| 1) (|Seq#Length| |qc#0_0@1|)))) (and (=> (= (ControlFlow 0 3) (- 0 12)) (|Seq#Equal| |qc#0_0@1| (|Seq#Append| (|Seq#Append| (|Seq#Take| |qc#0_0@1| |call4formal@k#0@0|) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |call3formal@m#0@0|)))) (|Seq#Drop| |qc#0_0@1| (+ |call4formal@k#0@0| 1))))) (=> (|Seq#Equal| |qc#0_0@1| (|Seq#Append| (|Seq#Append| (|Seq#Take| |qc#0_0@1| |call4formal@k#0@0|) (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |call3formal@m#0@0|)))) (|Seq#Drop| |qc#0_0@1| (+ |call4formal@k#0@0| 1)))) (and (=> (= (ControlFlow 0 3) (- 0 11)) true) (and (=> (= (ControlFlow 0 3) (- 0 10)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 9)) (forall (($o@@10 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@10) alloc)))) (= $o@@10 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@10 $f@@3)))
 :qid |b3dfy.67:16|
 :skolemid |541|
))) (=> (forall (($o@@11 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11) alloc)))) (= $o@@11 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@11 $f@@4)))
 :qid |b3dfy.67:16|
 :skolemid |541|
)) (=> (= |call2formal@x#0@0| ($Box intType (int_2_U |call3formal@m#0@0|))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) _module.Queue.contents)) (|Seq#Build| |Seq#Empty| |call2formal@x#0@0|)))) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@12) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@12)) (= $o@@12 $nw@0)))
 :qid |b3dfy.21:10|
 :skolemid |492|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@12))
)) ($HeapSucc $Heap@3 $Heap@4))) (and (=> (= (ControlFlow 0 3) (- 0 8)) (or (<= 0 |$decr$loop#00@1|) (= (ite (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents))) (LitInt 0)) (- 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)))) (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents))) 0)) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (ite (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents))) (LitInt 0)) (- 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)))) (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents))) 0)) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 3) (- 0 7)) (< (ite (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents))) (LitInt 0)) (- 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)))) (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents))) 0)) |$decr$loop#00@1|)) (=> (< (ite (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents))) (LitInt 0)) (- 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)))) (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents))) 0)) |$decr$loop#00@1|) (and (=> (= (ControlFlow 0 3) (- 0 6)) (=> |$w$loop#0@0| (= (+ (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents)))))) (=> (=> |$w$loop#0@0| (= (+ (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents))))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (=> |$w$loop#0@0| (forall ((|i#3@@0| Int) (|j#3@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#3@@0|) (< |i#3@@0| |j#3@@0|)) (< |j#3@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents))))) (<= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) |i#3@@0|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) |j#3@@0|)))))
 :qid |b3dfy.56:24|
 :skolemid |534|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) |j#3@@0|)) ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) |i#3@@0|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#3@@1| Int) (|j#3@@1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#3@@1|) (< |i#3@@1| |j#3@@1|)) (< |j#3@@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents))))) (<= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) |i#3@@1|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) |j#3@@1|)))))
 :qid |b3dfy.56:24|
 :skolemid |534|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) |j#3@@1|)) ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) |i#3@@1|)))
))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> |$w$loop#0@0| (forall ((|i#5@@0| Int) (|j#5@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#5@@0|) (< |i#5@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents))))) (and (<= (LitInt 0) |j#5@@0|) (< |j#5@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)))))) (<= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) |i#5@@0|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)) |j#5@@0|)))))
 :qid |b3dfy.57:24|
 :skolemid |537|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)) |j#5@@0|)) ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) |i#5@@0|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#5@@1| Int) (|j#5@@1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#5@@1|) (< |i#5@@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents))))) (and (<= (LitInt 0) |j#5@@1|) (< |j#5@@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)))))) (<= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) |i#5@@1|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)) |j#5@@1|)))))
 :qid |b3dfy.57:24|
 :skolemid |537|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)) |j#5@@1|)) ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) |i#5@@1|)))
))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> |$w$loop#0@0| (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)))) (|MultiSet#FromSeq| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents)))))))))))))))))))))))))))))))))))))))
(let ((anon26_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (not (= |q#0| null)) (not true))) (=> (or (not (= |q#0| null)) (not true)) (and (=> (= (ControlFlow 0 25) 23) anon37_Then_correct) (=> (= (ControlFlow 0 25) 3) anon37_Else_correct)))))))
(let ((anon25_LoopBody_correct  (and (=> (= (ControlFlow 0 80) 74) anon26_Then_correct) (=> (= (ControlFlow 0 80) 25) anon26_Else_correct))))
(let ((anon25_LoopDone_correct true))
(let ((anon25_LoopHead_correct  (=> (and ($Is SeqType |qc#0_0@0| (TSeq TInt)) ($IsAlloc SeqType |qc#0_0@0| (TSeq TInt) $Heap@2)) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and true (not false))) (=> (and (and (and (=> |$w$loop#0@0| (= (+ (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents))))) (=> |$w$loop#0@0| (forall ((|i#3@@2| Int) (|j#3@@2| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#3@@2|) (< |i#3@@2| |j#3@@2|)) (< |j#3@@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents))))) (<= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) |i#3@@2|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) |j#3@@2|)))))
 :qid |b3dfy.56:24|
 :skolemid |534|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) |j#3@@2|)) ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) |i#3@@2|)))
)))) (and (=> |$w$loop#0@0| (forall ((|i#5@@2| Int) (|j#5@@2| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#5@@2|) (< |i#5@@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents))))) (and (<= (LitInt 0) |j#5@@2|) (< |j#5@@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)))))) (<= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) |i#5@@2|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)) |j#5@@2|)))))
 :qid |b3dfy.57:24|
 :skolemid |537|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)) |j#5@@2|)) ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) |i#5@@2|)))
))) (=> |$w$loop#0@0| (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)))) (|MultiSet#FromSeq| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents))))))) (and (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@13) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@13)) (= $o@@13 |q#0|)))
 :qid |b3dfy.54:5|
 :skolemid |538|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@13))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (forall (($o@@14 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@14) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@14) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@14) $f@@5)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@14 $f@@5))))
 :qid |b3dfy.54:5|
 :skolemid |539|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@14) $f@@5))
)) (<= (ite (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))) (LitInt 0)) (- 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)))) (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))) 0)) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 81) 1) anon25_LoopDone_correct) (=> (= (ControlFlow 0 81) 80) anon25_LoopBody_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc |q#0|)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._module.Queue? TInt))) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@2 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 82) (- 0 87)) (forall (($o@@15 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@15) alloc)))) (= $o@@15 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@15 $f@@6)))
 :qid |b3dfy.53:25|
 :skolemid |531|
))) (=> (forall (($o@@16 T@U) ($f@@7 T@U) ) (!  (=> (and (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@16) alloc)))) (= $o@@16 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@16 $f@@7)))
 :qid |b3dfy.53:25|
 :skolemid |531|
)) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents))) (LitInt 0)) (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@17)) (= $o@@17 $nw@0)))
 :qid |b3dfy.18:10|
 :skolemid |490|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@17))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |$decr_init$loop#00@0| (ite (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents))) (LitInt 0)) (- 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)))) (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents))) 0))))) (and (=> (= (ControlFlow 0 82) (- 0 86)) (=> |$w$loop#0@0| (= (+ (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents)))))) (=> (=> |$w$loop#0@0| (= (+ (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents))))) (and (=> (= (ControlFlow 0 82) (- 0 85)) (=> |$w$loop#0@0| (forall ((|i#3@@3| Int) (|j#3@@3| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#3@@3|) (< |i#3@@3| |j#3@@3|)) (< |j#3@@3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents))))) (<= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) |i#3@@3|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) |j#3@@3|)))))
 :qid |b3dfy.56:24|
 :skolemid |534|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) |j#3@@3|)) ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) |i#3@@3|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#3@@4| Int) (|j#3@@4| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#3@@4|) (< |i#3@@4| |j#3@@4|)) (< |j#3@@4| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents))))) (<= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) |i#3@@4|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) |j#3@@4|)))))
 :qid |b3dfy.56:24|
 :skolemid |534|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) |j#3@@4|)) ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) |i#3@@4|)))
))) (and (=> (= (ControlFlow 0 82) (- 0 84)) (=> |$w$loop#0@0| (forall ((|i#5@@3| Int) (|j#5@@3| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#5@@3|) (< |i#5@@3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents))))) (and (<= (LitInt 0) |j#5@@3|) (< |j#5@@3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)))))) (<= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) |i#5@@3|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)) |j#5@@3|)))))
 :qid |b3dfy.57:24|
 :skolemid |537|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)) |j#5@@3|)) ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) |i#5@@3|)))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#5@@4| Int) (|j#5@@4| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#5@@4|) (< |i#5@@4| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents))))) (and (<= (LitInt 0) |j#5@@4|) (< |j#5@@4| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)))))) (<= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) |i#5@@4|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)) |j#5@@4|)))))
 :qid |b3dfy.57:24|
 :skolemid |537|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)) |j#5@@4|)) ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) |i#5@@4|)))
))) (and (=> (= (ControlFlow 0 82) (- 0 83)) (=> |$w$loop#0@0| (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)))) (|MultiSet#FromSeq| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents)))))) (=> (=> |$w$loop#0@0| (|MultiSet#Equal| (|MultiSet#FromSeq| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.Queue.contents)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)))) (|MultiSet#FromSeq| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |q#0|) _module.Queue.contents))))) (=> (= (ControlFlow 0 82) 81) anon25_LoopHead_correct))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Benchmark3) ($IsAlloc refType this@@3 Tclass._module.Benchmark3 $Heap@@2)))) (and (and ($Is refType |q#0| (Tclass._module.Queue TInt)) ($IsAlloc refType |q#0| (Tclass._module.Queue TInt) $Heap@@2)) (=> |defass#r#0| (and ($Is refType |r#0| (Tclass._module.Queue TInt)) ($IsAlloc refType |r#0| (Tclass._module.Queue TInt) $Heap@@2))))) (and (and (and ($Is SeqType |qc#0_0| (TSeq TInt)) ($IsAlloc SeqType |qc#0_0| (TSeq TInt) $Heap@@2)) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 88) 82)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
