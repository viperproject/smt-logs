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
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._module.ArrayTests () T@U)
(declare-fun class._module.ArrayTests? () T@U)
(declare-fun Tagclass._module.ArrayTests? () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$ArrayTests () T@U)
(declare-fun field$a () T@U)
(declare-fun field$b () T@U)
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
(declare-fun Tclass._module.ArrayTests? () T@U)
(declare-fun Tclass._module.ArrayTests () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.ArrayTests.a () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.ArrayTests.b () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.ArrayTests.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.ArrayTests.Valid#canCall| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.array? Tagclass._System.array Tagclass._module.ArrayTests class._module.ArrayTests? Tagclass._module.ArrayTests? tytagFamily$array tytagFamily$ArrayTests field$a field$b)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |919|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |794|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |925|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |792|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s@@0 T@U) (v@@0 T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s@@0))) (= (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n) (|Seq#Build| (|Seq#Drop| s@@0 n) v@@0)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |814|
 :pattern ( (|Seq#Drop| (|Seq#Build| s@@0 v@@0) n))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.ArrayTests?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.ArrayTests?)))
 :qid |unknown.0:0|
 :skolemid |1120|
 :pattern ( ($Is refType $o@@0 Tclass._module.ArrayTests?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.ArrayTests $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.ArrayTests? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1221|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.ArrayTests $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.ArrayTests? $h@@0))
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
 :skolemid |918|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (= (FDim _module.ArrayTests.a) 0))
(assert (= (FieldOfDecl class._module.ArrayTests? field$a) _module.ArrayTests.a))
(assert  (not ($IsGhostField _module.ArrayTests.a)))
(assert (= (FDim _module.ArrayTests.b) 0))
(assert (= (FieldOfDecl class._module.ArrayTests? field$b) _module.ArrayTests.b))
(assert  (not ($IsGhostField _module.ArrayTests.b)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.ArrayTests? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1121|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.ArrayTests? $h@@2))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.ArrayTests))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@3 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (or (or (= $o@@3 this) (= $o@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.ArrayTests.a)))) (= $o@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.ArrayTests.b))))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@3) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@3) $f)))
 :qid |unknown.0:0|
 :skolemid |1126|
)) (= (_module.ArrayTests.Valid $h0 this) (_module.ArrayTests.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1127|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.ArrayTests.Valid $h1 this))
)))
(assert (forall ((h T@U) (a T@U) (n0 Int) (n1 Int) ) (!  (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a))) (= (|Seq#Take| (|Seq#FromArray| h a) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h a) n0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h a) (IndexField n0)))))
 :qid |DafnyPreludebpl.1348:15|
 :skolemid |826|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h a) n0) (|Seq#Take| (|Seq#FromArray| h a) n1))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |678|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |679|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((s@@1 T@U) (n@@0 Int) ) (!  (=> (= n@@0 0) (= (|Seq#Drop| s@@1 n@@0) s@@1))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |815|
 :pattern ( (|Seq#Drop| s@@1 n@@0))
)))
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |577|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |575|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((s@@2 T@U) (n@@1 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@1)) (< j (|Seq#Length| s@@2))) (= (|Seq#Index| (|Seq#Take| s@@2 n@@1) j) (|Seq#Index| s@@2 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |805|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@2 n@@1) j))
 :pattern ( (|Seq#Index| s@@2 j) (|Seq#Take| s@@2 n@@1))
)))
(assert (forall ((s@@3 T@U) (n@@2 Int) ) (!  (=> (and (<= 0 n@@2) (<= n@@2 (|Seq#Length| s@@3))) (= (|Seq#Length| (|Seq#Drop| s@@3 n@@2)) (- (|Seq#Length| s@@3) n@@2)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |806|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@3 n@@2)))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@3 T@U) ($o@@4 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0)) _System.array$arg@@2 $h@@3))
 :qid |unknown.0:0|
 :skolemid |916|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |586|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@4 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@4 v@@1)) (+ 1 (|Seq#Length| s@@4)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |784|
 :pattern ( (|Seq#Build| s@@4 v@@1))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |924|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@2 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t h@@1) ($IsAlloc T@@1 v@@2 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |599|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx t@@0 h@@2) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |671|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@1 h@@3) ($IsAlloc T@@2 v@@3 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |670|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@3 t@@1 h@@3))
)))
(assert (forall ((s@@5 T@U) (n@@3 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 n@@3) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length| s@@5) n@@3))) (= (|Seq#Index| (|Seq#Drop| s@@5 n@@3) j@@0) (|Seq#Index| s@@5 (+ j@@0 n@@3))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |807|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@5 n@@3) j@@0))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |912|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |921|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall (($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.ArrayTests?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.ArrayTests.a)) (Tclass._System.array TInt) $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1123|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.ArrayTests.a)))
)))
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.ArrayTests?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.ArrayTests.b)) (Tclass._System.array TInt) $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1125|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.ArrayTests.b)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.ArrayTests) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.ArrayTests)))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( ($IsBox bx@@0 Tclass._module.ArrayTests))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.ArrayTests?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.ArrayTests?)))
 :qid |unknown.0:0|
 :skolemid |1119|
 :pattern ( ($IsBox bx@@1 Tclass._module.ArrayTests?))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@7 T@U) ) (! (= ($Is refType $o@@7 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@7 null) (= (dtype $o@@7) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |917|
 :pattern ( ($Is refType $o@@7 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.ArrayTests)  (and ($Is refType |c#0@@2| Tclass._module.ArrayTests?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1220|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.ArrayTests))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.ArrayTests?))
)))
(assert (forall ((s@@6 T@U) (i Int) (v@@4 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@6)) (= (|Seq#Index| (|Seq#Build| s@@6 v@@4) i) v@@4)) (=> (or (not (= i (|Seq#Length| s@@6))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@6 v@@4) i) (|Seq#Index| s@@6 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |785|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@6 v@@4) i))
)))
(assert (forall ((h@@4 T@U) (a@@0 T@U) ) (! (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| (|Seq#FromArray| h@@4 a@@0)))) (= (|Seq#Index| (|Seq#FromArray| h@@4 a@@0) i@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@0) (IndexField i@@0))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |822|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@0) (IndexField i@@0)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@4 a@@0) i@@0))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |823|
 :pattern ( (|Seq#FromArray| h@@4 a@@0))
)))
(assert (forall ((s@@7 T@U) (n@@4 Int) (x@@7 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@7 n@@4) x@@7) (exists ((i@@1 Int) ) (!  (and (and (and (<= 0 i@@1) (< i@@1 n@@4)) (< i@@1 (|Seq#Length| s@@7))) (= (|Seq#Index| s@@7 i@@1) x@@7))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |795|
 :pattern ( (|Seq#Index| s@@7 i@@1))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |796|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@7 n@@4) x@@7))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.ArrayTests.Valid#canCall| $Heap this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.ArrayTests) ($IsAlloc refType this@@0 Tclass._module.ArrayTests $Heap)))))) (= (_module.ArrayTests.Valid $Heap this@@0)  (and (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ArrayTests.a))) (LitInt 5)) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ArrayTests.b))) (LitInt 5)))))
 :qid |Foralldfy.20:19|
 :skolemid |1130|
 :pattern ( (_module.ArrayTests.Valid $Heap this@@0) ($IsGoodHeap $Heap))
))))
(assert (forall ((s@@8 T@U) (x@@8 T@U) ) (! (= (|Seq#Contains| s@@8 x@@8) (exists ((i@@2 Int) ) (!  (and (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@8))) (= (|Seq#Index| s@@8 i@@2) x@@8))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |790|
 :pattern ( (|Seq#Index| s@@8 i@@2))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |791|
 :pattern ( (|Seq#Contains| s@@8 x@@8))
)))
(assert (forall ((s@@9 T@U) (n@@5 Int) ) (!  (=> (and (<= 0 n@@5) (<= n@@5 (|Seq#Length| s@@9))) (= (|Seq#Length| (|Seq#Take| s@@9 n@@5)) n@@5))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |804|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@9 n@@5)))
)))
(assert (forall ((a@@1 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b) ($HeapSucc b c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |677|
 :pattern ( ($HeapSucc a@@1 b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |667|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |587|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@5 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@5) t@@2) ($Is T@@3 v@@5 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |598|
 :pattern ( ($IsBox ($Box T@@3 v@@5) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |672|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((s@@10 T@U) ) (! (<= 0 (|Seq#Length| s@@10))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |781|
 :pattern ( (|Seq#Length| s@@10))
)))
(assert (forall ((i@@3 Int) ) (! (= (FDim (IndexField i@@3)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |663|
 :pattern ( (IndexField i@@3))
)))
(assert (forall ((i@@4 Int) ) (! (= (IndexField_Inverse (IndexField i@@4)) i@@4)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |664|
 :pattern ( (IndexField i@@4))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |913|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |922|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |585|
 :pattern ( ($Box T@@4 x@@9))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@6 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@8)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |920|
 :pattern ( (_System.array.Length $o@@8) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@7 T@U) ($o@@9 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@9)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |915|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((h0 T@U) (h1 T@U) (a@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap h0) ($IsGoodHeap h1)) ($HeapSucc h0 h1)) (= (MapType0Select refType (MapType0Type FieldType BoxType) h0 a@@2) (MapType0Select refType (MapType0Type FieldType BoxType) h1 a@@2))) (= (|Seq#FromArray| h0 a@@2) (|Seq#FromArray| h1 a@@2)))
 :qid |DafnyPreludebpl.1338:15|
 :skolemid |824|
 :pattern ( (|Seq#FromArray| h1 a@@2) ($HeapSucc h0 h1))
)))
(assert (forall ((h@@5 T@U) (a@@3 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@5 a@@3)) (_System.array.Length a@@3))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |821|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@5 a@@3)))
)))
(assert (forall ((s@@11 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@11 val@@1)) s@@11) (= (|Seq#Build_inv1| (|Seq#Build| s@@11 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |783|
 :pattern ( (|Seq#Build| s@@11 val@@1))
)))
(assert (forall ((s@@12 T@U) (n@@6 Int) (x@@10 T@U) ) (! (= (|Seq#Contains| (|Seq#Drop| s@@12 n@@6) x@@10) (exists ((i@@5 Int) ) (!  (and (and (and (<= 0 n@@6) (<= n@@6 i@@5)) (< i@@5 (|Seq#Length| s@@12))) (= (|Seq#Index| s@@12 i@@5) x@@10))
 :qid |DafnyPreludebpl.1211:19|
 :skolemid |797|
 :pattern ( (|Seq#Index| s@@12 i@@5))
)))
 :qid |DafnyPreludebpl.1208:15|
 :skolemid |798|
 :pattern ( (|Seq#Contains| (|Seq#Drop| s@@12 n@@6) x@@10))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |914|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |923|
 :pattern ( ($IsBox bx@@4 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall (($h@@8 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.ArrayTests?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) _module.ArrayTests.a)) (Tclass._System.array TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1122|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) _module.ArrayTests.a)))
)))
(assert (forall (($h@@9 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.ArrayTests?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) _module.ArrayTests.b)) (Tclass._System.array TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1124|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) _module.ArrayTests.b)))
)))
(assert (= (Tag Tclass._module.ArrayTests) Tagclass._module.ArrayTests))
(assert (= (TagFamily Tclass._module.ArrayTests) tytagFamily$ArrayTests))
(assert (= (Tag Tclass._module.ArrayTests?) Tagclass._module.ArrayTests?))
(assert (= (TagFamily Tclass._module.ArrayTests?) tytagFamily$ArrayTests))
(assert (forall ((s@@13 T@U) (n@@7 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@7) (<= n@@7 k@@2)) (< k@@2 (|Seq#Length| s@@13))) (= (|Seq#Index| (|Seq#Drop| s@@13 n@@7) (- k@@2 n@@7)) (|Seq#Index| s@@13 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |808|
 :pattern ( (|Seq#Index| s@@13 k@@2) (|Seq#Drop| s@@13 n@@7))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@2 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@2) x0@@1 x1) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@3 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@3) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@4 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@4) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@12 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@12 $f@@0))  (=> (and (or (not (= $o@@12 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@12) |l#2|)))) (or (= $o@@12 |l#3|) (= $o@@12 |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1380|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@12 $f@@0))
)))
(assert (forall ((s@@14 T@U) (m@@4 Int) (n@@8 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@8)) (<= (+ m@@4 n@@8) (|Seq#Length| s@@14))) (= (|Seq#Drop| (|Seq#Drop| s@@14 m@@4) n@@8) (|Seq#Drop| s@@14 (+ m@@4 n@@8))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |817|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@14 m@@4) n@@8))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |578|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@12)) (Lit BoxType ($Box T@@5 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |576|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@12)))
)))
(assert (forall ((s@@15 T@U) ) (!  (=> (= (|Seq#Length| s@@15) 0) (= s@@15 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |782|
 :pattern ( (|Seq#Length| s@@15))
)))
(assert (forall ((s@@16 T@U) (n@@9 Int) ) (!  (=> (= n@@9 0) (= (|Seq#Take| s@@16 n@@9) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |816|
 :pattern ( (|Seq#Take| s@@16 n@@9))
)))
(assert (forall ((h@@6 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |621|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@6))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |600|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0_0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |i#0_1@0| () Int)
(declare-fun |i#1_0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |i#1_1@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.ArrayTests.SequenceConversion)
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
 (=> (= (ControlFlow 0 0) 40) (let ((anon6_correct  (=> (and (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))))) (or (= |i#0_0@0| (LitInt 0)) (not (|Seq#Contains| (|Seq#Take| (|Seq#FromArray| $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))) (LitInt 2)) ($Box intType (int_2_U |i#0_0@0|)))))) (and (=> (= (ControlFlow 0 22) (- 0 27)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)) null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 26)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)))))) (and (=> (= (ControlFlow 0 22) (- 0 25)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)) (IndexField |i#0_0@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)) (IndexField |i#0_0@0|))) (and (=> (= (ControlFlow 0 22) (- 0 24)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)) null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 23)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)))))) (=> (and (and (and (<= (LitInt 0) |i#0_1@0|) (< |i#0_1@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))))) (or (= |i#0_1@0| (LitInt 0)) (not (|Seq#Contains| (|Seq#Take| (|Seq#FromArray| $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))) (LitInt 2)) ($Box intType (int_2_U |i#0_1@0|)))))) (and (or (not (= |i#0_0@0| |i#0_1@0|)) (not true)) (= (ControlFlow 0 22) (- 0 21)))) (or (or (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)))) (not true)) (or (not (= (IndexField |i#0_0@0|) (IndexField |i#0_1@0|))) (not true))) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))) (IndexField |i#0_0@0|)))) 2) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))) (IndexField |i#0_1@0|)))) 2)))))))))))))))
(let ((anon17_Else_correct  (=> (and (= |i#0_0@0| (LitInt 0)) (= (ControlFlow 0 32) 22)) anon6_correct)))
(let ((anon17_Then_correct  (=> (or (not (= |i#0_0@0| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 29) (- 0 31)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)) null)) (not true)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (and (<= 0 (LitInt 2)) (<= (LitInt 2) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)))))) (=> (= (ControlFlow 0 29) 22) anon6_correct)))))))
(let ((anon16_Then_correct  (=> (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))))) (and (=> (= (ControlFlow 0 33) 29) anon17_Then_correct) (=> (= (ControlFlow 0 33) 32) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)))))) (= (ControlFlow 0 28) 22)) anon6_correct)))
(let ((anon15_Else_correct  (=> (< |i#0_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 36) 33) anon16_Then_correct) (=> (= (ControlFlow 0 36) 28) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (<= (LitInt 0) |i#0_0@0|) (and (=> (= (ControlFlow 0 34) (- 0 35)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)) null)) (not true))) (and (=> (= (ControlFlow 0 34) 33) anon16_Then_correct) (=> (= (ControlFlow 0 34) 28) anon16_Else_correct))))))
(let ((anon14_Then_correct  (and (=> (= (ControlFlow 0 37) 34) anon15_Then_correct) (=> (= (ControlFlow 0 37) 36) anon15_Else_correct))))
(let ((anon11_correct  (=> (and (<= (LitInt 1) |i#1_0@0|) (< |i#1_0@0| (- (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a))) 1))) (and (=> (= (ControlFlow 0 7) (- 0 13)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)) null)) (not true)) (and (=> (= (ControlFlow 0 7) (- 0 12)) (and (<= 0 |i#1_0@0|) (< |i#1_0@0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)))))) (and (=> (= (ControlFlow 0 7) (- 0 11)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)) (IndexField |i#1_0@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)) (IndexField |i#1_0@0|))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)) null)) (not true)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (and (<= 0 (- |i#1_0@0| 1)) (<= (- |i#1_0@0| 1) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (and (<= (- |i#1_0@0| 1) (+ |i#1_0@0| 2)) (<= (+ |i#1_0@0| 2) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)))))) (=> (and (and (<= (LitInt 1) |i#1_1@0|) (< |i#1_1@0| (- (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a))) 1))) (and (or (not (= |i#1_0@0| |i#1_1@0|)) (not true)) (= (ControlFlow 0 7) (- 0 6)))) (or (or (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)))) (not true)) (or (not (= (IndexField |i#1_0@0|) (IndexField |i#1_1@0|))) (not true))) (= (|Seq#Length| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a))) (+ |i#1_0@0| 2)) (- |i#1_0@0| 1))) (|Seq#Length| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a))) (+ |i#1_1@0| 2)) (- |i#1_1@0| 1))))))))))))))))))
(let ((anon19_Else_correct  (=> (and (< |i#1_0@0| (LitInt 1)) (= (ControlFlow 0 16) 7)) anon11_correct)))
(let ((anon19_Then_correct  (=> (<= (LitInt 1) |i#1_0@0|) (and (=> (= (ControlFlow 0 14) (- 0 15)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)) null)) (not true))) (=> (= (ControlFlow 0 14) 7) anon11_correct)))))
(let ((anon18_Then_correct  (and (=> (= (ControlFlow 0 17) 14) anon19_Then_correct) (=> (= (ControlFlow 0 17) 16) anon19_Else_correct))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.ArrayTests.Valid#canCall| $Heap@4 this@@1) (or (_module.ArrayTests.Valid $Heap@4 this@@1) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@1) _module.ArrayTests.a))) (LitInt 5))))) (=> (=> (|_module.ArrayTests.Valid#canCall| $Heap@4 this@@1) (or (_module.ArrayTests.Valid $Heap@4 this@@1) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@1) _module.ArrayTests.a))) (LitInt 5)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.ArrayTests.Valid#canCall| $Heap@4 this@@1) (or (_module.ArrayTests.Valid $Heap@4 this@@1) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@1) _module.ArrayTests.b))) (LitInt 5)))))))))
(let ((anon18_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) ($HeapSucc $Heap@2 $Heap@3)) (and (forall (($o@@13 T@U) ($f@@1 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@13) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@13) $f@@1)) (exists ((|i#1_2| Int) ) (!  (and (and (and (<= (LitInt 1) |i#1_2|) (< |i#1_2| (- (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a))) 1))) (= $o@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a)))) (= $f@@1 (IndexField |i#1_2|)))
 :qid |Foralldfy.105:12|
 :skolemid |1186|
)))
 :qid |Foralldfy.105:5|
 :skolemid |1187|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@13) $f@@1))
)) (forall ((|i#inv#1_0| Int) ) (!  (=> (and (<= (LitInt 1) |i#inv#1_0|) (< |i#inv#1_0| (- (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a))) 1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a))) (IndexField |i#inv#1_0|)) ($Box intType (int_2_U (|Seq#Length| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a))) (+ |i#inv#1_0| 2)) (- |i#inv#1_0| 1)))))))
 :qid |Foralldfy.105:12|
 :skolemid |1188|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ArrayTests.a))) (IndexField |i#inv#1_0|)))
)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ArrayTests.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ArrayTests.a)) null)) (not true)) (=> (and (= $Heap@4 $Heap@3) (= (ControlFlow 0 4) 2)) GeneratedUnifiedExit_correct))))))
(let ((anon14_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@14 T@U) ($f@@2 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@14) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14) $f@@2)) (exists ((|i#0_2| Int) ) (!  (and (and (and (and (<= (LitInt 0) |i#0_2|) (< |i#0_2| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))))) (or (= |i#0_2| (LitInt 0)) (not (|Seq#Contains| (|Seq#Take| (|Seq#FromArray| $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))) (LitInt 2)) ($Box intType (int_2_U |i#0_2|)))))) (= $o@@14 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a)))) (= $f@@2 (IndexField |i#0_2|)))
 :qid |Foralldfy.98:12|
 :skolemid |1182|
)))
 :qid |Foralldfy.98:5|
 :skolemid |1183|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@14) $f@@2))
)) (forall ((|i#inv#0_0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#inv#0_0|) (< |i#inv#0_0| (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))))) (or (= |i#inv#0_0| (LitInt 0)) (not (|Seq#Contains| (|Seq#Take| (|Seq#FromArray| $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))) (LitInt 2)) ($Box intType (int_2_U |i#inv#0_0|)))))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))) (IndexField |i#inv#0_0|)) ($Box intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))) (IndexField |i#inv#0_0|)))) 2)))))
 :qid |Foralldfy.98:12|
 :skolemid |1184|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ArrayTests.a))) (IndexField |i#inv#0_0|)))
)))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ArrayTests.a)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ArrayTests.a)) null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (forall (($o@@15 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@15) alloc)))) (or (= $o@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ArrayTests.a))) (= $o@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ArrayTests.b))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@15 $f@@3)))
 :qid |Foralldfy.104:15|
 :skolemid |1185|
))) (=> (forall (($o@@16 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@16) alloc)))) (or (= $o@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ArrayTests.a))) (= $o@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ArrayTests.b))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@16 $f@@4)))
 :qid |Foralldfy.104:15|
 :skolemid |1185|
)) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@17) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@17)) (or (= $o@@17 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ArrayTests.a))) (= $o@@17 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ArrayTests.b))))))
 :qid |Foralldfy.29:10|
 :skolemid |1135|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@17))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 18) 17) anon18_Then_correct) (=> (= (ControlFlow 0 18) 4) anon18_Else_correct))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#3| null $Heap@@0 alloc ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ArrayTests.a)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ArrayTests.b)))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (forall (($o@@18 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@18) alloc)))) (or (= $o@@18 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ArrayTests.a))) (= $o@@18 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ArrayTests.b))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@18 $f@@5)))
 :qid |Foralldfy.97:15|
 :skolemid |1181|
))) (=> (forall (($o@@19 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@19) alloc)))) (or (= $o@@19 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ArrayTests.a))) (= $o@@19 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ArrayTests.b))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@19 $f@@6)))
 :qid |Foralldfy.97:15|
 :skolemid |1181|
)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@20) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@20)) (or (= $o@@20 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ArrayTests.a))) (= $o@@20 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ArrayTests.b))))))
 :qid |Foralldfy.29:10|
 :skolemid |1135|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@20))
)) ($HeapSucc $Heap@@0 $Heap@0))) (and (=> (= (ControlFlow 0 38) 37) anon14_Then_correct) (=> (= (ControlFlow 0 38) 18) anon14_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.ArrayTests) ($IsAlloc refType this@@1 Tclass._module.ArrayTests $Heap@@0))) (= 1 $FunctionContextHeight)) (and (and (|_module.ArrayTests.Valid#canCall| $Heap@@0 this@@1) (and (_module.ArrayTests.Valid $Heap@@0 this@@1) (and (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ArrayTests.a))) (LitInt 5)) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ArrayTests.b))) (LitInt 5))))) (= (ControlFlow 0 40) 38))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
