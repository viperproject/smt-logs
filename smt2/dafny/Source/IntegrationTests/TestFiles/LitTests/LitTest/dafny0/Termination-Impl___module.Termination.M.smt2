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
(declare-fun Tagclass._module.Termination? () T@U)
(declare-fun Tagclass._module.Termination () T@U)
(declare-fun tytagFamily$Termination () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Termination? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Termination () T@U)
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
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc Tagclass._module.Termination? Tagclass._module.Termination tytagFamily$Termination)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |2507|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |2508|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |2506|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((a@@2 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b y@@0) (not (|Set#IsMember| (|Set#Difference| a@@2 b) y@@0)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |2522|
 :pattern ( (|Set#Difference| a@@2 b) (|Set#IsMember| b y@@0))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2503|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |2632|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Termination?)  (or (= $o null) (= (dtype $o) Tclass._module.Termination?)))
 :qid |unknown.0:0|
 :skolemid |3442|
 :pattern ( ($Is refType $o Tclass._module.Termination?))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |2521|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Termination $h) ($IsAlloc refType |c#0| Tclass._module.Termination? $h))
 :qid |unknown.0:0|
 :skolemid |3481|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Termination $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Termination? $h))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Termination? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3443|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Termination? $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2496|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2497|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((s@@0 T@U) (n@@0 Int) ) (!  (=> (= n@@0 0) (= (|Seq#Drop| s@@0 n@@0) s@@0))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |2633|
 :pattern ( (|Seq#Drop| s@@0 n@@0))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2395|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2393|
 :pattern ( (Lit T x@@6))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((s@@1 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@1 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@1 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |2636|
 :pattern ( ($Is SeqType (|Seq#Build| s@@1 bx) (TSeq t)))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Subset| a@@4 b@@1) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@4 o@@3) (|Set#IsMember| b@@1 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |2524|
 :pattern ( (|Set#IsMember| a@@4 o@@3))
 :pattern ( (|Set#IsMember| b@@1 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |2525|
 :pattern ( (|Set#Subset| a@@4 b@@1))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (<= n@@1 (|Seq#Length| s@@2))) (= (|Seq#Length| (|Seq#Drop| s@@2 n@@1)) (- (|Seq#Length| s@@2) n@@1)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |2624|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@2 n@@1)))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2404|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v@@0 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2424|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2425|
 :pattern ( ($Is SetType v@@0 (TSet t0@@0)))
)))
(assert (forall ((s@@3 T@U) (i Int) ) (!  (=> (and (< 0 i) (<= i (|Seq#Length| s@@3))) (< (|Seq#Rank| (|Seq#Drop| s@@3 i)) (|Seq#Rank| s@@3)))
 :qid |DafnyPreludebpl.1356:15|
 :skolemid |2646|
 :pattern ( (|Seq#Rank| (|Seq#Drop| s@@3 i)))
)))
(assert (forall ((s@@4 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@4 v@@1)) (+ 1 (|Seq#Length| s@@4)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |2602|
 :pattern ( (|Seq#Build| s@@4 v@@1))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@0) ($IsAlloc T@@1 v@@2 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2417|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2489|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@3 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@2 h@@2) ($IsAlloc T@@2 v@@3 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2488|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@3 t@@2 h@@2))
)))
(assert (forall ((s@@5 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 n@@2) (<= 0 j)) (< j (- (|Seq#Length| s@@5) n@@2))) (= (|Seq#Index| (|Seq#Drop| s@@5 n@@2) j) (|Seq#Index| s@@5 (+ j n@@2))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |2625|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@5 n@@2) j))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Termination?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Termination?)))
 :qid |unknown.0:0|
 :skolemid |3441|
 :pattern ( ($IsBox bx@@2 Tclass._module.Termination?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Termination) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Termination)))
 :qid |unknown.0:0|
 :skolemid |3444|
 :pattern ( ($IsBox bx@@3 Tclass._module.Termination))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Termination)  (and ($Is refType |c#0@@0| Tclass._module.Termination?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3480|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Termination))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Termination?))
)))
(assert (forall ((s@@6 T@U) (i@@0 Int) (v@@4 T@U) ) (!  (and (=> (= i@@0 (|Seq#Length| s@@6)) (= (|Seq#Index| (|Seq#Build| s@@6 v@@4) i@@0) v@@4)) (=> (or (not (= i@@0 (|Seq#Length| s@@6))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@6 v@@4) i@@0) (|Seq#Index| s@@6 i@@0))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |2603|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@6 v@@4) i@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@5 b@@2) (= a@@5 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2528|
 :pattern ( (|Set#Equal| a@@5 b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (c T@U) ) (!  (=> (or (not (= a@@6 c)) (not true)) (=> (and ($HeapSucc a@@6 b@@3) ($HeapSucc b@@3 c)) ($HeapSucc a@@6 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2495|
 :pattern ( ($HeapSucc a@@6 b@@3) ($HeapSucc b@@3 c))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2405|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@5 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@5) t@@3) ($Is T@@3 v@@5 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2416|
 :pattern ( ($IsBox ($Box T@@3 v@@5) t@@3))
)))
(assert (forall ((s@@7 T@U) ) (! (<= 0 (|Seq#Length| s@@7))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2599|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall ((v@@6 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@1) h@@3) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@5) ($IsAllocBox bx@@5 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2445|
 :pattern ( (|Set#IsMember| v@@6 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2446|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@1) h@@3))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@7 (TSeq t0@@2) h@@4) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@7))) ($IsAllocBox (|Seq#Index| v@@7 i@@1) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2451|
 :pattern ( (|Seq#Index| v@@7 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2452|
 :pattern ( ($IsAlloc SeqType v@@7 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2379|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2380|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2385|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2386|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2403|
 :pattern ( ($Box T@@4 x@@8))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3733|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((s@@8 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@8 val@@4)) s@@8) (= (|Seq#Build_inv1| (|Seq#Build| s@@8 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |2601|
 :pattern ( (|Seq#Build| s@@8 val@@4))
)))
(assert (forall ((bx@@6 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2410|
 :pattern ( ($IsBox bx@@6 (TSet t@@8)))
)))
(assert (forall ((bx@@7 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2413|
 :pattern ( ($IsBox bx@@7 (TSeq t@@9)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@9 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@9))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@9))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2494|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@9)))
)))
(assert (= (Tag Tclass._module.Termination?) Tagclass._module.Termination?))
(assert (= (TagFamily Tclass._module.Termination?) tytagFamily$Termination))
(assert (= (Tag Tclass._module.Termination) Tagclass._module.Termination))
(assert (= (TagFamily Tclass._module.Termination) tytagFamily$Termination))
(assert (forall ((s@@9 T@U) (n@@3 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@3) (<= n@@3 k@@2)) (< k@@2 (|Seq#Length| s@@9))) (= (|Seq#Index| (|Seq#Drop| s@@9 n@@3) (- k@@2 n@@3)) (|Seq#Index| s@@9 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |2626|
 :pattern ( (|Seq#Index| s@@9 k@@2) (|Seq#Drop| s@@9 n@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Equal| a@@7 b@@4) (forall ((o@@4 T@U) ) (! (= (|Set#IsMember| a@@7 o@@4) (|Set#IsMember| b@@4 o@@4))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2526|
 :pattern ( (|Set#IsMember| a@@7 o@@4))
 :pattern ( (|Set#IsMember| b@@4 o@@4))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2527|
 :pattern ( (|Set#Equal| a@@7 b@@4))
)))
(assert (forall ((s@@10 T@U) (m@@4 Int) (n@@4 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@4)) (<= (+ m@@4 n@@4) (|Seq#Length| s@@10))) (= (|Seq#Drop| (|Seq#Drop| s@@10 m@@4) n@@4) (|Seq#Drop| s@@10 (+ m@@4 n@@4))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |2635|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@10 m@@4) n@@4))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2396|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2394|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((s@@11 T@U) ) (!  (=> (= (|Seq#Length| s@@11) 0) (= s@@11 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2600|
 :pattern ( (|Seq#Length| s@@11))
)))
(assert (forall ((h@@6 T@U) (v@@8 T@U) ) (! ($IsAlloc intType v@@8 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2439|
 :pattern ( ($IsAlloc intType v@@8 TInt h@@6))
)))
(assert (forall ((v@@9 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@9 (TSeq t0@@4)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@9))) ($IsBox (|Seq#Index| v@@9 i@@2) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2431|
 :pattern ( (|Seq#Index| v@@9 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2432|
 :pattern ( ($Is SeqType v@@9 (TSeq t0@@4)))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2418|
 :pattern ( ($Is intType v@@10 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@1| () Int)
(declare-fun |b#0@3| () Bool)
(declare-fun |b#0@1| () Bool)
(declare-fun |i#0@4| () Int)
(declare-fun |r#0@1| () T@U)
(declare-fun |r#0@0| () T@U)
(declare-fun |s#0@3| () T@U)
(declare-fun |s#0@1| () T@U)
(declare-fun |q#0@3| () T@U)
(declare-fun |q#0@1| () T@U)
(declare-fun |q#0@2| () T@U)
(declare-fun |i#0@3| () Int)
(declare-fun |b#0@2| () Bool)
(declare-fun |i#0@2| () Int)
(declare-fun |s#0@2| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |b#0@0| () Bool)
(declare-fun |i#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun |q#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun this () T@U)
(declare-fun |r#0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |q#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.Termination.M)
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
 (=> (= (ControlFlow 0 0) 23) (let ((continue_0_correct  (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (or (<= 0 |i#0@1|) (and (not |b#0@3|) |b#0@1|)) (= |i#0@4| |i#0@1|))) (=> (or (or (<= 0 |i#0@1|) (and (not |b#0@3|) |b#0@1|)) (= |i#0@4| |i#0@1|)) (=> (= (ControlFlow 0 6) (- 0 5)) (or (and (not |b#0@3|) |b#0@1|) (and (= |b#0@3| |b#0@1|) (or (< |i#0@4| |i#0@1|) (and (= |i#0@4| |i#0@1|) (or (and (= |r#0@1| null) (or (not (= |r#0@0| null)) (not true))) (and (=  (or (not (= |r#0@1| null)) (not true))  (or (not (= |r#0@0| null)) (not true))) (or (and (|Set#Subset| |s#0@3| |s#0@1|) (not (|Set#Subset| |s#0@1| |s#0@3|))) (and (|Set#Equal| |s#0@3| |s#0@1|) (< (|Seq#Rank| |q#0@3|) (|Seq#Rank| |q#0@1|)))))))))))))))
(let ((anon23_Then_correct  (=> (or (not (= (|Seq#Length| |q#0@1|) 0)) (not true)) (and (=> (= (ControlFlow 0 12) (- 0 13)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |q#0@1|)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |q#0@1|))) (=> (= |q#0@2| (|Seq#Drop| |q#0@1| (LitInt 1))) (=> (and (= |r#0@1| |r#0@0|) (= |q#0@3| |q#0@2|)) (=> (and (and (= |i#0@4| |i#0@1|) (= |b#0@3| |b#0@1|)) (and (= |s#0@3| |s#0@1|) (= (ControlFlow 0 12) 6))) continue_0_correct))))))))
(let ((anon22_Then_correct  (=> (or (not (= |r#0@0| null)) (not true)) (=> (and (= |r#0@1| null) (= |q#0@3| |q#0@1|)) (=> (and (and (= |i#0@4| |i#0@1|) (= |b#0@3| |b#0@1|)) (and (= |s#0@3| |s#0@1|) (= (ControlFlow 0 11) 6))) continue_0_correct)))))
(let ((anon21_Then_correct  (=> (and (and (and (<= (LitInt 20) |i#0@1|) (= |i#0@3| (- |i#0@1| 20))) (and (= |r#0@1| |r#0@0|) (= |q#0@3| |q#0@1|))) (and (and (= |i#0@4| |i#0@3|) (= |b#0@3| |b#0@1|)) (and (= |s#0@3| |s#0@1|) (= (ControlFlow 0 10) 6)))) continue_0_correct)))
(let ((anon20_Then_correct  (=> |b#0@1| (=> (and (and (and (= |b#0@2|  (not |b#0@1|)) (= |i#0@2| (+ |i#0@1| 1))) (and (= |r#0@1| |r#0@0|) (= |q#0@3| |q#0@1|))) (and (and (= |i#0@4| |i#0@2|) (= |b#0@3| |b#0@2|)) (and (= |s#0@3| |s#0@1|) (= (ControlFlow 0 9) 6)))) continue_0_correct))))
(let ((anon19_Then_correct  (=> (and (and (and (|Set#IsMember| |s#0@1| ($Box intType (int_2_U (LitInt 12)))) (= |s#0@2| (|Set#Difference| |s#0@1| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 12))))))) (and (= |r#0@1| |r#0@0|) (= |q#0@3| |q#0@1|))) (and (and (= |i#0@4| |i#0@1|) (= |b#0@3| |b#0@1|)) (and (= |s#0@3| |s#0@2|) (= (ControlFlow 0 8) 6)))) continue_0_correct)))
(let ((anon23_Else_correct true))
(let ((anon22_Else_correct  (=> (= |r#0@0| null) (and (=> (= (ControlFlow 0 14) 12) anon23_Then_correct) (=> (= (ControlFlow 0 14) 4) anon23_Else_correct)))))
(let ((anon21_Else_correct  (=> (< |i#0@1| (LitInt 20)) (and (=> (= (ControlFlow 0 15) 11) anon22_Then_correct) (=> (= (ControlFlow 0 15) 14) anon22_Else_correct)))))
(let ((anon20_Else_correct  (=> (not |b#0@1|) (and (=> (= (ControlFlow 0 16) 10) anon21_Then_correct) (=> (= (ControlFlow 0 16) 15) anon21_Else_correct)))))
(let ((anon19_Else_correct  (=> (not (|Set#IsMember| |s#0@1| ($Box intType (int_2_U (LitInt 12))))) (and (=> (= (ControlFlow 0 17) 9) anon20_Then_correct) (=> (= (ControlFlow 0 17) 16) anon20_Else_correct)))))
(let ((anon18_Else_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 18) 8) anon19_Then_correct) (=> (= (ControlFlow 0 18) 17) anon19_Else_correct)))))
(let ((anon18_Then_correct true))
(let ((anon17_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 19) 3) anon18_Then_correct) (=> (= (ControlFlow 0 19) 18) anon18_Else_correct)))))
(let ((anon17_Then_correct true))
(let ((anon16_LoopBody_correct  (and (=> (= (ControlFlow 0 20) 2) anon17_Then_correct) (=> (= (ControlFlow 0 20) 19) anon17_Else_correct))))
(let ((anon16_LoopDone_correct true))
(let ((anon16_LoopHead_correct  (=> (and ($Is SeqType |q#0@1| (TSeq TInt)) ($IsAlloc SeqType |q#0@1| (TSeq TInt) $Heap@0)) (=> (and (and ($Is refType |r#0@0| Tclass._module.Termination?) ($IsAlloc refType |r#0@0| Tclass._module.Termination? $Heap@0)) (and ($Is SetType |s#0@1| (TSet TInt)) ($IsAlloc SetType |s#0@1| (TSet TInt) $Heap@0))) (=> (and (and (and (and (and (not false) (<= 0 |i#0@1|)) |b#0@0|) (= |i#0@0| 500)) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2)))
 :qid |Terminationdfy.61:5|
 :skolemid |3469|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
))) (and (and ($HeapSucc $Heap@0 $Heap@0) (forall (($o@@3 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@3 $f@@0))))
 :qid |Terminationdfy.61:5|
 :skolemid |3470|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) $f@@0))
))) (and (=> |b#0@1| |b#0@0|) (=> (= |b#0@1| |b#0@0|) (and (<= |i#0@1| |i#0@0|) (=> (= |i#0@1| |i#0@0|) (and (=> (or (not (= |r#0@0| null)) (not true)) (or (not (= $nw@0 null)) (not true))) (=> (=  (or (not (= |r#0@0| null)) (not true))  (or (not (= $nw@0 null)) (not true))) (and (|Set#Subset| |s#0@1| |s#0@0|) (=> (|Set#Equal| |s#0@1| |s#0@0|) (<= (|Seq#Rank| |q#0@1|) (|Seq#Rank| |q#0@0|)))))))))))) (and (=> (= (ControlFlow 0 21) 1) anon16_LoopDone_correct) (=> (= (ControlFlow 0 21) 20) anon16_LoopBody_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |b#0@0| (U_2_bool (Lit boolType (bool_2_U true)))) (= |i#0@0| (LitInt 500))) (=> (and (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.Termination?)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@0))) (and (and ($IsHeapAnchor $Heap@0) (= |s#0@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 12)))) ($Box intType (int_2_U (LitInt 200))))))) (and (= |q#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 8)))) ($Box intType (int_2_U (LitInt 13)))))) (= (ControlFlow 0 22) 21)))) anon16_LoopHead_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Termination) ($IsAlloc refType this Tclass._module.Termination $Heap)))) (=> (and (and (and (and ($Is refType |r#0| Tclass._module.Termination?) ($IsAlloc refType |r#0| Tclass._module.Termination? $Heap)) true) (and (and ($Is SetType |s#0| (TSet TInt)) ($IsAlloc SetType |s#0| (TSet TInt) $Heap)) true)) (and (and (and ($Is SeqType |q#0| (TSeq TInt)) ($IsAlloc SeqType |q#0| (TSeq TInt) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 23) 22)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
