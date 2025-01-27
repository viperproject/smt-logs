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
(declare-fun tytagFamily$array () T@U)
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
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Drop| (T@U Int) T@U)
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
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Div (Int Int) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._System.array? Tagclass._System.array tytagFamily$array)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s@@0 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@0 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@0))
)))
(assert (forall ((h T@U) (a T@U) (n0 Int) (n1 Int) ) (!  (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a))) (= (|Seq#Take| (|Seq#FromArray| h a) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h a) n0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h a) (IndexField n0)))))
 :qid |DafnyPreludebpl.1348:15|
 :skolemid |266|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h a) n0) (|Seq#Take| (|Seq#FromArray| h a) n1))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((s@@1 T@U) (n@@0 Int) ) (!  (=> (= n@@0 0) (= (|Seq#Drop| s@@1 n@@0) s@@1))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@1 n@@0))
)))
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@1)) (< j (|Seq#Length| s@@2))) (= (|Seq#Index| (|Seq#Take| s@@2 n@@1) j) (|Seq#Index| s@@2 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@2 n@@1) j))
 :pattern ( (|Seq#Index| s@@2 j) (|Seq#Take| s@@2 n@@1))
)))
(assert (forall ((s@@3 T@U) (n@@2 Int) ) (!  (=> (and (<= 0 n@@2) (<= n@@2 (|Seq#Length| s@@3))) (= (|Seq#Length| (|Seq#Drop| s@@3 n@@2)) (- (|Seq#Length| s@@3) n@@2)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@3 n@@2)))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@1 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@1))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((s@@4 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@4 v@@1)) (+ 1 (|Seq#Length| s@@4)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@4 v@@1))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@2 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t h@@1) ($IsAlloc T@@1 v@@2 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx t@@0 h@@2) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@1 h@@3) ($IsAlloc T@@2 v@@3 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@3 t@@1 h@@3))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 n@@3) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length| s@@5) n@@3))) (= (|Seq#Index| (|Seq#Drop| s@@5 n@@3) j@@0) (|Seq#Index| s@@5 (+ j@@0 n@@3))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@5 n@@3) j@@0))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((s@@6 T@U) (i Int) (v@@4 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@6)) (= (|Seq#Index| (|Seq#Build| s@@6 v@@4) i) v@@4)) (=> (or (not (= i (|Seq#Length| s@@6))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@6 v@@4) i) (|Seq#Index| s@@6 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@6 v@@4) i))
)))
(assert (forall ((h@@4 T@U) (a@@0 T@U) ) (! (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| (|Seq#FromArray| h@@4 a@@0)))) (= (|Seq#Index| (|Seq#FromArray| h@@4 a@@0) i@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@0) (IndexField i@@0))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |262|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@0) (IndexField i@@0)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@4 a@@0) i@@0))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |263|
 :pattern ( (|Seq#FromArray| h@@4 a@@0))
)))
(assert (forall ((s@@7 T@U) (n@@4 Int) (x@@7 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@7 n@@4) x@@7) (exists ((i@@1 Int) ) (!  (and (and (and (<= 0 i@@1) (< i@@1 n@@4)) (< i@@1 (|Seq#Length| s@@7))) (= (|Seq#Index| s@@7 i@@1) x@@7))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |235|
 :pattern ( (|Seq#Index| s@@7 i@@1))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |236|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@7 n@@4) x@@7))
)))
(assert (forall ((s@@8 T@U) (x@@8 T@U) ) (! (= (|Seq#Contains| s@@8 x@@8) (exists ((i@@2 Int) ) (!  (and (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@8))) (= (|Seq#Index| s@@8 i@@2) x@@8))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@8 i@@2))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@8 x@@8))
)))
(assert (forall ((x@@9 Int) (y Int) ) (! (= (Div x@@9 y) (div x@@9 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@9 y))
)))
(assert (forall ((s@@9 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@9))) (= (|Seq#Length| (|Seq#Take| s@@9 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@9 n@@5)))
)))
(assert (forall ((a@@1 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b) ($HeapSucc b c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b) ($HeapSucc b c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@5 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@5) t@@2) ($Is T@@3 v@@5 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@5) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((s@@10 T@U) ) (! (<= 0 (|Seq#Length| s@@10))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@10))
)))
(assert (forall ((i@@3 Int) ) (! (= (FDim (IndexField i@@3)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@3))
)))
(assert (forall ((i@@4 Int) ) (! (= (IndexField_Inverse (IndexField i@@4)) i@@4)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@4))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@10)) x@@10)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@10))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@3)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@3 T@U) ($o@@4 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@4)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |506|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((h0 T@U) (h1 T@U) (a@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap h0) ($IsGoodHeap h1)) ($HeapSucc h0 h1)) (= (MapType0Select refType (MapType0Type FieldType BoxType) h0 a@@2) (MapType0Select refType (MapType0Type FieldType BoxType) h1 a@@2))) (= (|Seq#FromArray| h0 a@@2) (|Seq#FromArray| h1 a@@2)))
 :qid |DafnyPreludebpl.1338:15|
 :skolemid |264|
 :pattern ( (|Seq#FromArray| h1 a@@2) ($HeapSucc h0 h1))
)))
(assert (forall ((h@@5 T@U) (a@@3 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@5 a@@3)) (_System.array.Length a@@3))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |261|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@5 a@@3)))
)))
(assert (forall ((s@@11 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@11 val@@4)) s@@11) (= (|Seq#Build_inv1| (|Seq#Build| s@@11 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@11 val@@4))
)))
(assert (forall ((s@@12 T@U) (n@@6 Int) (x@@11 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@12 n@@6) x@@11) (exists ((i@@5 Int) ) (!  (and (and (and (<= 0 n@@6) (<= n@@6 i@@5)) (< i@@5 (|Seq#Length| s@@12))) (= (|Seq#Index| s@@12 i@@5) x@@11))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |237|
 :pattern ( (|Seq#Index| s@@12 i@@5))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |238|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@12 n@@6) x@@11))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@1 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((s@@13 T@U) (n@@7 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@7) (<= n@@7 k@@2)) (< k@@2 (|Seq#Length| s@@13))) (= (|Seq#Index| (|Seq#Drop| s@@13 n@@7) (- k@@2 n@@7)) (|Seq#Index| s@@13 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@13 k@@2) (|Seq#Drop| s@@13 n@@7))
)))
(assert (forall ((s@@14 T@U) (m@@4 Int) (n@@8 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@8)) (<= (+ m@@4 n@@8) (|Seq#Length| s@@14))) (= (|Seq#Drop| (|Seq#Drop| s@@14 m@@4) n@@8) (|Seq#Drop| s@@14 (+ m@@4 n@@8))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@14 m@@4) n@@8))
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
(assert (forall ((s@@15 T@U) ) (!  (=> (= (|Seq#Length| s@@15) 0) (= s@@15 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@15))
)))
(assert (forall ((s@@16 T@U) (n@@9 Int) ) (!  (=> (= n@@9 0) (= (|Seq#Take| s@@16 n@@9) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@16 n@@9))
)))
(assert (forall ((h@@6 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@6))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |lo#0@0| () Int)
(declare-fun |key#0| () Int)
(declare-fun |hi#0@0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |hi#0@1| () Int)
(declare-fun |lo#0@2| () Int)
(declare-fun |mid#0_0@1| () Int)
(declare-fun |newtype$check#0_1_0_0@1| () Int)
(declare-fun |newtype$check#0_1_0_1@1| () Int)
(declare-fun |lo#0@1| () Int)
(declare-fun |r#0@1| () Int)
(declare-fun |newtype$check#0_0@1| () Int)
(declare-fun |newtype$check#0_1@1| () Int)
(declare-fun |newtype$check#0_2@1| () Int)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |r#0@0| () Int)
(declare-fun |mid#0_0@0| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |r#0| () Int)
(declare-fun |lo#0| () Int)
(declare-fun |hi#0| () Int)
(declare-fun |mid#0_0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.BinarySearchInt32__bad)
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
 (=> (= (ControlFlow 0 0) 61) (let ((anon8_correct true))
(let ((anon24_Else_correct  (=> (and (|Seq#Contains| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) |lo#0@0|) ($Box intType (int_2_U |key#0|))) (= (ControlFlow 0 36) 32)) anon8_correct)))
(let ((anon24_Then_correct  (=> (not (|Seq#Contains| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) |lo#0@0|) ($Box intType (int_2_U |key#0|)))) (and (=> (= (ControlFlow 0 33) (- 0 35)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 33) (- 0 34)) (and (<= 0 |hi#0@0|) (<= |hi#0@0| (_System.array.Length |a#0|)))) (=> (= (ControlFlow 0 33) 32) anon8_correct)))))))
(let ((anon6_correct  (=> (and (and (<= (LitInt 0) |lo#0@0|) (<= |lo#0@0| |hi#0@0|)) (<= |hi#0@0| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 37) (- 0 39)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (and (<= 0 |lo#0@0|) (<= |lo#0@0| (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 37) 33) anon24_Then_correct) (=> (= (ControlFlow 0 37) 36) anon24_Else_correct))))))))
(let ((anon23_Else_correct  (=> (and (not (and (<= (LitInt 0) |lo#0@0|) (<= |lo#0@0| |hi#0@0|))) (= (ControlFlow 0 44) 37)) anon6_correct)))
(let ((anon23_Then_correct  (=> (and (<= (LitInt 0) |lo#0@0|) (<= |lo#0@0| |hi#0@0|)) (and (=> (= (ControlFlow 0 40) (- 0 43)) (or (not (= |a#0| null)) (not true))) (=> (= |newtype$check#8@0| (_System.array.Length |a#0|)) (and (=> (= (ControlFlow 0 40) (- 0 42)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#8@0|) (< |newtype$check#8@0| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#8@0|) (< |newtype$check#8@0| 2147483648)) (=> (= |newtype$check#9@0| (_System.array.Length |a#0|)) (and (=> (= (ControlFlow 0 40) (- 0 41)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#9@0|) (< |newtype$check#9@0| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#9@0|) (< |newtype$check#9@0| 2147483648)) (=> (= (ControlFlow 0 40) 37) anon6_correct)))))))))))
(let ((anon22_Else_correct  (=> (< |lo#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 46) 40) anon23_Then_correct) (=> (= (ControlFlow 0 46) 44) anon23_Else_correct)))))
(let ((anon22_Then_correct  (=> (<= (LitInt 0) |lo#0@0|) (and (=> (= (ControlFlow 0 45) 40) anon23_Then_correct) (=> (= (ControlFlow 0 45) 44) anon23_Else_correct)))))
(let ((anon21_Then_correct  (=> (and (not |$w$loop#0@0|) (= |newtype$check#7@0| (LitInt 0))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#7@0|) (< |newtype$check#7@0| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#7@0|) (< |newtype$check#7@0| 2147483648)) (and (=> (= (ControlFlow 0 47) 45) anon22_Then_correct) (=> (= (ControlFlow 0 47) 46) anon22_Else_correct)))))))
(let ((anon18_correct  (and (=> (= (ControlFlow 0 10) (- 0 16)) (or (<= 0 |$decr$loop#00@1|) (= (- |hi#0@1| |lo#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- |hi#0@1| |lo#0@2|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 10) (- 0 15)) (< (- |hi#0@1| |lo#0@2|) |$decr$loop#00@1|)) (=> (< (- |hi#0@1| |lo#0@2|) |$decr$loop#00@1|) (and (=> (= (ControlFlow 0 10) (- 0 14)) (=> |$w$loop#0@0| (<= (LitInt 0) |lo#0@2|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |lo#0@2|)) (and (=> (= (ControlFlow 0 10) (- 0 13)) (=> |$w$loop#0@0| (<= |lo#0@2| |hi#0@1|))) (=> (=> |$w$loop#0@0| (<= |lo#0@2| |hi#0@1|)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (=> |$w$loop#0@0| (<= |hi#0@1| (_System.array.Length |a#0|)))) (=> (=> |$w$loop#0@0| (<= |hi#0@1| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> |$w$loop#0@0| (not (|Seq#Contains| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) |lo#0@2|) ($Box intType (int_2_U |key#0|)))))) (=> (=> |$w$loop#0@0| (not (|Seq#Contains| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) |lo#0@2|) ($Box intType (int_2_U |key#0|))))) (=> (= (ControlFlow 0 10) (- 0 9)) (=> |$w$loop#0@0| (not (|Seq#Contains| (|Seq#Drop| (|Seq#FromArray| $Heap |a#0|) |hi#0@1|) ($Box intType (int_2_U |key#0|))))))))))))))))))))
(let ((anon27_Then_correct  (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |mid#0_0@1|)))) |key#0|) (= |newtype$check#0_1_0_0@1| (LitInt 1))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#0_1_0_0@1|) (< |newtype$check#0_1_0_0@1| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#0_1_0_0@1|) (< |newtype$check#0_1_0_0@1| 2147483648)) (=> (= |newtype$check#0_1_0_1@1| (+ |mid#0_0@1| 1)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#0_1_0_1@1|) (< |newtype$check#0_1_0_1@1| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#0_1_0_1@1|) (< |newtype$check#0_1_0_1@1| 2147483648)) (=> (and (and (= |lo#0@1| (+ |mid#0_0@1| 1)) (= |lo#0@2| |lo#0@1|)) (and (= |hi#0@1| |hi#0@0|) (= (ControlFlow 0 18) 10))) anon18_correct)))))))))
(let ((anon26_Then_correct  (=> (and (and (< |key#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |mid#0_0@1|))))) (= |lo#0@2| |lo#0@0|)) (and (= |hi#0@1| |mid#0_0@1|) (= (ControlFlow 0 17) 10))) anon18_correct)))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 3) (- 0 5)) (=> (<= (LitInt 0) |r#0@1|) (< |r#0@1| (_System.array.Length |a#0|)))) (=> (=> (<= (LitInt 0) |r#0@1|) (< |r#0@1| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> (<= (LitInt 0) |r#0@1|) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |r#0@1|)))) |key#0|))) (=> (=> (<= (LitInt 0) |r#0@1|) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |r#0@1|)))) |key#0|)) (=> (= (ControlFlow 0 3) (- 0 2)) (=> (< |r#0@1| 0) (not (|Seq#Contains| (|Seq#FromArray| $Heap |a#0|) ($Box intType (int_2_U |key#0|))))))))))))
(let ((anon27_Else_correct  (=> (<= |key#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |mid#0_0@1|))))) (=> (and (= |r#0@1| |mid#0_0@1|) (= (ControlFlow 0 8) 3)) GeneratedUnifiedExit_correct))))
(let ((anon26_Else_correct  (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |mid#0_0@1|)))) |key#0|) (and (=> (= (ControlFlow 0 21) (- 0 23)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (and (<= 0 |mid#0_0@1|) (< |mid#0_0@1| (_System.array.Length |a#0|)))) (=> (and (<= 0 |mid#0_0@1|) (< |mid#0_0@1| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 21) 18) anon27_Then_correct) (=> (= (ControlFlow 0 21) 8) anon27_Else_correct)))))))))
(let ((anon25_Else_correct  (=> (< |lo#0@0| |hi#0@0|) (=> (and (= |$decr$loop#00@1| (- |hi#0@0| |lo#0@0|)) (= |newtype$check#0_0@1| (+ |lo#0@0| |hi#0@0|))) (and (=> (= (ControlFlow 0 24) (- 0 30)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#0_0@1|) (< |newtype$check#0_0@1| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#0_0@1|) (< |newtype$check#0_0@1| 2147483648)) (=> (= |newtype$check#0_1@1| (LitInt 2)) (and (=> (= (ControlFlow 0 24) (- 0 29)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#0_1@1|) (< |newtype$check#0_1@1| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#0_1@1|) (< |newtype$check#0_1@1| 2147483648)) (and (=> (= (ControlFlow 0 24) (- 0 28)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (=> (= |newtype$check#0_2@1| (Div (+ |lo#0@0| |hi#0@0|) (LitInt 2))) (and (=> (= (ControlFlow 0 24) (- 0 27)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#0_2@1|) (< |newtype$check#0_2@1| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#0_2@1|) (< |newtype$check#0_2@1| 2147483648)) (=> (= |mid#0_0@1| (Div (+ |lo#0@0| |hi#0@0|) (LitInt 2))) (and (=> (= (ControlFlow 0 24) (- 0 26)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (and (<= 0 |mid#0_0@1|) (< |mid#0_0@1| (_System.array.Length |a#0|)))) (=> (and (<= 0 |mid#0_0@1|) (< |mid#0_0@1| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 24) 17) anon26_Then_correct) (=> (= (ControlFlow 0 24) 21) anon26_Else_correct)))))))))))))))))))))
(let ((anon25_Then_correct  (=> (and (<= |hi#0@0| |lo#0@0|) (= |newtype$check#10@0| (LitInt (- 0 1)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#10@0|) (< |newtype$check#10@0| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#10@0|) (< |newtype$check#10@0| 2147483648)) (=> (= |r#0@0| (LitInt (- 0 1))) (=> (and (= |r#0@1| |r#0@0|) (= (ControlFlow 0 6) 3)) GeneratedUnifiedExit_correct)))))))
(let ((anon21_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 31) 6) anon25_Then_correct) (=> (= (ControlFlow 0 31) 24) anon25_Else_correct)))))
(let ((anon20_LoopBody_correct  (and (=> (= (ControlFlow 0 49) 47) anon21_Then_correct) (=> (= (ControlFlow 0 49) 31) anon21_Else_correct))))
(let ((anon20_LoopDone_correct true))
(let ((anon20_LoopHead_correct  (=> (and (<= (LitInt (- 0 2147483648)) |lo#0@0|) (< |lo#0@0| 2147483648)) (=> (and (and (<= (LitInt (- 0 2147483648)) |hi#0@0|) (< |hi#0@0| 2147483648)) (and (<= (LitInt (- 0 2147483648)) |mid#0_0@0|) (< |mid#0_0@0| 2147483648))) (=> (and (and (and (and (and (and (and (not false) (<= 0 |lo#0@0|)) (= |$rhs#0@0| 0)) (= |newtype$check#4@0| 0)) (and (<= (- 0 2147483648) |newtype$check#5@0|) (< |newtype$check#5@0| 2147483648))) (and (<= (- 0 2147483648) |newtype$check#6@0|) (< |newtype$check#6@0| 2147483648))) (=> |$w$loop#0@0| (<= (LitInt 0) |lo#0@0|))) (and (and (and (=> |$w$loop#0@0| (<= |lo#0@0| |hi#0@0|)) (=> |$w$loop#0@0| (<= |hi#0@0| (_System.array.Length |a#0|)))) (and (=> |$w$loop#0@0| (not (|Seq#Contains| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) |lo#0@0|) ($Box intType (int_2_U |key#0|))))) (=> |$w$loop#0@0| (not (|Seq#Contains| (|Seq#Drop| (|Seq#FromArray| $Heap |a#0|) |hi#0@0|) ($Box intType (int_2_U |key#0|))))))) (and (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6)))
 :qid |BinarySearchdfy.39:3|
 :skolemid |493|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@7 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@7 $f@@0))))
 :qid |BinarySearchdfy.39:3|
 :skolemid |494|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) $f@@0))
)) (<= (- |hi#0@0| |lo#0@0|) |$decr_init$loop#00@0|))))) (and (=> (= (ControlFlow 0 50) 1) anon20_LoopDone_correct) (=> (= (ControlFlow 0 50) 49) anon20_LoopBody_correct)))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |newtype$check#4@0| (LitInt 0))) (and (=> (= (ControlFlow 0 51) (- 0 60)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#4@0|) (< |newtype$check#4@0| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#4@0|) (< |newtype$check#4@0| 2147483648)) (=> (= |$rhs#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 51) (- 0 59)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (=> (= |newtype$check#5@0| (_System.array.Length |a#0|)) (and (=> (= (ControlFlow 0 51) (- 0 58)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#5@0|) (< |newtype$check#5@0| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#5@0|) (< |newtype$check#5@0| 2147483648)) (=> (= |newtype$check#6@0| (_System.array.Length |a#0|)) (and (=> (= (ControlFlow 0 51) (- 0 57)) (and (<= (LitInt (- 0 2147483648)) |newtype$check#6@0|) (< |newtype$check#6@0| 2147483648))) (=> (and (<= (LitInt (- 0 2147483648)) |newtype$check#6@0|) (< |newtype$check#6@0| 2147483648)) (=> (and (= |$rhs#1@0| (_System.array.Length |a#0|)) (= |$decr_init$loop#00@0| (- |$rhs#1@0| |$rhs#0@0|))) (and (=> (= (ControlFlow 0 51) (- 0 56)) (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#0@0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#0@0|)) (and (=> (= (ControlFlow 0 51) (- 0 55)) (=> |$w$loop#0@0| (<= |$rhs#0@0| |$rhs#1@0|))) (=> (=> |$w$loop#0@0| (<= |$rhs#0@0| |$rhs#1@0|)) (and (=> (= (ControlFlow 0 51) (- 0 54)) (=> |$w$loop#0@0| (<= |$rhs#1@0| (_System.array.Length |a#0|)))) (=> (=> |$w$loop#0@0| (<= |$rhs#1@0| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 51) (- 0 53)) (=> |$w$loop#0@0| (not (|Seq#Contains| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) |$rhs#0@0|) ($Box intType (int_2_U |key#0|)))))) (=> (=> |$w$loop#0@0| (not (|Seq#Contains| (|Seq#Take| (|Seq#FromArray| $Heap |a#0|) |$rhs#0@0|) ($Box intType (int_2_U |key#0|))))) (and (=> (= (ControlFlow 0 51) (- 0 52)) (=> |$w$loop#0@0| (not (|Seq#Contains| (|Seq#Drop| (|Seq#FromArray| $Heap |a#0|) |$rhs#1@0|) ($Box intType (int_2_U |key#0|)))))) (=> (=> |$w$loop#0@0| (not (|Seq#Contains| (|Seq#Drop| (|Seq#FromArray| $Heap |a#0|) |$rhs#1@0|) ($Box intType (int_2_U |key#0|))))) (=> (= (ControlFlow 0 51) 50) anon20_LoopHead_correct))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |a#0| (Tclass._System.array TInt)) ($IsAlloc refType |a#0| (Tclass._System.array TInt) $Heap)) (and (<= (LitInt (- 0 2147483648)) |r#0|) (< |r#0| 2147483648))) (=> (and (and (and (and (<= (LitInt (- 0 2147483648)) |lo#0|) (< |lo#0| 2147483648)) true) (and (and (<= (LitInt (- 0 2147483648)) |hi#0|) (< |hi#0| 2147483648)) true)) (and (and (and (<= (LitInt (- 0 2147483648)) |mid#0_0|) (< |mid#0_0| 2147483648)) true) (and (and (= 1 $FunctionContextHeight) (< (_System.array.Length |a#0|) 2147483648)) (and (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1|) (< |i#1| |j#1|)) (< |j#1| (_System.array.Length |a#0|))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |j#1|))))))
 :qid |BinarySearchdfy.34:19|
 :skolemid |491|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |j#1|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#1|))))
)) (= (ControlFlow 0 61) 51))))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 24) (- 30))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
