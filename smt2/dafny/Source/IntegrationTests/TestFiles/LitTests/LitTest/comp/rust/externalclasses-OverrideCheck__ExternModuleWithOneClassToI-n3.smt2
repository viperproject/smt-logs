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
(declare-fun TChar () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? () T@U)
(declare-fun Tagclass.ExternModuleWithOneClassToImport.TraitDefinedInModule () T@U)
(declare-fun Tagclass.ExternModuleWithOneClassToImport.NonShareableBox? () T@U)
(declare-fun Tagclass.ExternModuleWithOneClassToImport.NonShareableBox () T@U)
(declare-fun tytagFamily$TraitDefinedInModule () T@U)
(declare-fun tytagFamily$NonShareableBox () T@U)
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
(declare-fun implements$ExternModuleWithOneClassToImport.TraitDefinedInModule (T@U) Bool)
(declare-fun Tclass.ExternModuleWithOneClassToImport.NonShareableBox? () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule () T@U)
(declare-fun Tclass.ExternModuleWithOneClassToImport.NonShareableBox () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun ExternModuleWithOneClassToImport.NonShareableBox.Get (T@U T@U) T@U)
(declare-fun |ExternModuleWithOneClassToImport.NonShareableBox.Get#canCall| (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
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
(assert (distinct TChar TagChar TagSeq alloc Tagclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? Tagclass.ExternModuleWithOneClassToImport.TraitDefinedInModule Tagclass.ExternModuleWithOneClassToImport.NonShareableBox? Tagclass.ExternModuleWithOneClassToImport.NonShareableBox tytagFamily$TraitDefinedInModule tytagFamily$NonShareableBox)
)
(assert (= (Tag TChar) TagChar))
(assert (implements$ExternModuleWithOneClassToImport.TraitDefinedInModule Tclass.ExternModuleWithOneClassToImport.NonShareableBox?))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.ExternModuleWithOneClassToImport.NonShareableBox?)  (or (= $o null) (= (dtype $o) Tclass.ExternModuleWithOneClassToImport.NonShareableBox?)))
 :qid |unknown.0:0|
 :skolemid |1989|
 :pattern ( ($Is refType $o Tclass.ExternModuleWithOneClassToImport.NonShareableBox?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? $h))
 :qid |unknown.0:0|
 :skolemid |2015|
 :pattern ( ($IsAllocBox bx Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule $h@@0) ($IsAlloc refType |c#0| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1987|
 :pattern ( ($IsAlloc refType |c#0| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.ExternModuleWithOneClassToImport.NonShareableBox $h@@1) ($IsAlloc refType |c#0@@0| Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2013|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ExternModuleWithOneClassToImport.NonShareableBox $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $h@@1))
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
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1978|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1990|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $h@@3))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1615|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1616|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |1736|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |1737|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1523|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h@@0) ($IsAlloc T@@0 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1536|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1608|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@0 t@@1 h@@2) ($IsAlloc T@@1 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1607|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@0 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?)))
 :qid |unknown.0:0|
 :skolemid |1976|
 :pattern ( ($IsBox bx@@1 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule)))
 :qid |unknown.0:0|
 :skolemid |1980|
 :pattern ( ($IsBox bx@@2 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.ExternModuleWithOneClassToImport.NonShareableBox?)))
 :qid |unknown.0:0|
 :skolemid |1988|
 :pattern ( ($IsBox bx@@3 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.ExternModuleWithOneClassToImport.NonShareableBox) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.ExternModuleWithOneClassToImport.NonShareableBox)))
 :qid |unknown.0:0|
 :skolemid |1992|
 :pattern ( ($IsBox bx@@4 Tclass.ExternModuleWithOneClassToImport.NonShareableBox))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule)  (and ($Is refType |c#0@@1| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1986|
 :pattern ( ($Is refType |c#0@@1| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule))
 :pattern ( ($Is refType |c#0@@1| Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.ExternModuleWithOneClassToImport.NonShareableBox)  (and ($Is refType |c#0@@2| Tclass.ExternModuleWithOneClassToImport.NonShareableBox?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2012|
 :pattern ( ($Is refType |c#0@@2| Tclass.ExternModuleWithOneClassToImport.NonShareableBox))
 :pattern ( ($Is refType |c#0@@2| Tclass.ExternModuleWithOneClassToImport.NonShareableBox?))
)))
(assert (forall (($o@@2 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@2 Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $heap) ($IsAlloc refType $o@@2 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule? $heap))
 :qid |unknown.0:0|
 :skolemid |2017|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.ExternModuleWithOneClassToImport.NonShareableBox? $heap))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |1738|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1614|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (= (Ctor charType) 7))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TChar) (and (= ($Box charType ($Unbox charType bx@@5)) bx@@5) ($Is charType ($Unbox charType bx@@5) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |1527|
 :pattern ( ($IsBox bx@@5 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1535|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1718|
 :pattern ( (|Seq#Length| s))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1570|
 :pattern ( (|Seq#Index| v@@2 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1571|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1504|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1505|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1522|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|ExternModuleWithOneClassToImport.NonShareableBox.Get#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.ExternModuleWithOneClassToImport.NonShareableBox) ($IsAlloc refType this Tclass.ExternModuleWithOneClassToImport.NonShareableBox $Heap)))))) ($Is SeqType (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap this) (TSeq TChar)))
 :qid |externalclassesdfy.67:24|
 :skolemid |1996|
 :pattern ( (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap this))
))))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.ExternModuleWithOneClassToImport.NonShareableBox))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@3 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 this@@0)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@3) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@3) $f)))
 :qid |unknown.0:0|
 :skolemid |1994|
)) (= (ExternModuleWithOneClassToImport.NonShareableBox.Get $h0 this@@0) (ExternModuleWithOneClassToImport.NonShareableBox.Get $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1995|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (ExternModuleWithOneClassToImport.NonShareableBox.Get $h1 this@@0))
)))
(assert (forall ((bx@@6 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1532|
 :pattern ( ($IsBox bx@@6 (TSeq t@@5)))
)))
(assert (forall (($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?) ($Is refType $o@@4 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?))
 :qid |unknown.0:0|
 :skolemid |2016|
 :pattern ( ($Is refType $o@@4 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?) ($IsBox bx@@7 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?))
 :qid |unknown.0:0|
 :skolemid |2014|
 :pattern ( ($IsBox bx@@7 Tclass.ExternModuleWithOneClassToImport.NonShareableBox?))
)))
(assert (= (Tag Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?) Tagclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?))
(assert (= (TagFamily Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?) tytagFamily$TraitDefinedInModule))
(assert (= (Tag Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule) Tagclass.ExternModuleWithOneClassToImport.TraitDefinedInModule))
(assert (= (TagFamily Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule) tytagFamily$TraitDefinedInModule))
(assert (= (Tag Tclass.ExternModuleWithOneClassToImport.NonShareableBox?) Tagclass.ExternModuleWithOneClassToImport.NonShareableBox?))
(assert (= (TagFamily Tclass.ExternModuleWithOneClassToImport.NonShareableBox?) tytagFamily$NonShareableBox))
(assert (= (Tag Tclass.ExternModuleWithOneClassToImport.NonShareableBox) Tagclass.ExternModuleWithOneClassToImport.NonShareableBox))
(assert (= (TagFamily Tclass.ExternModuleWithOneClassToImport.NonShareableBox) tytagFamily$NonShareableBox))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?)  (or (= $o@@5 null) (implements$ExternModuleWithOneClassToImport.TraitDefinedInModule (dtype $o@@5))))
 :qid |unknown.0:0|
 :skolemid |1977|
 :pattern ( ($Is refType $o@@5 Tclass.ExternModuleWithOneClassToImport.TraitDefinedInModule?))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1719|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc charType v@@3 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |1561|
 :pattern ( ($IsAlloc charType v@@3 TChar h@@4))
)))
(assert (forall ((v@@4 T@U) (t0@@1 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@1)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@0) t0@@1))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1550|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1551|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@1)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is charType v@@5 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |1540|
 :pattern ( ($Is charType v@@5 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun |s#0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun $Heap@0 () T@U)
(set-info :boogie-vc-id OverrideCheck$$ExternModuleWithOneClassToImport.NonShareableBox.Put)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (<= (|Seq#Rank| |s#0|) (|Seq#Rank| |s#0|))) (=> (<= (|Seq#Rank| |s#0|) (|Seq#Rank| |s#0|)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (forall (($o@@6 T@U) ($f@@0 T@U) ) (! true
 :qid |externalclassesdfy.70:31|
 :skolemid |2001|
))) (=> (forall (($o@@7 T@U) ($f@@1 T@U) ) (! true
 :qid |externalclassesdfy.70:31|
 :skolemid |2001|
)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall (($o@@8 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@8) alloc)))) (= $o@@8 this@@1)) (= $o@@8 this@@1))
 :qid |externalclassesdfy.70:31|
 :skolemid |2002|
))) (=> (forall (($o@@9 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@9) alloc)))) (= $o@@9 this@@1)) (= $o@@9 this@@1))
 :qid |externalclassesdfy.70:31|
 :skolemid |2002|
)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@10) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@10)) (= $o@@10 this@@1)))
 :qid |externalclassesdfy.70:31|
 :skolemid |2003|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10))
)) ($HeapSucc $Heap@@0 $Heap@0)) (and (|Seq#Equal| (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap@0 this@@1) |s#0|) (= (ControlFlow 0 2) (- 0 1)))) (|Seq#Equal| (ExternModuleWithOneClassToImport.NonShareableBox.Get $Heap@0 this@@1) |s#0|)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.ExternModuleWithOneClassToImport.NonShareableBox) ($IsAlloc refType this@@1 Tclass.ExternModuleWithOneClassToImport.NonShareableBox $Heap@@0)))) (and (and ($Is SeqType |s#0| (TSeq TChar)) ($IsAlloc SeqType |s#0| (TSeq TChar) $Heap@@0)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 2)))) anon0_correct)))
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
