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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
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
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Has (T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.Has#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
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
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1))
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
(assert (forall ((_System.array$arg@@2 T@U) ($h@@2 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@2))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.Has$T T@U) ($Heap T@U) (|a#0| T@U) (|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.Has#canCall| _module._default.Has$T $Heap |a#0| |x#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is refType |a#0| (Tclass._System.array _module._default.Has$T))) ($IsBox |x#0@@0| _module._default.Has$T)))) (= (_module.__default.Has _module._default.Has$T $Heap |a#0| |x#0@@0|) (exists ((|i#0| Int) ) (!  (and (and (<= (LitInt 0) |i#0|) (< |i#0| (_System.array.Length |a#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0|)) |x#0@@0|))
 :qid |SmallestMissingNumberimperativedfy.26:10|
 :skolemid |539|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0|)))
))))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.__default.Has _module._default.Has$T $Heap |a#0| |x#0@@0|) ($IsGoodHeap $Heap))
))))
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
(assert (forall ((_System.array$arg@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
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
(assert (forall ((_System.array$arg@@9 T@U) ($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@3)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@4 T@U) ($o@@4 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@4)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
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
 :skolemid |616|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((_module._default.Has$T@@0 T@U) ($h0 T@U) ($h1 T@U) (|a#0@@0| T@U) (|x#0@@2| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|_module.__default.Has#canCall| _module._default.Has$T@@0 $h0 |a#0@@0| |x#0@@2|) (and ($Is refType |a#0@@0| (Tclass._System.array _module._default.Has$T@@0)) ($IsBox |x#0@@2| _module._default.Has$T@@0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (= $o@@6 |a#0@@0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@6) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@6) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |535|
)) (= (_module.__default.Has _module._default.Has$T@@0 $h0 |a#0@@0| |x#0@@2|) (_module.__default.Has _module._default.Has$T@@0 $h1 |a#0@@0| |x#0@@2|))))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.__default.Has _module._default.Has$T@@0 $h1 |a#0@@0| |x#0@@2|))
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
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |call2formal@s#0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |call2formal@s#0@0| () Int)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call2formal@s#0@@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |call2formal@s#0@0@@0| () Int)
(declare-fun $nw@2 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call2formal@s#0@@1| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |call2formal@s#0@0@@1| () Int)
(declare-fun |a#0@@1| () T@U)
(declare-fun |s#0| () Int)
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
 (=> (= (ControlFlow 0 0) 25) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 24)) (<= 0 (LitInt 4))) (=> (<= 0 (LitInt 4)) (and (=> (= (ControlFlow 0 2) (- 0 23)) (= (LitInt 4) 4)) (=> (= (LitInt 4) 4) (=> (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? Tclass._System.nat))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0) alloc)))) (= (_System.array.Length $nw@0) (LitInt 4)))) (and (=> (= (ControlFlow 0 2) (- 0 22)) ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0) (IndexField 0)))) (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 21)) ($Is intType (int_2_U (LitInt 6)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 6)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0) (IndexField 1)))) (LitInt 6)) (and (=> (= (ControlFlow 0 2) (- 0 20)) ($Is intType (int_2_U (LitInt 23)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 23)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0) (IndexField 2)))) (LitInt 23)) (and (=> (= (ControlFlow 0 2) (- 0 19)) ($Is intType (int_2_U (LitInt 9)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 9)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0) (IndexField 3)))) (LitInt 9)) (=> (and (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@0)) (and ($IsHeapAnchor $Heap@0) (<= (LitInt 0) |call2formal@s#0|))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (<= (LitInt 0) |call2formal@s#0@0|) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (_System.array.Length $nw@0))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#1|)))) |call2formal@s#0@0|)) (not true)))
 :qid |SmallestMissingNumberimperativedfy.30:18|
 :skolemid |546|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#1|))))
)))) (and (and (forall ((|x#1| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |x#1|)) (< (U_2_int |x#1|) |call2formal@s#0@0|)) (|_module.__default.Has#canCall| Tclass._System.nat $Heap@1 $nw@0 ($Box intType |x#1|)))
 :qid |SmallestMissingNumberimperativedfy.31:18|
 :skolemid |547|
 :pattern ( (_module.__default.Has Tclass._System.nat $Heap@1 $nw@0 ($Box intType |x#1|)))
)) (forall ((|x#1@@0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |x#1@@0|)) (< (U_2_int |x#1@@0|) |call2formal@s#0@0|)) (_module.__default.Has Tclass._System.nat $Heap@1 $nw@0 ($Box intType |x#1@@0|)))
 :qid |SmallestMissingNumberimperativedfy.31:18|
 :skolemid |548|
 :pattern ( (_module.__default.Has Tclass._System.nat $Heap@1 $nw@0 ($Box intType |x#1@@0|)))
))) (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7)))
 :qid |SmallestMissingNumberimperativedfy.29:8|
 :skolemid |549|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (= (LitInt 5) 5)) (=> (= (LitInt 5) 5) (=> (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? Tclass._System.nat))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) alloc)))) (= (_System.array.Length $nw@1) (LitInt 5)))) (and (=> (= (ControlFlow 0 2) (- 0 16)) ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) (IndexField 0)))) (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 15)) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) (IndexField 1)))) (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 14)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) (IndexField 2)))) (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 13)) ($Is intType (int_2_U (LitInt 5)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 5)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) (IndexField 3)))) (LitInt 5)) (and (=> (= (ControlFlow 0 2) (- 0 12)) ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) (IndexField 4)))) (LitInt 4)) (=> (and (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@1) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@2)) (and ($IsHeapAnchor $Heap@2) (<= (LitInt 0) |call2formal@s#0@@0|))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (<= (LitInt 0) |call2formal@s#0@0@@0|) (forall ((|i#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| (_System.array.Length $nw@1))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@1) (IndexField |i#1@@0|)))) |call2formal@s#0@0@@0|)) (not true)))
 :qid |SmallestMissingNumberimperativedfy.30:18|
 :skolemid |546|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@1) (IndexField |i#1@@0|))))
)))) (and (and (forall ((|x#1@@1| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |x#1@@1|)) (< (U_2_int |x#1@@1|) |call2formal@s#0@0@@0|)) (|_module.__default.Has#canCall| Tclass._System.nat $Heap@3 $nw@1 ($Box intType |x#1@@1|)))
 :qid |SmallestMissingNumberimperativedfy.31:18|
 :skolemid |547|
 :pattern ( (_module.__default.Has Tclass._System.nat $Heap@3 $nw@1 ($Box intType |x#1@@1|)))
)) (forall ((|x#1@@2| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |x#1@@2|)) (< (U_2_int |x#1@@2|) |call2formal@s#0@0@@0|)) (_module.__default.Has Tclass._System.nat $Heap@3 $nw@1 ($Box intType |x#1@@2|)))
 :qid |SmallestMissingNumberimperativedfy.31:18|
 :skolemid |548|
 :pattern ( (_module.__default.Has Tclass._System.nat $Heap@3 $nw@1 ($Box intType |x#1@@2|)))
))) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@8)))
 :qid |SmallestMissingNumberimperativedfy.29:8|
 :skolemid |549|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (<= 0 (LitInt 7))) (=> (<= 0 (LitInt 7)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (= (LitInt 7) 7)) (=> (= (LitInt 7) 7) (=> (and (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 (Tclass._System.array? Tclass._System.nat))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2) alloc)))) (= (_System.array.Length $nw@2) (LitInt 7)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2) (IndexField 0)))) (LitInt 2)) (and (=> (= (ControlFlow 0 2) (- 0 8)) ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2) (IndexField 1)))) (LitInt 4)) (and (=> (= (ControlFlow 0 2) (- 0 7)) ($Is intType (int_2_U (LitInt 6)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 6)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2) (IndexField 2)))) (LitInt 6)) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2) (IndexField 3)))) (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2) (IndexField 4)))) (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2) (IndexField 5)))) (LitInt 3)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is intType (int_2_U (LitInt 100)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 100)) Tclass._System.nat) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2) (IndexField 6)))) (LitInt 100)) (=> (and (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@2) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@4)) (and ($IsHeapAnchor $Heap@4) (<= (LitInt 0) |call2formal@s#0@@1|))) (=> (and (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (<= (LitInt 0) |call2formal@s#0@0@@1|)) (and (forall ((|i#1@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@1|) (< |i#1@@1| (_System.array.Length $nw@2))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@2) (IndexField |i#1@@1|)))) |call2formal@s#0@0@@1|)) (not true)))
 :qid |SmallestMissingNumberimperativedfy.30:18|
 :skolemid |546|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@2) (IndexField |i#1@@1|))))
)) (forall ((|x#1@@3| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |x#1@@3|)) (< (U_2_int |x#1@@3|) |call2formal@s#0@0@@1|)) (|_module.__default.Has#canCall| Tclass._System.nat $Heap@5 $nw@2 ($Box intType |x#1@@3|)))
 :qid |SmallestMissingNumberimperativedfy.31:18|
 :skolemid |547|
 :pattern ( (_module.__default.Has Tclass._System.nat $Heap@5 $nw@2 ($Box intType |x#1@@3|)))
)))) (and (and (forall ((|x#1@@4| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |x#1@@4|)) (< (U_2_int |x#1@@4|) |call2formal@s#0@0@@1|)) (_module.__default.Has Tclass._System.nat $Heap@5 $nw@2 ($Box intType |x#1@@4|)))
 :qid |SmallestMissingNumberimperativedfy.31:18|
 :skolemid |548|
 :pattern ( (_module.__default.Has Tclass._System.nat $Heap@5 $nw@2 ($Box intType |x#1@@4|)))
)) (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9)))
 :qid |SmallestMissingNumberimperativedfy.29:8|
 :skolemid |549|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= (ControlFlow 0 2) (- 0 1))))) (<= 0 (LitInt 0))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and ($Is refType |a#0@@1| (Tclass._System.array Tclass._System.nat)) ($IsAlloc refType |a#0@@1| (Tclass._System.array Tclass._System.nat) $Heap@@0)) true) (and (and (<= (LitInt 0) |s#0|) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 25) 2)))) anon0_correct))))
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
