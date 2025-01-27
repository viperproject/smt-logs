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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
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
(declare-fun refType () T@T)
(declare-fun Tclass._System.array2 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Quant1 (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.Quant1#canCall| (T@U T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun SeqType () T@T)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSeq alloc Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._System.array2? Tagclass._System.array2 |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$array2)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array2$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |2815|
 :pattern ( (_System.array2.Length0 $o) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |2817|
 :pattern ( (_System.array2.Length1 $o@@0) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array2 _System.array2$arg@@1) $h) ($IsAlloc refType |c#0| (Tclass._System.array2? _System.array2$arg@@1) $h))
 :qid |unknown.0:0|
 :skolemid |2823|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array2 _System.array2$arg@@1) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array2? _System.array2$arg@@1) $h))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2342|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor HandleTypeType) 4))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |2606|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |2607|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |2608|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1@@0 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1@@0 (MapType0Store t0@@0 t1@@0 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
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
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@1 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@0)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2814|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@0))
)))
(assert (= (Ctor SeqType) 8))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (|m#0| T@U) (|P#0| T@U) ) (!  (=> (or (|_module.__default.Quant1#canCall| $Heap |m#0| |P#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is refType |m#0| (Tclass._System.array2 (TSeq TChar)))) ($Is HandleTypeType |P#0| (Tclass._System.___hTotalFunc1 TInt TBool))))) (= (_module.__default.Quant1 $Heap |m#0| |P#0|) (forall ((|i#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| (_System.array2.Length0 |m#0|))) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap |P#0| ($Box intType (int_2_U |i#0|)))))) (forall ((|j#0| Int) ) (!  (=> (and (<= (LitInt 0) |j#0|) (< |j#0| (_System.array2.Length1 |m#0|))) (not (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0|) |j#0|))) |Seq#Empty|)))
 :qid |PrecedenceLinterdfy.259:53|
 :skolemid |3151|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0|) |j#0|))))
)))
 :qid |PrecedenceLinterdfy.259:10|
 :skolemid |3152|
 :pattern ( ($Unbox boolType (Apply1 TInt TBool $Heap |P#0| ($Box intType (int_2_U |i#0|)))))
))))
 :qid |PrecedenceLinterdfy.256:17|
 :skolemid |3153|
 :pattern ( (_module.__default.Quant1 $Heap |m#0| |P#0|) ($IsGoodHeap $Heap))
))))
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
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |2602|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |2456|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |2457|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2243|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((f@@1 T@U) (i Int) ) (! (= (FDim (MultiIndexField f@@1 i)) (+ (FDim f@@1) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |2322|
 :pattern ( (MultiIndexField f@@1 i))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2822|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2256|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@1 T@U) ($o@@2 T@U) ($i0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0) (< $i0 (_System.array2.Length0 $o@@2))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@2))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) (MultiIndexField (IndexField $i0) $i1)) _System.array2$arg@@4 $h@@1))
 :qid |unknown.0:0|
 :skolemid |2812|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) (MultiIndexField (IndexField $i0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
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
(assert  (and (forall ((t0@@2 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@2 t2 (MapType1Store t0@@2 t1@@2 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (= $o@@3 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3449|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) (|f#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@2) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R|) $h@@2))
 :qid |unknown.0:0|
 :skolemid |2620|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R|) $h@@2))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@3) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@0|) $h@@3))
 :qid |unknown.0:0|
 :skolemid |2627|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@0|) $h@@3))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |2813|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((f@@2 T@U) (t0@@3 T@U) (t1@@3 T@U) (h@@0 T@U) ) (!  (=> (and ($IsGoodHeap h@@0) ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@3) h@@0)) (forall ((bx0@@0 T@U) ) (!  (=> (and ($IsAllocBox bx0@@0 t0@@3 h@@0) (Requires1 t0@@3 t1@@3 h@@0 f@@2 bx0@@0)) ($IsAllocBox (Apply1 t0@@3 t1@@3 h@@0 f@@2 bx0@@0) t1@@3 h@@0))
 :qid |unknown.0:0|
 :skolemid |2612|
 :pattern ( (Apply1 t0@@3 t1@@3 h@@0 f@@2 bx0@@0))
)))
 :qid |unknown.0:0|
 :skolemid |2613|
 :pattern ( ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@3) h@@0))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2367|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |2458|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@4 T@U) ($o@@5 T@U) ($i0@@0 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@5))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@5))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |2811|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((f@@3 T@U) (t0@@4 T@U) (t1@@4 T@U) ) (! (= ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4)) (forall ((h@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@1 t0@@4)) (Requires1 t0@@4 t1@@4 h@@1 f@@3 bx0@@1)) ($IsBox (Apply1 t0@@4 t1@@4 h@@1 f@@3 bx0@@1) t1@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2604|
 :pattern ( (Apply1 t0@@4 t1@@4 h@@1 f@@3 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |2605|
 :pattern ( ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2244|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |2246|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (= (Ctor charType) 9))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |2247|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2255|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2438|
 :pattern ( (|Seq#Length| s))
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
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |2584|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |2585|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |2615|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |2616|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |2622|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |2623|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@6|))
)))
(assert (forall ((v@@1 T@U) (t0@@5 T@U) (h@@2 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0@@5) h@@2) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@0) t0@@5 h@@2))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |2290|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |2291|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0@@5) h@@2))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |2224|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |2225|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((i@@1 Int) ) (! (= (FDim (IndexField i@@1)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |2320|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((i@@2 Int) ) (! (= (IndexField_Inverse (IndexField i@@2)) i@@2)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |2321|
 :pattern ( (IndexField i@@2))
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
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@6)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |2816|
 :pattern ( (_System.array2.Length0 $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@7)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |2818|
 :pattern ( (_System.array2.Length1 $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@7|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@7| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |2625|
))))
 :qid |unknown.0:0|
 :skolemid |2626|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@8| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |2618|
))))
 :qid |unknown.0:0|
 :skolemid |2619|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((f@@4 T@U) (t0@@6 T@U) (t1@@5 T@U) (h@@3 T@U) ) (!  (=> ($IsGoodHeap h@@3) (= ($IsAlloc HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@5) h@@3) (forall ((bx0@@2 T@U) ) (!  (=> (and (and ($IsBox bx0@@2 t0@@6) ($IsAllocBox bx0@@2 t0@@6 h@@3)) (Requires1 t0@@6 t1@@5 h@@3 f@@4 bx0@@2)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@6 t1@@5 h@@3 f@@4 bx0@@2) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |2609|
 :pattern ( (|Set#IsMember| (Reads1 t0@@6 t1@@5 h@@3 f@@4 bx0@@2) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |2610|
 :pattern ( (Apply1 t0@@6 t1@@5 h@@3 f@@4 bx0@@2))
 :pattern ( (Reads1 t0@@6 t1@@5 h@@3 f@@4 bx0@@2))
))))
 :qid |unknown.0:0|
 :skolemid |2611|
 :pattern ( ($IsAlloc HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@6 t1@@5) h@@3))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |2586|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@5)) bx@@5) ($Is HandleTypeType ($Unbox HandleTypeType bx@@5) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |2617|
 :pattern ( ($IsBox bx@@5 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@6)) bx@@6) ($Is HandleTypeType ($Unbox HandleTypeType bx@@6) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |2624|
 :pattern ( ($IsBox bx@@6 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@11|)))
)))
(assert (forall ((f@@5 T@U) (i@@3 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@5 i@@3)) f@@5) (= (MultiIndexField_Inverse1 (MultiIndexField f@@5 i@@3)) i@@3))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |2323|
 :pattern ( (MultiIndexField f@@5 i@@3))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |2583|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |2614|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |2621|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (heap@@0 T@U) (f@@6 T@U) (bx0@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (|Set#Equal| (Reads1 t0@@7 t1@@6 $OneHeap f@@6 bx0@@3) |Set#Empty|)) (= (Requires1 t0@@7 t1@@6 $OneHeap f@@6 bx0@@3) (Requires1 t0@@7 t1@@6 heap@@0 f@@6 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |2603|
 :pattern ( (Requires1 t0@@7 t1@@6 $OneHeap f@@6 bx0@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@7 t1@@6 heap@@0 f@@6 bx0@@3))
)))
(assert (forall ((bx@@7 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |2252|
 :pattern ( ($IsBox bx@@7 (TSeq t@@3)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |2808|
 :pattern ( ($IsBox bx@@8 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |2821|
 :pattern ( ($IsBox bx@@9 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@2 T@U) ) (! (= (|Set#IsMember| a@@1 o@@2) (|Set#IsMember| b@@1 o@@2))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2365|
 :pattern ( (|Set#IsMember| a@@1 o@@2))
 :pattern ( (|Set#IsMember| b@@1 o@@2))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2366|
 :pattern ( (|Set#Equal| a@@1 b@@1))
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
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2439|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2278|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |2280|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@6)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |2281|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@6))
)))
(assert (forall ((v@@5 T@U) (t0@@8 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@8)) (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@4) t0@@8))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |2270|
 :pattern ( (|Seq#Index| v@@5 i@@4))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |2271|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@8)))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2257|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |2259|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is charType v@@8 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |2260|
 :pattern ( ($Is charType v@@8 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun |m#0@@0| () T@U)
(declare-fun |P#0@@0| () T@U)
(declare-fun |b$reqreads#0@2| () Bool)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |j#1@0| () Int)
(declare-fun |i#1@0| () Int)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.Quant1)
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
 (=> (= (ControlFlow 0 0) 25) (let ((anon22_Else_correct true))
(let ((anon15_correct  (=> (= (_module.__default.Quant1 $Heap@@0 |m#0@@0| |P#0@@0|) (forall ((|i#2| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#2|) (< |i#2| (_System.array2.Length0 |m#0@@0|))) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@0 |P#0@@0| ($Box intType (int_2_U |i#2|)))))) (forall ((|j#2| Int) ) (!  (=> (and (<= (LitInt 0) |j#2|) (< |j#2| (_System.array2.Length1 |m#0@@0|))) (not (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |m#0@@0|) (MultiIndexField (IndexField |i#2|) |j#2|))) |Seq#Empty|)))
 :qid |PrecedenceLinterdfy.259:53|
 :skolemid |3156|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |m#0@@0|) (MultiIndexField (IndexField |i#2|) |j#2|))))
)))
 :qid |PrecedenceLinterdfy.259:10|
 :skolemid |3157|
 :pattern ( ($Unbox boolType (Apply1 TInt TBool $Heap@@0 |P#0@@0| ($Box intType (int_2_U |i#2|)))))
))) (=> (and ($Is boolType (bool_2_U (_module.__default.Quant1 $Heap@@0 |m#0@@0| |P#0@@0|)) TBool) (= (ControlFlow 0 4) (- 0 3))) |b$reqreads#0@2|))))
(let ((anon14_correct  (=> (and (= |b$reqreads#0@2| |b$reqreads#0@1|) (= (ControlFlow 0 7) 4)) anon15_correct)))
(let ((anon24_Else_correct  (=> (not (and (<= (LitInt 0) |j#1@0|) (< |j#1@0| (_System.array2.Length1 |m#0@@0|)))) (=> (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 12) 7)) anon14_correct))))
(let ((anon24_Then_correct  (=> (and (<= (LitInt 0) |j#1@0|) (< |j#1@0| (_System.array2.Length1 |m#0@@0|))) (and (=> (= (ControlFlow 0 8) (- 0 11)) (or (not (= |m#0@@0| null)) (not true))) (=> (or (not (= |m#0@@0| null)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (and (<= 0 |i#1@0|) (< |i#1@0| (_System.array2.Length0 |m#0@@0|)))) (=> (and (<= 0 |i#1@0|) (< |i#1@0| (_System.array2.Length0 |m#0@@0|))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (<= 0 |j#1@0|) (< |j#1@0| (_System.array2.Length1 |m#0@@0|)))) (=> (and (<= 0 |j#1@0|) (< |j#1@0| (_System.array2.Length1 |m#0@@0|))) (=> (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |m#0@@0| (MultiIndexField (IndexField |i#1@0|) |j#1@0|)))) (=> (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= (ControlFlow 0 8) 7)) anon14_correct)))))))))))
(let ((anon23_Else_correct  (=> (< |j#1@0| (LitInt 0)) (and (=> (= (ControlFlow 0 15) 8) anon24_Then_correct) (=> (= (ControlFlow 0 15) 12) anon24_Else_correct)))))
(let ((anon23_Then_correct  (=> (<= (LitInt 0) |j#1@0|) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (not (= |m#0@@0| null)) (not true))) (=> (or (not (= |m#0@@0| null)) (not true)) (and (=> (= (ControlFlow 0 13) 8) anon24_Then_correct) (=> (= (ControlFlow 0 13) 12) anon24_Else_correct)))))))
(let ((anon22_Then_correct  (and (=> (= (ControlFlow 0 16) 13) anon23_Then_correct) (=> (= (ControlFlow 0 16) 15) anon23_Else_correct))))
(let ((anon21_Then_correct  (=> (and (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| (_System.array2.Length0 |m#0@@0|))) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@0 |P#0@@0| ($Box intType (int_2_U |i#1@0|)))))) (and (=> (= (ControlFlow 0 17) 16) anon22_Then_correct) (=> (= (ControlFlow 0 17) 6) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (not (and (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| (_System.array2.Length0 |m#0@@0|))) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@@0 |P#0@@0| ($Box intType (int_2_U |i#1@0|))))))) (=> (and (= |b$reqreads#0@2| true) (= (ControlFlow 0 5) 4)) anon15_correct))))
(let ((anon20_Else_correct  (=> (not (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| (_System.array2.Length0 |m#0@@0|)))) (and (=> (= (ControlFlow 0 19) 17) anon21_Then_correct) (=> (= (ControlFlow 0 19) 5) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| (_System.array2.Length0 |m#0@@0|))) (and (=> (= (ControlFlow 0 18) 17) anon21_Then_correct) (=> (= (ControlFlow 0 18) 5) anon21_Else_correct)))))
(let ((anon19_Else_correct  (=> (< |i#1@0| (LitInt 0)) (and (=> (= (ControlFlow 0 22) 18) anon20_Then_correct) (=> (= (ControlFlow 0 22) 19) anon20_Else_correct)))))
(let ((anon19_Then_correct  (=> (<= (LitInt 0) |i#1@0|) (and (=> (= (ControlFlow 0 20) (- 0 21)) (or (not (= |m#0@@0| null)) (not true))) (=> (or (not (= |m#0@@0| null)) (not true)) (and (=> (= (ControlFlow 0 20) 18) anon20_Then_correct) (=> (= (ControlFlow 0 20) 19) anon20_Else_correct)))))))
(let ((anon18_Then_correct  (and (=> (= (ControlFlow 0 23) 20) anon19_Then_correct) (=> (= (ControlFlow 0 23) 22) anon19_Else_correct))))
(let ((anon18_Else_correct true))
(let ((anon17_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#2| null $Heap@@0 alloc |m#0@@0|)) (and (and (=> (= (ControlFlow 0 24) 1) anon17_Then_correct) (=> (= (ControlFlow 0 24) 23) anon18_Then_correct)) (=> (= (ControlFlow 0 24) 2) anon18_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($Is refType |m#0@@0| (Tclass._System.array2 (TSeq TChar))) ($Is HandleTypeType |P#0@@0| (Tclass._System.___hTotalFunc1 TInt TBool))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 25) 24))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
