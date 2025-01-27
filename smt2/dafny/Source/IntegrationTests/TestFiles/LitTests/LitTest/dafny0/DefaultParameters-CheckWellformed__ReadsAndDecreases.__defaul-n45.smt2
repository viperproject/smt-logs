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
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun ReadsAndDecreases.__default.ReadM0 (T@U T@U) Int)
(declare-fun |ReadsAndDecreases.__default.ReadM0#canCall| (T@U T@U) Bool)
(declare-fun |ReadsAndDecreases.__default.MoreReads#canCall| (T@U T@U Int Int) Bool)
(declare-fun ReadsAndDecreases.__default.MoreReads (T@U T@U Int Int) Int)
(declare-fun $IsBox (T@U T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._System.array? Tagclass._System.array Tagclass._System.array2? Tagclass._System.array2 tytagFamily$array tytagFamily$array2)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |5480|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((_System.array2$arg T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |5711|
 :pattern ( (_System.array2.Length0 $o@@0) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |5713|
 :pattern ( (_System.array2.Length1 $o@@1) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |5486|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |5719|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
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
 :skolemid |5479|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@3 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@3 (Tclass._System.array2? _System.array2$arg@@2) $h@@2)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5710|
 :pattern ( ($IsAlloc refType $o@@3 (Tclass._System.array2? _System.array2$arg@@2) $h@@2))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |5138|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |5136|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@3 T@U) ($o@@4 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0)) _System.array$arg@@2 $h@@3))
 :qid |unknown.0:0|
 :skolemid |5477|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |5147|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((f T@U) (i Int) ) (! (= (FDim (MultiIndexField f i)) (+ (FDim f) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |5226|
 :pattern ( (MultiIndexField f i))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5485|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@2| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5718|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |5160|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@4 T@U) ($o@@5 T@U) ($i0@@0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@5))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@5))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1)) _System.array2$arg@@4 $h@@4))
 :qid |unknown.0:0|
 :skolemid |5708|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |5473|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |5482|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |5702|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |5715|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@6 T@U) ) (! (= ($Is refType $o@@6 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@6 null) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |5478|
 :pattern ( ($Is refType $o@@6 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@7 T@U) ) (! (= ($Is refType $o@@7 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@7 null) (= (dtype $o@@7) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |5709|
 :pattern ( ($Is refType $o@@7 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (|a#0| T@U) (|m#0| T@U) ) (!  (=> (or (|ReadsAndDecreases.__default.ReadM0#canCall| |a#0| |m#0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) ($Is refType |a#0| (Tclass._System.array TInt))) ($Is refType |m#0| (Tclass._System.array2 TInt))) (= (_System.array.Length |a#0|) (LitInt 0))))) (and (|ReadsAndDecreases.__default.MoreReads#canCall| |a#0| |m#0| (ite (< 0 (_System.array.Length |a#0|)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField (LitInt 0))))) 3) (ite  (and (< 0 (_System.array2.Length0 |m#0|)) (< 0 (_System.array2.Length1 |m#0|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField (LitInt 0)) (LitInt 0))))) 3)) (= (ReadsAndDecreases.__default.ReadM0 |a#0| |m#0|) (ReadsAndDecreases.__default.MoreReads |a#0| |m#0| (ite (< 0 (_System.array.Length |a#0|)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField (LitInt 0))))) 3) (ite  (and (< 0 (_System.array2.Length0 |m#0|)) (< 0 (_System.array2.Length1 |m#0|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField (LitInt 0)) (LitInt 0))))) 3)))))
 :qid |DefaultParametersdfy.339:18|
 :skolemid |5855|
 :pattern ( (ReadsAndDecreases.__default.ReadM0 |a#0| |m#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@5 T@U) ($o@@8 T@U) ($i0@@1 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@1) (< $i0@@1 (_System.array2.Length0 $o@@8))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@8))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@8) (MultiIndexField (IndexField $i0@@1) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |5707|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@8) (MultiIndexField (IndexField $i0@@1) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |5148|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |5159|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((o T@U) ) (! (<= 0 (_System.array.Length o))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |5233|
 :pattern ( (_System.array.Length o))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array2.Length0 o@@0))
 :qid |unknown.0:0|
 :skolemid |5705|
 :pattern ( (_System.array2.Length0 o@@0))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array2.Length1 o@@1))
 :qid |unknown.0:0|
 :skolemid |5706|
 :pattern ( (_System.array2.Length1 o@@1))
)))
(assert (forall ((i@@0 Int) ) (! (= (FDim (IndexField i@@0)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |5224|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((i@@1 Int) ) (! (= (IndexField_Inverse (IndexField i@@1)) i@@1)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |5225|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |5474|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |5483|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |5703|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |5716|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |5146|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@6 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@9)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |5481|
 :pattern ( (_System.array.Length $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@7 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@10)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |5712|
 :pattern ( (_System.array2.Length0 $o@@10) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@10) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@8 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@11)) TInt $h@@8))
 :qid |unknown.0:0|
 :skolemid |5714|
 :pattern ( (_System.array2.Length1 $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@9 T@U) ($o@@12 T@U) ($i0@@2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@2) (< $i0@@2 (_System.array.Length $o@@12)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) (IndexField $i0@@2)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |5476|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) (IndexField $i0@@2)) (Tclass._System.array? _System.array$arg@@10))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@13 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))  (=> (and (or (not (= $o@@13 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@13) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |14275|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))
)))
(assert (forall ((f@@0 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@2)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |5227|
 :pattern ( (MultiIndexField f@@0 i@@2))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |5475|
 :pattern ( ($IsBox bx@@0 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |5484|
 :pattern ( ($IsBox bx@@1 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |5704|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |5717|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |5139|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |5137|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|a#0@@0| T@U) (|m#0@@0| T@U) ) (!  (=> (or (|ReadsAndDecreases.__default.ReadM0#canCall| (Lit refType |a#0@@0|) (Lit refType |m#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($Is refType |a#0@@0| (Tclass._System.array TInt))) ($Is refType |m#0@@0| (Tclass._System.array2 TInt))) (= (LitInt (_System.array.Length (Lit refType |a#0@@0|))) (LitInt 0))))) (and (|ReadsAndDecreases.__default.MoreReads#canCall| (Lit refType |a#0@@0|) (Lit refType |m#0@@0|) (ite (< 0 (_System.array.Length (Lit refType |a#0@@0|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (Lit refType |a#0@@0|)) (IndexField (LitInt 0))))) 3) (ite  (and (< 0 (_System.array2.Length0 (Lit refType |m#0@@0|))) (< 0 (_System.array2.Length1 (Lit refType |m#0@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (Lit refType |m#0@@0|)) (MultiIndexField (IndexField (LitInt 0)) (LitInt 0))))) 3)) (= (ReadsAndDecreases.__default.ReadM0 (Lit refType |a#0@@0|) (Lit refType |m#0@@0|)) (ReadsAndDecreases.__default.MoreReads (Lit refType |a#0@@0|) (Lit refType |m#0@@0|) (ite (< 0 (_System.array.Length (Lit refType |a#0@@0|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (Lit refType |a#0@@0|)) (IndexField (LitInt 0))))) 3) (ite  (and (< 0 (_System.array2.Length0 (Lit refType |m#0@@0|))) (< 0 (_System.array2.Length1 (Lit refType |m#0@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 (Lit refType |m#0@@0|)) (MultiIndexField (IndexField (LitInt 0)) (LitInt 0))))) 3)))))
 :qid |DefaultParametersdfy.339:18|
 :weight 3
 :skolemid |5856|
 :pattern ( (ReadsAndDecreases.__default.ReadM0 (Lit refType |a#0@@0|) (Lit refType |m#0@@0|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |5182|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |5161|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |a#0@@1| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |m#0@@1| () T@U)
(set-info :boogie-vc-id CheckWellformed$$ReadsAndDecreases.__default.ReadM0)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct true))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (not (= |a#0@@1| null)) (not true))) (=> (or (not (= |a#0@@1| null)) (not true)) (=> (= (_System.array.Length |a#0@@1|) (LitInt 0)) (and (=> (= (ControlFlow 0 3) 1) anon5_Then_correct) (=> (= (ControlFlow 0 3) 2) anon5_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and ($Is refType |a#0@@1| (Tclass._System.array TInt)) ($Is refType |m#0@@1| (Tclass._System.array2 TInt))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 5) 3))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
