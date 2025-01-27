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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.StrictlyIncreasing (T@U T@U Int Int Int Int) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.StrictlyIncreasing#canCall| (T@U T@U Int Int Int Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun IndexField (Int) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.__default.Max (T@U T@U T@U Int Int) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun _module.__default.RightmostMax (T@U T@U Int Int Int) Bool)
(declare-fun |_module.__default.RightmostMax#canCall| (T@U T@U Int Int Int) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.__default.Max#canCall| (T@U T@U Int Int) Bool)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._System.array? Tagclass._System.array tytagFamily$nat tytagFamily$array)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 3) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (|b#0| T@U) (|k#0| Int) (|l#0| Int) (|lo#0| Int) (|hi#0| Int) ) (!  (=> (or (|_module.__default.StrictlyIncreasing#canCall| $Heap |b#0| |k#0| |l#0| |lo#0| |hi#0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is refType |b#0| (Tclass._System.array TInt))) (and (and (<= (LitInt 0) |k#0|) (<= |k#0| |l#0|)) (<= |l#0| (_System.array.Length |b#0|)))))) (= (_module.__default.StrictlyIncreasing $Heap |b#0| |k#0| |l#0| |lo#0| |hi#0|)  (and (forall ((|i#0| Int) ) (!  (and (=> (and (<= |k#0| |i#0|) (< |i#0| |l#0|)) (<= |lo#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |b#0|) (IndexField |i#0|)))))) (=> (and (<= |k#0| |i#0|) (< |i#0| |l#0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |b#0|) (IndexField |i#0|)))) |hi#0|)))
 :qid |MinWindowMaxdfy.146:11|
 :skolemid |774|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |b#0|) (IndexField |i#0|))))
)) (forall ((|i#1| Int) (|j#0| Int) ) (!  (=> (and (and (<= |k#0| |i#1|) (< |i#1| |j#0|)) (< |j#0| |l#0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |b#0|) (IndexField |i#1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |b#0|) (IndexField |j#0|))))))
 :qid |MinWindowMaxdfy.147:11|
 :skolemid |775|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |b#0|) (IndexField |j#0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |b#0|) (IndexField |i#1|))))
)))))
 :qid |MinWindowMaxdfy.142:17|
 :skolemid |777|
 :pattern ( (_module.__default.StrictlyIncreasing $Heap |b#0| |k#0| |l#0| |lo#0| |hi#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (|b#0@@0| T@U) (|k#0@@0| Int) (|l#0@@0| Int) (|lo#0@@0| Int) (|hi#0@@0| Int) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|_module.__default.StrictlyIncreasing#canCall| $h0 |b#0@@0| |k#0@@0| |l#0@@0| |lo#0@@0| |hi#0@@0|) ($Is refType |b#0@@0| (Tclass._System.array TInt)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@0 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 |b#0@@0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@0) $f)))
 :qid |unknown.0:0|
 :skolemid |770|
)) (= (_module.__default.StrictlyIncreasing $h0 |b#0@@0| |k#0@@0| |l#0@@0| |lo#0@@0| |hi#0@@0|) (_module.__default.StrictlyIncreasing $h1 |b#0@@0| |k#0@@0| |l#0@@0| |lo#0@@0| |hi#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |771|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.__default.StrictlyIncreasing $h1 |b#0@@0| |k#0@@0| |l#0@@0| |lo#0@@0| |hi#0@@0|))
)))
(assert (forall (($ly T@U) ($Heap@@0 T@U) (|a#0| T@U) (|s#0| Int) (|len#0| Int) ) (! (= (_module.__default.Max ($LS $ly) $Heap@@0 |a#0| |s#0| |len#0|) (_module.__default.Max $ly $Heap@@0 |a#0| |s#0| |len#0|))
 :qid |MinWindowMaxdfy.96:16|
 :skolemid |721|
 :pattern ( (_module.__default.Max ($LS $ly) $Heap@@0 |a#0| |s#0| |len#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|a#0@@0| T@U) (|lo#0@@1| Int) (|x#0@@0| Int) (|hi#0@@1| Int) ) (!  (=> (or (|_module.__default.RightmostMax#canCall| $Heap@@1 |a#0@@0| |lo#0@@1| |x#0@@0| |hi#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is refType |a#0@@0| (Tclass._System.array TInt))) (and (and (and (<= (LitInt 0) |lo#0@@1|) (<= |lo#0@@1| |x#0@@0|)) (< |x#0@@0| |hi#0@@1|)) (<= |hi#0@@1| (_System.array.Length |a#0@@0|)))))) (= (_module.__default.RightmostMax $Heap@@1 |a#0@@0| |lo#0@@1| |x#0@@0| |hi#0@@1|)  (and (forall ((|i#0@@0| Int) ) (!  (=> (and (<= |lo#0@@1| |i#0@@0|) (< |i#0@@0| |x#0@@0|)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@0|) (IndexField |i#0@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@0|) (IndexField |x#0@@0|))))))
 :qid |MinWindowMaxdfy.127:11|
 :skolemid |750|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@0|) (IndexField |i#0@@0|))))
)) (forall ((|i#1@@0| Int) ) (!  (=> (and (< |x#0@@0| |i#1@@0|) (< |i#1@@0| |hi#0@@1|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@0|) (IndexField |i#1@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@0|) (IndexField |x#0@@0|))))))
 :qid |MinWindowMaxdfy.128:11|
 :skolemid |751|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |a#0@@0|) (IndexField |i#1@@0|))))
)))))
 :qid |MinWindowMaxdfy.123:17|
 :skolemid |753|
 :pattern ( (_module.__default.RightmostMax $Heap@@1 |a#0@@0| |lo#0@@1| |x#0@@0| |hi#0@@1|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array? _System.array$arg@@1) $h@@1))
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
(assert (forall ((_System.array$arg@@2 T@U) ($h@@2 T@U) ($o@@2 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@2)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) (IndexField $i0)) _System.array$arg@@2 $h@@2))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@1| Tclass._System.nat))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
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
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall (($ly@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (|a#0@@1| T@U) (|s#0@@0| Int) (|len#0@@0| Int) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (or (|_module.__default.Max#canCall| $h0@@0 |a#0@@1| |s#0@@0| |len#0@@0|) ($Is refType |a#0@@1| (Tclass._System.array TInt)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= $o@@4 |a#0@@1|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@4) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@4) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |723|
)) (= (_module.__default.Max $ly@@0 $h0@@0 |a#0@@1| |s#0@@0| |len#0@@0|) (_module.__default.Max $ly@@0 $h1@@0 |a#0@@1| |s#0@@0| |len#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.__default.Max $ly@@0 $h1@@0 |a#0@@1| |s#0@@0| |len#0@@0|))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@2 T@U) (|a#0@@2| T@U) (|s#0@@1| Int) (|len#0@@1| Int) ) (!  (=> (or (|_module.__default.Max#canCall| $Heap@@2 |a#0@@2| |s#0@@1| |len#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) ($Is refType |a#0@@2| (Tclass._System.array TInt))) (and (and (<= (LitInt 0) |s#0@@1|) (<= (LitInt 1) |len#0@@1|)) (<= (+ |s#0@@1| |len#0@@1|) (_System.array.Length |a#0@@2|)))))) (and (=> (or (not (= |len#0@@1| (LitInt 1))) (not true)) (|_module.__default.Max#canCall| $Heap@@2 |a#0@@2| |s#0@@1| (- |len#0@@1| 1))) (= (_module.__default.Max ($LS $ly@@1) $Heap@@2 |a#0@@2| |s#0@@1| |len#0@@1|) (ite (= |len#0@@1| (LitInt 1)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |a#0@@2|) (IndexField |s#0@@1|)))) (let ((|m#0| (_module.__default.Max $ly@@1 $Heap@@2 |a#0@@2| |s#0@@1| (- |len#0@@1| 1))))
(let ((|y#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 |a#0@@2|) (IndexField (- (+ |s#0@@1| |len#0@@1|) 1)))))))
(ite (< |y#0| |m#0|) |m#0| |y#0|)))))))
 :qid |MinWindowMaxdfy.96:16|
 :skolemid |727|
 :pattern ( (_module.__default.Max ($LS $ly@@1) $Heap@@2 |a#0@@2| |s#0@@1| |len#0@@1|) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@0))
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
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@3 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@5)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@5) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@5) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@4 T@U) ($o@@6 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@6)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
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
(assert (forall ((|l#0@@1| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1| |l#2| |l#3|) $o@@7 $f@@1))  (=> (and (or (not (= $o@@7 |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |791|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1| |l#2| |l#3|) $o@@7 $f@@1))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (|a#0@@3| T@U) (|lo#0@@2| Int) (|x#0@@2| Int) (|hi#0@@2| Int) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (or (|_module.__default.RightmostMax#canCall| $h0@@1 |a#0@@3| |lo#0@@2| |x#0@@2| |hi#0@@2|) ($Is refType |a#0@@3| (Tclass._System.array TInt)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@8 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (= $o@@8 |a#0@@3|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@8) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@8) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |746|
)) (= (_module.__default.RightmostMax $h0@@1 |a#0@@3| |lo#0@@2| |x#0@@2| |hi#0@@2|) (_module.__default.RightmostMax $h1@@1 |a#0@@3| |lo#0@@2| |x#0@@2| |hi#0@@2|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |747|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.__default.RightmostMax $h1@@1 |a#0@@3| |lo#0@@2| |x#0@@2| |hi#0@@2|))
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
(declare-fun |n#0@4| () Int)
(declare-fun |n#0@3| () Int)
(declare-fun |W#0| () Int)
(declare-fun |k#0@2| () Int)
(declare-fun |m#0@1| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun |a#0@@4| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun |m#0@2| () Int)
(declare-fun |start#0@2| () Int)
(declare-fun |start#0@1| () Int)
(declare-fun |$rhs#1_2_0@1| () Int)
(declare-fun |$rhs#1_2_1@1| () Int)
(declare-fun |lo##1_0@1| () Int)
(declare-fun |x##1_0@1| () Int)
(declare-fun $Heap@6 () T@U)
(declare-fun |hi##1_0@1| () Int)
(declare-fun $LZ () T@U)
(declare-fun |k#0@0| () Int)
(declare-fun |$rhs#1_1@1| () Int)
(declare-fun |k#0@1| () Int)
(declare-fun |l#0@4| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun $index0@3 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |b#0@@1| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |$rhs#2@0| () Int)
(declare-fun |n#0@0| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun |l#0@0| () Int)
(declare-fun |n#0@1| () Int)
(declare-fun |m#0@0| () Int)
(declare-fun |lo##0@0| () Int)
(declare-fun |x##0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |start#0@0| () Int)
(declare-fun |$decr_init$loop#10@0| () Int)
(declare-fun |$w$loop#1@0| () Bool)
(declare-fun |l#0@3| () Int)
(declare-fun |$decr$loop#10@1| () Int)
(declare-fun |$decr_init$loop#1_00@1| () Int)
(declare-fun |$decr_init$loop#1_01@1| () Int)
(declare-fun |$w$loop#1_0@1| () Bool)
(set-info :boogie-vc-id Impl$$_module.__default.MinimumWindowMax_split112)
(set-option :timeout 10000)
(set-option :rlimit 100000000)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon90_correct  (=> (= |n#0@4| (+ |n#0@3| 1)) (=> (and ($Is intType (int_2_U |W#0|) Tclass._System.nat) (= (ControlFlow 0 2) (- 0 1))) (<= (LitInt 0) |k#0@2|)))))
(let ((anon135_Else_correct  (=> (and (and (<= |m#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) (IndexField |k#0@2|))))))))) (= |m#0@2| |m#0@1|)) (and (= |start#0@2| |start#0@1|) (= (ControlFlow 0 4) 2))) anon90_correct)))
(let ((anon135_Then_correct  (=> (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) (IndexField |k#0@2|)))))))) |m#0@1|) (=> (and (and (or (not (= |a#0@@4| null)) (not true)) (or (not (= $nw@0 null)) (not true))) (and (<= 0 |k#0@2|) (< |k#0@2| (_System.array.Length $nw@0)))) (=> (and (and (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) (IndexField |k#0@2|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) (IndexField |k#0@2|)))) (_System.array.Length |a#0@@4|))) (= |$rhs#1_2_0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) (IndexField |k#0@2|)))))))))) (and (and (= |$rhs#1_2_1@1| (+ (- |n#0@3| |W#0|) 1)) (= |m#0@2| |$rhs#1_2_0@1|)) (and (= |start#0@2| |$rhs#1_2_1@1|) (= (ControlFlow 0 3) 2)))) anon90_correct)))))
(let ((anon87_correct  (=> (and (and (and (= |lo##1_0@1| (+ (- |n#0@3| |W#0|) 1)) (or (not (= $nw@0 null)) (not true))) (and (<= 0 |k#0@2|) (< |k#0@2| (_System.array.Length $nw@0)))) (and (and (= |x##1_0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (IndexField |k#0@2|))))) (= |hi##1_0@1| (+ |n#0@3| 1))) (and (<= (LitInt 0) |lo##1_0@1|) (<= |lo##1_0@1| |x##1_0@1|)))) (=> (and (and (and (and (< |x##1_0@1| |hi##1_0@1|) (<= |hi##1_0@1| (_System.array.Length |a#0@@4|))) (and (=> (|_module.__default.RightmostMax#canCall| $Heap@6 |a#0@@4| |lo##1_0@1| |x##1_0@1| |hi##1_0@1|) (or (_module.__default.RightmostMax $Heap@6 |a#0@@4| |lo##1_0@1| |x##1_0@1| |hi##1_0@1|) (forall ((|i#0@@1| Int) ) (!  (=> (and (<= |lo##1_0@1| |i#0@@1|) (< |i#0@@1| |x##1_0@1|)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@4|) (IndexField |i#0@@1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@4|) (IndexField |x##1_0@1|))))))
 :qid |MinWindowMaxdfy.127:11|
 :skolemid |760|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@4|) (IndexField |i#0@@1|))))
)))) (=> (|_module.__default.RightmostMax#canCall| $Heap@6 |a#0@@4| |lo##1_0@1| |x##1_0@1| |hi##1_0@1|) (or (_module.__default.RightmostMax $Heap@6 |a#0@@4| |lo##1_0@1| |x##1_0@1| |hi##1_0@1|) (forall ((|i#1@@1| Int) ) (!  (=> (and (< |x##1_0@1| |i#1@@1|) (< |i#1@@1| |hi##1_0@1|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@4|) (IndexField |i#1@@1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@4|) (IndexField |x##1_0@1|))))))
 :qid |MinWindowMaxdfy.128:11|
 :skolemid |761|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |a#0@@4|) (IndexField |i#1@@1|))))
)))))) (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (|_module.__default.Max#canCall| $Heap@7 |a#0@@4| |lo##1_0@1| (- |hi##1_0@1| |lo##1_0@1|)))) (and (and (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |a#0@@4|) (IndexField |x##1_0@1|)))) (_module.__default.Max ($LS ($LS $LZ)) $Heap@7 |a#0@@4| |lo##1_0@1| (- |hi##1_0@1| |lo##1_0@1|))) (= $Heap@6 $Heap@7)) (and (or (not (= |a#0@@4| null)) (not true)) (or (not (= $nw@0 null)) (not true)))) (and (and (<= 0 |k#0@2|) (< |k#0@2| (_System.array.Length $nw@0))) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) (IndexField |k#0@2|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@0) (IndexField |k#0@2|)))) (_System.array.Length |a#0@@4|)))))) (and (=> (= (ControlFlow 0 5) 3) anon135_Then_correct) (=> (= (ControlFlow 0 5) 4) anon135_Else_correct))))))
(let ((anon134_Else_correct  (=> (not (and (< |k#0@0| (- |$rhs#1_1@1| 1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (IndexField |k#0@0|)))) (- |n#0@3| |W#0|)))) (=> (and (= |k#0@2| |k#0@0|) (= (ControlFlow 0 7) 5)) anon87_correct))))
(let ((anon134_Then_correct  (=> (and (and (and (< |k#0@0| (- |$rhs#1_1@1| 1)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (IndexField |k#0@0|)))) (- |n#0@3| |W#0|))) (= |k#0@1| (+ |k#0@0| 1))) (and (= |k#0@2| |k#0@1|) (= (ControlFlow 0 6) 5))) anon87_correct)))
(let ((anon84_correct  (and (=> (= (ControlFlow 0 8) 6) anon134_Then_correct) (=> (= (ControlFlow 0 8) 7) anon134_Else_correct))))
(let ((anon133_Else_correct  (=> (and (<= (- |$rhs#1_1@1| 1) |k#0@0|) (= (ControlFlow 0 10) 8)) anon84_correct)))
(let ((anon133_Then_correct  (=> (and (< |k#0@0| (- |$rhs#1_1@1| 1)) (or (not (= $nw@0 null)) (not true))) (=> (and (and (<= 0 |k#0@0|) (< |k#0@0| (_System.array.Length $nw@0))) (= (ControlFlow 0 9) 8)) anon84_correct))))
(let ((anon79_correct  (=> (and (not (and (<= |k#0@0| (- |l#0@4| 1)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (- |l#0@4| 1))))))))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |n#0@3|))))))) (or (not (= $nw@0 null)) (not true))) (=> (and (and (and (<= 0 |l#0@4|) (< |l#0@4| (_System.array.Length $nw@0))) (= $index0@3 (IndexField |l#0@4|))) (and (and (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 $index0@3)) (= |$rhs#1_1@1| (+ |l#0@4| 1))) (and (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) $index0@3 ($Box intType (int_2_U |n#0@3|))))) ($IsGoodHeap $Heap@6)))) (and (=> (= (ControlFlow 0 11) 9) anon133_Then_correct) (=> (= (ControlFlow 0 11) 10) anon133_Else_correct))))))
(let ((anon131_Else_correct  (=> (and (< (- |l#0@4| 1) |k#0@0|) (= (ControlFlow 0 13) 11)) anon79_correct)))
(let ((anon131_Then_correct  (=> (<= |k#0@0| (- |l#0@4| 1)) (=> (and (and (or (not (= |a#0@@4| null)) (not true)) (or (not (= $nw@0 null)) (not true))) (and (<= 0 (- |l#0@4| 1)) (< (- |l#0@4| 1) (_System.array.Length $nw@0)))) (=> (and (and (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (- |l#0@4| 1)))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (- |l#0@4| 1))))) (_System.array.Length |a#0@@4|))) (or (not (= |a#0@@4| null)) (not true))) (and (and (<= 0 |n#0@3|) (< |n#0@3| (_System.array.Length |a#0@@4|))) (= (ControlFlow 0 12) 11))) anon79_correct)))))
(let ((anon0_correct  (=> (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (and ($Is refType |a#0@@4| (Tclass._System.array TInt)) ($IsAlloc refType |a#0@@4| (Tclass._System.array TInt) $Heap@@3))) (=> (and (and (and (and ($Is refType |b#0@@1| (Tclass._System.array TInt)) ($IsAlloc refType |b#0@@1| (Tclass._System.array TInt) $Heap@@3)) true) (and (= 3 $FunctionContextHeight) (<= (LitInt 1) |W#0|))) (and (and (<= |W#0| (_System.array.Length |a#0@@4|)) (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc false))) (and (or (not (= |a#0@@4| null)) (not true)) (<= 0 (_System.array.Length |a#0@@4|))))) (=> (and (and (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TInt))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $nw@0) alloc)))) (= (_System.array.Length $nw@0) (_System.array.Length |a#0@@4|)))) (and (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@3 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $nw@0) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@0)) (and ($IsHeapAnchor $Heap@0) (or (not (= $nw@0 null)) (not true))))) (and (and (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 0))))) (and (and (= |$rhs#0@0| (LitInt 0)) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField (LitInt 0)) ($Box intType (int_2_U |$rhs#0@0|)))))) (and ($IsGoodHeap $Heap@1) (= |$rhs#1@0| (LitInt 0)))))) (and (and (and (and (= |$rhs#2@0| (LitInt 1)) (= |n#0@0| (LitInt 1))) (and (= |$decr_init$loop#00@0| (- |W#0| |n#0@0|)) (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#1@0|)))) (and (and (=> |$w$loop#0@0| (< |$rhs#1@0| |$rhs#2@0|)) (=> |$w$loop#0@0| (<= |$rhs#2@0| |n#0@0|))) (and (=> |$w$loop#0@0| (<= |n#0@0| |W#0|)) (=> |$w$loop#0@0| (=> (|_module.__default.StrictlyIncreasing#canCall| $Heap@1 $nw@0 |$rhs#1@0| |$rhs#2@0| (LitInt 0) |n#0@0|) (or (_module.__default.StrictlyIncreasing $Heap@1 $nw@0 |$rhs#1@0| |$rhs#2@0| (LitInt 0) |n#0@0|) (forall ((|i#0@@2| Int) ) (!  (and (=> (and (<= |$rhs#1@0| |i#0@@2|) (< |i#0@@2| |$rhs#2@0|)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#0@@2|)))))) (=> (and (<= |$rhs#1@0| |i#0@@2|) (< |i#0@@2| |$rhs#2@0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#0@@2|)))) |n#0@0|)))
 :qid |MinWindowMaxdfy.146:11|
 :skolemid |667|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#0@@2|))))
)))))))) (and (and (and (=> |$w$loop#0@0| (=> (|_module.__default.StrictlyIncreasing#canCall| $Heap@1 $nw@0 |$rhs#1@0| |$rhs#2@0| (LitInt 0) |n#0@0|) (or (_module.__default.StrictlyIncreasing $Heap@1 $nw@0 |$rhs#1@0| |$rhs#2@0| (LitInt 0) |n#0@0|) (forall ((|i#1@@2| Int) (|j#0@@0| Int) ) (!  (=> (and (and (<= |$rhs#1@0| |i#1@@2|) (< |i#1@@2| |j#0@@0|)) (< |j#0@@0| |$rhs#2@0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#1@@2|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |j#0@@0|))))))
 :qid |MinWindowMaxdfy.147:11|
 :skolemid |668|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |j#0@@0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#1@@2|))))
))))) (=> |$w$loop#0@0| (=> (|_module.__default.RightmostMax#canCall| $Heap@1 |a#0@@4| (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@0|) (or (_module.__default.RightmostMax $Heap@1 |a#0@@4| (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@0|) (forall ((|i#2| Int) ) (!  (=> (and (<= (LitInt 0) |i#2|) (< |i#2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |$rhs#1@0|)))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |a#0@@4|) (IndexField |i#2|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |$rhs#1@0|))))))))))
 :qid |MinWindowMaxdfy.127:11|
 :skolemid |671|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |a#0@@4|) (IndexField |i#2|))))
)))))) (and (=> |$w$loop#0@0| (=> (|_module.__default.RightmostMax#canCall| $Heap@1 |a#0@@4| (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@0|) (or (_module.__default.RightmostMax $Heap@1 |a#0@@4| (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@0|) (forall ((|i#3| Int) ) (!  (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |$rhs#1@0|)))) |i#3|) (< |i#3| |n#0@0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |a#0@@4|) (IndexField |i#3|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |$rhs#1@0|))))))))))
 :qid |MinWindowMaxdfy.128:11|
 :skolemid |672|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |a#0@@4|) (IndexField |i#3|))))
))))) (=> |$w$loop#0@0| (forall ((|u#1| Int) (|_t#0#0| Int) ) (!  (=> (= |_t#0#0| (- |u#1| 1)) (=> (and (< |$rhs#1@0| |u#1|) (< |u#1| |$rhs#2@0|)) (_module.__default.RightmostMax $Heap@1 |a#0@@4| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |_t#0#0|)))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |u#1|)))) |n#0@0|)))
 :qid |MinWindowMaxdfy.42:22|
 :skolemid |679|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |u#1|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |_t#0#0|))))
))))) (and (and (=> |$w$loop#0@0| (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField (- |$rhs#2@0| 1))))) (- |n#0@0| 1))) (=> |$w$loop#0@0| (<= (- |$rhs#2@0| |$rhs#1@0|) |W#0|))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))))) (=> (and (and (and (and (and (and (and (and (and (and (not false) (= |$rhs#0@0| 0)) (= |$rhs#1@0| 0)) (<= 1 |l#0@0|)) (= |$rhs#1@0| 0)) (= |$rhs#2@0| 1)) (<= 1 |n#0@1|)) (<= 0 |$decr_init$loop#00@0|)) (and (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#1@0|)) (=> |$w$loop#0@0| (< |$rhs#1@0| |l#0@0|)))) (and (and (and (and (and (=> |$w$loop#0@0| (<= |l#0@0| |n#0@1|)) (=> |$w$loop#0@0| (<= |n#0@1| |W#0|))) (and (=> |$w$loop#0@0| (|_module.__default.StrictlyIncreasing#canCall| $Heap@2 $nw@0 |$rhs#1@0| |l#0@0| (LitInt 0) |n#0@1|)) (=> |$w$loop#0@0| (=> (|_module.__default.StrictlyIncreasing#canCall| $Heap@2 $nw@0 |$rhs#1@0| |l#0@0| (LitInt 0) |n#0@1|) (or (_module.__default.StrictlyIncreasing $Heap@2 $nw@0 |$rhs#1@0| |l#0@0| (LitInt 0) |n#0@1|) (forall ((|i#0@@3| Int) ) (!  (and (=> (and (<= |$rhs#1@0| |i#0@@3|) (< |i#0@@3| |l#0@0|)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |i#0@@3|)))))) (=> (and (<= |$rhs#1@0| |i#0@@3|) (< |i#0@@3| |l#0@0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |i#0@@3|)))) |n#0@1|)))
 :qid |MinWindowMaxdfy.146:11|
 :skolemid |667|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |i#0@@3|))))
))))))) (and (and (=> |$w$loop#0@0| (=> (|_module.__default.StrictlyIncreasing#canCall| $Heap@2 $nw@0 |$rhs#1@0| |l#0@0| (LitInt 0) |n#0@1|) (or (_module.__default.StrictlyIncreasing $Heap@2 $nw@0 |$rhs#1@0| |l#0@0| (LitInt 0) |n#0@1|) (forall ((|i#1@@3| Int) (|j#0@@1| Int) ) (!  (=> (and (and (<= |$rhs#1@0| |i#1@@3|) (< |i#1@@3| |j#0@@1|)) (< |j#0@@1| |l#0@0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |i#1@@3|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |j#0@@1|))))))
 :qid |MinWindowMaxdfy.147:11|
 :skolemid |668|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |j#0@@1|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |i#1@@3|))))
))))) (=> |$w$loop#0@0| (and (|_module.__default.StrictlyIncreasing#canCall| $Heap@2 $nw@0 |$rhs#1@0| |l#0@0| (LitInt 0) |n#0@1|) (and (_module.__default.StrictlyIncreasing $Heap@2 $nw@0 |$rhs#1@0| |l#0@0| (LitInt 0) |n#0@1|) (and (forall ((|i#0@@4| Int) ) (!  (and (=> (and (<= |$rhs#1@0| |i#0@@4|) (< |i#0@@4| |l#0@0|)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |i#0@@4|)))))) (=> (and (<= |$rhs#1@0| |i#0@@4|) (< |i#0@@4| |l#0@0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |i#0@@4|)))) |n#0@1|)))
 :qid |MinWindowMaxdfy.146:11|
 :skolemid |669|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |i#0@@4|))))
)) (forall ((|i#1@@4| Int) (|j#0@@2| Int) ) (!  (=> (and (and (<= |$rhs#1@0| |i#1@@4|) (< |i#1@@4| |j#0@@2|)) (< |j#0@@2| |l#0@0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |i#1@@4|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |j#0@@2|))))))
 :qid |MinWindowMaxdfy.147:11|
 :skolemid |670|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |j#0@@2|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |i#1@@4|))))
))))))) (and (=> |$w$loop#0@0| (|_module.__default.RightmostMax#canCall| $Heap@2 |a#0@@4| (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@1|)) (=> |$w$loop#0@0| (=> (|_module.__default.RightmostMax#canCall| $Heap@2 |a#0@@4| (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@1|) (or (_module.__default.RightmostMax $Heap@2 |a#0@@4| (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@1|) (forall ((|i#2@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#2@@0|) (< |i#2@@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |i#2@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|))))))))))
 :qid |MinWindowMaxdfy.127:11|
 :skolemid |671|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |i#2@@0|))))
)))))))) (and (and (and (=> |$w$loop#0@0| (=> (|_module.__default.RightmostMax#canCall| $Heap@2 |a#0@@4| (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@1|) (or (_module.__default.RightmostMax $Heap@2 |a#0@@4| (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@1|) (forall ((|i#3@@0| Int) ) (!  (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))) |i#3@@0|) (< |i#3@@0| |n#0@1|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |i#3@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|))))))))))
 :qid |MinWindowMaxdfy.128:11|
 :skolemid |672|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |i#3@@0|))))
))))) (=> |$w$loop#0@0| (and (|_module.__default.RightmostMax#canCall| $Heap@2 |a#0@@4| (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@1|) (and (_module.__default.RightmostMax $Heap@2 |a#0@@4| (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@1|) (and (forall ((|i#2@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#2@@1|) (< |i#2@@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |i#2@@1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|))))))))))
 :qid |MinWindowMaxdfy.127:11|
 :skolemid |673|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |i#2@@1|))))
)) (forall ((|i#3@@1| Int) ) (!  (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))) |i#3@@1|) (< |i#3@@1| |n#0@1|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |i#3@@1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|))))))))))
 :qid |MinWindowMaxdfy.128:11|
 :skolemid |674|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |i#3@@1|))))
))))))) (and (=> |$w$loop#0@0| (forall ((|u#1@@0| Int) (|_t#0#0@@0| Int) ) (!  (=> (= |_t#0#0@@0| (- |u#1@@0| 1)) (=> (< |$rhs#1@0| |u#1@@0|) (=> (< |u#1@@0| |l#0@0|) (|_module.__default.RightmostMax#canCall| $Heap@2 |a#0@@4| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |_t#0#0@@0|)))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |u#1@@0|)))) |n#0@1|))))
 :qid |MinWindowMaxdfy.42:22|
 :skolemid |677|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |u#1@@0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |_t#0#0@@0|))))
))) (=> |$w$loop#0@0| (forall ((|u#1@@1| Int) (|_t#0#0@@1| Int) ) (!  (=> (= |_t#0#0@@1| (- |u#1@@1| 1)) (=> (and (< |$rhs#1@0| |u#1@@1|) (< |u#1@@1| |l#0@0|)) (_module.__default.RightmostMax $Heap@2 |a#0@@4| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |_t#0#0@@1|)))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |u#1@@1|)))) |n#0@1|)))
 :qid |MinWindowMaxdfy.42:22|
 :skolemid |679|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |u#1@@1|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |_t#0#0@@1|))))
))))) (and (and (=> |$w$loop#0@0| (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField (- |l#0@0| 1))))) (- |n#0@1| 1))) (=> |$w$loop#0@0| (<= (- |l#0@0| |$rhs#1@0|) |W#0|))) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9)))
 :qid |MinWindowMaxdfy.38:3|
 :skolemid |680|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9))
)) ($HeapSucc $Heap@1 $Heap@2))))) (and (and (and (and (forall (($o@@10 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@10) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@10) $f@@3)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@10 $f@@3))))
 :qid |MinWindowMaxdfy.38:3|
 :skolemid |681|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10) $f@@3))
)) (<= (- |W#0| |n#0@1|) |$decr_init$loop#00@0|)) (and |$w$loop#0@0| (<= |W#0| |n#0@1|))) (and (and (or (not (= |a#0@@4| null)) (not true)) (or (not (= $nw@0 null)) (not true))) (and (<= 0 |$rhs#1@0|) (< |$rhs#1@0| (_System.array.Length $nw@0))))) (and (and (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|))))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))) (_System.array.Length |a#0@@4|))) (= |m#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))))))))) (and (= |lo##0@0| (LitInt 0)) (or (not (= $nw@0 null)) (not true))))))) (and (and (and (and (and (and (<= 0 |$rhs#1@0|) (< |$rhs#1@0| (_System.array.Length $nw@0))) (= |x##0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |$rhs#1@0|)))))) (and (<= (LitInt 0) |lo##0@0|) (<= |lo##0@0| |x##0@0|))) (and (and (< |x##0@0| |n#0@1|) (<= |n#0@1| (_System.array.Length |a#0@@4|))) (and (=> (|_module.__default.RightmostMax#canCall| $Heap@2 |a#0@@4| |lo##0@0| |x##0@0| |n#0@1|) (or (_module.__default.RightmostMax $Heap@2 |a#0@@4| |lo##0@0| |x##0@0| |n#0@1|) (forall ((|i#0@@5| Int) ) (!  (=> (and (<= |lo##0@0| |i#0@@5|) (< |i#0@@5| |x##0@0|)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |i#0@@5|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |x##0@0|))))))
 :qid |MinWindowMaxdfy.127:11|
 :skolemid |760|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |i#0@@5|))))
)))) (=> (|_module.__default.RightmostMax#canCall| $Heap@2 |a#0@@4| |lo##0@0| |x##0@0| |n#0@1|) (or (_module.__default.RightmostMax $Heap@2 |a#0@@4| |lo##0@0| |x##0@0| |n#0@1|) (forall ((|i#1@@5| Int) ) (!  (=> (and (< |x##0@0| |i#1@@5|) (< |i#1@@5| |n#0@1|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |i#1@@5|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |x##0@0|))))))
 :qid |MinWindowMaxdfy.128:11|
 :skolemid |761|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |a#0@@4|) (IndexField |i#1@@5|))))
))))))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (|_module.__default.Max#canCall| $Heap@3 |a#0@@4| |lo##0@0| (- |n#0@1| |lo##0@0|)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |a#0@@4|) (IndexField |x##0@0|)))) (_module.__default.Max ($LS ($LS $LZ)) $Heap@3 |a#0@@4| |lo##0@0| (- |n#0@1| |lo##0@0|))))) (and (and (= $Heap@2 $Heap@3) (= |start#0@0| (LitInt 0))) (and (= |$decr_init$loop#10@0| (- (_System.array.Length |a#0@@4|) |n#0@1|)) (=> |$w$loop#1@0| (<= (LitInt 0) |$rhs#1@0|)))))) (and (and (and (and (=> |$w$loop#1@0| (< |$rhs#1@0| |l#0@0|)) (=> |$w$loop#1@0| (<= |l#0@0| |n#0@1|))) (and (=> |$w$loop#1@0| (<= |n#0@1| (_System.array.Length |a#0@@4|))) (=> |$w$loop#1@0| (=> (|_module.__default.StrictlyIncreasing#canCall| $Heap@3 $nw@0 |$rhs#1@0| |l#0@0| (- |n#0@1| |W#0|) |n#0@1|) (or (_module.__default.StrictlyIncreasing $Heap@3 $nw@0 |$rhs#1@0| |l#0@0| (- |n#0@1| |W#0|) |n#0@1|) (forall ((|i#4| Int) ) (!  (and (=> (and (<= |$rhs#1@0| |i#4|) (< |i#4| |l#0@0|)) (<= (- |n#0@1| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |i#4|)))))) (=> (and (<= |$rhs#1@0| |i#4|) (< |i#4| |l#0@0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |i#4|)))) |n#0@1|)))
 :qid |MinWindowMaxdfy.146:11|
 :skolemid |690|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |i#4|))))
))))))) (and (and (=> |$w$loop#1@0| (=> (|_module.__default.StrictlyIncreasing#canCall| $Heap@3 $nw@0 |$rhs#1@0| |l#0@0| (- |n#0@1| |W#0|) |n#0@1|) (or (_module.__default.StrictlyIncreasing $Heap@3 $nw@0 |$rhs#1@0| |l#0@0| (- |n#0@1| |W#0|) |n#0@1|) (forall ((|i#5| Int) (|j#1| Int) ) (!  (=> (and (and (<= |$rhs#1@0| |i#5|) (< |i#5| |j#1|)) (< |j#1| |l#0@0|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |i#5|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |j#1|))))))
 :qid |MinWindowMaxdfy.147:11|
 :skolemid |691|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |j#1|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |i#5|))))
))))) (=> |$w$loop#1@0| (=> (|_module.__default.RightmostMax#canCall| $Heap@3 |a#0@@4| (- |n#0@1| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@1|) (or (_module.__default.RightmostMax $Heap@3 |a#0@@4| (- |n#0@1| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@1|) (forall ((|i#6| Int) ) (!  (=> (and (<= (- |n#0@1| |W#0|) |i#6|) (< |i#6| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |$rhs#1@0|)))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |a#0@@4|) (IndexField |i#6|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |$rhs#1@0|))))))))))
 :qid |MinWindowMaxdfy.127:11|
 :skolemid |694|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |a#0@@4|) (IndexField |i#6|))))
)))))) (and (=> |$w$loop#1@0| (=> (|_module.__default.RightmostMax#canCall| $Heap@3 |a#0@@4| (- |n#0@1| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@1|) (or (_module.__default.RightmostMax $Heap@3 |a#0@@4| (- |n#0@1| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |$rhs#1@0|)))) |n#0@1|) (forall ((|i#7| Int) ) (!  (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |$rhs#1@0|)))) |i#7|) (< |i#7| |n#0@1|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |a#0@@4|) (IndexField |i#7|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |$rhs#1@0|))))))))))
 :qid |MinWindowMaxdfy.128:11|
 :skolemid |695|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |a#0@@4|) (IndexField |i#7|))))
))))) (=> |$w$loop#1@0| (forall ((|u#3| Int) (|_t#0#1| Int) ) (!  (=> (= |_t#0#1| (- |u#3| 1)) (=> (and (< |$rhs#1@0| |u#3|) (< |u#3| |l#0@0|)) (_module.__default.RightmostMax $Heap@3 |a#0@@4| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |_t#0#1|)))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |u#3|)))) |n#0@1|)))
 :qid |MinWindowMaxdfy.65:22|
 :skolemid |702|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |u#3|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |_t#0#1|))))
)))))) (and (and (and (=> |$w$loop#1@0| (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField (- |l#0@0| 1))))) (- |n#0@1| 1))) (=> |$w$loop#1@0| (<= (LitInt 0) |start#0@0|))) (and (=> |$w$loop#1@0| (<= |start#0@0| (- (_System.array.Length |a#0@@4|) |W#0|))) (=> |$w$loop#1@0| (= |m#0@0| (_module.__default.Max ($LS ($LS $LZ)) $Heap@3 |a#0@@4| |start#0@0| |W#0|))))) (and (and (=> |$w$loop#1@0| (forall ((|s#3| Int) ) (!  (=> (and (<= (LitInt 0) |s#3|) (<= |s#3| (- |n#0@1| |W#0|))) (<= |m#0@0| (_module.__default.Max ($LS ($LS $LZ)) $Heap@3 |a#0@@4| |s#3| |W#0|)))
 :qid |MinWindowMaxdfy.70:22|
 :skolemid |706|
 :pattern ( (_module.__default.Max ($LS ($LS $LZ)) $Heap@3 |a#0@@4| |s#3| |W#0|))
))) (=> |$w$loop#1@0| (<= (- |l#0@0| |$rhs#1@0|) |W#0|))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5))))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (not false) (= |$rhs#0@0| 0)) (<= 0 |k#0@0|)) (<= 1 |l#0@3|)) (= |$rhs#1@0| 0)) (= |$rhs#2@0| 1)) (<= 1 |n#0@3|)) (<= 0 |$decr_init$loop#00@0|)) |$w$loop#0@0|) (= |lo##0@0| 0)) (<= 1 |n#0@1|)) (and (and (=> |$w$loop#1@0| (<= (LitInt 0) |k#0@0|)) (=> |$w$loop#1@0| (< |k#0@0| |l#0@3|))) (and (=> |$w$loop#1@0| (<= |l#0@3| |n#0@3|)) (=> |$w$loop#1@0| (<= |n#0@3| (_System.array.Length |a#0@@4|)))))) (and (and (and (and (and (=> |$w$loop#1@0| (|_module.__default.StrictlyIncreasing#canCall| $Heap@5 $nw@0 |k#0@0| |l#0@3| (- |n#0@3| |W#0|) |n#0@3|)) (=> |$w$loop#1@0| (=> (|_module.__default.StrictlyIncreasing#canCall| $Heap@5 $nw@0 |k#0@0| |l#0@3| (- |n#0@3| |W#0|) |n#0@3|) (or (_module.__default.StrictlyIncreasing $Heap@5 $nw@0 |k#0@0| |l#0@3| (- |n#0@3| |W#0|) |n#0@3|) (forall ((|i#4@@0| Int) ) (!  (and (=> (and (<= |k#0@0| |i#4@@0|) (< |i#4@@0| |l#0@3|)) (<= (- |n#0@3| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#4@@0|)))))) (=> (and (<= |k#0@0| |i#4@@0|) (< |i#4@@0| |l#0@3|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#4@@0|)))) |n#0@3|)))
 :qid |MinWindowMaxdfy.146:11|
 :skolemid |690|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#4@@0|))))
)))))) (and (=> |$w$loop#1@0| (=> (|_module.__default.StrictlyIncreasing#canCall| $Heap@5 $nw@0 |k#0@0| |l#0@3| (- |n#0@3| |W#0|) |n#0@3|) (or (_module.__default.StrictlyIncreasing $Heap@5 $nw@0 |k#0@0| |l#0@3| (- |n#0@3| |W#0|) |n#0@3|) (forall ((|i#5@@0| Int) (|j#1@@0| Int) ) (!  (=> (and (and (<= |k#0@0| |i#5@@0|) (< |i#5@@0| |j#1@@0|)) (< |j#1@@0| |l#0@3|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#5@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |j#1@@0|))))))
 :qid |MinWindowMaxdfy.147:11|
 :skolemid |691|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |j#1@@0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#5@@0|))))
))))) (=> |$w$loop#1@0| (and (|_module.__default.StrictlyIncreasing#canCall| $Heap@5 $nw@0 |k#0@0| |l#0@3| (- |n#0@3| |W#0|) |n#0@3|) (and (_module.__default.StrictlyIncreasing $Heap@5 $nw@0 |k#0@0| |l#0@3| (- |n#0@3| |W#0|) |n#0@3|) (and (forall ((|i#4@@1| Int) ) (!  (and (=> (and (<= |k#0@0| |i#4@@1|) (< |i#4@@1| |l#0@3|)) (<= (- |n#0@3| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#4@@1|)))))) (=> (and (<= |k#0@0| |i#4@@1|) (< |i#4@@1| |l#0@3|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#4@@1|)))) |n#0@3|)))
 :qid |MinWindowMaxdfy.146:11|
 :skolemid |692|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#4@@1|))))
)) (forall ((|i#5@@1| Int) (|j#1@@1| Int) ) (!  (=> (and (and (<= |k#0@0| |i#5@@1|) (< |i#5@@1| |j#1@@1|)) (< |j#1@@1| |l#0@3|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#5@@1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |j#1@@1|))))))
 :qid |MinWindowMaxdfy.147:11|
 :skolemid |693|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |j#1@@1|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |i#5@@1|))))
)))))))) (and (and (=> |$w$loop#1@0| (|_module.__default.RightmostMax#canCall| $Heap@5 |a#0@@4| (- |n#0@3| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|)))) |n#0@3|)) (=> |$w$loop#1@0| (=> (|_module.__default.RightmostMax#canCall| $Heap@5 |a#0@@4| (- |n#0@3| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|)))) |n#0@3|) (or (_module.__default.RightmostMax $Heap@5 |a#0@@4| (- |n#0@3| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|)))) |n#0@3|) (forall ((|i#6@@0| Int) ) (!  (=> (and (<= (- |n#0@3| |W#0|) |i#6@@0|) (< |i#6@@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|)))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |i#6@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|))))))))))
 :qid |MinWindowMaxdfy.127:11|
 :skolemid |694|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |i#6@@0|))))
)))))) (and (=> |$w$loop#1@0| (=> (|_module.__default.RightmostMax#canCall| $Heap@5 |a#0@@4| (- |n#0@3| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|)))) |n#0@3|) (or (_module.__default.RightmostMax $Heap@5 |a#0@@4| (- |n#0@3| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|)))) |n#0@3|) (forall ((|i#7@@0| Int) ) (!  (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|)))) |i#7@@0|) (< |i#7@@0| |n#0@3|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |i#7@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|))))))))))
 :qid |MinWindowMaxdfy.128:11|
 :skolemid |695|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |i#7@@0|))))
))))) (=> |$w$loop#1@0| (and (|_module.__default.RightmostMax#canCall| $Heap@5 |a#0@@4| (- |n#0@3| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|)))) |n#0@3|) (and (_module.__default.RightmostMax $Heap@5 |a#0@@4| (- |n#0@3| |W#0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|)))) |n#0@3|) (and (forall ((|i#6@@1| Int) ) (!  (=> (and (<= (- |n#0@3| |W#0|) |i#6@@1|) (< |i#6@@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|)))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |i#6@@1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|))))))))))
 :qid |MinWindowMaxdfy.127:11|
 :skolemid |696|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |i#6@@1|))))
)) (forall ((|i#7@@1| Int) ) (!  (=> (and (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|)))) |i#7@@1|) (< |i#7@@1| |n#0@3|)) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |i#7@@1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |k#0@0|))))))))))
 :qid |MinWindowMaxdfy.128:11|
 :skolemid |697|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |i#7@@1|))))
))))))))) (and (and (and (=> |$w$loop#1@0| (forall ((|u#3@@0| Int) (|_t#0#1@@0| Int) ) (!  (=> (= |_t#0#1@@0| (- |u#3@@0| 1)) (=> (< |k#0@0| |u#3@@0|) (=> (< |u#3@@0| |l#0@3|) (|_module.__default.RightmostMax#canCall| $Heap@5 |a#0@@4| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |_t#0#1@@0|)))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |u#3@@0|)))) |n#0@3|))))
 :qid |MinWindowMaxdfy.65:22|
 :skolemid |700|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |u#3@@0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |_t#0#1@@0|))))
))) (=> |$w$loop#1@0| (forall ((|u#3@@1| Int) (|_t#0#1@@1| Int) ) (!  (=> (= |_t#0#1@@1| (- |u#3@@1| 1)) (=> (and (< |k#0@0| |u#3@@1|) (< |u#3@@1| |l#0@3|)) (_module.__default.RightmostMax $Heap@5 |a#0@@4| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |_t#0#1@@1|)))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |u#3@@1|)))) |n#0@3|)))
 :qid |MinWindowMaxdfy.65:22|
 :skolemid |702|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |u#3@@1|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField |_t#0#1@@1|))))
)))) (and (=> |$w$loop#1@0| (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (- |l#0@3| 1))))) (- |n#0@3| 1))) (=> |$w$loop#1@0| (<= (LitInt 0) |start#0@1|)))) (and (and (=> |$w$loop#1@0| (<= |start#0@1| (- (_System.array.Length |a#0@@4|) |W#0|))) (=> |$w$loop#1@0| (|_module.__default.Max#canCall| $Heap@5 |a#0@@4| |start#0@1| |W#0|))) (and (=> |$w$loop#1@0| (= |m#0@1| (_module.__default.Max ($LS ($LS $LZ)) $Heap@5 |a#0@@4| |start#0@1| |W#0|))) (=> |$w$loop#1@0| (forall ((|s#3@@0| Int) ) (!  (=> (and (<= (LitInt 0) |s#3@@0|) (<= |s#3@@0| (- |n#0@3| |W#0|))) (|_module.__default.Max#canCall| $Heap@5 |a#0@@4| |s#3@@0| |W#0|))
 :qid |MinWindowMaxdfy.70:22|
 :skolemid |705|
 :pattern ( (_module.__default.Max ($LS $LZ) $Heap@5 |a#0@@4| |s#3@@0| |W#0|))
))))))) (and (and (and (and (=> |$w$loop#1@0| (forall ((|s#3@@1| Int) ) (!  (=> (and (<= (LitInt 0) |s#3@@1|) (<= |s#3@@1| (- |n#0@3| |W#0|))) (<= |m#0@1| (_module.__default.Max ($LS ($LS $LZ)) $Heap@5 |a#0@@4| |s#3@@1| |W#0|)))
 :qid |MinWindowMaxdfy.70:22|
 :skolemid |706|
 :pattern ( (_module.__default.Max ($LS ($LS $LZ)) $Heap@5 |a#0@@4| |s#3@@1| |W#0|))
))) (=> |$w$loop#1@0| (forall ((|s#3@@2| Int) ) (!  (=> (and (<= (LitInt 0) |s#3@@2|) (<= |s#3@@2| (- |n#0@3| |W#0|))) (<= |m#0@1| (_module.__default.Max ($LS $LZ) $Heap@5 |a#0@@4| |s#3@@2| |W#0|)))
 :qid |MinWindowMaxdfy.70:22|
 :skolemid |707|
 :pattern ( (_module.__default.Max ($LS $LZ) $Heap@5 |a#0@@4| |s#3@@2| |W#0|))
)))) (and (=> |$w$loop#1@0| (<= (- |l#0@3| |k#0@0|) |W#0|)) (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11)))
 :qid |MinWindowMaxdfy.59:3|
 :skolemid |708|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@11))
)))) (and (and ($HeapSucc $Heap@3 $Heap@5) (forall (($o@@12 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@12) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@12) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@12) $f@@4)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@12 $f@@4))))
 :qid |MinWindowMaxdfy.59:3|
 :skolemid |709|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@12) $f@@4))
))) (and (<= (- (_System.array.Length |a#0@@4|) |n#0@3|) |$decr_init$loop#10@0|) |$w$loop#1@0|))) (and (and (and (or (not (= |a#0@@4| null)) (not true)) (< |n#0@3| (_System.array.Length |a#0@@4|))) (and (= |$decr$loop#10@1| (- (_System.array.Length |a#0@@4|) |n#0@3|)) (= |$decr_init$loop#1_00@1| (- (- |l#0@3| 1) |k#0@0|)))) (and (and (= |$decr_init$loop#1_01@1| (ite (<= |k#0@0| (- |l#0@3| 1)) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |n#0@3|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (- |l#0@3| 1)))))))))) (- 0 1))) (=> |$w$loop#1_0@1| (<= |k#0@0| |l#0@3|))) (and (=> |$w$loop#1_0@1| (<= |l#0@3| |n#0@3|)) (=> |$w$loop#1_0@1| (forall ((|i#1_1| Int) ) (!  (=> (and (<= (ite (< |k#0@0| |l#0@3|) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (- |l#0@3| 1))))) 1) (- |n#0@3| |W#0|)) |i#1_1|) (< |i#1_1| |n#0@3|)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |i#1_1|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |n#0@3|))))))
 :qid |MinWindowMaxdfy.76:24|
 :skolemid |712|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |i#1_1|))))
))))))))) (and (and (and (and (and (and (and (and (and (and (and (and (not false) (= |$rhs#0@0| 0)) (<= 0 |k#0@0|)) (= |$rhs#1@0| 0)) (= |$rhs#2@0| 1)) (<= 1 |n#0@3|)) (<= 0 |$decr_init$loop#00@0|)) |$w$loop#0@0|) (= |lo##0@0| 0)) (<= 1 |n#0@1|)) |$w$loop#1@0|) (and (=> |$w$loop#1_0@1| (<= |k#0@0| |l#0@4|)) (=> |$w$loop#1_0@1| (<= |l#0@4| |n#0@3|)))) (and (and (and (=> |$w$loop#1_0@1| (forall ((|i#1_1@@0| Int) ) (!  (=> (and (<= (ite (< |k#0@0| |l#0@4|) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (- |l#0@4| 1))))) 1) (- |n#0@3| |W#0|)) |i#1_1@@0|) (< |i#1_1@@0| |n#0@3|)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |i#1_1@@0|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |n#0@3|))))))
 :qid |MinWindowMaxdfy.76:24|
 :skolemid |712|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |i#1_1@@0|))))
))) (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@13)))
 :qid |MinWindowMaxdfy.74:5|
 :skolemid |713|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@13))
))) (and ($HeapSucc $Heap@5 $Heap@5) (forall (($o@@14 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@14) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@14) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@14) $f@@5)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@14 $f@@5))))
 :qid |MinWindowMaxdfy.74:5|
 :skolemid |714|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@14) $f@@5))
)))) (and (and (<= (- (- |l#0@4| 1) |k#0@0|) |$decr_init$loop#1_00@1|) (=> (= (- (- |l#0@4| 1) |k#0@0|) |$decr_init$loop#1_00@1|) (<= (ite (<= |k#0@0| (- |l#0@4| 1)) (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField |n#0@3|)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 |a#0@@4|) (IndexField (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) (IndexField (- |l#0@4| 1)))))))))) (- 0 1)) |$decr_init$loop#1_01@1|))) |$w$loop#1_0@1|)))) (and (=> (= (ControlFlow 0 14) 12) anon131_Then_correct) (=> (= (ControlFlow 0 14) 13) anon131_Else_correct)))))))))
anon0_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
