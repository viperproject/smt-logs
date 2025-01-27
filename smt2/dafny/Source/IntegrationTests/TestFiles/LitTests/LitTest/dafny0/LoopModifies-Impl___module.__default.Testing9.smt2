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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
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
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#21| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun |lambda#15| (T@U T@U T@U T@U T@U) T@U)
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
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
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
(assert (forall ((_System.array$arg@@2 T@U) ($h@@1 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@1))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#21| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (or (or (= $o@@2 |l#3|) (= $o@@2 |l#4|)) (= $o@@2 |l#5|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |595|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#21| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) $o@@2 $f))
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| T@U) ($o@@3 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@3 $f@@0))  (=> (and (or (not (= $o@@3 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@3) |l#2@@0|)))) (= $o@@3 |l#3@@0|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |593|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@3 $f@@0))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
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
(assert (forall ((_System.array$arg@@9 T@U) ($h@@2 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@5) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@5)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@5) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@5) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@3 T@U) ($o@@6 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@6)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
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
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@1| T@U) (|l#4@@0| T@U) ($o@@7 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#15| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@0|) $o@@7 $f@@1))  (=> (and (or (not (= $o@@7 |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@7) |l#2@@1|)))) (or (= $o@@7 |l#3@@1|) (= $o@@7 |l#4@@0|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |594|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#15| |l#0@@1| |l#1@@1| |l#2@@1| |l#3@@1| |l#4@@0|) $o@@7 $f@@1))
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
(declare-fun |i#0@1| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |j#0_0@2| () Int)
(declare-fun |$w$loop#0_0@1| () Bool)
(declare-fun |$decr$loop#0_00@2| () Int)
(declare-fun |a#0| () T@U)
(declare-fun |$Frame$loop#0_0@1| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |j#0_0@3| () Int)
(declare-fun |b#0| () T@U)
(declare-fun |i#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |$decr_init$loop#0_00@1| () Int)
(declare-fun $Heap () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |c#0@@1| () T@U)
(declare-fun |j#0_0@1| () Int)
(declare-fun |$Frame$loop#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Testing9)
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
 (=> (= (ControlFlow 0 0) 51) (let ((anon4_correct true))
(let ((anon19_Else_correct  (=> (and (< |i#0@1| (LitInt 0)) (= (ControlFlow 0 40) 38)) anon4_correct)))
(let ((anon19_Then_correct  (=> (and (<= (LitInt 0) |i#0@1|) (= (ControlFlow 0 39) 38)) anon4_correct)))
(let ((anon18_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 41) 39) anon19_Then_correct) (=> (= (ControlFlow 0 41) 40) anon19_Else_correct)))))
(let ((anon11_correct true))
(let ((anon23_Else_correct  (=> (and (< |j#0_0@2| (LitInt 0)) (= (ControlFlow 0 26) 24)) anon11_correct)))
(let ((anon23_Then_correct  (=> (and (<= (LitInt 0) |j#0_0@2|) (= (ControlFlow 0 25) 24)) anon11_correct)))
(let ((anon22_Then_correct  (=> (not |$w$loop#0_0@1|) (and (=> (= (ControlFlow 0 27) 25) anon23_Then_correct) (=> (= (ControlFlow 0 27) 26) anon23_Else_correct)))))
(let ((anon24_Else_correct  (=> (and (< |j#0_0@2| 10) (= |$decr$loop#0_00@2| (- 10 |j#0_0@2|))) (and (=> (= (ControlFlow 0 16) (- 0 22)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 21)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length |a#0|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 16) (- 0 20)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0_0@1| |a#0| (IndexField (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0_0@1| |a#0| (IndexField (LitInt 0)))) (=> (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 |a#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |a#0|) (IndexField (LitInt 0)) ($Box intType (int_2_U |j#0_0@2|))))) (=> (and ($IsGoodHeap $Heap@5) (= |j#0_0@3| (+ |j#0_0@2| 1))) (and (=> (= (ControlFlow 0 16) (- 0 19)) (or (<= 0 |$decr$loop#0_00@2|) (= (- 10 |j#0_0@3|) |$decr$loop#0_00@2|))) (=> (or (<= 0 |$decr$loop#0_00@2|) (= (- 10 |j#0_0@3|) |$decr$loop#0_00@2|)) (and (=> (= (ControlFlow 0 16) (- 0 18)) (< (- 10 |j#0_0@3|) |$decr$loop#0_00@2|)) (=> (< (- 10 |j#0_0@3|) |$decr$loop#0_00@2|) (and (=> (= (ControlFlow 0 16) (- 0 17)) (=> |$w$loop#0_0@1| (<= (LitInt 0) |j#0_0@3|))) (=> (=> |$w$loop#0_0@1| (<= (LitInt 0) |j#0_0@3|)) (=> (= (ControlFlow 0 16) (- 0 15)) (=> |$w$loop#0_0@1| (<= |j#0_0@3| (LitInt 10)))))))))))))))))))))
(let ((anon24_Then_correct  (=> (<= 10 |j#0_0@2|) (and (=> (= (ControlFlow 0 8) (- 0 14)) (or (not (= |b#0| null)) (not true))) (=> (or (not (= |b#0| null)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 13)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length |b#0|)))) (and (=> (= (ControlFlow 0 8) (- 0 12)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |b#0|) (IndexField (LitInt 0))))) |i#0@1|)) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |b#0|) (IndexField (LitInt 0))))) |i#0@1|) (=> (= |i#0@2| (+ |i#0@1| 1)) (and (=> (= (ControlFlow 0 8) (- 0 11)) (or (<= 0 |$decr$loop#00@1|) (= (- 10 |i#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- 10 |i#0@2|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (< (- 10 |i#0@2|) |$decr$loop#00@1|)) (=> (< (- 10 |i#0@2|) |$decr$loop#00@1|) (and (=> (= (ControlFlow 0 8) (- 0 9)) (=> |$w$loop#0@0| (<= (LitInt 0) |i#0@2|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |i#0@2|)) (=> (= (ControlFlow 0 8) (- 0 7)) (=> |$w$loop#0@0| (<= |i#0@2| (LitInt 10)))))))))))))))))))
(let ((anon22_Else_correct  (=> |$w$loop#0_0@1| (and (=> (= (ControlFlow 0 23) 8) anon24_Then_correct) (=> (= (ControlFlow 0 23) 16) anon24_Else_correct)))))
(let ((anon21_LoopBody_correct  (and (=> (= (ControlFlow 0 28) 27) anon22_Then_correct) (=> (= (ControlFlow 0 28) 23) anon22_Else_correct))))
(let ((anon21_LoopDone_correct true))
(let ((anon21_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (=> (and (and (and (and (and (and (and (and (and (and (not false) (and (<= 0 |i#0@1|) (< |i#0@1| 10))) (= |$rhs#0@0| 4)) (= |$decr_init$loop#00@0| 10)) |$w$loop#0@0|) (and (<= 1 |$decr$loop#00@1|) (< |$decr$loop#00@1| 11))) (and (<= 0 |j#0_0@2|) (< |j#0_0@2| 11))) (and (<= 0 |i#0@1|) (< |i#0@1| 10))) (= |$decr_init$loop#0_00@1| 10)) (and (=> |$w$loop#0_0@1| (<= (LitInt 0) |j#0_0@2|)) (=> |$w$loop#0_0@1| (<= |j#0_0@2| (LitInt 10))))) (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8)) (or (or (= $o@@8 |a#0|) (= $o@@8 |b#0|)) (= $o@@8 |c#0@@1|))))
 :qid |LoopModifiesdfy.172:7|
 :skolemid |538|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8))
)) ($HeapSucc $Heap@3 $Heap@4)) (and (forall (($o@@9 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9) $f@@2)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0_0@1| $o@@9 $f@@2))))
 :qid |LoopModifiesdfy.172:7|
 :skolemid |539|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9) $f@@2))
)) (<= (- 10 |j#0_0@2|) |$decr_init$loop#0_00@1|)))) (and (=> (= (ControlFlow 0 29) 6) anon21_LoopDone_correct) (=> (= (ControlFlow 0 29) 28) anon21_LoopBody_correct))))))
(let ((anon20_Else_correct  (=> (< |i#0@1| 10) (=> (and (= |$decr$loop#00@1| (- 10 |i#0@1|)) (= |j#0_0@1| (LitInt 0))) (and (=> (= (ControlFlow 0 30) (- 0 36)) (or (not (= |b#0| null)) (not true))) (=> (or (not (= |b#0| null)) (not true)) (and (=> (= (ControlFlow 0 30) (- 0 35)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length |b#0|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length |b#0|))) (and (=> (= (ControlFlow 0 30) (- 0 34)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| |b#0| (IndexField (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| |b#0| (IndexField (LitInt 0)))) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 |b#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |b#0|) (IndexField (LitInt 0)) ($Box intType (int_2_U |i#0@1|))))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 30) (- 0 33)) (forall (($o@@10 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@10) alloc)))) (= $o@@10 |a#0|)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@10 $f@@3)))
 :qid |LoopModifiesdfy.172:7|
 :skolemid |537|
))) (=> (forall (($o@@11 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11) alloc)))) (= $o@@11 |a#0|)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@11 $f@@4)))
 :qid |LoopModifiesdfy.172:7|
 :skolemid |537|
)) (=> (and (= |$Frame$loop#0_0@1| (|lambda#4| null $Heap@3 alloc |a#0|)) (= |$decr_init$loop#0_00@1| (- 10 |j#0_0@1|))) (and (=> (= (ControlFlow 0 30) (- 0 32)) (=> |$w$loop#0_0@1| (<= (LitInt 0) |j#0_0@1|))) (=> (=> |$w$loop#0_0@1| (<= (LitInt 0) |j#0_0@1|)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (=> |$w$loop#0_0@1| (<= |j#0_0@1| (LitInt 10)))) (=> (=> |$w$loop#0_0@1| (<= |j#0_0@1| (LitInt 10))) (=> (= (ControlFlow 0 30) 29) anon21_LoopHead_correct)))))))))))))))))))
(let ((anon20_Then_correct  (=> (<= 10 |i#0@1|) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (not (= |c#0@@1| null)) (not true))) (=> (or (not (= |c#0@@1| null)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length |c#0@@1|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length |c#0@@1|))) (=> (= (ControlFlow 0 3) (- 0 2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@1| (IndexField (LitInt 0))))))))))))
(let ((anon18_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 37) 3) anon20_Then_correct) (=> (= (ControlFlow 0 37) 30) anon20_Else_correct)))))
(let ((anon17_LoopBody_correct  (and (=> (= (ControlFlow 0 42) 41) anon18_Then_correct) (=> (= (ControlFlow 0 42) 37) anon18_Else_correct))))
(let ((anon17_LoopDone_correct true))
(let ((anon17_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (and (and (not false) (and (<= 0 |i#0@1|) (< |i#0@1| 11))) (= |$rhs#0@0| 4)) (= |$decr_init$loop#00@0| 10)) (and (=> |$w$loop#0@0| (<= (LitInt 0) |i#0@1|)) (=> |$w$loop#0@0| (<= |i#0@1| (LitInt 10))))) (and (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@12) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@12)) (or (or (= $o@@12 |a#0|) (= $o@@12 |b#0|)) (= $o@@12 |c#0@@1|))))
 :qid |LoopModifiesdfy.166:4|
 :skolemid |535|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@12))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@13 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@13) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13) $f@@5)) (U_2_bool (MapType1Select refType FieldType boolType |$Frame$loop#0@0| $o@@13 $f@@5))))
 :qid |LoopModifiesdfy.166:4|
 :skolemid |536|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@13) $f@@5))
)) (<= (- 10 |i#0@1|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 43) 1) anon17_LoopDone_correct) (=> (= (ControlFlow 0 43) 42) anon17_LoopBody_correct))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#21| null $Heap alloc |a#0| |b#0| |c#0@@1|)) (= |i#0@0| (LitInt 0))) (and (=> (= (ControlFlow 0 44) (- 0 50)) (or (not (= |b#0| null)) (not true))) (=> (or (not (= |b#0| null)) (not true)) (and (=> (= (ControlFlow 0 44) (- 0 49)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length |b#0|)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length |b#0|))) (and (=> (= (ControlFlow 0 44) (- 0 48)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |b#0| (IndexField (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |b#0| (IndexField (LitInt 0)))) (=> (= |$rhs#0@0| (LitInt 4)) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap |b#0| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |b#0|) (IndexField (LitInt 0)) ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@0)) (and (=> (= (ControlFlow 0 44) (- 0 47)) (forall (($o@@14 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14) alloc)))) (or (= $o@@14 |a#0|) (= $o@@14 |b#0|))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@14 $f@@6)))
 :qid |LoopModifiesdfy.166:4|
 :skolemid |534|
))) (=> (forall (($o@@15 T@U) ($f@@7 T@U) ) (!  (=> (and (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@15) alloc)))) (or (= $o@@15 |a#0|) (= $o@@15 |b#0|))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@15 $f@@7)))
 :qid |LoopModifiesdfy.166:4|
 :skolemid |534|
)) (=> (and (= |$Frame$loop#0@0| (|lambda#15| null $Heap@0 alloc |a#0| |b#0|)) (= |$decr_init$loop#00@0| (- 10 |i#0@0|))) (and (=> (= (ControlFlow 0 44) (- 0 46)) (=> |$w$loop#0@0| (<= (LitInt 0) |i#0@0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |i#0@0|)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (=> |$w$loop#0@0| (<= |i#0@0| (LitInt 10)))) (=> (=> |$w$loop#0@0| (<= |i#0@0| (LitInt 10))) (=> (= (ControlFlow 0 44) 43) anon17_LoopHead_correct)))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |a#0| (Tclass._System.array TInt)) ($IsAlloc refType |a#0| (Tclass._System.array TInt) $Heap))) (and (and ($Is refType |b#0| (Tclass._System.array TInt)) ($IsAlloc refType |b#0| (Tclass._System.array TInt) $Heap)) (and ($Is refType |c#0@@1| (Tclass._System.array TInt)) ($IsAlloc refType |c#0@@1| (Tclass._System.array TInt) $Heap)))) (and (and (and (= 0 $FunctionContextHeight) (> (_System.array.Length |a#0|) 0)) (and (> (_System.array.Length |b#0|) 0) (> (_System.array.Length |c#0@@1|) 0))) (and (and (or (not (= |a#0| |b#0|)) (not true)) (or (not (= |b#0| |c#0@@1|)) (not true))) (and (or (not (= |c#0@@1| |a#0|)) (not true)) (= (ControlFlow 0 51) 44))))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
