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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.Number () T@U)
(declare-fun Tagclass._module.Integer () T@U)
(declare-fun Tagclass._module.Number? () T@U)
(declare-fun Tagclass._module.Integer? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Number () T@U)
(declare-fun tytagFamily$Integer () T@U)
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
(declare-fun implements$_module.Number (T@U) Bool)
(declare-fun Tclass._module.Integer? () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Number? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._System.object? () T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._module.Number () T@U)
(declare-fun Tclass._module.Integer () T@U)
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
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TagSeq alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.Number Tagclass._module.Integer Tagclass._module.Number? Tagclass._module.Integer? tytagFamily$object tytagFamily$Number tytagFamily$Integer)
)
(assert (implements$_module.Number Tclass._module.Integer?))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |897|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Integer?)  (or (= $o null) (= (dtype $o) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |1473|
 :pattern ( ($Is refType $o Tclass._module.Integer?))
)))
(assert (forall ((s@@0 T@U) (i Int) (v@@0 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (< n@@0 (|Seq#Length| s@@0))) (and (=> (= i n@@0) (= (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0) v@@0)) (=> (or (not (= i n@@0)) (not true)) (= (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0) (|Seq#Index| s@@0 n@@0)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |872|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Number? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |1520|
 :pattern ( ($IsAllocBox bx Tclass._module.Number? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.Integer? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.Number? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1524|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.Integer? $h@@0))
)))
(assert (forall ((s@@1 T@U) (t T@U) (n@@1 Int) ) (!  (=> (= n@@1 (|Seq#Length| s@@1)) (and (= (|Seq#Take| (|Seq#Append| s@@1 t) n@@1) s@@1) (= (|Seq#Drop| (|Seq#Append| s@@1 t) n@@1) t)))
 :qid |DafnyPreludebpl.1263:15|
 :skolemid |892|
 :pattern ( (|Seq#Take| (|Seq#Append| s@@1 t) n@@1))
 :pattern ( (|Seq#Drop| (|Seq#Append| s@@1 t) n@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Number $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.Number? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1472|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Number $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Number? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Integer $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.Integer? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1485|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Integer $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Integer? $h@@3))
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
(assert (forall (($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@1 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Number? $h@@5)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1466|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Number? $h@@5))
)))
(assert (forall (($o@@2 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Integer? $h@@6)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1474|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Integer? $h@@6))
)))
(assert (forall ((s@@2 T@U) (i@@0 Int) (v@@1 T@U) (n@@2 Int) ) (!  (=> (and (and (<= 0 n@@2) (<= n@@2 i@@0)) (< i@@0 (|Seq#Length| s@@2))) (= (|Seq#Drop| (|Seq#Update| s@@2 i@@0 v@@1) n@@2) (|Seq#Update| (|Seq#Drop| s@@2 n@@2) (- i@@0 n@@2) v@@1)))
 :qid |DafnyPreludebpl.1278:15|
 :skolemid |895|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@2 i@@0 v@@1) n@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |761|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |762|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((s@@3 T@U) (n@@3 Int) ) (!  (=> (= n@@3 0) (= (|Seq#Drop| s@@3 n@@3) s@@3))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |898|
 :pattern ( (|Seq#Drop| s@@3 n@@3))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |660|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |658|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((s@@4 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> (and ($Is SeqType s@@4 (TSeq t@@0)) ($IsBox bx@@1 t@@0)) ($Is SeqType (|Seq#Build| s@@4 bx@@1) (TSeq t@@0)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |901|
 :pattern ( ($Is SeqType (|Seq#Build| s@@4 bx@@1) (TSeq t@@0)))
)))
(assert (forall ((s@@5 T@U) (n@@4 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@4)) (< j (|Seq#Length| s@@5))) (= (|Seq#Index| (|Seq#Take| s@@5 n@@4) j) (|Seq#Index| s@@5 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |888|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@5 n@@4) j))
 :pattern ( (|Seq#Index| s@@5 j) (|Seq#Take| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@6))) (= (|Seq#Length| (|Seq#Drop| s@@6 n@@5)) (- (|Seq#Length| s@@6) n@@5)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |889|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@6 n@@5)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |669|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((s@@7 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@7 v@@2)) (+ 1 (|Seq#Length| s@@7)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |867|
 :pattern ( (|Seq#Build| s@@7 v@@2))
)))
(assert (forall ((v@@3 T@U) (t@@1 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@1 h@@0) ($IsAlloc T@@1 v@@3 t@@1 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |682|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@1 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@2 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@2 h@@1) ($IsAllocBox bx@@2 t@@2 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |754|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@2 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@4 T@U) (t@@3 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@4 t@@3 h@@2) ($IsAlloc T@@2 v@@4 t@@3 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |753|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@4 t@@3 h@@2))
)))
(assert (forall ((s@@8 T@U) (n@@6 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 n@@6) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length| s@@8) n@@6))) (= (|Seq#Index| (|Seq#Drop| s@@8 n@@6) j@@0) (|Seq#Index| s@@8 (+ j@@0 n@@6))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |890|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@8 n@@6) j@@0))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |869|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Number) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Number)))
 :qid |unknown.0:0|
 :skolemid |1252|
 :pattern ( ($IsBox bx@@5 Tclass._module.Number))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Integer) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Integer)))
 :qid |unknown.0:0|
 :skolemid |1262|
 :pattern ( ($IsBox bx@@6 Tclass._module.Integer))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Number?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Number?)))
 :qid |unknown.0:0|
 :skolemid |1379|
 :pattern ( ($IsBox bx@@7 Tclass._module.Number?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Integer?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Integer?)))
 :qid |unknown.0:0|
 :skolemid |1384|
 :pattern ( ($IsBox bx@@8 Tclass._module.Integer?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Number)  (and ($Is refType |c#0@@3| Tclass._module.Number?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1471|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Number))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Number?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Integer)  (and ($Is refType |c#0@@4| Tclass._module.Integer?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1484|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Integer))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Integer?))
)))
(assert (forall ((s@@9 T@U) (i@@1 Int) (v@@5 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@9)) (= (|Seq#Index| (|Seq#Build| s@@9 v@@5) i@@1) v@@5)) (=> (or (not (= i@@1 (|Seq#Length| s@@9))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@9 v@@5) i@@1) (|Seq#Index| s@@9 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |868|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@9 v@@5) i@@1))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass._module.Number? $heap) ($IsAlloc refType $o@@3 Tclass._System.object? $heap))
 :qid |unknown.0:0|
 :skolemid |1522|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Number? $heap))
)))
(assert (forall (($o@@4 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass._module.Integer? $heap@@0) ($IsAlloc refType $o@@4 Tclass._module.Number? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |1526|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Integer? $heap@@0))
)))
(assert (forall ((s@@10 T@U) (i@@2 Int) (v@@6 T@U) (n@@7 Int) ) (!  (=> (and (and (<= 0 i@@2) (< i@@2 n@@7)) (<= n@@7 (|Seq#Length| s@@10))) (= (|Seq#Drop| (|Seq#Update| s@@10 i@@2 v@@6) n@@7) (|Seq#Drop| s@@10 n@@7)))
 :qid |DafnyPreludebpl.1283:15|
 :skolemid |896|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@10 i@@2 v@@6) n@@7))
)))
(assert (forall ((s@@11 T@U) (n@@8 Int) ) (!  (=> (and (<= 0 n@@8) (<= n@@8 (|Seq#Length| s@@11))) (= (|Seq#Length| (|Seq#Take| s@@11 n@@8)) n@@8))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |887|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@11 n@@8)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |760|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((v@@7 T@U) (t@@4 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@7) t@@4) ($Is T@@3 v@@7 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |681|
 :pattern ( ($IsBox ($Box T@@3 v@@7) t@@4))
)))
(assert (forall ((s@@12 T@U) (i@@3 Int) (v@@8 T@U) (n@@9 Int) ) (!  (=> (and (<= n@@9 i@@3) (< i@@3 (|Seq#Length| s@@12))) (= (|Seq#Take| (|Seq#Update| s@@12 i@@3 v@@8) n@@9) (|Seq#Take| s@@12 n@@9)))
 :qid |DafnyPreludebpl.1273:15|
 :skolemid |894|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@12 i@@3 v@@8) n@@9))
)))
(assert (forall ((s@@13 T@U) ) (! (<= 0 (|Seq#Length| s@@13))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |864|
 :pattern ( (|Seq#Length| s@@13))
)))
(assert (forall (($o@@5 T@U) ) (! ($Is refType $o@@5 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( ($Is refType $o@@5 Tclass._System.object?))
)))
(assert (forall ((v@@9 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@9 (TSeq t0@@0) h@@3) (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| v@@9))) ($IsAllocBox (|Seq#Index| v@@9 i@@4) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |716|
 :pattern ( (|Seq#Index| v@@9 i@@4))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |717|
 :pattern ( ($IsAlloc SeqType v@@9 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |650|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |651|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |668|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((n@@10 Int) ) (!  (=> (or (and (<= 0 n@@10) (< n@@10 55296)) (and (<= 57344 n@@10) (< n@@10 1114112))) (= (|char#ToInt| (|char#FromInt| n@@10)) n@@10))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |664|
 :pattern ( (|char#FromInt| n@@10))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@6 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f))  (=> (and (or (not (= $o@@6 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@6) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1527|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f))
)))
(assert (forall ((s@@14 T@U) (i@@5 Int) (v@@10 T@U) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| s@@14))) (= (|Seq#Length| (|Seq#Update| s@@14 i@@5 v@@10)) (|Seq#Length| s@@14)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |871|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@14 i@@5 v@@10)))
)))
(assert (forall ((s@@15 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@15 val@@4)) s@@15) (= (|Seq#Build_inv1| (|Seq#Build| s@@15 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |866|
 :pattern ( (|Seq#Build| s@@15 val@@4))
)))
(assert (forall ((bx@@9 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@9 (TSeq t@@7)) (and (= ($Box SeqType ($Unbox SeqType bx@@9)) bx@@9) ($Is SeqType ($Unbox SeqType bx@@9) (TSeq t@@7))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |678|
 :pattern ( ($IsBox bx@@9 (TSeq t@@7)))
)))
(assert (forall (($o@@7 T@U) ) (!  (=> ($Is refType $o@@7 Tclass._module.Number?) ($Is refType $o@@7 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1521|
 :pattern ( ($Is refType $o@@7 Tclass._module.Number?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Number?) ($IsBox bx@@10 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1519|
 :pattern ( ($IsBox bx@@10 Tclass._module.Number?))
)))
(assert (forall (($o@@8 T@U) ) (!  (=> ($Is refType $o@@8 Tclass._module.Integer?) ($Is refType $o@@8 Tclass._module.Number?))
 :qid |unknown.0:0|
 :skolemid |1525|
 :pattern ( ($Is refType $o@@8 Tclass._module.Integer?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Integer?) ($IsBox bx@@11 Tclass._module.Number?))
 :qid |unknown.0:0|
 :skolemid |1523|
 :pattern ( ($IsBox bx@@11 Tclass._module.Integer?))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |665|
 :pattern ( (|char#ToInt| ch))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Number) Tagclass._module.Number))
(assert (= (TagFamily Tclass._module.Number) tytagFamily$Number))
(assert (= (Tag Tclass._module.Integer) Tagclass._module.Integer))
(assert (= (TagFamily Tclass._module.Integer) tytagFamily$Integer))
(assert (= (Tag Tclass._module.Number?) Tagclass._module.Number?))
(assert (= (TagFamily Tclass._module.Number?) tytagFamily$Number))
(assert (= (Tag Tclass._module.Integer?) Tagclass._module.Integer?))
(assert (= (TagFamily Tclass._module.Integer?) tytagFamily$Integer))
(assert (forall ((s@@16 T@U) (n@@11 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@11) (<= n@@11 k@@2)) (< k@@2 (|Seq#Length| s@@16))) (= (|Seq#Index| (|Seq#Drop| s@@16 n@@11) (- k@@2 n@@11)) (|Seq#Index| s@@16 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |891|
 :pattern ( (|Seq#Index| s@@16 k@@2) (|Seq#Drop| s@@16 n@@11))
)))
(assert (forall (($o@@9 T@U) ) (! (= ($Is refType $o@@9 Tclass._module.Number?)  (or (= $o@@9 null) (implements$_module.Number (dtype $o@@9))))
 :qid |unknown.0:0|
 :skolemid |1465|
 :pattern ( ($Is refType $o@@9 Tclass._module.Number?))
)))
(assert (forall ((s@@17 T@U) (m@@4 Int) (n@@12 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@12)) (<= (+ m@@4 n@@12) (|Seq#Length| s@@17))) (= (|Seq#Drop| (|Seq#Drop| s@@17 m@@4) n@@12) (|Seq#Drop| s@@17 (+ m@@4 n@@12))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |900|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@17 m@@4) n@@12))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n@@13 Int) ) (!  (and (=> (< n@@13 (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@13) (|Seq#Index| s0@@0 n@@13))) (=> (<= (|Seq#Length| s0@@0) n@@13) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@13) (|Seq#Index| s1@@0 (- n@@13 (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |870|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@13))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |661|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |659|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@18 T@U) ) (!  (=> (= (|Seq#Length| s@@18) 0) (= s@@18 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |865|
 :pattern ( (|Seq#Length| s@@18))
)))
(assert (forall ((s@@19 T@U) (n@@14 Int) ) (!  (=> (= n@@14 0) (= (|Seq#Take| s@@19 n@@14) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |899|
 :pattern ( (|Seq#Take| s@@19 n@@14))
)))
(assert (forall ((s@@20 T@U) (i@@6 Int) (v@@11 T@U) (n@@15 Int) ) (!  (=> (and (and (<= 0 i@@6) (< i@@6 n@@15)) (<= n@@15 (|Seq#Length| s@@20))) (= (|Seq#Take| (|Seq#Update| s@@20 i@@6 v@@11) n@@15) (|Seq#Update| (|Seq#Take| s@@20 n@@15) i@@6 v@@11)))
 :qid |DafnyPreludebpl.1268:15|
 :skolemid |893|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@20 i@@6 v@@11) n@@15))
)))
(assert (forall ((v@@12 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@12 (TSeq t0@@2)) (forall ((i@@7 Int) ) (!  (=> (and (<= 0 i@@7) (< i@@7 (|Seq#Length| v@@12))) ($IsBox (|Seq#Index| v@@12 i@@7) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |696|
 :pattern ( (|Seq#Index| v@@12 i@@7))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |697|
 :pattern ( ($Is SeqType v@@12 (TSeq t0@@2)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |value##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |value##1@0| () Int)
(declare-fun call2formal@this@@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call2formal@this@0@@0 () T@U)
(declare-fun |value##2@0| () Int)
(declare-fun call2formal@this@@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun call2formal@this@0@@1 () T@U)
(declare-fun |value##3@0| () Int)
(declare-fun call2formal@this@@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun call2formal@this@0@@2 () T@U)
(declare-fun |a#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun |prefix##0@0| () T@U)
(declare-fun charType () T@T)
(declare-fun $Heap@4 () T@U)
(declare-fun |prefix##1@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |prefix##2@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |prefix##3@0| () T@U)
(declare-fun |s##3@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |prefix##4@0| () T@U)
(declare-fun |s##4@0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun call0formal@this@0 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun call0formal@this@0@@0 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |prefix##5@0| () T@U)
(declare-fun |s##5@0| () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun |prefix##6@0| () T@U)
(declare-fun |s##6@0| () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |prefix##7@0| () T@U)
(declare-fun |s##7@0| () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun |prefix##8@0| () T@U)
(declare-fun |s##8@0| () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun |prefix##9@0| () T@U)
(declare-fun |s##9@0| () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun |prefix##10@0| () T@U)
(declare-fun |s##10@0| () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun |prefix##11@0| () T@U)
(declare-fun $Heap@17 () T@U)
(declare-fun |prefix##12@0| () T@U)
(declare-fun $Heap@18 () T@U)
(declare-fun |prefix##13@0| () T@U)
(declare-fun $Heap@19 () T@U)
(declare-fun |prefix##14@0| () T@U)
(declare-fun |s##14@0| () T@U)
(declare-fun $Heap@20 () T@U)
(declare-fun |prefix##15@0| () T@U)
(declare-fun |s##15@0| () T@U)
(declare-fun $Heap@21 () T@U)
(declare-fun |defass#twelve#0| () Bool)
(declare-fun |twelve#0| () T@U)
(declare-fun |defass#seventeen#0| () Bool)
(declare-fun |seventeen#0| () T@U)
(declare-fun |defass#fortyTwo#0| () Bool)
(declare-fun |fortyTwo#0| () T@U)
(declare-fun |defass#eightyTwo#0| () Bool)
(declare-fun |eightyTwo#0| () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |c#0@@5| () T@U)
(declare-fun $FunctionContextHeight () Int)
(assert (= (Ctor charType) 8))
(set-info :boogie-vc-id Impl$$_module.__default.Sequences)
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
 (=> (= (ControlFlow 0 0) 27) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |value##0@0| (LitInt 12))) (=> (and (and (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass._module.Integer) ($IsAlloc refType call2formal@this Tclass._module.Integer $Heap))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass._module.Integer) ($IsAlloc refType call2formal@this@0 Tclass._module.Integer $Heap@0))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call2formal@this@0) alloc)))) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@10)))
 :qid |CovariantCollectionsdfy.19:3|
 :skolemid |1476|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10))
))))) (=> (and (and (and (and (and ($HeapSucc $Heap $Heap@0) (= |value##1@0| (LitInt 17))) (and (or (not (= call2formal@this@@0 null)) (not true)) (and ($Is refType call2formal@this@@0 Tclass._module.Integer) ($IsAlloc refType call2formal@this@@0 Tclass._module.Integer $Heap)))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (or (not (= call2formal@this@0@@0 null)) (not true)) (and ($Is refType call2formal@this@0@@0 Tclass._module.Integer) ($IsAlloc refType call2formal@this@0@@0 Tclass._module.Integer $Heap@1))))) (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0@@0) alloc)))) (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11)))
 :qid |CovariantCollectionsdfy.19:3|
 :skolemid |1476|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |value##2@0| (LitInt 42)))) (and (and (or (not (= call2formal@this@@1 null)) (not true)) (and ($Is refType call2formal@this@@1 Tclass._module.Integer) ($IsAlloc refType call2formal@this@@1 Tclass._module.Integer $Heap))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))))) (and (and (and (and (or (not (= call2formal@this@0@@1 null)) (not true)) (and ($Is refType call2formal@this@0@@1 Tclass._module.Integer) ($IsAlloc refType call2formal@this@0@@1 Tclass._module.Integer $Heap@2))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0@@1) alloc)))) (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@12)))
 :qid |CovariantCollectionsdfy.19:3|
 :skolemid |1476|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@12))
)))) (and (and ($HeapSucc $Heap@1 $Heap@2) (= |value##3@0| (LitInt 82))) (and (or (not (= call2formal@this@@2 null)) (not true)) (and ($Is refType call2formal@this@@2 Tclass._module.Integer) ($IsAlloc refType call2formal@this@@2 Tclass._module.Integer $Heap))))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (or (not (= call2formal@this@0@@2 null)) (not true)) (and ($Is refType call2formal@this@0@@2 Tclass._module.Integer) ($IsAlloc refType call2formal@this@0@@2 Tclass._module.Integer $Heap@3)))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@2) alloc)))) (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@13)))
 :qid |CovariantCollectionsdfy.19:3|
 :skolemid |1476|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@13))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= |a#0@0| (Lit SeqType |Seq#Empty|))))))) (and (=> (= (ControlFlow 0 2) (- 0 26)) true) (and (=> (= (ControlFlow 0 2) (- 0 25)) true) (and (=> (= (ControlFlow 0 2) (- 0 24)) true) (and (=> (= (ControlFlow 0 2) (- 0 23)) true) (=> (= |b#0@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box refType call2formal@this@0@@0)) ($Box refType call2formal@this@0@@2)) ($Box refType call2formal@this@0@@0)) ($Box refType call2formal@this@0@@2))) (and (=> (= (ControlFlow 0 2) (- 0 22)) true) (and (=> (= (ControlFlow 0 2) (- 0 21)) true) (=> (and (= |c#0@0| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box refType call2formal@this@0)) ($Box refType call2formal@this@0@@0))) (= |prefix##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 83))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32)))))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@14) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@14)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@14))
))) (and ($HeapSucc $Heap@3 $Heap@4) (= |prefix##1@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))))) (=> (and (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@15) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@15)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@15))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= |prefix##2@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))))) (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@16) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@16)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@16))
))) (and ($HeapSucc $Heap@5 $Heap@6) (= |prefix##3@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32)))))))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |b#0@0|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |b#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 19)) true) (=> (= |s##3@0| (|Seq#Update| |b#0@0| (LitInt 0) ($Box refType call2formal@this@0@@1))) (=> (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@17) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@17)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@17))
))) (and ($HeapSucc $Heap@6 $Heap@7) (= |prefix##4@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |c#0@0|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |c#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 17)) true) (=> (= |s##4@0| (|Seq#Update| |c#0@0| (LitInt 0) ($Box refType call2formal@this@0@@1))) (=> (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@18)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@18))
)) ($HeapSucc $Heap@7 $Heap@8))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |b#0@0|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |b#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= ($Unbox refType (|Seq#Index| |b#0@0| (LitInt 0))) null)) (not true))) (=> (or (not (= ($Unbox refType (|Seq#Index| |b#0@0| (LitInt 0))) null)) (not true)) (=> (= call0formal@this@0 ($Unbox refType (|Seq#Index| |b#0@0| (LitInt 0)))) (=> (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@19) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@19)))
 :qid |CovariantCollectionsdfy.15:10|
 :skolemid |1470|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@19))
)) ($HeapSucc $Heap@8 $Heap@9))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |c#0@0|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| |c#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (or (not (= ($Unbox refType (|Seq#Index| |c#0@0| (LitInt 0))) null)) (not true))) (=> (or (not (= ($Unbox refType (|Seq#Index| |c#0@0| (LitInt 0))) null)) (not true)) (=> (= call0formal@this@0@@0 ($Unbox refType (|Seq#Index| |c#0@0| (LitInt 0)))) (=> (and (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@20) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@20)))
 :qid |CovariantCollectionsdfy.15:10|
 :skolemid |1470|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@20))
))) (and ($HeapSucc $Heap@9 $Heap@10) (= |prefix##5@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 91))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 46))) ($Box charType (|char#FromInt| 46))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 93))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32))))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |b#0@0|)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |b#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (<= (LitInt 1) (LitInt 3)) (<= (LitInt 3) (|Seq#Length| |b#0@0|)))) (=> (and (<= (LitInt 1) (LitInt 3)) (<= (LitInt 3) (|Seq#Length| |b#0@0|))) (=> (= |s##5@0| (|Seq#Drop| (|Seq#Take| |b#0@0| (LitInt 3)) (LitInt 1))) (=> (and (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@21) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@21) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@21)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@21))
))) (and ($HeapSucc $Heap@10 $Heap@11) (= |prefix##6@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |c#0@0|)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |c#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= (LitInt 1) (LitInt 2)) (<= (LitInt 2) (|Seq#Length| |c#0@0|)))) (=> (and (<= (LitInt 1) (LitInt 2)) (<= (LitInt 2) (|Seq#Length| |c#0@0|))) (=> (= |s##6@0| (|Seq#Drop| (|Seq#Take| |c#0@0| (LitInt 2)) (LitInt 1))) (=> (and (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@22) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@22) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@22)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@22))
))) (and ($HeapSucc $Heap@11 $Heap@12) (= |prefix##7@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 91))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 46))) ($Box charType (|char#FromInt| 46))) ($Box charType (|char#FromInt| 93))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32))))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |b#0@0|)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |b#0@0|))) (=> (= |s##7@0| (|Seq#Drop| |b#0@0| (LitInt 1))) (=> (and (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@23) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@23)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@23))
))) (and ($HeapSucc $Heap@12 $Heap@13) (= |prefix##8@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |c#0@0|)))) (=> (and (<= 0 (LitInt 1)) (<= (LitInt 1) (|Seq#Length| |c#0@0|))) (=> (= |s##8@0| (|Seq#Drop| |c#0@0| (LitInt 1))) (=> (and (and (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)) (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@24) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@24) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@24)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@24))
))) (and ($HeapSucc $Heap@13 $Heap@14) (= |prefix##9@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 91))) ($Box charType (|char#FromInt| 46))) ($Box charType (|char#FromInt| 46))) ($Box charType (|char#FromInt| 104))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 93))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32))))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= 0 (LitInt 3)) (<= (LitInt 3) (|Seq#Length| |b#0@0|)))) (=> (and (<= 0 (LitInt 3)) (<= (LitInt 3) (|Seq#Length| |b#0@0|))) (=> (= |s##9@0| (|Seq#Take| |b#0@0| (LitInt 3))) (=> (and (and (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15)) (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@25) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@25)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@25))
))) (and ($HeapSucc $Heap@14 $Heap@15) (= |prefix##10@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= 0 (LitInt 2)) (<= (LitInt 2) (|Seq#Length| |c#0@0|)))) (=> (and (<= 0 (LitInt 2)) (<= (LitInt 2) (|Seq#Length| |c#0@0|))) (=> (= |s##10@0| (|Seq#Take| |c#0@0| (LitInt 2))) (=> (and (and (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)) (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@26) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@26) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@26)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@26))
))) (and ($HeapSucc $Heap@15 $Heap@16) (= |prefix##11@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 113))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 40))) ($Box charType (|char#FromInt| 91))) ($Box charType (|char#FromInt| 46))) ($Box charType (|char#FromInt| 46))) ($Box charType (|char#FromInt| 93))) ($Box charType (|char#FromInt| 41))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32))))))) (=> (and (and (and (and (and ($IsGoodHeap $Heap@17) ($IsHeapAnchor $Heap@17)) (forall (($o@@27 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@27) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@27) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@27)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@27))
))) (and ($HeapSucc $Heap@16 $Heap@17) (= |prefix##12@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))))) (and (and (and ($IsGoodHeap $Heap@18) ($IsHeapAnchor $Heap@18)) (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@28) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@28) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@28)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@28))
))) (and ($HeapSucc $Heap@17 $Heap@18) (= |prefix##13@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32)))))))) (and (and (and (and ($IsGoodHeap $Heap@19) ($IsHeapAnchor $Heap@19)) (and (forall (($o@@29 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@29) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@29) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@29)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@29))
)) ($HeapSucc $Heap@18 $Heap@19))) (and (and (= |prefix##14@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 58))) ($Box charType (|char#FromInt| 32))))) (= |s##14@0| (|Seq#Append| |a#0@0| |b#0@0|))) (and ($IsGoodHeap $Heap@20) ($IsHeapAnchor $Heap@20)))) (and (and (and (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@30) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@30) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@30)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@30))
)) ($HeapSucc $Heap@19 $Heap@20)) (and (= |prefix##15@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 32))))) (= |s##15@0| (|Seq#Append| |b#0@0| |c#0@0|)))) (and (and ($IsGoodHeap $Heap@21) ($IsHeapAnchor $Heap@21)) (and (forall (($o@@31 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@31) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@31) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@31)))
 :qid |CovariantCollectionsdfy.29:8|
 :skolemid |1254|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@31))
)) ($HeapSucc $Heap@20 $Heap@21)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) true)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (=> |defass#twelve#0| (and ($Is refType |twelve#0| Tclass._module.Integer) ($IsAlloc refType |twelve#0| Tclass._module.Integer $Heap))) true) (and (=> |defass#seventeen#0| (and ($Is refType |seventeen#0| Tclass._module.Integer) ($IsAlloc refType |seventeen#0| Tclass._module.Integer $Heap))) true)) (and (and (=> |defass#fortyTwo#0| (and ($Is refType |fortyTwo#0| Tclass._module.Integer) ($IsAlloc refType |fortyTwo#0| Tclass._module.Integer $Heap))) true) (and (=> |defass#eightyTwo#0| (and ($Is refType |eightyTwo#0| Tclass._module.Integer) ($IsAlloc refType |eightyTwo#0| Tclass._module.Integer $Heap))) true))) (=> (and (and (and (and ($Is SeqType |a#0| (TSeq Tclass._module.Number)) ($IsAlloc SeqType |a#0| (TSeq Tclass._module.Number) $Heap)) true) (and (and ($Is SeqType |b#0| (TSeq Tclass._module.Number)) ($IsAlloc SeqType |b#0| (TSeq Tclass._module.Number) $Heap)) true)) (and (and (and ($Is SeqType |c#0@@5| (TSeq Tclass._module.Integer)) ($IsAlloc SeqType |c#0@@5| (TSeq Tclass._module.Integer) $Heap)) true) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 27) 2)))) anon0_correct)))))
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
