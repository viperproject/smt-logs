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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
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
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Tclass._module.A () T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.A.BadRangeReads (T@U T@U Bool) Bool)
(declare-fun |_module.A.BadRangeReads#canCall| (T@U T@U Bool) Bool)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._System.array? Tagclass._System.array Tagclass._module.A? Tagclass._module.A tytagFamily$array tytagFamily$A)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
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
(assert (forall ((s@@0 T@U) (t T@U) (n@@0 Int) ) (!  (=> (= n@@0 (|Seq#Length| s@@0)) (and (= (|Seq#Take| (|Seq#Append| s@@0 t) n@@0) s@@0) (= (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |810|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@0 t) n@@0))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@0 t) n@@0))
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
(assert (forall ((s@@1 T@U) (n@@1 Int) ) (!  (=> (= n@@1 0) (= (|Seq#Drop| s@@1 n@@1) s@@1))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |816|
 :pattern ( (|Seq#Drop| s@@1 n@@1))
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
(assert (forall ((s@@2 T@U) (n@@2 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@2)) (< j (|Seq#Length| s@@2))) (= (|Seq#Index| (|Seq#Take| s@@2 n@@2) j) (|Seq#Index| s@@2 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |806|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@2 n@@2) j))
 :pattern ( (|Seq#Index| s@@2 j) (|Seq#Take| s@@2 n@@2))
)))
(assert (forall ((s@@3 T@U) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (<= n@@3 (|Seq#Length| s@@3))) (= (|Seq#Length| (|Seq#Drop| s@@3 n@@3)) (- (|Seq#Length| s@@3) n@@3)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |807|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@3 n@@3)))
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
(assert (forall ((s@@4 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@4 v@@0)) (+ 1 (|Seq#Length| s@@4)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |785|
 :pattern ( (|Seq#Build| s@@4 v@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) (|a#0| T@U) (|all#0| T@U) ) (!  (=> (or (|_module.A.BadRangeReads#canCall| (Lit refType this) (Lit refType |a#0|) (U_2_bool (Lit boolType |all#0|))) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.A) ($IsAlloc refType this Tclass._module.A $Heap)))) ($Is refType |a#0| (Tclass._System.array TInt))))) (= (_module.A.BadRangeReads (Lit refType this) (Lit refType |a#0|) (U_2_bool (Lit boolType |all#0|)))  (and (= (LitInt (_System.array.Length (Lit refType |a#0|))) (LitInt 10)) (ite (U_2_bool |all#0|) (|Seq#Equal| (|Seq#FromArray| $Heap (Lit refType |a#0|)) |Seq#Empty|) (|Seq#Equal| (|Seq#Append| (|Seq#Append| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap (Lit refType |a#0|)) (LitInt 5)) (LitInt 2)) (|Seq#Take| (|Seq#FromArray| $Heap (Lit refType |a#0|)) (LitInt 5))) (|Seq#Drop| (|Seq#FromArray| $Heap (Lit refType |a#0|)) (LitInt 2))) |Seq#Empty|)))))
 :qid |Arraydfy.114:18|
 :weight 3
 :skolemid |1247|
 :pattern ( (_module.A.BadRangeReads (Lit refType this) (Lit refType |a#0|) (U_2_bool (Lit boolType |all#0|))) ($IsGoodHeap $Heap))
))))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |925|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |600|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((s@@5 T@U) (n@@4 Int) (j@@1 Int) ) (!  (=> (and (and (<= 0 n@@4) (<= 0 j@@1)) (< j@@1 (- (|Seq#Length| s@@5) n@@4))) (= (|Seq#Index| (|Seq#Drop| s@@5 n@@4) j@@1) (|Seq#Index| s@@5 (+ j@@1 n@@4))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |808|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@5 n@@4) j@@1))
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
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |787|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.A?) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) Tclass._module.A?)))
 :qid |unknown.0:0|
 :skolemid |1189|
 :pattern ( ($IsBox bx Tclass._module.A?))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.A) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.A)))
 :qid |unknown.0:0|
 :skolemid |1192|
 :pattern ( ($IsBox bx@@0 Tclass._module.A))
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
(assert (forall ((s@@6 T@U) (i Int) (v@@2 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@6)) (= (|Seq#Index| (|Seq#Build| s@@6 v@@2) i) v@@2)) (=> (or (not (= i (|Seq#Length| s@@6))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@6 v@@2) i) (|Seq#Index| s@@6 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |786|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@6 v@@2) i))
)))
(assert (forall ((h@@1 T@U) (a@@0 T@U) ) (! (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| (|Seq#FromArray| h@@1 a@@0)))) (= (|Seq#Index| (|Seq#FromArray| h@@1 a@@0) i@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 a@@0) (IndexField i@@0))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |823|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 a@@0) (IndexField i@@0)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@1 a@@0) i@@0))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |824|
 :pattern ( (|Seq#FromArray| h@@1 a@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) (|a#0@@0| T@U) (|all#0@@0| T@U) ) (!  (=> (or (|_module.A.BadRangeReads#canCall| this@@0 (Lit refType |a#0@@0|) (U_2_bool (Lit boolType |all#0@@0|))) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.A) ($IsAlloc refType this@@0 Tclass._module.A $Heap@@0)))) ($Is refType |a#0@@0| (Tclass._System.array TInt))))) (= (_module.A.BadRangeReads this@@0 (Lit refType |a#0@@0|) (U_2_bool (Lit boolType |all#0@@0|)))  (and (= (LitInt (_System.array.Length (Lit refType |a#0@@0|))) (LitInt 10)) (ite (U_2_bool |all#0@@0|) (|Seq#Equal| (|Seq#FromArray| $Heap@@0 (Lit refType |a#0@@0|)) |Seq#Empty|) (|Seq#Equal| (|Seq#Append| (|Seq#Append| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@@0 (Lit refType |a#0@@0|)) (LitInt 5)) (LitInt 2)) (|Seq#Take| (|Seq#FromArray| $Heap@@0 (Lit refType |a#0@@0|)) (LitInt 5))) (|Seq#Drop| (|Seq#FromArray| $Heap@@0 (Lit refType |a#0@@0|)) (LitInt 2))) |Seq#Empty|)))))
 :qid |Arraydfy.114:18|
 :weight 3
 :skolemid |1246|
 :pattern ( (_module.A.BadRangeReads this@@0 (Lit refType |a#0@@0|) (U_2_bool (Lit boolType |all#0@@0|))) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((a@@1 T@U) (b T@U) ) (!  (=> (|Seq#Equal| a@@1 b) (= a@@1 b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |802|
 :pattern ( (|Seq#Equal| a@@1 b))
)))
(assert (forall ((s@@7 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@7))) (= (|Seq#Length| (|Seq#Take| s@@7 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |805|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@7 n@@5)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |588|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |590|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@3) t@@1) ($Is T@@2 v@@3 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |599|
 :pattern ( ($IsBox ($Box T@@2 v@@3) t@@1))
)))
(assert (forall ((o T@U) ) (! (<= 0 (_System.array.Length o))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |673|
 :pattern ( (_System.array.Length o))
)))
(assert (forall ((s@@8 T@U) ) (! (<= 0 (|Seq#Length| s@@8))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |782|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((i@@1 Int) ) (! (= (FDim (IndexField i@@1)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |664|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((i@@2 Int) ) (! (= (IndexField_Inverse (IndexField i@@2)) i@@2)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |665|
 :pattern ( (IndexField i@@2))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |586|
 :pattern ( ($Box T@@3 x@@5))
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
(assert (forall ((h@@2 T@U) (a@@2 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@2 a@@2)) (_System.array.Length a@@2))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |822|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@2 a@@2)))
)))
(assert (forall ((s@@9 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@9 val@@4)) s@@9) (= (|Seq#Build_inv1| (|Seq#Build| s@@9 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |784|
 :pattern ( (|Seq#Build| s@@9 val@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) (|a#0@@1| T@U) (|all#0@@1| Bool) ) (!  (=> (or (|_module.A.BadRangeReads#canCall| this@@1 |a#0@@1| |all#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.A) ($IsAlloc refType this@@1 Tclass._module.A $Heap@@1)))) ($Is refType |a#0@@1| (Tclass._System.array TInt))))) (= (_module.A.BadRangeReads this@@1 |a#0@@1| |all#0@@1|)  (and (= (_System.array.Length |a#0@@1|) (LitInt 10)) (ite |all#0@@1| (|Seq#Equal| (|Seq#FromArray| $Heap@@1 |a#0@@1|) |Seq#Empty|) (|Seq#Equal| (|Seq#Append| (|Seq#Append| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@@1 |a#0@@1|) (LitInt 5)) (LitInt 2)) (|Seq#Take| (|Seq#FromArray| $Heap@@1 |a#0@@1|) (LitInt 5))) (|Seq#Drop| (|Seq#FromArray| $Heap@@1 |a#0@@1|) (LitInt 2))) |Seq#Empty|)))))
 :qid |Arraydfy.114:18|
 :skolemid |1245|
 :pattern ( (_module.A.BadRangeReads this@@1 |a#0@@1| |all#0@@1|) ($IsGoodHeap $Heap@@1))
))))
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
(assert (= (Tag Tclass._module.A?) Tagclass._module.A?))
(assert (= (TagFamily Tclass._module.A?) tytagFamily$A))
(assert (= (Tag Tclass._module.A) Tagclass._module.A))
(assert (= (TagFamily Tclass._module.A) tytagFamily$A))
(assert (forall ((s@@10 T@U) (n@@6 Int) (k Int) ) (!  (=> (and (and (<= 0 n@@6) (<= n@@6 k)) (< k (|Seq#Length| s@@10))) (= (|Seq#Index| (|Seq#Drop| s@@10 n@@6) (- k n@@6)) (|Seq#Index| s@@10 k)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |809|
 :pattern ( (|Seq#Index| s@@10 k) (|Seq#Drop| s@@10 n@@6))
)))
(assert (forall ((s@@11 T@U) (m@@4 Int) (n@@7 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@7)) (<= (+ m@@4 n@@7) (|Seq#Length| s@@11))) (= (|Seq#Drop| (|Seq#Drop| s@@11 m@@4) n@@7) (|Seq#Drop| s@@11 (+ m@@4 n@@7))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |818|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@11 m@@4) n@@7))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n@@8 Int) ) (!  (and (=> (< n@@8 (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s0@@1 n@@8))) (=> (<= (|Seq#Length| s0@@1) n@@8) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8) (|Seq#Index| s1@@1 (- n@@8 (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |788|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n@@8))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |579|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |577|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@12 T@U) ) (!  (=> (= (|Seq#Length| s@@12) 0) (= s@@12 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |783|
 :pattern ( (|Seq#Length| s@@12))
)))
(assert (forall ((s@@13 T@U) (n@@9 Int) ) (!  (=> (= n@@9 0) (= (|Seq#Take| s@@13 n@@9) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |817|
 :pattern ( (|Seq#Take| s@@13 n@@9))
)))
(assert (forall ((h@@3 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |622|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |624|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@4))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |601|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |603|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@2 () T@U)
(declare-fun |a#0@@2| () T@U)
(declare-fun |all#0@@2| () Bool)
(declare-fun $Heap@@2 () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.A.BadRangeReads)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon7_correct  (=> (and (= (_module.A.BadRangeReads this@@2 |a#0@@2| |all#0@@2|)  (and (= (_System.array.Length |a#0@@2|) (LitInt 10)) (ite |all#0@@2| (|Seq#Equal| (|Seq#FromArray| $Heap@@2 |a#0@@2|) |Seq#Empty|) (|Seq#Equal| (|Seq#Append| (|Seq#Append| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@@2 |a#0@@2|) (LitInt 5)) (LitInt 2)) (|Seq#Take| (|Seq#FromArray| $Heap@@2 |a#0@@2|) (LitInt 5))) (|Seq#Drop| (|Seq#FromArray| $Heap@@2 |a#0@@2|) (LitInt 2))) |Seq#Empty|)))) ($Is boolType (bool_2_U (_module.A.BadRangeReads this@@2 |a#0@@2| |all#0@@2|)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#3@1|))))))))))
(let ((anon11_Else_correct  (=> (not |all#0@@2|) (and (=> (= (ControlFlow 0 10) (- 0 17)) (or (not (= |a#0@@2| null)) (not true))) (=> (or (not (= |a#0@@2| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 16)) (and (<= 0 (LitInt 2)) (<= (LitInt 2) (_System.array.Length |a#0@@2|)))) (=> (and (<= 0 (LitInt 2)) (<= (LitInt 2) (_System.array.Length |a#0@@2|))) (and (=> (= (ControlFlow 0 10) (- 0 15)) (and (<= (LitInt 2) (LitInt 5)) (<= (LitInt 5) (_System.array.Length |a#0@@2|)))) (=> (and (<= (LitInt 2) (LitInt 5)) (<= (LitInt 5) (_System.array.Length |a#0@@2|))) (=> (= |b$reqreads#1@0| (forall (($i Int) ) (!  (=> (and (<= (LitInt 2) $i) (< $i (LitInt 5))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |a#0@@2| (IndexField $i))))
 :qid |Arraydfy.120:8|
 :skolemid |1249|
 :pattern ( (MapType1Select refType FieldType boolType $_ReadsFrame@0 |a#0@@2| (IndexField $i)))
))) (and (=> (= (ControlFlow 0 10) (- 0 14)) (or (not (= |a#0@@2| null)) (not true))) (=> (or (not (= |a#0@@2| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 13)) (and (<= 0 (LitInt 5)) (<= (LitInt 5) (_System.array.Length |a#0@@2|)))) (=> (and (<= 0 (LitInt 5)) (<= (LitInt 5) (_System.array.Length |a#0@@2|))) (=> (= |b$reqreads#2@0| (forall (($i@@0 Int) ) (!  (=> (and (<= 0 $i@@0) (< $i@@0 (LitInt 5))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |a#0@@2| (IndexField $i@@0))))
 :qid |Arraydfy.121:8|
 :skolemid |1250|
 :pattern ( (MapType1Select refType FieldType boolType $_ReadsFrame@0 |a#0@@2| (IndexField $i@@0)))
))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (or (not (= |a#0@@2| null)) (not true))) (=> (or (not (= |a#0@@2| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (and (<= 0 (LitInt 2)) (<= (LitInt 2) (_System.array.Length |a#0@@2|)))) (=> (and (<= 0 (LitInt 2)) (<= (LitInt 2) (_System.array.Length |a#0@@2|))) (=> (and (= |b$reqreads#3@0| (forall (($i@@1 Int) ) (!  (=> (and (<= (LitInt 2) $i@@1) (< $i@@1 (_System.array.Length |a#0@@2|))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |a#0@@2| (IndexField $i@@1))))
 :qid |Arraydfy.122:8|
 :skolemid |1251|
 :pattern ( (MapType1Select refType FieldType boolType $_ReadsFrame@0 |a#0@@2| (IndexField $i@@1)))
))) (= |b$reqreads#1@1| |b$reqreads#1@0|)) (=> (and (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 10) 3))) anon7_correct)))))))))))))))))))))
(let ((anon11_Then_correct  (=> |all#0@@2| (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (not (= |a#0@@2| null)) (not true))) (=> (or (not (= |a#0@@2| null)) (not true)) (=> (and (= |b$reqreads#0@0| (forall (($i@@2 Int) ) (!  (=> (and (<= 0 $i@@2) (< $i@@2 (_System.array.Length |a#0@@2|))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |a#0@@2| (IndexField $i@@2))))
 :qid |Arraydfy.118:8|
 :skolemid |1248|
 :pattern ( (MapType1Select refType FieldType boolType $_ReadsFrame@0 |a#0@@2| (IndexField $i@@2)))
))) (= |b$reqreads#1@1| true)) (=> (and (and (= |b$reqreads#2@1| true) (= |b$reqreads#3@1| true)) (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= (ControlFlow 0 8) 3))) anon7_correct)))))))
(let ((anon10_Then_correct  (=> (= (_System.array.Length |a#0@@2|) (LitInt 10)) (and (=> (= (ControlFlow 0 18) 8) anon11_Then_correct) (=> (= (ControlFlow 0 18) 10) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (or (not (= (_System.array.Length |a#0@@2|) (LitInt 10))) (not true)) (= |b$reqreads#1@1| true)) (=> (and (and (= |b$reqreads#2@1| true) (= |b$reqreads#3@1| true)) (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 7) 3))) anon7_correct))))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (or (not (= |a#0@@2| null)) (not true))) (=> (or (not (= |a#0@@2| null)) (not true)) (and (=> (= (ControlFlow 0 19) 18) anon10_Then_correct) (=> (= (ControlFlow 0 19) 7) anon10_Else_correct))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (and (=> (= (ControlFlow 0 21) 1) anon9_Then_correct) (=> (= (ControlFlow 0 21) 19) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.A) ($IsAlloc refType this@@2 Tclass._module.A $Heap@@2))) ($Is refType |a#0@@2| (Tclass._System.array TInt))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 22) 21))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 6))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 4))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 5))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
