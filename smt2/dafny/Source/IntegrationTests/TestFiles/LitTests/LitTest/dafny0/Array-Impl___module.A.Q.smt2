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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._module.A? () T@U)
(declare-fun Tagclass._module.A () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$A () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun Tclass._module.A? () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun Tclass._module.A () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.array? Tagclass._System.array Tagclass._module.A? Tagclass._module.A tytagFamily$array tytagFamily$A)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |920|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |926|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |815|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.A?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.A?)))
 :qid |unknown.0:0|
 :skolemid |1190|
 :pattern ( ($Is refType $o@@0 Tclass._module.A?))
)))
(assert (forall ((s@@0 T@U) (i Int) (v@@0 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (< n@@0 (|Seq#Length| s@@0))) (and (=> (= i n@@0) (= (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0) v@@0)) (=> (or (not (= i n@@0)) (not true)) (= (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0) (|Seq#Index| s@@0 n@@0)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |790|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.A $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.A? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1278|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.A $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.A? $h@@0))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |919|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.A? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1191|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.A? $h@@2))
)))
(assert (forall ((h T@U) (a T@U) (n0 Int) (n1 Int) ) (!  (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a))) (= (|Seq#Take| (|Seq#FromArray| h a) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h a) n0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h a) (IndexField n0)))))
 :qid |DafnyPreludebpl.1348:15|
 :skolemid |827|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h a) n0) (|Seq#Take| (|Seq#FromArray| h a) n1))
)))
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@1 T@U) (n@@1 Int) ) (!  (=> (and (and (<= 0 n@@1) (<= n@@1 i@@0)) (< i@@0 (|Seq#Length| s@@1))) (= (|Seq#Drop| (|Seq#Update| s@@1 i@@0 v@@1) n@@1) (|Seq#Update| (|Seq#Drop| s@@1 n@@1) (- i@@0 n@@1) v@@1)))
 :qid |DafnyPreludebpl.1278:15|
 :skolemid |813|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@1 i@@0 v@@1) n@@1))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |679|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |680|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((s@@2 T@U) (n@@2 Int) ) (!  (=> (= n@@2 0) (= (|Seq#Drop| s@@2 n@@2) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |816|
 :pattern ( (|Seq#Drop| s@@2 n@@2))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |578|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |576|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s@@3 T@U) (n@@3 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@3)) (< j (|Seq#Length| s@@3))) (= (|Seq#Index| (|Seq#Take| s@@3 n@@3) j) (|Seq#Index| s@@3 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |806|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@3 n@@3) j))
 :pattern ( (|Seq#Index| s@@3 j) (|Seq#Take| s@@3 n@@3))
)))
(assert (forall ((s@@4 T@U) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (<= n@@4 (|Seq#Length| s@@4))) (= (|Seq#Length| (|Seq#Drop| s@@4 n@@4)) (- (|Seq#Length| s@@4) n@@4)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |807|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@4 n@@4)))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@3 T@U) ($o@@3 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) (IndexField $i0)) _System.array$arg@@2 $h@@3))
 :qid |unknown.0:0|
 :skolemid |917|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |800|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |801|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |587|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((s@@5 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@5 v@@2)) (+ 1 (|Seq#Length| s@@5)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |785|
 :pattern ( (|Seq#Build| s@@5 v@@2))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |925|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@3 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t h@@1) ($IsAlloc T@@1 v@@3 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |600|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx t@@0 h@@2) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |672|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@4 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@4 t@@1 h@@3) ($IsAlloc T@@2 v@@4 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |671|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@4 t@@1 h@@3))
)))
(assert (forall ((s@@6 T@U) (n@@5 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@5) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@6) n@@5))) (= (|Seq#Index| (|Seq#Drop| s@@6 n@@5) j@@1) (|Seq#Index| s@@6 (+ j@@1 n@@5))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |808|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@6 n@@5) j@@1))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |913|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |922|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.A?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.A?)))
 :qid |unknown.0:0|
 :skolemid |1189|
 :pattern ( ($IsBox bx@@0 Tclass._module.A?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.A) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.A)))
 :qid |unknown.0:0|
 :skolemid |1192|
 :pattern ( ($IsBox bx@@1 Tclass._module.A))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |918|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.A)  (and ($Is refType |c#0@@2| Tclass._module.A?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1277|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.A))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.A?))
)))
(assert (forall ((s@@7 T@U) (i@@1 Int) (v@@5 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@7)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@5) i@@1) v@@5)) (=> (or (not (= i@@1 (|Seq#Length| s@@7))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@7 v@@5) i@@1) (|Seq#Index| s@@7 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |786|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@7 v@@5) i@@1))
)))
(assert (forall ((h@@4 T@U) (a@@0 T@U) ) (! (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| (|Seq#FromArray| h@@4 a@@0)))) (= (|Seq#Index| (|Seq#FromArray| h@@4 a@@0) i@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@0) (IndexField i@@2))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |823|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@0) (IndexField i@@2)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@4 a@@0) i@@2))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |824|
 :pattern ( (|Seq#FromArray| h@@4 a@@0))
)))
(assert (forall ((s@@8 T@U) (i@@3 Int) (v@@6 T@U) (n@@6 Int) ) (!  (=> (and (and (<= 0 i@@3) (< i@@3 n@@6)) (<= n@@6 (|Seq#Length| s@@8))) (= (|Seq#Drop| (|Seq#Update| s@@8 i@@3 v@@6) n@@6) (|Seq#Drop| s@@8 n@@6)))
 :qid |DafnyPreludebpl.1283:15|
 :skolemid |814|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@8 i@@3 v@@6) n@@6))
)))
(assert (forall ((a@@1 T@U) (b T@U) ) (!  (=> (|Seq#Equal| a@@1 b) (= a@@1 b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |802|
 :pattern ( (|Seq#Equal| a@@1 b))
)))
(assert (forall ((s@@9 T@U) (n@@7 Int) ) (!  (=> (and (<= 0 n@@7) (<= n@@7 (|Seq#Length| s@@9))) (= (|Seq#Length| (|Seq#Take| s@@9 n@@7)) n@@7))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |805|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@9 n@@7)))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |678|
 :pattern ( ($HeapSucc a@@2 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |588|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@7 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@7) t@@2) ($Is T@@3 v@@7 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |599|
 :pattern ( ($IsBox ($Box T@@3 v@@7) t@@2))
)))
(assert (forall ((s@@10 T@U) (i@@4 Int) (v@@8 T@U) (n@@8 Int) ) (!  (=> (and (<= n@@8 i@@4) (< i@@4 (|Seq#Length| s@@10))) (= (|Seq#Take| (|Seq#Update| s@@10 i@@4 v@@8) n@@8) (|Seq#Take| s@@10 n@@8)))
 :qid |DafnyPreludebpl.1273:15|
 :skolemid |812|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@10 i@@4 v@@8) n@@8))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |673|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((s@@11 T@U) ) (! (<= 0 (|Seq#Length| s@@11))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |782|
 :pattern ( (|Seq#Length| s@@11))
)))
(assert (forall ((i@@5 Int) ) (! (= (FDim (IndexField i@@5)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |664|
 :pattern ( (IndexField i@@5))
)))
(assert (forall ((i@@6 Int) ) (! (= (IndexField_Inverse (IndexField i@@6)) i@@6)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |665|
 :pattern ( (IndexField i@@6))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |914|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |923|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |586|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((h@@5 T@U) (i@@7 Int) (v@@9 T@U) (a@@3 T@U) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (_System.array.Length a@@3))) (= (|Seq#FromArray| (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 a@@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 a@@3) (IndexField i@@7) v@@9)) a@@3) (|Seq#Update| (|Seq#FromArray| h@@5 a@@3) i@@7 v@@9)))
 :qid |DafnyPreludebpl.1343:15|
 :skolemid |826|
 :pattern ( (|Seq#FromArray| (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 a@@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 a@@3) (IndexField i@@7) v@@9)) a@@3))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@5)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |921|
 :pattern ( (_System.array.Length $o@@5) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@5 T@U) ($o@@6 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@6)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |916|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1371|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((h0 T@U) (h1 T@U) (a@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap h0) ($IsGoodHeap h1)) ($HeapSucc h0 h1)) (= (MapType0Select refType (MapType0Type FieldType BoxType) h0 a@@4) (MapType0Select refType (MapType0Type FieldType BoxType) h1 a@@4))) (= (|Seq#FromArray| h0 a@@4) (|Seq#FromArray| h1 a@@4)))
 :qid |DafnyPreludebpl.1338:15|
 :skolemid |825|
 :pattern ( (|Seq#FromArray| h1 a@@4) ($HeapSucc h0 h1))
)))
(assert (forall ((s@@12 T@U) (i@@8 Int) (v@@10 T@U) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (|Seq#Length| s@@12))) (= (|Seq#Length| (|Seq#Update| s@@12 i@@8 v@@10)) (|Seq#Length| s@@12)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |789|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@12 i@@8 v@@10)))
)))
(assert (forall ((h@@6 T@U) (a@@5 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@6 a@@5)) (_System.array.Length a@@5))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |822|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@6 a@@5)))
)))
(assert (forall ((s@@13 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@13 val@@4)) s@@13) (= (|Seq#Build_inv1| (|Seq#Build| s@@13 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |784|
 :pattern ( (|Seq#Build| s@@13 val@@4))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |915|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |924|
 :pattern ( ($IsBox bx@@4 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((h@@7 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r) f x@@6))) ($HeapSucc h@@7 (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |677|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r) f x@@6)))
)))
(assert (= (Tag Tclass._module.A?) Tagclass._module.A?))
(assert (= (TagFamily Tclass._module.A?) tytagFamily$A))
(assert (= (Tag Tclass._module.A) Tagclass._module.A))
(assert (= (TagFamily Tclass._module.A) tytagFamily$A))
(assert (forall ((s@@14 T@U) (n@@9 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@9) (<= n@@9 k@@2)) (< k@@2 (|Seq#Length| s@@14))) (= (|Seq#Index| (|Seq#Drop| s@@14 n@@9) (- k@@2 n@@9)) (|Seq#Index| s@@14 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |809|
 :pattern ( (|Seq#Index| s@@14 k@@2) (|Seq#Drop| s@@14 n@@9))
)))
(assert (forall ((s@@15 T@U) (m@@4 Int) (n@@10 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@10)) (<= (+ m@@4 n@@10) (|Seq#Length| s@@15))) (= (|Seq#Drop| (|Seq#Drop| s@@15 m@@4) n@@10) (|Seq#Drop| s@@15 (+ m@@4 n@@10))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |818|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@15 m@@4) n@@10))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |579|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |577|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((s@@16 T@U) ) (!  (=> (= (|Seq#Length| s@@16) 0) (= s@@16 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |783|
 :pattern ( (|Seq#Length| s@@16))
)))
(assert (forall ((s@@17 T@U) (n@@11 Int) ) (!  (=> (= n@@11 0) (= (|Seq#Take| s@@17 n@@11) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |817|
 :pattern ( (|Seq#Take| s@@17 n@@11))
)))
(assert (forall ((h@@8 T@U) (v@@11 T@U) ) (! ($IsAlloc intType v@@11 TInt h@@8)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |622|
 :pattern ( ($IsAlloc intType v@@11 TInt h@@8))
)))
(assert (forall ((s@@18 T@U) (i@@9 Int) (v@@12 T@U) (n@@12 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 n@@12)) (<= n@@12 (|Seq#Length| s@@18))) (= (|Seq#Take| (|Seq#Update| s@@18 i@@9 v@@12) n@@12) (|Seq#Update| (|Seq#Take| s@@18 n@@12) i@@9 v@@12)))
 :qid |DafnyPreludebpl.1268:15|
 :skolemid |811|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@18 i@@9 v@@12) n@@12))
)))
(assert (forall ((v@@13 T@U) ) (! ($Is intType v@@13 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |601|
 :pattern ( ($Is intType v@@13 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@5 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun |i#2@0| () Int)
(declare-fun |i#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $index0@0 () T@U)
(declare-fun $index1@0 () T@U)
(declare-fun $index2@0 () T@U)
(declare-fun $index3@0 () T@U)
(declare-fun $index4@0 () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |$rhs#2@0| () Int)
(declare-fun |$rhs#3@0| () Int)
(declare-fun |$rhs#4@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun this () T@U)
(declare-fun |a#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.A.Q)
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
 (=> (= (ControlFlow 0 0) 72) (let ((anon10_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (forall ((|i#3| Int) ) (!  (=> (and (<= (LitInt 0) |i#3|) (< |i#3| (_System.array.Length $nw@0))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#3|)))) |i#3|))
 :qid |Arraydfy.87:19|
 :skolemid |1239|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#3|))))
)))))
(let ((anon16_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (_System.array.Length $nw@0)))) (= (ControlFlow 0 8) 4)) anon10_correct)))
(let ((anon16_Then_correct  (=> (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= 0 |i#2@0|) (< |i#2@0| (_System.array.Length $nw@0)))) (=> (= (ControlFlow 0 5) 4) anon10_correct)))))))
(let ((anon15_Else_correct  (=> (< |i#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 11) 5) anon16_Then_correct) (=> (= (ControlFlow 0 11) 8) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (<= (LitInt 0) |i#2@0|) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 9) 5) anon16_Then_correct) (=> (= (ControlFlow 0 9) 8) anon16_Else_correct))))))
(let ((anon14_Then_correct  (and (=> (= (ControlFlow 0 12) 9) anon15_Then_correct) (=> (= (ControlFlow 0 12) 11) anon15_Else_correct))))
(let ((anon14_Else_correct true))
(let ((anon5_correct  (and (=> (= (ControlFlow 0 13) (- 0 16)) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (<= |i#1| (_System.array.Length $nw@0))) (|Seq#Equal| |Seq#Empty| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@5 $nw@0) |i#1|) |i#1|)))
 :qid |Arraydfy.85:19|
 :skolemid |1237|
 :pattern ( (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@5 $nw@0) |i#1|) |i#1|))
))) (=> (forall ((|i#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@0|) (<= |i#1@@0| (_System.array.Length $nw@0))) (|Seq#Equal| |Seq#Empty| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@5 $nw@0) |i#1@@0|) |i#1@@0|)))
 :qid |Arraydfy.85:19|
 :skolemid |1237|
 :pattern ( (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@5 $nw@0) |i#1@@0|) |i#1@@0|))
)) (and (=> (= (ControlFlow 0 13) (- 0 15)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (|Seq#Equal| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) (|Seq#FromArray| $Heap@5 $nw@0))) (=> (|Seq#Equal| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) (|Seq#FromArray| $Heap@5 $nw@0)) (and (=> (= (ControlFlow 0 13) 12) anon14_Then_correct) (=> (= (ControlFlow 0 13) 2) anon14_Else_correct))))))))))
(let ((anon13_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0@0|) (<= |i#0@0| (_System.array.Length $nw@0)))) (= (ControlFlow 0 21) 13)) anon5_correct)))
(let ((anon13_Then_correct  (=> (and (<= (LitInt 0) |i#0@0|) (<= |i#0@0| (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 17) (- 0 20)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 17) (- 0 19)) (and (<= 0 |i#0@0|) (<= |i#0@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (and (<= |i#0@0| |i#0@0|) (<= |i#0@0| (_System.array.Length $nw@0)))) (=> (= (ControlFlow 0 17) 13) anon5_correct))))))))
(let ((anon12_Else_correct  (=> (< |i#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 24) 17) anon13_Then_correct) (=> (= (ControlFlow 0 24) 21) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (<= (LitInt 0) |i#0@0|) (and (=> (= (ControlFlow 0 22) (- 0 23)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 22) 17) anon13_Then_correct) (=> (= (ControlFlow 0 22) 21) anon13_Else_correct))))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 25) 22) anon12_Then_correct) (=> (= (ControlFlow 0 25) 24) anon12_Else_correct))))
(let ((anon11_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 26) (- 0 71)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TInt))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 5)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 26) (- 0 70)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 69)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0))) (=> (= $index0@0 (IndexField (LitInt 0))) (and (=> (= (ControlFlow 0 26) (- 0 68)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@0)) (and (=> (= (ControlFlow 0 26) (- 0 67)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 66)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@0))) (=> (= $index1@0 (IndexField (LitInt 1))) (and (=> (= (ControlFlow 0 26) (- 0 65)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index1@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index1@0)) (and (=> (= (ControlFlow 0 26) (- 0 64)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 63)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@0))) (=> (= $index2@0 (IndexField (LitInt 2))) (and (=> (= (ControlFlow 0 26) (- 0 62)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index2@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index2@0)) (and (=> (= (ControlFlow 0 26) (- 0 61)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 60)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length $nw@0))) (=> (= $index3@0 (IndexField (LitInt 3))) (and (=> (= (ControlFlow 0 26) (- 0 59)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index3@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index3@0)) (and (=> (= (ControlFlow 0 26) (- 0 58)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 57)) (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array.Length $nw@0))) (=> (= $index4@0 (IndexField (LitInt 4))) (and (=> (= (ControlFlow 0 26) (- 0 56)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index4@0))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index4@0)) (=> (= |$rhs#0@0| (LitInt 0)) (=> (and (and (= |$rhs#1@0| (LitInt 1)) (= |$rhs#2@0| (LitInt 2))) (and (= |$rhs#3@0| (LitInt 3)) (= |$rhs#4@0| (LitInt 4)))) (and (=> (= (ControlFlow 0 26) (- 0 55)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 1) (LitInt 0))) (not true))) (= ($Box intType (int_2_U |$rhs#1@0|)) ($Box intType (int_2_U |$rhs#0@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 1) (LitInt 0))) (not true))) (= ($Box intType (int_2_U |$rhs#1@0|)) ($Box intType (int_2_U |$rhs#0@0|)))) (and (=> (= (ControlFlow 0 26) (- 0 54)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 2) (LitInt 0))) (not true))) (= ($Box intType (int_2_U |$rhs#2@0|)) ($Box intType (int_2_U |$rhs#0@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 2) (LitInt 0))) (not true))) (= ($Box intType (int_2_U |$rhs#2@0|)) ($Box intType (int_2_U |$rhs#0@0|)))) (and (=> (= (ControlFlow 0 26) (- 0 53)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 2) (LitInt 1))) (not true))) (= ($Box intType (int_2_U |$rhs#2@0|)) ($Box intType (int_2_U |$rhs#1@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 2) (LitInt 1))) (not true))) (= ($Box intType (int_2_U |$rhs#2@0|)) ($Box intType (int_2_U |$rhs#1@0|)))) (and (=> (= (ControlFlow 0 26) (- 0 52)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 3) (LitInt 0))) (not true))) (= ($Box intType (int_2_U |$rhs#3@0|)) ($Box intType (int_2_U |$rhs#0@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 3) (LitInt 0))) (not true))) (= ($Box intType (int_2_U |$rhs#3@0|)) ($Box intType (int_2_U |$rhs#0@0|)))) (and (=> (= (ControlFlow 0 26) (- 0 51)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 3) (LitInt 1))) (not true))) (= ($Box intType (int_2_U |$rhs#3@0|)) ($Box intType (int_2_U |$rhs#1@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 3) (LitInt 1))) (not true))) (= ($Box intType (int_2_U |$rhs#3@0|)) ($Box intType (int_2_U |$rhs#1@0|)))) (and (=> (= (ControlFlow 0 26) (- 0 50)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 3) (LitInt 2))) (not true))) (= ($Box intType (int_2_U |$rhs#3@0|)) ($Box intType (int_2_U |$rhs#2@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 3) (LitInt 2))) (not true))) (= ($Box intType (int_2_U |$rhs#3@0|)) ($Box intType (int_2_U |$rhs#2@0|)))) (and (=> (= (ControlFlow 0 26) (- 0 49)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 4) (LitInt 0))) (not true))) (= ($Box intType (int_2_U |$rhs#4@0|)) ($Box intType (int_2_U |$rhs#0@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 4) (LitInt 0))) (not true))) (= ($Box intType (int_2_U |$rhs#4@0|)) ($Box intType (int_2_U |$rhs#0@0|)))) (and (=> (= (ControlFlow 0 26) (- 0 48)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 4) (LitInt 1))) (not true))) (= ($Box intType (int_2_U |$rhs#4@0|)) ($Box intType (int_2_U |$rhs#1@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 4) (LitInt 1))) (not true))) (= ($Box intType (int_2_U |$rhs#4@0|)) ($Box intType (int_2_U |$rhs#1@0|)))) (and (=> (= (ControlFlow 0 26) (- 0 47)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 4) (LitInt 2))) (not true))) (= ($Box intType (int_2_U |$rhs#4@0|)) ($Box intType (int_2_U |$rhs#2@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 4) (LitInt 2))) (not true))) (= ($Box intType (int_2_U |$rhs#4@0|)) ($Box intType (int_2_U |$rhs#2@0|)))) (and (=> (= (ControlFlow 0 26) (- 0 46)) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 4) (LitInt 3))) (not true))) (= ($Box intType (int_2_U |$rhs#4@0|)) ($Box intType (int_2_U |$rhs#3@0|))))) (=> (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (LitInt 4) (LitInt 3))) (not true))) (= ($Box intType (int_2_U |$rhs#4@0|)) ($Box intType (int_2_U |$rhs#3@0|)))) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) $index0@0 ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@1)) (=> (and (and (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) $index1@0 ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@2)) (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) $index2@0 ($Box intType (int_2_U |$rhs#2@0|))))) ($IsGoodHeap $Heap@3))) (and (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) $index3@0 ($Box intType (int_2_U |$rhs#3@0|))))) ($IsGoodHeap $Heap@4)) (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) $index4@0 ($Box intType (int_2_U |$rhs#4@0|))))) ($IsGoodHeap $Heap@5)))) (and (=> (= (ControlFlow 0 26) (- 0 45)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 44)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 26) (- 0 43)) (|Seq#Equal| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) (|Seq#Drop| (|Seq#FromArray| $Heap@5 $nw@0) (LitInt 1)))) (=> (|Seq#Equal| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) (|Seq#Drop| (|Seq#FromArray| $Heap@5 $nw@0) (LitInt 1))) (and (=> (= (ControlFlow 0 26) (- 0 42)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 41)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 26) (- 0 40)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 26) (- 0 39)) (and (<= (LitInt 1) (_System.array.Length $nw@0)) (<= (_System.array.Length $nw@0) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 26) (- 0 38)) (|Seq#Equal| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@5 $nw@0) (_System.array.Length $nw@0)) (LitInt 1)))) (=> (|Seq#Equal| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 3)))) ($Box intType (int_2_U (LitInt 4)))) (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@5 $nw@0) (_System.array.Length $nw@0)) (LitInt 1))) (and (=> (= (ControlFlow 0 26) (- 0 37)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 36)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 26) (- 0 35)) (and (<= (LitInt 1) (LitInt 2)) (<= (LitInt 2) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 26) (- 0 34)) (|Seq#Equal| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@5 $nw@0) (LitInt 2)) (LitInt 1)))) (=> (|Seq#Equal| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@5 $nw@0) (LitInt 2)) (LitInt 1))) (and (=> (= (ControlFlow 0 26) (- 0 33)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 32)) (and (<= 0 (LitInt 2)) (<= (LitInt 2) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 26) (- 0 31)) (|Seq#Equal| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) (|Seq#Take| (|Seq#FromArray| $Heap@5 $nw@0) (LitInt 2)))) (=> (|Seq#Equal| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) (|Seq#Take| (|Seq#FromArray| $Heap@5 $nw@0) (LitInt 2))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 29)) (and (<= 0 (LitInt 0)) (<= (LitInt 0) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 26) (- 0 28)) (and (<= (LitInt 0) (LitInt 2)) (<= (LitInt 2) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (|Seq#Equal| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@5 $nw@0) (LitInt 2)) (LitInt 0)))) (=> (|Seq#Equal| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@5 $nw@0) (LitInt 2)) (LitInt 0))) (and (=> (= (ControlFlow 0 26) 25) anon11_Then_correct) (=> (= (ControlFlow 0 26) 1) anon11_Else_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.A) ($IsAlloc refType this Tclass._module.A $Heap)))) (=> (and (and (and ($Is refType |a#0| (Tclass._System.array TInt)) ($IsAlloc refType |a#0| (Tclass._System.array TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 72) 26))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
