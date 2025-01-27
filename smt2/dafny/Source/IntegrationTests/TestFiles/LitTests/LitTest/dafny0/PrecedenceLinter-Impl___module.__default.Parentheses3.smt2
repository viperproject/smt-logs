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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$array2 () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.array2.Length0 (T@U) Int)
(declare-fun Tclass._System.array2? (T@U) T@U)
(declare-fun _System.array2.Length1 (T@U) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array2 (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass._System.array? Tagclass._System.array Tagclass._System.array2? Tagclass._System.array2 tytagFamily$array tytagFamily$array2)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |2576|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((_System.array2$arg T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |2815|
 :pattern ( (_System.array2.Length0 $o@@0) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |2817|
 :pattern ( (_System.array2.Length1 $o@@1) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |2582|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2823|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |2471|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (forall ((s@@0 T@U) (i Int) (v@@0 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (< n@@0 (|Seq#Length| s@@0))) (and (=> (= i n@@0) (= (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0) v@@0)) (=> (or (not (= i n@@0)) (not true)) (= (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0) (|Seq#Index| s@@0 n@@0)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |2446|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0))
)))
(assert (forall ((s@@1 T@U) (t T@U) (n@@1 Int) ) (!  (=> (= n@@1 (|Seq#Length| s@@1)) (and (= (|Seq#Take| (|Seq#Append| s@@1 t) n@@1) s@@1) (= (|Seq#Drop| (|Seq#Append| s@@1 t) n@@1) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |2466|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@1 t) n@@1))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@1 t) n@@1))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@2 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2575|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@3 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._System.array2? _System.array2$arg@@2) $h@@2)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2814|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._System.array2? _System.array2$arg@@2) $h@@2))
)))
(assert (forall ((h T@U) (a T@U) (n0 Int) (n1 Int) ) (!  (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a))) (= (|Seq#Take| (|Seq#FromArray| h a) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h a) n0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h a) (IndexField n0)))))
 :qid |DafnyPreludebpl.1348:15|
 :skolemid |2483|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h a) n0) (|Seq#Take| (|Seq#FromArray| h a) n1))
)))
(assert (forall ((s@@2 T@U) (i@@0 Int) (v@@1 T@U) (n@@2 Int) ) (!  (=> (and (and (<= 0 n@@2) (<= n@@2 i@@0)) (< i@@0 (|Seq#Length| s@@2))) (= (|Seq#Drop| (|Seq#Update| s@@2 i@@0 v@@1) n@@2) (|Seq#Update| (|Seq#Drop| s@@2 n@@2) (- i@@0 n@@2) v@@1)))
 :qid |DafnyPreludebpl.1278:15|
 :skolemid |2469|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@2 i@@0 v@@1) n@@2))
)))
(assert (forall ((s@@3 T@U) (n@@3 Int) ) (!  (=> (= n@@3 0) (= (|Seq#Drop| s@@3 n@@3) s@@3))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |2472|
 :pattern ( (|Seq#Drop| s@@3 n@@3))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2234|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2232|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((s@@4 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@4 (TSeq t@@0)) ($IsBox bx t@@0)) ($Is SeqType (|Seq#Build| s@@4 bx) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |2475|
 :pattern ( ($Is SeqType (|Seq#Build| s@@4 bx) (TSeq t@@0)))
)))
(assert (forall ((s@@5 T@U) (n@@4 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@4)) (< j (|Seq#Length| s@@5))) (= (|Seq#Index| (|Seq#Take| s@@5 n@@4) j) (|Seq#Index| s@@5 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |2462|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@5 n@@4) j))
 :pattern ( (|Seq#Index| s@@5 j) (|Seq#Take| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@6))) (= (|Seq#Length| (|Seq#Drop| s@@6 n@@5)) (- (|Seq#Length| s@@6) n@@5)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |2463|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@6 n@@5)))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@3 T@U) ($o@@4 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0)) _System.array$arg@@2 $h@@3))
 :qid |unknown.0:0|
 :skolemid |2573|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2243|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((f T@U) (i@@1 Int) ) (! (= (FDim (MultiIndexField f i@@1)) (+ (FDim f) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |2322|
 :pattern ( (MultiIndexField f i@@1))
)))
(assert (forall ((s@@7 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@7 v@@2)) (+ 1 (|Seq#Length| s@@7)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |2441|
 :pattern ( (|Seq#Build| s@@7 v@@2))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2581|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2822|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@1 h@@0) ($IsAlloc T@@1 v@@3 t@@1 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2256|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@1 h@@0))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@4 T@U) ($o@@5 T@U) ($i0@@0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@5))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@5))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1)) _System.array2$arg@@4 $h@@4))
 :qid |unknown.0:0|
 :skolemid |2812|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((s@@8 T@U) (n@@6 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 n@@6) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length| s@@8) n@@6))) (= (|Seq#Index| (|Seq#Drop| s@@8 n@@6) j@@0) (|Seq#Index| s@@8 (+ j@@0 n@@6))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |2464|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@8 n@@6) j@@0))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |2569|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |2578|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |2806|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |2819|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |2443|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |2574|
 :pattern ( ($Is refType $o@@6 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@7 T@U) ) (! (= ($Is refType $o@@7 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@7 null) (= (dtype $o@@7) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |2813|
 :pattern ( ($Is refType $o@@7 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((s@@9 T@U) (i@@2 Int) (v@@4 T@U) ) (!  (and (=> (= i@@2 (|Seq#Length| s@@9)) (= (|Seq#Index| (|Seq#Build| s@@9 v@@4) i@@2) v@@4)) (=> (or (not (= i@@2 (|Seq#Length| s@@9))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@9 v@@4) i@@2) (|Seq#Index| s@@9 i@@2))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |2442|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@9 v@@4) i@@2))
)))
(assert (forall ((h@@1 T@U) (a@@0 T@U) ) (! (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| (|Seq#FromArray| h@@1 a@@0)))) (= (|Seq#Index| (|Seq#FromArray| h@@1 a@@0) i@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 a@@0) (IndexField i@@3))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |2479|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 a@@0) (IndexField i@@3)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@1 a@@0) i@@3))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |2480|
 :pattern ( (|Seq#FromArray| h@@1 a@@0))
)))
(assert (forall ((s@@10 T@U) (i@@4 Int) (v@@5 T@U) (n@@7 Int) ) (!  (=> (and (and (<= 0 i@@4) (< i@@4 n@@7)) (<= n@@7 (|Seq#Length| s@@10))) (= (|Seq#Drop| (|Seq#Update| s@@10 i@@4 v@@5) n@@7) (|Seq#Drop| s@@10 n@@7)))
 :qid |DafnyPreludebpl.1283:15|
 :skolemid |2470|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@10 i@@4 v@@5) n@@7))
)))
(assert (forall ((s@@11 T@U) (n@@8 Int) ) (!  (=> (and (<= 0 n@@8) (<= n@@8 (|Seq#Length| s@@11))) (= (|Seq#Length| (|Seq#Take| s@@11 n@@8)) n@@8))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |2461|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@11 n@@8)))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@5 T@U) ($o@@8 T@U) ($i0@@1 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@1) (< $i0@@1 (_System.array2.Length0 $o@@8))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@8))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@8) (MultiIndexField (IndexField $i0@@1) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |2811|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@8) (MultiIndexField (IndexField $i0@@1) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2244|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@6 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@6) t@@2) ($Is T@@2 v@@6 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2255|
 :pattern ( ($IsBox ($Box T@@2 v@@6) t@@2))
)))
(assert (forall ((s@@12 T@U) (i@@5 Int) (v@@7 T@U) (n@@9 Int) ) (!  (=> (and (<= n@@9 i@@5) (< i@@5 (|Seq#Length| s@@12))) (= (|Seq#Take| (|Seq#Update| s@@12 i@@5 v@@7) n@@9) (|Seq#Take| s@@12 n@@9)))
 :qid |DafnyPreludebpl.1273:15|
 :skolemid |2468|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@12 i@@5 v@@7) n@@9))
)))
(assert (forall ((o T@U) ) (! (<= 0 (_System.array.Length o))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |2329|
 :pattern ( (_System.array.Length o))
)))
(assert (forall ((s@@13 T@U) ) (! (<= 0 (|Seq#Length| s@@13))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2438|
 :pattern ( (|Seq#Length| s@@13))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array2.Length0 o@@0))
 :qid |unknown.0:0|
 :skolemid |2809|
 :pattern ( (_System.array2.Length0 o@@0))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array2.Length1 o@@1))
 :qid |unknown.0:0|
 :skolemid |2810|
 :pattern ( (_System.array2.Length1 o@@1))
)))
(assert (forall ((v@@8 T@U) (t0@@0 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@8 (TSeq t0@@0) h@@2) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| v@@8))) ($IsAllocBox (|Seq#Index| v@@8 i@@6) t0@@0 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2290|
 :pattern ( (|Seq#Index| v@@8 i@@6))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2291|
 :pattern ( ($IsAlloc SeqType v@@8 (TSeq t0@@0) h@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2224|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2225|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((i@@7 Int) ) (! (= (FDim (IndexField i@@7)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |2320|
 :pattern ( (IndexField i@@7))
)))
(assert (forall ((i@@8 Int) ) (! (= (IndexField_Inverse (IndexField i@@8)) i@@8)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |2321|
 :pattern ( (IndexField i@@8))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |2570|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |2579|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |2807|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |2820|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2242|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@6 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@9)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |2577|
 :pattern ( (_System.array.Length $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@7 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@10)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |2816|
 :pattern ( (_System.array2.Length0 $o@@10) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@8 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@11)) TInt $h@@8))
 :qid |unknown.0:0|
 :skolemid |2818|
 :pattern ( (_System.array2.Length1 $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@9 T@U) ($o@@12 T@U) ($i0@@2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@2) (< $i0@@2 (_System.array.Length $o@@12)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) (IndexField $i0@@2)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |2572|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) (IndexField $i0@@2)) (Tclass._System.array? _System.array$arg@@10))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@13 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))  (=> (and (or (not (= $o@@13 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@13) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3448|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))
)))
(assert (forall ((s@@14 T@U) (i@@9 Int) (v@@9 T@U) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length| s@@14))) (= (|Seq#Length| (|Seq#Update| s@@14 i@@9 v@@9)) (|Seq#Length| s@@14)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |2445|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@14 i@@9 v@@9)))
)))
(assert (forall ((h@@3 T@U) (a@@1 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@3 a@@1)) (_System.array.Length a@@1))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |2478|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@3 a@@1)))
)))
(assert (forall ((f@@0 T@U) (i@@10 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@10)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@10)) i@@10))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |2323|
 :pattern ( (MultiIndexField f@@0 i@@10))
)))
(assert (forall ((s@@15 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@15 val@@4)) s@@15) (= (|Seq#Build_inv1| (|Seq#Build| s@@15 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |2440|
 :pattern ( (|Seq#Build| s@@15 val@@4))
)))
(assert (forall ((bx@@1 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2252|
 :pattern ( ($IsBox bx@@1 (TSeq t@@5)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |2571|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |2580|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |2808|
 :pattern ( ($IsBox bx@@4 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |2821|
 :pattern ( ($IsBox bx@@5 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((s@@16 T@U) (n@@10 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@10) (<= n@@10 k)) (< k (|Seq#Length| s@@16))) (= (|Seq#Index| (|Seq#Drop| s@@16 n@@10) (- k n@@10)) (|Seq#Index| s@@16 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |2465|
 :pattern ( (|Seq#Index| s@@16 k) (|Seq#Drop| s@@16 n@@10))
)))
(assert (forall ((s@@17 T@U) (m@@4 Int) (n@@11 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@11)) (<= (+ m@@4 n@@11) (|Seq#Length| s@@17))) (= (|Seq#Drop| (|Seq#Drop| s@@17 m@@4) n@@11) (|Seq#Drop| s@@17 (+ m@@4 n@@11))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |2474|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@17 m@@4) n@@11))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n@@12 Int) ) (!  (and (=> (< n@@12 (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@12) (|Seq#Index| s0@@0 n@@12))) (=> (<= (|Seq#Length| s0@@0) n@@12) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@12) (|Seq#Index| s1@@0 (- n@@12 (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |2444|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@12))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2235|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2233|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@18 T@U) ) (!  (=> (= (|Seq#Length| s@@18) 0) (= s@@18 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2439|
 :pattern ( (|Seq#Length| s@@18))
)))
(assert (forall ((s@@19 T@U) (n@@13 Int) ) (!  (=> (= n@@13 0) (= (|Seq#Take| s@@19 n@@13) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |2473|
 :pattern ( (|Seq#Take| s@@19 n@@13))
)))
(assert (forall ((h@@4 T@U) (v@@10 T@U) ) (! ($IsAlloc intType v@@10 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2278|
 :pattern ( ($IsAlloc intType v@@10 TInt h@@4))
)))
(assert (forall ((s@@20 T@U) (i@@11 Int) (v@@11 T@U) (n@@14 Int) ) (!  (=> (and (and (<= 0 i@@11) (< i@@11 n@@14)) (<= n@@14 (|Seq#Length| s@@20))) (= (|Seq#Take| (|Seq#Update| s@@20 i@@11 v@@11) n@@14) (|Seq#Update| (|Seq#Take| s@@20 n@@14) i@@11 v@@11)))
 :qid |DafnyPreludebpl.1268:15|
 :skolemid |2467|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@20 i@@11 v@@11) n@@14))
)))
(assert (forall ((v@@12 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@12 (TSeq t0@@2)) (forall ((i@@12 Int) ) (!  (=> (and (<= 0 i@@12) (< i@@12 (|Seq#Length| v@@12))) ($IsBox (|Seq#Index| v@@12 i@@12) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2270|
 :pattern ( (|Seq#Index| v@@12 i@@12))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2271|
 :pattern ( ($Is SeqType v@@12 (TSeq t0@@2)))
)))
(assert (forall ((v@@13 T@U) ) (! ($Is intType v@@13 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2257|
 :pattern ( ($Is intType v@@13 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |w#0| () Bool)
(declare-fun |arr#0| () T@U)
(declare-fun |j#0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |g#0@0| () Int)
(declare-fun |m#0| () T@U)
(declare-fun |i#0| () Int)
(declare-fun |f#0@0| () T@U)
(declare-fun |e#0@0| () T@U)
(declare-fun |d#0@0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun |a#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |b#0| () T@U)
(declare-fun |c#0@@3| () T@U)
(declare-fun |d#0| () T@U)
(declare-fun |e#0| () T@U)
(declare-fun |f#0| () T@U)
(declare-fun |h#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Parentheses3)
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
 (=> (= (ControlFlow 0 0) 49) (let ((anon24_correct true))
(let ((anon32_Else_correct  (=> (not |w#0|) (and (=> (= (ControlFlow 0 4) (- 0 7)) (or (not (= |arr#0| null)) (not true))) (=> (or (not (= |arr#0| null)) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (and (<= 0 |j#0|) (<= |j#0| (_System.array.Length |arr#0|)))) (=> (and (<= 0 |j#0|) (<= |j#0| (_System.array.Length |arr#0|))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| (|Seq#Take| (|Seq#FromArray| $Heap |arr#0|) |j#0|))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| (|Seq#Take| (|Seq#FromArray| $Heap |arr#0|) |j#0|)))) (=> (= (ControlFlow 0 4) 1) anon24_correct))))))))))
(let ((anon32_Then_correct  (=> |w#0| (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |arr#0| null)) (not true))) (=> (or (not (= |arr#0| null)) (not true)) (=> (= (ControlFlow 0 2) 1) anon24_correct))))))
(let ((anon21_correct  (=> (= |g#0@0| (ite |w#0| 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0|) |j#0|)))))) (and (=> (= (ControlFlow 0 8) 2) anon32_Then_correct) (=> (= (ControlFlow 0 8) 4) anon32_Else_correct)))))
(let ((anon31_Else_correct  (=> (not |w#0|) (and (=> (= (ControlFlow 0 10) (- 0 13)) (or (not (= |m#0| null)) (not true))) (=> (or (not (= |m#0| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (and (<= 0 |i#0|) (< |i#0| (_System.array2.Length0 |m#0|)))) (=> (and (<= 0 |i#0|) (< |i#0| (_System.array2.Length0 |m#0|))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (and (<= 0 |j#0|) (< |j#0| (_System.array2.Length1 |m#0|)))) (=> (and (<= 0 |j#0|) (< |j#0| (_System.array2.Length1 |m#0|))) (=> (= (ControlFlow 0 10) 8) anon21_correct))))))))))
(let ((anon31_Then_correct  (=> (and |w#0| (= (ControlFlow 0 9) 8)) anon21_correct)))
(let ((anon18_correct  (=> (= |f#0@0| (ite |w#0| |Seq#Empty| (|Seq#Append| (|Seq#Take| (|Seq#FromArray| $Heap |arr#0|) |i#0|) (|Seq#Drop| (|Seq#FromArray| $Heap |arr#0|) |i#0|)))) (and (=> (= (ControlFlow 0 14) 9) anon31_Then_correct) (=> (= (ControlFlow 0 14) 10) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (not |w#0|) (and (=> (= (ControlFlow 0 16) (- 0 20)) (or (not (= |arr#0| null)) (not true))) (=> (or (not (= |arr#0| null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 19)) (and (<= 0 |i#0|) (<= |i#0| (_System.array.Length |arr#0|)))) (=> (and (<= 0 |i#0|) (<= |i#0| (_System.array.Length |arr#0|))) (and (=> (= (ControlFlow 0 16) (- 0 18)) (or (not (= |arr#0| null)) (not true))) (=> (or (not (= |arr#0| null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (and (<= 0 |i#0|) (<= |i#0| (_System.array.Length |arr#0|)))) (=> (and (<= 0 |i#0|) (<= |i#0| (_System.array.Length |arr#0|))) (=> (= (ControlFlow 0 16) 14) anon18_correct))))))))))))
(let ((anon30_Then_correct  (=> (and |w#0| (= (ControlFlow 0 15) 14)) anon18_correct)))
(let ((anon15_correct  (=> (= |e#0@0| (ite |w#0| |Seq#Empty| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap |arr#0|) |j#0|) |i#0|))) (and (=> (= (ControlFlow 0 21) 15) anon30_Then_correct) (=> (= (ControlFlow 0 21) 16) anon30_Else_correct)))))
(let ((anon29_Else_correct  (=> (not |w#0|) (and (=> (= (ControlFlow 0 23) (- 0 26)) (or (not (= |arr#0| null)) (not true))) (=> (or (not (= |arr#0| null)) (not true)) (and (=> (= (ControlFlow 0 23) (- 0 25)) (and (<= 0 |j#0|) (<= |j#0| (_System.array.Length |arr#0|)))) (=> (and (<= 0 |j#0|) (<= |j#0| (_System.array.Length |arr#0|))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (and (<= 0 |i#0|) (<= |i#0| (|Seq#Length| (|Seq#Take| (|Seq#FromArray| $Heap |arr#0|) |j#0|))))) (=> (and (<= 0 |i#0|) (<= |i#0| (|Seq#Length| (|Seq#Take| (|Seq#FromArray| $Heap |arr#0|) |j#0|)))) (=> (= (ControlFlow 0 23) 21) anon15_correct))))))))))
(let ((anon29_Then_correct  (=> (and |w#0| (= (ControlFlow 0 22) 21)) anon15_correct)))
(let ((anon12_correct  (=> (= |d#0@0| (ite |w#0| |Seq#Empty| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap |arr#0|) |j#0|) |i#0|))) (and (=> (= (ControlFlow 0 27) 22) anon29_Then_correct) (=> (= (ControlFlow 0 27) 23) anon29_Else_correct)))))
(let ((anon28_Else_correct  (=> (not |w#0|) (and (=> (= (ControlFlow 0 29) (- 0 32)) (or (not (= |arr#0| null)) (not true))) (=> (or (not (= |arr#0| null)) (not true)) (and (=> (= (ControlFlow 0 29) (- 0 31)) (and (<= 0 |i#0|) (<= |i#0| (_System.array.Length |arr#0|)))) (=> (and (<= 0 |i#0|) (<= |i#0| (_System.array.Length |arr#0|))) (and (=> (= (ControlFlow 0 29) (- 0 30)) (and (<= |i#0| |j#0|) (<= |j#0| (_System.array.Length |arr#0|)))) (=> (and (<= |i#0| |j#0|) (<= |j#0| (_System.array.Length |arr#0|))) (=> (= (ControlFlow 0 29) 27) anon12_correct))))))))))
(let ((anon28_Then_correct  (=> (and |w#0| (= (ControlFlow 0 28) 27)) anon12_correct)))
(let ((anon9_correct  (=> (= |c#0@0| (ite |w#0| |Seq#Empty| (|Seq#Take| (|Seq#FromArray| $Heap |arr#0|) |i#0|))) (and (=> (= (ControlFlow 0 33) 28) anon28_Then_correct) (=> (= (ControlFlow 0 33) 29) anon28_Else_correct)))))
(let ((anon27_Else_correct  (=> (not |w#0|) (and (=> (= (ControlFlow 0 35) (- 0 37)) (or (not (= |arr#0| null)) (not true))) (=> (or (not (= |arr#0| null)) (not true)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (and (<= 0 |i#0|) (<= |i#0| (_System.array.Length |arr#0|)))) (=> (and (<= 0 |i#0|) (<= |i#0| (_System.array.Length |arr#0|))) (=> (= (ControlFlow 0 35) 33) anon9_correct))))))))
(let ((anon27_Then_correct  (=> (and |w#0| (= (ControlFlow 0 34) 33)) anon9_correct)))
(let ((anon6_correct  (=> (= |b#0@0| (ite |w#0| |Seq#Empty| (|Seq#Drop| (|Seq#FromArray| $Heap |arr#0|) |i#0|))) (and (=> (= (ControlFlow 0 38) 34) anon27_Then_correct) (=> (= (ControlFlow 0 38) 35) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (not |w#0|) (and (=> (= (ControlFlow 0 40) (- 0 42)) (or (not (= |arr#0| null)) (not true))) (=> (or (not (= |arr#0| null)) (not true)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (and (<= 0 |i#0|) (<= |i#0| (_System.array.Length |arr#0|)))) (=> (and (<= 0 |i#0|) (<= |i#0| (_System.array.Length |arr#0|))) (=> (= (ControlFlow 0 40) 38) anon6_correct))))))))
(let ((anon26_Then_correct  (=> (and |w#0| (= (ControlFlow 0 39) 38)) anon6_correct)))
(let ((anon3_correct  (=> (= |a#0@0| (ite |w#0| 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |arr#0|) (IndexField |i#0|)))))) (and (=> (= (ControlFlow 0 43) 39) anon26_Then_correct) (=> (= (ControlFlow 0 43) 40) anon26_Else_correct)))))
(let ((anon25_Else_correct  (=> (not |w#0|) (and (=> (= (ControlFlow 0 45) (- 0 47)) (or (not (= |arr#0| null)) (not true))) (=> (or (not (= |arr#0| null)) (not true)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (and (<= 0 |i#0|) (< |i#0| (_System.array.Length |arr#0|)))) (=> (and (<= 0 |i#0|) (< |i#0| (_System.array.Length |arr#0|))) (=> (= (ControlFlow 0 45) 43) anon3_correct))))))))
(let ((anon25_Then_correct  (=> (and |w#0| (= (ControlFlow 0 44) 43)) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 48) 44) anon25_Then_correct) (=> (= (ControlFlow 0 48) 45) anon25_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |arr#0| (Tclass._System.array TInt)) ($IsAlloc refType |arr#0| (Tclass._System.array TInt) $Heap))) (=> (and (and (and ($Is refType |m#0| (Tclass._System.array2 TInt)) ($IsAlloc refType |m#0| (Tclass._System.array2 TInt) $Heap)) (and (<= (LitInt 0) |i#0|) (<= (LitInt 0) |j#0|))) (and (and ($Is SeqType |b#0| (TSeq TInt)) ($IsAlloc SeqType |b#0| (TSeq TInt) $Heap)) true)) (=> (and (and (and (and (and ($Is SeqType |c#0@@3| (TSeq TInt)) ($IsAlloc SeqType |c#0@@3| (TSeq TInt) $Heap)) true) (and (and ($Is SeqType |d#0| (TSeq TInt)) ($IsAlloc SeqType |d#0| (TSeq TInt) $Heap)) true)) (and (and (and ($Is SeqType |e#0| (TSeq TInt)) ($IsAlloc SeqType |e#0| (TSeq TInt) $Heap)) true) (and (and ($Is SeqType |f#0| (TSeq TInt)) ($IsAlloc SeqType |f#0| (TSeq TInt) $Heap)) true))) (and (and (and (and ($Is SeqType |h#0| (TSeq TInt)) ($IsAlloc SeqType |h#0| (TSeq TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (< |i#0| |j#0|))) (and (and (< |j#0| (_System.array.Length |arr#0|)) (<= (_System.array.Length |arr#0|) (_System.array2.Length0 |m#0|))) (and (<= (_System.array2.Length0 |m#0|) (_System.array2.Length1 |m#0|)) (= (ControlFlow 0 49) 48))))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
