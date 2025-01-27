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
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
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
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |_System.Tuple2#Equal| (T@U T@U) Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
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
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.MatrixEqual (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.MatrixEqual#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TInt TagInt alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._System.array2? Tagclass._System.array2 |tytagFamily$_tuple#2| tytagFamily$array2)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array2$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (_System.array2.Length0 $o) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (_System.array2.Length1 $o@@0) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array2 _System.array2$arg@@1) $h) ($IsAlloc refType |c#0| (Tclass._System.array2? _System.array2$arg@@1) $h))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array2 _System.array2$arg@@1) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array2? _System.array2$arg@@1) $h))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_System.Tuple2#Equal| a b)  (and (= (_System.Tuple2._0 a) (_System.Tuple2._0 b)) (= (_System.Tuple2._1 a) (_System.Tuple2._1 b))))
 :qid |unknown.0:0|
 :skolemid |469|
 :pattern ( (|_System.Tuple2#Equal| a b))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
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
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@1 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@0)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@0))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_System.Tuple2#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |470|
 :pattern ( (|_System.Tuple2#Equal| a@@0 b@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((f T@U) (i Int) ) (! (= (FDim (MultiIndexField f i)) (+ (FDim f) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |105|
 :pattern ( (MultiIndexField f i))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@2 T@U) ($o@@2 T@U) ($i0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0) (< $i0 (_System.array2.Length0 $o@@2))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@2))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) (MultiIndexField (IndexField $i0) $i1)) _System.array2$arg@@4 $h@@2))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) (MultiIndexField (IndexField $i0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Is refType $o@@3 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.MatrixEqual$T T@U) ($Heap T@U) (|m#0| T@U) (|m'#0| T@U) ) (!  (=> (or (|_module.__default.MatrixEqual#canCall| _module._default.MatrixEqual$T $Heap |m#0| |m'#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is refType |m#0| (Tclass._System.array2 _module._default.MatrixEqual$T))) ($Is refType |m'#0| (Tclass._System.array2 _module._default.MatrixEqual$T))))) (= (_module.__default.MatrixEqual _module._default.MatrixEqual$T $Heap |m#0| |m'#0|)  (and (|_System.Tuple2#Equal| (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (_System.array2.Length0 |m#0|))) ($Box intType (int_2_U (_System.array2.Length1 |m#0|)))) (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (_System.array2.Length0 |m'#0|))) ($Box intType (int_2_U (_System.array2.Length1 |m'#0|))))) (forall ((|i#0| Int) (|j#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| (_System.array2.Length0 |m#0|))) (and (<= (LitInt 0) |j#0|) (< |j#0| (_System.array2.Length1 |m#0|)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0|) |j#0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m'#0|) (MultiIndexField (IndexField |i#0|) |j#0|))))
 :qid |MoForallCompilationdfy.89:10|
 :skolemid |615|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m'#0|) (MultiIndexField (IndexField |i#0|) |j#0|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |m#0|) (MultiIndexField (IndexField |i#0|) |j#0|)))
)))))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( (_module.__default.MatrixEqual _module._default.MatrixEqual$T $Heap |m#0| |m'#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@3 T@U) ($o@@4 T@U) ($i0@@0 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@4))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@4))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (MultiIndexField (IndexField $i0@@0) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (MultiIndexField (IndexField $i0@@0) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((_module._default.MatrixEqual$T@@0 T@U) ($h0 T@U) ($h1 T@U) (|m#0@@0| T@U) (|m'#0@@0| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|_module.__default.MatrixEqual#canCall| _module._default.MatrixEqual$T@@0 $h0 |m#0@@0| |m'#0@@0|) (and ($Is refType |m#0@@0| (Tclass._System.array2 _module._default.MatrixEqual$T@@0)) ($Is refType |m'#0@@0| (Tclass._System.array2 _module._default.MatrixEqual$T@@0))))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@5 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (or (= $o@@5 |m#0@@0|) (= $o@@5 |m'#0@@0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@5) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@5) $f)))
 :qid |unknown.0:0|
 :skolemid |611|
)) (= (_module.__default.MatrixEqual _module._default.MatrixEqual$T@@0 $h0 |m#0@@0| |m'#0@@0|) (_module.__default.MatrixEqual _module._default.MatrixEqual$T@@0 $h1 |m#0@@0| |m'#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |612|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.__default.MatrixEqual _module._default.MatrixEqual$T@@0 $h1 |m#0@@0| |m'#0@@0|))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array2.Length0 o@@0))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (_System.array2.Length0 o@@0))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array2.Length1 o@@1))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (_System.array2.Length1 o@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((i@@0 Int) ) (! (= (FDim (IndexField i@@0)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((i@@1 Int) ) (! (= (IndexField_Inverse (IndexField i@@1)) i@@1)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@4 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@6)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_System.array2.Length0 $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@5 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@7)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (_System.array2.Length1 $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@8 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f@@0))  (=> (and (or (not (= $o@@8 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@8) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |708|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f@@0))
)))
(assert (forall ((f@@0 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@2)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |106|
 :pattern ( (MultiIndexField f@@0 i@@2))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f@@1 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f@@1 x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f@@1 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f@@1 x@@6)))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@6))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@6))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@6))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@7)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@7))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@7))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@7))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0_0@0| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |j#0_0@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |m#0@@1| () T@U)
(declare-fun |i#0_1@0| () Int)
(declare-fun |j#0_1@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |i#1_0@0| () Int)
(declare-fun |j#1_0@0| () Int)
(declare-fun $nw@1 () T@U)
(declare-fun |i#1_1@0| () Int)
(declare-fun |j#1_1@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |j#2_0@0| () Int)
(declare-fun |i#2_0@0| () Int)
(declare-fun $nw@2 () T@U)
(declare-fun |i#2_1@0| () Int)
(declare-fun |j#2_1@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun _module._default.Transpose$T () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |m0#0| () T@U)
(declare-fun |m1#0| () T@U)
(declare-fun |m2#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Transpose)
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
 (=> (= (ControlFlow 0 0) 63) (let ((anon6_correct  (=> (and (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |$rhs#0@0|)) (and (<= (LitInt 0) |j#0_0@0|) (< |j#0_0@0| |$rhs#1@0|))) (and (=> (= (ControlFlow 0 39) (- 0 46)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 39) (- 0 45)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array2.Length0 $nw@0)))) (and (=> (= (ControlFlow 0 39) (- 0 44)) (and (<= 0 |j#0_0@0|) (< |j#0_0@0| (_System.array2.Length1 $nw@0)))) (and (=> (= (ControlFlow 0 39) (- 0 43)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField |i#0_0@0|) |j#0_0@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (MultiIndexField (IndexField |i#0_0@0|) |j#0_0@0|))) (and (=> (= (ControlFlow 0 39) (- 0 42)) (or (not (= |m#0@@1| null)) (not true))) (=> (or (not (= |m#0@@1| null)) (not true)) (and (=> (= (ControlFlow 0 39) (- 0 41)) (and (<= 0 |j#0_0@0|) (< |j#0_0@0| (_System.array2.Length0 |m#0@@1|)))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array2.Length1 |m#0@@1|)))) (=> (and (and (and (<= (LitInt 0) |i#0_1@0|) (< |i#0_1@0| |$rhs#0@0|)) (and (<= (LitInt 0) |j#0_1@0|) (< |j#0_1@0| |$rhs#1@0|))) (and (not (and (= |i#0_0@0| |i#0_1@0|) (= |j#0_0@0| |j#0_1@0|))) (= (ControlFlow 0 39) (- 0 38)))) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (MultiIndexField (IndexField |i#0_0@0|) |j#0_0@0|) (MultiIndexField (IndexField |i#0_1@0|) |j#0_1@0|))) (not true))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |m#0@@1|) (MultiIndexField (IndexField |j#0_0@0|) |i#0_0@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |m#0@@1|) (MultiIndexField (IndexField |j#0_1@0|) |i#0_1@0|))))))))))))))))))
(let ((anon23_Else_correct  (=> (and (< |j#0_0@0| (LitInt 0)) (= (ControlFlow 0 49) 39)) anon6_correct)))
(let ((anon23_Then_correct  (=> (and (<= (LitInt 0) |j#0_0@0|) (= (ControlFlow 0 48) 39)) anon6_correct)))
(let ((anon22_Then_correct  (=> (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |$rhs#0@0|)) (and (=> (= (ControlFlow 0 50) 48) anon23_Then_correct) (=> (= (ControlFlow 0 50) 49) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |$rhs#0@0|))) (= (ControlFlow 0 47) 39)) anon6_correct)))
(let ((anon21_Else_correct  (=> (< |i#0_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 52) 50) anon22_Then_correct) (=> (= (ControlFlow 0 52) 47) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (<= (LitInt 0) |i#0_0@0|) (and (=> (= (ControlFlow 0 51) 50) anon22_Then_correct) (=> (= (ControlFlow 0 51) 47) anon22_Else_correct)))))
(let ((anon20_Then_correct  (and (=> (= (ControlFlow 0 53) 51) anon21_Then_correct) (=> (= (ControlFlow 0 53) 52) anon21_Else_correct))))
(let ((anon11_correct  (=> (and (< |i#1_0@0| |$rhs#0@0|) (< |j#1_0@0| |$rhs#1@0|)) (and (=> (= (ControlFlow 0 26) (- 0 33)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 32)) (and (<= 0 |i#1_0@0|) (< |i#1_0@0| (_System.array2.Length0 $nw@1)))) (and (=> (= (ControlFlow 0 26) (- 0 31)) (and (<= 0 |j#1_0@0|) (< |j#1_0@0| (_System.array2.Length1 $nw@1)))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField |i#1_0@0|) |j#1_0@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 (MultiIndexField (IndexField |i#1_0@0|) |j#1_0@0|))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (or (not (= |m#0@@1| null)) (not true))) (=> (or (not (= |m#0@@1| null)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (and (<= 0 |j#1_0@0|) (< |j#1_0@0| (_System.array2.Length0 |m#0@@1|)))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (and (<= 0 |i#1_0@0|) (< |i#1_0@0| (_System.array2.Length1 |m#0@@1|)))) (=> (and (<= (LitInt 0) |i#1_1@0|) (<= (LitInt 0) |j#1_1@0|)) (=> (and (and (< |i#1_1@0| |$rhs#0@0|) (< |j#1_1@0| |$rhs#1@0|)) (and (not (and (= |i#1_0@0| |i#1_1@0|) (= |j#1_0@0| |j#1_1@0|))) (= (ControlFlow 0 26) (- 0 25)))) (or (or (or (not (= $nw@1 $nw@1)) (not true)) (or (not (= (MultiIndexField (IndexField |i#1_0@0|) |j#1_0@0|) (MultiIndexField (IndexField |i#1_1@0|) |j#1_1@0|))) (not true))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0@@1|) (MultiIndexField (IndexField |j#1_0@0|) |i#1_0@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0@@1|) (MultiIndexField (IndexField |j#1_1@0|) |i#1_1@0|)))))))))))))))))))
(let ((anon25_Else_correct  (=> (and (<= |$rhs#0@0| |i#1_0@0|) (= (ControlFlow 0 35) 26)) anon11_correct)))
(let ((anon25_Then_correct  (=> (and (< |i#1_0@0| |$rhs#0@0|) (= (ControlFlow 0 34) 26)) anon11_correct)))
(let ((anon24_Then_correct  (=> (and (<= (LitInt 0) |i#1_0@0|) (<= (LitInt 0) |j#1_0@0|)) (and (=> (= (ControlFlow 0 36) 34) anon25_Then_correct) (=> (= (ControlFlow 0 36) 35) anon25_Else_correct)))))
(let ((anon18_correct  (=> (and (and (< (- 0 |$rhs#1@0|) (- 0 |j#2_0@0|)) (< (+ 3 |i#2_0@0|) (+ |$rhs#0@0| 3))) (>= |j#2_0@0| (LitInt 0))) (and (=> (= (ControlFlow 0 11) (- 0 18)) (or (not (= $nw@2 null)) (not true))) (=> (or (not (= $nw@2 null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 17)) (and (<= 0 |i#2_0@0|) (< |i#2_0@0| (_System.array2.Length0 $nw@2)))) (and (=> (= (ControlFlow 0 11) (- 0 16)) (and (<= 0 |j#2_0@0|) (< |j#2_0@0| (_System.array2.Length1 $nw@2)))) (and (=> (= (ControlFlow 0 11) (- 0 15)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@2 (MultiIndexField (IndexField |i#2_0@0|) |j#2_0@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@2 (MultiIndexField (IndexField |i#2_0@0|) |j#2_0@0|))) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (not (= |m#0@@1| null)) (not true))) (=> (or (not (= |m#0@@1| null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (and (<= 0 |j#2_0@0|) (< |j#2_0@0| (_System.array2.Length0 |m#0@@1|)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (<= 0 |i#2_0@0|) (< |i#2_0@0| (_System.array2.Length1 |m#0@@1|)))) (=> (<= (LitInt 0) |i#2_1@0|) (=> (and (and (and (< (- 0 |$rhs#1@0|) (- 0 |j#2_1@0|)) (< (+ 3 |i#2_1@0|) (+ |$rhs#0@0| 3))) (>= |j#2_1@0| (LitInt 0))) (and (not (and (= |i#2_0@0| |i#2_1@0|) (= |j#2_0@0| |j#2_1@0|))) (= (ControlFlow 0 11) (- 0 10)))) (or (or (or (not (= $nw@2 $nw@2)) (not true)) (or (not (= (MultiIndexField (IndexField |i#2_0@0|) |j#2_0@0|) (MultiIndexField (IndexField |i#2_1@0|) |j#2_1@0|))) (not true))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |m#0@@1|) (MultiIndexField (IndexField |j#2_0@0|) |i#2_0@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |m#0@@1|) (MultiIndexField (IndexField |j#2_1@0|) |i#2_1@0|)))))))))))))))))))
(let ((anon28_Else_correct  (=> (and (not (and (< (- 0 |$rhs#1@0|) (- 0 |j#2_0@0|)) (< (+ 3 |i#2_0@0|) (+ |$rhs#0@0| 3)))) (= (ControlFlow 0 20) 11)) anon18_correct)))
(let ((anon28_Then_correct  (=> (and (and (< (- 0 |$rhs#1@0|) (- 0 |j#2_0@0|)) (< (+ 3 |i#2_0@0|) (+ |$rhs#0@0| 3))) (= (ControlFlow 0 19) 11)) anon18_correct)))
(let ((anon27_Else_correct  (=> (<= (- 0 |j#2_0@0|) (- 0 |$rhs#1@0|)) (and (=> (= (ControlFlow 0 22) 19) anon28_Then_correct) (=> (= (ControlFlow 0 22) 20) anon28_Else_correct)))))
(let ((anon27_Then_correct  (=> (< (- 0 |$rhs#1@0|) (- 0 |j#2_0@0|)) (and (=> (= (ControlFlow 0 21) 19) anon28_Then_correct) (=> (= (ControlFlow 0 21) 20) anon28_Else_correct)))))
(let ((anon26_Then_correct  (=> (<= (LitInt 0) |i#2_0@0|) (and (=> (= (ControlFlow 0 23) 21) anon27_Then_correct) (=> (= (ControlFlow 0 23) 22) anon27_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (or (not (= $nw@0 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0) alloc)))))) (=> (and (or (not (= $nw@0 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0) alloc))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (or (not (= $nw@1 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@1) alloc)))))) (=> (and (or (not (= $nw@1 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@1) alloc))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (or (not (= $nw@2 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@2) alloc)))))) (=> (and (or (not (= $nw@2 null)) (not true)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@2) alloc))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.__default.MatrixEqual#canCall| _module._default.Transpose$T $Heap@6 $nw@0 $nw@1) (or (_module.__default.MatrixEqual _module._default.Transpose$T $Heap@6 $nw@0 $nw@1) (|_System.Tuple2#Equal| (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (_System.array2.Length0 $nw@0))) ($Box intType (int_2_U (_System.array2.Length1 $nw@0)))) (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (_System.array2.Length0 $nw@1))) ($Box intType (int_2_U (_System.array2.Length1 $nw@1)))))))) (=> (=> (|_module.__default.MatrixEqual#canCall| _module._default.Transpose$T $Heap@6 $nw@0 $nw@1) (or (_module.__default.MatrixEqual _module._default.Transpose$T $Heap@6 $nw@0 $nw@1) (|_System.Tuple2#Equal| (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (_System.array2.Length0 $nw@0))) ($Box intType (int_2_U (_System.array2.Length1 $nw@0)))) (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (_System.array2.Length0 $nw@1))) ($Box intType (int_2_U (_System.array2.Length1 $nw@1))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.MatrixEqual#canCall| _module._default.Transpose$T $Heap@6 $nw@0 $nw@1) (or (_module.__default.MatrixEqual _module._default.Transpose$T $Heap@6 $nw@0 $nw@1) (forall ((|i#2| Int) (|j#2| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#2|) (< |i#2| (_System.array2.Length0 $nw@0))) (and (<= (LitInt 0) |j#2|) (< |j#2| (_System.array2.Length1 $nw@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (MultiIndexField (IndexField |i#2|) |j#2|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@1) (MultiIndexField (IndexField |i#2|) |j#2|))))
 :qid |MoForallCompilationdfy.89:10|
 :skolemid |597|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@1) (MultiIndexField (IndexField |i#2|) |j#2|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (MultiIndexField (IndexField |i#2|) |j#2|)))
))))) (=> (=> (|_module.__default.MatrixEqual#canCall| _module._default.Transpose$T $Heap@6 $nw@0 $nw@1) (or (_module.__default.MatrixEqual _module._default.Transpose$T $Heap@6 $nw@0 $nw@1) (forall ((|i#2@@0| Int) (|j#2@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#2@@0|) (< |i#2@@0| (_System.array2.Length0 $nw@0))) (and (<= (LitInt 0) |j#2@@0|) (< |j#2@@0| (_System.array2.Length1 $nw@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (MultiIndexField (IndexField |i#2@@0|) |j#2@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@1) (MultiIndexField (IndexField |i#2@@0|) |j#2@@0|))))
 :qid |MoForallCompilationdfy.89:10|
 :skolemid |597|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@1) (MultiIndexField (IndexField |i#2@@0|) |j#2@@0|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (MultiIndexField (IndexField |i#2@@0|) |j#2@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.MatrixEqual#canCall| _module._default.Transpose$T $Heap@6 $nw@0 $nw@2) (or (_module.__default.MatrixEqual _module._default.Transpose$T $Heap@6 $nw@0 $nw@2) (|_System.Tuple2#Equal| (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (_System.array2.Length0 $nw@0))) ($Box intType (int_2_U (_System.array2.Length1 $nw@0)))) (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (_System.array2.Length0 $nw@2))) ($Box intType (int_2_U (_System.array2.Length1 $nw@2)))))))) (=> (=> (|_module.__default.MatrixEqual#canCall| _module._default.Transpose$T $Heap@6 $nw@0 $nw@2) (or (_module.__default.MatrixEqual _module._default.Transpose$T $Heap@6 $nw@0 $nw@2) (|_System.Tuple2#Equal| (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (_System.array2.Length0 $nw@0))) ($Box intType (int_2_U (_System.array2.Length1 $nw@0)))) (|#_System._tuple#2._#Make2| ($Box intType (int_2_U (_System.array2.Length0 $nw@2))) ($Box intType (int_2_U (_System.array2.Length1 $nw@2))))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.MatrixEqual#canCall| _module._default.Transpose$T $Heap@6 $nw@0 $nw@2) (or (_module.__default.MatrixEqual _module._default.Transpose$T $Heap@6 $nw@0 $nw@2) (forall ((|i#3| Int) (|j#3| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#3|) (< |i#3| (_System.array2.Length0 $nw@0))) (and (<= (LitInt 0) |j#3|) (< |j#3| (_System.array2.Length1 $nw@0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (MultiIndexField (IndexField |i#3|) |j#3|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@2) (MultiIndexField (IndexField |i#3|) |j#3|))))
 :qid |MoForallCompilationdfy.89:10|
 :skolemid |599|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@2) (MultiIndexField (IndexField |i#3|) |j#3|)))
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (MultiIndexField (IndexField |i#3|) |j#3|)))
)))))))))))))))))))
(let ((anon26_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) ($HeapSucc $Heap@4 $Heap@5)) (and (and (forall (($o@@9 T@U) ($f@@1 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9) $f@@1)) (exists ((|i#2_2| Int) (|j#2_2| Int) ) (!  (and (and (and (<= (LitInt 0) |i#2_2|) (and (and (< (- 0 |$rhs#1@0|) (- 0 |j#2_2|)) (< (+ 3 |i#2_2|) (+ |$rhs#0@0| 3))) (>= |j#2_2| (LitInt 0)))) (= $o@@9 $nw@2)) (= $f@@1 (MultiIndexField (IndexField |i#2_2|) |j#2_2|)))
 :qid |MoForallCompilationdfy.80:10|
 :skolemid |608|
)))
 :qid |MoForallCompilationdfy.80:3|
 :skolemid |609|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9) $f@@1))
)) (forall ((|i#2_2@@0| Int) (|j#2_2@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#2_2@@0|) (and (and (< (- 0 |$rhs#1@0|) (- 0 |j#2_2@@0|)) (< (+ 3 |i#2_2@@0|) (+ |$rhs#0@0| 3))) (>= |j#2_2@@0| (LitInt 0)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@2) (MultiIndexField (IndexField |i#2_2@@0|) |j#2_2@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |m#0@@1|) (MultiIndexField (IndexField |j#2_2@@0|) |i#2_2@@0|))))
 :qid |MoForallCompilationdfy.80:10|
 :skolemid |610|
))) (and (= $Heap@6 $Heap@5) (= (ControlFlow 0 9) 2)))) GeneratedUnifiedExit_correct)))
(let ((anon24_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) ($HeapSucc $Heap@3 $Heap@4)) (and (forall (($o@@10 T@U) ($f@@2 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@10) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@10) $f@@2)) (exists ((|i#1_2| Int) (|j#1_2| Int) ) (!  (and (and (and (and (<= (LitInt 0) |i#1_2|) (<= (LitInt 0) |j#1_2|)) (and (< |i#1_2| |$rhs#0@0|) (< |j#1_2| |$rhs#1@0|))) (= $o@@10 $nw@1)) (= $f@@2 (MultiIndexField (IndexField |i#1_2|) |j#1_2|)))
 :qid |MoForallCompilationdfy.77:10|
 :skolemid |605|
)))
 :qid |MoForallCompilationdfy.77:3|
 :skolemid |606|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@10) $f@@2))
)) (forall ((|i#1_2@@0| Int) (|j#1_2@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1_2@@0|) (<= (LitInt 0) |j#1_2@@0|)) (and (< |i#1_2@@0| |$rhs#0@0|) (< |j#1_2@@0| |$rhs#1@0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@1) (MultiIndexField (IndexField |i#1_2@@0|) |j#1_2@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |m#0@@1|) (MultiIndexField (IndexField |j#1_2@@0|) |i#1_2@@0|))))
 :qid |MoForallCompilationdfy.77:10|
 :skolemid |607|
)))) (and (=> (= (ControlFlow 0 24) 23) anon26_Then_correct) (=> (= (ControlFlow 0 24) 9) anon26_Else_correct)))))
(let ((anon20_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) ($HeapSucc $Heap@2 $Heap@3)) (and (forall (($o@@11 T@U) ($f@@3 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@11) $f@@3)) (exists ((|i#0_2| Int) (|j#0_2| Int) ) (!  (and (and (and (and (<= (LitInt 0) |i#0_2|) (< |i#0_2| |$rhs#0@0|)) (and (<= (LitInt 0) |j#0_2|) (< |j#0_2| |$rhs#1@0|))) (= $o@@11 $nw@0)) (= $f@@3 (MultiIndexField (IndexField |i#0_2|) |j#0_2|)))
 :qid |MoForallCompilationdfy.74:10|
 :skolemid |602|
)))
 :qid |MoForallCompilationdfy.74:3|
 :skolemid |603|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11) $f@@3))
)) (forall ((|i#0_2@@0| Int) (|j#0_2@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0_2@@0|) (< |i#0_2@@0| |$rhs#0@0|)) (and (<= (LitInt 0) |j#0_2@@0|) (< |j#0_2@@0| |$rhs#1@0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (MultiIndexField (IndexField |i#0_2@@0|) |j#0_2@@0|)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |m#0@@1|) (MultiIndexField (IndexField |j#0_2@@0|) |i#0_2@@0|))))
 :qid |MoForallCompilationdfy.74:10|
 :skolemid |604|
)))) (and (=> (= (ControlFlow 0 37) 36) anon24_Then_correct) (=> (= (ControlFlow 0 37) 24) anon24_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 54) (- 0 62)) (or (not (= |m#0@@1| null)) (not true))) (=> (or (not (= |m#0@@1| null)) (not true)) (=> (= |$rhs#0@0| (_System.array2.Length1 |m#0@@1|)) (and (=> (= (ControlFlow 0 54) (- 0 61)) (or (not (= |m#0@@1| null)) (not true))) (=> (or (not (= |m#0@@1| null)) (not true)) (=> (= |$rhs#1@0| (_System.array2.Length0 |m#0@@1|)) (and (=> (= (ControlFlow 0 54) (- 0 60)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (and (=> (= (ControlFlow 0 54) (- 0 59)) (<= 0 |$rhs#1@0|)) (=> (<= 0 |$rhs#1@0|) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array2? _module._default.Transpose$T))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0) alloc)))) (= (_System.array2.Length0 $nw@0) |$rhs#0@0|))) (and (and (= (_System.array2.Length1 $nw@0) |$rhs#1@0|) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 54) (- 0 58)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (and (=> (= (ControlFlow 0 54) (- 0 57)) (<= 0 |$rhs#1@0|)) (=> (<= 0 |$rhs#1@0|) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array2? _module._default.Transpose$T))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc)))) (= (_System.array2.Length0 $nw@1) |$rhs#0@0|))) (and (and (= (_System.array2.Length1 $nw@1) |$rhs#1@0|) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (=> (= (ControlFlow 0 54) (- 0 56)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (and (=> (= (ControlFlow 0 54) (- 0 55)) (<= 0 |$rhs#1@0|)) (=> (<= 0 |$rhs#1@0|) (=> (and (and (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 (Tclass._System.array2? _module._default.Transpose$T))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2) alloc)))) (= (_System.array2.Length0 $nw@2) |$rhs#0@0|))) (and (and (= (_System.array2.Length1 $nw@2) |$rhs#1@0|) (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (=> (= (ControlFlow 0 54) 53) anon20_Then_correct) (=> (= (ControlFlow 0 54) 37) anon20_Else_correct))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and ($Is refType |m#0@@1| (Tclass._System.array2 _module._default.Transpose$T)) ($IsAlloc refType |m#0@@1| (Tclass._System.array2 _module._default.Transpose$T) $Heap@@0))) (=> (and (and (and ($Is refType |m0#0| (Tclass._System.array2 _module._default.Transpose$T)) ($IsAlloc refType |m0#0| (Tclass._System.array2 _module._default.Transpose$T) $Heap@@0)) (and ($Is refType |m1#0| (Tclass._System.array2 _module._default.Transpose$T)) ($IsAlloc refType |m1#0| (Tclass._System.array2 _module._default.Transpose$T) $Heap@@0))) (and (and ($Is refType |m2#0| (Tclass._System.array2 _module._default.Transpose$T)) ($IsAlloc refType |m2#0| (Tclass._System.array2 _module._default.Transpose$T) $Heap@@0)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 63) 54)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
