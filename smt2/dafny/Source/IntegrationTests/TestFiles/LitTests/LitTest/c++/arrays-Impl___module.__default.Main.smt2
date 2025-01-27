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
(declare-fun Tagclass._module.uint32 () T@U)
(declare-fun Tagclass._module.ArrayDatatype () T@U)
(declare-fun |##_module.ArrayDatatype.AD| () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$uint32 () T@U)
(declare-fun tytagFamily$ArrayDatatype () T@U)
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
(declare-fun Tclass._module.uint32 () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Drop| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun _module.ArrayDatatype.AD_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.ArrayDatatype () T@U)
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
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.ArrayDatatype.AD| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun _module.ArrayDatatype.ar (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass._System.array? Tagclass._System.array Tagclass._module.uint32 Tagclass._module.ArrayDatatype |##_module.ArrayDatatype.AD| tytagFamily$array tytagFamily$uint32 tytagFamily$ArrayDatatype)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((|i#0| T@U) ($h T@U) ) (! ($IsAlloc intType |i#0| Tclass._module.uint32 $h)
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc intType |i#0| Tclass._module.uint32 $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (<= n (|Seq#Length| s))) (= (|Seq#Drop| (|Seq#Build| s v) n) (|Seq#Build| (|Seq#Drop| s n) v)))
 :qid |DafnyPreludebpl.1288:15|
 :skolemid |254|
 :pattern ( (|Seq#Drop| (|Seq#Build| s v) n))
)))
(assert (forall ((s@@0 T@U) (i Int) (v@@0 T@U) (n@@0 Int) ) (!  (=> (and (<= 0 n@@0) (< n@@0 (|Seq#Length| s@@0))) (and (=> (= i n@@0) (= (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0) v@@0)) (=> (or (not (= i n@@0)) (not true)) (= (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0) (|Seq#Index| s@@0 n@@0)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |229|
 :pattern ( (|Seq#Index| (|Seq#Update| s@@0 i v@@0) n@@0))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.ArrayDatatype) (_module.ArrayDatatype.AD_q d))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( (_module.ArrayDatatype.AD_q d) ($Is DatatypeTypeType d Tclass._module.ArrayDatatype))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (forall ((h T@U) (a T@U) (n0 Int) (n1 Int) ) (!  (=> (and (and (= (+ n0 1) n1) (<= 0 n0)) (<= n1 (_System.array.Length a))) (= (|Seq#Take| (|Seq#FromArray| h a) n1) (|Seq#Build| (|Seq#Take| (|Seq#FromArray| h a) n0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h a) (IndexField n0)))))
 :qid |DafnyPreludebpl.1348:15|
 :skolemid |266|
 :pattern ( (|Seq#Take| (|Seq#FromArray| h a) n0) (|Seq#Take| (|Seq#FromArray| h a) n1))
)))
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@1 T@U) (n@@1 Int) ) (!  (=> (and (and (<= 0 n@@1) (<= n@@1 i@@0)) (< i@@0 (|Seq#Length| s@@1))) (= (|Seq#Drop| (|Seq#Update| s@@1 i@@0 v@@1) n@@1) (|Seq#Update| (|Seq#Drop| s@@1 n@@1) (- i@@0 n@@1) v@@1)))
 :qid |DafnyPreludebpl.1278:15|
 :skolemid |252|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@1 i@@0 v@@1) n@@1))
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
(assert (forall ((s@@2 T@U) (n@@2 Int) ) (!  (=> (= n@@2 0) (= (|Seq#Drop| s@@2 n@@2) s@@2))
 :qid |DafnyPreludebpl.1293:15|
 :skolemid |255|
 :pattern ( (|Seq#Drop| s@@2 n@@2))
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
(assert (= (Ctor SeqType) 8))
(assert (forall ((s@@3 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@3 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@3 bx) (TSeq t)))
)))
(assert (forall ((s@@4 T@U) (n@@3 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@3)) (< j (|Seq#Length| s@@4))) (= (|Seq#Index| (|Seq#Take| s@@4 n@@3) j) (|Seq#Index| s@@4 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@4 n@@3) j))
 :pattern ( (|Seq#Index| s@@4 j) (|Seq#Take| s@@4 n@@3))
)))
(assert (forall ((s@@5 T@U) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (<= n@@4 (|Seq#Length| s@@5))) (= (|Seq#Length| (|Seq#Drop| s@@5 n@@4)) (- (|Seq#Length| s@@5) n@@4)))
 :qid |DafnyPreludebpl.1249:15|
 :skolemid |246|
 :pattern ( (|Seq#Length| (|Seq#Drop| s@@5 n@@4)))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@2 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@2))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.ArrayDatatype.AD_q d@@0) (= (DatatypeCtorId d@@0) |##_module.ArrayDatatype.AD|))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (_module.ArrayDatatype.AD_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.ArrayDatatype.AD_q d@@1) (exists ((|a#1#0#0| T@U) ) (! (= d@@1 (|#_module.ArrayDatatype.AD| |a#1#0#0|))
 :qid |arraysdfy.54:29|
 :skolemid |514|
)))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (_module.ArrayDatatype.AD_q d@@1))
)))
(assert (forall ((s@@6 T@U) (v@@2 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@6 v@@2)) (+ 1 (|Seq#Length| s@@6)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@6 v@@2))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@3 T@U) (t@@0 T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@3) t@@0 h@@1) ($IsAlloc T@@1 v@@3 t@@0 h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@3) t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@0 t@@1 h@@2) ($IsAllocBox bx@@0 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@0 t@@1 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@4 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@4 t@@2 h@@3) ($IsAlloc T@@2 v@@4 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@4 t@@2 h@@3))
)))
(assert (forall ((s@@7 T@U) (n@@5 Int) (j@@0 Int) ) (!  (=> (and (and (<= 0 n@@5) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length| s@@7) n@@5))) (= (|Seq#Index| (|Seq#Drop| s@@7 n@@5) j@@0) (|Seq#Index| s@@7 (+ j@@0 n@@5))))
 :qid |DafnyPreludebpl.1253:15|
 :weight 25
 :skolemid |247|
 :pattern ( (|Seq#Index| (|Seq#Drop| s@@7 n@@5) j@@0))
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
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.uint32) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._module.uint32)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@1 Tclass._module.uint32))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.ArrayDatatype) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.ArrayDatatype)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsBox bx@@2 Tclass._module.ArrayDatatype))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((s@@8 T@U) (i@@1 Int) (v@@5 T@U) ) (!  (and (=> (= i@@1 (|Seq#Length| s@@8)) (= (|Seq#Index| (|Seq#Build| s@@8 v@@5) i@@1) v@@5)) (=> (or (not (= i@@1 (|Seq#Length| s@@8))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@8 v@@5) i@@1) (|Seq#Index| s@@8 i@@1))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@8 v@@5) i@@1))
)))
(assert (forall ((h@@4 T@U) (a@@0 T@U) ) (! (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| (|Seq#FromArray| h@@4 a@@0)))) (= (|Seq#Index| (|Seq#FromArray| h@@4 a@@0) i@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@0) (IndexField i@@2))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |262|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 a@@0) (IndexField i@@2)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@4 a@@0) i@@2))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |263|
 :pattern ( (|Seq#FromArray| h@@4 a@@0))
)))
(assert (forall ((s@@9 T@U) (i@@3 Int) (v@@6 T@U) (n@@6 Int) ) (!  (=> (and (and (<= 0 i@@3) (< i@@3 n@@6)) (<= n@@6 (|Seq#Length| s@@9))) (= (|Seq#Drop| (|Seq#Update| s@@9 i@@3 v@@6) n@@6) (|Seq#Drop| s@@9 n@@6)))
 :qid |DafnyPreludebpl.1283:15|
 :skolemid |253|
 :pattern ( (|Seq#Drop| (|Seq#Update| s@@9 i@@3 v@@6) n@@6))
)))
(assert (forall ((|a#2#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.ArrayDatatype.AD| |a#2#0#0|) Tclass._module.ArrayDatatype) ($Is refType |a#2#0#0| (Tclass._System.array Tclass._module.uint32)))
 :qid |arraysdfy.54:29|
 :skolemid |516|
 :pattern ( ($Is DatatypeTypeType (|#_module.ArrayDatatype.AD| |a#2#0#0|) Tclass._module.ArrayDatatype))
)))
(assert (forall ((s@@10 T@U) (n@@7 Int) ) (!  (=> (and (<= 0 n@@7) (<= n@@7 (|Seq#Length| s@@10))) (= (|Seq#Length| (|Seq#Take| s@@10 n@@7)) n@@7))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@10 n@@7)))
)))
(assert (forall ((a@@1 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b) ($HeapSucc b c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b) ($HeapSucc b c))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@7 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@7) t@@3) ($Is T@@3 v@@7 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@7) t@@3))
)))
(assert (forall ((s@@11 T@U) (i@@4 Int) (v@@8 T@U) (n@@8 Int) ) (!  (=> (and (<= n@@8 i@@4) (< i@@4 (|Seq#Length| s@@11))) (= (|Seq#Take| (|Seq#Update| s@@11 i@@4 v@@8) n@@8) (|Seq#Take| s@@11 n@@8)))
 :qid |DafnyPreludebpl.1273:15|
 :skolemid |251|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@11 i@@4 v@@8) n@@8))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((s@@12 T@U) ) (! (<= 0 (|Seq#Length| s@@12))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@12))
)))
(assert (forall ((|a#2#0#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_module.ArrayDatatype.AD| |a#2#0#0@@0|) Tclass._module.ArrayDatatype $h@@3) ($IsAlloc refType |a#2#0#0@@0| (Tclass._System.array Tclass._module.uint32) $h@@3)))
 :qid |arraysdfy.54:29|
 :skolemid |517|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.ArrayDatatype.AD| |a#2#0#0@@0|) Tclass._module.ArrayDatatype $h@@3))
)))
(assert (forall ((v@@9 T@U) (t0@@0 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SeqType v@@9 (TSeq t0@@0) h@@5) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| v@@9))) ($IsAllocBox (|Seq#Index| v@@9 i@@5) t0@@0 h@@5))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@9 i@@5))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@9 (TSeq t0@@0) h@@5))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((i@@6 Int) ) (! (= (FDim (IndexField i@@6)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@6))
)))
(assert (forall ((i@@7 Int) ) (! (= (IndexField_Inverse (IndexField i@@7)) i@@7)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@7))
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
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.ArrayDatatype.AD| |a#0#0#0|)) |##_module.ArrayDatatype.AD|)
 :qid |arraysdfy.54:29|
 :skolemid |512|
 :pattern ( (|#_module.ArrayDatatype.AD| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.ArrayDatatype.ar (|#_module.ArrayDatatype.AD| |a#4#0#0|)) |a#4#0#0|)
 :qid |arraysdfy.54:29|
 :skolemid |520|
 :pattern ( (|#_module.ArrayDatatype.AD| |a#4#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((h@@6 T@U) (i@@8 Int) (v@@10 T@U) (a@@2 T@U) ) (!  (=> (and (<= 0 i@@8) (< i@@8 (_System.array.Length a@@2))) (= (|Seq#FromArray| (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 a@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 a@@2) (IndexField i@@8) v@@10)) a@@2) (|Seq#Update| (|Seq#FromArray| h@@6 a@@2) i@@8 v@@10)))
 :qid |DafnyPreludebpl.1343:15|
 :skolemid |265|
 :pattern ( (|Seq#FromArray| (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 a@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 a@@2) (IndexField i@@8) v@@10)) a@@2))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@3)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@5 T@U) ($o@@4 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@4)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |525|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((h0 T@U) (h1 T@U) (a@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap h0) ($IsGoodHeap h1)) ($HeapSucc h0 h1)) (= (MapType0Select refType (MapType0Type FieldType BoxType) h0 a@@3) (MapType0Select refType (MapType0Type FieldType BoxType) h1 a@@3))) (= (|Seq#FromArray| h0 a@@3) (|Seq#FromArray| h1 a@@3)))
 :qid |DafnyPreludebpl.1338:15|
 :skolemid |264|
 :pattern ( (|Seq#FromArray| h1 a@@3) ($HeapSucc h0 h1))
)))
(assert (forall ((s@@13 T@U) (i@@9 Int) (v@@11 T@U) ) (!  (=> (and (<= 0 i@@9) (< i@@9 (|Seq#Length| s@@13))) (= (|Seq#Length| (|Seq#Update| s@@13 i@@9 v@@11)) (|Seq#Length| s@@13)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |228|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@13 i@@9 v@@11)))
)))
(assert (forall ((h@@7 T@U) (a@@4 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@7 a@@4)) (_System.array.Length a@@4))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |261|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@7 a@@4)))
)))
(assert (forall ((s@@14 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@14 val@@4)) s@@14) (= (|Seq#Build_inv1| (|Seq#Build| s@@14 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@14 val@@4))
)))
(assert (forall ((bx@@4 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@4 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@4)) bx@@4) ($Is SeqType ($Unbox SeqType bx@@4) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@4 (TSeq t@@6)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@5 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@6 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((h@@8 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@8 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r) f x@@6))) ($HeapSucc h@@8 (MapType0Store refType (MapType0Type FieldType BoxType) h@@8 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@8 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r) f x@@6)))
)))
(assert (= (Tag Tclass._module.uint32) Tagclass._module.uint32))
(assert (= (TagFamily Tclass._module.uint32) tytagFamily$uint32))
(assert (= (Tag Tclass._module.ArrayDatatype) Tagclass._module.ArrayDatatype))
(assert (= (TagFamily Tclass._module.ArrayDatatype) tytagFamily$ArrayDatatype))
(assert (forall ((s@@15 T@U) (n@@9 Int) (k@@2 Int) ) (!  (=> (and (and (<= 0 n@@9) (<= n@@9 k@@2)) (< k@@2 (|Seq#Length| s@@15))) (= (|Seq#Index| (|Seq#Drop| s@@15 n@@9) (- k@@2 n@@9)) (|Seq#Index| s@@15 k@@2)))
 :qid |DafnyPreludebpl.1258:15|
 :weight 25
 :skolemid |248|
 :pattern ( (|Seq#Index| s@@15 k@@2) (|Seq#Drop| s@@15 n@@9))
)))
(assert (forall ((s@@16 T@U) (m@@4 Int) (n@@10 Int) ) (!  (=> (and (and (<= 0 m@@4) (<= 0 n@@10)) (<= (+ m@@4 n@@10) (|Seq#Length| s@@16))) (= (|Seq#Drop| (|Seq#Drop| s@@16 m@@4) n@@10) (|Seq#Drop| s@@16 (+ m@@4 n@@10))))
 :qid |DafnyPreludebpl.1299:15|
 :skolemid |257|
 :pattern ( (|Seq#Drop| (|Seq#Drop| s@@16 m@@4) n@@10))
)))
(assert (forall ((|i#0@@0| T@U) ) (! (= ($Is intType |i#0@@0| Tclass._module.uint32)  (and (<= (LitInt 0) (U_2_int |i#0@@0|)) (< (U_2_int |i#0@@0|) 4294967296)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($Is intType |i#0@@0| Tclass._module.uint32))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#_module.ArrayDatatype.AD| (Lit refType |a#3#0#0|)) (Lit DatatypeTypeType (|#_module.ArrayDatatype.AD| |a#3#0#0|)))
 :qid |arraysdfy.54:29|
 :skolemid |519|
 :pattern ( (|#_module.ArrayDatatype.AD| (Lit refType |a#3#0#0|)))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((s@@17 T@U) ) (!  (=> (= (|Seq#Length| s@@17) 0) (= s@@17 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@17))
)))
(assert (forall ((s@@18 T@U) (n@@11 Int) ) (!  (=> (= n@@11 0) (= (|Seq#Take| s@@18 n@@11) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@18 n@@11))
)))
(assert (forall ((d@@2 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.ArrayDatatype.AD_q d@@2) ($IsAlloc DatatypeTypeType d@@2 Tclass._module.ArrayDatatype $h@@6))) ($IsAlloc refType (_module.ArrayDatatype.ar d@@2) (Tclass._System.array Tclass._module.uint32) $h@@6))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($IsAlloc refType (_module.ArrayDatatype.ar d@@2) (Tclass._System.array Tclass._module.uint32) $h@@6))
)))
(assert (forall ((h@@9 T@U) (v@@12 T@U) ) (! ($IsAlloc intType v@@12 TInt h@@9)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@12 TInt h@@9))
)))
(assert (forall ((s@@19 T@U) (i@@10 Int) (v@@13 T@U) (n@@12 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 n@@12)) (<= n@@12 (|Seq#Length| s@@19))) (= (|Seq#Take| (|Seq#Update| s@@19 i@@10 v@@13) n@@12) (|Seq#Update| (|Seq#Take| s@@19 n@@12) i@@10 v@@13)))
 :qid |DafnyPreludebpl.1268:15|
 :skolemid |250|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@19 i@@10 v@@13) n@@12))
)))
(assert (forall ((v@@14 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@14 (TSeq t0@@2)) (forall ((i@@11 Int) ) (!  (=> (and (<= 0 i@@11) (< i@@11 (|Seq#Length| v@@14))) ($IsBox (|Seq#Index| v@@14 i@@11) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@14 i@@11))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@14 (TSeq t0@@2)))
)))
(assert (forall ((v@@15 T@U) ) (! ($Is intType v@@15 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@15 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@1| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |newtype$check#0_0@1| () Int)
(declare-fun |newtype$check#0_1@1| () Int)
(declare-fun |i#0@2| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |len##0@0| () Int)
(declare-fun call0formal@_module._default.PrintArray$A@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |len##1@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |key##0@0| () Int)
(declare-fun |call4formal@n#0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |call4formal@n#0@0| () Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |s#0@1| () T@U)
(declare-fun |s#0@2| () T@U)
(declare-fun |s#0@3| () T@U)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |len##2@0| () Int)
(declare-fun call0formal@_module._default.PrintArray$A@0@@0 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |call1formal@a#0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |call1formal@a#0@0| () T@U)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |len##3@0| () Int)
(declare-fun call0formal@_module._default.PrintArray$A@0@@1 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |call1formal@a#0@@0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |call1formal@a#0@0@@0| () T@U)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |len##4@0| () Int)
(declare-fun call0formal@_module._default.PrintArray$A@0@@2 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |newtype$check#11@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun $Heap@11 () T@U)
(declare-fun |newtype$check#12@0| () Int)
(declare-fun |$rhs#2@0| () Int)
(declare-fun $Heap@12 () T@U)
(declare-fun |newtype$check#13@0| () Int)
(declare-fun |$rhs#3@0| () Int)
(declare-fun $Heap@13 () T@U)
(declare-fun |ad#0@0| () T@U)
(declare-fun |a##5@0| () T@U)
(declare-fun |newtype$check#14@0| () Int)
(declare-fun |len##5@0| () Int)
(declare-fun call0formal@_module._default.PrintArray$A@0@@3 () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |newtype$check#2@1| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |a#0| () T@U)
(declare-fun |i#0@@1| () Int)
(declare-fun |n#0| () Int)
(declare-fun |s#0| () T@U)
(declare-fun |a1#0| () T@U)
(declare-fun |a2#0| () T@U)
(declare-fun |someAr#0| () T@U)
(declare-fun |ad#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 58) (let ((anon9_Else_correct  (=> (and (< |i#0@1| 23) (= |$decr$loop#00@1| (- 23 |i#0@1|))) (and (=> (= (ControlFlow 0 44) (- 0 50)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 44) (- 0 49)) (and (<= 0 |i#0@1|) (< |i#0@1| (_System.array.Length $nw@0)))) (=> (and (<= 0 |i#0@1|) (< |i#0@1| (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 44) (- 0 48)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |i#0@1|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |i#0@1|))) (=> (= $Heap@15 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#0@1|) ($Box intType (int_2_U |i#0@1|))))) (=> (and ($IsGoodHeap $Heap@15) (= |newtype$check#0_0@1| (LitInt 1))) (and (=> (= (ControlFlow 0 44) (- 0 47)) (and (<= (LitInt 0) |newtype$check#0_0@1|) (< |newtype$check#0_0@1| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0_0@1|) (< |newtype$check#0_0@1| 4294967296)) (=> (= |newtype$check#0_1@1| (+ |i#0@1| 1)) (and (=> (= (ControlFlow 0 44) (- 0 46)) (and (<= (LitInt 0) |newtype$check#0_1@1|) (< |newtype$check#0_1@1| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0_1@1|) (< |newtype$check#0_1@1| 4294967296)) (=> (= |i#0@2| (+ |i#0@1| 1)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (or (<= 0 |$decr$loop#00@1|) (= (- 23 |i#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- 23 |i#0@2|) |$decr$loop#00@1|)) (=> (= (ControlFlow 0 44) (- 0 43)) (< (- 23 |i#0@2|) |$decr$loop#00@1|)))))))))))))))))))))
(let ((anon9_Then_correct  (=> (and (<= 23 |i#0@1|) (= |newtype$check#3@0| (LitInt 23))) (and (=> (= (ControlFlow 0 5) (- 0 42)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 4294967296)) (=> (and (= |len##0@0| (LitInt 23)) (= call0formal@_module._default.PrintArray$A@0 Tclass._module.uint32)) (and (=> (= (ControlFlow 0 5) (- 0 41)) (=> (or (not (= $nw@0 null)) (not true)) (= |len##0@0| (_System.array.Length $nw@0)))) (=> (=> (or (not (= $nw@0 null)) (not true)) (= |len##0@0| (_System.array.Length $nw@0))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6)))
 :qid |arraysdfy.39:8|
 :skolemid |492|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6))
))) (and ($HeapSucc $Heap@1 $Heap@2) (= |newtype$check#4@0| (LitInt 23)))) (and (=> (= (ControlFlow 0 5) (- 0 40)) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 4294967296)) (=> (and (= |len##1@0| (LitInt 23)) (= |newtype$check#5@0| (LitInt 17))) (and (=> (= (ControlFlow 0 5) (- 0 39)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 4294967296)) (=> (= |key##0@0| (LitInt 17)) (=> (and (<= (LitInt 0) |call4formal@n#0|) (< |call4formal@n#0| 4294967296)) (and (=> (= (ControlFlow 0 5) (- 0 38)) (= (_System.array.Length $nw@0) |len##1@0|)) (=> (= (_System.array.Length $nw@0) |len##1@0|) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (and (<= (LitInt 0) |call4formal@n#0@0|) (< |call4formal@n#0@0| 4294967296)) (<= (LitInt 0) |call4formal@n#0@0|)) (and (and (<= |call4formal@n#0@0| |len##1@0|) (or (= |call4formal@n#0@0| |len##1@0|) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |call4formal@n#0@0|)))) |key##0@0|))) (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7)))
 :qid |arraysdfy.23:8|
 :skolemid |487|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@7))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 5) (- 0 37)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |s#0@0| (|Seq#FromArray| $Heap@3 $nw@0)) (and (=> (= (ControlFlow 0 5) (- 0 36)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 35)) (and (<= 0 (LitInt 2)) (<= (LitInt 2) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 2)) (<= (LitInt 2) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 5) (- 0 34)) (and (<= (LitInt 2) (LitInt 16)) (<= (LitInt 16) (_System.array.Length $nw@0)))) (=> (and (<= (LitInt 2) (LitInt 16)) (<= (LitInt 16) (_System.array.Length $nw@0))) (=> (= |s#0@1| (|Seq#Drop| (|Seq#Take| (|Seq#FromArray| $Heap@3 $nw@0) (LitInt 16)) (LitInt 2))) (and (=> (= (ControlFlow 0 5) (- 0 33)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 32)) (and (<= 0 (LitInt 20)) (<= (LitInt 20) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 20)) (<= (LitInt 20) (_System.array.Length $nw@0))) (=> (= |s#0@2| (|Seq#Drop| (|Seq#FromArray| $Heap@3 $nw@0) (LitInt 20))) (and (=> (= (ControlFlow 0 5) (- 0 31)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 30)) (and (<= 0 (LitInt 8)) (<= (LitInt 8) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 8)) (<= (LitInt 8) (_System.array.Length $nw@0))) (=> (= |s#0@3| (|Seq#Take| (|Seq#FromArray| $Heap@3 $nw@0) (LitInt 8))) (and (=> (= (ControlFlow 0 5) (- 0 29)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 28)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 5) (- 0 27)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 0)))) (=> (= |newtype$check#6@0| (LitInt 42)) (and (=> (= (ControlFlow 0 5) (- 0 26)) (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 4294967296)) (=> (and (and (= |$rhs#0@0| (LitInt 42)) (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField (LitInt 0)) ($Box intType (int_2_U |$rhs#0@0|)))))) (and ($IsGoodHeap $Heap@4) (= |newtype$check#8@0| (LitInt 0)))) (and (=> (= (ControlFlow 0 5) (- 0 25)) (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 4294967296)) (=> (and (= |len##2@0| (LitInt 0)) (= call0formal@_module._default.PrintArray$A@0@@0 Tclass._module.uint32)) (and (=> (= (ControlFlow 0 5) (- 0 24)) (=> (or (not (= null null)) (not true)) (= |len##2@0| (_System.array.Length null)))) (=> (=> (or (not (= null null)) (not true)) (= |len##2@0| (_System.array.Length null))) (=> (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (=> (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8)))
 :qid |arraysdfy.39:8|
 :skolemid |492|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@8))
)) ($HeapSucc $Heap@4 $Heap@5)) (and ($Is refType |call1formal@a#0| (Tclass._System.array? Tclass._module.uint32)) ($IsAlloc refType |call1formal@a#0| (Tclass._System.array? Tclass._module.uint32) $Heap))) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and ($Is refType |call1formal@a#0@0| (Tclass._System.array? Tclass._module.uint32)) ($IsAlloc refType |call1formal@a#0@0| (Tclass._System.array? Tclass._module.uint32) $Heap@6))) (and (and (= |call1formal@a#0@0| null) (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9)))
 :qid |arraysdfy.5:8|
 :skolemid |481|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@9))
))) (and ($HeapSucc $Heap@5 $Heap@6) (= |newtype$check#9@0| (LitInt 5))))) (and (=> (= (ControlFlow 0 5) (- 0 23)) (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 4294967296)) (=> (and (= |len##3@0| (LitInt 5)) (= call0formal@_module._default.PrintArray$A@0@@1 Tclass._module.uint32)) (and (=> (= (ControlFlow 0 5) (- 0 22)) (=> (or (not (= |call1formal@a#0@0| null)) (not true)) (= |len##3@0| (_System.array.Length |call1formal@a#0@0|)))) (=> (=> (or (not (= |call1formal@a#0@0| null)) (not true)) (= |len##3@0| (_System.array.Length |call1formal@a#0@0|))) (=> (and (and (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@10)))
 :qid |arraysdfy.39:8|
 :skolemid |492|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@10))
)) ($HeapSucc $Heap@6 $Heap@7))) (and (and ($Is refType |call1formal@a#0@@0| (Tclass._System.array? Tclass._module.uint32)) ($IsAlloc refType |call1formal@a#0@@0| (Tclass._System.array? Tclass._module.uint32) $Heap)) (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)))) (and (and (and ($Is refType |call1formal@a#0@0@@0| (Tclass._System.array? Tclass._module.uint32)) ($IsAlloc refType |call1formal@a#0@0@@0| (Tclass._System.array? Tclass._module.uint32) $Heap@8)) (or (not (= |call1formal@a#0@0@@0| null)) (not true))) (and (and (= (_System.array.Length |call1formal@a#0@0@@0|) (LitInt 5)) (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@11)))
 :qid |arraysdfy.11:8|
 :skolemid |484|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@11))
))) (and ($HeapSucc $Heap@7 $Heap@8) (= |newtype$check#10@0| (LitInt 5)))))) (and (=> (= (ControlFlow 0 5) (- 0 21)) (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 4294967296)) (=> (and (= |len##4@0| (LitInt 5)) (= call0formal@_module._default.PrintArray$A@0@@2 Tclass._module.uint32)) (and (=> (= (ControlFlow 0 5) (- 0 20)) (=> (or (not (= |call1formal@a#0@0@@0| null)) (not true)) (= |len##4@0| (_System.array.Length |call1formal@a#0@0@@0|)))) (=> (=> (or (not (= |call1formal@a#0@0@@0| null)) (not true)) (= |len##4@0| (_System.array.Length |call1formal@a#0@0@@0|))) (=> (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@12)))
 :qid |arraysdfy.39:8|
 :skolemid |492|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@12))
)) ($HeapSucc $Heap@8 $Heap@9))) (and (=> (= (ControlFlow 0 5) (- 0 19)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? Tclass._module.uint32))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $nw@1) alloc))))) (and (and (= (_System.array.Length $nw@1) (LitInt 3)) (= $Heap@10 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@9 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)))) (and (=> (= (ControlFlow 0 5) (- 0 18)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 17)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@1)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@1))) (and (=> (= (ControlFlow 0 5) (- 0 16)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (IndexField (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (IndexField (LitInt 0)))) (=> (= |newtype$check#11@0| (LitInt 1)) (and (=> (= (ControlFlow 0 5) (- 0 15)) (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 4294967296)) (=> (= |$rhs#1@0| (LitInt 1)) (=> (and (= $Heap@11 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@10 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $nw@1) (IndexField (LitInt 0)) ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@11)) (and (=> (= (ControlFlow 0 5) (- 0 14)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 13)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@1)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@1))) (and (=> (= (ControlFlow 0 5) (- 0 12)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (IndexField (LitInt 1))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (IndexField (LitInt 1)))) (=> (= |newtype$check#12@0| (LitInt 3)) (and (=> (= (ControlFlow 0 5) (- 0 11)) (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 4294967296)) (=> (= |$rhs#2@0| (LitInt 3)) (=> (and (= $Heap@12 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@11 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $nw@1) (IndexField (LitInt 1)) ($Box intType (int_2_U |$rhs#2@0|))))) ($IsGoodHeap $Heap@12)) (and (=> (= (ControlFlow 0 5) (- 0 10)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 9)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@1)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@1))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (IndexField (LitInt 2))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (IndexField (LitInt 2)))) (=> (= |newtype$check#13@0| (LitInt 9)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (and (<= (LitInt 0) |newtype$check#13@0|) (< |newtype$check#13@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#13@0|) (< |newtype$check#13@0| 4294967296)) (=> (and (and (and (= |$rhs#3@0| (LitInt 9)) (= $Heap@13 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@12 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@1) (IndexField (LitInt 2)) ($Box intType (int_2_U |$rhs#3@0|)))))) (and ($IsGoodHeap $Heap@13) (= |ad#0@0| (|#_module.ArrayDatatype.AD| $nw@1)))) (and (and (_module.ArrayDatatype.AD_q |ad#0@0|) (_module.ArrayDatatype.AD_q |ad#0@0|)) (and (= |a##5@0| (_module.ArrayDatatype.ar |ad#0@0|)) (= |newtype$check#14@0| (LitInt 3))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= (LitInt 0) |newtype$check#14@0|) (< |newtype$check#14@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#14@0|) (< |newtype$check#14@0| 4294967296)) (=> (= |len##5@0| (LitInt 3)) (=> (and (and (= call0formal@_module._default.PrintArray$A@0@@3 Tclass._module.uint32) (= (ControlFlow 0 5) (- 0 4))) (or (not (= |a##5@0| null)) (not true))) (= |len##5@0| (_System.array.Length |a##5@0|)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon8_Else_correct  (=> (and |$w$loop#0@0| (= |newtype$check#2@1| (LitInt 23))) (and (=> (= (ControlFlow 0 51) (- 0 52)) (and (<= (LitInt 0) |newtype$check#2@1|) (< |newtype$check#2@1| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#2@1|) (< |newtype$check#2@1| 4294967296)) (and (=> (= (ControlFlow 0 51) 5) anon9_Then_correct) (=> (= (ControlFlow 0 51) 44) anon9_Else_correct)))))))
(let ((anon8_Then_correct  (=> (not |$w$loop#0@0|) (=> (and (= |newtype$check#1@0| (LitInt 23)) (= (ControlFlow 0 3) (- 0 2))) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 4294967296))))))
(let ((anon7_LoopBody_correct  (and (=> (= (ControlFlow 0 53) 3) anon8_Then_correct) (=> (= (ControlFlow 0 53) 51) anon8_Else_correct))))
(let ((anon7_LoopDone_correct true))
(let ((anon7_LoopHead_correct  (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (<= (LitInt 0) |i#0@1|) (< |i#0@1| 4294967296))) (=> (and (and (and (and (not false) (and (<= 0 |i#0@1|) (< |i#0@1| 24))) (= |newtype$check#0@0| 0)) (= |$decr_init$loop#00@0| 23)) (and (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13)))
 :qid |arraysdfy.59:3|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@13))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@14 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@14) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@14 $f@@0))))
 :qid |arraysdfy.59:3|
 :skolemid |500|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@14) $f@@0))
)) (<= (- 23 |i#0@1|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 54) 1) anon7_LoopDone_correct) (=> (= (ControlFlow 0 54) 53) anon7_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 55) (- 0 57)) (<= 0 (LitInt 23))) (=> (<= 0 (LitInt 23)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? Tclass._module.uint32))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= (_System.array.Length $nw@0) (LitInt 23)))) (and (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@0)) (and ($IsHeapAnchor $Heap@0) (= |newtype$check#0@0| (LitInt 0))))) (and (=> (= (ControlFlow 0 55) (- 0 56)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296)) (=> (= |i#0@0| (LitInt 0)) (=> (and (= |$decr_init$loop#00@0| (- 23 |i#0@0|)) (= (ControlFlow 0 55) 54)) anon7_LoopHead_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |a#0| (Tclass._System.array Tclass._module.uint32)) ($IsAlloc refType |a#0| (Tclass._System.array Tclass._module.uint32) $Heap)) true) (=> (and (and (and (and (and (<= (LitInt 0) |i#0@@1|) (< |i#0@@1| 4294967296)) true) (and (and (<= (LitInt 0) |n#0|) (< |n#0| 4294967296)) true)) (and (and (and ($Is SeqType |s#0| (TSeq Tclass._module.uint32)) ($IsAlloc SeqType |s#0| (TSeq Tclass._module.uint32) $Heap)) true) (and (and ($Is refType |a1#0| (Tclass._System.array? Tclass._module.uint32)) ($IsAlloc refType |a1#0| (Tclass._System.array? Tclass._module.uint32) $Heap)) true))) (and (and (and (and ($Is refType |a2#0| (Tclass._System.array? Tclass._module.uint32)) ($IsAlloc refType |a2#0| (Tclass._System.array? Tclass._module.uint32) $Heap)) true) (and (and ($Is refType |someAr#0| (Tclass._System.array Tclass._module.uint32)) ($IsAlloc refType |someAr#0| (Tclass._System.array Tclass._module.uint32) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |ad#0| Tclass._module.ArrayDatatype) ($IsAlloc DatatypeTypeType |ad#0| Tclass._module.ArrayDatatype $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 58) 55))))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
