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
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
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
(assert ($IsGhostField alloc))
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
(assert (forall ((h@@3 T@U) (k@@2 T@U) ) (!  (=> ($HeapSuccGhost h@@3 k@@2) (and ($HeapSucc h@@3 k@@2) (forall ((o@@0 T@U) (f T@U) ) (!  (=> (not ($IsGhostField f)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 o@@0) f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@2 o@@0) f)))
 :qid |DafnyPreludebpl.544:13|
 :skolemid |108|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@2 o@@0) f))
))))
 :qid |DafnyPreludebpl.541:15|
 :skolemid |109|
 :pattern ( ($HeapSuccGhost h@@3 k@@2))
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
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array.Length o@@1))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@1))
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
(assert (forall ((_System.array$arg@@9 T@U) ($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@3)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@3 T@U) ($o@@4 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@4)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
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
 :skolemid |553|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
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
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
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
(declare-fun $Heap () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |n#0@1| () Int)
(declare-fun |i#6@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |r#0@1| () Int)
(declare-fun |r#0@0| () Int)
(declare-fun |m#0_0@1| () Int)
(declare-fun |i#0_0@0| () Int)
(declare-fun |$w$loop#0_0@1| () Bool)
(declare-fun |n#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |m#0_0@2| () Int)
(declare-fun |$decr$loop#0_00@2| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$decr_init$loop#0_00@1| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |n#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.FindZero__GhostLoop)
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
 (=> (= (ControlFlow 0 0) 84) (let ((anon9_correct  (=> (and (forall ((|i#7| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#7|) (< |i#7| |n#0@1|)) (< |i#7| (_System.array.Length |a#0|))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#7|)))) 0)) (not true)))
 :qid |FindZerodfy.45:22|
 :skolemid |521|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#7|))))
)) (= (ControlFlow 0 68) (- 0 67))) (or (not (= |a#0| null)) (not true)))))
(let ((anon41_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |i#6@0|) (< |i#6@0| |n#0@1|)) (< |i#6@0| (_System.array.Length |a#0|)))) (= (ControlFlow 0 72) 68)) anon9_correct)))
(let ((anon41_Then_correct  (=> (and (and (<= (LitInt 0) |i#6@0|) (< |i#6@0| |n#0@1|)) (< |i#6@0| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 69) (- 0 71)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 69) (- 0 70)) (and (<= 0 |i#6@0|) (< |i#6@0| (_System.array.Length |a#0|)))) (=> (= (ControlFlow 0 69) 68) anon9_correct)))))))
(let ((anon40_Else_correct  (=> (not (and (<= (LitInt 0) |i#6@0|) (< |i#6@0| |n#0@1|))) (and (=> (= (ControlFlow 0 75) 69) anon41_Then_correct) (=> (= (ControlFlow 0 75) 72) anon41_Else_correct)))))
(let ((anon40_Then_correct  (=> (and (<= (LitInt 0) |i#6@0|) (< |i#6@0| |n#0@1|)) (and (=> (= (ControlFlow 0 73) (- 0 74)) (or (not (= |a#0| null)) (not true))) (and (=> (= (ControlFlow 0 73) 69) anon41_Then_correct) (=> (= (ControlFlow 0 73) 72) anon41_Else_correct))))))
(let ((anon39_Else_correct  (=> (< |i#6@0| (LitInt 0)) (and (=> (= (ControlFlow 0 77) 73) anon40_Then_correct) (=> (= (ControlFlow 0 77) 75) anon40_Else_correct)))))
(let ((anon39_Then_correct  (=> (<= (LitInt 0) |i#6@0|) (and (=> (= (ControlFlow 0 76) 73) anon40_Then_correct) (=> (= (ControlFlow 0 76) 75) anon40_Else_correct)))))
(let ((anon38_Then_correct  (and (=> (= (ControlFlow 0 78) 76) anon39_Then_correct) (=> (= (ControlFlow 0 78) 77) anon39_Else_correct))))
(let ((anon38_Else_correct true))
(let ((anon37_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 79) 78) anon38_Then_correct) (=> (= (ControlFlow 0 79) 66) anon38_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 56) (- 0 58)) (=> (<= (LitInt 0) |r#0@1|) (< |r#0@1| (_System.array.Length |a#0|)))) (=> (=> (<= (LitInt 0) |r#0@1|) (< |r#0@1| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 56) (- 0 57)) (=> (<= (LitInt 0) |r#0@1|) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |r#0@1|)))) (LitInt 0)))) (=> (=> (<= (LitInt 0) |r#0@1|) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |r#0@1|)))) (LitInt 0))) (=> (= (ControlFlow 0 56) (- 0 55)) (=> (< |r#0@1| 0) (forall ((|i#5| Int) ) (!  (=> (and (<= (LitInt 0) |i#5|) (< |i#5| (_System.array.Length |a#0|))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#5|)))) 0)) (not true)))
 :qid |FindZerodfy.41:28|
 :skolemid |519|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#5|))))
))))))))))
(let ((anon43_Then_correct  (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|)))) (LitInt 0)) (=> (and (= |r#0@1| |n#0@1|) (= (ControlFlow 0 60) 56)) GeneratedUnifiedExit_correct))))
(let ((anon42_Then_correct  (=> (and (and (<= (_System.array.Length |a#0|) |n#0@1|) (= |r#0@0| (LitInt (- 0 1)))) (and (= |r#0@1| |r#0@0|) (= (ControlFlow 0 59) 56))) GeneratedUnifiedExit_correct)))
(let ((anon27_correct  (=> (forall ((|i#0_1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0_1|) (< |i#0_1| |m#0_0@1|)) (< |i#0_1| (_System.array.Length |a#0|))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0_1|)))) 0)) (not true)))
 :qid |FindZerodfy.52:24|
 :skolemid |526|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0_1|))))
)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (=> (= (ControlFlow 0 25) (- 0 24)) (and (<= 0 |n#0@1|) (< |n#0@1| (_System.array.Length |a#0|)))))))))
(let ((anon50_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |m#0_0@1|)) (< |i#0_0@0| (_System.array.Length |a#0|)))) (= (ControlFlow 0 30) 25)) anon27_correct)))
(let ((anon50_Then_correct  (=> (and (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |m#0_0@1|)) (< |i#0_0@0| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array.Length |a#0|)))) (=> (= (ControlFlow 0 27) 25) anon27_correct)))))))
(let ((anon49_Else_correct  (=> (not (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |m#0_0@1|))) (and (=> (= (ControlFlow 0 33) 27) anon50_Then_correct) (=> (= (ControlFlow 0 33) 30) anon50_Else_correct)))))
(let ((anon49_Then_correct  (=> (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| |m#0_0@1|)) (and (=> (= (ControlFlow 0 31) (- 0 32)) (or (not (= |a#0| null)) (not true))) (and (=> (= (ControlFlow 0 31) 27) anon50_Then_correct) (=> (= (ControlFlow 0 31) 30) anon50_Else_correct))))))
(let ((anon48_Else_correct  (=> (< |i#0_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 35) 31) anon49_Then_correct) (=> (= (ControlFlow 0 35) 33) anon49_Else_correct)))))
(let ((anon48_Then_correct  (=> (<= (LitInt 0) |i#0_0@0|) (and (=> (= (ControlFlow 0 34) 31) anon49_Then_correct) (=> (= (ControlFlow 0 34) 33) anon49_Else_correct)))))
(let ((anon47_Then_correct  (and (=> (= (ControlFlow 0 36) 34) anon48_Then_correct) (=> (= (ControlFlow 0 36) 35) anon48_Else_correct))))
(let ((anon47_Else_correct true))
(let ((anon20_correct  (=> (and (<= |m#0_0@1| (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|)))))) (< |m#0_0@1| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 37) (- 0 41)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 37) (- 0 40)) (and (<= 0 |n#0@1|) (< |n#0@1| (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 37) (- 0 39)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (and (<= 0 |m#0_0@1|) (< |m#0_0@1| (_System.array.Length |a#0|)))) (=> (<= (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |m#0_0@1|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |m#0_0@1|))))) (and (=> (= (ControlFlow 0 37) 36) anon47_Then_correct) (=> (= (ControlFlow 0 37) 23) anon47_Else_correct))))))))))))
(let ((anon46_Else_correct  (=> (and (< (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |m#0_0@1|) (= (ControlFlow 0 44) 37)) anon20_correct)))
(let ((anon46_Then_correct  (=> (<= |m#0_0@1| (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|)))))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (or (not (= |a#0| null)) (not true))) (=> (= (ControlFlow 0 42) 37) anon20_correct)))))
(let ((anon45_Then_correct  (=> (not |$w$loop#0_0@1|) (and (=> (= (ControlFlow 0 45) (- 0 47)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (and (<= 0 |n#0@1|) (< |n#0@1| (_System.array.Length |a#0|)))) (and (=> (= (ControlFlow 0 45) 42) anon46_Then_correct) (=> (= (ControlFlow 0 45) 44) anon46_Else_correct))))))))
(let ((after_0_0_correct  (and (=> (= (ControlFlow 0 11) (- 0 15)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 14)) (and (<= 0 |n#0@1|) (< |n#0@1| (_System.array.Length |a#0|)))) (=> (and (<= 0 |n#0@1|) (< |n#0@1| (_System.array.Length |a#0|))) (=> (= |n#0@2| (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|)))))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (or (<= 0 |$decr$loop#00@1|) (= (- (_System.array.Length |a#0|) |n#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- (_System.array.Length |a#0|) |n#0@2|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (< (- (_System.array.Length |a#0|) |n#0@2|) |$decr$loop#00@1|)) (=> (< (- (_System.array.Length |a#0|) |n#0@2|) |$decr$loop#00@1|) (=> (= (ControlFlow 0 11) (- 0 10)) (=> |$w$loop#0@0| (forall ((|i#7@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#7@@0|) (< |i#7@@0| |n#0@2|)) (< |i#7@@0| (_System.array.Length |a#0|))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#7@@0|)))) 0)) (not true)))
 :qid |FindZerodfy.45:22|
 :skolemid |523|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#7@@0|))))
)))))))))))))))
(let ((anon52_Then_correct  (=> (and (= |m#0_0@2| (_System.array.Length |a#0|)) (= (ControlFlow 0 17) 11)) after_0_0_correct)))
(let ((anon51_Then_correct  (=> (and (<= (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |m#0_0@1|) (= (ControlFlow 0 16) 11)) after_0_0_correct)))
(let ((anon52_Else_correct  (=> (or (not (= |m#0_0@2| (_System.array.Length |a#0|))) (not true)) (and (=> (= (ControlFlow 0 4) (- 0 9)) (or (<= 0 |$decr$loop#0_00@2|) (= (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |m#0_0@2|) |$decr$loop#0_00@2|))) (=> (or (<= 0 |$decr$loop#0_00@2|) (= (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |m#0_0@2|) |$decr$loop#0_00@2|)) (and (=> (= (ControlFlow 0 4) (- 0 8)) (< (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |m#0_0@2|) |$decr$loop#0_00@2|)) (=> (< (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |m#0_0@2|) |$decr$loop#0_00@2|) (and (=> (= (ControlFlow 0 4) (- 0 7)) (=> |$w$loop#0_0@1| (<= |m#0_0@2| (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|)))))))) (=> (=> |$w$loop#0_0@1| (<= |m#0_0@2| (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (=> |$w$loop#0_0@1| (< |m#0_0@2| (_System.array.Length |a#0|)))) (=> (=> |$w$loop#0_0@1| (< |m#0_0@2| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (=> |$w$loop#0_0@1| (<= (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |m#0_0@2|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |m#0_0@2|))))))) (=> (=> |$w$loop#0_0@1| (<= (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |m#0_0@2|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |m#0_0@2|)))))) (=> (= (ControlFlow 0 4) (- 0 3)) (=> |$w$loop#0_0@1| (forall ((|i#0_1@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0_1@@0|) (< |i#0_1@@0| |m#0_0@2|)) (< |i#0_1@@0| (_System.array.Length |a#0|))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0_1@@0|)))) 0)) (not true)))
 :qid |FindZerodfy.52:24|
 :skolemid |528|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0_1@@0|))))
)))))))))))))))))
(let ((anon51_Else_correct  (=> (< |m#0_0@1| (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|)))))) (=> (and (= |$decr$loop#0_00@2| (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |m#0_0@1|)) (= |m#0_0@2| (+ |m#0_0@1| 1))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 18) 17) anon52_Then_correct) (=> (= (ControlFlow 0 18) 4) anon52_Else_correct))))))))
(let ((anon45_Else_correct  (=> |$w$loop#0_0@1| (and (=> (= (ControlFlow 0 20) (- 0 22)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (and (<= 0 |n#0@1|) (< |n#0@1| (_System.array.Length |a#0|)))) (=> (and (<= 0 |n#0@1|) (< |n#0@1| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 20) 16) anon51_Then_correct) (=> (= (ControlFlow 0 20) 18) anon51_Else_correct)))))))))
(let ((anon44_LoopBody_correct  (and (=> (= (ControlFlow 0 48) 45) anon45_Then_correct) (=> (= (ControlFlow 0 48) 20) anon45_Else_correct))))
(let ((anon44_LoopDone_correct true))
(let ((anon44_LoopHead_correct  (=> (and (and (and (and (not false) (<= 0 |n#0@1|)) |$w$loop#0@0|) (<= 0 |m#0_0@1|)) (and (and (and (=> |$w$loop#0_0@1| (<= |m#0_0@1| (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))))) (=> |$w$loop#0_0@1| (< |m#0_0@1| (_System.array.Length |a#0|)))) (and (=> |$w$loop#0_0@1| (<= (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |m#0_0@1|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |m#0_0@1|)))))) (=> |$w$loop#0_0@1| (forall ((|i#0_1@@1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0_1@@1|) (< |i#0_1@@1| |m#0_0@1|)) (< |i#0_1@@1| (_System.array.Length |a#0|))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0_1@@1|)))) 0)) (not true)))
 :qid |FindZerodfy.52:24|
 :skolemid |528|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0_1@@1|))))
))))) (and (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6)))
 :qid |FindZerodfy.49:5|
 :skolemid |529|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6))
)) ($HeapSuccGhost $Heap $Heap)) (and (forall (($o@@7 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@7 $f@@0))))
 :qid |FindZerodfy.49:5|
 :skolemid |530|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) $f@@0))
)) (<= (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |m#0_0@1|) |$decr_init$loop#0_00@1|))))) (and (=> (= (ControlFlow 0 49) 2) anon44_LoopDone_correct) (=> (= (ControlFlow 0 49) 48) anon44_LoopBody_correct)))))
(let ((anon43_Else_correct  (=> (and (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|)))) (LitInt 0))) (not true)) (= |$decr_init$loop#0_00@1| (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |n#0@1|))) (and (=> (= (ControlFlow 0 50) (- 0 54)) (=> |$w$loop#0_0@1| (<= |n#0@1| (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|)))))))) (=> (=> |$w$loop#0_0@1| (<= |n#0@1| (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))))) (and (=> (= (ControlFlow 0 50) (- 0 53)) (=> |$w$loop#0_0@1| (< |n#0@1| (_System.array.Length |a#0|)))) (=> (=> |$w$loop#0_0@1| (< |n#0@1| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 50) (- 0 52)) (=> |$w$loop#0_0@1| (<= (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |n#0@1|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))))) (=> (=> |$w$loop#0_0@1| (<= (- (+ |n#0@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|))))) |n#0@1|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |n#0@1|)))))) (and (=> (= (ControlFlow 0 50) (- 0 51)) (=> |$w$loop#0_0@1| (forall ((|i#0_1@@2| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0_1@@2|) (< |i#0_1@@2| |n#0@1|)) (< |i#0_1@@2| (_System.array.Length |a#0|))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0_1@@2|)))) 0)) (not true)))
 :qid |FindZerodfy.52:24|
 :skolemid |528|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0_1@@2|))))
)))) (=> (=> |$w$loop#0_0@1| (forall ((|i#0_1@@3| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0_1@@3|) (< |i#0_1@@3| |n#0@1|)) (< |i#0_1@@3| (_System.array.Length |a#0|))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0_1@@3|)))) 0)) (not true)))
 :qid |FindZerodfy.52:24|
 :skolemid |528|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#0_1@@3|))))
))) (=> (= (ControlFlow 0 50) 49) anon44_LoopHead_correct))))))))))))
(let ((anon42_Else_correct  (=> (and (< |n#0@1| (_System.array.Length |a#0|)) (= |$decr$loop#00@1| (- (_System.array.Length |a#0|) |n#0@1|))) (and (=> (= (ControlFlow 0 61) (- 0 63)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 61) (- 0 62)) (and (<= 0 |n#0@1|) (< |n#0@1| (_System.array.Length |a#0|)))) (=> (and (<= 0 |n#0@1|) (< |n#0@1| (_System.array.Length |a#0|))) (and (=> (= (ControlFlow 0 61) 60) anon43_Then_correct) (=> (= (ControlFlow 0 61) 50) anon43_Else_correct)))))))))
(let ((anon37_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 64) (- 0 65)) (or (not (= |a#0| null)) (not true))) (=> (or (not (= |a#0| null)) (not true)) (and (=> (= (ControlFlow 0 64) 59) anon42_Then_correct) (=> (= (ControlFlow 0 64) 61) anon42_Else_correct)))))))
(let ((anon36_LoopBody_correct  (and (=> (= (ControlFlow 0 80) 79) anon37_Then_correct) (=> (= (ControlFlow 0 80) 64) anon37_Else_correct))))
(let ((anon36_LoopDone_correct true))
(let ((anon36_LoopHead_correct  (=> (and (not false) (=> |$w$loop#0@0| (forall ((|i#7@@1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#7@@1|) (< |i#7@@1| |n#0@1|)) (< |i#7@@1| (_System.array.Length |a#0|))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#7@@1|)))) 0)) (not true)))
 :qid |FindZerodfy.45:22|
 :skolemid |523|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#7@@1|))))
)))) (=> (and (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8)))
 :qid |FindZerodfy.44:3|
 :skolemid |524|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@9 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@9) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@9) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@9) $f@@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@9 $f@@1))))
 :qid |FindZerodfy.44:3|
 :skolemid |525|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@9) $f@@1))
)) (<= (- (_System.array.Length |a#0|) |n#0@1|) |$decr_init$loop#00@0|))) (and (=> (= (ControlFlow 0 81) 1) anon36_LoopDone_correct) (=> (= (ControlFlow 0 81) 80) anon36_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |n#0@0| (LitInt 0)) (= |$decr_init$loop#00@0| (- (_System.array.Length |a#0|) |n#0@0|))) (and (=> (= (ControlFlow 0 82) (- 0 83)) (=> |$w$loop#0@0| (forall ((|i#7@@2| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#7@@2|) (< |i#7@@2| |n#0@0|)) (< |i#7@@2| (_System.array.Length |a#0|))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#7@@2|)))) 0)) (not true)))
 :qid |FindZerodfy.45:22|
 :skolemid |523|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#7@@2|))))
)))) (=> (=> |$w$loop#0@0| (forall ((|i#7@@3| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#7@@3|) (< |i#7@@3| |n#0@0|)) (< |i#7@@3| (_System.array.Length |a#0|))) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#7@@3|)))) 0)) (not true)))
 :qid |FindZerodfy.45:22|
 :skolemid |523|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#7@@3|))))
))) (=> (= (ControlFlow 0 82) 81) anon36_LoopHead_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |a#0| (Tclass._System.array TInt)) ($IsAlloc refType |a#0| (Tclass._System.array TInt) $Heap))) (and (and (= 0 $FunctionContextHeight) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (_System.array.Length |a#0|))) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#1|))))))
 :qid |FindZerodfy.38:19|
 :skolemid |517|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#1|))))
))) (and (forall ((|i#3| Int) (|_t#0#0| Int) ) (!  (=> (= |_t#0#0| (+ |i#3| 1)) (=> (and (<= (LitInt 0) |i#3|) (< |_t#0#0| (_System.array.Length |a#0|))) (<= (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#3|)))) 1) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |_t#0#0|)))))))
 :qid |FindZerodfy.39:19|
 :skolemid |518|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |_t#0#0|))) ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |a#0|) (IndexField |i#3|))))
)) (= (ControlFlow 0 84) 82)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
