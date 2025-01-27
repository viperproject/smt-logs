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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun _System.array2.Length0 (T@U) Int)
(declare-fun Tclass._System.array2? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.array2.Length1 (T@U) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array2 (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun SeqType () T@T)
(declare-fun ArrayAllocationInitialization.__default.M2S (T@U T@U T@U T@U Int Int) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |ArrayAllocationInitialization.__default.M2S#canCall| (T@U T@U T@U Int Int) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun IndexField (Int) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#12| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass._System.nat Tagclass._System.array2? Tagclass._System.array2 tytagFamily$nat tytagFamily$array2)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array2$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |4187|
 :pattern ( (_System.array2.Length0 $o) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |4189|
 :pattern ( (_System.array2.Length1 $o@@0) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |4044|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |4195|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
)))
(assert (= (Ctor SeqType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ArrayAllocationInitialization._default.M2S$T T@U) ($ly T@U) ($Heap T@U) (|m#0| T@U) (|i#0| Int) (|j#0| Int) ) (!  (=> (or (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T $Heap |m#0| |i#0| |j#0|) (and (< 0 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap) (and ($Is refType |m#0| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T)) ($IsAlloc refType |m#0| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T) $Heap))) (<= (LitInt 0) |i#0|)) (<= (LitInt 0) |j#0|)) (and (and (<= |i#0| (_System.array2.Length0 |m#0|)) (<= |j#0| (_System.array2.Length1 |m#0|))) (=> (= |i#0| (_System.array2.Length0 |m#0|)) (= |j#0| (LitInt 0))))))) ($IsAlloc SeqType (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T $ly $Heap |m#0| |i#0| |j#0|) (TSeq ArrayAllocationInitialization._default.M2S$T) $Heap))
 :qid |unknown.0:0|
 :skolemid |4515|
 :pattern ( ($IsAlloc SeqType (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T $ly $Heap |m#0| |i#0| |j#0|) (TSeq ArrayAllocationInitialization._default.M2S$T) $Heap))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4186|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3700|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3698|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |3941|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3709|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((f T@U) (i Int) ) (! (= (FDim (MultiIndexField f i)) (+ (FDim f) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |3788|
 :pattern ( (MultiIndexField f i))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |4043|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |3907|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4194|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h) ($IsAlloc T@@1 v@@0 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3722|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@2 T@U) ($o@@2 T@U) ($i0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0) (< $i0 (_System.array2.Length0 $o@@2))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@2))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) (MultiIndexField (IndexField $i0) $i1)) _System.array2$arg@@4 $h@@2))
 :qid |unknown.0:0|
 :skolemid |4184|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) (MultiIndexField (IndexField $i0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |4178|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |4191|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#12| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (= $o@@3 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7822|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#12| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |3909|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |4042|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |4185|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@1 T@U) ) (!  (and (=> (= i@@0 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@0) v@@1)) (=> (or (not (= i@@0 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@0) (|Seq#Index| s@@1 i@@0))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |3908|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@0))
)))
(assert (forall ((ArrayAllocationInitialization._default.M2S$T@@0 T@U) ($ly@@0 T@U) ($Heap@@0 T@U) (|m#0@@0| T@U) (|i#0@@0| Int) (|j#0@@0| Int) ) (! (= (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@0 ($LS $ly@@0) $Heap@@0 |m#0@@0| |i#0@@0| |j#0@@0|) (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@0 $ly@@0 $Heap@@0 |m#0@@0| |i#0@@0| |j#0@@0|))
 :qid |unknown.0:0|
 :skolemid |4510|
 :pattern ( (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@0 ($LS $ly@@0) $Heap@@0 |m#0@@0| |i#0@@0| |j#0@@0|))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@3 T@U) ($o@@5 T@U) ($i0@@0 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@5))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@5))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |4183|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3710|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@1) ($Is T@@2 v@@2 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3721|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3904|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((o T@U) ) (! (<= 0 (_System.array2.Length0 o))
 :qid |unknown.0:0|
 :skolemid |4181|
 :pattern ( (_System.array2.Length0 o))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array2.Length1 o@@0))
 :qid |unknown.0:0|
 :skolemid |4182|
 :pattern ( (_System.array2.Length1 o@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@1) h@@0) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@1) t0@@1 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |3756|
 :pattern ( (|Seq#Index| v@@3 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |3757|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@1) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |3690|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |3691|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((i@@2 Int) ) (! (= (FDim (IndexField i@@2)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |3786|
 :pattern ( (IndexField i@@2))
)))
(assert (forall ((i@@3 Int) ) (! (= (IndexField_Inverse (IndexField i@@3)) i@@3)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |3787|
 :pattern ( (IndexField i@@3))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |4179|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |4192|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3708|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@4 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@6)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |4188|
 :pattern ( (_System.array2.Length0 $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@5 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@7)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |4190|
 :pattern ( (_System.array2.Length1 $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ArrayAllocationInitialization._default.M2S$T@@1 T@U) ($ly@@1 T@U) ($Heap@@1 T@U) (|m#0@@1| T@U) (|i#0@@1| Int) (|j#0@@1| Int) ) (!  (=> (or (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@1 $Heap@@1 |m#0@@1| |i#0@@1| |j#0@@1|) (and (< 0 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@1) (and ($Is refType |m#0@@1| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T@@1)) ($IsAlloc refType |m#0@@1| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T@@1) $Heap@@1))) (<= (LitInt 0) |i#0@@1|)) (<= (LitInt 0) |j#0@@1|)) (and (and (<= |i#0@@1| (_System.array2.Length0 |m#0@@1|)) (<= |j#0@@1| (_System.array2.Length1 |m#0@@1|))) (=> (= |i#0@@1| (_System.array2.Length0 |m#0@@1|)) (= |j#0@@1| (LitInt 0))))))) ($Is SeqType (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@1 $ly@@1 $Heap@@1 |m#0@@1| |i#0@@1| |j#0@@1|) (TSeq ArrayAllocationInitialization._default.M2S$T@@1)))
 :qid |unknown.0:0|
 :skolemid |4514|
 :pattern ( (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@1 $ly@@1 $Heap@@1 |m#0@@1| |i#0@@1| |j#0@@1|))
))))
(assert (forall ((f@@0 T@U) (i@@4 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@4)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@4)) i@@4))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |3789|
 :pattern ( (MultiIndexField f@@0 i@@4))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |3906|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((bx@@2 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |3718|
 :pattern ( ($IsBox bx@@2 (TSeq t@@4)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |4180|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |4193|
 :pattern ( ($IsBox bx@@4 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ArrayAllocationInitialization._default.M2S$T@@2 T@U) ($ly@@2 T@U) ($Heap@@2 T@U) (|m#0@@2| T@U) (|i#0@@2| Int) (|j#0@@2| Int) ) (!  (=> (or (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@2 $Heap@@2 |m#0@@2| |i#0@@2| |j#0@@2|) (and (< 0 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@2) ($Is refType |m#0@@2| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T@@2))) (<= (LitInt 0) |i#0@@2|)) (<= (LitInt 0) |j#0@@2|)) (and (and (<= |i#0@@2| (_System.array2.Length0 |m#0@@2|)) (<= |j#0@@2| (_System.array2.Length1 |m#0@@2|))) (=> (= |i#0@@2| (_System.array2.Length0 |m#0@@2|)) (= |j#0@@2| (LitInt 0))))))) (and (=> (or (not (= |i#0@@2| (_System.array2.Length0 |m#0@@2|))) (not true)) (and (=> (= |j#0@@2| (_System.array2.Length1 |m#0@@2|)) (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@2 $Heap@@2 |m#0@@2| (+ |i#0@@2| 1) (LitInt 0))) (=> (or (not (= |j#0@@2| (_System.array2.Length1 |m#0@@2|))) (not true)) (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@2 $Heap@@2 |m#0@@2| |i#0@@2| (+ |j#0@@2| 1))))) (= (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@2 ($LS $ly@@2) $Heap@@2 |m#0@@2| |i#0@@2| |j#0@@2|) (ite (= |i#0@@2| (_System.array2.Length0 |m#0@@2|)) |Seq#Empty| (ite (= |j#0@@2| (_System.array2.Length1 |m#0@@2|)) (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@2 $ly@@2 $Heap@@2 |m#0@@2| (+ |i#0@@2| 1) (LitInt 0)) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |m#0@@2|) (MultiIndexField (IndexField |i#0@@2|) |j#0@@2|))) (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@2 $ly@@2 $Heap@@2 |m#0@@2| |i#0@@2| (+ |j#0@@2| 1))))))))
 :qid |unknown.0:0|
 :skolemid |4517|
 :pattern ( (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@2 ($LS $ly@@2) $Heap@@2 |m#0@@2| |i#0@@2| |j#0@@2|) ($IsGoodHeap $Heap@@2))
))))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s0@@0 n))) (=> (<= (|Seq#Length| s0@@0) n) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s1@@0 (- n (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |3910|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3701|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3699|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3905|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3744|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@1))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@2)) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@5) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |3736|
 :pattern ( (|Seq#Index| v@@5 i@@5))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |3737|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@2)))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3723|
 :pattern ( ($Is intType v@@6 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |j#0@@3| () Int)
(declare-fun |m#0@@3| () T@U)
(declare-fun |i#0@@3| () Int)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun ArrayAllocationInitialization._default.M2S$T@@3 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |##j#1@0| () Int)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $LZ () T@U)
(declare-fun |##i#0@0| () Int)
(declare-fun |##j#0@0| () Int)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$ArrayAllocationInitialization.__default.M2S)
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
 (=> (= (ControlFlow 0 0) 40) (let ((anon15_Else_correct  (=> (or (not (= |j#0@@3| (_System.array2.Length1 |m#0@@3|))) (not true)) (and (=> (= (ControlFlow 0 14) (- 0 26)) (or (not (= |m#0@@3| null)) (not true))) (=> (or (not (= |m#0@@3| null)) (not true)) (and (=> (= (ControlFlow 0 14) (- 0 25)) (and (<= 0 |i#0@@3|) (< |i#0@@3| (_System.array2.Length0 |m#0@@3|)))) (=> (and (<= 0 |i#0@@3|) (< |i#0@@3| (_System.array2.Length0 |m#0@@3|))) (and (=> (= (ControlFlow 0 14) (- 0 24)) (and (<= 0 |j#0@@3|) (< |j#0@@3| (_System.array2.Length1 |m#0@@3|)))) (=> (and (<= 0 |j#0@@3|) (< |j#0@@3| (_System.array2.Length1 |m#0@@3|))) (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |m#0@@3| (MultiIndexField (IndexField |i#0@@3|) |j#0@@3|)))) (=> (and ($IsAlloc refType |m#0@@3| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T@@3) $Heap@@3) ($IsAlloc intType (int_2_U |i#0@@3|) Tclass._System.nat $Heap@@3)) (and (=> (= (ControlFlow 0 14) (- 0 23)) ($Is intType (int_2_U (+ |j#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |j#0@@3| 1)) Tclass._System.nat) (=> (and (= |##j#1@0| (+ |j#0@@3| 1)) ($IsAlloc intType (int_2_U |##j#1@0|) Tclass._System.nat $Heap@@3)) (and (=> (= (ControlFlow 0 14) (- 0 22)) (<= |i#0@@3| (_System.array2.Length0 |m#0@@3|))) (and (=> (= (ControlFlow 0 14) (- 0 21)) (<= |##j#1@0| (_System.array2.Length1 |m#0@@3|))) (=> (and (<= |i#0@@3| (_System.array2.Length0 |m#0@@3|)) (<= |##j#1@0| (_System.array2.Length1 |m#0@@3|))) (and (=> (= (ControlFlow 0 14) (- 0 20)) (=> (= |i#0@@3| (_System.array2.Length0 |m#0@@3|)) (= |##j#1@0| (LitInt 0)))) (=> (and (=> (= |i#0@@3| (_System.array2.Length0 |m#0@@3|)) (= |##j#1@0| (LitInt 0))) (= |b$reqreads#2@0| (forall (($o@@8 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@8) alloc)))) (= $o@@8 |m#0@@3|)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@8 $f@@0)))
 :qid |Arraysdfy.736:19|
 :skolemid |4519|
)))) (and (=> (= (ControlFlow 0 14) (- 0 19)) (or (<= 0 (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)) (= (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)))) (=> (or (<= 0 (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)) (= (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|))) (and (=> (= (ControlFlow 0 14) (- 0 18)) (or (or (<= 0 (- (_System.array2.Length1 |m#0@@3|) |j#0@@3|)) (< (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|))) (= (- (_System.array2.Length1 |m#0@@3|) |##j#1@0|) (- (_System.array2.Length1 |m#0@@3|) |j#0@@3|)))) (=> (or (or (<= 0 (- (_System.array2.Length1 |m#0@@3|) |j#0@@3|)) (< (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|))) (= (- (_System.array2.Length1 |m#0@@3|) |##j#1@0|) (- (_System.array2.Length1 |m#0@@3|) |j#0@@3|))) (and (=> (= (ControlFlow 0 14) (- 0 17)) (or (< (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)) (and (= (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)) (< (- (_System.array2.Length1 |m#0@@3|) |##j#1@0|) (- (_System.array2.Length1 |m#0@@3|) |j#0@@3|))))) (=> (or (< (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)) (and (= (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)) (< (- (_System.array2.Length1 |m#0@@3|) |##j#1@0|) (- (_System.array2.Length1 |m#0@@3|) |j#0@@3|)))) (=> (and (and (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@3 $Heap@@3 |m#0@@3| |i#0@@3| (+ |j#0@@3| 1)) (= (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@3 ($LS $LZ) $Heap@@3 |m#0@@3| |i#0@@3| |j#0@@3|) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |m#0@@3|) (MultiIndexField (IndexField |i#0@@3|) |j#0@@3|))) (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@3 ($LS $LZ) $Heap@@3 |m#0@@3| |i#0@@3| (+ |j#0@@3| 1))))) (and (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@3 $Heap@@3 |m#0@@3| |i#0@@3| (+ |j#0@@3| 1)) ($Is SeqType (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@3 ($LS $LZ) $Heap@@3 |m#0@@3| |i#0@@3| |j#0@@3|) (TSeq ArrayAllocationInitialization._default.M2S$T@@3)))) (and (=> (= (ControlFlow 0 14) (- 0 16)) true) (and (=> (= (ControlFlow 0 14) (- 0 15)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (=> (= (ControlFlow 0 14) (- 0 13)) |b$reqreads#2@0|))))))))))))))))))))))))))))))
(let ((anon15_Then_correct  (=> (and (= |j#0@@3| (_System.array2.Length1 |m#0@@3|)) ($IsAlloc refType |m#0@@3| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T@@3) $Heap@@3)) (and (=> (= (ControlFlow 0 4) (- 0 12)) ($Is intType (int_2_U (+ |i#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |i#0@@3| 1)) Tclass._System.nat) (=> (and (= |##i#0@0| (+ |i#0@@3| 1)) ($IsAlloc intType (int_2_U |##i#0@0|) Tclass._System.nat $Heap@@3)) (and (=> (= (ControlFlow 0 4) (- 0 11)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (and (= |##j#0@0| (LitInt 0)) ($IsAlloc intType (int_2_U |##j#0@0|) Tclass._System.nat $Heap@@3)) (and (=> (= (ControlFlow 0 4) (- 0 10)) (<= |##i#0@0| (_System.array2.Length0 |m#0@@3|))) (and (=> (= (ControlFlow 0 4) (- 0 9)) (<= |##j#0@0| (_System.array2.Length1 |m#0@@3|))) (=> (and (<= |##i#0@0| (_System.array2.Length0 |m#0@@3|)) (<= |##j#0@0| (_System.array2.Length1 |m#0@@3|))) (and (=> (= (ControlFlow 0 4) (- 0 8)) (=> (= |##i#0@0| (_System.array2.Length0 |m#0@@3|)) (= |##j#0@0| (LitInt 0)))) (=> (and (=> (= |##i#0@0| (_System.array2.Length0 |m#0@@3|)) (= |##j#0@0| (LitInt 0))) (= |b$reqreads#0@0| (forall (($o@@9 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@9) alloc)))) (= $o@@9 |m#0@@3|)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@9 $f@@1)))
 :qid |Arraysdfy.734:7|
 :skolemid |4518|
)))) (and (=> (= (ControlFlow 0 4) (- 0 7)) (or (<= 0 (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)) (= (- (_System.array2.Length0 |m#0@@3|) |##i#0@0|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)))) (=> (or (<= 0 (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)) (= (- (_System.array2.Length0 |m#0@@3|) |##i#0@0|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (or (<= 0 (- (_System.array2.Length1 |m#0@@3|) |j#0@@3|)) (< (- (_System.array2.Length0 |m#0@@3|) |##i#0@0|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|))) (= (- (_System.array2.Length1 |m#0@@3|) |##j#0@0|) (- (_System.array2.Length1 |m#0@@3|) |j#0@@3|)))) (=> (or (or (<= 0 (- (_System.array2.Length1 |m#0@@3|) |j#0@@3|)) (< (- (_System.array2.Length0 |m#0@@3|) |##i#0@0|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|))) (= (- (_System.array2.Length1 |m#0@@3|) |##j#0@0|) (- (_System.array2.Length1 |m#0@@3|) |j#0@@3|))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (< (- (_System.array2.Length0 |m#0@@3|) |##i#0@0|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)) (and (= (- (_System.array2.Length0 |m#0@@3|) |##i#0@0|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)) (< (- (_System.array2.Length1 |m#0@@3|) |##j#0@0|) (- (_System.array2.Length1 |m#0@@3|) |j#0@@3|))))) (=> (or (< (- (_System.array2.Length0 |m#0@@3|) |##i#0@0|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)) (and (= (- (_System.array2.Length0 |m#0@@3|) |##i#0@0|) (- (_System.array2.Length0 |m#0@@3|) |i#0@@3|)) (< (- (_System.array2.Length1 |m#0@@3|) |##j#0@0|) (- (_System.array2.Length1 |m#0@@3|) |j#0@@3|)))) (=> (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@3 $Heap@@3 |m#0@@3| (+ |i#0@@3| 1) (LitInt 0)) (=> (and (and (= (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@3 ($LS $LZ) $Heap@@3 |m#0@@3| |i#0@@3| |j#0@@3|) (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@3 ($LS $LZ) $Heap@@3 |m#0@@3| (+ |i#0@@3| 1) (LitInt 0))) (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@3 $Heap@@3 |m#0@@3| (+ |i#0@@3| 1) (LitInt 0))) (and ($Is SeqType (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@3 ($LS $LZ) $Heap@@3 |m#0@@3| |i#0@@3| |j#0@@3|) (TSeq ArrayAllocationInitialization._default.M2S$T@@3)) (= (ControlFlow 0 4) (- 0 3)))) |b$reqreads#0@0|))))))))))))))))))))))
(let ((anon14_Else_correct  (=> (or (not (= |i#0@@3| (_System.array2.Length0 |m#0@@3|))) (not true)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (or (not (= |m#0@@3| null)) (not true))) (=> (or (not (= |m#0@@3| null)) (not true)) (and (=> (= (ControlFlow 0 27) 4) anon15_Then_correct) (=> (= (ControlFlow 0 27) 14) anon15_Else_correct)))))))
(let ((anon14_Then_correct true))
(let ((anon13_Else_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (or (not (= |m#0@@3| null)) (not true))) (=> (or (not (= |m#0@@3| null)) (not true)) (and (=> (= (ControlFlow 0 29) 2) anon14_Then_correct) (=> (= (ControlFlow 0 29) 27) anon14_Else_correct))))))
(let ((anon13_Then_correct true))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 31) (- 0 33)) (or (not (= |m#0@@3| null)) (not true))) (=> (or (not (= |m#0@@3| null)) (not true)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (or (not (= |m#0@@3| null)) (not true))) (=> (or (not (= |m#0@@3| null)) (not true)) (and (=> (= (ControlFlow 0 31) 1) anon13_Then_correct) (=> (= (ControlFlow 0 31) 29) anon13_Else_correct))))))))
(let ((anon12_Else_correct  (=> (and (=> (= |i#0@@3| (_System.array2.Length0 |m#0@@3|)) (= |j#0@@3| (LitInt 0))) (= (ControlFlow 0 36) 31)) anon4_correct)))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 34) (- 0 35)) (or (not (= |m#0@@3| null)) (not true))) (=> (or (not (= |m#0@@3| null)) (not true)) (=> (= |i#0@@3| (_System.array2.Length0 |m#0@@3|)) (=> (and (= |j#0@@3| (LitInt 0)) (= (ControlFlow 0 34) 31)) anon4_correct))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#12| null $Heap@@3 alloc |m#0@@3|)) (and (=> (= (ControlFlow 0 37) (- 0 39)) (or (not (= |m#0@@3| null)) (not true))) (=> (or (not (= |m#0@@3| null)) (not true)) (=> (<= |i#0@@3| (_System.array2.Length0 |m#0@@3|)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (or (not (= |m#0@@3| null)) (not true))) (=> (or (not (= |m#0@@3| null)) (not true)) (=> (<= |j#0@@3| (_System.array2.Length1 |m#0@@3|)) (and (=> (= (ControlFlow 0 37) 34) anon12_Then_correct) (=> (= (ControlFlow 0 37) 36) anon12_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) ($Is refType |m#0@@3| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T@@3))) (and (and (<= (LitInt 0) |i#0@@3|) (<= (LitInt 0) |j#0@@3|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 40) 37)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
