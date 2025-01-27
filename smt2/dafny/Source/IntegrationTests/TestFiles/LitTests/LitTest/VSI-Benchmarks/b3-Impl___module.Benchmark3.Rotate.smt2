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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun class._module.Queue? () T@U)
(declare-fun Tagclass._module.Queue? () T@U)
(declare-fun Tagclass._module.Queue () T@U)
(declare-fun Tagclass._module.Benchmark3? () T@U)
(declare-fun Tagclass._module.Benchmark3 () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun Tclass._System.nat () T@U)
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
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc allocName Tagclass._System.nat class._module.Queue? Tagclass._module.Queue? Tagclass._module.Queue Tagclass._module.Benchmark3? Tagclass._module.Benchmark3 tytagFamily$nat tytagFamily$Queue tytagFamily$Benchmark3 field$contents)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.Queue$T T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Queue _module.Queue$T) $h@@0) ($IsAlloc refType |c#0| (Tclass._module.Queue? _module.Queue$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Queue _module.Queue$T) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Queue? _module.Queue$T) $h@@0))
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
(assert (forall ((s@@0 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@0)) (and (= (|Seq#Take| (|Seq#Append| s@@0 t) n@@0) s@@0) (= (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |249|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@0 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Benchmark3 $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Benchmark3? $h@@1))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Benchmark3 $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Benchmark3? $h@@1))
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
(assert (forall ((_module.Queue$T@@0 T@U) ($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._module.Queue? _module.Queue$T@@0) $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._module.Queue? _module.Queue$T@@0) $h@@2))
)))
(assert (= (FDim _module.Queue.contents) 0))
(assert (= (FieldOfDecl class._module.Queue? field$contents) _module.Queue.contents))
(assert  (not ($IsGhostField _module.Queue.contents)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Benchmark3? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Benchmark3? $h@@3))
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
(assert (forall ((s@@1 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@1 n@@1) s@@1))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@1 n@@1))
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
(assert (forall ((s@@2 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@2 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@2 bx) (TSeq t@@0)))
)))
(assert (forall ((s@@3 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@3))) (= (|Seq#Index| (|Seq#Take| s@@3 n@@2) j) (|Seq#Index| s@@3 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@3 n@@2) j))
 :pattern ( (|Seq#Index| s@@3 j) (|Seq#Take| s@@3 n@@2))
)))
(assert (forall ((s@@4 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@4))) (= (|Seq#Length| (|Seq#Drop| s@@4 n@@3)) (- (|Seq#Length| s@@4) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@4 n@@3)))
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
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@5 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@5 v@@0)) (+ 1 (|Seq#Length| s@@5)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@5 v@@0))
)))
(assert (forall ((_module.Queue$T@@1 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._module.Queue _module.Queue$T@@1))  (and ($Is refType |c#0@@1| (Tclass._module.Queue? _module.Queue$T@@1)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.Queue _module.Queue$T@@1)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.Queue? _module.Queue$T@@1)))
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
(assert (forall ((s@@6 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@6) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@6 n@@4) j@@1) (|Seq#Index| s@@6 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@6 n@@4) j@@1))
)))
(assert (forall ((_module.Queue$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Queue? _module.Queue$T@@2)) Tagclass._module.Queue?) (= (TagFamily (Tclass._module.Queue? _module.Queue$T@@2)) tytagFamily$Queue))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.Queue? _module.Queue$T@@2))
)))
(assert (forall ((_module.Queue$T@@3 T@U) ) (!  (and (= (Tag (Tclass._module.Queue _module.Queue$T@@3)) Tagclass._module.Queue) (= (TagFamily (Tclass._module.Queue _module.Queue$T@@3)) tytagFamily$Queue))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (Tclass._module.Queue _module.Queue$T@@3))
)))
(assert (forall ((_module.Queue$T@@4 T@U) ($h@@4 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._module.Queue? _module.Queue$T@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) _module.Queue.contents)) (TSeq _module.Queue$T@@4) $h@@4))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) _module.Queue.contents)) (Tclass._module.Queue? _module.Queue$T@@4))
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
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Benchmark3?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Benchmark3?)))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsBox bx@@2 Tclass._module.Benchmark3?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Benchmark3) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Benchmark3)))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( ($IsBox bx@@3 Tclass._module.Benchmark3))
)))
(assert (forall ((_module.Queue$T@@5 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._module.Queue? _module.Queue$T@@5))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._module.Queue? _module.Queue$T@@5))))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@4 (Tclass._module.Queue? _module.Queue$T@@5)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Benchmark3)  (and ($Is refType |c#0@@2| Tclass._module.Benchmark3?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Benchmark3))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Benchmark3?))
)))
(assert (forall ((s@@7 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@7)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@7))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@3) i) (|Seq#Index| s@@7 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@7 v@@3) i))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((s@@8 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@8))) (= (|Seq#Length| (|Seq#Take| s@@8 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@8 n@@5)))
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
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@4 T@U) (t@@4 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@4) ($Is T@@3 v@@4 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@4))
)))
(assert (forall ((s@@9 T@U) ) (! (<= 0 (|Seq#Length| s@@9))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@9))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@1) h@@3) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@0) t0@@1 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i@@0))
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
(assert (forall ((_module.Queue$T@@6 T@U) ) (! (= (Tclass._module.Queue?_0 (Tclass._module.Queue? _module.Queue$T@@6)) _module.Queue$T@@6)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.Queue? _module.Queue$T@@6))
)))
(assert (forall ((_module.Queue$T@@7 T@U) ) (! (= (Tclass._module.Queue_0 (Tclass._module.Queue _module.Queue$T@@7)) _module.Queue$T@@7)
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (Tclass._module.Queue _module.Queue$T@@7))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((s@@10 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@10 val@@4)) s@@10) (= (|Seq#Build_inv1| (|Seq#Build| s@@10 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@10 val@@4))
)))
(assert (forall ((_module.Queue$T@@8 T@U) ($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.Queue? _module.Queue$T@@8)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.Queue.contents)) (TSeq _module.Queue$T@@8)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.Queue.contents)) (Tclass._module.Queue? _module.Queue$T@@8))
)))
(assert (forall ((bx@@5 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@5 (TSeq t@@7)) (and (= ($Box SeqType ($Unbox SeqType bx@@5)) bx@@5) ($Is SeqType ($Unbox SeqType bx@@5) (TSeq t@@7))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@5 (TSeq t@@7)))
)))
(assert (forall ((_module.Queue$T@@9 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.Queue? _module.Queue$T@@9)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._module.Queue? _module.Queue$T@@9))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@6 (Tclass._module.Queue? _module.Queue$T@@9)))
)))
(assert (forall ((_module.Queue$T@@10 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.Queue _module.Queue$T@@10)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.Queue _module.Queue$T@@10))))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@7 (Tclass._module.Queue _module.Queue$T@@10)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Benchmark3?) Tagclass._module.Benchmark3?))
(assert (= (TagFamily Tclass._module.Benchmark3?) tytagFamily$Benchmark3))
(assert (= (Tag Tclass._module.Benchmark3) Tagclass._module.Benchmark3))
(assert (= (TagFamily Tclass._module.Benchmark3) tytagFamily$Benchmark3))
(assert (forall ((s@@11 T@U) (n@@6 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@6) (<= n@@6 k@@2)) (< k@@2 (|Seq#Length| s@@11))) (= (|Seq#Index| (|Seq#Drop| s@@11 n@@6) (- k@@2 n@@6)) (|Seq#Index| s@@11 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@11 k@@2) (|Seq#Drop| s@@11 n@@6))
)))
(assert (forall ((s@@12 T@U) (m@@4 Int) (n@@7 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@7)) (<= (+ m@@4 n@@7) (|Seq#Length| s@@12))) (= (|Seq#Drop| (|Seq#Drop| s@@12 m@@4) n@@7) (|Seq#Drop| s@@12 (+ m@@4 n@@7))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@12 m@@4) n@@7))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (and (=> (< n@@8 (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s0@@1 n@@8))) (=> (<= (|Seq#Length| s0@@1) n@@8) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s1@@1 (- n@@8 (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@13 T@U) ) (!  (=> (= (|Seq#Length| s@@13) 0) (= s@@13 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@13))
)))
(assert (forall ((s@@14 T@U) (n@@9 Int) ) (!  (=> (= n@@9 0) (= (|Seq#Take| s@@14 n@@9) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@14 n@@9))
)))
(assert (forall ((h@@4 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@4))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@2)))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@8 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |q#0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |k#0| () Int)
(declare-fun |j#0@1| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |qc0#0_0@1| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |call3formal@x#0| () T@U)
(declare-fun call0formal@_module.Queue$T () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call3formal@x#0@0| () T@U)
(declare-fun |$rhs##0_0@1| () Int)
(declare-fun |call2formal@x#0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |O##0_0@1| () T@U)
(declare-fun |C##0_0@1| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |j#0@2| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |qc0#0_0@0| () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |j#0@0| () Int)
(declare-fun this () T@U)
(declare-fun |qc0#0_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.Benchmark3.Rotate)
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
 (=> (= (ControlFlow 0 0) 38) (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 29) (- 0 28)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |q#0|) _module.Queue.contents)) (|Seq#Append| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)) |k#0|) (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)) |k#0|))))))
(let ((anon9_Then_correct  (=> (<= |k#0| |j#0@1|) (and (=> (= (ControlFlow 0 30) (- 0 31)) (= |j#0@1| |k#0|)) (=> (= |j#0@1| |k#0|) (=> (and (= $Heap@4 $Heap@0) (= (ControlFlow 0 30) 29)) GeneratedUnifiedExit_correct))))))
(let ((anon9_Else_correct  (=> (and (< |j#0@1| |k#0|) (= |$decr$loop#00@1| (- |k#0| |j#0@1|))) (and (=> (= (ControlFlow 0 11) (- 0 27)) (or (not (= |q#0| null)) (not true))) (=> (or (not (= |q#0| null)) (not true)) (=> (= |qc0#0_0@1| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q#0|) _module.Queue.contents))) (and (=> (= (ControlFlow 0 11) (- 0 26)) (or (not (= |q#0| null)) (not true))) (=> (or (not (= |q#0| null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 25)) (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6) alloc)))) (= $o@@6 |q#0|)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@6 $f@@0)))
 :qid |b3dfy.117:25|
 :skolemid |565|
))) (=> (forall (($o@@7 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7) alloc)))) (= $o@@7 |q#0|)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@7 $f@@1)))
 :qid |b3dfy.117:25|
 :skolemid |565|
)) (=> (and ($IsBox |call3formal@x#0| call0formal@_module.Queue$T) ($IsAllocBox |call3formal@x#0| call0formal@_module.Queue$T $Heap)) (and (=> (= (ControlFlow 0 11) (- 0 24)) (< 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q#0|) _module.Queue.contents))))) (=> (< 0 (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q#0|) _module.Queue.contents)))) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and ($IsBox |call3formal@x#0@0| TInt) ($IsAllocBox |call3formal@x#0@0| TInt $Heap@1)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)) (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q#0|) _module.Queue.contents)) (LitInt 1)))) (and (and (= |call3formal@x#0@0| (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q#0|) _module.Queue.contents)) (LitInt 0))) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8)) (= $o@@8 |q#0|)))
 :qid |b3dfy.24:10|
 :skolemid |494|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |$rhs##0_0@1| (U_2_int ($Unbox intType |call3formal@x#0@0|)))))) (and (=> (= (ControlFlow 0 11) (- 0 23)) (or (not (= |q#0| null)) (not true))) (=> (or (not (= |q#0| null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 22)) (forall (($o@@9 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9) alloc)))) (= $o@@9 |q#0|)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@9 $f@@2)))
 :qid |b3dfy.118:16|
 :skolemid |566|
))) (=> (forall (($o@@10 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@10) alloc)))) (= $o@@10 |q#0|)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@10 $f@@3)))
 :qid |b3dfy.118:16|
 :skolemid |566|
)) (=> (= |call2formal@x#0@0| ($Box intType (int_2_U |$rhs##0_0@1|))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents)) (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |q#0|) _module.Queue.contents)) (|Seq#Build| |Seq#Empty| |call2formal@x#0@0|)))) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11)) (= $o@@11 |q#0|)))
 :qid |b3dfy.21:10|
 :skolemid |492|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@11))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 11) (- 0 21)) (or (not (= |q#0| null)) (not true))) (=> (or (not (= |q#0| null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 20)) ($IsAlloc refType |q#0| (Tclass._module.Queue TInt) $Heap)) (=> ($IsAlloc refType |q#0| (Tclass._module.Queue TInt) $Heap) (=> (= |O##0_0@1| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents))) (and (=> (= (ControlFlow 0 11) (- 0 19)) ($Is intType (int_2_U |j#0@1|) Tclass._System.nat)) (=> ($Is intType (int_2_U |j#0@1|) Tclass._System.nat) (and (=> (= (ControlFlow 0 11) (- 0 18)) (or (not (= |q#0| null)) (not true))) (=> (or (not (= |q#0| null)) (not true)) (=> (= |C##0_0@1| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |q#0|) _module.Queue.contents))) (and (=> (= (ControlFlow 0 11) (- 0 17)) (< |j#0@1| (|Seq#Length| |O##0_0@1|))) (=> (< |j#0@1| (|Seq#Length| |O##0_0@1|)) (and (=> (= (ControlFlow 0 11) (- 0 16)) (|Seq#Equal| |qc0#0_0@1| (|Seq#Append| (|Seq#Drop| |O##0_0@1| |j#0@1|) (|Seq#Take| |O##0_0@1| |j#0@1|)))) (=> (|Seq#Equal| |qc0#0_0@1| (|Seq#Append| (|Seq#Drop| |O##0_0@1| |j#0@1|) (|Seq#Take| |O##0_0@1| |j#0@1|))) (and (=> (= (ControlFlow 0 11) (- 0 15)) (|Seq#Equal| |C##0_0@1| (|Seq#Append| (|Seq#Drop| |qc0#0_0@1| (LitInt 1)) (|Seq#Build| |Seq#Empty| (|Seq#Index| |O##0_0@1| |j#0@1|))))) (=> (|Seq#Equal| |C##0_0@1| (|Seq#Append| (|Seq#Drop| |qc0#0_0@1| (LitInt 1)) (|Seq#Build| |Seq#Empty| (|Seq#Index| |O##0_0@1| |j#0@1|)))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|Seq#Equal| |C##0_0@1| (|Seq#Append| (|Seq#Drop| |O##0_0@1| (+ |j#0@1| 1)) (|Seq#Take| |O##0_0@1| (+ |j#0@1| 1))))) (and (= $Heap@2 $Heap@3) (= |j#0@2| (+ |j#0@1| 1)))) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (<= 0 |$decr$loop#00@1|) (= (- |k#0| |j#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- |k#0| |j#0@2|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (< (- |k#0| |j#0@2|) |$decr$loop#00@1|)) (=> (< (- |k#0| |j#0@2|) |$decr$loop#00@1|) (and (=> (= (ControlFlow 0 11) (- 0 12)) (=> |$w$loop#0@0| (<= |j#0@2| |k#0|))) (=> (=> |$w$loop#0@0| (<= |j#0@2| |k#0|)) (=> (= (ControlFlow 0 11) (- 0 10)) (=> |$w$loop#0@0| (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |q#0|) _module.Queue.contents)) (|Seq#Append| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)) |j#0@2|) (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)) |j#0@2|)))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon8_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 32) 30) anon9_Then_correct) (=> (= (ControlFlow 0 32) 11) anon9_Else_correct)))))
(let ((anon8_Then_correct  (=> (and (not |$w$loop#0@0|) (<= |j#0@1| |k#0|)) (and (=> (= (ControlFlow 0 3) (- 0 9)) (or (not (= |q#0| null)) (not true))) (and (=> (= (ControlFlow 0 3) (- 0 8)) (or (not (= |q#0| null)) (not true))) (and (=> (= (ControlFlow 0 3) (- 0 7)) ($IsAlloc refType |q#0| (Tclass._module.Queue TInt) $Heap)) (=> ($IsAlloc refType |q#0| (Tclass._module.Queue TInt) $Heap) (and (=> (= (ControlFlow 0 3) (- 0 6)) (and (<= 0 |j#0@1|) (<= |j#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)))))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (not (= |q#0| null)) (not true))) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($IsAlloc refType |q#0| (Tclass._module.Queue TInt) $Heap)) (=> ($IsAlloc refType |q#0| (Tclass._module.Queue TInt) $Heap) (=> (= (ControlFlow 0 3) (- 0 2)) (and (<= 0 |j#0@1|) (<= |j#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)))))))))))))))))
(let ((anon7_LoopBody_correct  (and (=> (= (ControlFlow 0 33) 3) anon8_Then_correct) (=> (= (ControlFlow 0 33) 32) anon8_Else_correct))))
(let ((anon7_LoopDone_correct true))
(let ((anon7_LoopHead_correct  (=> (and (and ($Is SeqType |qc0#0_0@0| (TSeq TInt)) ($IsAlloc SeqType |qc0#0_0@0| (TSeq TInt) $Heap@0)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (not false) (<= 0 |j#0@1|)) (and (=> |$w$loop#0@0| (<= |j#0@1| |k#0|)) (=> |$w$loop#0@0| (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |q#0|) _module.Queue.contents)) (|Seq#Append| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)) |j#0@1|) (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)) |j#0@1|)))))) (and (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@12) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@12)) (= $o@@12 |q#0|)))
 :qid |b3dfy.112:5|
 :skolemid |563|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12))
)) ($HeapSucc $Heap $Heap@0)) (and (forall (($o@@13 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@13) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@13) $f@@4)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@13 $f@@4))))
 :qid |b3dfy.112:5|
 :skolemid |564|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13) $f@@4))
)) (<= (- |k#0| |j#0@1|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 34) 1) anon7_LoopDone_correct) (=> (= (ControlFlow 0 34) 33) anon7_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc |q#0|)) (=> (and (= |j#0@0| (LitInt 0)) (= |$decr_init$loop#00@0| (- |k#0| |j#0@0|))) (and (=> (= (ControlFlow 0 35) (- 0 37)) (=> |$w$loop#0@0| (<= |j#0@0| |k#0|))) (=> (=> |$w$loop#0@0| (<= |j#0@0| |k#0|)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (=> |$w$loop#0@0| (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)) (|Seq#Append| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)) |j#0@0|) (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)) |j#0@0|))))) (=> (=> |$w$loop#0@0| (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)) (|Seq#Append| (|Seq#Drop| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)) |j#0@0|) (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)) |j#0@0|)))) (=> (= (ControlFlow 0 35) 34) anon7_LoopHead_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Benchmark3) ($IsAlloc refType this Tclass._module.Benchmark3 $Heap)))) (and (and ($Is refType |q#0| (Tclass._module.Queue TInt)) ($IsAlloc refType |q#0| (Tclass._module.Queue TInt) $Heap)) (<= (LitInt 0) |k#0|))) (=> (and (and (and (and ($Is SeqType |qc0#0_0| (TSeq TInt)) ($IsAlloc SeqType |qc0#0_0| (TSeq TInt) $Heap)) true) (= 1 $FunctionContextHeight)) (and (<= |k#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |q#0|) _module.Queue.contents)))) (= (ControlFlow 0 38) 35))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
